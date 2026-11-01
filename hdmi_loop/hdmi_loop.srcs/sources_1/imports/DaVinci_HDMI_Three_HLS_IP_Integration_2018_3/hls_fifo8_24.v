`timescale 1ns/1ps
// Single-clock FWFT FIFO adapter for Vivado 2018.3 XPM.
// xpm_fifo_sync is supplied by Vivado; do NOT add this as an external IP.
module hls_fifo #(
    parameter integer WIDTH=8,
    parameter integer DEPTH=8192,
    parameter integer AW=13
)(
    input wire clk, input wire rst,
    input wire wr_en, input wire [WIDTH-1:0] din, output wire full,
    input wire rd_en, output wire [WIDTH-1:0] dout, output wire empty,
    output wire overflow, output wire underflow
);
  xpm_fifo_sync #(
     .FIFO_MEMORY_TYPE("block"),
     .ECC_MODE("no_ecc"),
     .FIFO_WRITE_DEPTH(DEPTH),
     .WRITE_DATA_WIDTH(WIDTH),
     .READ_DATA_WIDTH(WIDTH),
     .WR_DATA_COUNT_WIDTH(AW+1),
     .RD_DATA_COUNT_WIDTH(AW+1),
     .READ_MODE("fwft"),
     .FIFO_READ_LATENCY(0),
     .FULL_RESET_VALUE(0),
     .DOUT_RESET_VALUE("0"),
     .USE_ADV_FEATURES("0707"),
     .PROG_FULL_THRESH(DEPTH-16),
     .PROG_EMPTY_THRESH(10),
     .WAKEUP_TIME(0)
  ) u_fifo (
     .sleep(1'b0), .rst(rst), .wr_clk(clk),
     .wr_en(wr_en), .din(din), .full(full),
     .overflow(overflow),
     .rd_en(rd_en), .dout(dout), .empty(empty),
     .underflow(underflow),
     .wr_rst_busy(), .rd_rst_busy(),
     .prog_full(), .prog_empty(),
     .wr_data_count(), .rd_data_count(),
     .almost_full(), .almost_empty(), .wr_ack(), .data_valid(),
     .sbiterr(), .dbiterr(), .injectsbiterr(1'b0), .injectdbiterr(1'b0)
  );
endmodule
