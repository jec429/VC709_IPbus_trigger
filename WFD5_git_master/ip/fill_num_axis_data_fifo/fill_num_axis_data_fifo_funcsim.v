// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Fri Jul 18 14:09:16 2014
// Host        : PC210 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/fill_num_axis_data_fifo/fill_num_axis_data_fifo_funcsim.v
// Design      : fill_num_axis_data_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* x_core_info = "axis_data_fifo_v1_1_axis_data_fifo,Vivado 2013.4" *) (* CHECK_LICENSE_TYPE = "fill_num_axis_data_fifo,axis_data_fifo_v1_1_axis_data_fifo,{}" *) (* core_generation_info = "fill_num_axis_data_fifo,axis_data_fifo_v1_1_axis_data_fifo,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_data_fifo,x_ipVersion=1.1,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_FAMILY=kintex7,C_AXIS_TDATA_WIDTH=24,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00000011,C_FIFO_DEPTH=512,C_FIFO_MODE=1,C_IS_ACLK_ASYNC=0,C_SYNCHRONIZER_STAGE=2,C_ACLKEN_CONV_MODE=0}" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
(* NotValidForBitStream *)
module fill_num_axis_data_fifo
   (s_axis_aresetn,
    s_axis_aclk,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count);
  input s_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [23:0]s_axis_tdata;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]axis_data_count;
  wire [31:0]axis_rd_data_count;
  wire [31:0]axis_wr_data_count;
  wire [23:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire [23:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire NLW_inst_m_axis_tlast_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tid_UNCONNECTED;
  wire [2:0]NLW_inst_m_axis_tkeep_UNCONNECTED;
  wire [2:0]NLW_inst_m_axis_tstrb_UNCONNECTED;
  wire [0:0]NLW_inst_m_axis_tuser_UNCONNECTED;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* C_ACLKEN_CONV_MODE = "0" *) 
   (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000000011" *) 
   (* C_AXIS_TDATA_WIDTH = "24" *) 
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
   (* C_FIFO_DEPTH = "512" *) 
   (* C_FIFO_MODE = "1" *) 
   (* C_IS_ACLK_ASYNC = "0" *) 
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
   (* C_WR_PNTR_WIDTH_AXIS = "9" *) 
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
   (* P_AXIS_PAYLOAD_WIDTH = "24" *) 
   (* P_COMMON_CLOCK = "1" *) 
   (* P_FIFO_COUNT_WIDTH = "10" *) 
   (* P_FIFO_TYPE = "1" *) 
   (* P_IMPLEMENTATION_TYPE_AXIS = "1" *) 
   (* P_MSGON_VAL = "1" *) 
   (* P_TDATA_EXISTS = "1" *) 
   (* P_TDEST_EXISTS = "0" *) 
   (* P_TID_EXISTS = "0" *) 
   (* P_TKEEP_EXISTS = "0" *) 
   (* P_TLAST_EXISTS = "0" *) 
   (* P_TREADY_EXISTS = "1" *) 
   (* P_TSTRB_EXISTS = "0" *) 
   (* P_TUSER_EXISTS = "0" *) 
   (* P_WR_PNTR_WIDTH = "9" *) 
   (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) 
   fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo inst
       (.axis_data_count(axis_data_count),
        .axis_rd_data_count(axis_rd_data_count),
        .axis_wr_data_count(axis_wr_data_count),
        .m_axis_aclk(\<const0> ),
        .m_axis_aclken(\<const1> ),
        .m_axis_aresetn(\<const0> ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tdest(NLW_inst_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_inst_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_inst_m_axis_tkeep_UNCONNECTED[2:0]),
        .m_axis_tlast(NLW_inst_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(m_axis_tready),
        .m_axis_tstrb(NLW_inst_m_axis_tstrb_UNCONNECTED[2:0]),
        .m_axis_tuser(NLW_inst_m_axis_tuser_UNCONNECTED[0]),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aclken(\<const1> ),
        .s_axis_aresetn(s_axis_aresetn),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tdest(\<const0> ),
        .s_axis_tid(\<const0> ),
        .s_axis_tkeep({\<const1> ,\<const1> ,\<const1> }),
        .s_axis_tlast(\<const1> ),
        .s_axis_tready(s_axis_tready),
        .s_axis_tstrb({\<const1> ,\<const1> ,\<const1> }),
        .s_axis_tuser(\<const0> ),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

(* C_FAMILY = "kintex7" *) (* C_AXIS_TDATA_WIDTH = "24" *) (* C_AXIS_TID_WIDTH = "1" *) 
(* C_AXIS_TDEST_WIDTH = "1" *) (* C_AXIS_TUSER_WIDTH = "1" *) (* C_AXIS_SIGNAL_SET = "32'b00000000000000000000000000000011" *) 
(* C_FIFO_DEPTH = "512" *) (* C_FIFO_MODE = "1" *) (* C_IS_ACLK_ASYNC = "0" *) 
(* C_SYNCHRONIZER_STAGE = "2" *) (* C_ACLKEN_CONV_MODE = "0" *) (* G_INDX_SS_TREADY = "0" *) 
(* G_INDX_SS_TDATA = "1" *) (* G_INDX_SS_TSTRB = "2" *) (* G_INDX_SS_TKEEP = "3" *) 
(* G_INDX_SS_TLAST = "4" *) (* G_INDX_SS_TID = "5" *) (* G_INDX_SS_TDEST = "6" *) 
(* G_INDX_SS_TUSER = "7" *) (* G_MASK_SS_TREADY = "1" *) (* G_MASK_SS_TDATA = "2" *) 
(* G_MASK_SS_TSTRB = "4" *) (* G_MASK_SS_TKEEP = "8" *) (* G_MASK_SS_TLAST = "16" *) 
(* G_MASK_SS_TID = "32" *) (* G_MASK_SS_TDEST = "64" *) (* G_MASK_SS_TUSER = "128" *) 
(* G_TASK_SEVERITY_ERR = "2" *) (* G_TASK_SEVERITY_WARNING = "1" *) (* G_TASK_SEVERITY_INFO = "0" *) 
(* P_TREADY_EXISTS = "1" *) (* P_TDATA_EXISTS = "1" *) (* P_TSTRB_EXISTS = "0" *) 
(* P_TKEEP_EXISTS = "0" *) (* P_TLAST_EXISTS = "0" *) (* P_TID_EXISTS = "0" *) 
(* P_TDEST_EXISTS = "0" *) (* P_TUSER_EXISTS = "0" *) (* P_AXIS_PAYLOAD_WIDTH = "24" *) 
(* P_WR_PNTR_WIDTH = "9" *) (* P_FIFO_COUNT_WIDTH = "10" *) (* P_FIFO_TYPE = "1" *) 
(* P_IMPLEMENTATION_TYPE_AXIS = "1" *) (* P_COMMON_CLOCK = "1" *) (* P_MSGON_VAL = "1" *) 
(* P_APPLICATION_TYPE_AXIS = "0" *) (* LP_S_ACLKEN_CAN_TOGGLE = "0" *) (* LP_M_ACLKEN_CAN_TOGGLE = "0" *) 
(* C_DIN_WIDTH = "18" *) (* C_RD_PNTR_WIDTH = "10" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_DOUT_WIDTH = "18" *) (* C_DATA_COUNT_WIDTH = "10" *) (* C_RD_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DATA_COUNT_WIDTH = "10" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_ADDR_WIDTH = "32" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_ARUSER_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_WACH = "4" *) 
(* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) (* C_RD_PNTR_WIDTH_RACH = "4" *) 
(* C_RD_PNTR_WIDTH_RDCH = "10" *) (* C_RD_PNTR_WIDTH_WACH = "4" *) (* C_RD_PNTR_WIDTH_WDCH = "10" *) 
(* C_RD_PNTR_WIDTH_WRCH = "4" *) (* C_WR_PNTR_WIDTH_AXIS = "9" *) 
module fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo
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
  input [23:0]s_axis_tdata;
  input [2:0]s_axis_tstrb;
  input [2:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [0:0]s_axis_tuser;
  input m_axis_aclk;
  input m_axis_aclken;
  output m_axis_tvalid;
  input m_axis_tready;
  output [23:0]m_axis_tdata;
  output [2:0]m_axis_tstrb;
  output [2:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [0:0]m_axis_tuser;
  output [31:0]axis_data_count;
  output [31:0]axis_wr_data_count;
  output [31:0]axis_rd_data_count;

  wire \<const0> ;
  wire [9:0]\^axis_data_count ;
  wire m_axis_aclken;
  wire [23:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire s_axis_aclken;
(* RTL_KEEP = "true" *)   wire s_axis_aresetn;
  wire [23:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [2:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire [2:0]s_axis_tstrb;
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
  assign axis_data_count[12] = \<const0> ;
  assign axis_data_count[11] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9:0] = \^axis_data_count [9:0];
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
  assign axis_rd_data_count[12] = \<const0> ;
  assign axis_rd_data_count[11] = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9:0] = \^axis_data_count [9:0];
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
  assign axis_wr_data_count[12] = \<const0> ;
  assign axis_wr_data_count[11] = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9:0] = \^axis_data_count [9:0];
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[2] = \<const0> ;
  assign m_axis_tkeep[1] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[2] = \<const0> ;
  assign m_axis_tstrb[1] = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
fill_num_axis_data_fifofifo_generator_v11_0 \gen_fifo_generator.fifo_generator_inst 
       (.I1(s_axis_aresetn),
        .axis_data_count(\^axis_data_count ),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module fill_num_axis_data_fifoblk_mem_gen_generic_cstr
   (D,
    s_axis_aclk,
    ram_rd_en_i,
    E,
    O3,
    Q,
    s_axis_tdata);
  output [23:0]D;
  input s_axis_aclk;
  input ram_rd_en_i;
  input [0:0]E;
  input [8:0]O3;
  input [8:0]Q;
  input [23:0]s_axis_tdata;

  wire [23:0]D;
  wire [0:0]E;
  wire [8:0]O3;
  wire [8:0]Q;
  wire ram_rd_en_i;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;

fill_num_axis_data_fifoblk_mem_gen_prim_width \ramloop[0].ram.r 
       (.D(D),
        .E(E),
        .O3(O3),
        .Q(Q),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

module fill_num_axis_data_fifoblk_mem_gen_prim_width
   (D,
    s_axis_aclk,
    ram_rd_en_i,
    E,
    O3,
    Q,
    s_axis_tdata);
  output [23:0]D;
  input s_axis_aclk;
  input ram_rd_en_i;
  input [0:0]E;
  input [8:0]O3;
  input [8:0]Q;
  input [23:0]s_axis_tdata;

  wire [23:0]D;
  wire [0:0]E;
  wire [8:0]O3;
  wire [8:0]Q;
  wire ram_rd_en_i;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;

fill_num_axis_data_fifoblk_mem_gen_prim_wrapper \prim_noinit.ram 
       (.D(D),
        .E(E),
        .O3(O3),
        .Q(Q),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

module fill_num_axis_data_fifoblk_mem_gen_prim_wrapper
   (D,
    s_axis_aclk,
    ram_rd_en_i,
    E,
    O3,
    Q,
    s_axis_tdata);
  output [23:0]D;
  input s_axis_aclk;
  input ram_rd_en_i;
  input [0:0]E;
  input [8:0]O3;
  input [8:0]Q;
  input [23:0]s_axis_tdata;

  wire \<const0> ;
  wire [23:0]D;
  wire [0:0]E;
  wire [8:0]O3;
  wire [8:0]Q;
  wire \n_0_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \n_16_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \n_17_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \n_1_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \n_24_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \n_25_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \n_32_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \n_33_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \n_34_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \n_35_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \n_8_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire \n_9_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ;
  wire ram_rd_en_i;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;

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
    .RAM_MODE("SDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(36),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(36)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram 
       (.ADDRARDADDR({O3,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .ADDRBWRADDR({Q,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .CLKARDCLK(s_axis_aclk),
        .CLKBWRCLK(s_axis_aclk),
        .DIADI({\<const0> ,\<const0> ,s_axis_tdata[11:6],\<const0> ,\<const0> ,s_axis_tdata[5:0]}),
        .DIBDI({\<const0> ,\<const0> ,s_axis_tdata[23:18],\<const0> ,\<const0> ,s_axis_tdata[17:12]}),
        .DIPADIP({\<const0> ,\<const0> }),
        .DIPBDIP({\<const0> ,\<const0> }),
        .DOADO({\n_0_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,\n_1_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,D[11:6],\n_8_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,\n_9_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,D[5:0]}),
        .DOBDO({\n_16_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,\n_17_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,D[23:18],\n_24_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,\n_25_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,D[17:12]}),
        .DOPADOP({\n_32_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,\n_33_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram }),
        .DOPBDOP({\n_34_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram ,\n_35_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram }),
        .ENARDEN(ram_rd_en_i),
        .ENBWREN(E),
        .REGCEAREGCE(\<const0> ),
        .REGCEB(\<const0> ),
        .RSTRAMARSTRAM(\<const0> ),
        .RSTRAMB(\<const0> ),
        .RSTREGARSTREG(\<const0> ),
        .RSTREGB(\<const0> ),
        .WEA({\<const0> ,\<const0> }),
        .WEBWE({E,E,E,E}));
GND GND
       (.G(\<const0> ));
endmodule

module fill_num_axis_data_fifoblk_mem_gen_top
   (D,
    s_axis_aclk,
    ram_rd_en_i,
    E,
    O3,
    Q,
    s_axis_tdata);
  output [23:0]D;
  input s_axis_aclk;
  input ram_rd_en_i;
  input [0:0]E;
  input [8:0]O3;
  input [8:0]Q;
  input [23:0]s_axis_tdata;

  wire [23:0]D;
  wire [0:0]E;
  wire [8:0]O3;
  wire [8:0]Q;
  wire ram_rd_en_i;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;

fill_num_axis_data_fifoblk_mem_gen_generic_cstr \valid.cstr 
       (.D(D),
        .E(E),
        .O3(O3),
        .Q(Q),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_v8_1" *) 
module fill_num_axis_data_fifoblk_mem_gen_v8_1__parameterized0
   (D,
    s_axis_aclk,
    ram_rd_en_i,
    E,
    O3,
    Q,
    s_axis_tdata);
  output [23:0]D;
  input s_axis_aclk;
  input ram_rd_en_i;
  input [0:0]E;
  input [8:0]O3;
  input [8:0]Q;
  input [23:0]s_axis_tdata;

  wire [23:0]D;
  wire [0:0]E;
  wire [8:0]O3;
  wire [8:0]Q;
  wire ram_rd_en_i;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;

fill_num_axis_data_fifoblk_mem_gen_v8_1_synth inst_blk_mem_gen
       (.D(D),
        .E(E),
        .O3(O3),
        .Q(Q),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

module fill_num_axis_data_fifoblk_mem_gen_v8_1_synth
   (D,
    s_axis_aclk,
    ram_rd_en_i,
    E,
    O3,
    Q,
    s_axis_tdata);
  output [23:0]D;
  input s_axis_aclk;
  input ram_rd_en_i;
  input [0:0]E;
  input [8:0]O3;
  input [8:0]Q;
  input [23:0]s_axis_tdata;

  wire [23:0]D;
  wire [0:0]E;
  wire [8:0]O3;
  wire [8:0]Q;
  wire ram_rd_en_i;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;

fill_num_axis_data_fifoblk_mem_gen_top \gnativebmg.native_blk_mem_gen 
       (.D(D),
        .E(E),
        .O3(O3),
        .Q(Q),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata));
endmodule

module fill_num_axis_data_fifocompare
   (comp0,
    v1_reg,
    I1);
  output comp0;
  input [3:0]v1_reg;
  input I1;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire comp0;
  wire lopt;
  wire lopt_1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [3:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

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
        .S(v1_reg));
GND \gmux.gm[0].gm1.m1_CARRY4_GND 
       (.G(lopt));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(lopt_1),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],\<const0> }),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],I1}));
GND \gmux.gm[4].gms.ms_CARRY4_GND 
       (.G(lopt_1));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fill_num_axis_data_fifocompare_0
   (comp1,
    v1_reg_0,
    I2);
  output comp1;
  input [3:0]v1_reg_0;
  input I2;

  wire \<const0> ;
  wire \<const1> ;
  wire I2;
  wire comp1;
  wire lopt;
  wire lopt_1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [3:0]v1_reg_0;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

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
        .S(v1_reg_0));
GND \gmux.gm[0].gm1.m1_CARRY4_GND 
       (.G(lopt));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(lopt_1),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],\<const0> }),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],I2}));
GND \gmux.gm[4].gms.ms_CARRY4_GND 
       (.G(lopt_1));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fill_num_axis_data_fifocompare_1
   (comp0,
    v1_reg,
    O1);
  output comp0;
  input [3:0]v1_reg;
  input O1;

  wire \<const0> ;
  wire \<const1> ;
  wire O1;
  wire comp0;
  wire lopt;
  wire lopt_1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [3:0]v1_reg;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

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
        .S(v1_reg));
