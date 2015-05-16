// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
// Date        : Sat May 16 11:04:37 2015
// Host        : mq154.lns.cornell.edu running 64-bit Scientific Linux release 6.6 (Carbon)
// Command     : write_verilog -force -mode synth_stub
//               /home/Jorge/Documents/work/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth_0/trigger_clock_synth_stub.v
// Design      : trigger_clock_synth
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module trigger_clock_synth(clk_in1, cross_clk, proc_clk, reset, locked)
/* synthesis syn_black_box black_box_pad_pin="clk_in1,cross_clk,proc_clk,reset,locked" */;
  input clk_in1;
  output cross_clk;
  output proc_clk;
  input reset;
  output locked;
endmodule
