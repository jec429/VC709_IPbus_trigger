// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
// Date        : Mon May 11 17:55:30 2015
// Host        : mq154.lns.cornell.edu running 64-bit Scientific Linux release 6.6 (Carbon)
// Command     : write_verilog -force -mode synth_stub
//               /home/Margaret/MargaretVC709/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/fifo_projection_out/fifo_projection_out_stub.v
// Design      : fifo_projection_out
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v12_0,Vivado 2014.4" *)
module fifo_projection_out(clk, rst, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="clk,rst,din[47:0],wr_en,rd_en,dout[47:0],full,empty" */;
  input clk;
  input rst;
  input [47:0]din;
  input wr_en;
  input rd_en;
  output [47:0]dout;
  output full;
  output empty;
endmodule