GND \gmux.gm[0].gm1.m1_CARRY4_GND 
       (.G(lopt));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp0}),
        .CYINIT(lopt_1),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],\<const0> }),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],O1}));
GND \gmux.gm[4].gms.ms_CARRY4_GND 
       (.G(lopt_1));
endmodule

(* ORIG_REF_NAME = "compare" *) 
module fill_num_axis_data_fifocompare_2
   (comp1,
    v1_reg_0,
    I1);
  output comp1;
  input [3:0]v1_reg_0;
  input I1;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire comp1;
  wire lopt;
  wire lopt_1;
  wire \n_0_gmux.gm[3].gms.ms ;
  wire [3:0]v1_reg_0;
  wire [2:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED ;
  wire [3:0]\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED ;

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
        .S(v1_reg_0));
GND \gmux.gm[0].gm1.m1_CARRY4_GND 
       (.G(lopt));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 \gmux.gm[4].gms.ms_CARRY4 
       (.CI(\n_0_gmux.gm[3].gms.ms ),
        .CO({\NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED [3:1],comp1}),
        .CYINIT(lopt_1),
        .DI({\NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED [3:1],\<const0> }),
        .O(\NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED [3:0]),
        .S({\NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED [3:1],I1}));
GND \gmux.gm[4].gms.ms_CARRY4_GND 
       (.G(lopt_1));
