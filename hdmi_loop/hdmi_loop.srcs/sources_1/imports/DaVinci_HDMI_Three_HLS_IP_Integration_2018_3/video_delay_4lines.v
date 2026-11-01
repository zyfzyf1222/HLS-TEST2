`timescale 1ns/1ps
// Delay HDMI pixel + sync together by exactly 4*2200 pixel clock cycles.
// Only valid for standard 1920x1080@60 with total horizontal 2200 clocks.
module video_delay_4lines (
  input wire clk, input wire rst,
  input wire [23:0] rgb_i, input wire hs_i, vs_i, de_i,
  output reg [23:0] rgb_o, output reg hs_o, vs_o, de_o,
  output reg ready
);
  localparam integer DELAY=8800;
  reg [26:0] mem [0:DELAY-1];
  reg [13:0] ptr;
  reg [13:0] init_count;
  reg [26:0] sample;
  always @(posedge clk) begin
    if (rst) begin
      ptr<=0; init_count<=0; ready<=0;
      rgb_o<=0; hs_o<=0; vs_o<=0; de_o<=0;
    end else begin
      sample <= mem[ptr];
      mem[ptr] <= {vs_i,hs_i,de_i,rgb_i};
      if(ptr == DELAY-1) ptr<=0; else ptr<=ptr+1'b1;
      if(!ready) begin
        if(init_count == DELAY-1) ready<=1'b1;
        else init_count<=init_count+1'b1;
      end
      {vs_o,hs_o,de_o,rgb_o} <= sample;
    end
  end
endmodule
