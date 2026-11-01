// ==============================================================
// File generated on Tue Oct 27 22:00:21 +0800 2026
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
 `timescale 1ns/1ps


`define AUTOTB_DUT      gray8_gauss2d_3x3
`define AUTOTB_DUT_INST AESL_inst_gray8_gauss2d_3x3
`define AUTOTB_TOP      apatb_gray8_gauss2d_3x3_top
`define AUTOTB_LAT_RESULT_FILE "gray8_gauss2d_3x3.result.lat.rb"
`define AUTOTB_PER_RESULT_TRANS_FILE "gray8_gauss2d_3x3.performance.result.transaction.xml"
`define AUTOTB_TOP_INST AESL_inst_apatb_gray8_gauss2d_3x3_top
`define AUTOTB_MAX_ALLOW_LATENCY  15000000
`define AUTOTB_CLOCK_PERIOD_DIV2 5.00

`define AESL_FIFO_src_V_V AESL_autofifo_src_V_V
`define AESL_FIFO_INST_src_V_V AESL_autofifo_inst_src_V_V
`define AESL_FIFO_dst_V_V AESL_autofifo_dst_V_V
`define AESL_FIFO_INST_dst_V_V AESL_autofifo_inst_dst_V_V
`define AESL_DEPTH_y_V 1
`define AESL_DEPTH_x_V 1
`define AESL_DEPTH_w_V 1
`define AESL_DEPTH_h_V 1
`define AUTOTB_TVIN_src_V_V  "./c.gray8_gauss2d_3x3.autotvin_src_V_V.dat"
`define AUTOTB_TVIN_dst_V_V  "./c.gray8_gauss2d_3x3.autotvin_dst_V_V.dat"
`define AUTOTB_TVIN_w_V  "./c.gray8_gauss2d_3x3.autotvin_w_V.dat"
`define AUTOTB_TVIN_h_V  "./c.gray8_gauss2d_3x3.autotvin_h_V.dat"
`define AUTOTB_TVIN_src_V_V_out_wrapc  "./rtl.gray8_gauss2d_3x3.autotvin_src_V_V.dat"
`define AUTOTB_TVIN_dst_V_V_out_wrapc  "./rtl.gray8_gauss2d_3x3.autotvin_dst_V_V.dat"
`define AUTOTB_TVIN_w_V_out_wrapc  "./rtl.gray8_gauss2d_3x3.autotvin_w_V.dat"
`define AUTOTB_TVIN_h_V_out_wrapc  "./rtl.gray8_gauss2d_3x3.autotvin_h_V.dat"
`define AUTOTB_TVOUT_dst_V_V  "./c.gray8_gauss2d_3x3.autotvout_dst_V_V.dat"
`define AUTOTB_TVOUT_y_V  "./c.gray8_gauss2d_3x3.autotvout_y_V.dat"
`define AUTOTB_TVOUT_x_V  "./c.gray8_gauss2d_3x3.autotvout_x_V.dat"
`define AUTOTB_TVOUT_dst_V_V_out_wrapc  "./impl_rtl.gray8_gauss2d_3x3.autotvout_dst_V_V.dat"
`define AUTOTB_TVOUT_y_V_out_wrapc  "./impl_rtl.gray8_gauss2d_3x3.autotvout_y_V.dat"
`define AUTOTB_TVOUT_x_V_out_wrapc  "./impl_rtl.gray8_gauss2d_3x3.autotvout_x_V.dat"
module `AUTOTB_TOP;

parameter AUTOTB_TRANSACTION_NUM = 1;
parameter PROGRESS_TIMEOUT = 10000000;
parameter LATENCY_ESTIMATION = 16797697;
parameter LENGTH_src_V_V = 3072;
parameter LENGTH_dst_V_V = 3072;
parameter LENGTH_y_V = 1;
parameter LENGTH_x_V = 1;
parameter LENGTH_w_V = 1;
parameter LENGTH_h_V = 1;

