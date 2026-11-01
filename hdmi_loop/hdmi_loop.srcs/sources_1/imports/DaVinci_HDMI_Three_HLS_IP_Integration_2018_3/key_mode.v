`timescale 1ns/1ps
// Debounce 20 ms at ~148.5 MHz, update mode at frame boundary.
module key_mode #(
  parameter integer KEY_PRESSED_LEVEL=1'b0,
  parameter integer DEBOUNCE_CYCLES=2970000
)(
  input wire clk, input wire rst, input wire key,
  input wire frame_boundary,
  output reg [1:0] mode
);
  reg key_a,key_b;
  reg [21:0] stable_count;
  reg stable_key,last_stable;
  reg [1:0] pending_mode;
  reg pending_change;
  always @(posedge clk) begin
    if(rst) begin
      key_a<=~KEY_PRESSED_LEVEL; key_b<=~KEY_PRESSED_LEVEL;
      stable_key<=~KEY_PRESSED_LEVEL; last_stable<=~KEY_PRESSED_LEVEL;
      stable_count<=0; pending_mode<=0; pending_change<=0; mode<=0;
    end else begin
      key_a<=key; key_b<=key_a;
      if(key_b == stable_key) stable_count<=0;
      else if(stable_count >= DEBOUNCE_CYCLES-1) begin
        stable_key<=key_b;
        stable_count<=0;
      end else stable_count<=stable_count+1'b1;
      last_stable<=stable_key;
      if(stable_key==KEY_PRESSED_LEVEL && last_stable!=KEY_PRESSED_LEVEL) begin
        // Multiple presses within one frame are rare; at most one deferred update.
        pending_mode<=pending_mode+2'd1;
        pending_change<=1'b1;
      end
      if(frame_boundary) begin
        if(pending_change) mode<=pending_mode;
        pending_change<=0;
      end
    end
  end
endmodule