endmodule

module fill_num_axis_data_fifodc_ss_fwft
   (O2,
    DI,
    S,
    E,
    s_axis_aclk,
    Q);
  output [9:0]O2;
  input [1:0]DI;
  input [1:0]S;
  input [0:0]E;
  input s_axis_aclk;
  input [0:0]Q;

  wire [1:0]DI;
  wire [0:0]E;
  wire [9:0]O2;
  wire [0:0]Q;
  wire [1:0]S;
  wire s_axis_aclk;

fill_num_axis_data_fifoupdn_cntr dc
       (.DI(DI),
        .E(E),
        .O2(O2),
        .Q(Q),
        .S(S),
        .s_axis_aclk(s_axis_aclk));
endmodule

module fill_num_axis_data_fifofifo_generator_ramfifo
   (axis_data_count,
    m_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_aclk,
    s_axis_tdata,
    I1);
  output [9:0]axis_data_count;
  output [23:0]m_axis_tdata;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_axis_aclk;
  input [23:0]s_axis_tdata;
  input I1;

  wire I1;
  wire RST;
  wire [9:0]axis_data_count;
  wire clear;
  wire [3:0]\grss.rsts/c1/v1_reg ;
  wire [3:0]\grss.rsts/c2/v1_reg ;
  wire \gwss.wsts/comp0 ;
  wire \gwss.wsts/comp1 ;
  wire \gwss.wsts/ram_full_comb ;
  wire [23:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_0_gntv_or_sync_fifo.gl0.rd ;
  wire \n_28_gntv_or_sync_fifo.gl0.rd ;
  wire \n_31_gntv_or_sync_fifo.gl0.rd ;
  wire n_4_rstblk;
  wire [8:0]p_19_out;
  wire p_1_out;
  wire p_3_out;
  wire [8:0]p_8_out;
  wire ram_rd_en_i;
  wire [7:0]rd_pntr_plus1;
  wire rst_d2;
  wire rst_full_gen_i;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [8:8]wr_pntr_plus1;

fill_num_axis_data_fiford_logic \gntv_or_sync_fifo.gl0.rd 
       (.E(\n_31_gntv_or_sync_fifo.gl0.rd ),
        .I1(p_8_out[8]),
        .I2(wr_pntr_plus1),
        .O1(\n_0_gntv_or_sync_fifo.gl0.rd ),
        .O2(axis_data_count),
        .O3(p_19_out),
        .O4(rd_pntr_plus1),
        .O5(\n_28_gntv_or_sync_fifo.gl0.rd ),
        .Q({clear,n_4_rstblk}),
        .comp0(\gwss.wsts/comp0 ),
        .comp1(\gwss.wsts/comp1 ),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .p_1_out(p_1_out),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .ram_rd_en_i(ram_rd_en_i),
        .rst_full_gen_i(rst_full_gen_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(\grss.rsts/c1/v1_reg ),
        .v1_reg_0(\grss.rsts/c2/v1_reg ));
fill_num_axis_data_fifowr_logic \gntv_or_sync_fifo.gl0.wr 
       (.AR(RST),
        .E(p_3_out),
        .I1(\n_0_gntv_or_sync_fifo.gl0.rd ),
        .I2(\n_28_gntv_or_sync_fifo.gl0.rd ),
        .O1(p_8_out),
        .O3(p_19_out[7:0]),
        .O4(rd_pntr_plus1),
        .Q(wr_pntr_plus1),
        .comp0(\gwss.wsts/comp0 ),
        .comp1(\gwss.wsts/comp1 ),
        .p_1_out(p_1_out),
        .ram_full_comb(\gwss.wsts/ram_full_comb ),
        .rst_d2(rst_d2),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(\grss.rsts/c1/v1_reg ),
        .v1_reg_0(\grss.rsts/c2/v1_reg ));
fill_num_axis_data_fifomemory \gntv_or_sync_fifo.mem 
       (.E(p_3_out),
        .I1(\n_31_gntv_or_sync_fifo.gl0.rd ),
        .O3(p_19_out),
        .Q(p_8_out),
        .m_axis_tdata(m_axis_tdata),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata));
fill_num_axis_data_fiforeset_blk_ramfifo rstblk
       (.AR(RST),
        .I1(I1),
        .Q({clear,n_4_rstblk}),
        .rst_d2(rst_d2),
        .rst_full_gen_i(rst_full_gen_i),
        .s_axis_aclk(s_axis_aclk));
endmodule

module fill_num_axis_data_fifofifo_generator_top
   (axis_rd_data_count,
    m_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_aclk,
    s_axis_tdata,
    I1);
  output [9:0]axis_rd_data_count;
  output [23:0]m_axis_tdata;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_axis_aclk;
  input [23:0]s_axis_tdata;
  input I1;

  wire I1;
  wire [9:0]axis_rd_data_count;
  wire [23:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

fill_num_axis_data_fifofifo_generator_ramfifo \grf.rf 
       (.I1(I1),
        .axis_data_count(axis_rd_data_count),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module fill_num_axis_data_fifofifo_generator_v11_0
   (axis_data_count,
    m_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_aclk,
    s_axis_tdata,
    I1);
  output [9:0]axis_data_count;
  output [23:0]m_axis_tdata;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_axis_aclk;
  input [23:0]s_axis_tdata;
  input I1;

  wire I1;
  wire [9:0]axis_data_count;
  wire [23:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

fill_num_axis_data_fifofifo_generator_v11_0_synth inst_fifo_gen
       (.I1(I1),
        .axis_data_count(axis_data_count),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module fill_num_axis_data_fifofifo_generator_v11_0_synth
   (axis_data_count,
    m_axis_tdata,
    s_axis_tready,
    m_axis_tvalid,
    m_axis_tready,
    s_axis_tvalid,
    s_axis_aclk,
    s_axis_tdata,
    I1);
  output [9:0]axis_data_count;
  output [23:0]m_axis_tdata;
  output s_axis_tready;
  output m_axis_tvalid;
  input m_axis_tready;
  input s_axis_tvalid;
  input s_axis_aclk;
  input [23:0]s_axis_tdata;
  input I1;

  wire I1;
  wire [9:0]axis_data_count;
  wire [23:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

fill_num_axis_data_fifofifo_generator_top \gaxis_fifo.gaxisf.axisf 
       (.I1(I1),
        .axis_rd_data_count(axis_data_count),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module fill_num_axis_data_fifomemory
   (m_axis_tdata,
    s_axis_aclk,
    ram_rd_en_i,
    E,
    O3,
    Q,
    s_axis_tdata,
    I1);
  output [23:0]m_axis_tdata;
  input s_axis_aclk;
  input ram_rd_en_i;
  input [0:0]E;
  input [8:0]O3;
  input [8:0]Q;
  input [23:0]s_axis_tdata;
  input [0:0]I1;

  wire \<const0> ;
  wire [0:0]E;
  wire [0:0]I1;
  wire [8:0]O3;
  wire [8:0]Q;
  wire [23:0]doutb;
  wire [23:0]m_axis_tdata;
  wire ram_rd_en_i;
  wire s_axis_aclk;
  wire [23:0]s_axis_tdata;

GND GND
       (.G(\<const0> ));
fill_num_axis_data_fifoblk_mem_gen_v8_1__parameterized0 \gbm.gbmg.gbmga.ngecc.bmg 
       (.D(doutb),
        .E(E),
        .O3(O3),
        .Q(Q),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tdata(s_axis_tdata));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[0] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[0]),
        .Q(m_axis_tdata[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[10] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[10]),
        .Q(m_axis_tdata[10]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[11] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[11]),
        .Q(m_axis_tdata[11]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[12] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[12]),
        .Q(m_axis_tdata[12]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[13] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[13]),
        .Q(m_axis_tdata[13]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[14] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[14]),
        .Q(m_axis_tdata[14]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[15] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[15]),
        .Q(m_axis_tdata[15]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[16] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[16]),
        .Q(m_axis_tdata[16]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[17] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[17]),
        .Q(m_axis_tdata[17]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[18] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[18]),
        .Q(m_axis_tdata[18]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[19] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[19]),
        .Q(m_axis_tdata[19]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[1] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[1]),
        .Q(m_axis_tdata[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[20] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[20]),
        .Q(m_axis_tdata[20]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[21] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[21]),
        .Q(m_axis_tdata[21]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[22] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[22]),
        .Q(m_axis_tdata[22]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[23] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[23]),
        .Q(m_axis_tdata[23]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[2] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[2]),
        .Q(m_axis_tdata[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[3] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[3]),
        .Q(m_axis_tdata[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[4] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[4]),
        .Q(m_axis_tdata[4]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[5] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[5]),
        .Q(m_axis_tdata[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[6] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[6]),
        .Q(m_axis_tdata[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[7] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[7]),
        .Q(m_axis_tdata[7]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[8] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[8]),
        .Q(m_axis_tdata[8]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \goreg_bm.dout_i_reg[9] 
       (.C(s_axis_aclk),
        .CE(I1),
        .D(doutb[9]),
        .Q(m_axis_tdata[9]),
        .R(\<const0> ));
endmodule

module fill_num_axis_data_fiford_bin_cntr
   (O1,
    O3,
    O2,
    O5,
    ram_full_comb,
    O4,
    Q,
    I1,
    I2,
    comp0,
    rst_full_gen_i,
    E,
    comp1,
    s_axis_tvalid,
    p_1_out,
    p_17_out,
    comp0_0,
    comp1_1,
    s_axis_aclk,
    I3);
  output O1;
  output [8:0]O3;
  output O2;
  output O5;
  output ram_full_comb;
  output O4;
  output [7:0]Q;
  input [0:0]I1;
  input [0:0]I2;
  input comp0;
  input rst_full_gen_i;
  input [0:0]E;
  input comp1;
  input s_axis_tvalid;
  input p_1_out;
  input p_17_out;
  input comp0_0;
  input comp1_1;
  input s_axis_aclk;
  input [0:0]I3;

  wire [0:0]E;
  wire [0:0]I1;
  wire [0:0]I2;
  wire [0:0]I3;
  wire O1;
  wire O2;
  wire [8:0]O3;
  wire O4;
  wire O5;
  wire [7:0]Q;
  wire comp0;
  wire comp0_0;
  wire comp1;
  wire comp1_1;
  wire \n_0_gc0.count[8]_i_2 ;
  wire p_17_out;
  wire p_1_out;
  wire [8:0]plusOp;
  wire ram_full_comb;
  wire [8:8]rd_pntr_plus1;
  wire rst_full_gen_i;
  wire s_axis_aclk;
  wire s_axis_tvalid;

LUT1 #(
    .INIT(2'h1)) 
     \gc0.count[0]_i_1 
       (.I0(Q[0]),
        .O(plusOp[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gc0.count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(plusOp[1]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(plusOp[2]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(plusOp[3]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gc0.count[4]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(plusOp[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gc0.count[5]_i_1 
       (.I0(Q[2]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(plusOp[5]));
LUT3 #(
    .INIT(8'h78)) 
     \gc0.count[6]_i_1 
       (.I0(\n_0_gc0.count[8]_i_2 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(plusOp[6]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gc0.count[7]_i_1 
       (.I0(\n_0_gc0.count[8]_i_2 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(plusOp[7]));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gc0.count[8]_i_1 
       (.I0(\n_0_gc0.count[8]_i_2 ),
        .I1(Q[6]),
        .I2(Q[7]),
        .I3(Q[5]),
        .I4(rd_pntr_plus1),
        .O(plusOp[8]));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \gc0.count[8]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[4]),
        .I4(Q[2]),
        .O(\n_0_gc0.count[8]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[0] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[0]),
        .Q(O3[0]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[1] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[1]),
        .Q(O3[1]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[2] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[2]),
        .Q(O3[2]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[3] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[3]),
        .Q(O3[3]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[4] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[4]),
        .Q(O3[4]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[5] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[5]),
        .Q(O3[5]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[6] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[6]),
        .Q(O3[6]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[7] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(Q[7]),
        .Q(O3[7]));
FDCE #(
    .INIT(1'b0)) 
     \gc0.count_d1_reg[8] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(rd_pntr_plus1),
        .Q(O3[8]));
(* counter = "4" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gc0.count_reg[0] 
       (.C(s_axis_aclk),
        .CE(E),
        .D(plusOp[0]),
        .PRE(I3),
        .Q(Q[0]));
(* counter = "4" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[1] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp[1]),
        .Q(Q[1]));
(* counter = "4" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[2] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp[2]),
        .Q(Q[2]));
(* counter = "4" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[3] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp[3]),
        .Q(Q[3]));
(* counter = "4" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[4] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp[4]),
        .Q(Q[4]));
(* counter = "4" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[5] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp[5]),
        .Q(Q[5]));
(* counter = "4" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[6] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp[6]),
        .Q(Q[6]));
(* counter = "4" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[7] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp[7]),
        .Q(Q[7]));
(* counter = "4" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gc0.count_reg[8] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(I3),
        .D(plusOp[8]),
        .Q(rd_pntr_plus1));
LUT2 #(
    .INIT(4'h9)) 
     \gmux.gm[4].gms.ms_i_1 
       (.I0(O3[8]),
        .I1(I1),
        .O(O1));
LUT2 #(
    .INIT(4'h9)) 
     \gmux.gm[4].gms.ms_i_1__0 
       (.I0(rd_pntr_plus1),
        .I1(I1),
        .O(O2));
LUT2 #(
    .INIT(4'h9)) 
     \gmux.gm[4].gms.ms_i_1__1 
       (.I0(O3[8]),
        .I1(I2),
        .O(O5));
LUT6 #(
    .INIT(64'hFAFA22FAAAAA22AA)) 
     ram_empty_fb_i_i_1
       (.I0(p_17_out),
        .I1(comp0_0),
        .I2(E),
        .I3(s_axis_tvalid),
        .I4(p_1_out),
        .I5(comp1_1),
        .O(O4));
LUT6 #(
    .INIT(64'h131313130F000000)) 
     ram_full_fb_i_i_1
       (.I0(comp0),
        .I1(rst_full_gen_i),
        .I2(E),
        .I3(comp1),
        .I4(s_axis_tvalid),
        .I5(p_1_out),
        .O(ram_full_comb));
endmodule

module fill_num_axis_data_fiford_fwft
   (S,
    E,
    DI,
    ram_rd_en_i,
    O1,
    O3,
    m_axis_tvalid,
    s_axis_aclk,
    Q,
    m_axis_tready,
    O2,
    s_axis_tvalid,
    p_1_out,
    p_17_out);
  output [1:0]S;
  output [0:0]E;
  output [1:0]DI;
  output ram_rd_en_i;
  output [0:0]O1;
  output [0:0]O3;
  output m_axis_tvalid;
  input s_axis_aclk;
  input [1:0]Q;
  input m_axis_tready;
  input [1:0]O2;
  input s_axis_tvalid;
  input p_1_out;
  input p_17_out;

  wire \<const1> ;
  wire [1:0]DI;
  wire [0:0]E;
  wire [0:0]O1;
  wire [1:0]O2;
  wire [0:0]O3;
  wire [1:0]Q;
  wire [1:0]S;
  wire [0:0]curr_fwft_state;
  wire empty_fwft_fb;
  wire empty_fwft_i;
  wire empty_fwft_i0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_0_gpregsm1.curr_fwft_state_reg[1] ;
  wire [1:0]next_fwft_state;
  wire p_17_out;
  wire p_1_out;
  wire ram_rd_en_i;
  wire s_axis_aclk;
  wire s_axis_tvalid;
  wire valid_fwft;

LUT4 #(
    .INIT(16'h00DF)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1 
       (.I0(curr_fwft_state),
        .I1(m_axis_tready),
        .I2(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I3(p_17_out),
        .O(ram_rd_en_i));
VCC VCC
       (.P(\<const1> ));
LUT2 #(
    .INIT(4'h7)) 
     \count[3]_i_2 
       (.I0(m_axis_tready),
        .I1(valid_fwft),
        .O(DI[1]));
LUT2 #(
    .INIT(4'h8)) 
     \count[3]_i_3 
       (.I0(valid_fwft),
        .I1(m_axis_tready),
        .O(DI[0]));
LUT3 #(
    .INIT(8'h78)) 
     \count[3]_i_5 
       (.I0(valid_fwft),
        .I1(m_axis_tready),
        .I2(O2[1]),
        .O(S[1]));
LUT3 #(
    .INIT(8'h78)) 
     \count[3]_i_6 
       (.I0(valid_fwft),
        .I1(m_axis_tready),
        .I2(O2[0]),
        .O(S[0]));
LUT4 #(
    .INIT(16'h8878)) 
     \count[9]_i_1 
       (.I0(valid_fwft),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(p_1_out),
        .O(E));
LUT4 #(
    .INIT(16'h88EA)) 
     empty_fwft_fb_i_1
       (.I0(empty_fwft_fb),
        .I1(curr_fwft_state),
        .I2(m_axis_tready),
        .I3(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .O(empty_fwft_i0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_fb_reg
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_fb));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     empty_fwft_i_reg
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(empty_fwft_i0),
        .PRE(Q[1]),
        .Q(empty_fwft_i));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h00DF)) 
     \gc0.count_d1[8]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(m_axis_tready),
        .I2(curr_fwft_state),
        .I3(p_17_out),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h4404)) 
     \goreg_bm.dout_i[23]_i_1 
       (.I0(Q[0]),
        .I1(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I2(curr_fwft_state),
        .I3(m_axis_tready),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hAE)) 
     \gpregsm1.curr_fwft_state[0]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(curr_fwft_state),
        .I2(m_axis_tready),
        .O(next_fwft_state[0]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h20FF)) 
     \gpregsm1.curr_fwft_state[1]_i_1 
       (.I0(\n_0_gpregsm1.curr_fwft_state_reg[1] ),
        .I1(m_axis_tready),
        .I2(curr_fwft_state),
        .I3(p_17_out),
        .O(next_fwft_state[1]));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[0] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(curr_fwft_state));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.curr_fwft_state_reg[1] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q[1]),
        .D(next_fwft_state[1]),
        .Q(\n_0_gpregsm1.curr_fwft_state_reg[1] ));
(* equivalent_register_removal = "no" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gpregsm1.user_valid_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .CLR(Q[1]),
        .D(next_fwft_state[0]),
        .Q(valid_fwft));
LUT1 #(
    .INIT(2'h1)) 
     m_axis_tvalid_INST_0
       (.I0(empty_fwft_i),
        .O(m_axis_tvalid));
endmodule

module fill_num_axis_data_fiford_logic
   (O1,
    O2,
    O3,
    O4,
    O5,
    ram_full_comb,
    ram_rd_en_i,
    E,
    m_axis_tvalid,
    v1_reg,
    v1_reg_0,
    s_axis_aclk,
    Q,
    m_axis_tready,
    s_axis_tvalid,
    p_1_out,
    I1,
    I2,
    comp0,
    rst_full_gen_i,
    comp1);
  output O1;
  output [9:0]O2;
  output [8:0]O3;
  output [7:0]O4;
  output O5;
  output ram_full_comb;
  output ram_rd_en_i;
  output [0:0]E;
  output m_axis_tvalid;
  input [3:0]v1_reg;
  input [3:0]v1_reg_0;
  input s_axis_aclk;
  input [1:0]Q;
  input m_axis_tready;
  input s_axis_tvalid;
  input p_1_out;
  input [0:0]I1;
  input [0:0]I2;
  input comp0;
  input rst_full_gen_i;
  input comp1;

  wire [0:0]E;
  wire [0:0]I1;
  wire [0:0]I2;
  wire O1;
  wire [9:0]O2;
  wire [8:0]O3;
  wire [7:0]O4;
  wire O5;
  wire [1:0]Q;
  wire comp0;
  wire comp0_1;
  wire comp1;
  wire comp1_0;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire \n_0_gr1.rfwft ;
  wire n_10_rpntr;
  wire n_13_rpntr;
  wire \n_1_gr1.rfwft ;
  wire \n_2_gr1.rfwft ;
  wire \n_3_gr1.rfwft ;
  wire p_13_out;
  wire p_17_out;
  wire p_1_out;
  wire ram_full_comb;
  wire ram_rd_en_i;
  wire ram_rd_en_temp;
  wire rst_full_gen_i;
  wire s_axis_aclk;
  wire s_axis_tvalid;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;

fill_num_axis_data_fifodc_ss_fwft \gr1.gdcf.dc 
       (.DI({\n_3_gr1.rfwft ,ram_rd_en_temp}),
        .E(\n_2_gr1.rfwft ),
        .O2(O2),
        .Q(Q[1]),
        .S({\n_0_gr1.rfwft ,\n_1_gr1.rfwft }),
        .s_axis_aclk(s_axis_aclk));
fill_num_axis_data_fiford_fwft \gr1.rfwft 
       (.DI({\n_3_gr1.rfwft ,ram_rd_en_temp}),
        .E(\n_2_gr1.rfwft ),
        .O1(p_13_out),
        .O2(O2[2:1]),
        .O3(E),
        .Q(Q),
        .S({\n_0_gr1.rfwft ,\n_1_gr1.rfwft }),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .p_17_out(p_17_out),
        .p_1_out(p_1_out),
        .ram_rd_en_i(ram_rd_en_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tvalid(s_axis_tvalid));
fill_num_axis_data_fiford_status_flags_ss \grss.rsts 
       (.I1(n_10_rpntr),
        .I2(n_13_rpntr),
        .O1(O1),
        .Q(Q[1]),
        .comp0(comp0_1),
        .comp1(comp1_0),
        .p_17_out(p_17_out),
        .s_axis_aclk(s_axis_aclk),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0));
fill_num_axis_data_fiford_bin_cntr rpntr
       (.E(p_13_out),
        .I1(I1),
        .I2(I2),
        .I3(Q[1]),
        .O1(O1),
        .O2(n_10_rpntr),
        .O3(O3),
        .O4(n_13_rpntr),
        .O5(O5),
        .Q(O4),
        .comp0(comp0),
        .comp0_0(comp0_1),
        .comp1(comp1),
        .comp1_1(comp1_0),
        .p_17_out(p_17_out),
        .p_1_out(p_1_out),
        .ram_full_comb(ram_full_comb),
        .rst_full_gen_i(rst_full_gen_i),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module fill_num_axis_data_fiford_status_flags_ss
   (comp0,
    comp1,
    p_17_out,
    v1_reg,
    O1,
    v1_reg_0,
    I1,
    I2,
    s_axis_aclk,
    Q);
  output comp0;
  output comp1;
  output p_17_out;
  input [3:0]v1_reg;
  input O1;
  input [3:0]v1_reg_0;
  input I1;
  input I2;
  input s_axis_aclk;
  input [0:0]Q;

  wire \<const1> ;
  wire I1;
  wire I2;
  wire O1;
  wire [0:0]Q;
  wire comp0;
  wire comp1;
  wire p_17_out;
  wire s_axis_aclk;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;

VCC VCC
       (.P(\<const1> ));
fill_num_axis_data_fifocompare_1 c1
       (.O1(O1),
        .comp0(comp0),
        .v1_reg(v1_reg));
fill_num_axis_data_fifocompare_2 c2
       (.I1(I1),
        .comp1(comp1),
        .v1_reg_0(v1_reg_0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_empty_fb_i_reg
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(I2),
        .PRE(Q),
        .Q(p_17_out));
endmodule

module fill_num_axis_data_fiforeset_blk_ramfifo
   (rst_full_gen_i,
    AR,
    rst_d2,
    Q,
    s_axis_aclk,
    I1);
  output rst_full_gen_i;
  output [0:0]AR;
  output rst_d2;
  output [1:0]Q;
  input s_axis_aclk;
  input I1;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]AR;
  wire I1;
  wire [1:0]Q;
  wire inverted_reset;
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
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d1_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(inverted_reset),
        .Q(rst_d1));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d2_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(rst_d1),
        .PRE(inverted_reset),
        .Q(rst_d2));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b1)) 
     \grstd1.grst_full.grst_f.rst_d3_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(rst_d2),
        .PRE(inverted_reset),
        .Q(rst_d3));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(rd_rst_asreg),
        .Q(rd_rst_asreg_d1),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg 
       (.C(s_axis_aclk),
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
   (* msgon = "true" *) 
   FDPE \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg 
       (.C(s_axis_aclk),
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
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[0]));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1 ),
        .Q(Q[1]));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(wr_rst_asreg),
        .Q(wr_rst_asreg_d1),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
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
   (* msgon = "true" *) 
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
     \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1] 
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(\n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1 ),
        .Q(AR));
endmodule

module fill_num_axis_data_fifoupdn_cntr
   (O2,
    DI,
    S,
    E,
    s_axis_aclk,
    Q);
  output [9:0]O2;
  input [1:0]DI;
  input [1:0]S;
  input [0:0]E;
  input s_axis_aclk;
  input [0:0]Q;

  wire \<const0> ;
  wire [1:0]DI;
  wire [0:0]E;
  wire [9:0]O2;
  wire [0:0]Q;
  wire [1:0]S;
  wire \n_0_count[3]_i_4 ;
  wire \n_0_count[3]_i_7 ;
  wire \n_0_count[7]_i_2 ;
  wire \n_0_count[7]_i_3 ;
  wire \n_0_count[7]_i_4 ;
  wire \n_0_count[7]_i_5 ;
  wire \n_0_count[9]_i_3 ;
  wire \n_0_count[9]_i_4 ;
  wire \n_0_count_reg[3]_i_1 ;
  wire \n_0_count_reg[7]_i_1 ;
  wire \n_1_count_reg[3]_i_1 ;
  wire \n_1_count_reg[7]_i_1 ;
  wire \n_2_count_reg[3]_i_1 ;
  wire \n_2_count_reg[7]_i_1 ;
  wire \n_3_count_reg[3]_i_1 ;
  wire \n_3_count_reg[7]_i_1 ;
  wire \n_3_count_reg[9]_i_2 ;
  wire \n_4_count_reg[3]_i_1 ;
  wire \n_4_count_reg[7]_i_1 ;
  wire \n_5_count_reg[3]_i_1 ;
  wire \n_5_count_reg[7]_i_1 ;
  wire \n_6_count_reg[3]_i_1 ;
  wire \n_6_count_reg[7]_i_1 ;
  wire \n_6_count_reg[9]_i_2 ;
  wire \n_7_count_reg[3]_i_1 ;
  wire \n_7_count_reg[7]_i_1 ;
  wire \n_7_count_reg[9]_i_2 ;
  wire s_axis_aclk;
  wire [3:1]\NLW_count_reg[9]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_reg[9]_i_2_O_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
LUT2 #(
    .INIT(4'h9)) 
     \count[3]_i_4 
       (.I0(O2[2]),
        .I1(O2[3]),
        .O(\n_0_count[3]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \count[3]_i_7 
       (.I0(O2[0]),
        .O(\n_0_count[3]_i_7 ));
LUT2 #(
    .INIT(4'h9)) 
     \count[7]_i_2 
       (.I0(O2[6]),
        .I1(O2[7]),
        .O(\n_0_count[7]_i_2 ));
LUT2 #(
    .INIT(4'h9)) 
     \count[7]_i_3 
       (.I0(O2[5]),
        .I1(O2[6]),
        .O(\n_0_count[7]_i_3 ));
LUT2 #(
    .INIT(4'h9)) 
     \count[7]_i_4 
       (.I0(O2[4]),
        .I1(O2[5]),
        .O(\n_0_count[7]_i_4 ));
LUT2 #(
    .INIT(4'h9)) 
     \count[7]_i_5 
       (.I0(O2[3]),
        .I1(O2[4]),
        .O(\n_0_count[7]_i_5 ));
LUT2 #(
    .INIT(4'h9)) 
     \count[9]_i_3 
       (.I0(O2[8]),
        .I1(O2[9]),
        .O(\n_0_count[9]_i_3 ));
LUT2 #(
    .INIT(4'h9)) 
     \count[9]_i_4 
       (.I0(O2[7]),
        .I1(O2[8]),
        .O(\n_0_count[9]_i_4 ));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \count_reg[0] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(Q),
        .D(\n_7_count_reg[3]_i_1 ),
        .Q(O2[0]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \count_reg[1] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(Q),
        .D(\n_6_count_reg[3]_i_1 ),
        .Q(O2[1]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \count_reg[2] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(Q),
        .D(\n_5_count_reg[3]_i_1 ),
        .Q(O2[2]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \count_reg[3] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(Q),
        .D(\n_4_count_reg[3]_i_1 ),
        .Q(O2[3]));
CARRY4 \count_reg[3]_i_1 
       (.CI(\<const0> ),
        .CO({\n_0_count_reg[3]_i_1 ,\n_1_count_reg[3]_i_1 ,\n_2_count_reg[3]_i_1 ,\n_3_count_reg[3]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({O2[2],DI,O2[0]}),
        .O({\n_4_count_reg[3]_i_1 ,\n_5_count_reg[3]_i_1 ,\n_6_count_reg[3]_i_1 ,\n_7_count_reg[3]_i_1 }),
        .S({\n_0_count[3]_i_4 ,S,\n_0_count[3]_i_7 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \count_reg[4] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(Q),
        .D(\n_7_count_reg[7]_i_1 ),
        .Q(O2[4]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \count_reg[5] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(Q),
        .D(\n_6_count_reg[7]_i_1 ),
        .Q(O2[5]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \count_reg[6] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(Q),
        .D(\n_5_count_reg[7]_i_1 ),
        .Q(O2[6]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \count_reg[7] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(Q),
        .D(\n_4_count_reg[7]_i_1 ),
        .Q(O2[7]));
CARRY4 \count_reg[7]_i_1 
       (.CI(\n_0_count_reg[3]_i_1 ),
        .CO({\n_0_count_reg[7]_i_1 ,\n_1_count_reg[7]_i_1 ,\n_2_count_reg[7]_i_1 ,\n_3_count_reg[7]_i_1 }),
        .CYINIT(\<const0> ),
        .DI(O2[6:3]),
        .O({\n_4_count_reg[7]_i_1 ,\n_5_count_reg[7]_i_1 ,\n_6_count_reg[7]_i_1 ,\n_7_count_reg[7]_i_1 }),
        .S({\n_0_count[7]_i_2 ,\n_0_count[7]_i_3 ,\n_0_count[7]_i_4 ,\n_0_count[7]_i_5 }));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \count_reg[8] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(Q),
        .D(\n_7_count_reg[9]_i_2 ),
        .Q(O2[8]));
(* counter = "3" *) 
   FDCE #(
    .INIT(1'b0)) 
     \count_reg[9] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(Q),
        .D(\n_6_count_reg[9]_i_2 ),
        .Q(O2[9]));
CARRY4 \count_reg[9]_i_2 
       (.CI(\n_0_count_reg[7]_i_1 ),
        .CO({\NLW_count_reg[9]_i_2_CO_UNCONNECTED [3:1],\n_3_count_reg[9]_i_2 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,O2[7]}),
        .O({\NLW_count_reg[9]_i_2_O_UNCONNECTED [3:2],\n_6_count_reg[9]_i_2 ,\n_7_count_reg[9]_i_2 }),
        .S({\<const0> ,\<const0> ,\n_0_count[9]_i_3 ,\n_0_count[9]_i_4 }));
endmodule

module fill_num_axis_data_fifowr_bin_cntr
   (Q,
    v1_reg,
    O1,
    v1_reg_1,
    v1_reg_0,
    v1_reg_2,
    O3,
    O4,
    E,
    s_axis_aclk,
    AR);
  output [0:0]Q;
  output [3:0]v1_reg;
  output [8:0]O1;
  output [3:0]v1_reg_1;
  output [3:0]v1_reg_0;
  output [3:0]v1_reg_2;
  input [7:0]O3;
  input [7:0]O4;
  input [0:0]E;
  input s_axis_aclk;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire [8:0]O1;
  wire [7:0]O3;
  wire [7:0]O4;
  wire [0:0]Q;
  wire \n_0_gcc0.gc0.count[8]_i_2 ;
  wire [8:0]plusOp__0;
  wire s_axis_aclk;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;
  wire [3:0]v1_reg_1;
  wire [3:0]v1_reg_2;
  wire [7:0]wr_pntr_plus1;

LUT1 #(
    .INIT(2'h1)) 
     \gcc0.gc0.count[0]_i_1 
       (.I0(wr_pntr_plus1[0]),
        .O(plusOp__0[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gcc0.gc0.count[1]_i_1 
       (.I0(wr_pntr_plus1[0]),
        .I1(wr_pntr_plus1[1]),
        .O(plusOp__0[1]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gcc0.gc0.count[2]_i_1 
       (.I0(wr_pntr_plus1[0]),
        .I1(wr_pntr_plus1[1]),
        .I2(wr_pntr_plus1[2]),
        .O(plusOp__0[2]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gcc0.gc0.count[3]_i_1 
       (.I0(wr_pntr_plus1[2]),
        .I1(wr_pntr_plus1[1]),
        .I2(wr_pntr_plus1[0]),
        .I3(wr_pntr_plus1[3]),
        .O(plusOp__0[3]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gcc0.gc0.count[4]_i_1 
       (.I0(wr_pntr_plus1[1]),
        .I1(wr_pntr_plus1[0]),
        .I2(wr_pntr_plus1[2]),
        .I3(wr_pntr_plus1[3]),
        .I4(wr_pntr_plus1[4]),
        .O(plusOp__0[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gcc0.gc0.count[5]_i_1 
       (.I0(wr_pntr_plus1[2]),
        .I1(wr_pntr_plus1[4]),
        .I2(wr_pntr_plus1[0]),
        .I3(wr_pntr_plus1[1]),
        .I4(wr_pntr_plus1[3]),
        .I5(wr_pntr_plus1[5]),
        .O(plusOp__0[5]));
LUT3 #(
    .INIT(8'h78)) 
     \gcc0.gc0.count[6]_i_1 
       (.I0(\n_0_gcc0.gc0.count[8]_i_2 ),
        .I1(wr_pntr_plus1[5]),
        .I2(wr_pntr_plus1[6]),
        .O(plusOp__0[6]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gcc0.gc0.count[7]_i_1 
       (.I0(\n_0_gcc0.gc0.count[8]_i_2 ),
        .I1(wr_pntr_plus1[5]),
        .I2(wr_pntr_plus1[6]),
        .I3(wr_pntr_plus1[7]),
        .O(plusOp__0[7]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gcc0.gc0.count[8]_i_1 
       (.I0(\n_0_gcc0.gc0.count[8]_i_2 ),
        .I1(wr_pntr_plus1[6]),
        .I2(wr_pntr_plus1[7]),
        .I3(wr_pntr_plus1[5]),
        .I4(Q),
        .O(plusOp__0[8]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \gcc0.gc0.count[8]_i_2 
       (.I0(wr_pntr_plus1[3]),
        .I1(wr_pntr_plus1[1]),
        .I2(wr_pntr_plus1[0]),
        .I3(wr_pntr_plus1[4]),
        .I4(wr_pntr_plus1[2]),
        .O(\n_0_gcc0.gc0.count[8]_i_2 ));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[0] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[0]),
        .Q(O1[0]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[1] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[1]),
        .Q(O1[1]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[2] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[2]),
        .Q(O1[2]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[3] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[3]),
        .Q(O1[3]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[4] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[4]),
        .Q(O1[4]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[5] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[5]),
        .Q(O1[5]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[6] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[6]),
        .Q(O1[6]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[7] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(wr_pntr_plus1[7]),
        .Q(O1[7]));
FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_d1_reg[8] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(Q),
        .Q(O1[8]));
(* counter = "5" *) 
   FDPE #(
    .INIT(1'b1)) 
     \gcc0.gc0.count_reg[0] 
       (.C(s_axis_aclk),
        .CE(E),
        .D(plusOp__0[0]),
        .PRE(AR),
        .Q(wr_pntr_plus1[0]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[1] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[1]),
        .Q(wr_pntr_plus1[1]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[2] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[2]),
        .Q(wr_pntr_plus1[2]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[3] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[3]),
        .Q(wr_pntr_plus1[3]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[4] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[4]),
        .Q(wr_pntr_plus1[4]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[5] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[5]),
        .Q(wr_pntr_plus1[5]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[6] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[6]),
        .Q(wr_pntr_plus1[6]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[7] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[7]),
        .Q(wr_pntr_plus1[7]));
(* counter = "5" *) 
   FDCE #(
    .INIT(1'b0)) 
     \gcc0.gc0.count_reg[8] 
       (.C(s_axis_aclk),
        .CE(E),
        .CLR(AR),
        .D(plusOp__0[8]),
        .Q(Q));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1 
       (.I0(O1[0]),
        .I1(O3[0]),
        .I2(O1[1]),
        .I3(O3[1]),
        .O(v1_reg[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__0 
       (.I0(O1[0]),
        .I1(O3[0]),
        .I2(O1[1]),
        .I3(O3[1]),
        .O(v1_reg_1[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__1 
       (.I0(O1[0]),
        .I1(O4[0]),
        .I2(O1[1]),
        .I3(O4[1]),
        .O(v1_reg_0[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[0].gm1.m1_i_1__2 
       (.I0(wr_pntr_plus1[0]),
        .I1(O3[0]),
        .I2(wr_pntr_plus1[1]),
        .I3(O3[1]),
        .O(v1_reg_2[0]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1 
       (.I0(O1[2]),
        .I1(O3[2]),
        .I2(O1[3]),
        .I3(O3[3]),
        .O(v1_reg[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__0 
       (.I0(O1[2]),
        .I1(O3[2]),
        .I2(O1[3]),
        .I3(O3[3]),
        .O(v1_reg_1[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__1 
       (.I0(O1[2]),
        .I1(O4[2]),
        .I2(O1[3]),
        .I3(O4[3]),
        .O(v1_reg_0[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[1].gms.ms_i_1__2 
       (.I0(wr_pntr_plus1[2]),
        .I1(O3[2]),
        .I2(wr_pntr_plus1[3]),
        .I3(O3[3]),
        .O(v1_reg_2[1]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1 
       (.I0(O1[4]),
        .I1(O3[4]),
        .I2(O1[5]),
        .I3(O3[5]),
        .O(v1_reg[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__0 
       (.I0(O1[4]),
        .I1(O3[4]),
        .I2(O1[5]),
        .I3(O3[5]),
        .O(v1_reg_1[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__1 
       (.I0(O1[4]),
        .I1(O4[4]),
        .I2(O1[5]),
        .I3(O4[5]),
        .O(v1_reg_0[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[2].gms.ms_i_1__2 
       (.I0(wr_pntr_plus1[4]),
        .I1(O3[4]),
        .I2(wr_pntr_plus1[5]),
        .I3(O3[5]),
        .O(v1_reg_2[2]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1 
       (.I0(O1[6]),
        .I1(O3[6]),
        .I2(O1[7]),
        .I3(O3[7]),
        .O(v1_reg[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__0 
       (.I0(O1[6]),
        .I1(O3[6]),
        .I2(O1[7]),
        .I3(O3[7]),
        .O(v1_reg_1[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__1 
       (.I0(O1[6]),
        .I1(O4[6]),
        .I2(O1[7]),
        .I3(O4[7]),
        .O(v1_reg_0[3]));
LUT4 #(
    .INIT(16'h9009)) 
     \gmux.gm[3].gms.ms_i_1__2 
       (.I0(wr_pntr_plus1[6]),
        .I1(O3[6]),
        .I2(wr_pntr_plus1[7]),
        .I3(O3[7]),
        .O(v1_reg_2[3]));
endmodule

module fill_num_axis_data_fifowr_logic
   (comp0,
    comp1,
    p_1_out,
    E,
    Q,
    v1_reg,
    O1,
    v1_reg_0,
    s_axis_tready,
    I1,
    I2,
    ram_full_comb,
    s_axis_aclk,
    rst_d2,
    s_axis_tvalid,
    O3,
    O4,
    AR);
  output comp0;
  output comp1;
  output p_1_out;
  output [0:0]E;
  output [0:0]Q;
  output [3:0]v1_reg;
  output [8:0]O1;
  output [3:0]v1_reg_0;
  output s_axis_tready;
  input I1;
  input I2;
  input ram_full_comb;
  input s_axis_aclk;
  input rst_d2;
  input s_axis_tvalid;
  input [7:0]O3;
  input [7:0]O4;
  input [0:0]AR;

  wire [0:0]AR;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [8:0]O1;
  wire [7:0]O3;
  wire [7:0]O4;
  wire [0:0]Q;
  wire [3:0]\c0/v1_reg ;
  wire [3:0]\c1/v1_reg ;
  wire comp0;
  wire comp1;
  wire p_1_out;
  wire ram_full_comb;
  wire rst_d2;
  wire s_axis_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;

fill_num_axis_data_fifowr_status_flags_ss \gwss.wsts 
       (.E(E),
        .I1(I1),
        .I2(I2),
        .comp0(comp0),
        .comp1(comp1),
        .p_1_out(p_1_out),
        .ram_full_comb(ram_full_comb),
        .rst_d2(rst_d2),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .v1_reg(\c0/v1_reg ),
        .v1_reg_0(\c1/v1_reg ));
fill_num_axis_data_fifowr_bin_cntr wpntr
       (.AR(AR),
        .E(E),
        .O1(O1),
        .O3(O3),
        .O4(O4),
        .Q(Q),
        .s_axis_aclk(s_axis_aclk),
        .v1_reg(v1_reg),
        .v1_reg_0(v1_reg_0),
        .v1_reg_1(\c0/v1_reg ),
        .v1_reg_2(\c1/v1_reg ));
endmodule

module fill_num_axis_data_fifowr_status_flags_ss
   (comp0,
    comp1,
    p_1_out,
    E,
    s_axis_tready,
    v1_reg,
    I1,
    v1_reg_0,
    I2,
    ram_full_comb,
    s_axis_aclk,
    rst_d2,
    s_axis_tvalid);
  output comp0;
  output comp1;
  output p_1_out;
  output [0:0]E;
  output s_axis_tready;
  input [3:0]v1_reg;
  input I1;
  input [3:0]v1_reg_0;
  input I2;
  input ram_full_comb;
  input s_axis_aclk;
  input rst_d2;
  input s_axis_tvalid;

  wire \<const1> ;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire comp0;
  wire comp1;
  wire p_1_out;
  wire ram_full_comb;
  wire ram_full_i;
  wire rst_d2;
  wire s_axis_aclk;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire [3:0]v1_reg;
  wire [3:0]v1_reg_0;

LUT2 #(
    .INIT(4'h2)) 
     \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2 
       (.I0(s_axis_tvalid),
        .I1(p_1_out),
        .O(E));
VCC VCC
       (.P(\<const1> ));
fill_num_axis_data_fifocompare c0
       (.I1(I1),
        .comp0(comp0),
        .v1_reg(v1_reg));
fill_num_axis_data_fifocompare_0 c1
       (.I2(I2),
        .comp1(comp1),
        .v1_reg_0(v1_reg_0));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_fb_i_reg
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(ram_full_comb),
        .PRE(rst_d2),
        .Q(p_1_out));
(* equivalent_register_removal = "no" *) 
   FDPE #(
    .INIT(1'b1)) 
     ram_full_i_reg
       (.C(s_axis_aclk),
        .CE(\<const1> ),
        .D(ram_full_comb),
        .PRE(rst_d2),
        .Q(ram_full_i));
LUT1 #(
    .INIT(2'h1)) 
     s_axis_tready_INST_0
       (.I0(ram_full_i),
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