task read_token;
    input integer fp;
    output reg [143 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end
endtask

task post_check;
    input integer fp1;
    input integer fp2;
    reg [143 : 0] token1;
    reg [143 : 0] token2;
    reg [143 : 0] golden;
    reg [143 : 0] result;
    integer ret;
    begin
        read_token(fp1, token1);
        read_token(fp2, token2);
        if (token1 != "[[[runtime]]]" || token2 != "[[[runtime]]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
            $finish;
        end
        read_token(fp1, token1);
        read_token(fp2, token2);
        while (token1 != "[[[/runtime]]]" && token2 != "[[[/runtime]]]") begin
            if (token1 != "[[transaction]]" || token2 != "[[transaction]]") begin
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
            end
            read_token(fp1, token1);  // skip transaction number
            read_token(fp2, token2);  // skip transaction number
              read_token(fp1, token1);
              read_token(fp2, token2);
            while(token1 != "[[/transaction]]" && token2 != "[[/transaction]]") begin
                ret = $sscanf(token1, "0x%x", golden);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                ret = $sscanf(token2, "0x%x", result);
                  if (ret != 1) begin
                      $display("Failed to parse token!");
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                  end
                if(golden != result) begin
                      $display("%x (expected) vs. %x (actual) - mismatch", golden, result);
                    $display("ERROR: Simulation using HLS TB failed.");
                      $finish;
                end
                  read_token(fp1, token1);
                  read_token(fp2, token2);
            end
              read_token(fp1, token1);
              read_token(fp2, token2);
        end
    end
endtask

reg AESL_clock;
reg rst;
reg start;
reg ce;
reg tb_continue;
wire AESL_start;
wire AESL_reset;
wire AESL_ce;
wire AESL_ready;
wire AESL_idle;
wire AESL_continue;
wire AESL_done;
reg AESL_done_delay = 0;
reg AESL_done_delay2 = 0;
reg AESL_ready_delay = 0;
wire ready;
wire ready_wire;
wire ap_start;
wire ap_done;
wire ap_idle;
wire ap_ready;
wire [7 : 0] src_V_V_dout;
wire  src_V_V_empty_n;
wire  src_V_V_read;
wire [7 : 0] dst_V_V_din;
wire  dst_V_V_full_n;
wire  dst_V_V_write;
wire [11 : 0] y_V;
wire  y_V_ap_vld;
wire [11 : 0] x_V;
wire  x_V_ap_vld;
wire [11 : 0] w_V;
wire [11 : 0] h_V;
integer done_cnt = 0;
integer AESL_ready_cnt = 0;
integer ready_cnt = 0;
reg ready_initial;
reg ready_initial_n;
reg ready_last_n;
reg ready_delay_last_n;
reg done_delay_last_n;
reg interface_done = 0;

wire ap_clk;
wire ap_rst;
wire ap_rst_n;

`AUTOTB_DUT `AUTOTB_DUT_INST(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_done(ap_done),
    .ap_idle(ap_idle),
    .ap_ready(ap_ready),
    .src_V_V_dout(src_V_V_dout),
    .src_V_V_empty_n(src_V_V_empty_n),
    .src_V_V_read(src_V_V_read),
    .dst_V_V_din(dst_V_V_din),
    .dst_V_V_full_n(dst_V_V_full_n),
    .dst_V_V_write(dst_V_V_write),
    .y_V(y_V),
    .y_V_ap_vld(y_V_ap_vld),
    .x_V(x_V),
    .x_V_ap_vld(x_V_ap_vld),
    .w_V(w_V),
    .h_V(h_V));

// Assignment for control signal
assign ap_clk = AESL_clock;
assign ap_rst = AESL_reset;
assign ap_rst_n = ~AESL_reset;
assign AESL_reset = rst;
assign ap_start = AESL_start;
assign AESL_start = start;
assign AESL_done = ap_done;
assign AESL_idle = ap_idle;
assign AESL_ready = ap_ready;
assign AESL_ce = ce;
assign AESL_continue = tb_continue;
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_done !== 1 && AESL_done !== 0) begin
                $display("ERROR: Control signal AESL_done is invalid!");
                $finish;
            end
        end
    end
    always @(posedge AESL_clock) begin
        if (AESL_reset) begin
        end else begin
            if (AESL_ready !== 1 && AESL_ready !== 0) begin
                $display("ERROR: Control signal AESL_ready is invalid!");
                $finish;
            end
        end
    end
// Fifo Instantiation src_V_V

wire fifosrc_V_V_rd;
wire [7 : 0] fifosrc_V_V_dout;
wire fifosrc_V_V_empty_n;
wire fifosrc_V_V_ready;
wire fifosrc_V_V_done;
reg [31:0] ap_c_n_tvin_trans_num_src_V_V;
reg src_V_V_ready_reg;

`AESL_FIFO_src_V_V `AESL_FIFO_INST_src_V_V (
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (),
    .if_din       (),
    .if_full_n    (),
    .if_read      (fifosrc_V_V_rd),
    .if_dout      (fifosrc_V_V_dout),
    .if_empty_n   (fifosrc_V_V_empty_n),
    .ready        (fifosrc_V_V_ready),
    .done         (fifosrc_V_V_done)
);

// Assignment between dut and fifosrc_V_V

// Assign input of fifosrc_V_V
assign      fifosrc_V_V_rd        =   src_V_V_read & src_V_V_empty_n;
assign    fifosrc_V_V_ready   =   src_V_V_ready_reg | ready_initial;
assign    fifosrc_V_V_done    =   0;
// Assign input of dut
assign      src_V_V_dout       =   fifosrc_V_V_dout;
reg   reg_fifosrc_V_V_empty_n;
initial begin : gen_reg_fifosrc_V_V_empty_n_process
    integer proc_rand;
    reg_fifosrc_V_V_empty_n = fifosrc_V_V_empty_n;
    while (1) begin
        @ (fifosrc_V_V_empty_n);
        reg_fifosrc_V_V_empty_n = fifosrc_V_V_empty_n;
    end
end

assign      src_V_V_empty_n    =   reg_fifosrc_V_V_empty_n;


//------------------------Fifodst_V_V Instantiation--------------

// The input and output of fifodst_V_V
wire  fifodst_V_V_wr;
wire  [7 : 0] fifodst_V_V_din;
wire  fifodst_V_V_full_n;
wire  fifodst_V_V_ready;
wire  fifodst_V_V_done;

`AESL_FIFO_dst_V_V `AESL_FIFO_INST_dst_V_V(
    .clk          (AESL_clock),
    .reset        (AESL_reset),
    .if_write     (fifodst_V_V_wr),
    .if_din       (fifodst_V_V_din),
    .if_full_n    (fifodst_V_V_full_n),
    .if_read      (),
    .if_dout      (),
    .if_empty_n   (),
    .ready        (fifodst_V_V_ready),
    .done         (fifodst_V_V_done)
);

// Assignment between dut and fifodst_V_V

// Assign input of fifodst_V_V
assign      fifodst_V_V_wr        =   dst_V_V_write & dst_V_V_full_n;
assign      fifodst_V_V_din        =   dst_V_V_din;
assign    fifodst_V_V_ready   =  0;   //ready_initial | AESL_done_delay;
assign    fifodst_V_V_done    =   AESL_done_delay;
// Assign input of dut
reg   reg_fifodst_V_V_full_n;
initial begin : gen_reg_fifodst_V_V_full_n_process
    integer proc_rand;
    reg_fifodst_V_V_full_n = fifodst_V_V_full_n;
    while (1) begin
        @ (fifodst_V_V_full_n);
        reg_fifodst_V_V_full_n = fifodst_V_V_full_n;
    end
end

assign      dst_V_V_full_n    =   reg_fifodst_V_V_full_n;


reg AESL_REG_y_V_ap_vld = 0;
// The signal of port y_V
reg [11: 0] AESL_REG_y_V = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_y_V = 0; 
    else if(y_V_ap_vld) begin
        AESL_REG_y_V <= y_V;
        AESL_REG_y_V_ap_vld <= 1;
    end
end 

initial begin : write_file_process_y_V
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer y_V_count;
    reg [143:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_y_V_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_y_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_y_V_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_y_V);
        AESL_REG_y_V_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


reg AESL_REG_x_V_ap_vld = 0;
// The signal of port x_V
reg [11: 0] AESL_REG_x_V = 0;
always @(posedge AESL_clock)
begin
    if(AESL_reset)
        AESL_REG_x_V = 0; 
    else if(x_V_ap_vld) begin
        AESL_REG_x_V <= x_V;
        AESL_REG_x_V_ap_vld <= 1;
    end
end 

initial begin : write_file_process_x_V
    integer fp;
    integer fp_size;
    integer err;
    integer ret;
    integer i;
    integer hls_stream_size;
    integer proc_rand;
    integer x_V_count;
    reg [143:0] token;
    integer transaction_idx;
    reg [8 * 5:1] str;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVOUT_x_V_out_wrapc,"w");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_x_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    transaction_idx = 0;
    while (transaction_idx != AUTOTB_TRANSACTION_NUM) begin
        @(posedge AESL_clock);
          while(AESL_done !== 1) begin
              @(posedge AESL_clock);
          end
        # 0.4;
        $fdisplay(fp,"[[transaction]] %d", transaction_idx);
        if(AESL_REG_x_V_ap_vld)  begin
          $fdisplay(fp,"0x%x", AESL_REG_x_V);
        AESL_REG_x_V_ap_vld = 0;
        end
    transaction_idx = transaction_idx + 1;
      $fdisplay(fp,"[[/transaction]]");
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
end


// The signal of port w_V
reg [11: 0] AESL_REG_w_V = 0;
assign w_V = AESL_REG_w_V;
initial begin : read_file_process_w_V
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [143  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_w_V,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_w_V);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_w_V);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


