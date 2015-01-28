// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Fri Jul 18 14:11:31 2014
// Host        : PC210 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode synth_stub
//               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/axis_switch_rx/axis_switch_rx_stub.v
// Design      : axis_switch_rx
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k160tfbg676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module axis_switch_rx(aclk, aresetn, s_axis_tvalid, s_axis_tready, s_axis_tdata, s_axis_tlast, m_axis_tvalid, m_axis_tready, m_axis_tdata, m_axis_tlast, s_req_suppress, s_decode_err)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tvalid[1:0],s_axis_tready[1:0],s_axis_tdata[63:0],s_axis_tlast[1:0],m_axis_tvalid[0:0],m_axis_tready[0:0],m_axis_tdata[31:0],m_axis_tlast[0:0],s_req_suppress[1:0],s_decode_err[1:0]" */;
  input aclk;
  input aresetn;
  input [1:0]s_axis_tvalid;
  output [1:0]s_axis_tready;
  input [63:0]s_axis_tdata;
  input [1:0]s_axis_tlast;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [31:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
  input [1:0]s_req_suppress;
  output [1:0]s_decode_err;
endmodule
