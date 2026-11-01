`timescale 1ns/1ps
// 1080p60 prototype bridge for three original HLS ap_fifo IPs.
// IMPORTANT: unverified on hardware. Verify multi-frame output, FIFO underflows,
// actual HDMI timing and timing closure. See README before programming board.
module hdmi_hls_video (
  input wire clk, input wire rst,
  input wire [23:0] rgb_in, input wire hs_in, vs_in, de_in,
  input wire [1:0] mode,
  output reg [23:0] rgb_out,
  output reg hs_out, vs_out, de_out,
  output reg [5:0] fault_sticky
);
  localparam integer W=1920, H=1080, PAD=2*W;
  localparam integer SHARP_H=H+2;
  localparam integer CORE_OUT=SHARP_H*W;
  // Grayscale equation exactly matching rgb2gray.cpp, RGB = {R,G,B}.
  wire [7:0] r=rgb_in[23:16],g=rgb_in[15:8],b=rgb_in[7:0];
  wire [17:0] y_sum=18'd77*r + 18'd150*g + 18'd29*b + 18'd128;
  wire [7:0] y_pix=y_sum[15:8];

  // Incoming video / mode0 RGB / sync all delayed by four 2200-pixel lines.
  wire [23:0] rgb_d;
  wire hs_d,vs_d,de_d,ready_d;
  video_delay_4lines u_vid_delay (
    .clk(clk),.rst(rst),.rgb_i(rgb_in),.hs_i(hs_in),
    .vs_i(vs_in),.de_i(de_in),.rgb_o(rgb_d),
    .hs_o(hs_d),.vs_o(vs_d),.de_o(de_d),.ready(ready_d)
  );

  reg vs_q;
  reg delayed_vs_q;
  reg delayed_frame_ok;
  wire vs_rise=vs_in & ~vs_q;
  reg have_frame;
  reg [12:0] padding_left;
  // Inject 2 zero lines before each real 1080p frame into BOTH window kernels.
  // This prevents stale row-buffer pixels from previous frames contaminating
  // their first line. 3840 dummy output pixels are dropped below.
  wire pad_send=(padding_left!=0) && !de_in && have_frame;
  wire real_send=de_in && have_frame && (padding_left==0);

  wire [23:0] gi_dout;
  wire [7:0] si_dout,fi_dout;
  wire gi_full,si_full,fi_full,gi_empty,si_empty,fi_empty;
  wire gi_read,si_read,fi_read;
  wire gi_ov,si_ov,fi_ov,gi_uv,si_uv,fi_uv;
  wire gi_write=real_send && !gi_full;
  wire feed_window=(pad_send || real_send);
  wire si_write=feed_window && !si_full && !fi_full;
  wire fi_write=feed_window && !si_full && !fi_full;
  wire [7:0] win_input=pad_send ? 8'd0 : y_pix;

  hls_fifo #(.WIDTH(24)) u_fifo_gray_in (
    .clk(clk),.rst(rst),.wr_en(gi_write),.din(rgb_in),.full(gi_full),
    .rd_en(gi_read),.dout(gi_dout),.empty(gi_empty),
    .overflow(gi_ov),.underflow(gi_uv)
  );
  hls_fifo #(.WIDTH(8)) u_fifo_gauss_in (
    .clk(clk),.rst(rst),.wr_en(si_write),.din(win_input),.full(si_full),
    .rd_en(si_read),.dout(si_dout),.empty(si_empty),
    .overflow(si_ov),.underflow(si_uv)
  );
  hls_fifo #(.WIDTH(8)) u_fifo_sharp_in (
    .clk(clk),.rst(rst),.wr_en(fi_write),.din(win_input),.full(fi_full),
    .rd_en(fi_read),.dout(fi_dout),.empty(fi_empty),
    .overflow(fi_ov),.underflow(fi_uv)
  );

  reg [21:0] gauss_index, sharp_index;
  wire [7:0] go_value,so_value,fo_value;
  wire go_write,so_write,fo_write;
  wire go_full,so_full,fo_full,go_empty,so_empty,fo_empty;
  wire [7:0] go_dout,so_dout,fo_dout;
  wire go_ov,so_ov,fo_ov,go_uv,so_uv,fo_uv;
  wire go_pop,so_pop,fo_pop;
  wire gauss_keep=(gauss_index>=PAD);
  wire sharp_keep=(sharp_index>=PAD);
  wire go_push=go_write && !go_full;
  wire so_push=so_write && gauss_keep && !so_full;
  wire fo_push=fo_write && sharp_keep && !fo_full;

  hls_fifo #(.WIDTH(8)) u_fifo_gray_out (
    .clk(clk),.rst(rst),.wr_en(go_push),.din(go_value),.full(go_full),
    .rd_en(go_pop),.dout(go_dout),.empty(go_empty),
    .overflow(go_ov),.underflow(go_uv)
  );
  hls_fifo #(.WIDTH(8)) u_fifo_gauss_out (
    .clk(clk),.rst(rst),.wr_en(so_push),.din(so_value),.full(so_full),
    .rd_en(so_pop),.dout(so_dout),.empty(so_empty),
    .overflow(so_ov),.underflow(so_uv)
  );
  hls_fifo #(.WIDTH(8)) u_fifo_sharp_out (
    .clk(clk),.rst(rst),.wr_en(fo_push),.din(fo_value),.full(fo_full),
    .rd_en(fo_pop),.dout(fo_dout),.empty(fo_empty),
    .overflow(fo_ov),.underflow(fo_uv)
  );

  // Actual names below assume Vivado IP instance component names in README.
  // Check each .veo template after 'Customize IP'. If ports differ, adjust names.
  rgb2gray_0 u_gray (
    .ap_clk(clk), .ap_rst(rst), .ap_start(1'b1),
    .ap_done(), .ap_idle(), .ap_ready(),
    .src_V_V_dout(gi_dout), .src_V_V_empty_n(~gi_empty), .src_V_V_read(gi_read),
    .dst_V_V_din(go_value), .dst_V_V_full_n(~go_full), .dst_V_V_write(go_write),
    .width_V(12'd1920), .height_V(12'd1080)
  );
  gray8_gauss2d_3x3_0 u_gauss (
    .ap_clk(clk), .ap_rst(rst), .ap_start(1'b1),
    .ap_done(), .ap_idle(), .ap_ready(),
    .src_V_V_dout(si_dout), .src_V_V_empty_n(~si_empty), .src_V_V_read(si_read),
    .dst_V_V_din(so_value), .dst_V_V_full_n(gauss_keep ? ~so_full : 1'b1),
    .dst_V_V_write(so_write),
    .w_V(12'd1920), .h_V(12'd1082),
    .x_V(), .x_V_ap_vld(), .y_V(), .y_V_ap_vld()
  );
  sharpen3x3_0 u_sharp (
    .ap_clk(clk), .ap_rst(rst), .ap_start(1'b1),
    .ap_done(), .ap_idle(), .ap_ready(),
    .src_V_V_dout(fi_dout), .src_V_V_empty_n(~fi_empty), .src_V_V_read(fi_read),
    .dst_V_V_din(fo_value), .dst_V_V_full_n(sharp_keep ? ~fo_full : 1'b1),
    .dst_V_V_write(fo_write),
    .width_V(12'd1920), .height_V(12'd1082)
  );

  // Always drain ALL result FIFOs, even when that mode is not currently shown.
  // FWFT FIFO provides head word on dout prior to rd_en.
  wire show_pixel=ready_d && de_d && delayed_frame_ok;
  assign go_pop=show_pixel && !go_empty;
  assign so_pop=show_pixel && !so_empty;
  assign fo_pop=show_pixel && !fo_empty;
  reg [23:0] chosen_rgb;
  always @(*) begin
    case (mode)
      2'd0: chosen_rgb=rgb_d;
      2'd1: chosen_rgb={3{go_empty?8'd0:go_dout}};
      2'd2: chosen_rgb={3{so_empty?8'd0:so_dout}};
      default: chosen_rgb={3{fo_empty?8'd0:fo_dout}};
    endcase
  end

  // FF input/output at the same clock edge. The output data chosen from
  // FWFT head corresponds to this edge's FIFO pop.
  always @(posedge clk) begin
    if(rst) begin
      rgb_out<=0; hs_out<=0; vs_out<=0; de_out<=0;
      vs_q<=0; delayed_vs_q<=0; delayed_frame_ok<=0; have_frame<=0; padding_left<=0;
      gauss_index<=0; sharp_index<=0;
      fault_sticky<=0;
    end else begin
      vs_q<=vs_in;
      delayed_vs_q<=vs_d;
      if(ready_d && vs_d && !delayed_vs_q) delayed_frame_ok<=1'b1;
      hs_out<=hs_d; vs_out<=vs_d; de_out<=show_pixel;
      rgb_out<=chosen_rgb;
      if(vs_rise) begin
        have_frame<=1;
        padding_left<=PAD;
      end else if(pad_send && !si_full && !fi_full) begin
        padding_left<=padding_left-1'b1;
      end
      if(so_write && (!gauss_keep || !so_full)) begin
        if(gauss_index == CORE_OUT-1) gauss_index<=0;
        else gauss_index<=gauss_index+1'b1;
      end
      if(fo_write && (!sharp_keep || !fo_full)) begin
        if(sharp_index == CORE_OUT-1) sharp_index<=0;
        else sharp_index<=sharp_index+1'b1;
      end
      // Sticky fault bits: source input overflow; output missing on display.
      if(real_send && gi_full) fault_sticky[0]<=1;
      if(feed_window && (si_full || (de_in && padding_left!=0))) fault_sticky[1]<=1;
      if(feed_window && (fi_full || (de_in && padding_left!=0))) fault_sticky[2]<=1;
      if(show_pixel && go_empty) fault_sticky[3]<=1;
      if(show_pixel && so_empty) fault_sticky[4]<=1;
      if(show_pixel && fo_empty) fault_sticky[5]<=1;
    end
  end
endmodule