// The signal of port h_V
reg [11: 0] AESL_REG_h_V = 0;
assign h_V = AESL_REG_h_V;
initial begin : read_file_process_h_V
    integer fp;
    integer err;
    integer ret;
    integer proc_rand;
    reg [143  : 0] token;
    integer i;
    reg transaction_finish;
    integer transaction_idx;
    transaction_idx = 0;
    wait(AESL_reset === 0);
    fp = $fopen(`AUTOTB_TVIN_h_V,"r");
    if(fp == 0) begin       // Failed to open file
        $display("Failed to open file \"%s\"!", `AUTOTB_TVIN_h_V);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    if (token != "[[[runtime]]]") begin
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    read_token(fp, token);
    while (token != "[[[/runtime]]]") begin
        if (token != "[[transaction]]") begin
            $display("ERROR: Simulation using HLS TB failed.");
              $finish;
        end
        read_token(fp, token);  // skip transaction number
          read_token(fp, token);
            # 0.2;
            while(ready_wire !== 1) begin
                @(posedge AESL_clock);
                # 0.2;
            end
        if(token != "[[/transaction]]") begin
            ret = $sscanf(token, "0x%x", AESL_REG_h_V);
              if (ret != 1) begin
                  $display("Failed to parse token!");
                $display("ERROR: Simulation using HLS TB failed.");
                  $finish;
              end
            @(posedge AESL_clock);
              read_token(fp, token);
        end
          read_token(fp, token);
    end
    $fclose(fp);
end


initial begin : generate_AESL_ready_cnt_proc
    AESL_ready_cnt = 0;
    wait(AESL_reset === 0);
    while(AESL_ready_cnt != AUTOTB_TRANSACTION_NUM) begin
        while(AESL_ready !== 1) begin
            @(posedge AESL_clock);
            # 0.4;
        end
        @(negedge AESL_clock);
        AESL_ready_cnt = AESL_ready_cnt + 1;
        @(posedge AESL_clock);
        # 0.4;
    end
end

    event next_trigger_ready_cnt;
    
    initial begin : gen_ready_cnt
        ready_cnt = 0;
        wait (AESL_reset === 0);
        forever begin
            @ (posedge AESL_clock);
            if (ready == 1) begin
                if (ready_cnt < AUTOTB_TRANSACTION_NUM) begin
                    ready_cnt = ready_cnt + 1;
                end
            end
            -> next_trigger_ready_cnt;
        end
    end
    
    wire all_finish = (done_cnt == AUTOTB_TRANSACTION_NUM);
    
    // done_cnt
    always @ (posedge AESL_clock) begin
        if (AESL_reset) begin
            done_cnt <= 0;
        end else begin
            if (AESL_done == 1) begin
                if (done_cnt < AUTOTB_TRANSACTION_NUM) begin
                    done_cnt <= done_cnt + 1;
                end
            end
        end
    end
    
    initial begin : finish_simulation
        integer fp1;
        integer fp2;
        wait (all_finish == 1);
        // last transaction is saved at negedge right after last done
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
        @ (posedge AESL_clock);
    fp1 = $fopen("./rtl.gray8_gauss2d_3x3.autotvout_dst_V_V.dat", "r");
    fp2 = $fopen("./impl_rtl.gray8_gauss2d_3x3.autotvout_dst_V_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.gray8_gauss2d_3x3.autotvout_dst_V_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.gray8_gauss2d_3x3.autotvout_dst_V_V.dat\"!");
    else begin
        $display("Comparing rtl.gray8_gauss2d_3x3.autotvout_dst_V_V.dat with impl_rtl.gray8_gauss2d_3x3.autotvout_dst_V_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.gray8_gauss2d_3x3.autotvout_y_V.dat", "r");
    fp2 = $fopen("./impl_rtl.gray8_gauss2d_3x3.autotvout_y_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.gray8_gauss2d_3x3.autotvout_y_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.gray8_gauss2d_3x3.autotvout_y_V.dat\"!");
    else begin
        $display("Comparing rtl.gray8_gauss2d_3x3.autotvout_y_V.dat with impl_rtl.gray8_gauss2d_3x3.autotvout_y_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
    fp1 = $fopen("./rtl.gray8_gauss2d_3x3.autotvout_x_V.dat", "r");
    fp2 = $fopen("./impl_rtl.gray8_gauss2d_3x3.autotvout_x_V.dat", "r");
    if(fp1 == 0)        // Failed to open file
        $display("Failed to open file \"./rtl.gray8_gauss2d_3x3.autotvout_x_V.dat\"!");
    else if(fp2 == 0)
        $display("Failed to open file \"./impl_rtl.gray8_gauss2d_3x3.autotvout_x_V.dat\"!");
    else begin
        $display("Comparing rtl.gray8_gauss2d_3x3.autotvout_x_V.dat with impl_rtl.gray8_gauss2d_3x3.autotvout_x_V.dat");
        post_check(fp1, fp2);
    end
    $fclose(fp1);
    $fclose(fp2);
        $display("Simulation Passed.");
        $finish;
    end
    
initial begin
    AESL_clock = 0;
    forever #`AUTOTB_CLOCK_PERIOD_DIV2 AESL_clock = ~AESL_clock;
end


reg end_src_V_V;
reg [31:0] size_src_V_V;
reg [31:0] size_src_V_V_backup;
reg end_dst_V_V;
reg [31:0] size_dst_V_V;
reg [31:0] size_dst_V_V_backup;
reg end_w_V;
reg [31:0] size_w_V;
reg [31:0] size_w_V_backup;
reg end_h_V;
reg [31:0] size_h_V;
reg [31:0] size_h_V_backup;
reg end_y_V;
reg [31:0] size_y_V;
reg [31:0] size_y_V_backup;
reg end_x_V;
reg [31:0] size_x_V;
reg [31:0] size_x_V_backup;

initial begin : initial_process
    integer proc_rand;
    rst = 1;
    # 100;
    repeat(3) @ (posedge AESL_clock);
    rst = 0;
end
initial begin : start_process
    integer proc_rand;
    reg [31:0] start_cnt;
    ce = 1;
    start = 0;
    start_cnt = 0;
    wait (AESL_reset === 0);
    @ (posedge AESL_clock);
    #0 start = 1;
    start_cnt = start_cnt + 1;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt >= AUTOTB_TRANSACTION_NUM) begin
            // keep pushing garbage in
            #0 start = 1;
        end
        if (AESL_ready) begin
            start_cnt = start_cnt + 1;
        end
    end
end

always @(AESL_done)
begin
    tb_continue = AESL_done;
end

initial begin : ready_initial_process
    ready_initial = 0;
    wait (AESL_start === 1);
    ready_initial = 1;
    @(posedge AESL_clock);
    ready_initial = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      AESL_ready_delay = 0;
  else
      AESL_ready_delay = AESL_ready;
end
initial begin : ready_last_n_process
  ready_last_n = 1;
  wait(ready_cnt == AUTOTB_TRANSACTION_NUM)
  @(posedge AESL_clock);
  ready_last_n <= 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
      ready_delay_last_n = 0;
  else
      ready_delay_last_n <= ready_last_n;
end
assign ready = (ready_initial | AESL_ready_delay);
assign ready_wire = ready_initial | AESL_ready_delay;
initial begin : done_delay_last_n_process
  done_delay_last_n = 1;
  while(done_cnt < AUTOTB_TRANSACTION_NUM)
      @(posedge AESL_clock);
  # 0.1;
  done_delay_last_n = 0;
