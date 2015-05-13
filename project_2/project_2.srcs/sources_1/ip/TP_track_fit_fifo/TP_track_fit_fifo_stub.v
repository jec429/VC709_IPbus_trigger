// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
<<<<<<< HEAD
// Date        : Mon Apr 27 16:25:21 2015
// Host        : mq154.lns.cornell.edu running 64-bit Scientific Linux release 6.6 (Carbon)
// Command     : write_verilog -force -mode synth_stub
//               /home/Jorge/Documents/work/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/TP_track_fit_fifo/TP_track_fit_fifo_stub.v
=======
// Date        : Mon May  4 10:45:09 2015
// Host        : mq154.lns.cornell.edu running 64-bit Scientific Linux release 6.6 (Carbon)
// Command     : write_verilog -force -mode synth_stub
//               /home/Margaret/MargaretVC709/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/TP_track_fit_fifo/TP_track_fit_fifo_stub.v
>>>>>>> bc00d9db5310a6fe74b49e8be398be678f1c8a71
// Design      : TP_track_fit_fifo
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v12_0,Vivado 2014.4" *)
module TP_track_fit_fifo(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, empty)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[125:0],wr_en,rd_en,dout[125:0],full,empty" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [125:0]din;
  input wr_en;
  input rd_en;
  output [125:0]dout;
  output full;
  output empty;
endmodule
