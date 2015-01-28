// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Fri Jul 18 14:07:31 2014
// Host        : PC210 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/chan_link_axis_data_fifo/chan_link_axis_data_fifo_funcsim.v
// Design      : chan_link_axis_data_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* x_core_info = "axis_data_fifo_v1_1_axis_data_fifo,Vivado 2013.4" *) (* CHECK_LICENSE_TYPE = "chan_link_axis_data_fifo,axis_data_fifo_v1_1_axis_data_fifo,{}" *) (* core_generation_info = "chan_link_axis_data_fifo,axis_data_fifo_v1_1_axis_data_fifo,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_data_fifo,x_ipVersion=1.1,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_FAMILY=kintex7,C_AXIS_TDATA_WIDTH=32,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00011011,C_FIFO_DEPTH=4096,C_FIFO_MODE=1,C_IS_ACLK_ASYNC=1,C_SYNCHRONIZER_STAGE=2,C_ACLKEN_CONV_MODE=0}" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
(* NotValidForBitStream *)
module chan_link_axis_data_fifo
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tkeep,
    s_axis_tlast,
    m_axis_aclk,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tkeep,
    m_axis_tlast,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input m_axis_aclk;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]axis_data_count;
  wire [31:0]axis_rd_data_count;
  wire [31:0]axis_wr_data_count;
  wire m_axis_aclk;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [31:0]s_axis_tdata;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [3:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* C_ACLKEN_CONV_MODE = "0" *) 
   (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
   (* C_AXIS_TDATA_WIDTH = "32" *) 
   (* C_AXIS_TDEST_WIDTH = "1" *) 
   (* C_AXIS_TID_WIDTH = "1" *) 
   (* C_AXIS_TUSER_WIDTH = "1" *) 
   (* C_AXI_ADDR_WIDTH = "32" *) 
   (* C_AXI_ARUSER_WIDTH = "1" *) 
   (* C_AXI_AWUSER_WIDTH = "1" *) 
   (* C_AXI_BUSER_WIDTH = "1" *) 
   (* C_AXI_DATA_WIDTH = "64" *) 
   (* C_AXI_ID_WIDTH = "4" *) 
   (* C_AXI_RUSER_WIDTH = "1" *) 
   (* C_AXI_WUSER_WIDTH = "1" *) 
   (* C_DATA_COUNT_WIDTH = "10" *) 
   (* C_DIN_WIDTH = "18" *) 
   (* C_DOUT_WIDTH = "18" *) 
   (* C_FAMILY = "kintex7" *) 
   (* C_FIFO_DEPTH = "4096" *) 
   (* C_FIFO_MODE = "1" *) 
   (* C_IS_ACLK_ASYNC = "1" *) 
   (* C_RD_DATA_COUNT_WIDTH = "10" *) 
   (* C_RD_PNTR_WIDTH = "10" *) 
   (* C_RD_PNTR_WIDTH_RACH = "4" *) 
   (* C_RD_PNTR_WIDTH_RDCH = "10" *) 
   (* C_RD_PNTR_WIDTH_WACH = "4" *) 
   (* C_RD_PNTR_WIDTH_WDCH = "10" *) 
   (* C_RD_PNTR_WIDTH_WRCH = "4" *) 
   (* C_SYNCHRONIZER_STAGE = "2" *) 
   (* C_WR_DATA_COUNT_WIDTH = "10" *) 
   (* C_WR_PNTR_WIDTH = "10" *) 
   (* C_WR_PNTR_WIDTH_AXIS = "12" *) 
   (* C_WR_PNTR_WIDTH_RACH = "4" *) 
   (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WACH = "4" *) 
   (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
   (* G_INDX_SS_TDATA = "1" *) 
   (* G_INDX_SS_TDEST = "6" *) 
   (* G_INDX_SS_TID = "5" *) 
   (* G_INDX_SS_TKEEP = "3" *) 
   (* G_INDX_SS_TLAST = "4" *) 
   (* G_INDX_SS_TREADY = "0" *) 
   (* G_INDX_SS_TSTRB = "2" *) 
   (* G_INDX_SS_TUSER = "7" *) 
   (* G_MASK_SS_TDATA = "2" *) 
   (* G_MASK_SS_TDEST = "64" *) 
   (* G_MASK_SS_TID = "32" *) 
   (* G_MASK_SS_TKEEP = "8" *) 
   (* G_MASK_SS_TLAST = "16" *) 
   (* G_MASK_SS_TREADY = "1" *) 
   (* G_MASK_SS_TSTRB = "4" *) 
   (* G_MASK_SS_TUSER = "128" *) 
   (* G_TASK_SEVERITY_ERR = "2" *) 
   (* G_TASK_SEVERITY_INFO = "0" *) 
   (* G_TASK_SEVERITY_WARNING = "1" *) 
   (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
   (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) 
   (* P_APPLICATION_TYPE_AXIS = "0" *) 
   (* P_AXIS_PAYLOAD_WIDTH = "37" *) 
   (* P_COMMON_CLOCK = "0" *) 
   (* P_FIFO_COUNT_WIDTH = "13" *) 
   (* P_FIFO_TYPE = "1" *) 
   (* P_IMPLEMENTATION_TYPE_AXIS = "11" *) 
   (* P_MSGON_VAL = "0" *) 
   (* P_TDATA_EXISTS = "1" *) 
   (* P_TDEST_EXISTS = "0" *) 
   (* P_TID_EXISTS = "0" *) 
   (* P_TKEEP_EXISTS = "1" *) 
   (* P_TLAST_EXISTS = "1" *) 
   (* P_TREADY_EXISTS = "1" *) 
   (* P_TSTRB_EXISTS = "0" *) 
   (* P_TUSER_EXISTS = "0" *) 
   (* P_WR_PNTR_WIDTH = "12" *) 
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) 
   chan_link_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo inst
       (.axis_data_count(axis_data_count),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_aclken(\<const1> ),
        .m_axis_aresetn(m_axis_aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(m_axis_tkeep),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[3:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(\<const1> ),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(\<const0> ),
        .s_axis_tid(\<const0> ),
        .s_axis_tkeep(s_axis_tkeep),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .s_axis_tuser(\<const0> ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_FAMILY = "kintex7" *) (* C_AXIS_TDATA_WIDTH = "32" *) (* C_AXIS_TID_WIDTH = "1" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000011011" *) 
(* C_FIFO_DEPTH = "4096" *) (* C_FIFO_MODE = "1" *) (* C_IS_ACLK_ASYNC = "1" *) 
(* C_SYNCHRONIZER_STAGE = "2" *) (* C_ACLKEN_CONV_MODE = "0" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TKEEP = "3" *) 
(* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TID = "5" *) (* G_INDX_SS_TDEST = "6" *) 
(* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TSTRB = "4" *) (* G_MASK_SS_TKEEP = "8" *) (* G_MASK_SS_TLAST = "16" *) 
(* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TUSER = "128" *) 
(* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_WARNING = "1" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* P_TREADY_EXISTS = "1" *) (* P_TDATA_EXISTS = "1" *) (* P_TSTRB_EXISTS = "0" *) 
(* P_TKEEP_EXISTS = "1" *) (* P_TLAST_EXISTS = "1" *) (* P_TID_EXISTS = "0" *) 
(* P_TDEST_EXISTS = "0" *) (* P_TUSER_EXISTS = "0" *) (* P_AXIS_PAYLOAD_WIDTH = "37" *) 
(* P_WR_PNTR_WIDTH = "12" *) (* P_FIFO_COUNT_WIDTH = "13" *) (* P_FIFO_TYPE = "1" *) 
(* P_IMPLEMENTATION_TYPE_AXIS = "11" *) (* P_COMMON_CLOCK = "0" *) (* P_MSGON_VAL = "0" *) 
(* P_APPLICATION_TYPE_AXIS = "0" *) (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
(* C_DIN_WIDTH = "18" *) (* C_RD_PNTR_WIDTH = "10" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_DOUT_WIDTH = "18" *) (* C_DATA_COUNT_WIDTH = "10" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DATA_COUNT_WIDTH = "10" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_ARUSER_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) 
(* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) (* C_RD_PNTR_WIDTH_RACH = "4" *) 
(* C_RD_PNTR_WIDTH_RDCH = "10" *) (* C_RD_PNTR_WIDTH_WACH = "4" *) (* C_RD_PNTR_WIDTH_WDCH = "10" *) 
(* C_RD_PNTR_WIDTH_WRCH = "4" *) (* C_WR_PNTR_WIDTH_AXIS = "12" *) 
module chan_link_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo
   (s_axis_aresetn,
    m_axis_aresetn,
    s_axis_aclk,
    s_axis_aclken,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_aclk,
    m_axis_aclken,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_aclken;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input [3:0]s_axis_tstrb;
  input [3:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  input m_axis_aclk;
  input m_axis_aclken;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
  output [3:0]m_axis_tstrb;
  output [3:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire [12:0]\^axis_rd_data_count ;
  wire [12:0]\^axis_wr_data_count ;
  wire m_axis_aclk;
  wire m_axis_aclken;
  wire m_axis_aresetn;
  wire [31:0]m_axis_tdata;
  wire [3:0]m_axis_tkeep;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire m_axis_tvalid;
(* RTL_KEEP = "true" *)   wire s_and_m_aresetn_i;
  wire s_axis_aclk;
  wire s_axis_aclken;
  wire s_axis_aresetn;
  wire [31:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [3:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [3:0]s_axis_tstrb;
  wire [0:0]s_axis_tuser;
  wire s_axis_tvalid;

  assign axis_data_count[31] = \<const0> ;
  assign axis_data_count[30] = \<const0> ;
  assign axis_data_count[29] = \<const0> ;
  assign axis_data_count[28] = \<const0> ;
  assign axis_data_count[27] = \<const0> ;
  assign axis_data_count[26] = \<const0> ;
  assign axis_data_count[25] = \<const0> ;
  assign axis_data_count[24] = \<const0> ;
  assign axis_data_count[23] = \<const0> ;
  assign axis_data_count[22] = \<const0> ;
  assign axis_data_count[21] = \<const0> ;
  assign axis_data_count[20] = \<const0> ;
  assign axis_data_count[19] = \<const0> ;
  assign axis_data_count[18] = \<const0> ;
  assign axis_data_count[17] = \<const0> ;
  assign axis_data_count[16] = \<const0> ;
  assign axis_data_count[15] = \<const0> ;
  assign axis_data_count[14] = \<const0> ;
  assign axis_data_count[13] = \<const0> ;
  assign axis_data_count[12:0] = \^axis_wr_data_count [12:0];
  assign axis_rd_data_count[31] = \<const0> ;
  assign axis_rd_data_count[30] = \<const0> ;
  assign axis_rd_data_count[29] = \<const0> ;
  assign axis_rd_data_count[28] = \<const0> ;
  assign axis_rd_data_count[27] = \<const0> ;
  assign axis_rd_data_count[26] = \<const0> ;
  assign axis_rd_data_count[25] = \<const0> ;
  assign axis_rd_data_count[24] = \<const0> ;
  assign axis_rd_data_count[23] = \<const0> ;
  assign axis_rd_data_count[22] = \<const0> ;
  assign axis_rd_data_count[21] = \<const0> ;
  assign axis_rd_data_count[20] = \<const0> ;
  assign axis_rd_data_count[19] = \<const0> ;
  assign axis_rd_data_count[18] = \<const0> ;
  assign axis_rd_data_count[17] = \<const0> ;
  assign axis_rd_data_count[16] = \<const0> ;
  assign axis_rd_data_count[15] = \<const0> ;
  assign axis_rd_data_count[14] = \<const0> ;
  assign axis_rd_data_count[13] = \<const0> ;
  assign axis_rd_data_count[12:0] = \^axis_rd_data_count [12:0];
  assign axis_wr_data_count[31] = \<const0> ;
  assign axis_wr_data_count[30] = \<const0> ;
  assign axis_wr_data_count[29] = \<const0> ;
  assign axis_wr_data_count[28] = \<const0> ;
  assign axis_wr_data_count[27] = \<const0> ;
  assign axis_wr_data_count[26] = \<const0> ;
  assign axis_wr_data_count[25] = \<const0> ;
  assign axis_wr_data_count[24] = \<const0> ;
  assign axis_wr_data_count[23] = \<const0> ;
  assign axis_wr_data_count[22] = \<const0> ;
  assign axis_wr_data_count[21] = \<const0> ;
  assign axis_wr_data_count[20] = \<const0> ;
  assign axis_wr_data_count[19] = \<const0> ;
  assign axis_wr_data_count[18] = \<const0> ;
  assign axis_wr_data_count[17] = \<const0> ;
  assign axis_wr_data_count[16] = \<const0> ;
  assign axis_wr_data_count[15] = \<const0> ;
  assign axis_wr_data_count[14] = \<const0> ;
  assign axis_wr_data_count[13] = \<const0> ;
  assign axis_wr_data_count[12:0] = \^axis_wr_data_count [12:0];
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tstrb[3] = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
chan_link_axis_data_fifoaxis_infrastructure_v1_1_clock_synchronizer \gen_async_clock_and_reset.inst_clock_synchronizer 
       (.m_axis_aresetn(m_axis_aresetn),
        .out(s_and_m_aresetn_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn));
chan_link_axis_data_fifofifo_generator_v11_0 \gen_fifo_generator.fifo_generator_inst 
       (.DINA({s_axis_tdata,s_axis_tkeep,s_axis_tlast}),
        .I1(s_and_m_aresetn_i),
        .O1({m_axis_tdata,m_axis_tkeep,m_axis_tlast}),
        .axis_rd_data_count(\^axis_rd_data_count ),
        .axis_wr_data_count(\^axis_wr_data_count ),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module chan_link_axis_data_fifoaxis_infrastructure_v1_1_clock_synchronizer
   (out,
    s_axis_aclk,
    s_axis_aresetn,
    m_axis_aresetn);
  output [0:0]out;
  input s_axis_aclk;
  input s_axis_aresetn;
  input m_axis_aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire m_axis_aresetn;
  wire \n_0_gen_synchronizer.synch_d[0]_i_1 ;
  wire [0:0]out;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [1:0]synch_d;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
FDRE \gen_synchronizer.gen_stage[1].synch_d_reg[1] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(synch_d[0]),
        .Q(synch_d[1]),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h8)) 
     \gen_synchronizer.synch_d[0]_i_1 
       (.I0(s_axis_aresetn),
        .I1(m_axis_aresetn),
        .O(\n_0_gen_synchronizer.synch_d[0]_i_1 ));
FDRE \gen_synchronizer.synch_d_reg[0] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(\n_0_gen_synchronizer.synch_d[0]_i_1 ),
        .Q(synch_d[0]),
        .R(\<const0> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(synch_d[1]),
        .O(out));
endmodule

module chan_link_axis_data_fifoblk_mem_gen_generic_cstr
   (DOUTB,
    s_axis_aclk,
    m_axis_aclk,
    I1,
    ENB,
    Q,
    O1,
    DINA);
  output [36:0]DOUTB;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;
  input ENB;
  input [11:0]Q;
  input [11:0]O1;
  input [36:0]DINA;

  wire [36:0]DINA;
  wire [36:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;

chan_link_axis_data_fifoblk_mem_gen_prim_width \ramloop[0].ram.r 
       (.DINA(DINA[3:0]),
        .DOUTB(DOUTB[3:0]),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
chan_link_axis_data_fifoblk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.DINA(DINA[12:4]),
        .DOUTB(DOUTB[12:4]),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
chan_link_axis_data_fifoblk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.DINA(DINA[21:13]),
        .DOUTB(DOUTB[21:13]),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
chan_link_axis_data_fifoblk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.DINA(DINA[30:22]),
        .DOUTB(DOUTB[30:22]),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
chan_link_axis_data_fifoblk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.DINA(DINA[36:31]),
        .DOUTB(DOUTB[36:31]),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
endmodule

module chan_link_axis_data_fifoblk_mem_gen_prim_width
   (DOUTB,
    s_axis_aclk,
    m_axis_aclk,
    I1,
    ENB,
    Q,
    O1,
    DINA);
  output [3:0]DOUTB;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;
  input ENB;
  input [11:0]Q;
  input [11:0]O1;
  input [3:0]DINA;

  wire [3:0]DINA;
  wire [3:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;

chan_link_axis_data_fifoblk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.DINA(DINA),
        .DOUTB(DOUTB),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module chan_link_axis_data_fifoblk_mem_gen_prim_width__parameterized0
   (DOUTB,
    I1,
    s_axis_aclk,
    ENB,
    m_axis_aclk,
    Q,
    O1,
    DINA);
  output [8:0]DOUTB;
  input I1;
  input s_axis_aclk;
  input ENB;
  input m_axis_aclk;
  input [11:0]Q;
  input [11:0]O1;
  input [8:0]DINA;

  wire [8:0]DINA;
  wire [8:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;

chan_link_axis_data_fifoblk_mem_gen_prim_wrapper__parameterized0 \prim_noinit.ram 
       (.DINA(DINA),
        .DOUTB(DOUTB),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module chan_link_axis_data_fifoblk_mem_gen_prim_width__parameterized1
   (DOUTB,
    I1,
    s_axis_aclk,
    ENB,
    m_axis_aclk,
    Q,
    O1,
    DINA);
  output [8:0]DOUTB;
  input I1;
  input s_axis_aclk;
  input ENB;
  input m_axis_aclk;
  input [11:0]Q;
  input [11:0]O1;
  input [8:0]DINA;

  wire [8:0]DINA;
  wire [8:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;

chan_link_axis_data_fifoblk_mem_gen_prim_wrapper__parameterized1 \prim_noinit.ram 
       (.DINA(DINA),
        .DOUTB(DOUTB),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module chan_link_axis_data_fifoblk_mem_gen_prim_width__parameterized2
   (DOUTB,
    I1,
    s_axis_aclk,
    ENB,
    m_axis_aclk,
    Q,
    O1,
    DINA);
  output [8:0]DOUTB;
  input I1;
  input s_axis_aclk;
  input ENB;
  input m_axis_aclk;
  input [11:0]Q;
  input [11:0]O1;
  input [8:0]DINA;

  wire [8:0]DINA;
  wire [8:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;

chan_link_axis_data_fifoblk_mem_gen_prim_wrapper__parameterized2 \prim_noinit.ram 
       (.DINA(DINA),
        .DOUTB(DOUTB),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module chan_link_axis_data_fifoblk_mem_gen_prim_width__parameterized3
   (DOUTB,
    I1,
    s_axis_aclk,
    ENB,
    m_axis_aclk,
    Q,
    O1,
    DINA);
  output [5:0]DOUTB;
  input I1;
  input s_axis_aclk;
  input ENB;
  input m_axis_aclk;
  input [11:0]Q;
  input [11:0]O1;
  input [5:0]DINA;

  wire [5:0]DINA;
  wire [5:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;

chan_link_axis_data_fifoblk_mem_gen_prim_wrapper__parameterized3 \prim_noinit.ram 
       (.DINA(DINA),
        .DOUTB(DOUTB),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
endmodule

module chan_link_axis_data_fifoblk_mem_gen_prim_wrapper
   (DOUTB,
    s_axis_aclk,
    m_axis_aclk,
    I1,
    ENB,
    Q,
    O1,
    DINA);
  output [3:0]DOUTB;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;
  input ENB;
  input [11:0]Q;
  input [11:0]O1;
  input [3:0]DINA;

  wire \<const0> ;
  wire [3:0]DINA;
  wire [3:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;
  wire [15:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED ;
  wire [15:4]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED ;
  wire [1:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED ;
  wire [1:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEA_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(4),
    .READ_WIDTH_B(4),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(4),
    .WRITE_WIDTH_B(4)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram 
       (.ADDRARDADDR({Q,\<const0> ,\<const0> }),
        .ADDRBWRADDR({O1,\<const0> ,\<const0> }),
        .CLKARDCLK(s_axis_aclk),
        .CLKBWRCLK(m_axis_aclk),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,DINA}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOADO_UNCONNECTED [15:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOBDO_UNCONNECTED [15:4],DOUTB}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPADOP_UNCONNECTED [1:0]),
        .DOPBDOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_DOPBDOP_UNCONNECTED [1:0]),
        .ENARDEN(I1),
        .ENBWREN(ENB),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_WEA_UNCONNECTED [1],I1}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> }));
GND GND
       (.G(\<const0> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module chan_link_axis_data_fifoblk_mem_gen_prim_wrapper__parameterized0
   (DOUTB,
    I1,
    s_axis_aclk,
    ENB,
    m_axis_aclk,
    Q,
    O1,
    DINA);
  output [8:0]DOUTB;
  input I1;
  input s_axis_aclk;
  input ENB;
  input m_axis_aclk;
  input [11:0]Q;
  input [11:0]O1;
  input [8:0]DINA;

  wire \<const0> ;
  wire \<const1> ;
  wire [8:0]DINA;
  wire [8:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,Q,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,O1,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_axis_aclk),
        .CLKBWRCLK(m_axis_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,DINA[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,DINA[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOUTB[7:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],DOUTB[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(ENB),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],I1}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module chan_link_axis_data_fifoblk_mem_gen_prim_wrapper__parameterized1
   (DOUTB,
    I1,
    s_axis_aclk,
    ENB,
    m_axis_aclk,
    Q,
    O1,
    DINA);
  output [8:0]DOUTB;
  input I1;
  input s_axis_aclk;
  input ENB;
  input m_axis_aclk;
  input [11:0]Q;
  input [11:0]O1;
  input [8:0]DINA;

  wire \<const0> ;
  wire \<const1> ;
  wire [8:0]DINA;
  wire [8:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,Q,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,O1,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_axis_aclk),
        .CLKBWRCLK(m_axis_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,DINA[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,DINA[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOUTB[7:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],DOUTB[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(ENB),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],I1}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module chan_link_axis_data_fifoblk_mem_gen_prim_wrapper__parameterized2
   (DOUTB,
    I1,
    s_axis_aclk,
    ENB,
    m_axis_aclk,
    Q,
    O1,
    DINA);
  output [8:0]DOUTB;
  input I1;
  input s_axis_aclk;
  input ENB;
  input m_axis_aclk;
  input [11:0]Q;
  input [11:0]O1;
  input [8:0]DINA;

  wire \<const0> ;
  wire \<const1> ;
  wire [8:0]DINA;
  wire [8:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,Q,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,O1,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_axis_aclk),
        .CLKBWRCLK(m_axis_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,DINA[7:0]}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,DINA[8]}),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOUTB[7:0]}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],DOUTB[8]}),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(ENB),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],I1}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper" *) 
module chan_link_axis_data_fifoblk_mem_gen_prim_wrapper__parameterized3
   (DOUTB,
    I1,
    s_axis_aclk,
    ENB,
    m_axis_aclk,
    Q,
    O1,
    DINA);
  output [5:0]DOUTB;
  input I1;
  input s_axis_aclk;
  input ENB;
  input m_axis_aclk;
  input [11:0]Q;
  input [11:0]O1;
  input [5:0]DINA;

  wire \<const0> ;
  wire \<const1> ;
  wire [5:0]DINA;
  wire [5:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire \n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_61_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire \n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire s_axis_aclk;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({\<const1> ,Q,\<const1> ,\<const1> ,\<const1> }),
        .ADDRBWRADDR({\<const1> ,O1,\<const1> ,\<const1> ,\<const1> }),
        .CASCADEINA(\<const0> ),
        .CASCADEINB(\<const0> ),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_axis_aclk),
        .CLKBWRCLK(m_axis_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,DINA}),
        .DIBDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPADIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\n_60_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,\n_61_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,DOUTB}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\n_75_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(I1),
        .ENBWREN(ENB),
        .INJECTDBITERR(\<const0> ),
        .INJECTSBITERR(\<const0> ),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_WEA_UNCONNECTED [3:1],I1}),
        .WEBWE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
endmodule

module chan_link_axis_data_fifoblk_mem_gen_top
   (DOUTB,
    s_axis_aclk,
    m_axis_aclk,
    I1,
    ENB,
    Q,
    O1,
    DINA);
  output [36:0]DOUTB;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;
  input ENB;
  input [11:0]Q;
  input [11:0]O1;
  input [36:0]DINA;

  wire [36:0]DINA;
  wire [36:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;

chan_link_axis_data_fifoblk_mem_gen_generic_cstr \valid.cstr 
       (.DINA(DINA),
        .DOUTB(DOUTB),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_1" *) 
module chan_link_axis_data_fifoblk_mem_gen_v8_1__parameterized0
   (DOUTB,
    s_axis_aclk,
    m_axis_aclk,
    I1,
    ENB,
    Q,
    O1,
    DINA);
  output [36:0]DOUTB;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;
  input ENB;
  input [11:0]Q;
  input [11:0]O1;
  input [36:0]DINA;

  wire [36:0]DINA;
  wire [36:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;

chan_link_axis_data_fifoblk_mem_gen_v8_1_synth inst_blk_mem_gen
       (.DINA(DINA),
        .DOUTB(DOUTB),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
endmodule

module chan_link_axis_data_fifoblk_mem_gen_v8_1_synth
   (DOUTB,
    s_axis_aclk,
    m_axis_aclk,
    I1,
    ENB,
    Q,
    O1,
    DINA);
  output [36:0]DOUTB;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;
  input ENB;
  input [11:0]Q;
  input [11:0]O1;
  input [36:0]DINA;

  wire [36:0]DINA;
  wire [36:0]DOUTB;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [11:0]Q;
  wire m_axis_aclk;
  wire s_axis_aclk;

chan_link_axis_data_fifoblk_mem_gen_top \gnativebmg.native_blk_mem_gen 
       (.DINA(DINA),
        .DOUTB(DOUTB),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
endmodule

module chan_link_axis_data_fifoclk_x_pntrs
   (O1,
    O2,
    S,
    O3,
    I1,
    I2,
    m_axis_aclk,
    I3,
    s_axis_aclk,
    I4);
  output [11:0]O1;
  output [10:0]O2;
  output [0:0]S;
  output [11:0]O3;
  input [11:0]I1;
  input [11:0]I2;
  input m_axis_aclk;
  input [0:0]I3;
  input s_axis_aclk;
  input [0:0]I4;

  wire \<const0> ;
  wire \<const1> ;
  wire [11:0]I1;
  wire [11:0]I2;
  wire [0:0]I3;
  wire [0:0]I4;
  wire [11:0]O1;
  wire [10:0]O2;
  wire [11:0]O3;
  wire [11:0]Q;
  wire [0:0]S;
  wire m_axis_aclk;
  wire \n_0_gsync_stage[1].wr_stg_inst ;
  wire \n_0_gsync_stage[2].wr_stg_inst ;
  wire \n_0_gvalid_low.rd_dc_i[12]_i_10 ;
  wire \n_0_gvalid_low.rd_dc_i[12]_i_11 ;
  wire \n_0_gvalid_low.rd_dc_i[12]_i_8 ;
  wire \n_0_gvalid_low.rd_dc_i[12]_i_9 ;
  wire \n_0_gvalid_low.rd_dc_i[3]_i_10 ;
  wire \n_0_gvalid_low.rd_dc_i[3]_i_11 ;
  wire \n_0_gvalid_low.rd_dc_i[3]_i_8 ;
  wire \n_0_gvalid_low.rd_dc_i[3]_i_9 ;
  wire \n_0_gvalid_low.rd_dc_i[7]_i_10 ;
  wire \n_0_gvalid_low.rd_dc_i[7]_i_11 ;
  wire \n_0_gvalid_low.rd_dc_i[7]_i_8 ;
  wire \n_0_gvalid_low.rd_dc_i[7]_i_9 ;
  wire \n_0_gvalid_low.rd_dc_i_reg[3]_i_3 ;
  wire \n_0_gvalid_low.rd_dc_i_reg[7]_i_7 ;
  wire \n_0_rd_pntr_gc[0]_i_1 ;
  wire \n_0_rd_pntr_gc[10]_i_1 ;
  wire \n_0_rd_pntr_gc[1]_i_1 ;
  wire \n_0_rd_pntr_gc[2]_i_1 ;
  wire \n_0_rd_pntr_gc[3]_i_1 ;
  wire \n_0_rd_pntr_gc[4]_i_1 ;
  wire \n_0_rd_pntr_gc[5]_i_1 ;
  wire \n_0_rd_pntr_gc[6]_i_1 ;
  wire \n_0_rd_pntr_gc[7]_i_1 ;
  wire \n_0_rd_pntr_gc[8]_i_1 ;
  wire \n_0_rd_pntr_gc[9]_i_1 ;
  wire \n_10_gsync_stage[1].wr_stg_inst ;
  wire \n_10_gsync_stage[2].wr_stg_inst ;
  wire \n_11_gsync_stage[1].wr_stg_inst ;
  wire \n_11_gsync_stage[2].wr_stg_inst ;
  wire \n_1_gsync_stage[1].wr_stg_inst ;
  wire \n_1_gsync_stage[2].wr_stg_inst ;
  wire \n_1_gvalid_low.rd_dc_i_reg[12]_i_7 ;
  wire \n_1_gvalid_low.rd_dc_i_reg[3]_i_3 ;
  wire \n_1_gvalid_low.rd_dc_i_reg[7]_i_7 ;
  wire \n_2_gsync_stage[1].wr_stg_inst ;
  wire \n_2_gsync_stage[2].wr_stg_inst ;
  wire \n_2_gvalid_low.rd_dc_i_reg[12]_i_7 ;
  wire \n_2_gvalid_low.rd_dc_i_reg[3]_i_3 ;
  wire \n_2_gvalid_low.rd_dc_i_reg[7]_i_7 ;
  wire \n_3_gsync_stage[1].wr_stg_inst ;
  wire \n_3_gsync_stage[2].wr_stg_inst ;
  wire \n_3_gvalid_low.rd_dc_i_reg[12]_i_7 ;
  wire \n_3_gvalid_low.rd_dc_i_reg[3]_i_3 ;
  wire \n_3_gvalid_low.rd_dc_i_reg[7]_i_7 ;
  wire \n_4_gsync_stage[1].wr_stg_inst ;
  wire \n_4_gsync_stage[2].wr_stg_inst ;
  wire \n_5_gsync_stage[1].wr_stg_inst ;
  wire \n_5_gsync_stage[2].wr_stg_inst ;
  wire \n_6_gsync_stage[1].wr_stg_inst ;
  wire \n_6_gsync_stage[2].wr_stg_inst ;
  wire \n_7_gsync_stage[1].wr_stg_inst ;
  wire \n_7_gsync_stage[2].wr_stg_inst ;
  wire \n_8_gsync_stage[1].wr_stg_inst ;
  wire \n_8_gsync_stage[2].wr_stg_inst ;
  wire \n_9_gsync_stage[1].wr_stg_inst ;
  wire \n_9_gsync_stage[2].wr_stg_inst ;
  wire [11:0]p_0_in;
  wire [10:0]p_0_in9_out;
  wire [11:0]rd_pntr_gc;
  wire s_axis_aclk;
  wire [11:0]wr_pntr_gc;
  wire [3:3]\NLW_gvalid_low.rd_dc_i_reg[12]_i_7_CO_UNCONNECTED ;
  wire [0:0]\NLW_gvalid_low.rd_dc_i_reg[3]_i_3_O_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
chan_link_axis_data_fifosynchronizer_ff \gsync_stage[1].rd_stg_inst 
       (.I1(wr_pntr_gc),
        .I3(I3),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk));
chan_link_axis_data_fifosynchronizer_ff_1 \gsync_stage[1].wr_stg_inst 
       (.I1(rd_pntr_gc),
        .I4(I4),
        .Q({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst ,\n_8_gsync_stage[1].wr_stg_inst ,\n_9_gsync_stage[1].wr_stg_inst ,\n_10_gsync_stage[1].wr_stg_inst ,\n_11_gsync_stage[1].wr_stg_inst }),
        .s_axis_aclk(s_axis_aclk));
chan_link_axis_data_fifosynchronizer_ff_2 \gsync_stage[2].rd_stg_inst 
       (.D(Q),
        .I3(I3),
        .m_axis_aclk(m_axis_aclk),
        .p_0_in(p_0_in));
chan_link_axis_data_fifosynchronizer_ff_3 \gsync_stage[2].wr_stg_inst 
       (.D({\n_0_gsync_stage[1].wr_stg_inst ,\n_1_gsync_stage[1].wr_stg_inst ,\n_2_gsync_stage[1].wr_stg_inst ,\n_3_gsync_stage[1].wr_stg_inst ,\n_4_gsync_stage[1].wr_stg_inst ,\n_5_gsync_stage[1].wr_stg_inst ,\n_6_gsync_stage[1].wr_stg_inst ,\n_7_gsync_stage[1].wr_stg_inst ,\n_8_gsync_stage[1].wr_stg_inst ,\n_9_gsync_stage[1].wr_stg_inst ,\n_10_gsync_stage[1].wr_stg_inst ,\n_11_gsync_stage[1].wr_stg_inst }),
        .I4(I4),
        .O1({\n_1_gsync_stage[2].wr_stg_inst ,\n_2_gsync_stage[2].wr_stg_inst ,\n_3_gsync_stage[2].wr_stg_inst ,\n_4_gsync_stage[2].wr_stg_inst ,\n_5_gsync_stage[2].wr_stg_inst ,\n_6_gsync_stage[2].wr_stg_inst ,\n_7_gsync_stage[2].wr_stg_inst ,\n_8_gsync_stage[2].wr_stg_inst ,\n_9_gsync_stage[2].wr_stg_inst ,\n_10_gsync_stage[2].wr_stg_inst ,\n_11_gsync_stage[2].wr_stg_inst }),
        .Q(\n_0_gsync_stage[2].wr_stg_inst ),
        .s_axis_aclk(s_axis_aclk));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[12]_i_10 
       (.I0(O1[9]),
        .I1(I1[9]),
        .O(\n_0_gvalid_low.rd_dc_i[12]_i_10 ));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[12]_i_11 
       (.I0(O1[8]),
        .I1(I1[8]),
        .O(\n_0_gvalid_low.rd_dc_i[12]_i_11 ));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[12]_i_8 
       (.I0(O1[11]),
        .I1(I1[11]),
        .O(\n_0_gvalid_low.rd_dc_i[12]_i_8 ));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[12]_i_9 
       (.I0(O1[10]),
        .I1(I1[10]),
        .O(\n_0_gvalid_low.rd_dc_i[12]_i_9 ));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[3]_i_10 
       (.I0(O1[1]),
        .I1(I1[1]),
        .O(\n_0_gvalid_low.rd_dc_i[3]_i_10 ));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[3]_i_11 
       (.I0(O1[0]),
        .I1(I1[0]),
        .O(\n_0_gvalid_low.rd_dc_i[3]_i_11 ));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[3]_i_8 
       (.I0(O1[3]),
        .I1(I1[3]),
        .O(\n_0_gvalid_low.rd_dc_i[3]_i_8 ));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[3]_i_9 
       (.I0(O1[2]),
        .I1(I1[2]),
        .O(\n_0_gvalid_low.rd_dc_i[3]_i_9 ));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[7]_i_10 
       (.I0(O1[5]),
        .I1(I1[5]),
        .O(\n_0_gvalid_low.rd_dc_i[7]_i_10 ));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[7]_i_11 
       (.I0(O1[4]),
        .I1(I1[4]),
        .O(\n_0_gvalid_low.rd_dc_i[7]_i_11 ));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[7]_i_8 
       (.I0(O1[7]),
        .I1(I1[7]),
        .O(\n_0_gvalid_low.rd_dc_i[7]_i_8 ));
LUT2 #(
    .INIT(4'h9)) 
     \gvalid_low.rd_dc_i[7]_i_9 
       (.I0(O1[6]),
        .I1(I1[6]),
        .O(\n_0_gvalid_low.rd_dc_i[7]_i_9 ));
CARRY4 \gvalid_low.rd_dc_i_reg[12]_i_7 
       (.CI(\n_0_gvalid_low.rd_dc_i_reg[7]_i_7 ),
        .CO({\NLW_gvalid_low.rd_dc_i_reg[12]_i_7_CO_UNCONNECTED [3],\n_1_gvalid_low.rd_dc_i_reg[12]_i_7 ,\n_2_gvalid_low.rd_dc_i_reg[12]_i_7 ,\n_3_gvalid_low.rd_dc_i_reg[12]_i_7 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,O1[10:8]}),
        .O(O2[10:7]),
        .S({\n_0_gvalid_low.rd_dc_i[12]_i_8 ,\n_0_gvalid_low.rd_dc_i[12]_i_9 ,\n_0_gvalid_low.rd_dc_i[12]_i_10 ,\n_0_gvalid_low.rd_dc_i[12]_i_11 }));
CARRY4 \gvalid_low.rd_dc_i_reg[3]_i_3 
       (.CI(\<const0> ),
        .CO({\n_0_gvalid_low.rd_dc_i_reg[3]_i_3 ,\n_1_gvalid_low.rd_dc_i_reg[3]_i_3 ,\n_2_gvalid_low.rd_dc_i_reg[3]_i_3 ,\n_3_gvalid_low.rd_dc_i_reg[3]_i_3 }),
        .CYINIT(\<const1> ),
        .DI(O1[3:0]),
        .O({O2[2:0],\NLW_gvalid_low.rd_dc_i_reg[3]_i_3_O_UNCONNECTED [0]}),
        .S({\n_0_gvalid_low.rd_dc_i[3]_i_8 ,\n_0_gvalid_low.rd_dc_i[3]_i_9 ,\n_0_gvalid_low.rd_dc_i[3]_i_10 ,\n_0_gvalid_low.rd_dc_i[3]_i_11 }));
CARRY4 \gvalid_low.rd_dc_i_reg[7]_i_7 
       (.CI(\n_0_gvalid_low.rd_dc_i_reg[3]_i_3 ),
        .CO({\n_0_gvalid_low.rd_dc_i_reg[7]_i_7 ,\n_1_gvalid_low.rd_dc_i_reg[7]_i_7 ,\n_2_gvalid_low.rd_dc_i_reg[7]_i_7 ,\n_3_gvalid_low.rd_dc_i_reg[7]_i_7 }),
        .CYINIT(\<const0> ),
        .DI(O1[7:4]),
        .O(O2[6:3]),
        .S({\n_0_gvalid_low.rd_dc_i[7]_i_8 ,\n_0_gvalid_low.rd_dc_i[7]_i_9 ,\n_0_gvalid_low.rd_dc_i[7]_i_10 ,\n_0_gvalid_low.rd_dc_i[7]_i_11 }));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[0] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_11_gsync_stage[2].wr_stg_inst ),
        .Q(O3[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[10] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_1_gsync_stage[2].wr_stg_inst ),
        .Q(O3[10]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[11] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_0_gsync_stage[2].wr_stg_inst ),
        .Q(O3[11]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[1] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_10_gsync_stage[2].wr_stg_inst ),
        .Q(O3[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[2] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_9_gsync_stage[2].wr_stg_inst ),
        .Q(O3[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[3] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_8_gsync_stage[2].wr_stg_inst ),
        .Q(O3[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[4] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_7_gsync_stage[2].wr_stg_inst ),
        .Q(O3[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[5] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_6_gsync_stage[2].wr_stg_inst ),
        .Q(O3[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[6] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_5_gsync_stage[2].wr_stg_inst ),
        .Q(O3[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[7] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_4_gsync_stage[2].wr_stg_inst ),
        .Q(O3[7]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[8] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_3_gsync_stage[2].wr_stg_inst ),
        .Q(O3[8]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_bin_reg[9] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(\n_2_gsync_stage[2].wr_stg_inst ),
        .Q(O3[9]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[0]_i_1 
       (.I0(I1[0]),
        .I1(I1[1]),
        .O(\n_0_rd_pntr_gc[0]_i_1 ));
LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[10]_i_1 
       (.I0(I1[10]),
        .I1(I1[11]),
        .O(\n_0_rd_pntr_gc[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[1]_i_1 
       (.I0(I1[1]),
        .I1(I1[2]),
        .O(\n_0_rd_pntr_gc[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[2]_i_1 
       (.I0(I1[2]),
        .I1(I1[3]),
        .O(\n_0_rd_pntr_gc[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[3]_i_1 
       (.I0(I1[3]),
        .I1(I1[4]),
        .O(\n_0_rd_pntr_gc[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[4]_i_1 
       (.I0(I1[4]),
        .I1(I1[5]),
        .O(\n_0_rd_pntr_gc[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[5]_i_1 
       (.I0(I1[5]),
        .I1(I1[6]),
        .O(\n_0_rd_pntr_gc[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[6]_i_1 
       (.I0(I1[6]),
        .I1(I1[7]),
        .O(\n_0_rd_pntr_gc[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[7]_i_1 
       (.I0(I1[7]),
        .I1(I1[8]),
        .O(\n_0_rd_pntr_gc[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[8]_i_1 
       (.I0(I1[8]),
        .I1(I1[9]),
        .O(\n_0_rd_pntr_gc[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_gc[9]_i_1 
       (.I0(I1[9]),
        .I1(I1[10]),
        .O(\n_0_rd_pntr_gc[9]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[0] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[0]_i_1 ),
        .Q(rd_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[10] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[10]_i_1 ),
        .Q(rd_pntr_gc[10]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[11] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[11]),
        .Q(rd_pntr_gc[11]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[1] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[1]_i_1 ),
        .Q(rd_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[2] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[2]_i_1 ),
        .Q(rd_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[3] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[3]_i_1 ),
        .Q(rd_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[4] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[4]_i_1 ),
        .Q(rd_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[5] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[5]_i_1 ),
        .Q(rd_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[6] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[6]_i_1 ),
        .Q(rd_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[7] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[7]_i_1 ),
        .Q(rd_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[8] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[8]_i_1 ),
        .Q(rd_pntr_gc[8]));
FDCE #(
    .INIT(1'b0)) 
     \rd_pntr_gc_reg[9] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(\n_0_rd_pntr_gc[9]_i_1 ),
        .Q(rd_pntr_gc[9]));
LUT2 #(
    .INIT(4'h6)) 
     \wr_data_count_i[3]_i_6 
       (.I0(O3[0]),
        .I1(I2[0]),
        .O(S));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[0] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[0]),
        .Q(O1[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[10] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[10]),
        .Q(O1[10]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[11] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[11]),
        .Q(O1[11]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[1] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[1]),
        .Q(O1[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[2] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[2]),
        .Q(O1[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[3] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[3]),
        .Q(O1[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[4] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[4]),
        .Q(O1[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[5] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[5]),
        .Q(O1[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[6] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[6]),
        .Q(O1[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[7] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[7]),
        .Q(O1[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[8] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[8]),
        .Q(O1[8]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_bin_reg[9] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(p_0_in[9]),
        .Q(O1[9]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[0]_i_1 
       (.I0(I2[0]),
        .I1(I2[1]),
        .O(p_0_in9_out[0]));
LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[10]_i_1 
       (.I0(I2[10]),
        .I1(I2[11]),
        .O(p_0_in9_out[10]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[1]_i_1 
       (.I0(I2[1]),
        .I1(I2[2]),
        .O(p_0_in9_out[1]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[2]_i_1 
       (.I0(I2[2]),
        .I1(I2[3]),
        .O(p_0_in9_out[2]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[3]_i_1 
       (.I0(I2[3]),
        .I1(I2[4]),
        .O(p_0_in9_out[3]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[4]_i_1 
       (.I0(I2[4]),
        .I1(I2[5]),
        .O(p_0_in9_out[4]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[5]_i_1 
       (.I0(I2[5]),
        .I1(I2[6]),
        .O(p_0_in9_out[5]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[6]_i_1 
       (.I0(I2[6]),
        .I1(I2[7]),
        .O(p_0_in9_out[6]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[7]_i_1 
       (.I0(I2[7]),
        .I1(I2[8]),
        .O(p_0_in9_out[7]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[8]_i_1 
       (.I0(I2[8]),
        .I1(I2[9]),
        .O(p_0_in9_out[8]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_gc[9]_i_1 
       (.I0(I2[9]),
        .I1(I2[10]),
        .O(p_0_in9_out[9]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[0] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(p_0_in9_out[0]),
        .Q(wr_pntr_gc[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[10] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(p_0_in9_out[10]),
        .Q(wr_pntr_gc[10]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[11] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I2[11]),
        .Q(wr_pntr_gc[11]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[1] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(p_0_in9_out[1]),
        .Q(wr_pntr_gc[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[2] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(p_0_in9_out[2]),
        .Q(wr_pntr_gc[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[3] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(p_0_in9_out[3]),
        .Q(wr_pntr_gc[3]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[4] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(p_0_in9_out[4]),
        .Q(wr_pntr_gc[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[5] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(p_0_in9_out[5]),
        .Q(wr_pntr_gc[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[6] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(p_0_in9_out[6]),
        .Q(wr_pntr_gc[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[7] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(p_0_in9_out[7]),
        .Q(wr_pntr_gc[7]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[8] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(p_0_in9_out[8]),
        .Q(wr_pntr_gc[8]));
FDCE #(
    .INIT(1'b0)) 
     \wr_pntr_gc_reg[9] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(p_0_in9_out[9]),
        .Q(wr_pntr_gc[9]));
endmodule

module chan_link_axis_data_fifocompare
   (comp1,
    O4,
    O3);
  output comp1;
  input [11:0]O4;
  input [11:0]O3;

  wire \<const0> ;
  wire \<const1> ;
  wire [11:0]O3;
  wire [11:0]O4;
  wire comp1;
  wire lopt;
  wire lopt_1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [5:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(lopt),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
GND \gmux.gm[0].gm1.m1_CARRY4_GND 
       (.G(lopt));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1 
       (.I0(O4[0]),
        .I1(O3[0]),
        .I2(O4[1]),
        .I3(O3[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1 
       (.I0(O4[2]),
        .I1(O3[2]),
        .I2(O4[3]),
        .I3(O3[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1 
       (.I0(O4[4]),
        .I1(O3[4]),
        .I2(O4[5]),
        .I3(O3[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1 
       (.I0(O4[6]),
        .I1(O3[6]),
        .I2(O4[7]),
        .I3(O3[7]),
        .O(v1_reg[3]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp1,\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(lopt_1),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],\<const0> ,\<const0> }),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
GND \gmux.gm[4].gms.ms_CARRY4_GND 
       (.G(lopt_1));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1 
       (.I0(O4[8]),
        .I1(O3[8]),
        .I2(O4[9]),
        .I3(O3[9]),
        .O(v1_reg[4]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[5].gms.ms_i_1 
       (.I0(O4[10]),
        .I1(O3[10]),
        .I2(O4[11]),
        .I3(O3[11]),
        .O(v1_reg[5]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module chan_link_axis_data_fifocompare_0
   (comp2,
    out,
    O3);
  output comp2;
  input [11:0]out;
  input [11:0]O3;

  wire \<const0> ;
  wire \<const1> ;
  wire [11:0]O3;
  wire comp2;
  wire lopt;
  wire lopt_1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [11:0]out;
  wire [5:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(lopt),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
GND \gmux.gm[0].gm1.m1_CARRY4_GND 
       (.G(lopt));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1 
       (.I0(out[0]),
        .I1(O3[0]),
        .I2(out[1]),
        .I3(O3[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1 
       (.I0(out[2]),
        .I1(O3[2]),
        .I2(out[3]),
        .I3(O3[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1 
       (.I0(out[4]),
        .I1(O3[4]),
        .I2(out[5]),
        .I3(O3[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1 
       (.I0(out[6]),
        .I1(O3[6]),
        .I2(out[7]),
        .I3(O3[7]),
        .O(v1_reg[3]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp2,\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(lopt_1),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],\<const0> ,\<const0> }),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
GND \gmux.gm[4].gms.ms_CARRY4_GND 
       (.G(lopt_1));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1 
       (.I0(out[8]),
        .I1(O3[8]),
        .I2(out[9]),
        .I3(O3[9]),
        .O(v1_reg[4]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[5].gms.ms_i_1 
       (.I0(out[10]),
        .I1(O3[10]),
        .I2(out[11]),
        .I3(O3[11]),
        .O(v1_reg[5]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module chan_link_axis_data_fifocompare_4
   (comp0,
    I2,
    O1);
  output comp0;
  input [11:0]I2;
  input [11:0]O1;

  wire \<const0> ;
  wire \<const1> ;
  wire [11:0]I2;
  wire [11:0]O1;
  wire comp0;
  wire lopt;
  wire lopt_1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [5:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(lopt),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
GND \gmux.gm[0].gm1.m1_CARRY4_GND 
       (.G(lopt));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1 
       (.I0(I2[0]),
        .I1(O1[0]),
        .I2(I2[1]),
        .I3(O1[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1 
       (.I0(I2[2]),
        .I1(O1[2]),
        .I2(I2[3]),
        .I3(O1[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1 
       (.I0(I2[4]),
        .I1(O1[4]),
        .I2(I2[5]),
        .I3(O1[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1 
       (.I0(I2[6]),
        .I1(O1[6]),
        .I2(I2[7]),
        .I3(O1[7]),
        .O(v1_reg[3]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp0,\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(lopt_1),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],\<const0> ,\<const0> }),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
GND \gmux.gm[4].gms.ms_CARRY4_GND 
       (.G(lopt_1));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1 
       (.I0(I2[8]),
        .I1(O1[8]),
        .I2(I2[9]),
        .I3(O1[9]),
        .O(v1_reg[4]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[5].gms.ms_i_1 
       (.I0(I2[10]),
        .I1(O1[10]),
        .I2(I2[11]),
        .I3(O1[11]),
        .O(v1_reg[5]));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module chan_link_axis_data_fifocompare_5
   (comp1,
    I2,
    out);
  output comp1;
  input [11:0]I2;
  input [11:0]out;

  wire \<const0> ;
  wire \<const1> ;
  wire [11:0]I2;
  wire comp1;
  wire lopt;
  wire lopt_1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [11:0]out;
  wire [5:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:2]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[0].gm1.m1_CARRY4 
       (.CI(lopt),
        .CO({\n_0_gmux.gm[3].gms.ms ,\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED [2:0]}),
        .CYINIT(\<const1> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED [3:0]),
        .S(v1_reg[3:0]));
GND \gmux.gm[0].gm1.m1_CARRY4_GND 
       (.G(lopt));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1 
       (.I0(I2[0]),
        .I1(out[0]),
        .I2(I2[1]),
        .I3(out[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1 
       (.I0(I2[2]),
        .I1(out[2]),
        .I2(I2[3]),
        .I3(out[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1 
       (.I0(I2[4]),
        .I1(out[4]),
        .I2(I2[5]),
        .I3(out[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1 
       (.I0(I2[6]),
        .I1(out[6]),
        .I2(I2[7]),
        .I3(out[7]),
        .O(v1_reg[3]));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:2],comp1,\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [0]}),
        .CYINIT(lopt_1),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:2],\<const0> ,\<const0> }),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:2],v1_reg[5:4]}));
GND \gmux.gm[4].gms.ms_CARRY4_GND 
       (.G(lopt_1));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[4].gms.ms_i_1 
       (.I0(I2[8]),
        .I1(out[8]),
        .I2(I2[9]),
        .I3(out[9]),
        .O(v1_reg[4]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[5].gms.ms_i_1 
       (.I0(I2[10]),
        .I1(out[10]),
        .I2(I2[11]),
        .I3(out[11]),
        .O(v1_reg[5]));
endmodule

module chan_link_axis_data_fifofifo_generator_ramfifo
   (s_axis_tready,
    m_axis_tvalid,
    O1,
    axis_rd_data_count,
    axis_wr_data_count,
    s_axis_aclk,
    m_axis_aclk,
    I1,
    m_axis_tready,
    s_axis_tvalid,
    DINA);
  output s_axis_tready;
  output m_axis_tvalid;
  output [36:0]O1;
  output [12:0]axis_rd_data_count;
  output [12:0]axis_wr_data_count;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;
  input m_axis_tready;
  input s_axis_tvalid;
  input [36:0]DINA;

  wire [36:0]DINA;
  wire I1;
  wire [36:0]O1;
  wire RD_RST;
  wire RST;
  wire WR_RST;
  wire [12:0]axis_rd_data_count;
  wire [12:0]axis_wr_data_count;
  wire [11:1]diff_wr_rd;
  wire m_axis_aclk;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_1_gntv_or_sync_fifo.gl0.rd ;
  wire \n_1_gntv_or_sync_fifo.gl0.wr ;
  wire \n_23_gntv_or_sync_fifo.gcx.clkx ;
  wire \n_2_gntv_or_sync_fifo.gl0.rd ;
  wire n_2_rstblk;
  wire [11:0]p_0_out;
  wire [11:0]p_19_out;
  wire [11:0]p_1_out;
  wire [11:0]p_8_out;
  wire [0:0]rd_rst_i;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_axis_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;

chan_link_axis_data_fifoclk_x_pntrs \gntv_or_sync_fifo.gcx.clkx 
       (.I1(p_19_out),
        .I2(p_8_out),
        .I3(RD_RST),
        .I4(RST),
        .O1(p_1_out),
        .O2(diff_wr_rd),
        .O3(p_0_out),
        .S(\n_23_gntv_or_sync_fifo.gcx.clkx ),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
chan_link_axis_data_fiford_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(\n_2_gntv_or_sync_fifo.gl0.rd ),
        .ENB(\n_1_gntv_or_sync_fifo.gl0.rd ),
        .I1(diff_wr_rd),
        .I2(p_1_out),
        .O1(p_19_out),
        .Q({n_2_rstblk,rd_rst_i}),
        .axis_rd_data_count(axis_rd_data_count),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid));
chan_link_axis_data_fifowr_logic \gntv_or_sync_fifo.gl0.wr 
       (.E(\n_1_gntv_or_sync_fifo.gl0.wr ),
        .I1(WR_RST),
        .O3(p_0_out),
        .Q(p_8_out),
        .S(\n_23_gntv_or_sync_fifo.gcx.clkx ),
        .axis_wr_data_count(axis_wr_data_count),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
chan_link_axis_data_fifomemory \gntv_or_sync_fifo.mem 
       (.DINA(DINA),
        .E(\n_2_gntv_or_sync_fifo.gl0.rd ),
        .ENB(\n_1_gntv_or_sync_fifo.gl0.rd ),
        .I1(\n_1_gntv_or_sync_fifo.gl0.wr ),
        .O1(p_19_out),
        .O2(O1),
        .Q(p_8_out),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
chan_link_axis_data_fiforeset_blk_ramfifo rstblk
       (.I1(I1),
        .O1({WR_RST,RST}),
        .Q({n_2_rstblk,RD_RST,rd_rst_i}),
        .m_axis_aclk(m_axis_aclk),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_axis_aclk(s_axis_aclk));
endmodule

module chan_link_axis_data_fifofifo_generator_top
   (s_axis_tready,
    m_axis_tvalid,
    O1,
    axis_rd_data_count,
    axis_wr_data_count,
    s_axis_aclk,
    m_axis_aclk,
    I1,
    m_axis_tready,
    s_axis_tvalid,
    DINA);
  output s_axis_tready;
  output m_axis_tvalid;
  output [36:0]O1;
  output [12:0]axis_rd_data_count;
  output [12:0]axis_wr_data_count;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;
  input m_axis_tready;
  input s_axis_tvalid;
  input [36:0]DINA;

  wire [36:0]DINA;
  wire I1;
  wire [36:0]O1;
  wire [12:0]axis_rd_data_count;
  wire [12:0]axis_wr_data_count;
  wire m_axis_aclk;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;

chan_link_axis_data_fifofifo_generator_ramfifo \grf.rf 
       (.DINA(DINA),
        .I1(I1),
        .O1(O1),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module chan_link_axis_data_fifofifo_generator_v11_0
   (s_axis_tready,
    m_axis_tvalid,
    O1,
    axis_rd_data_count,
    axis_wr_data_count,
    s_axis_aclk,
    m_axis_aclk,
    I1,
    m_axis_tready,
    s_axis_tvalid,
    DINA);
  output s_axis_tready;
  output m_axis_tvalid;
  output [36:0]O1;
  output [12:0]axis_rd_data_count;
  output [12:0]axis_wr_data_count;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;
  input m_axis_tready;
  input s_axis_tvalid;
  input [36:0]DINA;

  wire [36:0]DINA;
  wire I1;
  wire [36:0]O1;
  wire [12:0]axis_rd_data_count;
  wire [12:0]axis_wr_data_count;
  wire m_axis_aclk;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;

chan_link_axis_data_fifofifo_generator_v11_0_synth inst_fifo_gen
       (.DINA(DINA),
        .I1(I1),
        .O1(O1),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module chan_link_axis_data_fifofifo_generator_v11_0_synth
   (s_axis_tready,
    m_axis_tvalid,
    O1,
    axis_rd_data_count,
    axis_wr_data_count,
    s_axis_aclk,
    m_axis_aclk,
    I1,
    m_axis_tready,
    s_axis_tvalid,
    DINA);
  output s_axis_tready;
  output m_axis_tvalid;
  output [36:0]O1;
  output [12:0]axis_rd_data_count;
  output [12:0]axis_wr_data_count;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;
  input m_axis_tready;
  input s_axis_tvalid;
  input [36:0]DINA;

  wire [36:0]DINA;
  wire I1;
  wire [36:0]O1;
  wire [12:0]axis_rd_data_count;
  wire [12:0]axis_wr_data_count;
  wire m_axis_aclk;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;

chan_link_axis_data_fifofifo_generator_top \gaxis_fifo.gaxisf.axisf 
       (.DINA(DINA),
        .I1(I1),
        .O1(O1),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module chan_link_axis_data_fifomemory
   (O2,
    s_axis_aclk,
    m_axis_aclk,
    I1,
    ENB,
    Q,
    O1,
    DINA,
    E);
  output [36:0]O2;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;
  input ENB;
  input [11:0]Q;
  input [11:0]O1;
  input [36:0]DINA;
  input [0:0]E;

  wire \<const0> ;
  wire [36:0]DINA;
  wire [0:0]E;
  wire ENB;
  wire I1;
  wire [11:0]O1;
  wire [36:0]O2;
  wire [11:0]Q;
  wire [36:0]doutb;
  wire m_axis_aclk;
  wire s_axis_aclk;

GND GND
       (.G(\<const0> ));
chan_link_axis_data_fifoblk_mem_gen_v8_1__parameterized0 \gbm.gbmg.gbmga.ngecc.bmg 
       (.DINA(DINA),
        .DOUTB(doutb),
        .ENB(ENB),
        .I1(I1),
        .O1(O1),
        .Q(Q),
        .m_axis_aclk(m_axis_aclk),
        .s_axis_aclk(s_axis_aclk));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[0] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[0]),
        .Q(O2[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[10] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[10]),
        .Q(O2[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[11] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[11]),
        .Q(O2[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[12] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[12]),
        .Q(O2[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[13] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[13]),
        .Q(O2[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[14] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[14]),
        .Q(O2[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[15] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[15]),
        .Q(O2[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[16] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[16]),
        .Q(O2[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[17] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[17]),
        .Q(O2[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[18] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[18]),
        .Q(O2[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[19] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[19]),
        .Q(O2[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[1] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[1]),
        .Q(O2[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[20] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[20]),
        .Q(O2[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[21] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[21]),
        .Q(O2[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[22] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[22]),
        .Q(O2[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[23] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[23]),
        .Q(O2[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[24] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[24]),
        .Q(O2[24]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[25] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[25]),
        .Q(O2[25]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[26] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[26]),
        .Q(O2[26]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[27] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[27]),
        .Q(O2[27]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[28] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[28]),
        .Q(O2[28]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[29] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[29]),
        .Q(O2[29]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[2] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[2]),
        .Q(O2[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[30] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[30]),
        .Q(O2[30]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[31] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[31]),
        .Q(O2[31]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[32] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[32]),
        .Q(O2[32]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[33] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[33]),
        .Q(O2[33]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[34] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[34]),
        .Q(O2[34]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[35] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[35]),
        .Q(O2[35]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[36] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[36]),
        .Q(O2[36]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[3] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[3]),
        .Q(O2[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[4] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[4]),
        .Q(O2[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[5] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[5]),
        .Q(O2[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[6] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[6]),
        .Q(O2[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[7] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[7]),
        .Q(O2[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[8] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[8]),
        .Q(O2[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[9] 
       (.C(m_axis_aclk),
        .CE(E),
        .D(doutb[9]),
        .Q(O2[9]),
        .R(\<const0> ));
endmodule

module chan_link_axis_data_fiford_bin_cntr
   (out,
    S,
    O1,
    I2,
    sel,
    m_axis_aclk,
    Q);
  output [11:0]out;
  output [0:0]S;
  output [11:0]O1;
  input [0:0]I2;
  input sel;
  input m_axis_aclk;
  input [0:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]I2;
  wire [11:0]O1;
  wire [0:0]Q;
  wire [0:0]S;
  wire m_axis_aclk;
  wire \n_0_gc0.count[0]_i_2 ;
  wire \n_0_gc0.count[0]_i_3 ;
  wire \n_0_gc0.count[0]_i_4 ;
  wire \n_0_gc0.count[0]_i_5 ;
  wire \n_0_gc0.count[4]_i_2 ;
  wire \n_0_gc0.count[4]_i_3 ;
  wire \n_0_gc0.count[4]_i_4 ;
  wire \n_0_gc0.count[4]_i_5 ;
  wire \n_0_gc0.count[8]_i_2 ;
  wire \n_0_gc0.count[8]_i_3 ;
  wire \n_0_gc0.count[8]_i_4 ;
  wire \n_0_gc0.count[8]_i_5 ;
  wire \n_0_gc0.count_reg[0]_i_1 ;
  wire \n_0_gc0.count_reg[4]_i_1 ;
  wire \n_1_gc0.count_reg[0]_i_1 ;
  wire \n_1_gc0.count_reg[4]_i_1 ;
  wire \n_1_gc0.count_reg[8]_i_1 ;
  wire \n_2_gc0.count_reg[0]_i_1 ;
  wire \n_2_gc0.count_reg[4]_i_1 ;
  wire \n_2_gc0.count_reg[8]_i_1 ;
  wire \n_3_gc0.count_reg[0]_i_1 ;
  wire \n_3_gc0.count_reg[4]_i_1 ;
  wire \n_3_gc0.count_reg[8]_i_1 ;
  wire \n_4_gc0.count_reg[0]_i_1 ;
  wire \n_4_gc0.count_reg[4]_i_1 ;
  wire \n_4_gc0.count_reg[8]_i_1 ;
  wire \n_5_gc0.count_reg[0]_i_1 ;
  wire \n_5_gc0.count_reg[4]_i_1 ;
  wire \n_5_gc0.count_reg[8]_i_1 ;
  wire \n_6_gc0.count_reg[0]_i_1 ;
  wire \n_6_gc0.count_reg[4]_i_1 ;
  wire \n_6_gc0.count_reg[8]_i_1 ;
  wire \n_7_gc0.count_reg[0]_i_1 ;
  wire \n_7_gc0.count_reg[4]_i_1 ;
  wire \n_7_gc0.count_reg[8]_i_1 ;
  wire [11:0]out;
  wire sel;
  wire [3:3]\NLW_gc0.count_reg[8]_i_1_CO_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     \gc0.count[0]_i_2 
       (.I0(out[3]),
        .O(\n_0_gc0.count[0]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \gc0.count[0]_i_3 
       (.I0(out[2]),
        .O(\n_0_gc0.count[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gc0.count[0]_i_4 
       (.I0(out[1]),
        .O(\n_0_gc0.count[0]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_5 
       (.I0(out[0]),
        .O(\n_0_gc0.count[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gc0.count[4]_i_2 
       (.I0(out[7]),
        .O(\n_0_gc0.count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \gc0.count[4]_i_3 
       (.I0(out[6]),
        .O(\n_0_gc0.count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gc0.count[4]_i_4 
       (.I0(out[5]),
        .O(\n_0_gc0.count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gc0.count[4]_i_5 
       (.I0(out[4]),
        .O(\n_0_gc0.count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gc0.count[8]_i_2 
       (.I0(out[11]),
        .O(\n_0_gc0.count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \gc0.count[8]_i_3 
       (.I0(out[10]),
        .O(\n_0_gc0.count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gc0.count[8]_i_4 
       (.I0(out[9]),
        .O(\n_0_gc0.count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gc0.count[8]_i_5 
       (.I0(out[8]),
        .O(\n_0_gc0.count[8]_i_5 ));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[0]),
        .Q(O1[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[10] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[10]),
        .Q(O1[10]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[11] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[11]),
        .Q(O1[11]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[1]),
        .Q(O1[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[2]),
        .Q(O1[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[3]),
        .Q(O1[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[4] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[4]),
        .Q(O1[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[5] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[5]),
        .Q(O1[5]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[6] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[6]),
        .Q(O1[6]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[7] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[7]),
        .Q(O1[7]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[8] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[8]),
        .Q(O1[8]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[9] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(out[9]),
        .Q(O1[9]));
(* counter = "2" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(m_axis_aclk),
        .CE(sel),
        .D(\n_7_gc0.count_reg[0]_i_1 ),
        .PRE(Q),
        .Q(out[0]));
CARRY4 \gc0.count_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\n_0_gc0.count_reg[0]_i_1 ,\n_1_gc0.count_reg[0]_i_1 ,\n_2_gc0.count_reg[0]_i_1 ,\n_3_gc0.count_reg[0]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_gc0.count_reg[0]_i_1 ,\n_5_gc0.count_reg[0]_i_1 ,\n_6_gc0.count_reg[0]_i_1 ,\n_7_gc0.count_reg[0]_i_1 }),
        .S({\n_0_gc0.count[0]_i_2 ,\n_0_gc0.count[0]_i_3 ,\n_0_gc0.count[0]_i_4 ,\n_0_gc0.count[0]_i_5 }));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[10] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(\n_5_gc0.count_reg[8]_i_1 ),
        .Q(out[10]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[11] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(\n_4_gc0.count_reg[8]_i_1 ),
        .Q(out[11]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(\n_6_gc0.count_reg[0]_i_1 ),
        .Q(out[1]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(\n_5_gc0.count_reg[0]_i_1 ),
        .Q(out[2]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(\n_4_gc0.count_reg[0]_i_1 ),
        .Q(out[3]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[4] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(\n_7_gc0.count_reg[4]_i_1 ),
        .Q(out[4]));
CARRY4 \gc0.count_reg[4]_i_1 
       (.CI(\n_0_gc0.count_reg[0]_i_1 ),
        .CO({\n_0_gc0.count_reg[4]_i_1 ,\n_1_gc0.count_reg[4]_i_1 ,\n_2_gc0.count_reg[4]_i_1 ,\n_3_gc0.count_reg[4]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_gc0.count_reg[4]_i_1 ,\n_5_gc0.count_reg[4]_i_1 ,\n_6_gc0.count_reg[4]_i_1 ,\n_7_gc0.count_reg[4]_i_1 }),
        .S({\n_0_gc0.count[4]_i_2 ,\n_0_gc0.count[4]_i_3 ,\n_0_gc0.count[4]_i_4 ,\n_0_gc0.count[4]_i_5 }));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[5] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(\n_6_gc0.count_reg[4]_i_1 ),
        .Q(out[5]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[6] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(\n_5_gc0.count_reg[4]_i_1 ),
        .Q(out[6]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[7] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(\n_4_gc0.count_reg[4]_i_1 ),
        .Q(out[7]));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[8] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(\n_7_gc0.count_reg[8]_i_1 ),
        .Q(out[8]));
CARRY4 \gc0.count_reg[8]_i_1 
       (.CI(\n_0_gc0.count_reg[4]_i_1 ),
        .CO({\NLW_gc0.count_reg[8]_i_1_CO_UNCONNECTED [3],\n_1_gc0.count_reg[8]_i_1 ,\n_2_gc0.count_reg[8]_i_1 ,\n_3_gc0.count_reg[8]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_gc0.count_reg[8]_i_1 ,\n_5_gc0.count_reg[8]_i_1 ,\n_6_gc0.count_reg[8]_i_1 ,\n_7_gc0.count_reg[8]_i_1 }),
        .S({\n_0_gc0.count[8]_i_2 ,\n_0_gc0.count[8]_i_3 ,\n_0_gc0.count[8]_i_4 ,\n_0_gc0.count[8]_i_5 }));
(* counter = "2" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[9] 
       (.C(m_axis_aclk),
        .CE(sel),
        .CLR(Q),
        .D(\n_6_gc0.count_reg[8]_i_1 ),
        .Q(out[9]));
LUT2 #(
    .INIT(4'h6)) 
     \gvalid_low.rd_dc_i[3]_i_7 
       (.I0(O1[0]),
        .I1(I2),
        .O(S));
endmodule

module chan_link_axis_data_fiford_dc_fwft_ext_as
   (axis_rd_data_count,
    I1,
    m_axis_aclk,
    Q,
    S,
    user_valid,
    I2);
  output [12:0]axis_rd_data_count;
  input [10:0]I1;
  input m_axis_aclk;
  input [0:0]Q;
  input [0:0]S;
  input user_valid;
  input [0:0]I2;

  wire \<const0> ;
  wire \<const1> ;
  wire [10:0]I1;
  wire [0:0]I2;
  wire [0:0]Q;
  wire [0:0]S;
  wire [12:0]axis_rd_data_count;
  wire m_axis_aclk;
  wire \n_0_gvalid_low.rd_dc_i[0]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[10]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[11]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[12]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[12]_i_3 ;
  wire \n_0_gvalid_low.rd_dc_i[12]_i_4 ;
  wire \n_0_gvalid_low.rd_dc_i[12]_i_5 ;
  wire \n_0_gvalid_low.rd_dc_i[12]_i_6 ;
  wire \n_0_gvalid_low.rd_dc_i[1]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[2]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[3]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[3]_i_4 ;
  wire \n_0_gvalid_low.rd_dc_i[3]_i_5 ;
  wire \n_0_gvalid_low.rd_dc_i[3]_i_6 ;
  wire \n_0_gvalid_low.rd_dc_i[4]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[5]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[6]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[7]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[7]_i_3 ;
  wire \n_0_gvalid_low.rd_dc_i[7]_i_4 ;
  wire \n_0_gvalid_low.rd_dc_i[7]_i_5 ;
  wire \n_0_gvalid_low.rd_dc_i[7]_i_6 ;
  wire \n_0_gvalid_low.rd_dc_i[8]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i[9]_i_1 ;
  wire \n_0_gvalid_low.rd_dc_i_reg[3]_i_2 ;
  wire \n_0_gvalid_low.rd_dc_i_reg[7]_i_2 ;
  wire \n_1_gvalid_low.rd_dc_i_reg[12]_i_2 ;
  wire \n_1_gvalid_low.rd_dc_i_reg[3]_i_2 ;
  wire \n_1_gvalid_low.rd_dc_i_reg[7]_i_2 ;
  wire \n_2_gvalid_low.rd_dc_i_reg[12]_i_2 ;
  wire \n_2_gvalid_low.rd_dc_i_reg[3]_i_2 ;
  wire \n_2_gvalid_low.rd_dc_i_reg[7]_i_2 ;
  wire \n_3_gvalid_low.rd_dc_i_reg[12]_i_2 ;
  wire \n_3_gvalid_low.rd_dc_i_reg[3]_i_2 ;
  wire \n_3_gvalid_low.rd_dc_i_reg[7]_i_2 ;
  wire [12:0]plusOp;
  wire user_valid;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'h8A)) 
     \gvalid_low.rd_dc_i[0]_i_1 
       (.I0(user_valid),
        .I1(plusOp[0]),
        .I2(I2),
        .O(\n_0_gvalid_low.rd_dc_i[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[10]_i_1 
       (.I0(I2),
        .I1(plusOp[10]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[11]_i_1 
       (.I0(I2),
        .I1(plusOp[11]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[11]_i_1 ));
LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[12]_i_1 
       (.I0(I2),
        .I1(plusOp[12]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[12]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \gvalid_low.rd_dc_i[12]_i_3 
       (.I0(I1[10]),
        .O(\n_0_gvalid_low.rd_dc_i[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gvalid_low.rd_dc_i[12]_i_4 
       (.I0(I1[9]),
        .O(\n_0_gvalid_low.rd_dc_i[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gvalid_low.rd_dc_i[12]_i_5 
       (.I0(I1[8]),
        .O(\n_0_gvalid_low.rd_dc_i[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gvalid_low.rd_dc_i[12]_i_6 
       (.I0(I1[7]),
        .O(\n_0_gvalid_low.rd_dc_i[12]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[1]_i_1 
       (.I0(I2),
        .I1(plusOp[1]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[2]_i_1 
       (.I0(I2),
        .I1(plusOp[2]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[3]_i_1 
       (.I0(I2),
        .I1(plusOp[3]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[3]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \gvalid_low.rd_dc_i[3]_i_4 
       (.I0(I1[2]),
        .O(\n_0_gvalid_low.rd_dc_i[3]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gvalid_low.rd_dc_i[3]_i_5 
       (.I0(I1[1]),
        .O(\n_0_gvalid_low.rd_dc_i[3]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \gvalid_low.rd_dc_i[3]_i_6 
       (.I0(I1[0]),
        .O(\n_0_gvalid_low.rd_dc_i[3]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[4]_i_1 
       (.I0(I2),
        .I1(plusOp[4]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[5]_i_1 
       (.I0(I2),
        .I1(plusOp[5]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[6]_i_1 
       (.I0(I2),
        .I1(plusOp[6]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[7]_i_1 
       (.I0(I2),
        .I1(plusOp[7]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[7]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \gvalid_low.rd_dc_i[7]_i_3 
       (.I0(I1[6]),
        .O(\n_0_gvalid_low.rd_dc_i[7]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gvalid_low.rd_dc_i[7]_i_4 
       (.I0(I1[5]),
        .O(\n_0_gvalid_low.rd_dc_i[7]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gvalid_low.rd_dc_i[7]_i_5 
       (.I0(I1[4]),
        .O(\n_0_gvalid_low.rd_dc_i[7]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gvalid_low.rd_dc_i[7]_i_6 
       (.I0(I1[3]),
        .O(\n_0_gvalid_low.rd_dc_i[7]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[8]_i_1 
       (.I0(I2),
        .I1(plusOp[8]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \gvalid_low.rd_dc_i[9]_i_1 
       (.I0(I2),
        .I1(plusOp[9]),
        .I2(user_valid),
        .O(\n_0_gvalid_low.rd_dc_i[9]_i_1 ));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[0] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[0]_i_1 ),
        .Q(axis_rd_data_count[0]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[10] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[10]_i_1 ),
        .Q(axis_rd_data_count[10]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[11] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[11]_i_1 ),
        .Q(axis_rd_data_count[11]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[12] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[12]_i_1 ),
        .Q(axis_rd_data_count[12]));
CARRY4 \gvalid_low.rd_dc_i_reg[12]_i_2 
       (.CI(\n_0_gvalid_low.rd_dc_i_reg[7]_i_2 ),
        .CO({plusOp[12],\n_1_gvalid_low.rd_dc_i_reg[12]_i_2 ,\n_2_gvalid_low.rd_dc_i_reg[12]_i_2 ,\n_3_gvalid_low.rd_dc_i_reg[12]_i_2 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(plusOp[11:8]),
        .S({\n_0_gvalid_low.rd_dc_i[12]_i_3 ,\n_0_gvalid_low.rd_dc_i[12]_i_4 ,\n_0_gvalid_low.rd_dc_i[12]_i_5 ,\n_0_gvalid_low.rd_dc_i[12]_i_6 }));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[1] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[1]_i_1 ),
        .Q(axis_rd_data_count[1]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[2] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[2]_i_1 ),
        .Q(axis_rd_data_count[2]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[3] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[3]_i_1 ),
        .Q(axis_rd_data_count[3]));
CARRY4 \gvalid_low.rd_dc_i_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\n_0_gvalid_low.rd_dc_i_reg[3]_i_2 ,\n_1_gvalid_low.rd_dc_i_reg[3]_i_2 ,\n_2_gvalid_low.rd_dc_i_reg[3]_i_2 ,\n_3_gvalid_low.rd_dc_i_reg[3]_i_2 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,I1[0],\<const0> }),
        .O(plusOp[3:0]),
        .S({\n_0_gvalid_low.rd_dc_i[3]_i_4 ,\n_0_gvalid_low.rd_dc_i[3]_i_5 ,\n_0_gvalid_low.rd_dc_i[3]_i_6 ,S}));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[4] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[4]_i_1 ),
        .Q(axis_rd_data_count[4]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[5] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[5]_i_1 ),
        .Q(axis_rd_data_count[5]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[6] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[6]_i_1 ),
        .Q(axis_rd_data_count[6]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[7] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[7]_i_1 ),
        .Q(axis_rd_data_count[7]));
CARRY4 \gvalid_low.rd_dc_i_reg[7]_i_2 
       (.CI(\n_0_gvalid_low.rd_dc_i_reg[3]_i_2 ),
        .CO({\n_0_gvalid_low.rd_dc_i_reg[7]_i_2 ,\n_1_gvalid_low.rd_dc_i_reg[7]_i_2 ,\n_2_gvalid_low.rd_dc_i_reg[7]_i_2 ,\n_3_gvalid_low.rd_dc_i_reg[7]_i_2 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O(plusOp[7:4]),
        .S({\n_0_gvalid_low.rd_dc_i[7]_i_3 ,\n_0_gvalid_low.rd_dc_i[7]_i_4 ,\n_0_gvalid_low.rd_dc_i[7]_i_5 ,\n_0_gvalid_low.rd_dc_i[7]_i_6 }));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[8] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[8]_i_1 ),
        .Q(axis_rd_data_count[8]));
FDCE #(
    .INIT(1'b0)) 
     \gvalid_low.rd_dc_i_reg[9] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q),
        .D(\n_0_gvalid_low.rd_dc_i[9]_i_1 ),
        .Q(axis_rd_data_count[9]));
endmodule

module chan_link_axis_data_fiford_fwft
   (user_valid,
    m_axis_tvalid,
    ENB,
    O1,
    E,
    O2,
    p_13_out,
    m_axis_aclk,
    Q,
    m_axis_tready,
    p_17_out,
    comp0,
    comp1);
  output user_valid;
  output m_axis_tvalid;
  output ENB;
  output [0:0]O1;
  output [0:0]E;
  output O2;
  output p_13_out;
  input m_axis_aclk;
  input [1:0]Q;
  input m_axis_tready;
  input p_17_out;
  input comp0;
  input comp1;

  wire \<const1> ;
  wire [0:0]E;
  wire ENB;
  wire [0:0]O1;
  wire O2;
  wire [1:0]Q;
  wire comp0;
  wire comp1;
  wire [0:0]curr_fwft_state;
  wire empty_fwft_fb;
  wire empty_fwft_i;
  wire empty_fwft_i0;
  wire m_axis_aclk;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [1:0]next_fwft_state;
  wire p_13_out;
  wire p_17_out;
  wire user_valid;

LUT4 #(
    .INIT(16'h00F7)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_2 
       (.I0(O1),
        .I1(curr_fwft_state),
        .I2(m_axis_tready),
        .I3(p_17_out),
        .O(ENB));
VCC VCC
       (.P(\<const1> ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'hBA22)) 
     empty_fwft_fb_i_1
       (.I0(empty_fwft_fb),
        .I1(O1),
        .I2(m_axis_tready),
        .I3(curr_fwft_state),
        .O(empty_fwft_i0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_fb_reg
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_i_reg
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_i));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h00BF)) 
     \gc0.count_d1[11]_i_1 
       (.I0(m_axis_tready),
        .I1(curr_fwft_state),
        .I2(O1),
        .I3(p_17_out),
        .O(p_13_out));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h00B0)) 
     \goreg_bm.dout_i[36]_i_1 
       (.I0(m_axis_tready),
        .I1(curr_fwft_state),
        .I2(O1),
        .I3(Q[0]),
        .O(E));
LUT3 #(
    .INIT(8'hBA)) 
     \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(O1),
        .I1(m_axis_tready),
        .I2(curr_fwft_state),
        .O(next_fwft_state[0]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h40FF)) 
     \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(m_axis_tready),
        .I1(curr_fwft_state),
        .I2(O1),
        .I3(p_17_out),
        .O(next_fwft_state[1]));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[0] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[1] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q[1]),
        .D(next_fwft_state[1]),
        .Q(O1));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.user_valid_reg 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(user_valid));
LUT1 #(
    .INIT(2'h1)) 
     m_axis_tvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axis_tvalid));
LUT6 #(
    .INIT(64'hAAAAEFFFAAAAAAAA)) 
     ram_empty_fb_i_i_1
       (.I0(comp0),
        .I1(m_axis_tready),
        .I2(curr_fwft_state),
        .I3(O1),
        .I4(p_17_out),
        .I5(comp1),
        .O(O2));
endmodule

module chan_link_axis_data_fiford_logic
   (m_axis_tvalid,
    ENB,
    E,
    O1,
    axis_rd_data_count,
    m_axis_aclk,
    Q,
    m_axis_tready,
    I1,
    I2);
  output m_axis_tvalid;
  output ENB;
  output [0:0]E;
  output [11:0]O1;
  output [12:0]axis_rd_data_count;
  input m_axis_aclk;
  input [1:0]Q;
  input m_axis_tready;
  input [10:0]I1;
  input [11:0]I2;

  wire [0:0]E;
  wire ENB;
  wire [10:0]I1;
  wire [11:0]I2;
  wire [11:0]O1;
  wire [1:0]Q;
  wire [12:0]axis_rd_data_count;
  wire comp0;
  wire comp1;
  wire [0:0]diff_wr_rd;
  wire m_axis_aclk;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_5_gr1.rfwft ;
  wire p_13_out;
  wire p_17_out;
  wire ram_valid_fwft;
  wire [11:0]rd_pntr_plus1;
  wire user_valid;

chan_link_axis_data_fiford_dc_fwft_ext_as \gr1.grdc2.rdc 
       (.I1(I1),
        .I2(ram_valid_fwft),
        .Q(Q[1]),
        .S(diff_wr_rd),
        .axis_rd_data_count(axis_rd_data_count),
        .m_axis_aclk(m_axis_aclk),
        .user_valid(user_valid));
chan_link_axis_data_fiford_fwft \gr1.rfwft 
       (.E(E),
        .ENB(ENB),
        .O1(ram_valid_fwft),
        .O2(\n_5_gr1.rfwft ),
        .Q(Q),
        .comp0(comp0),
        .comp1(comp1),
        .m_axis_aclk(m_axis_aclk),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .p_13_out(p_13_out),
        .p_17_out(p_17_out),
        .user_valid(user_valid));
chan_link_axis_data_fiford_status_flags_as \gras.rsts 
       (.I1(\n_5_gr1.rfwft ),
        .I2(I2),
        .O1(O1),
        .Q(Q[1]),
        .comp0(comp0),
        .comp1(comp1),
        .m_axis_aclk(m_axis_aclk),
        .out(rd_pntr_plus1),
        .p_17_out(p_17_out));
chan_link_axis_data_fiford_bin_cntr rpntr
       (.I2(I2[0]),
        .O1(O1),
        .Q(Q[1]),
        .S(diff_wr_rd),
        .m_axis_aclk(m_axis_aclk),
        .out(rd_pntr_plus1),
        .sel(p_13_out));
endmodule

module chan_link_axis_data_fiford_status_flags_as
   (comp0,
    comp1,
    p_17_out,
    I1,
    m_axis_aclk,
    Q,
    I2,
    O1,
    out);
  output comp0;
  output comp1;
  output p_17_out;
  input I1;
  input m_axis_aclk;
  input [0:0]Q;
  input [11:0]I2;
  input [11:0]O1;
  input [11:0]out;

  wire \<const1> ;
  wire I1;
  wire [11:0]I2;
  wire [11:0]O1;
  wire [0:0]Q;
  wire comp0;
  wire comp1;
  wire m_axis_aclk;
  wire [11:0]out;
  wire p_17_out;

VCC VCC
       (.P(\<const1> ));
chan_link_axis_data_fifocompare_4 c0
       (.I2(I2),
        .O1(O1),
        .comp0(comp0));
chan_link_axis_data_fifocompare_5 c1
       (.I2(I2),
        .comp1(comp1),
        .out(out));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .D(I1),
        .PRE(Q),
        .Q(p_17_out));
endmodule

module chan_link_axis_data_fiforeset_blk_ramfifo
   (rst_full_gen_i,
    rst_d2,
    Q,
    O1,
    s_axis_aclk,
    m_axis_aclk,
    I1);
  output rst_full_gen_i;
  output rst_d2;
  output [2:0]Q;
  output [1:0]O1;
  input s_axis_aclk;
  input m_axis_aclk;
  input I1;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire [1:0]O1;
  wire [2:0]Q;
  wire inverted_reset;
  wire m_axis_aclk;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 ;
  wire \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ;
  wire rd_rst_asreg;
  wire rd_rst_asreg_d1;
  wire rd_rst_asreg_d2;
  wire rst_d1;
  wire rst_d2;
  wire rst_d3;
  wire rst_full_gen_i;
  wire s_axis_aclk;
  wire wr_rst_asreg;
  wire wr_rst_asreg_d1;
  wire wr_rst_asreg_d2;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h1)) 
     \grstd1.grst_full.grst_f.RST_FULL_GEN_i_1 
       (.I0(I1),
        .O(inverted_reset));
FDCE #(
    .INIT(1'b0)) 
     \grstd1.grst_full.grst_f.RST_FULL_GEN_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(inverted_reset),
        .D(rst_d3),
        .Q(rst_full_gen_i));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(inverted_reset),
        .Q(rst_d1));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(rst_d1),
        .PRE(inverted_reset),
        .Q(rst_d2));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(rst_d2),
        .PRE(inverted_reset),
        .Q(rst_d3));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .D(rd_rst_asreg_d1),
        .Q(rd_rst_asreg_d2),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d1),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 ));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .D(\n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1 ),
        .PRE(inverted_reset),
        .Q(rd_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 
       (.I0(rd_rst_asreg),
        .I1(rd_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[1] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[1]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(wr_rst_asreg_d1),
        .Q(wr_rst_asreg_d2),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d1),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 ));
(* ASYNC_REG *) 
   (* msgon = "false" *) 
   FDPE \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(\n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1 ),
        .PRE(inverted_reset),
        .Q(wr_rst_asreg));
LUT2 #(
    .INIT(4'h2)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 
       (.I0(wr_rst_asreg),
        .I1(wr_rst_asreg_d2),
        .O(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[0] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(O1[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(O1[1]));
endmodule

module chan_link_axis_data_fifosynchronizer_ff
   (Q,
    I1,
    m_axis_aclk,
    I3);
  output [11:0]Q;
  input [11:0]I1;
  input m_axis_aclk;
  input [0:0]I3;

  wire \<const1> ;
  wire [11:0]I1;
  wire [0:0]I3;
  wire [11:0]Q;
  wire m_axis_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[10] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[10]),
        .Q(Q[10]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[11] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[11]),
        .Q(Q[11]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[8]),
        .Q(Q[8]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(I1[9]),
        .Q(Q[9]));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module chan_link_axis_data_fifosynchronizer_ff_1
   (Q,
    I1,
    s_axis_aclk,
    I4);
  output [11:0]Q;
  input [11:0]I1;
  input s_axis_aclk;
  input [0:0]I4;

  wire \<const1> ;
  wire [11:0]I1;
  wire [0:0]I4;
  wire [11:0]Q;
  wire s_axis_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[0]),
        .Q(Q[0]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[10] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[10]),
        .Q(Q[10]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[11] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[11]),
        .Q(Q[11]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[1]),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[2]),
        .Q(Q[2]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[3]),
        .Q(Q[3]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[4]),
        .Q(Q[4]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[5]),
        .Q(Q[5]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[6]),
        .Q(Q[6]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[7]),
        .Q(Q[7]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[8]),
        .Q(Q[8]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(I1[9]),
        .Q(Q[9]));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module chan_link_axis_data_fifosynchronizer_ff_2
   (p_0_in,
    D,
    m_axis_aclk,
    I3);
  output [11:0]p_0_in;
  input [11:0]D;
  input m_axis_aclk;
  input [0:0]I3;

  wire \<const1> ;
  wire [11:0]D;
  wire [0:0]I3;
  wire m_axis_aclk;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[10] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire \n_0_Q_reg_reg[7] ;
  wire \n_0_Q_reg_reg[8] ;
  wire \n_0_Q_reg_reg[9] ;
  wire [11:0]p_0_in;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[10] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[10]),
        .Q(\n_0_Q_reg_reg[10] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[11] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[11]),
        .Q(p_0_in[11]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[7]),
        .Q(\n_0_Q_reg_reg[7] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[8]),
        .Q(\n_0_Q_reg_reg[8] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(m_axis_aclk),
        .CE(\<const1> ),
        .CLR(I3),
        .D(D[9]),
        .Q(\n_0_Q_reg_reg[9] ));
VCC VCC
       (.P(\<const1> ));
LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[0]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(p_0_in[3]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[10]_i_1 
       (.I0(\n_0_Q_reg_reg[10] ),
        .I1(p_0_in[11]),
        .O(p_0_in[10]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \wr_pntr_bin[1]_i_1 
       (.I0(\n_0_Q_reg_reg[1] ),
        .I1(\n_0_Q_reg_reg[2] ),
        .I2(\n_0_Q_reg_reg[3] ),
        .I3(\n_0_Q_reg_reg[5] ),
        .I4(p_0_in[6]),
        .I5(\n_0_Q_reg_reg[4] ),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \wr_pntr_bin[2]_i_1 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(p_0_in[6]),
        .I3(\n_0_Q_reg_reg[4] ),
        .I4(\n_0_Q_reg_reg[2] ),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[3]_i_1 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(p_0_in[6]),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(\n_0_Q_reg_reg[3] ),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[4]_i_1 
       (.I0(\n_0_Q_reg_reg[5] ),
        .I1(p_0_in[6]),
        .I2(\n_0_Q_reg_reg[4] ),
        .O(p_0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wr_pntr_bin[5]_i_1 
       (.I0(p_0_in[6]),
        .I1(\n_0_Q_reg_reg[5] ),
        .O(p_0_in[5]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \wr_pntr_bin[6]_i_1 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(p_0_in[11]),
        .I2(\n_0_Q_reg_reg[9] ),
        .I3(\n_0_Q_reg_reg[10] ),
        .I4(\n_0_Q_reg_reg[8] ),
        .I5(\n_0_Q_reg_reg[6] ),
        .O(p_0_in[6]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \wr_pntr_bin[7]_i_1 
       (.I0(\n_0_Q_reg_reg[8] ),
        .I1(\n_0_Q_reg_reg[10] ),
        .I2(\n_0_Q_reg_reg[9] ),
        .I3(p_0_in[11]),
        .I4(\n_0_Q_reg_reg[7] ),
        .O(p_0_in[7]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \wr_pntr_bin[8]_i_1 
       (.I0(p_0_in[11]),
        .I1(\n_0_Q_reg_reg[9] ),
        .I2(\n_0_Q_reg_reg[10] ),
        .I3(\n_0_Q_reg_reg[8] ),
        .O(p_0_in[8]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \wr_pntr_bin[9]_i_1 
       (.I0(\n_0_Q_reg_reg[10] ),
        .I1(\n_0_Q_reg_reg[9] ),
        .I2(p_0_in[11]),
        .O(p_0_in[9]));
endmodule

(* ORIG_REF_NAME = "synchronizer_ff" *) 
module chan_link_axis_data_fifosynchronizer_ff_3
   (Q,
    O1,
    D,
    s_axis_aclk,
    I4);
  output [0:0]Q;
  output [10:0]O1;
  input [11:0]D;
  input s_axis_aclk;
  input [0:0]I4;

  wire \<const1> ;
  wire [11:0]D;
  wire [0:0]I4;
  wire [10:0]O1;
  wire [0:0]Q;
  wire \n_0_Q_reg_reg[0] ;
  wire \n_0_Q_reg_reg[10] ;
  wire \n_0_Q_reg_reg[1] ;
  wire \n_0_Q_reg_reg[2] ;
  wire \n_0_Q_reg_reg[3] ;
  wire \n_0_Q_reg_reg[4] ;
  wire \n_0_Q_reg_reg[5] ;
  wire \n_0_Q_reg_reg[6] ;
  wire \n_0_Q_reg_reg[7] ;
  wire \n_0_Q_reg_reg[8] ;
  wire \n_0_Q_reg_reg[9] ;
  wire s_axis_aclk;

(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[0] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[0]),
        .Q(\n_0_Q_reg_reg[0] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[10] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[10]),
        .Q(\n_0_Q_reg_reg[10] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[11] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[11]),
        .Q(Q));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[1] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[1]),
        .Q(\n_0_Q_reg_reg[1] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[2] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[2]),
        .Q(\n_0_Q_reg_reg[2] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[3] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[3]),
        .Q(\n_0_Q_reg_reg[3] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[4] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[4]),
        .Q(\n_0_Q_reg_reg[4] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[5] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[5]),
        .Q(\n_0_Q_reg_reg[5] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[6] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[6]),
        .Q(\n_0_Q_reg_reg[6] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[7] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[7]),
        .Q(\n_0_Q_reg_reg[7] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[8] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[8]),
        .Q(\n_0_Q_reg_reg[8] ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDCE #(
    .INIT(1'b0)) 
     \Q_reg_reg[9] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I4),
        .D(D[9]),
        .Q(\n_0_Q_reg_reg[9] ));
VCC VCC
       (.P(\<const1> ));
LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[0]_i_1 
       (.I0(\n_0_Q_reg_reg[2] ),
        .I1(\n_0_Q_reg_reg[1] ),
        .I2(\n_0_Q_reg_reg[0] ),
        .I3(O1[3]),
        .O(O1[0]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[10]_i_1 
       (.I0(\n_0_Q_reg_reg[10] ),
        .I1(Q),
        .O(O1[10]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \rd_pntr_bin[1]_i_1 
       (.I0(\n_0_Q_reg_reg[1] ),
        .I1(\n_0_Q_reg_reg[2] ),
        .I2(\n_0_Q_reg_reg[3] ),
        .I3(\n_0_Q_reg_reg[5] ),
        .I4(O1[6]),
        .I5(\n_0_Q_reg_reg[4] ),
        .O(O1[1]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \rd_pntr_bin[2]_i_1 
       (.I0(\n_0_Q_reg_reg[3] ),
        .I1(\n_0_Q_reg_reg[5] ),
        .I2(O1[6]),
        .I3(\n_0_Q_reg_reg[4] ),
        .I4(\n_0_Q_reg_reg[2] ),
        .O(O1[2]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[3]_i_1 
       (.I0(\n_0_Q_reg_reg[4] ),
        .I1(O1[6]),
        .I2(\n_0_Q_reg_reg[5] ),
        .I3(\n_0_Q_reg_reg[3] ),
        .O(O1[3]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[4]_i_1 
       (.I0(\n_0_Q_reg_reg[5] ),
        .I1(O1[6]),
        .I2(\n_0_Q_reg_reg[4] ),
        .O(O1[4]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \rd_pntr_bin[5]_i_1 
       (.I0(O1[6]),
        .I1(\n_0_Q_reg_reg[5] ),
        .O(O1[5]));
LUT6 #(
    .INIT(64'h6996966996696996)) 
     \rd_pntr_bin[6]_i_1 
       (.I0(\n_0_Q_reg_reg[7] ),
        .I1(Q),
        .I2(\n_0_Q_reg_reg[9] ),
        .I3(\n_0_Q_reg_reg[10] ),
        .I4(\n_0_Q_reg_reg[8] ),
        .I5(\n_0_Q_reg_reg[6] ),
        .O(O1[6]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT5 #(
    .INIT(32'h96696996)) 
     \rd_pntr_bin[7]_i_1 
       (.I0(\n_0_Q_reg_reg[8] ),
        .I1(\n_0_Q_reg_reg[10] ),
        .I2(\n_0_Q_reg_reg[9] ),
        .I3(Q),
        .I4(\n_0_Q_reg_reg[7] ),
        .O(O1[7]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT4 #(
    .INIT(16'h6996)) 
     \rd_pntr_bin[8]_i_1 
       (.I0(Q),
        .I1(\n_0_Q_reg_reg[9] ),
        .I2(\n_0_Q_reg_reg[10] ),
        .I3(\n_0_Q_reg_reg[8] ),
        .O(O1[8]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h96)) 
     \rd_pntr_bin[9]_i_1 
       (.I0(\n_0_Q_reg_reg[10] ),
        .I1(\n_0_Q_reg_reg[9] ),
        .I2(Q),
        .O(O1[9]));
endmodule

module chan_link_axis_data_fifowr_bin_cntr
   (out,
    Q,
    O,
    O1,
    O2,
    ram_full_i,
    O4,
    O3,
    rst_full_gen_i,
    comp2,
    p_0_out,
    s_axis_tvalid,
    comp1,
    sel,
    s_axis_aclk,
    I1);
  output [11:0]out;
  output [11:0]Q;
  output [2:0]O;
  output [3:0]O1;
  output [3:0]O2;
  output ram_full_i;
  output [11:0]O4;
  input [11:0]O3;
  input rst_full_gen_i;
  input comp2;
  input p_0_out;
  input s_axis_tvalid;
  input comp1;
  input sel;
  input s_axis_aclk;
  input [0:0]I1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]I1;
  wire [2:0]O;
  wire [3:0]O1;
  wire [3:0]O2;
  wire [11:0]O3;
  wire [11:0]O4;
  wire [11:0]Q;
  wire comp1;
  wire comp2;
  wire \n_0_gic0.gc0.count[0]_i_2 ;
  wire \n_0_gic0.gc0.count[0]_i_3 ;
  wire \n_0_gic0.gc0.count[0]_i_4 ;
  wire \n_0_gic0.gc0.count[0]_i_5 ;
  wire \n_0_gic0.gc0.count[4]_i_2 ;
  wire \n_0_gic0.gc0.count[4]_i_3 ;
  wire \n_0_gic0.gc0.count[4]_i_4 ;
  wire \n_0_gic0.gc0.count[4]_i_5 ;
  wire \n_0_gic0.gc0.count[8]_i_2 ;
  wire \n_0_gic0.gc0.count[8]_i_3 ;
  wire \n_0_gic0.gc0.count[8]_i_4 ;
  wire \n_0_gic0.gc0.count[8]_i_5 ;
  wire \n_0_gic0.gc0.count_reg[0]_i_1 ;
  wire \n_0_gic0.gc0.count_reg[4]_i_1 ;
  wire \n_0_wr_data_count_i[12]_i_10 ;
  wire \n_0_wr_data_count_i[12]_i_7 ;
  wire \n_0_wr_data_count_i[12]_i_8 ;
  wire \n_0_wr_data_count_i[12]_i_9 ;
  wire \n_0_wr_data_count_i[3]_i_10 ;
  wire \n_0_wr_data_count_i[3]_i_7 ;
  wire \n_0_wr_data_count_i[3]_i_8 ;
  wire \n_0_wr_data_count_i[3]_i_9 ;
  wire \n_0_wr_data_count_i[7]_i_10 ;
  wire \n_0_wr_data_count_i[7]_i_7 ;
  wire \n_0_wr_data_count_i[7]_i_8 ;
  wire \n_0_wr_data_count_i[7]_i_9 ;
  wire \n_0_wr_data_count_i_reg[3]_i_2 ;
  wire \n_0_wr_data_count_i_reg[7]_i_6 ;
  wire \n_1_gic0.gc0.count_reg[0]_i_1 ;
  wire \n_1_gic0.gc0.count_reg[4]_i_1 ;
  wire \n_1_gic0.gc0.count_reg[8]_i_1 ;
  wire \n_1_wr_data_count_i_reg[12]_i_6 ;
  wire \n_1_wr_data_count_i_reg[3]_i_2 ;
  wire \n_1_wr_data_count_i_reg[7]_i_6 ;
  wire \n_2_gic0.gc0.count_reg[0]_i_1 ;
  wire \n_2_gic0.gc0.count_reg[4]_i_1 ;
  wire \n_2_gic0.gc0.count_reg[8]_i_1 ;
  wire \n_2_wr_data_count_i_reg[12]_i_6 ;
  wire \n_2_wr_data_count_i_reg[3]_i_2 ;
  wire \n_2_wr_data_count_i_reg[7]_i_6 ;
  wire \n_3_gic0.gc0.count_reg[0]_i_1 ;
  wire \n_3_gic0.gc0.count_reg[4]_i_1 ;
  wire \n_3_gic0.gc0.count_reg[8]_i_1 ;
  wire \n_3_wr_data_count_i_reg[12]_i_6 ;
  wire \n_3_wr_data_count_i_reg[3]_i_2 ;
  wire \n_3_wr_data_count_i_reg[7]_i_6 ;
  wire \n_4_gic0.gc0.count_reg[0]_i_1 ;
  wire \n_4_gic0.gc0.count_reg[4]_i_1 ;
  wire \n_4_gic0.gc0.count_reg[8]_i_1 ;
  wire \n_5_gic0.gc0.count_reg[0]_i_1 ;
  wire \n_5_gic0.gc0.count_reg[4]_i_1 ;
  wire \n_5_gic0.gc0.count_reg[8]_i_1 ;
  wire \n_6_gic0.gc0.count_reg[0]_i_1 ;
  wire \n_6_gic0.gc0.count_reg[4]_i_1 ;
  wire \n_6_gic0.gc0.count_reg[8]_i_1 ;
  wire \n_7_gic0.gc0.count_reg[0]_i_1 ;
  wire \n_7_gic0.gc0.count_reg[4]_i_1 ;
  wire \n_7_gic0.gc0.count_reg[8]_i_1 ;
  wire [11:0]out;
  wire p_0_out;
  wire ram_full_i;
  wire rst_full_gen_i;
  wire s_axis_aclk;
  wire s_axis_tvalid;
  wire sel;
  wire [3:3]\NLW_gic0.gc0.count_reg[8]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_wr_data_count_i_reg[12]_i_6_CO_UNCONNECTED ;
  wire [0:0]\NLW_wr_data_count_i_reg[3]_i_2_O_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     \gic0.gc0.count[0]_i_2 
       (.I0(out[3]),
        .O(\n_0_gic0.gc0.count[0]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \gic0.gc0.count[0]_i_3 
       (.I0(out[2]),
        .O(\n_0_gic0.gc0.count[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gic0.gc0.count[0]_i_4 
       (.I0(out[1]),
        .O(\n_0_gic0.gc0.count[0]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \gic0.gc0.count[0]_i_5 
       (.I0(out[0]),
        .O(\n_0_gic0.gc0.count[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gic0.gc0.count[4]_i_2 
       (.I0(out[7]),
        .O(\n_0_gic0.gc0.count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \gic0.gc0.count[4]_i_3 
       (.I0(out[6]),
        .O(\n_0_gic0.gc0.count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gic0.gc0.count[4]_i_4 
       (.I0(out[5]),
        .O(\n_0_gic0.gc0.count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gic0.gc0.count[4]_i_5 
       (.I0(out[4]),
        .O(\n_0_gic0.gc0.count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \gic0.gc0.count[8]_i_2 
       (.I0(out[11]),
        .O(\n_0_gic0.gc0.count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \gic0.gc0.count[8]_i_3 
       (.I0(out[10]),
        .O(\n_0_gic0.gc0.count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \gic0.gc0.count[8]_i_4 
       (.I0(out[9]),
        .O(\n_0_gic0.gc0.count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \gic0.gc0.count[8]_i_5 
       (.I0(out[8]),
        .O(\n_0_gic0.gc0.count[8]_i_5 ));
FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_d1_reg[0] 
       (.C(s_axis_aclk),
        .CE(sel),
        .D(out[0]),
        .PRE(I1),
        .Q(O4[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[10] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(out[10]),
        .Q(O4[10]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[11] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(out[11]),
        .Q(O4[11]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[1] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(out[1]),
        .Q(O4[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[2] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(out[2]),
        .Q(O4[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[3] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(out[3]),
        .Q(O4[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[4] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(out[4]),
        .Q(O4[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[5] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(out[5]),
        .Q(O4[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[6] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(out[6]),
        .Q(O4[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[7] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(out[7]),
        .Q(O4[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[8] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(out[8]),
        .Q(O4[8]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d1_reg[9] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(out[9]),
        .Q(O4[9]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[0] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[0]),
        .Q(Q[0]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[10] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[10]),
        .Q(Q[10]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[11] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[11]),
        .Q(Q[11]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[1] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[1]),
        .Q(Q[1]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[2] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[2]),
        .Q(Q[2]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[3] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[3]),
        .Q(Q[3]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[4] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[4]),
        .Q(Q[4]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[5] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[5]),
        .Q(Q[5]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[6] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[6]),
        .Q(Q[6]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[7] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[7]),
        .Q(Q[7]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[8] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[8]),
        .Q(Q[8]));
FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_d2_reg[9] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(O4[9]),
        .Q(Q[9]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[0] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(\n_7_gic0.gc0.count_reg[0]_i_1 ),
        .Q(out[0]));
CARRY4 \gic0.gc0.count_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\n_0_gic0.gc0.count_reg[0]_i_1 ,\n_1_gic0.gc0.count_reg[0]_i_1 ,\n_2_gic0.gc0.count_reg[0]_i_1 ,\n_3_gic0.gc0.count_reg[0]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_gic0.gc0.count_reg[0]_i_1 ,\n_5_gic0.gc0.count_reg[0]_i_1 ,\n_6_gic0.gc0.count_reg[0]_i_1 ,\n_7_gic0.gc0.count_reg[0]_i_1 }),
        .S({\n_0_gic0.gc0.count[0]_i_2 ,\n_0_gic0.gc0.count[0]_i_3 ,\n_0_gic0.gc0.count[0]_i_4 ,\n_0_gic0.gc0.count[0]_i_5 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[10] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(\n_5_gic0.gc0.count_reg[8]_i_1 ),
        .Q(out[10]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[11] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(\n_4_gic0.gc0.count_reg[8]_i_1 ),
        .Q(out[11]));
(* counter = "3" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gic0.gc0.count_reg[1] 
       (.C(s_axis_aclk),
        .CE(sel),
        .D(\n_6_gic0.gc0.count_reg[0]_i_1 ),
        .PRE(I1),
        .Q(out[1]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[2] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(\n_5_gic0.gc0.count_reg[0]_i_1 ),
        .Q(out[2]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[3] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(\n_4_gic0.gc0.count_reg[0]_i_1 ),
        .Q(out[3]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[4] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(\n_7_gic0.gc0.count_reg[4]_i_1 ),
        .Q(out[4]));
CARRY4 \gic0.gc0.count_reg[4]_i_1 
       (.CI(\n_0_gic0.gc0.count_reg[0]_i_1 ),
        .CO({\n_0_gic0.gc0.count_reg[4]_i_1 ,\n_1_gic0.gc0.count_reg[4]_i_1 ,\n_2_gic0.gc0.count_reg[4]_i_1 ,\n_3_gic0.gc0.count_reg[4]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_gic0.gc0.count_reg[4]_i_1 ,\n_5_gic0.gc0.count_reg[4]_i_1 ,\n_6_gic0.gc0.count_reg[4]_i_1 ,\n_7_gic0.gc0.count_reg[4]_i_1 }),
        .S({\n_0_gic0.gc0.count[4]_i_2 ,\n_0_gic0.gc0.count[4]_i_3 ,\n_0_gic0.gc0.count[4]_i_4 ,\n_0_gic0.gc0.count[4]_i_5 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[5] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(\n_6_gic0.gc0.count_reg[4]_i_1 ),
        .Q(out[5]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[6] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(\n_5_gic0.gc0.count_reg[4]_i_1 ),
        .Q(out[6]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[7] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(\n_4_gic0.gc0.count_reg[4]_i_1 ),
        .Q(out[7]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[8] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(\n_7_gic0.gc0.count_reg[8]_i_1 ),
        .Q(out[8]));
CARRY4 \gic0.gc0.count_reg[8]_i_1 
       (.CI(\n_0_gic0.gc0.count_reg[4]_i_1 ),
        .CO({\NLW_gic0.gc0.count_reg[8]_i_1_CO_UNCONNECTED [3],\n_1_gic0.gc0.count_reg[8]_i_1 ,\n_2_gic0.gc0.count_reg[8]_i_1 ,\n_3_gic0.gc0.count_reg[8]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_gic0.gc0.count_reg[8]_i_1 ,\n_5_gic0.gc0.count_reg[8]_i_1 ,\n_6_gic0.gc0.count_reg[8]_i_1 ,\n_7_gic0.gc0.count_reg[8]_i_1 }),
        .S({\n_0_gic0.gc0.count[8]_i_2 ,\n_0_gic0.gc0.count[8]_i_3 ,\n_0_gic0.gc0.count[8]_i_4 ,\n_0_gic0.gc0.count[8]_i_5 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gic0.gc0.count_reg[9] 
       (.C(s_axis_aclk),
        .CE(sel),
        .CLR(I1),
        .D(\n_6_gic0.gc0.count_reg[8]_i_1 ),
        .Q(out[9]));
LUT5 #(
    .INIT(32'h55550400)) 
     ram_full_fb_i_i_1
       (.I0(rst_full_gen_i),
        .I1(comp2),
        .I2(p_0_out),
        .I3(s_axis_tvalid),
        .I4(comp1),
        .O(ram_full_i));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[12]_i_10 
       (.I0(Q[8]),
        .I1(O3[8]),
        .O(\n_0_wr_data_count_i[12]_i_10 ));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[12]_i_7 
       (.I0(Q[11]),
        .I1(O3[11]),
        .O(\n_0_wr_data_count_i[12]_i_7 ));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[12]_i_8 
       (.I0(Q[10]),
        .I1(O3[10]),
        .O(\n_0_wr_data_count_i[12]_i_8 ));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[12]_i_9 
       (.I0(Q[9]),
        .I1(O3[9]),
        .O(\n_0_wr_data_count_i[12]_i_9 ));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[3]_i_10 
       (.I0(Q[0]),
        .I1(O3[0]),
        .O(\n_0_wr_data_count_i[3]_i_10 ));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[3]_i_7 
       (.I0(Q[3]),
        .I1(O3[3]),
        .O(\n_0_wr_data_count_i[3]_i_7 ));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[3]_i_8 
       (.I0(Q[2]),
        .I1(O3[2]),
        .O(\n_0_wr_data_count_i[3]_i_8 ));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[3]_i_9 
       (.I0(Q[1]),
        .I1(O3[1]),
        .O(\n_0_wr_data_count_i[3]_i_9 ));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[7]_i_10 
       (.I0(Q[4]),
        .I1(O3[4]),
        .O(\n_0_wr_data_count_i[7]_i_10 ));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[7]_i_7 
       (.I0(Q[7]),
        .I1(O3[7]),
        .O(\n_0_wr_data_count_i[7]_i_7 ));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[7]_i_8 
       (.I0(Q[6]),
        .I1(O3[6]),
        .O(\n_0_wr_data_count_i[7]_i_8 ));
LUT2 #(
    .INIT(4'h9)) 
     \wr_data_count_i[7]_i_9 
       (.I0(Q[5]),
        .I1(O3[5]),
        .O(\n_0_wr_data_count_i[7]_i_9 ));
CARRY4 \wr_data_count_i_reg[12]_i_6 
       (.CI(\n_0_wr_data_count_i_reg[7]_i_6 ),
        .CO({\NLW_wr_data_count_i_reg[12]_i_6_CO_UNCONNECTED [3],\n_1_wr_data_count_i_reg[12]_i_6 ,\n_2_wr_data_count_i_reg[12]_i_6 ,\n_3_wr_data_count_i_reg[12]_i_6 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,Q[10:8]}),
        .O(O2),
        .S({\n_0_wr_data_count_i[12]_i_7 ,\n_0_wr_data_count_i[12]_i_8 ,\n_0_wr_data_count_i[12]_i_9 ,\n_0_wr_data_count_i[12]_i_10 }));
CARRY4 \wr_data_count_i_reg[3]_i_2 
       (.CI(\<const0> ),
        .CO({\n_0_wr_data_count_i_reg[3]_i_2 ,\n_1_wr_data_count_i_reg[3]_i_2 ,\n_2_wr_data_count_i_reg[3]_i_2 ,\n_3_wr_data_count_i_reg[3]_i_2 }),
        .CYINIT(\<const1> ),
        .DI(Q[3:0]),
        .O({O,\NLW_wr_data_count_i_reg[3]_i_2_O_UNCONNECTED [0]}),
        .S({\n_0_wr_data_count_i[3]_i_7 ,\n_0_wr_data_count_i[3]_i_8 ,\n_0_wr_data_count_i[3]_i_9 ,\n_0_wr_data_count_i[3]_i_10 }));
CARRY4 \wr_data_count_i_reg[7]_i_6 
       (.CI(\n_0_wr_data_count_i_reg[3]_i_2 ),
        .CO({\n_0_wr_data_count_i_reg[7]_i_6 ,\n_1_wr_data_count_i_reg[7]_i_6 ,\n_2_wr_data_count_i_reg[7]_i_6 ,\n_3_wr_data_count_i_reg[7]_i_6 }),
        .CYINIT(\<const0> ),
        .DI(Q[7:4]),
        .O(O1),
        .S({\n_0_wr_data_count_i[7]_i_7 ,\n_0_wr_data_count_i[7]_i_8 ,\n_0_wr_data_count_i[7]_i_9 ,\n_0_wr_data_count_i[7]_i_10 }));
endmodule

module chan_link_axis_data_fifowr_dc_fwft_ext_as
   (axis_wr_data_count,
    O,
    O1,
    O2,
    s_axis_aclk,
    I1,
    S);
  output [12:0]axis_wr_data_count;
  input [2:0]O;
  input [3:0]O1;
  input [3:0]O2;
  input s_axis_aclk;
  input [0:0]I1;
  input [0:0]S;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]I1;
  wire [2:0]O;
  wire [3:0]O1;
  wire [3:0]O2;
  wire [0:0]S;
  wire [12:0]axis_wr_data_count;
  wire \n_0_wr_data_count_i[12]_i_2 ;
  wire \n_0_wr_data_count_i[12]_i_3 ;
  wire \n_0_wr_data_count_i[12]_i_4 ;
  wire \n_0_wr_data_count_i[12]_i_5 ;
  wire \n_0_wr_data_count_i[3]_i_3 ;
  wire \n_0_wr_data_count_i[3]_i_4 ;
  wire \n_0_wr_data_count_i[3]_i_5 ;
  wire \n_0_wr_data_count_i[7]_i_2 ;
  wire \n_0_wr_data_count_i[7]_i_3 ;
  wire \n_0_wr_data_count_i[7]_i_4 ;
  wire \n_0_wr_data_count_i[7]_i_5 ;
  wire \n_0_wr_data_count_i_reg[12]_i_1 ;
  wire \n_0_wr_data_count_i_reg[3]_i_1 ;
  wire \n_0_wr_data_count_i_reg[7]_i_1 ;
  wire \n_1_wr_data_count_i_reg[12]_i_1 ;
  wire \n_1_wr_data_count_i_reg[3]_i_1 ;
  wire \n_1_wr_data_count_i_reg[7]_i_1 ;
  wire \n_2_wr_data_count_i_reg[12]_i_1 ;
  wire \n_2_wr_data_count_i_reg[3]_i_1 ;
  wire \n_2_wr_data_count_i_reg[7]_i_1 ;
  wire \n_3_wr_data_count_i_reg[12]_i_1 ;
  wire \n_3_wr_data_count_i_reg[3]_i_1 ;
  wire \n_3_wr_data_count_i_reg[7]_i_1 ;
  wire \n_4_wr_data_count_i_reg[12]_i_1 ;
  wire \n_4_wr_data_count_i_reg[3]_i_1 ;
  wire \n_4_wr_data_count_i_reg[7]_i_1 ;
  wire \n_5_wr_data_count_i_reg[12]_i_1 ;
  wire \n_5_wr_data_count_i_reg[3]_i_1 ;
  wire \n_5_wr_data_count_i_reg[7]_i_1 ;
  wire \n_6_wr_data_count_i_reg[12]_i_1 ;
  wire \n_6_wr_data_count_i_reg[3]_i_1 ;
  wire \n_6_wr_data_count_i_reg[7]_i_1 ;
  wire \n_7_wr_data_count_i_reg[12]_i_1 ;
  wire \n_7_wr_data_count_i_reg[3]_i_1 ;
  wire \n_7_wr_data_count_i_reg[7]_i_1 ;
  wire s_axis_aclk;
  wire xlnx_opt_;
  wire xlnx_opt__1;
  wire xlnx_opt__2;
  wire [3:1]NLW_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_CARRY4_O_UNCONNECTED;
  wire [3:1]NLW_CARRY4_S_UNCONNECTED;

CARRY4 CARRY4
       (.CI(xlnx_opt_),
        .CO({NLW_CARRY4_CO_UNCONNECTED[3:1],\n_0_wr_data_count_i_reg[12]_i_1 }),
        .CYINIT(xlnx_opt__1),
        .DI({NLW_CARRY4_DI_UNCONNECTED[3:1],xlnx_opt__1}),
        .O(NLW_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_CARRY4_S_UNCONNECTED[3:1],xlnx_opt__2}));
GND GND
       (.G(\<const0> ));
GND GND_1
       (.G(xlnx_opt__1));
VCC VCC
       (.P(\<const1> ));
VCC VCC_1
       (.P(xlnx_opt__2));
LUT1 #(
    .INIT(2'h2)) 
     \wr_data_count_i[12]_i_2 
       (.I0(O2[3]),
        .O(\n_0_wr_data_count_i[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_data_count_i[12]_i_3 
       (.I0(O2[2]),
        .O(\n_0_wr_data_count_i[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_data_count_i[12]_i_4 
       (.I0(O2[1]),
        .O(\n_0_wr_data_count_i[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_data_count_i[12]_i_5 
       (.I0(O2[0]),
        .O(\n_0_wr_data_count_i[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_data_count_i[3]_i_3 
       (.I0(O[2]),
        .O(\n_0_wr_data_count_i[3]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_data_count_i[3]_i_4 
       (.I0(O[1]),
        .O(\n_0_wr_data_count_i[3]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \wr_data_count_i[3]_i_5 
       (.I0(O[0]),
        .O(\n_0_wr_data_count_i[3]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_data_count_i[7]_i_2 
       (.I0(O1[3]),
        .O(\n_0_wr_data_count_i[7]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_data_count_i[7]_i_3 
       (.I0(O1[2]),
        .O(\n_0_wr_data_count_i[7]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_data_count_i[7]_i_4 
       (.I0(O1[1]),
        .O(\n_0_wr_data_count_i[7]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wr_data_count_i[7]_i_5 
       (.I0(O1[0]),
        .O(\n_0_wr_data_count_i[7]_i_5 ));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[0] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_7_wr_data_count_i_reg[3]_i_1 ),
        .Q(axis_wr_data_count[0]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[10] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_5_wr_data_count_i_reg[12]_i_1 ),
        .Q(axis_wr_data_count[10]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[11] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_4_wr_data_count_i_reg[12]_i_1 ),
        .Q(axis_wr_data_count[11]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[12] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_0_wr_data_count_i_reg[12]_i_1 ),
        .Q(axis_wr_data_count[12]));
CARRY4 \wr_data_count_i_reg[12]_i_1 
       (.CI(\n_0_wr_data_count_i_reg[7]_i_1 ),
        .CO({xlnx_opt_,\n_1_wr_data_count_i_reg[12]_i_1 ,\n_2_wr_data_count_i_reg[12]_i_1 ,\n_3_wr_data_count_i_reg[12]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wr_data_count_i_reg[12]_i_1 ,\n_5_wr_data_count_i_reg[12]_i_1 ,\n_6_wr_data_count_i_reg[12]_i_1 ,\n_7_wr_data_count_i_reg[12]_i_1 }),
        .S({\n_0_wr_data_count_i[12]_i_2 ,\n_0_wr_data_count_i[12]_i_3 ,\n_0_wr_data_count_i[12]_i_4 ,\n_0_wr_data_count_i[12]_i_5 }));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[1] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_6_wr_data_count_i_reg[3]_i_1 ),
        .Q(axis_wr_data_count[1]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[2] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_5_wr_data_count_i_reg[3]_i_1 ),
        .Q(axis_wr_data_count[2]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[3] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_4_wr_data_count_i_reg[3]_i_1 ),
        .Q(axis_wr_data_count[3]));
CARRY4 \wr_data_count_i_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\n_0_wr_data_count_i_reg[3]_i_1 ,\n_1_wr_data_count_i_reg[3]_i_1 ,\n_2_wr_data_count_i_reg[3]_i_1 ,\n_3_wr_data_count_i_reg[3]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,O[0],\<const0> }),
        .O({\n_4_wr_data_count_i_reg[3]_i_1 ,\n_5_wr_data_count_i_reg[3]_i_1 ,\n_6_wr_data_count_i_reg[3]_i_1 ,\n_7_wr_data_count_i_reg[3]_i_1 }),
        .S({\n_0_wr_data_count_i[3]_i_3 ,\n_0_wr_data_count_i[3]_i_4 ,\n_0_wr_data_count_i[3]_i_5 ,S}));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[4] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_7_wr_data_count_i_reg[7]_i_1 ),
        .Q(axis_wr_data_count[4]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[5] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_6_wr_data_count_i_reg[7]_i_1 ),
        .Q(axis_wr_data_count[5]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[6] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_5_wr_data_count_i_reg[7]_i_1 ),
        .Q(axis_wr_data_count[6]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[7] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_4_wr_data_count_i_reg[7]_i_1 ),
        .Q(axis_wr_data_count[7]));
CARRY4 \wr_data_count_i_reg[7]_i_1 
       (.CI(\n_0_wr_data_count_i_reg[3]_i_1 ),
        .CO({\n_0_wr_data_count_i_reg[7]_i_1 ,\n_1_wr_data_count_i_reg[7]_i_1 ,\n_2_wr_data_count_i_reg[7]_i_1 ,\n_3_wr_data_count_i_reg[7]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wr_data_count_i_reg[7]_i_1 ,\n_5_wr_data_count_i_reg[7]_i_1 ,\n_6_wr_data_count_i_reg[7]_i_1 ,\n_7_wr_data_count_i_reg[7]_i_1 }),
        .S({\n_0_wr_data_count_i[7]_i_2 ,\n_0_wr_data_count_i[7]_i_3 ,\n_0_wr_data_count_i[7]_i_4 ,\n_0_wr_data_count_i[7]_i_5 }));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[8] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_7_wr_data_count_i_reg[12]_i_1 ),
        .Q(axis_wr_data_count[8]));
FDCE #(
    .INIT(1'b0)) 
     \wr_data_count_i_reg[9] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(I1),
        .D(\n_6_wr_data_count_i_reg[12]_i_1 ),
        .Q(axis_wr_data_count[9]));
endmodule

module chan_link_axis_data_fifowr_logic
   (s_axis_tready,
    E,
    Q,
    axis_wr_data_count,
    s_axis_aclk,
    rst_d2,
    s_axis_tvalid,
    O3,
    rst_full_gen_i,
    I1,
    S);
  output s_axis_tready;
  output [0:0]E;
  output [11:0]Q;
  output [12:0]axis_wr_data_count;
  input s_axis_aclk;
  input rst_d2;
  input s_axis_tvalid;
  input [11:0]O3;
  input rst_full_gen_i;
  input [0:0]I1;
  input [0:0]S;

  wire [0:0]E;
  wire [0:0]I1;
  wire [11:0]O3;
  wire [11:0]Q;
  wire [0:0]S;
  wire [12:0]axis_wr_data_count;
  wire comp1;
  wire comp2;
  wire n_24_wpntr;
  wire n_25_wpntr;
  wire n_26_wpntr;
  wire n_27_wpntr;
  wire n_28_wpntr;
  wire n_29_wpntr;
  wire n_30_wpntr;
  wire n_31_wpntr;
  wire n_32_wpntr;
  wire n_33_wpntr;
  wire n_34_wpntr;
  wire p_0_out;
  wire ram_full_i;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_axis_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [11:0]wr_pntr_plus1;
  wire [11:0]wr_pntr_plus2;

chan_link_axis_data_fifowr_status_flags_as \gwas.wsts 
       (.E(E),
        .O3(O3),
        .O4(wr_pntr_plus1),
        .comp1(comp1),
        .comp2(comp2),
        .out(wr_pntr_plus2),
        .p_0_out(p_0_out),
        .ram_full_i(ram_full_i),
        .rst_d2(rst_d2),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
chan_link_axis_data_fifowr_dc_fwft_ext_as \gwdc1.wdcext 
       (.I1(I1),
        .O({n_24_wpntr,n_25_wpntr,n_26_wpntr}),
        .O1({n_27_wpntr,n_28_wpntr,n_29_wpntr,n_30_wpntr}),
        .O2({n_31_wpntr,n_32_wpntr,n_33_wpntr,n_34_wpntr}),
        .S(S),
        .axis_wr_data_count(axis_wr_data_count),
        .s_axis_aclk(s_axis_aclk));
chan_link_axis_data_fifowr_bin_cntr wpntr
       (.I1(I1),
        .O({n_24_wpntr,n_25_wpntr,n_26_wpntr}),
        .O1({n_27_wpntr,n_28_wpntr,n_29_wpntr,n_30_wpntr}),
        .O2({n_31_wpntr,n_32_wpntr,n_33_wpntr,n_34_wpntr}),
        .O3(O3),
        .O4(wr_pntr_plus1),
        .Q(Q),
        .comp1(comp1),
        .comp2(comp2),
        .out(wr_pntr_plus2),
        .p_0_out(p_0_out),
        .ram_full_i(ram_full_i),
        .rst_full_gen_i(rst_full_gen_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tvalid(s_axis_tvalid),
        .sel(E));
endmodule

module chan_link_axis_data_fifowr_status_flags_as
   (comp1,
    comp2,
    p_0_out,
    s_axis_tready,
    E,
    ram_full_i,
    s_axis_aclk,
    rst_d2,
    s_axis_tvalid,
    O4,
    O3,
    out);
  output comp1;
  output comp2;
  output p_0_out;
  output s_axis_tready;
  output [0:0]E;
  input ram_full_i;
  input s_axis_aclk;
  input rst_d2;
  input s_axis_tvalid;
  input [11:0]O4;
  input [11:0]O3;
  input [11:0]out;

  wire \<const1> ;
  wire [0:0]E;
  wire [11:0]O3;
  wire [11:0]O4;
  wire comp1;
  wire comp2;
  wire [11:0]out;
  wire p_0_out;
  wire ram_full_i;
  wire ram_full_i__0;
  wire rst_d2;
  wire s_axis_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;

LUT2 #(
    .INIT(4'h2)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM18.ram_i_1 
       (.I0(s_axis_tvalid),
        .I1(p_0_out),
        .O(E));
VCC VCC
       (.P(\<const1> ));
chan_link_axis_data_fifocompare c1
       (.O3(O3),
        .O4(O4),
        .comp1(comp1));
chan_link_axis_data_fifocompare_0 c2
       (.O3(O3),
        .comp2(comp2),
        .out(out));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(p_0_out));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(ram_full_i),
        .PRE(rst_d2),
        .Q(ram_full_i__0));
LUT1 #(
    .INIT(2'h1)) 
     s_axis_tready_INST_0
       (.I0(ram_full_i__0),
        .O(s_axis_tready));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