end

always @(posedge AESL_clock)
begin
    if(AESL_reset)
  begin
      AESL_done_delay <= 0;
      AESL_done_delay2 <= 0;
  end
  else begin
      AESL_done_delay <= AESL_done & done_delay_last_n;
      AESL_done_delay2 <= AESL_done_delay;
  end
end
always @(posedge AESL_clock)
begin
    if(AESL_reset)
      interface_done = 0;
  else begin
      # 0.01;
      if(ready === 1 && ready_cnt > 0 && ready_cnt < AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else if(AESL_done_delay === 1 && done_cnt == AUTOTB_TRANSACTION_NUM)
          interface_done = 1;
      else
          interface_done = 0;
  end
end
initial begin : proc_gen_src_V_V_internal_ready
    integer internal_trans_num;
    wait(AESL_reset === 0);
    wait (ready_initial === 1);
    src_V_V_ready_reg <= 0;
    @(posedge AESL_clock);
    internal_trans_num = 1;
    while(internal_trans_num != AUTOTB_TRANSACTION_NUM + 1) begin
        if (ap_c_n_tvin_trans_num_src_V_V > internal_trans_num) begin
            src_V_V_ready_reg <= 1;
            @(posedge AESL_clock);
            src_V_V_ready_reg <= 0;
            internal_trans_num = internal_trans_num + 1;
        end
        else begin
            @(posedge AESL_clock);
        end
    end
    src_V_V_ready_reg <= 0;
end
    
    `define STREAM_SIZE_IN_src_V_V "./stream_size_in_src_V_V.dat"
    
    initial begin : gen_ap_c_n_tvin_trans_num_src_V_V
        integer fp_src_V_V;
        reg [127:0] token_src_V_V;
        integer ret;
        
        ap_c_n_tvin_trans_num_src_V_V = 0;
        end_src_V_V = 0;
        wait (AESL_reset === 0);
        
        fp_src_V_V = $fopen(`STREAM_SIZE_IN_src_V_V, "r");
        if(fp_src_V_V == 0) begin
            $display("Failed to open file \"%s\"!", `STREAM_SIZE_IN_src_V_V);
            $finish;
        end
        read_token(fp_src_V_V, token_src_V_V); // should be [[[runtime]]]
        if (token_src_V_V != "[[[runtime]]]") begin
            $display("ERROR: token_src_V_V != \"[[[runtime]]]\"");
            $finish;
        end
        size_src_V_V = 0;
        size_src_V_V_backup = 0;
        while (size_src_V_V == 0 && end_src_V_V == 0) begin
            ap_c_n_tvin_trans_num_src_V_V = ap_c_n_tvin_trans_num_src_V_V + 1;
            read_token(fp_src_V_V, token_src_V_V); // should be [[transaction]] or [[[/runtime]]]
            if (token_src_V_V == "[[transaction]]") begin
                read_token(fp_src_V_V, token_src_V_V); // should be transaction number
                read_token(fp_src_V_V, token_src_V_V); // should be size for hls::stream
                ret = $sscanf(token_src_V_V, "%d", size_src_V_V);
                if (size_src_V_V > 0) begin
                    size_src_V_V_backup = size_src_V_V;
                end
                read_token(fp_src_V_V, token_src_V_V); // should be [[/transaction]]
            end else if (token_src_V_V == "[[[/runtime]]]") begin
                $fclose(fp_src_V_V);
                end_src_V_V = 1;
            end else begin
                $display("ERROR: unknown token_src_V_V");
                $finish;
            end
        end
        forever begin
            @ (posedge AESL_clock);
            if (end_src_V_V == 0) begin
                if (src_V_V_read == 1) begin
                    if (size_src_V_V > 0) begin
                        size_src_V_V = size_src_V_V - 1;
                        while (size_src_V_V == 0 && end_src_V_V == 0) begin
                            ap_c_n_tvin_trans_num_src_V_V = ap_c_n_tvin_trans_num_src_V_V + 1;
                            read_token(fp_src_V_V, token_src_V_V); // should be [[transaction]] or [[[/runtime]]]
                            if (token_src_V_V == "[[transaction]]") begin
                                read_token(fp_src_V_V, token_src_V_V); // should be transaction number
                                read_token(fp_src_V_V, token_src_V_V); // should be size for hls::stream
                                ret = $sscanf(token_src_V_V, "%d", size_src_V_V);
                                if (size_src_V_V > 0) begin
                                    size_src_V_V_backup = size_src_V_V;
                                end
                                read_token(fp_src_V_V, token_src_V_V); // should be [[/transaction]]
                            end else if (token_src_V_V == "[[[/runtime]]]") begin
                                size_src_V_V = size_src_V_V_backup;
                                $fclose(fp_src_V_V);
                                end_src_V_V = 1;
                            end else begin
                                $display("ERROR: unknown token_src_V_V");
                                $finish;
                            end
                        end
                    end
                end
            end else begin
                if (src_V_V_read == 1) begin
                    if (size_src_V_V > 0) begin
                        size_src_V_V = size_src_V_V - 1;
                        if (size_src_V_V == 0) begin
                            ap_c_n_tvin_trans_num_src_V_V = ap_c_n_tvin_trans_num_src_V_V + 1;
                            size_src_V_V = size_src_V_V_backup;
                        end
                    end
                end
            end
        end
    end
    

reg dump_tvout_finish_dst_V_V;

initial begin : dump_tvout_runtime_sign_dst_V_V
    integer fp;
    dump_tvout_finish_dst_V_V = 0;
    fp = $fopen(`AUTOTB_TVOUT_dst_V_V_out_wrapc, "w");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_dst_V_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[runtime]]]");
    $fclose(fp);
    wait (done_cnt == AUTOTB_TRANSACTION_NUM);
    // last transaction is saved at negedge right after last done
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    @ (posedge AESL_clock);
    fp = $fopen(`AUTOTB_TVOUT_dst_V_V_out_wrapc, "a");
    if (fp == 0) begin
        $display("Failed to open file \"%s\"!", `AUTOTB_TVOUT_dst_V_V_out_wrapc);
        $display("ERROR: Simulation using HLS TB failed.");
        $finish;
    end
    $fdisplay(fp,"[[[/runtime]]]");
    $fclose(fp);
    dump_tvout_finish_dst_V_V = 1;
end


////////////////////////////////////////////
// progress and performance
////////////////////////////////////////////

task wait_start();
    while (~AESL_start) begin
        @ (posedge AESL_clock);
    end
endtask

reg [31:0] clk_cnt = 0;
reg AESL_ready_p1;
reg AESL_start_p1;

always @ (posedge AESL_clock) begin
    clk_cnt <= clk_cnt + 1;
    AESL_ready_p1 <= AESL_ready;
    AESL_start_p1 <= AESL_start;
end

reg [31:0] start_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] start_cnt;
reg [31:0] ready_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] ap_ready_cnt;
reg [31:0] finish_timestamp [0:AUTOTB_TRANSACTION_NUM - 1];
reg [31:0] finish_cnt;
event report_progress;

