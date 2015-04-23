// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Fri Apr 10 15:30:50 2015
// Host        : 0602-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/MargaretVC709/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth_0/trigger_clock_synth_stub.v
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
