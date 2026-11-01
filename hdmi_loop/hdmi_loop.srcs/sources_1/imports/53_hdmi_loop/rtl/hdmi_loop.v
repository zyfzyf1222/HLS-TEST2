
`timescale 1ns / 1ps

module hdmi_loop(
    input  wire        sys_clk,
    input  wire        rst_n,

    // HDMI input
    input  wire        hdmi_ddc_scl_io,
    inout  wire        hdmi_ddc_sda_io,
    output wire        hdmi_in_hpd,
    output wire [0:0]  hdmi_in_oen,

    input  wire        clk_hdmi_in_n,
    input  wire        clk_hdmi_in_p,
    input  wire [2:0]  data_hdmi_in_n,
    input  wire [2:0]  data_hdmi_in_p,

    // HDMI output
    output wire [0:0]  hdmi_out_oen,
    output wire        clk_hdmi_out_n,
    output wire        clk_hdmi_out_p,
    output wire [2:0]  data_hdmi_out_n,
    output wire [2:0]  data_hdmi_out_p,

    // Button and LED
    input  wire        key0,
    output wire [1:0]  led_mode
);

// ==========================================
// 1. Clock and reset signals
// ==========================================
wire clk_10m;
wire clk_200m;

wire rx_rst;
wire pixel_clk;
wire pixel_clk_5x;

// ==========================================
// 2. HDMI input video
// ==========================================
wire        video_hs;
wire        video_vs;
wire        video_de;
wire [23:0] video_rgb;

// ==========================================
// 3. Processed video
// ==========================================
wire        processed_hs;
wire        processed_vs;
wire        processed_de;
wire [23:0] processed_rgb;

// Mode 0: original
// Mode 1: grayscale
// Mode 2: Gaussian smoothing
// Mode 3: sharpening
wire [1:0] mode;

// FIFO debugging
(* mark_debug = "true" *)
wire [5:0] fault_sticky;

// ==========================================
// 4. MMCM
// ==========================================
mmcm u_mmcm(
    .clk_out1 (clk_10m),
    .clk_out2 (clk_200m),
    .locked   (),
    .clk_in1  (sys_clk)
);

// ==========================================
// 5. HDMI EDID
// ==========================================
i2c_edid u_i2c_edid(
    .clk (clk_10m),
    .rst (~rst_n),
    .scl (hdmi_ddc_scl_io),
    .sda (hdmi_ddc_sda_io)
);

// ==========================================
// 6. HDMI receiver
// ==========================================
hdmi_rx u_hdmi_rx(
    .clk_10m    (clk_10m),
    .clk_200m   (clk_200m),

    .tmdsclk_p  (clk_hdmi_in_p),
    .tmdsclk_n  (clk_hdmi_in_n),

    .blue_p     (data_hdmi_in_p[0]),
    .green_p    (data_hdmi_in_p[1]),
    .red_p      (data_hdmi_in_p[2]),

    .blue_n     (data_hdmi_in_n[0]),
    .green_n    (data_hdmi_in_n[1]),
    .red_n      (data_hdmi_in_n[2]),

    .rst_n      (rst_n),

    .reset      (rx_rst),
    .pclk       (pixel_clk),
    .pclkx5     (pixel_clk_5x),

    .hsync      (video_hs),
    .vsync      (video_vs),
    .de         (video_de),
    .rgb_data   (video_rgb),

    .hdmi_in_en (hdmi_in_oen),
    .hdmi_in_hpd(hdmi_in_hpd)
);

// ==========================================
// 7. Frame boundary detection
// ==========================================
reg processed_vs_d;

always @(posedge pixel_clk or posedge rx_rst) begin
    if (rx_rst)
        processed_vs_d <= 1'b0;
    else
        processed_vs_d <= processed_vs;
end

wire frame_boundary =
    processed_vs & ~processed_vs_d;

// ==========================================
// 8. Button mode switching
// ==========================================
key_mode #(
    .KEY_PRESSED_LEVEL(1'b0),
    .DEBOUNCE_CYCLES(2970000)
) u_key_mode (
    .clk            (pixel_clk),
    .rst            (rx_rst),
    .key            (key0),
    .frame_boundary (frame_boundary),
    .mode           (mode)
);

assign led_mode = mode;

// ==========================================
// 9. Three HLS image processing cores
// ==========================================
hdmi_hls_video u_video_pipeline (
    .clk          (pixel_clk),
    .rst          (rx_rst),

    .rgb_in       (video_rgb),
    .hs_in        (video_hs),
    .vs_in        (video_vs),
    .de_in        (video_de),

    .mode         (mode),

    .rgb_out      (processed_rgb),
    .hs_out       (processed_hs),
    .vs_out       (processed_vs),
    .de_out       (processed_de),

    .fault_sticky (fault_sticky)
);

// ==========================================
// 10. HDMI transmitter
// ==========================================
dvi_transmitter_top u_rgb2dvi_0(
    .pclk        (pixel_clk),
    .pclk_x5     (pixel_clk_5x),
    .reset_n     (~rx_rst),


.video_din      ((mode == 2'd0) ? video_rgb : processed_rgb),
.video_hsync    ((mode == 2'd0) ? video_hs  : processed_hs),
.video_vsync    ((mode == 2'd0) ? video_vs  : processed_vs),
.video_de       ((mode == 2'd0) ? video_de  : processed_de),


    .tmds_clk_p  (clk_hdmi_out_p),
    .tmds_clk_n  (clk_hdmi_out_n),

    .tmds_data_p (data_hdmi_out_p),
    .tmds_data_n (data_hdmi_out_n),

    .tmds_oen    (hdmi_out_oen)
);

endmodule