initial begin
    start_cnt = 0;
    finish_cnt = 0;
    ap_ready_cnt = 0;
    wait (AESL_reset == 0);
    wait_start();
    start_timestamp[start_cnt] = clk_cnt;
    start_cnt = start_cnt + 1;
    if (AESL_done) begin
        finish_timestamp[finish_cnt] = clk_cnt;
        finish_cnt = finish_cnt + 1;
    end
    -> report_progress;
    forever begin
        @ (posedge AESL_clock);
        if (start_cnt < AUTOTB_TRANSACTION_NUM) begin
            if ((AESL_start && AESL_ready_p1)||(AESL_start && ~AESL_start_p1)) begin
                start_timestamp[start_cnt] = clk_cnt;
                start_cnt = start_cnt + 1;
            end
        end
        if (ap_ready_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_start_p1 && AESL_ready_p1) begin
                ready_timestamp[ap_ready_cnt] = clk_cnt;
                ap_ready_cnt = ap_ready_cnt + 1;
            end
        end
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                finish_timestamp[finish_cnt] = clk_cnt;
                finish_cnt = finish_cnt + 1;
            end
        end
        -> report_progress;
    end
end

reg [31:0] progress_timeout;

initial begin : simulation_progress
    real intra_progress;
    wait (AESL_reset == 0);
    progress_timeout = PROGRESS_TIMEOUT;
    $display("////////////////////////////////////////////////////////////////////////////////////");
    $display("// Inter-Transaction Progress: Completed Transaction / Total Transaction");
    $display("// Intra-Transaction Progress: Measured Latency / Latency Estimation * 100%%");
    $display("//");
    $display("// RTL Simulation : \"Inter-Transaction Progress\" [\"Intra-Transaction Progress\"] @ \"Simulation Time\"");
    $display("////////////////////////////////////////////////////////////////////////////////////");
    print_progress();
    while (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
        @ (report_progress);
        if (finish_cnt < AUTOTB_TRANSACTION_NUM) begin
            if (AESL_done) begin
                print_progress();
                progress_timeout = PROGRESS_TIMEOUT;
            end else begin
                if (progress_timeout == 0) begin
                    print_progress();
                    progress_timeout = PROGRESS_TIMEOUT;
                end else begin
                    progress_timeout = progress_timeout - 1;
                end
            end
        end
    end
    print_progress();
    $display("////////////////////////////////////////////////////////////////////////////////////");
    calculate_performance();
end

task get_intra_progress(output real intra_progress);
    begin
        if (start_cnt > finish_cnt) begin
            intra_progress = clk_cnt - start_timestamp[finish_cnt];
        end else if(finish_cnt > 0) begin
            intra_progress = LATENCY_ESTIMATION;
        end else begin
            intra_progress = 0;
        end
        intra_progress = intra_progress / LATENCY_ESTIMATION;
    end
endtask

task print_progress();
    real intra_progress;
    begin
        if (LATENCY_ESTIMATION > 0) begin
            get_intra_progress(intra_progress);
            $display("// RTL Simulation : %0d / %0d [%2.2f%%] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, intra_progress * 100, $time);
        end else begin
            $display("// RTL Simulation : %0d / %0d [n/a] @ \"%0t\"", finish_cnt, AUTOTB_TRANSACTION_NUM, $time);
        end
    end
endtask

task calculate_performance();
    integer i;
    integer fp;
    reg [31:0] latency [0:AUTOTB_TRANSACTION_NUM - 1];
    reg [31:0] latency_min;
    reg [31:0] latency_max;
    reg [31:0] latency_total;
    reg [31:0] latency_average;
    reg [31:0] interval [0:AUTOTB_TRANSACTION_NUM - 2];
    reg [31:0] interval_min;
    reg [31:0] interval_max;
    reg [31:0] interval_total;
    reg [31:0] interval_average;
    begin
        latency_min = -1;
        latency_max = 0;
        latency_total = 0;
        interval_min = -1;
        interval_max = 0;
        interval_total = 0;

        for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
            // calculate latency
            latency[i] = finish_timestamp[i] - start_timestamp[i];
            if (latency[i] > latency_max) latency_max = latency[i];
            if (latency[i] < latency_min) latency_min = latency[i];
            latency_total = latency_total + latency[i];
            // calculate interval
            if (AUTOTB_TRANSACTION_NUM == 1) begin
                interval[i] = 0;
                interval_max = 0;
                interval_min = 0;
                interval_total = 0;
            end else if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                interval[i] = finish_timestamp[i] - start_timestamp[i]+1;
                if (interval[i] > interval_max) interval_max = interval[i];
                if (interval[i] < interval_min) interval_min = interval[i];
                interval_total = interval_total + interval[i];
            end
        end

        latency_average = latency_total / AUTOTB_TRANSACTION_NUM;
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            interval_average = 0;
        end else begin
            interval_average = interval_total / (AUTOTB_TRANSACTION_NUM - 1);
        end

        fp = $fopen(`AUTOTB_LAT_RESULT_FILE, "w");

        $fdisplay(fp, "$MAX_LATENCY = \"%0d\"", latency_max);
        $fdisplay(fp, "$MIN_LATENCY = \"%0d\"", latency_min);
        $fdisplay(fp, "$AVER_LATENCY = \"%0d\"", latency_average);
        $fdisplay(fp, "$MAX_THROUGHPUT = \"%0d\"", interval_max);
        $fdisplay(fp, "$MIN_THROUGHPUT = \"%0d\"", interval_min);
        $fdisplay(fp, "$AVER_THROUGHPUT = \"%0d\"", interval_average);

        $fclose(fp);

        fp = $fopen(`AUTOTB_PER_RESULT_TRANS_FILE, "w");

        $fdisplay(fp, "%20s%16s%16s", "", "latency", "interval");
        if (AUTOTB_TRANSACTION_NUM == 1) begin
            i = 0;
            $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
        end else begin
            for (i = 0; i < AUTOTB_TRANSACTION_NUM; i = i + 1) begin
                if (i < AUTOTB_TRANSACTION_NUM - 1) begin
                    $fdisplay(fp, "transaction%8d:%16d%16d", i, latency[i], interval[i]);
                end else begin
                    $fdisplay(fp, "transaction%8d:%16d               x", i, latency[i]);
                end
            end
        end

        $fclose(fp);
    end
endtask


////////////////////////////////////////////
// Dependence Check
////////////////////////////////////////////

`ifndef POST_SYN

// Dependence Check (WAR) "ap_enable_operation_125"(R:SV2-3) -> "ap_enable_operation_132"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_125"(R:SV2-3) -> "ap_enable_operation_149"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_127"(R:SV2-3) -> "ap_enable_operation_131"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_127"(R:SV2-3) -> "ap_enable_operation_148"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_130"(W:SV3-3) -> "ap_enable_operation_147"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (RAW) "ap_enable_operation_131"(W:SV3-3) -> "ap_enable_operation_83"(R:SV2-3) @ `AUTOTB_DUT_INST
reg [11:0] DEP_address_5_to [1 - 1:0];
time DEP_time_5_to [1 - 1:0];
reg [11:0] DEP_address_5_from [1 - 1:0];
time DEP_time_5_from [1 - 1:0];
reg DEP_error_5 = 0;
integer DEP_i_5;

initial begin
    DEP_address_5_to[0] = 0;
    DEP_time_5_to[0] = 0;
    DEP_address_5_from[0] = 0;
    DEP_time_5_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_83) begin
                DEP_address_5_to[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_1_address0};
                DEP_time_5_to[0] = $time;
            end else begin
                DEP_address_5_to[0] = {1'b0, 11'b0};
                DEP_time_5_to[0] = $time;
            end
        end // of record to access
        else if(`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin
            DEP_address_5_to[0] = {1'b0, 11'b0};
            DEP_time_5_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_131) begin
                if (DEP_address_5_from[0][11]) begin
                    $display("// ERROR : \"DEP_address_5_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_5_from[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_1_address1};
                DEP_time_5_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_131) begin
                if (DEP_address_5_from[0][11]) begin
                    DEP_i_5 = 0;
                end else begin
                    $display("// ERROR : No valid \"DEP_address_5_from\" found when checking dependence pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1) in \"`AUTOTB_DUT_INST\" @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                if (DEP_address_5_to[0][11]) begin
                    DEP_error_5 = (DEP_address_5_to[0][10:0] == DEP_address_5_from[DEP_i_5][10:0]);
                    if (DEP_error_5) begin
                        $display("// ERROR : Due to pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1), dependence error (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//       : From memory access \"wlb_lb_val_V_1_address1\" = 0x%0h @ \"%0t\"", DEP_address_5_from[DEP_i_5][10:0], DEP_time_5_from[DEP_i_5]);
                        $display("//       : To memory access \"wlb_lb_val_V_1_address0\" = DEP_address_5_to[0][10:0] = 0x%0h @ \"%0t\"", DEP_address_5_to[0][10:0], DEP_time_5_to[0]);
                        $display("//       autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_131"(W:SV3-3) -> "ap_enable_operation_83"(R:SV2-3) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_5_from[DEP_i_5] = {1'b0, 11'b0};
                DEP_time_5_from[DEP_i_5] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_131"(W:SV3-3) -> "ap_enable_operation_94"(R:SV2-3) @ `AUTOTB_DUT_INST
reg [11:0] DEP_address_6_to [1 - 1:0];
time DEP_time_6_to [1 - 1:0];
reg [11:0] DEP_address_6_from [1 - 1:0];
time DEP_time_6_from [1 - 1:0];
reg DEP_error_6 = 0;
integer DEP_i_6;

initial begin
    DEP_address_6_to[0] = 0;
    DEP_time_6_to[0] = 0;
    DEP_address_6_from[0] = 0;
    DEP_time_6_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_94) begin
                DEP_address_6_to[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_1_address0};
                DEP_time_6_to[0] = $time;
            end else begin
                DEP_address_6_to[0] = {1'b0, 11'b0};
                DEP_time_6_to[0] = $time;
            end
        end // of record to access
        else if(`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin
            DEP_address_6_to[0] = {1'b0, 11'b0};
            DEP_time_6_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_131) begin
                if (DEP_address_6_from[0][11]) begin
                    $display("// ERROR : \"DEP_address_6_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_6_from[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_1_address1};
                DEP_time_6_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_131) begin
                if (DEP_address_6_from[0][11]) begin
                    DEP_i_6 = 0;
                end else begin
                    $display("// ERROR : No valid \"DEP_address_6_from\" found when checking dependence pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1) in \"`AUTOTB_DUT_INST\" @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                if (DEP_address_6_to[0][11]) begin
                    DEP_error_6 = (DEP_address_6_to[0][10:0] == DEP_address_6_from[DEP_i_6][10:0]);
                    if (DEP_error_6) begin
                        $display("// ERROR : Due to pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1), dependence error (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//       : From memory access \"wlb_lb_val_V_1_address1\" = 0x%0h @ \"%0t\"", DEP_address_6_from[DEP_i_6][10:0], DEP_time_6_from[DEP_i_6]);
                        $display("//       : To memory access \"wlb_lb_val_V_1_address0\" = DEP_address_6_to[0][10:0] = 0x%0h @ \"%0t\"", DEP_address_6_to[0][10:0], DEP_time_6_to[0]);
                        $display("//       autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_131"(W:SV3-3) -> "ap_enable_operation_94"(R:SV2-3) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_6_from[DEP_i_6] = {1'b0, 11'b0};
                DEP_time_6_from[DEP_i_6] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_131"(W:SV3-3) -> "ap_enable_operation_148"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (RAW) "ap_enable_operation_132"(W:SV3-3) -> "ap_enable_operation_81"(R:SV2-3) @ `AUTOTB_DUT_INST
reg [11:0] DEP_address_8_to [1 - 1:0];
time DEP_time_8_to [1 - 1:0];
reg [11:0] DEP_address_8_from [1 - 1:0];
time DEP_time_8_from [1 - 1:0];
reg DEP_error_8 = 0;
integer DEP_i_8;

initial begin
    DEP_address_8_to[0] = 0;
    DEP_time_8_to[0] = 0;
    DEP_address_8_from[0] = 0;
    DEP_time_8_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_81) begin
                DEP_address_8_to[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_0_address0};
                DEP_time_8_to[0] = $time;
            end else begin
                DEP_address_8_to[0] = {1'b0, 11'b0};
                DEP_time_8_to[0] = $time;
            end
        end // of record to access
        else if(`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin
            DEP_address_8_to[0] = {1'b0, 11'b0};
            DEP_time_8_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_132) begin
                if (DEP_address_8_from[0][11]) begin
                    $display("// ERROR : \"DEP_address_8_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_8_from[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_0_address1};
                DEP_time_8_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_132) begin
                if (DEP_address_8_from[0][11]) begin
                    DEP_i_8 = 0;
                end else begin
                    $display("// ERROR : No valid \"DEP_address_8_from\" found when checking dependence pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1) in \"`AUTOTB_DUT_INST\" @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                if (DEP_address_8_to[0][11]) begin
                    DEP_error_8 = (DEP_address_8_to[0][10:0] == DEP_address_8_from[DEP_i_8][10:0]);
                    if (DEP_error_8) begin
                        $display("// ERROR : Due to pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1), dependence error (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//       : From memory access \"wlb_lb_val_V_0_address1\" = 0x%0h @ \"%0t\"", DEP_address_8_from[DEP_i_8][10:0], DEP_time_8_from[DEP_i_8]);
                        $display("//       : To memory access \"wlb_lb_val_V_0_address0\" = DEP_address_8_to[0][10:0] = 0x%0h @ \"%0t\"", DEP_address_8_to[0][10:0], DEP_time_8_to[0]);
                        $display("//       autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_132"(W:SV3-3) -> "ap_enable_operation_81"(R:SV2-3) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_8_from[DEP_i_8] = {1'b0, 11'b0};
                DEP_time_8_from[DEP_i_8] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_132"(W:SV3-3) -> "ap_enable_operation_92"(R:SV2-3) @ `AUTOTB_DUT_INST
reg [11:0] DEP_address_9_to [1 - 1:0];
time DEP_time_9_to [1 - 1:0];
reg [11:0] DEP_address_9_from [1 - 1:0];
time DEP_time_9_from [1 - 1:0];
reg DEP_error_9 = 0;
integer DEP_i_9;

initial begin
    DEP_address_9_to[0] = 0;
    DEP_time_9_to[0] = 0;
    DEP_address_9_from[0] = 0;
    DEP_time_9_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_92) begin
                DEP_address_9_to[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_0_address0};
                DEP_time_9_to[0] = $time;
            end else begin
                DEP_address_9_to[0] = {1'b0, 11'b0};
                DEP_time_9_to[0] = $time;
            end
        end // of record to access
        else if(`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin
            DEP_address_9_to[0] = {1'b0, 11'b0};
            DEP_time_9_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_132) begin
                if (DEP_address_9_from[0][11]) begin
                    $display("// ERROR : \"DEP_address_9_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_9_from[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_0_address1};
                DEP_time_9_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_132) begin
                if (DEP_address_9_from[0][11]) begin
                    DEP_i_9 = 0;
                end else begin
                    $display("// ERROR : No valid \"DEP_address_9_from\" found when checking dependence pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1) in \"`AUTOTB_DUT_INST\" @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                if (DEP_address_9_to[0][11]) begin
                    DEP_error_9 = (DEP_address_9_to[0][10:0] == DEP_address_9_from[DEP_i_9][10:0]);
                    if (DEP_error_9) begin
                        $display("// ERROR : Due to pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1), dependence error (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//       : From memory access \"wlb_lb_val_V_0_address1\" = 0x%0h @ \"%0t\"", DEP_address_9_from[DEP_i_9][10:0], DEP_time_9_from[DEP_i_9]);
                        $display("//       : To memory access \"wlb_lb_val_V_0_address0\" = DEP_address_9_to[0][10:0] = 0x%0h @ \"%0t\"", DEP_address_9_to[0][10:0], DEP_time_9_to[0]);
                        $display("//       autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_132"(W:SV3-3) -> "ap_enable_operation_92"(R:SV2-3) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_9_from[DEP_i_9] = {1'b0, 11'b0};
                DEP_time_9_from[DEP_i_9] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_132"(W:SV3-3) -> "ap_enable_operation_149"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_142"(R:SV2-3) -> "ap_enable_operation_132"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_142"(R:SV2-3) -> "ap_enable_operation_149"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_144"(R:SV2-3) -> "ap_enable_operation_131"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (WAR) "ap_enable_operation_144"(R:SV2-3) -> "ap_enable_operation_148"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (WAW) "ap_enable_operation_147"(W:SV3-3) -> "ap_enable_operation_130"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (RAW) "ap_enable_operation_148"(W:SV3-3) -> "ap_enable_operation_83"(R:SV2-3) @ `AUTOTB_DUT_INST
reg [11:0] DEP_address_16_to [1 - 1:0];
time DEP_time_16_to [1 - 1:0];
reg [11:0] DEP_address_16_from [1 - 1:0];
time DEP_time_16_from [1 - 1:0];
reg DEP_error_16 = 0;
integer DEP_i_16;

initial begin
    DEP_address_16_to[0] = 0;
    DEP_time_16_to[0] = 0;
    DEP_address_16_from[0] = 0;
    DEP_time_16_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_83) begin
                DEP_address_16_to[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_1_address0};
                DEP_time_16_to[0] = $time;
            end else begin
                DEP_address_16_to[0] = {1'b0, 11'b0};
                DEP_time_16_to[0] = $time;
            end
        end // of record to access
        else if(`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin
            DEP_address_16_to[0] = {1'b0, 11'b0};
            DEP_time_16_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_148) begin
                if (DEP_address_16_from[0][11]) begin
                    $display("// ERROR : \"DEP_address_16_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_16_from[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_1_address1};
                DEP_time_16_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_148) begin
                if (DEP_address_16_from[0][11]) begin
                    DEP_i_16 = 0;
                end else begin
                    $display("// ERROR : No valid \"DEP_address_16_from\" found when checking dependence pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1) in \"`AUTOTB_DUT_INST\" @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                if (DEP_address_16_to[0][11]) begin
                    DEP_error_16 = (DEP_address_16_to[0][10:0] == DEP_address_16_from[DEP_i_16][10:0]);
                    if (DEP_error_16) begin
                        $display("// ERROR : Due to pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1), dependence error (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//       : From memory access \"wlb_lb_val_V_1_address1\" = 0x%0h @ \"%0t\"", DEP_address_16_from[DEP_i_16][10:0], DEP_time_16_from[DEP_i_16]);
                        $display("//       : To memory access \"wlb_lb_val_V_1_address0\" = DEP_address_16_to[0][10:0] = 0x%0h @ \"%0t\"", DEP_address_16_to[0][10:0], DEP_time_16_to[0]);
                        $display("//       autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_148"(W:SV3-3) -> "ap_enable_operation_83"(R:SV2-3) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_16_from[DEP_i_16] = {1'b0, 11'b0};
                DEP_time_16_from[DEP_i_16] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_148"(W:SV3-3) -> "ap_enable_operation_94"(R:SV2-3) @ `AUTOTB_DUT_INST
reg [11:0] DEP_address_17_to [1 - 1:0];
time DEP_time_17_to [1 - 1:0];
reg [11:0] DEP_address_17_from [1 - 1:0];
time DEP_time_17_from [1 - 1:0];
reg DEP_error_17 = 0;
integer DEP_i_17;

initial begin
    DEP_address_17_to[0] = 0;
    DEP_time_17_to[0] = 0;
    DEP_address_17_from[0] = 0;
    DEP_time_17_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_94) begin
                DEP_address_17_to[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_1_address0};
                DEP_time_17_to[0] = $time;
            end else begin
                DEP_address_17_to[0] = {1'b0, 11'b0};
                DEP_time_17_to[0] = $time;
            end
        end // of record to access
        else if(`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin
            DEP_address_17_to[0] = {1'b0, 11'b0};
            DEP_time_17_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_148) begin
                if (DEP_address_17_from[0][11]) begin
                    $display("// ERROR : \"DEP_address_17_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_17_from[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_1_address1};
                DEP_time_17_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_148) begin
                if (DEP_address_17_from[0][11]) begin
                    DEP_i_17 = 0;
                end else begin
                    $display("// ERROR : No valid \"DEP_address_17_from\" found when checking dependence pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1) in \"`AUTOTB_DUT_INST\" @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                if (DEP_address_17_to[0][11]) begin
                    DEP_error_17 = (DEP_address_17_to[0][10:0] == DEP_address_17_from[DEP_i_17][10:0]);
                    if (DEP_error_17) begin
                        $display("// ERROR : Due to pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1), dependence error (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//       : From memory access \"wlb_lb_val_V_1_address1\" = 0x%0h @ \"%0t\"", DEP_address_17_from[DEP_i_17][10:0], DEP_time_17_from[DEP_i_17]);
                        $display("//       : To memory access \"wlb_lb_val_V_1_address0\" = DEP_address_17_to[0][10:0] = 0x%0h @ \"%0t\"", DEP_address_17_to[0][10:0], DEP_time_17_to[0]);
                        $display("//       autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_148"(W:SV3-3) -> "ap_enable_operation_94"(R:SV2-3) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_17_from[DEP_i_17] = {1'b0, 11'b0};
                DEP_time_17_from[DEP_i_17] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_148"(W:SV3-3) -> "ap_enable_operation_131"(W:SV3-3) @ `AUTOTB_DUT_INST

// Dependence Check (RAW) "ap_enable_operation_149"(W:SV3-3) -> "ap_enable_operation_81"(R:SV2-3) @ `AUTOTB_DUT_INST
reg [11:0] DEP_address_19_to [1 - 1:0];
time DEP_time_19_to [1 - 1:0];
reg [11:0] DEP_address_19_from [1 - 1:0];
time DEP_time_19_from [1 - 1:0];
reg DEP_error_19 = 0;
integer DEP_i_19;

initial begin
    DEP_address_19_to[0] = 0;
    DEP_time_19_to[0] = 0;
    DEP_address_19_from[0] = 0;
    DEP_time_19_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_81) begin
                DEP_address_19_to[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_0_address0};
                DEP_time_19_to[0] = $time;
            end else begin
                DEP_address_19_to[0] = {1'b0, 11'b0};
                DEP_time_19_to[0] = $time;
            end
        end // of record to access
        else if(`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin
            DEP_address_19_to[0] = {1'b0, 11'b0};
            DEP_time_19_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_149) begin
                if (DEP_address_19_from[0][11]) begin
                    $display("// ERROR : \"DEP_address_19_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_19_from[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_0_address1};
                DEP_time_19_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_149) begin
                if (DEP_address_19_from[0][11]) begin
                    DEP_i_19 = 0;
                end else begin
                    $display("// ERROR : No valid \"DEP_address_19_from\" found when checking dependence pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1) in \"`AUTOTB_DUT_INST\" @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                if (DEP_address_19_to[0][11]) begin
                    DEP_error_19 = (DEP_address_19_to[0][10:0] == DEP_address_19_from[DEP_i_19][10:0]);
                    if (DEP_error_19) begin
                        $display("// ERROR : Due to pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1), dependence error (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//       : From memory access \"wlb_lb_val_V_0_address1\" = 0x%0h @ \"%0t\"", DEP_address_19_from[DEP_i_19][10:0], DEP_time_19_from[DEP_i_19]);
                        $display("//       : To memory access \"wlb_lb_val_V_0_address0\" = DEP_address_19_to[0][10:0] = 0x%0h @ \"%0t\"", DEP_address_19_to[0][10:0], DEP_time_19_to[0]);
                        $display("//       autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_149"(W:SV3-3) -> "ap_enable_operation_81"(R:SV2-3) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_19_from[DEP_i_19] = {1'b0, 11'b0};
                DEP_time_19_from[DEP_i_19] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (RAW) "ap_enable_operation_149"(W:SV3-3) -> "ap_enable_operation_92"(R:SV2-3) @ `AUTOTB_DUT_INST
reg [11:0] DEP_address_20_to [1 - 1:0];
time DEP_time_20_to [1 - 1:0];
reg [11:0] DEP_address_20_from [1 - 1:0];
time DEP_time_20_from [1 - 1:0];
reg DEP_error_20 = 0;
integer DEP_i_20;

initial begin
    DEP_address_20_to[0] = 0;
    DEP_time_20_to[0] = 0;
    DEP_address_20_from[0] = 0;
    DEP_time_20_from[0] = 0;
end

always @ (negedge AESL_clock) begin
    if (~`AUTOTB_DUT_INST.ap_block_pp0) begin 
        // record "to" access
        if (`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_92) begin
                DEP_address_20_to[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_0_address0};
                DEP_time_20_to[0] = $time;
            end else begin
                DEP_address_20_to[0] = {1'b0, 11'b0};
                DEP_time_20_to[0] = $time;
            end
        end // of record to access
        else if(`AUTOTB_DUT_INST.ap_enable_state3_pp0_iter0_stage0
            &&  ~`AUTOTB_DUT_INST.ap_enable_reg_pp0_iter0
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin
            DEP_address_20_to[0] = {1'b0, 11'b0};
            DEP_time_20_to[0] = $time;
        end
        // record "from" access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_149) begin
                if (DEP_address_20_from[0][11]) begin
                    $display("// ERROR : \"DEP_address_20_from[0]\" is overwritten @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                DEP_address_20_from[0] = {1'b1, `AUTOTB_DUT_INST.wlb_lb_val_V_0_address1};
                DEP_time_20_from[0] = $time;
            end
        end // of record from access
        // check access
        if (`AUTOTB_DUT_INST.ap_enable_state4_pp0_iter1_stage0       
            &&  `AUTOTB_DUT_INST.ap_enable_reg_pp0_iter1) begin 
            if (`AUTOTB_DUT_INST.ap_enable_operation_149) begin
                if (DEP_address_20_from[0][11]) begin
                    DEP_i_20 = 0;
                end else begin
                    $display("// ERROR : No valid \"DEP_address_20_from\" found when checking dependence pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1) in \"`AUTOTB_DUT_INST\" @ \"%0t\"", $time);
                    $display("// autotb LINE:%d", `__LINE__);
                    $display("////////////////////////////////////////////////////////////////////////////////////");
                end
                if (DEP_address_20_to[0][11]) begin
                    DEP_error_20 = (DEP_address_20_to[0][10:0] == DEP_address_20_from[DEP_i_20][10:0]);
                    if (DEP_error_20) begin
                        $display("// ERROR : Due to pragma (../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp:29:1), dependence error (loop distance = 1) is detected in \"`AUTOTB_DUT_INST\"");
                        $display("//       : From memory access \"wlb_lb_val_V_0_address1\" = 0x%0h @ \"%0t\"", DEP_address_20_from[DEP_i_20][10:0], DEP_time_20_from[DEP_i_20]);
                        $display("//       : To memory access \"wlb_lb_val_V_0_address0\" = DEP_address_20_to[0][10:0] = 0x%0h @ \"%0t\"", DEP_address_20_to[0][10:0], DEP_time_20_to[0]);
                        $display("//       autotb LINE:%d", `__LINE__);
                        $display("////////////////////////////////////////////////////////////////////////////////////");
// (RAW) "ap_enable_operation_149"(W:SV3-3) -> "ap_enable_operation_92"(R:SV2-3) @ `AUTOTB_DUT_INST
                    end
                end
                DEP_address_20_from[DEP_i_20] = {1'b0, 11'b0};
                DEP_time_20_from[DEP_i_20] = 0;
            end
        end // of check access
    end 
end

// Dependence Check (WAW) "ap_enable_operation_149"(W:SV3-3) -> "ap_enable_operation_132"(W:SV3-3) @ `AUTOTB_DUT_INST

`endif

endmodule
