// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
// Date        : Wed Oct 29 16:47:19 2014
// Host        : 0602-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/VC709_IPbus_trigger1/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/TP_track_fit_fifo/TP_track_fit_fifo_funcsim.v
// Design      : TP_track_fit_fifo
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v12_0,Vivado 2014.2" *) (* CHECK_LICENSE_TYPE = "TP_track_fit_fifo,fifo_generator_v12_0,{}" *) 
(* core_generation_info = "TP_track_fit_fifo,fifo_generator_v12_0,{x_ipProduct=Vivado 2014.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=fifo_generator,x_ipVersion=12.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_COMMON_CLOCK=0,C_COUNT_TYPE=0,C_DATA_COUNT_WIDTH=10,C_DEFAULT_VALUE=BlankString,C_DIN_WIDTH=126,C_DOUT_RST_VAL=0,C_DOUT_WIDTH=126,C_ENABLE_RLOCS=0,C_FAMILY=virtex7,C_FULL_FLAGS_RST_VAL=0,C_HAS_ALMOST_EMPTY=0,C_HAS_ALMOST_FULL=0,C_HAS_BACKUP=0,C_HAS_DATA_COUNT=0,C_HAS_INT_CLK=0,C_HAS_MEMINIT_FILE=0,C_HAS_OVERFLOW=0,C_HAS_RD_DATA_COUNT=0,C_HAS_RD_RST=0,C_HAS_RST=1,C_HAS_SRST=0,C_HAS_UNDERFLOW=0,C_HAS_VALID=0,C_HAS_WR_ACK=0,C_HAS_WR_DATA_COUNT=0,C_HAS_WR_RST=0,C_IMPLEMENTATION_TYPE=6,C_INIT_WR_PNTR_VAL=0,C_MEMORY_TYPE=4,C_MIF_FILE_NAME=BlankString,C_OPTIMIZATION_MODE=0,C_OVERFLOW_LOW=0,C_PRELOAD_LATENCY=1,C_PRELOAD_REGS=0,C_PRIM_FIFO_TYPE=1kx36,C_PROG_EMPTY_THRESH_ASSERT_VAL=5,C_PROG_EMPTY_THRESH_NEGATE_VAL=6,C_PROG_EMPTY_TYPE=0,C_PROG_FULL_THRESH_ASSERT_VAL=1017,C_PROG_FULL_THRESH_NEGATE_VAL=1016,C_PROG_FULL_TYPE=0,C_RD_DATA_COUNT_WIDTH=10,C_RD_DEPTH=1024,C_RD_FREQ=1,C_RD_PNTR_WIDTH=10,C_UNDERFLOW_LOW=0,C_USE_DOUT_RST=0,C_USE_ECC=0,C_USE_EMBEDDED_REG=0,C_USE_PIPELINE_REG=0,C_POWER_SAVING_MODE=0,C_USE_FIFO16_FLAGS=0,C_USE_FWFT_DATA_COUNT=0,C_VALID_LOW=0,C_WR_ACK_LOW=0,C_WR_DATA_COUNT_WIDTH=10,C_WR_DEPTH=1024,C_WR_FREQ=1,C_WR_PNTR_WIDTH=10,C_WR_RESPONSE_LATENCY=1,C_MSGON_VAL=1,C_ENABLE_RST_SYNC=1,C_ERROR_INJECTION_TYPE=0,C_SYNCHRONIZER_STAGE=2,C_INTERFACE_TYPE=0,C_AXI_TYPE=1,C_HAS_AXI_WR_CHANNEL=1,C_HAS_AXI_RD_CHANNEL=1,C_HAS_SLAVE_CE=0,C_HAS_MASTER_CE=0,C_ADD_NGC_CONSTRAINT=0,C_USE_COMMON_OVERFLOW=0,C_USE_COMMON_UNDERFLOW=0,C_USE_DEFAULT_SETTINGS=0,C_AXI_ID_WIDTH=1,C_AXI_ADDR_WIDTH=32,C_AXI_DATA_WIDTH=64,C_AXI_LEN_WIDTH=8,C_AXI_LOCK_WIDTH=1,C_HAS_AXI_ID=0,C_HAS_AXI_AWUSER=0,C_HAS_AXI_WUSER=0,C_HAS_AXI_BUSER=0,C_HAS_AXI_ARUSER=0,C_HAS_AXI_RUSER=0,C_AXI_ARUSER_WIDTH=1,C_AXI_AWUSER_WIDTH=1,C_AXI_WUSER_WIDTH=1,C_AXI_BUSER_WIDTH=1,C_AXI_RUSER_WIDTH=1,C_HAS_AXIS_TDATA=1,C_HAS_AXIS_TID=0,C_HAS_AXIS_TDEST=0,C_HAS_AXIS_TUSER=1,C_HAS_AXIS_TREADY=1,C_HAS_AXIS_TLAST=0,C_HAS_AXIS_TSTRB=0,C_HAS_AXIS_TKEEP=0,C_AXIS_TDATA_WIDTH=8,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=4,C_AXIS_TSTRB_WIDTH=1,C_AXIS_TKEEP_WIDTH=1,C_WACH_TYPE=0,C_WDCH_TYPE=0,C_WRCH_TYPE=0,C_RACH_TYPE=0,C_RDCH_TYPE=0,C_AXIS_TYPE=0,C_IMPLEMENTATION_TYPE_WACH=1,C_IMPLEMENTATION_TYPE_WDCH=1,C_IMPLEMENTATION_TYPE_WRCH=1,C_IMPLEMENTATION_TYPE_RACH=1,C_IMPLEMENTATION_TYPE_RDCH=1,C_IMPLEMENTATION_TYPE_AXIS=1,C_APPLICATION_TYPE_WACH=0,C_APPLICATION_TYPE_WDCH=0,C_APPLICATION_TYPE_WRCH=0,C_APPLICATION_TYPE_RACH=0,C_APPLICATION_TYPE_RDCH=0,C_APPLICATION_TYPE_AXIS=0,C_PRIM_FIFO_TYPE_WACH=512x36,C_PRIM_FIFO_TYPE_WDCH=1kx36,C_PRIM_FIFO_TYPE_WRCH=512x36,C_PRIM_FIFO_TYPE_RACH=512x36,C_PRIM_FIFO_TYPE_RDCH=1kx36,C_PRIM_FIFO_TYPE_AXIS=1kx18,C_USE_ECC_WACH=0,C_USE_ECC_WDCH=0,C_USE_ECC_WRCH=0,C_USE_ECC_RACH=0,C_USE_ECC_RDCH=0,C_USE_ECC_AXIS=0,C_ERROR_INJECTION_TYPE_WACH=0,C_ERROR_INJECTION_TYPE_WDCH=0,C_ERROR_INJECTION_TYPE_WRCH=0,C_ERROR_INJECTION_TYPE_RACH=0,C_ERROR_INJECTION_TYPE_RDCH=0,C_ERROR_INJECTION_TYPE_AXIS=0,C_DIN_WIDTH_WACH=32,C_DIN_WIDTH_WDCH=64,C_DIN_WIDTH_WRCH=2,C_DIN_WIDTH_RACH=32,C_DIN_WIDTH_RDCH=64,C_DIN_WIDTH_AXIS=1,C_WR_DEPTH_WACH=16,C_WR_DEPTH_WDCH=1024,C_WR_DEPTH_WRCH=16,C_WR_DEPTH_RACH=16,C_WR_DEPTH_RDCH=1024,C_WR_DEPTH_AXIS=1024,C_WR_PNTR_WIDTH_WACH=4,C_WR_PNTR_WIDTH_WDCH=10,C_WR_PNTR_WIDTH_WRCH=4,C_WR_PNTR_WIDTH_RACH=4,C_WR_PNTR_WIDTH_RDCH=10,C_WR_PNTR_WIDTH_AXIS=10,C_HAS_DATA_COUNTS_WACH=0,C_HAS_DATA_COUNTS_WDCH=0,C_HAS_DATA_COUNTS_WRCH=0,C_HAS_DATA_COUNTS_RACH=0,C_HAS_DATA_COUNTS_RDCH=0,C_HAS_DATA_COUNTS_AXIS=0,C_HAS_PROG_FLAGS_WACH=0,C_HAS_PROG_FLAGS_WDCH=0,C_HAS_PROG_FLAGS_WRCH=0,C_HAS_PROG_FLAGS_RACH=0,C_HAS_PROG_FLAGS_RDCH=0,C_HAS_PROG_FLAGS_AXIS=0,C_PROG_FULL_TYPE_WACH=0,C_PROG_FULL_TYPE_WDCH=0,C_PROG_FULL_TYPE_WRCH=0,C_PROG_FULL_TYPE_RACH=0,C_PROG_FULL_TYPE_RDCH=0,C_PROG_FULL_TYPE_AXIS=0,C_PROG_FULL_THRESH_ASSERT_VAL_WACH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_WDCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_WRCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_RACH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_RDCH=1023,C_PROG_FULL_THRESH_ASSERT_VAL_AXIS=1023,C_PROG_EMPTY_TYPE_WACH=0,C_PROG_EMPTY_TYPE_WDCH=0,C_PROG_EMPTY_TYPE_WRCH=0,C_PROG_EMPTY_TYPE_RACH=0,C_PROG_EMPTY_TYPE_RDCH=0,C_PROG_EMPTY_TYPE_AXIS=0,C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH=1022,C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS=1022,C_REG_SLICE_MODE_WACH=0,C_REG_SLICE_MODE_WDCH=0,C_REG_SLICE_MODE_WRCH=0,C_REG_SLICE_MODE_RACH=0,C_REG_SLICE_MODE_RDCH=0,C_REG_SLICE_MODE_AXIS=0}" *) 
(* NotValidForBitStream *)
module TP_track_fit_fifo
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  input wr_clk;
  input rd_clk;
  input [125:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  output [125:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [125:0]din;
  wire [125:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [9:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [9:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [9:0]NLW_U0_wr_data_count_UNCONNECTED;

(* C_ADD_NGC_CONSTRAINT = "0" *) 
   (* C_APPLICATION_TYPE_AXIS = "0" *) 
   (* C_APPLICATION_TYPE_RACH = "0" *) 
   (* C_APPLICATION_TYPE_RDCH = "0" *) 
   (* C_APPLICATION_TYPE_WACH = "0" *) 
   (* C_APPLICATION_TYPE_WDCH = "0" *) 
   (* C_APPLICATION_TYPE_WRCH = "0" *) 
   (* C_AXIS_TDATA_WIDTH = "8" *) 
   (* C_AXIS_TDEST_WIDTH = "1" *) 
   (* C_AXIS_TID_WIDTH = "1" *) 
   (* C_AXIS_TKEEP_WIDTH = "1" *) 
   (* C_AXIS_TSTRB_WIDTH = "1" *) 
   (* C_AXIS_TUSER_WIDTH = "4" *) 
   (* C_AXIS_TYPE = "0" *) 
   (* C_AXI_ADDR_WIDTH = "32" *) 
   (* C_AXI_ARUSER_WIDTH = "1" *) 
   (* C_AXI_AWUSER_WIDTH = "1" *) 
   (* C_AXI_BUSER_WIDTH = "1" *) 
   (* C_AXI_DATA_WIDTH = "64" *) 
   (* C_AXI_ID_WIDTH = "1" *) 
   (* C_AXI_LEN_WIDTH = "8" *) 
   (* C_AXI_LOCK_WIDTH = "1" *) 
   (* C_AXI_RUSER_WIDTH = "1" *) 
   (* C_AXI_TYPE = "1" *) 
   (* C_AXI_WUSER_WIDTH = "1" *) 
   (* C_COMMON_CLOCK = "0" *) 
   (* C_COUNT_TYPE = "0" *) 
   (* C_DATA_COUNT_WIDTH = "10" *) 
   (* C_DEFAULT_VALUE = "BlankString" *) 
   (* C_DIN_WIDTH = "126" *) 
   (* C_DIN_WIDTH_AXIS = "1" *) 
   (* C_DIN_WIDTH_RACH = "32" *) 
   (* C_DIN_WIDTH_RDCH = "64" *) 
   (* C_DIN_WIDTH_WACH = "32" *) 
   (* C_DIN_WIDTH_WDCH = "64" *) 
   (* C_DIN_WIDTH_WRCH = "2" *) 
   (* C_DOUT_RST_VAL = "0" *) 
   (* C_DOUT_WIDTH = "126" *) 
   (* C_ENABLE_RLOCS = "0" *) 
   (* C_ENABLE_RST_SYNC = "1" *) 
   (* C_ERROR_INJECTION_TYPE = "0" *) 
   (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
   (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
   (* C_FAMILY = "virtex7" *) 
   (* C_FULL_FLAGS_RST_VAL = "0" *) 
   (* C_HAS_ALMOST_EMPTY = "0" *) 
   (* C_HAS_ALMOST_FULL = "0" *) 
   (* C_HAS_AXIS_TDATA = "1" *) 
   (* C_HAS_AXIS_TDEST = "0" *) 
   (* C_HAS_AXIS_TID = "0" *) 
   (* C_HAS_AXIS_TKEEP = "0" *) 
   (* C_HAS_AXIS_TLAST = "0" *) 
   (* C_HAS_AXIS_TREADY = "1" *) 
   (* C_HAS_AXIS_TSTRB = "0" *) 
   (* C_HAS_AXIS_TUSER = "1" *) 
   (* C_HAS_AXI_ARUSER = "0" *) 
   (* C_HAS_AXI_AWUSER = "0" *) 
   (* C_HAS_AXI_BUSER = "0" *) 
   (* C_HAS_AXI_ID = "0" *) 
   (* C_HAS_AXI_RD_CHANNEL = "1" *) 
   (* C_HAS_AXI_RUSER = "0" *) 
   (* C_HAS_AXI_WR_CHANNEL = "1" *) 
   (* C_HAS_AXI_WUSER = "0" *) 
   (* C_HAS_BACKUP = "0" *) 
   (* C_HAS_DATA_COUNT = "0" *) 
   (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
   (* C_HAS_DATA_COUNTS_RACH = "0" *) 
   (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WACH = "0" *) 
   (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
   (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
   (* C_HAS_INT_CLK = "0" *) 
   (* C_HAS_MASTER_CE = "0" *) 
   (* C_HAS_MEMINIT_FILE = "0" *) 
   (* C_HAS_OVERFLOW = "0" *) 
   (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
   (* C_HAS_PROG_FLAGS_RACH = "0" *) 
   (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WACH = "0" *) 
   (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
   (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
   (* C_HAS_RD_DATA_COUNT = "0" *) 
   (* C_HAS_RD_RST = "0" *) 
   (* C_HAS_RST = "1" *) 
   (* C_HAS_SLAVE_CE = "0" *) 
   (* C_HAS_SRST = "0" *) 
   (* C_HAS_UNDERFLOW = "0" *) 
   (* C_HAS_VALID = "0" *) 
   (* C_HAS_WR_ACK = "0" *) 
   (* C_HAS_WR_DATA_COUNT = "0" *) 
   (* C_HAS_WR_RST = "0" *) 
   (* C_IMPLEMENTATION_TYPE = "6" *) 
   (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
   (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
   (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
   (* C_INIT_WR_PNTR_VAL = "0" *) 
   (* C_INTERFACE_TYPE = "0" *) 
   (* C_MEMORY_TYPE = "4" *) 
   (* C_MIF_FILE_NAME = "BlankString" *) 
   (* C_MSGON_VAL = "1" *) 
   (* C_OPTIMIZATION_MODE = "0" *) 
   (* C_OVERFLOW_LOW = "0" *) 
   (* C_POWER_SAVING_MODE = "0" *) 
   (* C_PRELOAD_LATENCY = "1" *) 
   (* C_PRELOAD_REGS = "0" *) 
   (* C_PRIM_FIFO_TYPE = "1kx36" *) 
   (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
   (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
   (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
   (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
   (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
   (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) 
   (* C_PROG_EMPTY_TYPE = "0" *) 
   (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
   (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
   (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL = "1017" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
   (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
   (* C_PROG_FULL_THRESH_NEGATE_VAL = "1016" *) 
   (* C_PROG_FULL_TYPE = "0" *) 
   (* C_PROG_FULL_TYPE_AXIS = "0" *) 
   (* C_PROG_FULL_TYPE_RACH = "0" *) 
   (* C_PROG_FULL_TYPE_RDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WACH = "0" *) 
   (* C_PROG_FULL_TYPE_WDCH = "0" *) 
   (* C_PROG_FULL_TYPE_WRCH = "0" *) 
   (* C_RACH_TYPE = "0" *) 
   (* C_RDCH_TYPE = "0" *) 
   (* C_RD_DATA_COUNT_WIDTH = "10" *) 
   (* C_RD_DEPTH = "1024" *) 
   (* C_RD_FREQ = "1" *) 
   (* C_RD_PNTR_WIDTH = "10" *) 
   (* C_REG_SLICE_MODE_AXIS = "0" *) 
   (* C_REG_SLICE_MODE_RACH = "0" *) 
   (* C_REG_SLICE_MODE_RDCH = "0" *) 
   (* C_REG_SLICE_MODE_WACH = "0" *) 
   (* C_REG_SLICE_MODE_WDCH = "0" *) 
   (* C_REG_SLICE_MODE_WRCH = "0" *) 
   (* C_SYNCHRONIZER_STAGE = "2" *) 
   (* C_UNDERFLOW_LOW = "0" *) 
   (* C_USE_COMMON_OVERFLOW = "0" *) 
   (* C_USE_COMMON_UNDERFLOW = "0" *) 
   (* C_USE_DEFAULT_SETTINGS = "0" *) 
   (* C_USE_DOUT_RST = "0" *) 
   (* C_USE_ECC = "0" *) 
   (* C_USE_ECC_AXIS = "0" *) 
   (* C_USE_ECC_RACH = "0" *) 
   (* C_USE_ECC_RDCH = "0" *) 
   (* C_USE_ECC_WACH = "0" *) 
   (* C_USE_ECC_WDCH = "0" *) 
   (* C_USE_ECC_WRCH = "0" *) 
   (* C_USE_EMBEDDED_REG = "0" *) 
   (* C_USE_FIFO16_FLAGS = "0" *) 
   (* C_USE_FWFT_DATA_COUNT = "0" *) 
   (* C_USE_PIPELINE_REG = "0" *) 
   (* C_VALID_LOW = "0" *) 
   (* C_WACH_TYPE = "0" *) 
   (* C_WDCH_TYPE = "0" *) 
   (* C_WRCH_TYPE = "0" *) 
   (* C_WR_ACK_LOW = "0" *) 
   (* C_WR_DATA_COUNT_WIDTH = "10" *) 
   (* C_WR_DEPTH = "1024" *) 
   (* C_WR_DEPTH_AXIS = "1024" *) 
   (* C_WR_DEPTH_RACH = "16" *) 
   (* C_WR_DEPTH_RDCH = "1024" *) 
   (* C_WR_DEPTH_WACH = "16" *) 
   (* C_WR_DEPTH_WDCH = "1024" *) 
   (* C_WR_DEPTH_WRCH = "16" *) 
   (* C_WR_FREQ = "1" *) 
   (* C_WR_PNTR_WIDTH = "10" *) 
   (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
   (* C_WR_PNTR_WIDTH_RACH = "4" *) 
   (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WACH = "4" *) 
   (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
   (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
   (* C_WR_RESPONSE_LATENCY = "1" *) 
   TP_track_fit_fifo_fifo_generator_v12_0__parameterized0 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[9:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[9:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[9:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "builtin_extdepth_v6" *) 
module TP_track_fit_fifo_builtin_extdepth_v6
   (p_4_out,
    p_5_out,
    dout,
    O1,
    rd_clk,
    I1,
    rst_to_builtin,
    wr_clk,
    I2,
    din,
    I3,
    I4,
    rd_en,
    I5);
  output p_4_out;
  output p_5_out;
  output [35:0]dout;
  output O1;
  input rd_clk;
  input I1;
  input rst_to_builtin;
  input wr_clk;
  input I2;
  input [35:0]din;
  input I3;
  input I4;
  input rd_en;
  input I5;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire O1;
  wire [35:0]din;
  wire [35:0]dout;
  wire p_4_out;
  wire p_5_out;
  wire rd_clk;
  wire rd_en;
  wire rst_to_builtin;
  wire wr_clk;

TP_track_fit_fifo_builtin_prim_v6_5 \gonep.inst_prim 
       (.I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .O1(O1),
        .din(din),
        .dout(dout),
        .p_4_out(p_4_out),
        .p_5_out(p_5_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst_to_builtin(rst_to_builtin),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "builtin_extdepth_v6" *) 
module TP_track_fit_fifo_builtin_extdepth_v6_0
   (O1,
    O2,
    dout,
    O3,
    O4,
    O5,
    rd_clk,
    I1,
    rst_to_builtin,
    wr_clk,
    I2,
    din,
    I3,
    I4,
    rd_en,
    p_4_out);
  output O1;
  output O2;
  output [35:0]dout;
  output O3;
  output O4;
  output O5;
  input rd_clk;
  input I1;
  input rst_to_builtin;
  input wr_clk;
  input I2;
  input [35:0]din;
  input I3;
  input I4;
  input rd_en;
  input p_4_out;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire [35:0]din;
  wire [35:0]dout;
  wire p_4_out;
  wire rd_clk;
  wire rd_en;
  wire rst_to_builtin;
  wire wr_clk;

TP_track_fit_fifo_builtin_prim_v6_4 \gonep.inst_prim 
       (.I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .din(din),
        .dout(dout),
        .p_4_out(p_4_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst_to_builtin(rst_to_builtin),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "builtin_extdepth_v6" *) 
module TP_track_fit_fifo_builtin_extdepth_v6_1
   (O1,
    O2,
    dout,
    rd_clk,
    I1,
    rst_to_builtin,
    wr_clk,
    I2,
    din);
  output O1;
  output O2;
  output [35:0]dout;
  input rd_clk;
  input I1;
  input rst_to_builtin;
  input wr_clk;
  input I2;
  input [35:0]din;

  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire [35:0]din;
  wire [35:0]dout;
  wire rd_clk;
  wire rst_to_builtin;
  wire wr_clk;

TP_track_fit_fifo_builtin_prim_v6_3 \gonep.inst_prim 
       (.I1(I1),
        .I2(I2),
        .O1(O1),
        .O2(O2),
        .din(din),
        .dout(dout),
        .rd_clk(rd_clk),
        .rst_to_builtin(rst_to_builtin),
        .wr_clk(wr_clk));
endmodule

(* ORIG_REF_NAME = "builtin_extdepth_v6" *) 
module TP_track_fit_fifo_builtin_extdepth_v6_2
   (O1,
    O2,
    dout,
    O3,
    rd_clk,
    I1,
    rst_to_builtin,
    wr_clk,
    din,
    wr_en,
    I2,
    p_5_out,
    I3);
  output O1;
  output O2;
  output [17:0]dout;
  output O3;
  input rd_clk;
  input I1;
  input rst_to_builtin;
  input wr_clk;
  input [17:0]din;
  input wr_en;
  input I2;
  input p_5_out;
  input I3;

  wire I1;
  wire I2;
  wire I3;
  wire O1;
  wire O2;
  wire O3;
  wire [17:0]din;
  wire [17:0]dout;
  wire p_5_out;
  wire rd_clk;
  wire rst_to_builtin;
  wire wr_clk;
  wire wr_en;

TP_track_fit_fifo_builtin_prim_v6 \gonep.inst_prim 
       (.I1(I1),
        .I2(I2),
        .I3(I3),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .din(din),
        .dout(dout),
        .p_5_out(p_5_out),
        .rd_clk(rd_clk),
        .rst_to_builtin(rst_to_builtin),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "builtin_prim_v6" *) 
module TP_track_fit_fifo_builtin_prim_v6
   (O1,
    O2,
    dout,
    O3,
    rd_clk,
    I1,
    rst_to_builtin,
    wr_clk,
    din,
    wr_en,
    I2,
    p_5_out,
    I3);
  output O1;
  output O2;
  output [17:0]dout;
  output O3;
  input rd_clk;
  input I1;
  input rst_to_builtin;
  input wr_clk;
  input [17:0]din;
  input wr_en;
  input I2;
  input p_5_out;
  input I3;

  wire I1;
  wire I2;
  wire I3;
  wire O1;
  wire O2;
  wire O3;
  wire [17:0]din;
  wire [17:0]dout;
  wire \n_0_gf36e1_inst.sngfifo36e1 ;
  wire \n_102_gf36e1_inst.sngfifo36e1 ;
  wire \n_103_gf36e1_inst.sngfifo36e1 ;
  wire \n_104_gf36e1_inst.sngfifo36e1 ;
  wire \n_105_gf36e1_inst.sngfifo36e1 ;
  wire \n_11_gf36e1_inst.sngfifo36e1 ;
  wire \n_12_gf36e1_inst.sngfifo36e1 ;
  wire \n_13_gf36e1_inst.sngfifo36e1 ;
  wire \n_14_gf36e1_inst.sngfifo36e1 ;
  wire \n_15_gf36e1_inst.sngfifo36e1 ;
  wire \n_16_gf36e1_inst.sngfifo36e1 ;
  wire \n_17_gf36e1_inst.sngfifo36e1 ;
  wire \n_18_gf36e1_inst.sngfifo36e1 ;
  wire \n_19_gf36e1_inst.sngfifo36e1 ;
  wire \n_1_gf36e1_inst.sngfifo36e1 ;
  wire \n_20_gf36e1_inst.sngfifo36e1 ;
  wire \n_24_gf36e1_inst.sngfifo36e1 ;
  wire \n_25_gf36e1_inst.sngfifo36e1 ;
  wire \n_26_gf36e1_inst.sngfifo36e1 ;
  wire \n_27_gf36e1_inst.sngfifo36e1 ;
  wire \n_28_gf36e1_inst.sngfifo36e1 ;
  wire \n_29_gf36e1_inst.sngfifo36e1 ;
  wire \n_2_gf36e1_inst.sngfifo36e1 ;
  wire \n_30_gf36e1_inst.sngfifo36e1 ;
  wire \n_31_gf36e1_inst.sngfifo36e1 ;
  wire \n_32_gf36e1_inst.sngfifo36e1 ;
  wire \n_33_gf36e1_inst.sngfifo36e1 ;
  wire \n_5_gf36e1_inst.sngfifo36e1 ;
  wire \n_66_gf36e1_inst.sngfifo36e1 ;
  wire \n_67_gf36e1_inst.sngfifo36e1 ;
  wire \n_68_gf36e1_inst.sngfifo36e1 ;
  wire \n_69_gf36e1_inst.sngfifo36e1 ;
  wire \n_6_gf36e1_inst.sngfifo36e1 ;
  wire \n_70_gf36e1_inst.sngfifo36e1 ;
  wire \n_71_gf36e1_inst.sngfifo36e1 ;
  wire \n_72_gf36e1_inst.sngfifo36e1 ;
  wire \n_73_gf36e1_inst.sngfifo36e1 ;
  wire \n_74_gf36e1_inst.sngfifo36e1 ;
  wire \n_75_gf36e1_inst.sngfifo36e1 ;
  wire \n_76_gf36e1_inst.sngfifo36e1 ;
  wire \n_77_gf36e1_inst.sngfifo36e1 ;
  wire \n_78_gf36e1_inst.sngfifo36e1 ;
  wire \n_79_gf36e1_inst.sngfifo36e1 ;
  wire \n_7_gf36e1_inst.sngfifo36e1 ;
  wire p_5_out;
  wire rd_clk;
  wire rst_to_builtin;
  wire wr_clk;
  wire wr_en;
  wire [63:32]\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED ;
  wire [7:4]\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED ;
  wire [7:0]\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED ;
  wire [12:10]\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED ;
  wire [12:10]\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0005),
    .ALMOST_FULL_OFFSET(13'h0007),
    .DATA_WIDTH(36),
    .DO_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .EN_SYN("FALSE"),
    .FIFO_MODE("FIFO36"),
    .FIRST_WORD_FALL_THROUGH("FALSE"),
    .INIT(72'h000000000000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(72'h000000000000000000)) 
     \gf36e1_inst.sngfifo36e1 
       (.ALMOSTEMPTY(\n_0_gf36e1_inst.sngfifo36e1 ),
        .ALMOSTFULL(\n_1_gf36e1_inst.sngfifo36e1 ),
        .DBITERR(\n_2_gf36e1_inst.sngfifo36e1 ),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din}),
        .DIP({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO({\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED [63:32],\n_66_gf36e1_inst.sngfifo36e1 ,\n_67_gf36e1_inst.sngfifo36e1 ,\n_68_gf36e1_inst.sngfifo36e1 ,\n_69_gf36e1_inst.sngfifo36e1 ,\n_70_gf36e1_inst.sngfifo36e1 ,\n_71_gf36e1_inst.sngfifo36e1 ,\n_72_gf36e1_inst.sngfifo36e1 ,\n_73_gf36e1_inst.sngfifo36e1 ,\n_74_gf36e1_inst.sngfifo36e1 ,\n_75_gf36e1_inst.sngfifo36e1 ,\n_76_gf36e1_inst.sngfifo36e1 ,\n_77_gf36e1_inst.sngfifo36e1 ,\n_78_gf36e1_inst.sngfifo36e1 ,\n_79_gf36e1_inst.sngfifo36e1 ,dout}),
        .DOP({\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED [7:4],\n_102_gf36e1_inst.sngfifo36e1 ,\n_103_gf36e1_inst.sngfifo36e1 ,\n_104_gf36e1_inst.sngfifo36e1 ,\n_105_gf36e1_inst.sngfifo36e1 }),
        .ECCPARITY(\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED [7:0]),
        .EMPTY(O1),
        .FULL(O2),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDCLK(rd_clk),
        .RDCOUNT({\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED [12:10],\n_11_gf36e1_inst.sngfifo36e1 ,\n_12_gf36e1_inst.sngfifo36e1 ,\n_13_gf36e1_inst.sngfifo36e1 ,\n_14_gf36e1_inst.sngfifo36e1 ,\n_15_gf36e1_inst.sngfifo36e1 ,\n_16_gf36e1_inst.sngfifo36e1 ,\n_17_gf36e1_inst.sngfifo36e1 ,\n_18_gf36e1_inst.sngfifo36e1 ,\n_19_gf36e1_inst.sngfifo36e1 ,\n_20_gf36e1_inst.sngfifo36e1 }),
        .RDEN(I1),
        .RDERR(\n_5_gf36e1_inst.sngfifo36e1 ),
        .REGCE(1'b0),
        .RST(rst_to_builtin),
        .RSTREG(1'b0),
        .SBITERR(\n_6_gf36e1_inst.sngfifo36e1 ),
        .WRCLK(wr_clk),
        .WRCOUNT({\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED [12:10],\n_24_gf36e1_inst.sngfifo36e1 ,\n_25_gf36e1_inst.sngfifo36e1 ,\n_26_gf36e1_inst.sngfifo36e1 ,\n_27_gf36e1_inst.sngfifo36e1 ,\n_28_gf36e1_inst.sngfifo36e1 ,\n_29_gf36e1_inst.sngfifo36e1 ,\n_30_gf36e1_inst.sngfifo36e1 ,\n_31_gf36e1_inst.sngfifo36e1 ,\n_32_gf36e1_inst.sngfifo36e1 ,\n_33_gf36e1_inst.sngfifo36e1 }),
        .WREN(O3),
        .WRERR(\n_7_gf36e1_inst.sngfifo36e1 ));
LUT5 #(
    .INIT(32'h00000002)) 
     \gf36e1_inst.sngfifo36e1_i_3 
       (.I0(wr_en),
        .I1(O2),
        .I2(I2),
        .I3(p_5_out),
        .I4(I3),
        .O(O3));
endmodule

(* ORIG_REF_NAME = "builtin_prim_v6" *) 
module TP_track_fit_fifo_builtin_prim_v6_3
   (O1,
    O2,
    dout,
    rd_clk,
    I1,
    rst_to_builtin,
    wr_clk,
    I2,
    din);
  output O1;
  output O2;
  output [35:0]dout;
  input rd_clk;
  input I1;
  input rst_to_builtin;
  input wr_clk;
  input I2;
  input [35:0]din;

  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire [35:0]din;
  wire [35:0]dout;
  wire \n_0_gf36e1_inst.sngfifo36e1 ;
  wire \n_11_gf36e1_inst.sngfifo36e1 ;
  wire \n_12_gf36e1_inst.sngfifo36e1 ;
  wire \n_13_gf36e1_inst.sngfifo36e1 ;
  wire \n_14_gf36e1_inst.sngfifo36e1 ;
  wire \n_15_gf36e1_inst.sngfifo36e1 ;
  wire \n_16_gf36e1_inst.sngfifo36e1 ;
  wire \n_17_gf36e1_inst.sngfifo36e1 ;
  wire \n_18_gf36e1_inst.sngfifo36e1 ;
  wire \n_19_gf36e1_inst.sngfifo36e1 ;
  wire \n_1_gf36e1_inst.sngfifo36e1 ;
  wire \n_20_gf36e1_inst.sngfifo36e1 ;
  wire \n_24_gf36e1_inst.sngfifo36e1 ;
  wire \n_25_gf36e1_inst.sngfifo36e1 ;
  wire \n_26_gf36e1_inst.sngfifo36e1 ;
  wire \n_27_gf36e1_inst.sngfifo36e1 ;
  wire \n_28_gf36e1_inst.sngfifo36e1 ;
  wire \n_29_gf36e1_inst.sngfifo36e1 ;
  wire \n_2_gf36e1_inst.sngfifo36e1 ;
  wire \n_30_gf36e1_inst.sngfifo36e1 ;
  wire \n_31_gf36e1_inst.sngfifo36e1 ;
  wire \n_32_gf36e1_inst.sngfifo36e1 ;
  wire \n_33_gf36e1_inst.sngfifo36e1 ;
  wire \n_5_gf36e1_inst.sngfifo36e1 ;
  wire \n_6_gf36e1_inst.sngfifo36e1 ;
  wire \n_7_gf36e1_inst.sngfifo36e1 ;
  wire rd_clk;
  wire rst_to_builtin;
  wire wr_clk;
  wire [63:32]\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED ;
  wire [7:4]\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED ;
  wire [7:0]\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED ;
  wire [12:10]\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED ;
  wire [12:10]\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0005),
    .ALMOST_FULL_OFFSET(13'h0007),
    .DATA_WIDTH(36),
    .DO_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .EN_SYN("FALSE"),
    .FIFO_MODE("FIFO36"),
    .FIRST_WORD_FALL_THROUGH("FALSE"),
    .INIT(72'h000000000000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(72'h000000000000000000)) 
     \gf36e1_inst.sngfifo36e1 
       (.ALMOSTEMPTY(\n_0_gf36e1_inst.sngfifo36e1 ),
        .ALMOSTFULL(\n_1_gf36e1_inst.sngfifo36e1 ),
        .DBITERR(\n_2_gf36e1_inst.sngfifo36e1 ),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[31:0]}),
        .DIP({1'b0,1'b0,1'b0,1'b0,din[35:32]}),
        .DO({\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED [63:32],dout[31:0]}),
        .DOP({\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED [7:4],dout[35:32]}),
        .ECCPARITY(\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED [7:0]),
        .EMPTY(O1),
        .FULL(O2),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDCLK(rd_clk),
        .RDCOUNT({\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED [12:10],\n_11_gf36e1_inst.sngfifo36e1 ,\n_12_gf36e1_inst.sngfifo36e1 ,\n_13_gf36e1_inst.sngfifo36e1 ,\n_14_gf36e1_inst.sngfifo36e1 ,\n_15_gf36e1_inst.sngfifo36e1 ,\n_16_gf36e1_inst.sngfifo36e1 ,\n_17_gf36e1_inst.sngfifo36e1 ,\n_18_gf36e1_inst.sngfifo36e1 ,\n_19_gf36e1_inst.sngfifo36e1 ,\n_20_gf36e1_inst.sngfifo36e1 }),
        .RDEN(I1),
        .RDERR(\n_5_gf36e1_inst.sngfifo36e1 ),
        .REGCE(1'b0),
        .RST(rst_to_builtin),
        .RSTREG(1'b0),
        .SBITERR(\n_6_gf36e1_inst.sngfifo36e1 ),
        .WRCLK(wr_clk),
        .WRCOUNT({\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED [12:10],\n_24_gf36e1_inst.sngfifo36e1 ,\n_25_gf36e1_inst.sngfifo36e1 ,\n_26_gf36e1_inst.sngfifo36e1 ,\n_27_gf36e1_inst.sngfifo36e1 ,\n_28_gf36e1_inst.sngfifo36e1 ,\n_29_gf36e1_inst.sngfifo36e1 ,\n_30_gf36e1_inst.sngfifo36e1 ,\n_31_gf36e1_inst.sngfifo36e1 ,\n_32_gf36e1_inst.sngfifo36e1 ,\n_33_gf36e1_inst.sngfifo36e1 }),
        .WREN(I2),
        .WRERR(\n_7_gf36e1_inst.sngfifo36e1 ));
endmodule

(* ORIG_REF_NAME = "builtin_prim_v6" *) 
module TP_track_fit_fifo_builtin_prim_v6_4
   (O1,
    O2,
    dout,
    O3,
    O4,
    O5,
    rd_clk,
    I1,
    rst_to_builtin,
    wr_clk,
    I2,
    din,
    I3,
    I4,
    rd_en,
    p_4_out);
  output O1;
  output O2;
  output [35:0]dout;
  output O3;
  output O4;
  output O5;
  input rd_clk;
  input I1;
  input rst_to_builtin;
  input wr_clk;
  input I2;
  input [35:0]din;
  input I3;
  input I4;
  input rd_en;
  input p_4_out;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire [35:0]din;
  wire [35:0]dout;
  wire \n_0_gf36e1_inst.sngfifo36e1 ;
  wire \n_11_gf36e1_inst.sngfifo36e1 ;
  wire \n_12_gf36e1_inst.sngfifo36e1 ;
  wire \n_13_gf36e1_inst.sngfifo36e1 ;
  wire \n_14_gf36e1_inst.sngfifo36e1 ;
  wire \n_15_gf36e1_inst.sngfifo36e1 ;
  wire \n_16_gf36e1_inst.sngfifo36e1 ;
  wire \n_17_gf36e1_inst.sngfifo36e1 ;
  wire \n_18_gf36e1_inst.sngfifo36e1 ;
  wire \n_19_gf36e1_inst.sngfifo36e1 ;
  wire \n_1_gf36e1_inst.sngfifo36e1 ;
  wire \n_20_gf36e1_inst.sngfifo36e1 ;
  wire \n_24_gf36e1_inst.sngfifo36e1 ;
  wire \n_25_gf36e1_inst.sngfifo36e1 ;
  wire \n_26_gf36e1_inst.sngfifo36e1 ;
  wire \n_27_gf36e1_inst.sngfifo36e1 ;
  wire \n_28_gf36e1_inst.sngfifo36e1 ;
  wire \n_29_gf36e1_inst.sngfifo36e1 ;
  wire \n_2_gf36e1_inst.sngfifo36e1 ;
  wire \n_30_gf36e1_inst.sngfifo36e1 ;
  wire \n_31_gf36e1_inst.sngfifo36e1 ;
  wire \n_32_gf36e1_inst.sngfifo36e1 ;
  wire \n_33_gf36e1_inst.sngfifo36e1 ;
  wire \n_5_gf36e1_inst.sngfifo36e1 ;
  wire \n_6_gf36e1_inst.sngfifo36e1 ;
  wire \n_7_gf36e1_inst.sngfifo36e1 ;
  wire p_4_out;
  wire rd_clk;
  wire rd_en;
  wire rst_to_builtin;
  wire wr_clk;
  wire [63:32]\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED ;
  wire [7:4]\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED ;
  wire [7:0]\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED ;
  wire [12:10]\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED ;
  wire [12:10]\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0005),
    .ALMOST_FULL_OFFSET(13'h0007),
    .DATA_WIDTH(36),
    .DO_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .EN_SYN("FALSE"),
    .FIFO_MODE("FIFO36"),
    .FIRST_WORD_FALL_THROUGH("FALSE"),
    .INIT(72'h000000000000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(72'h000000000000000000)) 
     \gf36e1_inst.sngfifo36e1 
       (.ALMOSTEMPTY(\n_0_gf36e1_inst.sngfifo36e1 ),
        .ALMOSTFULL(\n_1_gf36e1_inst.sngfifo36e1 ),
        .DBITERR(\n_2_gf36e1_inst.sngfifo36e1 ),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[31:0]}),
        .DIP({1'b0,1'b0,1'b0,1'b0,din[35:32]}),
        .DO({\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED [63:32],dout[31:0]}),
        .DOP({\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED [7:4],dout[35:32]}),
        .ECCPARITY(\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED [7:0]),
        .EMPTY(O1),
        .FULL(O2),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDCLK(rd_clk),
        .RDCOUNT({\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED [12:10],\n_11_gf36e1_inst.sngfifo36e1 ,\n_12_gf36e1_inst.sngfifo36e1 ,\n_13_gf36e1_inst.sngfifo36e1 ,\n_14_gf36e1_inst.sngfifo36e1 ,\n_15_gf36e1_inst.sngfifo36e1 ,\n_16_gf36e1_inst.sngfifo36e1 ,\n_17_gf36e1_inst.sngfifo36e1 ,\n_18_gf36e1_inst.sngfifo36e1 ,\n_19_gf36e1_inst.sngfifo36e1 ,\n_20_gf36e1_inst.sngfifo36e1 }),
        .RDEN(I1),
        .RDERR(\n_5_gf36e1_inst.sngfifo36e1 ),
        .REGCE(1'b0),
        .RST(rst_to_builtin),
        .RSTREG(1'b0),
        .SBITERR(\n_6_gf36e1_inst.sngfifo36e1 ),
        .WRCLK(wr_clk),
        .WRCOUNT({\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED [12:10],\n_24_gf36e1_inst.sngfifo36e1 ,\n_25_gf36e1_inst.sngfifo36e1 ,\n_26_gf36e1_inst.sngfifo36e1 ,\n_27_gf36e1_inst.sngfifo36e1 ,\n_28_gf36e1_inst.sngfifo36e1 ,\n_29_gf36e1_inst.sngfifo36e1 ,\n_30_gf36e1_inst.sngfifo36e1 ,\n_31_gf36e1_inst.sngfifo36e1 ,\n_32_gf36e1_inst.sngfifo36e1 ,\n_33_gf36e1_inst.sngfifo36e1 }),
        .WREN(I2),
        .WRERR(\n_7_gf36e1_inst.sngfifo36e1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00000100)) 
     \gf36e1_inst.sngfifo36e1_i_1 
       (.I0(O1),
        .I1(I3),
        .I2(I4),
        .I3(rd_en),
        .I4(p_4_out),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00000100)) 
     \gf36e1_inst.sngfifo36e1_i_1__1 
       (.I0(O1),
        .I1(p_4_out),
        .I2(I4),
        .I3(rd_en),
        .I4(I3),
        .O(O4));
LUT5 #(
    .INIT(32'h00000100)) 
     \gf36e1_inst.sngfifo36e1_i_1__2 
       (.I0(O1),
        .I1(p_4_out),
        .I2(I3),
        .I3(rd_en),
        .I4(I4),
        .O(O5));
endmodule

(* ORIG_REF_NAME = "builtin_prim_v6" *) 
module TP_track_fit_fifo_builtin_prim_v6_5
   (p_4_out,
    p_5_out,
    dout,
    O1,
    rd_clk,
    I1,
    rst_to_builtin,
    wr_clk,
    I2,
    din,
    I3,
    I4,
    rd_en,
    I5);
  output p_4_out;
  output p_5_out;
  output [35:0]dout;
  output O1;
  input rd_clk;
  input I1;
  input rst_to_builtin;
  input wr_clk;
  input I2;
  input [35:0]din;
  input I3;
  input I4;
  input rd_en;
  input I5;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire O1;
  wire [35:0]din;
  wire [35:0]dout;
  wire \n_11_gf36e1_inst.sngfifo36e1 ;
  wire \n_12_gf36e1_inst.sngfifo36e1 ;
  wire \n_13_gf36e1_inst.sngfifo36e1 ;
  wire \n_14_gf36e1_inst.sngfifo36e1 ;
  wire \n_15_gf36e1_inst.sngfifo36e1 ;
  wire \n_16_gf36e1_inst.sngfifo36e1 ;
  wire \n_17_gf36e1_inst.sngfifo36e1 ;
  wire \n_18_gf36e1_inst.sngfifo36e1 ;
  wire \n_19_gf36e1_inst.sngfifo36e1 ;
  wire \n_20_gf36e1_inst.sngfifo36e1 ;
  wire \n_24_gf36e1_inst.sngfifo36e1 ;
  wire \n_25_gf36e1_inst.sngfifo36e1 ;
  wire \n_26_gf36e1_inst.sngfifo36e1 ;
  wire \n_27_gf36e1_inst.sngfifo36e1 ;
  wire \n_28_gf36e1_inst.sngfifo36e1 ;
  wire \n_29_gf36e1_inst.sngfifo36e1 ;
  wire \n_30_gf36e1_inst.sngfifo36e1 ;
  wire \n_31_gf36e1_inst.sngfifo36e1 ;
  wire \n_32_gf36e1_inst.sngfifo36e1 ;
  wire \n_33_gf36e1_inst.sngfifo36e1 ;
  wire \n_5_gf36e1_inst.sngfifo36e1 ;
  wire \n_7_gf36e1_inst.sngfifo36e1 ;
  wire p_0_out;
  wire p_1_out;
  wire p_2_out;
  wire p_3_out;
  wire p_4_out;
  wire p_5_out;
  wire rd_clk;
  wire rd_en;
  wire rst_to_builtin;
  wire wr_clk;
  wire [63:32]\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED ;
  wire [7:4]\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED ;
  wire [7:0]\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED ;
  wire [12:10]\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED ;
  wire [12:10]\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED ;

(* box_type = "PRIMITIVE" *) 
   FIFO36E1 #(
    .ALMOST_EMPTY_OFFSET(13'h0005),
    .ALMOST_FULL_OFFSET(13'h0007),
    .DATA_WIDTH(36),
    .DO_REG(1),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .EN_SYN("FALSE"),
    .FIFO_MODE("FIFO36"),
    .FIRST_WORD_FALL_THROUGH("FALSE"),
    .INIT(72'h000000000000000000),
    .IS_RDCLK_INVERTED(1'b0),
    .IS_RDEN_INVERTED(1'b0),
    .IS_RSTREG_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .IS_WRCLK_INVERTED(1'b0),
    .IS_WREN_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SRVAL(72'h000000000000000000)) 
     \gf36e1_inst.sngfifo36e1 
       (.ALMOSTEMPTY(p_2_out),
        .ALMOSTFULL(p_3_out),
        .DBITERR(p_0_out),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,din[31:0]}),
        .DIP({1'b0,1'b0,1'b0,1'b0,din[35:32]}),
        .DO({\NLW_gf36e1_inst.sngfifo36e1_DO_UNCONNECTED [63:32],dout[31:0]}),
        .DOP({\NLW_gf36e1_inst.sngfifo36e1_DOP_UNCONNECTED [7:4],dout[35:32]}),
        .ECCPARITY(\NLW_gf36e1_inst.sngfifo36e1_ECCPARITY_UNCONNECTED [7:0]),
        .EMPTY(p_4_out),
        .FULL(p_5_out),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDCLK(rd_clk),
        .RDCOUNT({\NLW_gf36e1_inst.sngfifo36e1_RDCOUNT_UNCONNECTED [12:10],\n_11_gf36e1_inst.sngfifo36e1 ,\n_12_gf36e1_inst.sngfifo36e1 ,\n_13_gf36e1_inst.sngfifo36e1 ,\n_14_gf36e1_inst.sngfifo36e1 ,\n_15_gf36e1_inst.sngfifo36e1 ,\n_16_gf36e1_inst.sngfifo36e1 ,\n_17_gf36e1_inst.sngfifo36e1 ,\n_18_gf36e1_inst.sngfifo36e1 ,\n_19_gf36e1_inst.sngfifo36e1 ,\n_20_gf36e1_inst.sngfifo36e1 }),
        .RDEN(I1),
        .RDERR(\n_5_gf36e1_inst.sngfifo36e1 ),
        .REGCE(1'b0),
        .RST(rst_to_builtin),
        .RSTREG(1'b0),
        .SBITERR(p_1_out),
        .WRCLK(wr_clk),
        .WRCOUNT({\NLW_gf36e1_inst.sngfifo36e1_WRCOUNT_UNCONNECTED [12:10],\n_24_gf36e1_inst.sngfifo36e1 ,\n_25_gf36e1_inst.sngfifo36e1 ,\n_26_gf36e1_inst.sngfifo36e1 ,\n_27_gf36e1_inst.sngfifo36e1 ,\n_28_gf36e1_inst.sngfifo36e1 ,\n_29_gf36e1_inst.sngfifo36e1 ,\n_30_gf36e1_inst.sngfifo36e1 ,\n_31_gf36e1_inst.sngfifo36e1 ,\n_32_gf36e1_inst.sngfifo36e1 ,\n_33_gf36e1_inst.sngfifo36e1 }),
        .WREN(I2),
        .WRERR(\n_7_gf36e1_inst.sngfifo36e1 ));
LUT5 #(
    .INIT(32'h00000100)) 
     \gf36e1_inst.sngfifo36e1_i_1__0 
       (.I0(p_4_out),
        .I1(I3),
        .I2(I4),
        .I3(rd_en),
        .I4(I5),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "builtin_top_v6" *) 
module TP_track_fit_fifo_builtin_top_v6
   (dout,
    empty,
    full,
    rd_clk,
    rst_to_builtin,
    wr_clk,
    din,
    rd_en,
    wr_en);
  output [125:0]dout;
  output empty;
  output full;
  input rd_clk;
  input rst_to_builtin;
  input wr_clk;
  input [125:0]din;
  input rd_en;
  input wr_en;

  wire [125:0]din;
  wire [125:0]dout;
  wire empty;
  wire full;
  wire \n_0_gextw[2].gnll_fifo.inst_extd ;
  wire \n_0_gextw[3].gnll_fifo.inst_extd ;
  wire \n_0_gextw[4].gnll_fifo.inst_extd ;
  wire \n_1_gextw[2].gnll_fifo.inst_extd ;
  wire \n_1_gextw[3].gnll_fifo.inst_extd ;
  wire \n_1_gextw[4].gnll_fifo.inst_extd ;
  wire \n_20_gextw[4].gnll_fifo.inst_extd ;
  wire \n_38_gextw[1].gnll_fifo.inst_extd ;
  wire \n_38_gextw[2].gnll_fifo.inst_extd ;
  wire \n_39_gextw[2].gnll_fifo.inst_extd ;
  wire \n_40_gextw[2].gnll_fifo.inst_extd ;
  wire p_4_out;
  wire p_5_out;
  wire rd_clk;
  wire rd_en;
  wire rst_to_builtin;
  wire wr_clk;
  wire wr_en;

LUT4 #(
    .INIT(16'hFFFE)) 
     empty_INST_0
       (.I0(\n_0_gextw[2].gnll_fifo.inst_extd ),
        .I1(p_4_out),
        .I2(\n_0_gextw[3].gnll_fifo.inst_extd ),
        .I3(\n_0_gextw[4].gnll_fifo.inst_extd ),
        .O(empty));
LUT4 #(
    .INIT(16'hFFFE)) 
     full_INST_0
       (.I0(\n_1_gextw[2].gnll_fifo.inst_extd ),
        .I1(p_5_out),
        .I2(\n_1_gextw[3].gnll_fifo.inst_extd ),
        .I3(\n_1_gextw[4].gnll_fifo.inst_extd ),
        .O(full));
TP_track_fit_fifo_builtin_extdepth_v6 \gextw[1].gnll_fifo.inst_extd 
       (.I1(\n_38_gextw[2].gnll_fifo.inst_extd ),
        .I2(\n_20_gextw[4].gnll_fifo.inst_extd ),
        .I3(\n_0_gextw[3].gnll_fifo.inst_extd ),
        .I4(\n_0_gextw[4].gnll_fifo.inst_extd ),
        .I5(\n_0_gextw[2].gnll_fifo.inst_extd ),
        .O1(\n_38_gextw[1].gnll_fifo.inst_extd ),
        .din(din[35:0]),
        .dout(dout[35:0]),
        .p_4_out(p_4_out),
        .p_5_out(p_5_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst_to_builtin(rst_to_builtin),
        .wr_clk(wr_clk));
TP_track_fit_fifo_builtin_extdepth_v6_0 \gextw[2].gnll_fifo.inst_extd 
       (.I1(\n_38_gextw[1].gnll_fifo.inst_extd ),
        .I2(\n_20_gextw[4].gnll_fifo.inst_extd ),
        .I3(\n_0_gextw[3].gnll_fifo.inst_extd ),
        .I4(\n_0_gextw[4].gnll_fifo.inst_extd ),
        .O1(\n_0_gextw[2].gnll_fifo.inst_extd ),
        .O2(\n_1_gextw[2].gnll_fifo.inst_extd ),
        .O3(\n_38_gextw[2].gnll_fifo.inst_extd ),
        .O4(\n_39_gextw[2].gnll_fifo.inst_extd ),
        .O5(\n_40_gextw[2].gnll_fifo.inst_extd ),
        .din(din[71:36]),
        .dout(dout[71:36]),
        .p_4_out(p_4_out),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst_to_builtin(rst_to_builtin),
        .wr_clk(wr_clk));
TP_track_fit_fifo_builtin_extdepth_v6_1 \gextw[3].gnll_fifo.inst_extd 
       (.I1(\n_39_gextw[2].gnll_fifo.inst_extd ),
        .I2(\n_20_gextw[4].gnll_fifo.inst_extd ),
        .O1(\n_0_gextw[3].gnll_fifo.inst_extd ),
        .O2(\n_1_gextw[3].gnll_fifo.inst_extd ),
        .din(din[107:72]),
        .dout(dout[107:72]),
        .rd_clk(rd_clk),
        .rst_to_builtin(rst_to_builtin),
        .wr_clk(wr_clk));
TP_track_fit_fifo_builtin_extdepth_v6_2 \gextw[4].gnll_fifo.inst_extd 
       (.I1(\n_40_gextw[2].gnll_fifo.inst_extd ),
        .I2(\n_1_gextw[3].gnll_fifo.inst_extd ),
        .I3(\n_1_gextw[2].gnll_fifo.inst_extd ),
        .O1(\n_0_gextw[4].gnll_fifo.inst_extd ),
        .O2(\n_1_gextw[4].gnll_fifo.inst_extd ),
        .O3(\n_20_gextw[4].gnll_fifo.inst_extd ),
        .din(din[125:108]),
        .dout(dout[125:108]),
        .p_5_out(p_5_out),
        .rd_clk(rd_clk),
        .rst_to_builtin(rst_to_builtin),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_top" *) 
module TP_track_fit_fifo_fifo_generator_top
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    rd_clk,
    wr_clk,
    din,
    rst);
  output [125:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input rd_clk;
  input wr_clk;
  input [125:0]din;
  input rst;

  wire [125:0]din;
  wire [125:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;

TP_track_fit_fifo_fifo_generator_v12_0_builtin \gbi.bi 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0" *) (* C_COMMON_CLOCK = "0" *) (* C_COUNT_TYPE = "0" *) 
(* C_DATA_COUNT_WIDTH = "10" *) (* C_DEFAULT_VALUE = "BlankString" *) (* C_DIN_WIDTH = "126" *) 
(* C_DOUT_RST_VAL = "0" *) (* C_DOUT_WIDTH = "126" *) (* C_ENABLE_RLOCS = "0" *) 
(* C_FAMILY = "virtex7" *) (* C_FULL_FLAGS_RST_VAL = "0" *) (* C_HAS_ALMOST_EMPTY = "0" *) 
(* C_HAS_ALMOST_FULL = "0" *) (* C_HAS_BACKUP = "0" *) (* C_HAS_DATA_COUNT = "0" *) 
(* C_HAS_INT_CLK = "0" *) (* C_HAS_MEMINIT_FILE = "0" *) (* C_HAS_OVERFLOW = "0" *) 
(* C_HAS_RD_DATA_COUNT = "0" *) (* C_HAS_RD_RST = "0" *) (* C_HAS_RST = "1" *) 
(* C_HAS_SRST = "0" *) (* C_HAS_UNDERFLOW = "0" *) (* C_HAS_VALID = "0" *) 
(* C_HAS_WR_ACK = "0" *) (* C_HAS_WR_DATA_COUNT = "0" *) (* C_HAS_WR_RST = "0" *) 
(* C_IMPLEMENTATION_TYPE = "6" *) (* C_INIT_WR_PNTR_VAL = "0" *) (* C_MEMORY_TYPE = "4" *) 
(* C_MIF_FILE_NAME = "BlankString" *) (* C_OPTIMIZATION_MODE = "0" *) (* C_OVERFLOW_LOW = "0" *) 
(* C_PRELOAD_LATENCY = "1" *) (* C_PRELOAD_REGS = "0" *) (* C_PRIM_FIFO_TYPE = "1kx36" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL = "5" *) (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "6" *) (* C_PROG_EMPTY_TYPE = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL = "1017" *) (* C_PROG_FULL_THRESH_NEGATE_VAL = "1016" *) (* C_PROG_FULL_TYPE = "0" *) 
(* C_RD_DATA_COUNT_WIDTH = "10" *) (* C_RD_DEPTH = "1024" *) (* C_RD_FREQ = "1" *) 
(* C_RD_PNTR_WIDTH = "10" *) (* C_UNDERFLOW_LOW = "0" *) (* C_USE_DOUT_RST = "0" *) 
(* C_USE_ECC = "0" *) (* C_USE_EMBEDDED_REG = "0" *) (* C_USE_PIPELINE_REG = "0" *) 
(* C_POWER_SAVING_MODE = "0" *) (* C_USE_FIFO16_FLAGS = "0" *) (* C_USE_FWFT_DATA_COUNT = "0" *) 
(* C_VALID_LOW = "0" *) (* C_WR_ACK_LOW = "0" *) (* C_WR_DATA_COUNT_WIDTH = "10" *) 
(* C_WR_DEPTH = "1024" *) (* C_WR_FREQ = "1" *) (* C_WR_PNTR_WIDTH = "10" *) 
(* C_WR_RESPONSE_LATENCY = "1" *) (* C_MSGON_VAL = "1" *) (* C_ENABLE_RST_SYNC = "1" *) 
(* C_ERROR_INJECTION_TYPE = "0" *) (* C_SYNCHRONIZER_STAGE = "2" *) (* C_INTERFACE_TYPE = "0" *) 
(* C_AXI_TYPE = "1" *) (* C_HAS_AXI_WR_CHANNEL = "1" *) (* C_HAS_AXI_RD_CHANNEL = "1" *) 
(* C_HAS_SLAVE_CE = "0" *) (* C_HAS_MASTER_CE = "0" *) (* C_ADD_NGC_CONSTRAINT = "0" *) 
(* C_USE_COMMON_OVERFLOW = "0" *) (* C_USE_COMMON_UNDERFLOW = "0" *) (* C_USE_DEFAULT_SETTINGS = "0" *) 
(* C_AXI_ID_WIDTH = "1" *) (* C_AXI_ADDR_WIDTH = "32" *) (* C_AXI_DATA_WIDTH = "64" *) 
(* C_AXI_LEN_WIDTH = "8" *) (* C_AXI_LOCK_WIDTH = "1" *) (* C_HAS_AXI_ID = "0" *) 
(* C_HAS_AXI_AWUSER = "0" *) (* C_HAS_AXI_WUSER = "0" *) (* C_HAS_AXI_BUSER = "0" *) 
(* C_HAS_AXI_ARUSER = "0" *) (* C_HAS_AXI_RUSER = "0" *) (* C_AXI_ARUSER_WIDTH = "1" *) 
(* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_WUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_HAS_AXIS_TDATA = "1" *) (* C_HAS_AXIS_TID = "0" *) 
(* C_HAS_AXIS_TDEST = "0" *) (* C_HAS_AXIS_TUSER = "1" *) (* C_HAS_AXIS_TREADY = "1" *) 
(* C_HAS_AXIS_TLAST = "0" *) (* C_HAS_AXIS_TSTRB = "0" *) (* C_HAS_AXIS_TKEEP = "0" *) 
(* C_AXIS_TDATA_WIDTH = "8" *) (* C_AXIS_TID_WIDTH = "1" *) (* C_AXIS_TDEST_WIDTH = "1" *) 
(* C_AXIS_TUSER_WIDTH = "4" *) (* C_AXIS_TSTRB_WIDTH = "1" *) (* C_AXIS_TKEEP_WIDTH = "1" *) 
(* C_WACH_TYPE = "0" *) (* C_WDCH_TYPE = "0" *) (* C_WRCH_TYPE = "0" *) 
(* C_RACH_TYPE = "0" *) (* C_RDCH_TYPE = "0" *) (* C_AXIS_TYPE = "0" *) 
(* C_IMPLEMENTATION_TYPE_WACH = "1" *) (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
(* C_IMPLEMENTATION_TYPE_RACH = "1" *) (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
(* C_APPLICATION_TYPE_WACH = "0" *) (* C_APPLICATION_TYPE_WDCH = "0" *) (* C_APPLICATION_TYPE_WRCH = "0" *) 
(* C_APPLICATION_TYPE_RACH = "0" *) (* C_APPLICATION_TYPE_RDCH = "0" *) (* C_APPLICATION_TYPE_AXIS = "0" *) 
(* C_PRIM_FIFO_TYPE_WACH = "512x36" *) (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
(* C_PRIM_FIFO_TYPE_RACH = "512x36" *) (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
(* C_USE_ECC_WACH = "0" *) (* C_USE_ECC_WDCH = "0" *) (* C_USE_ECC_WRCH = "0" *) 
(* C_USE_ECC_RACH = "0" *) (* C_USE_ECC_RDCH = "0" *) (* C_USE_ECC_AXIS = "0" *) 
(* C_ERROR_INJECTION_TYPE_WACH = "0" *) (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
(* C_ERROR_INJECTION_TYPE_RACH = "0" *) (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
(* C_DIN_WIDTH_WACH = "32" *) (* C_DIN_WIDTH_WDCH = "64" *) (* C_DIN_WIDTH_WRCH = "2" *) 
(* C_DIN_WIDTH_RACH = "32" *) (* C_DIN_WIDTH_RDCH = "64" *) (* C_DIN_WIDTH_AXIS = "1" *) 
(* C_WR_DEPTH_WACH = "16" *) (* C_WR_DEPTH_WDCH = "1024" *) (* C_WR_DEPTH_WRCH = "16" *) 
(* C_WR_DEPTH_RACH = "16" *) (* C_WR_DEPTH_RDCH = "1024" *) (* C_WR_DEPTH_AXIS = "1024" *) 
(* C_WR_PNTR_WIDTH_WACH = "4" *) (* C_WR_PNTR_WIDTH_WDCH = "10" *) (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
(* C_WR_PNTR_WIDTH_RACH = "4" *) (* C_WR_PNTR_WIDTH_RDCH = "10" *) (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
(* C_HAS_DATA_COUNTS_WACH = "0" *) (* C_HAS_DATA_COUNTS_WDCH = "0" *) (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
(* C_HAS_DATA_COUNTS_RACH = "0" *) (* C_HAS_DATA_COUNTS_RDCH = "0" *) (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
(* C_HAS_PROG_FLAGS_WACH = "0" *) (* C_HAS_PROG_FLAGS_WDCH = "0" *) (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
(* C_HAS_PROG_FLAGS_RACH = "0" *) (* C_HAS_PROG_FLAGS_RDCH = "0" *) (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
(* C_PROG_FULL_TYPE_WACH = "0" *) (* C_PROG_FULL_TYPE_WDCH = "0" *) (* C_PROG_FULL_TYPE_WRCH = "0" *) 
(* C_PROG_FULL_TYPE_RACH = "0" *) (* C_PROG_FULL_TYPE_RDCH = "0" *) (* C_PROG_FULL_TYPE_AXIS = "0" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
(* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
(* C_PROG_EMPTY_TYPE_WACH = "0" *) (* C_PROG_EMPTY_TYPE_WDCH = "0" *) (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
(* C_PROG_EMPTY_TYPE_RACH = "0" *) (* C_PROG_EMPTY_TYPE_RDCH = "0" *) (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
(* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
(* C_REG_SLICE_MODE_WACH = "0" *) (* C_REG_SLICE_MODE_WDCH = "0" *) (* C_REG_SLICE_MODE_WRCH = "0" *) 
(* C_REG_SLICE_MODE_RACH = "0" *) (* C_REG_SLICE_MODE_RDCH = "0" *) (* C_REG_SLICE_MODE_AXIS = "0" *) 
module TP_track_fit_fifo_fifo_generator_v12_0__parameterized0
   (backup,
    backup_marker,
    clk,
    rst,
    srst,
    wr_clk,
    wr_rst,
    rd_clk,
    rd_rst,
    din,
    wr_en,
    rd_en,
    prog_empty_thresh,
    prog_empty_thresh_assert,
    prog_empty_thresh_negate,
    prog_full_thresh,
    prog_full_thresh_assert,
    prog_full_thresh_negate,
    int_clk,
    injectdbiterr,
    injectsbiterr,
    sleep,
    dout,
    full,
    almost_full,
    wr_ack,
    overflow,
    empty,
    almost_empty,
    valid,
    underflow,
    data_count,
    rd_data_count,
    wr_data_count,
    prog_full,
    prog_empty,
    sbiterr,
    dbiterr,
    wr_rst_busy,
    rd_rst_busy,
    m_aclk,
    s_aclk,
    s_aresetn,
    m_aclk_en,
    s_aclk_en,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awregion,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awregion,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arregion,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arregion,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tstrb,
    s_axis_tkeep,
    s_axis_tlast,
    s_axis_tid,
    s_axis_tdest,
    s_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tstrb,
    m_axis_tkeep,
    m_axis_tlast,
    m_axis_tid,
    m_axis_tdest,
    m_axis_tuser,
    axi_aw_injectsbiterr,
    axi_aw_injectdbiterr,
    axi_aw_prog_full_thresh,
    axi_aw_prog_empty_thresh,
    axi_aw_data_count,
    axi_aw_wr_data_count,
    axi_aw_rd_data_count,
    axi_aw_sbiterr,
    axi_aw_dbiterr,
    axi_aw_overflow,
    axi_aw_underflow,
    axi_aw_prog_full,
    axi_aw_prog_empty,
    axi_w_injectsbiterr,
    axi_w_injectdbiterr,
    axi_w_prog_full_thresh,
    axi_w_prog_empty_thresh,
    axi_w_data_count,
    axi_w_wr_data_count,
    axi_w_rd_data_count,
    axi_w_sbiterr,
    axi_w_dbiterr,
    axi_w_overflow,
    axi_w_underflow,
    axi_w_prog_full,
    axi_w_prog_empty,
    axi_b_injectsbiterr,
    axi_b_injectdbiterr,
    axi_b_prog_full_thresh,
    axi_b_prog_empty_thresh,
    axi_b_data_count,
    axi_b_wr_data_count,
    axi_b_rd_data_count,
    axi_b_sbiterr,
    axi_b_dbiterr,
    axi_b_overflow,
    axi_b_underflow,
    axi_b_prog_full,
    axi_b_prog_empty,
    axi_ar_injectsbiterr,
    axi_ar_injectdbiterr,
    axi_ar_prog_full_thresh,
    axi_ar_prog_empty_thresh,
    axi_ar_data_count,
    axi_ar_wr_data_count,
    axi_ar_rd_data_count,
    axi_ar_sbiterr,
    axi_ar_dbiterr,
    axi_ar_overflow,
    axi_ar_underflow,
    axi_ar_prog_full,
    axi_ar_prog_empty,
    axi_r_injectsbiterr,
    axi_r_injectdbiterr,
    axi_r_prog_full_thresh,
    axi_r_prog_empty_thresh,
    axi_r_data_count,
    axi_r_wr_data_count,
    axi_r_rd_data_count,
    axi_r_sbiterr,
    axi_r_dbiterr,
    axi_r_overflow,
    axi_r_underflow,
    axi_r_prog_full,
    axi_r_prog_empty,
    axis_injectsbiterr,
    axis_injectdbiterr,
    axis_prog_full_thresh,
    axis_prog_empty_thresh,
    axis_data_count,
    axis_wr_data_count,
    axis_rd_data_count,
    axis_sbiterr,
    axis_dbiterr,
    axis_overflow,
    axis_underflow,
    axis_prog_full,
    axis_prog_empty);
  input backup;
  input backup_marker;
  input clk;
  input rst;
  input srst;
  input wr_clk;
  input wr_rst;
  input rd_clk;
  input rd_rst;
  input [125:0]din;
  input wr_en;
  input rd_en;
  input [9:0]prog_empty_thresh;
  input [9:0]prog_empty_thresh_assert;
  input [9:0]prog_empty_thresh_negate;
  input [9:0]prog_full_thresh;
  input [9:0]prog_full_thresh_assert;
  input [9:0]prog_full_thresh_negate;
  input int_clk;
  input injectdbiterr;
  input injectsbiterr;
  input sleep;
  output [125:0]dout;
  output full;
  output almost_full;
  output wr_ack;
  output overflow;
  output empty;
  output almost_empty;
  output valid;
  output underflow;
  output [9:0]data_count;
  output [9:0]rd_data_count;
  output [9:0]wr_data_count;
  output prog_full;
  output prog_empty;
  output sbiterr;
  output dbiterr;
  output wr_rst_busy;
  output rd_rst_busy;
  input m_aclk;
  input s_aclk;
  input s_aresetn;
  input m_aclk_en;
  input s_aclk_en;
  input [0:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [3:0]s_axi_awregion;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [0:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [0:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  output [0:0]m_axi_awid;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [3:0]m_axi_awregion;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [0:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [0:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  input [0:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [3:0]s_axi_arregion;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [0:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [0:0]m_axi_arid;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [3:0]m_axi_arregion;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [0:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;
  input s_axis_tvalid;
  output s_axis_tready;
  input [7:0]s_axis_tdata;
  input [0:0]s_axis_tstrb;
  input [0:0]s_axis_tkeep;
  input s_axis_tlast;
  input [0:0]s_axis_tid;
  input [0:0]s_axis_tdest;
  input [3:0]s_axis_tuser;
  output m_axis_tvalid;
  input m_axis_tready;
  output [7:0]m_axis_tdata;
  output [0:0]m_axis_tstrb;
  output [0:0]m_axis_tkeep;
  output m_axis_tlast;
  output [0:0]m_axis_tid;
  output [0:0]m_axis_tdest;
  output [3:0]m_axis_tuser;
  input axi_aw_injectsbiterr;
  input axi_aw_injectdbiterr;
  input [3:0]axi_aw_prog_full_thresh;
  input [3:0]axi_aw_prog_empty_thresh;
  output [4:0]axi_aw_data_count;
  output [4:0]axi_aw_wr_data_count;
  output [4:0]axi_aw_rd_data_count;
  output axi_aw_sbiterr;
  output axi_aw_dbiterr;
  output axi_aw_overflow;
  output axi_aw_underflow;
  output axi_aw_prog_full;
  output axi_aw_prog_empty;
  input axi_w_injectsbiterr;
  input axi_w_injectdbiterr;
  input [9:0]axi_w_prog_full_thresh;
  input [9:0]axi_w_prog_empty_thresh;
  output [10:0]axi_w_data_count;
  output [10:0]axi_w_wr_data_count;
  output [10:0]axi_w_rd_data_count;
  output axi_w_sbiterr;
  output axi_w_dbiterr;
  output axi_w_overflow;
  output axi_w_underflow;
  output axi_w_prog_full;
  output axi_w_prog_empty;
  input axi_b_injectsbiterr;
  input axi_b_injectdbiterr;
  input [3:0]axi_b_prog_full_thresh;
  input [3:0]axi_b_prog_empty_thresh;
  output [4:0]axi_b_data_count;
  output [4:0]axi_b_wr_data_count;
  output [4:0]axi_b_rd_data_count;
  output axi_b_sbiterr;
  output axi_b_dbiterr;
  output axi_b_overflow;
  output axi_b_underflow;
  output axi_b_prog_full;
  output axi_b_prog_empty;
  input axi_ar_injectsbiterr;
  input axi_ar_injectdbiterr;
  input [3:0]axi_ar_prog_full_thresh;
  input [3:0]axi_ar_prog_empty_thresh;
  output [4:0]axi_ar_data_count;
  output [4:0]axi_ar_wr_data_count;
  output [4:0]axi_ar_rd_data_count;
  output axi_ar_sbiterr;
  output axi_ar_dbiterr;
  output axi_ar_overflow;
  output axi_ar_underflow;
  output axi_ar_prog_full;
  output axi_ar_prog_empty;
  input axi_r_injectsbiterr;
  input axi_r_injectdbiterr;
  input [9:0]axi_r_prog_full_thresh;
  input [9:0]axi_r_prog_empty_thresh;
  output [10:0]axi_r_data_count;
  output [10:0]axi_r_wr_data_count;
  output [10:0]axi_r_rd_data_count;
  output axi_r_sbiterr;
  output axi_r_dbiterr;
  output axi_r_overflow;
  output axi_r_underflow;
  output axi_r_prog_full;
  output axi_r_prog_empty;
  input axis_injectsbiterr;
  input axis_injectdbiterr;
  input [9:0]axis_prog_full_thresh;
  input [9:0]axis_prog_empty_thresh;
  output [10:0]axis_data_count;
  output [10:0]axis_wr_data_count;
  output [10:0]axis_rd_data_count;
  output axis_sbiterr;
  output axis_dbiterr;
  output axis_overflow;
  output axis_underflow;
  output axis_prog_full;
  output axis_prog_empty;

  wire \<const0> ;
  wire \<const1> ;
  wire axi_ar_injectdbiterr;
  wire axi_ar_injectsbiterr;
  wire [3:0]axi_ar_prog_empty_thresh;
  wire [3:0]axi_ar_prog_full_thresh;
  wire axi_aw_injectdbiterr;
  wire axi_aw_injectsbiterr;
  wire [3:0]axi_aw_prog_empty_thresh;
  wire [3:0]axi_aw_prog_full_thresh;
  wire axi_b_injectdbiterr;
  wire axi_b_injectsbiterr;
  wire [3:0]axi_b_prog_empty_thresh;
  wire [3:0]axi_b_prog_full_thresh;
  wire axi_r_injectdbiterr;
  wire axi_r_injectsbiterr;
  wire [9:0]axi_r_prog_empty_thresh;
  wire [9:0]axi_r_prog_full_thresh;
  wire axi_w_injectdbiterr;
  wire axi_w_injectsbiterr;
  wire [9:0]axi_w_prog_empty_thresh;
  wire [9:0]axi_w_prog_full_thresh;
  wire axis_injectdbiterr;
  wire axis_injectsbiterr;
  wire [9:0]axis_prog_empty_thresh;
  wire [9:0]axis_prog_full_thresh;
  wire backup;
  wire backup_marker;
  wire clk;
  wire [125:0]din;
  wire [125:0]dout;
  wire empty;
  wire full;
  wire injectdbiterr;
  wire injectsbiterr;
  wire int_clk;
  wire m_aclk;
  wire m_aclk_en;
  wire m_axi_arready;
  wire m_axi_awready;
  wire [0:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire [0:0]m_axi_buser;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [0:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire [0:0]m_axi_ruser;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axis_tready;
  wire [9:0]prog_empty_thresh;
  wire [9:0]prog_empty_thresh_assert;
  wire [9:0]prog_empty_thresh_negate;
  wire [9:0]prog_full_thresh;
  wire [9:0]prog_full_thresh_assert;
  wire [9:0]prog_full_thresh_negate;
  wire rd_clk;
  wire rd_en;
  wire rd_rst;
  wire rst;
  wire s_aclk;
  wire s_aclk_en;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [0:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire [3:0]s_axi_arregion;
  wire [2:0]s_axi_arsize;
  wire [0:0]s_axi_aruser;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [0:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire [3:0]s_axi_awregion;
  wire [2:0]s_axi_awsize;
  wire [0:0]s_axi_awuser;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire [0:0]s_axi_wid;
  wire s_axi_wlast;
  wire [7:0]s_axi_wstrb;
  wire [0:0]s_axi_wuser;
  wire s_axi_wvalid;
  wire [7:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tid;
  wire [0:0]s_axis_tkeep;
  wire s_axis_tlast;
  wire [0:0]s_axis_tstrb;
  wire [3:0]s_axis_tuser;
  wire s_axis_tvalid;
  wire srst;
  wire wr_clk;
  wire wr_en;
  wire wr_rst;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign axi_ar_data_count[4] = \<const0> ;
  assign axi_ar_data_count[3] = \<const0> ;
  assign axi_ar_data_count[2] = \<const0> ;
  assign axi_ar_data_count[1] = \<const0> ;
  assign axi_ar_data_count[0] = \<const0> ;
  assign axi_ar_dbiterr = \<const0> ;
  assign axi_ar_overflow = \<const0> ;
  assign axi_ar_prog_empty = \<const1> ;
  assign axi_ar_prog_full = \<const0> ;
  assign axi_ar_rd_data_count[4] = \<const0> ;
  assign axi_ar_rd_data_count[3] = \<const0> ;
  assign axi_ar_rd_data_count[2] = \<const0> ;
  assign axi_ar_rd_data_count[1] = \<const0> ;
  assign axi_ar_rd_data_count[0] = \<const0> ;
  assign axi_ar_sbiterr = \<const0> ;
  assign axi_ar_underflow = \<const0> ;
  assign axi_ar_wr_data_count[4] = \<const0> ;
  assign axi_ar_wr_data_count[3] = \<const0> ;
  assign axi_ar_wr_data_count[2] = \<const0> ;
  assign axi_ar_wr_data_count[1] = \<const0> ;
  assign axi_ar_wr_data_count[0] = \<const0> ;
  assign axi_aw_data_count[4] = \<const0> ;
  assign axi_aw_data_count[3] = \<const0> ;
  assign axi_aw_data_count[2] = \<const0> ;
  assign axi_aw_data_count[1] = \<const0> ;
  assign axi_aw_data_count[0] = \<const0> ;
  assign axi_aw_dbiterr = \<const0> ;
  assign axi_aw_overflow = \<const0> ;
  assign axi_aw_prog_empty = \<const1> ;
  assign axi_aw_prog_full = \<const0> ;
  assign axi_aw_rd_data_count[4] = \<const0> ;
  assign axi_aw_rd_data_count[3] = \<const0> ;
  assign axi_aw_rd_data_count[2] = \<const0> ;
  assign axi_aw_rd_data_count[1] = \<const0> ;
  assign axi_aw_rd_data_count[0] = \<const0> ;
  assign axi_aw_sbiterr = \<const0> ;
  assign axi_aw_underflow = \<const0> ;
  assign axi_aw_wr_data_count[4] = \<const0> ;
  assign axi_aw_wr_data_count[3] = \<const0> ;
  assign axi_aw_wr_data_count[2] = \<const0> ;
  assign axi_aw_wr_data_count[1] = \<const0> ;
  assign axi_aw_wr_data_count[0] = \<const0> ;
  assign axi_b_data_count[4] = \<const0> ;
  assign axi_b_data_count[3] = \<const0> ;
  assign axi_b_data_count[2] = \<const0> ;
  assign axi_b_data_count[1] = \<const0> ;
  assign axi_b_data_count[0] = \<const0> ;
  assign axi_b_dbiterr = \<const0> ;
  assign axi_b_overflow = \<const0> ;
  assign axi_b_prog_empty = \<const1> ;
  assign axi_b_prog_full = \<const0> ;
  assign axi_b_rd_data_count[4] = \<const0> ;
  assign axi_b_rd_data_count[3] = \<const0> ;
  assign axi_b_rd_data_count[2] = \<const0> ;
  assign axi_b_rd_data_count[1] = \<const0> ;
  assign axi_b_rd_data_count[0] = \<const0> ;
  assign axi_b_sbiterr = \<const0> ;
  assign axi_b_underflow = \<const0> ;
  assign axi_b_wr_data_count[4] = \<const0> ;
  assign axi_b_wr_data_count[3] = \<const0> ;
  assign axi_b_wr_data_count[2] = \<const0> ;
  assign axi_b_wr_data_count[1] = \<const0> ;
  assign axi_b_wr_data_count[0] = \<const0> ;
  assign axi_r_data_count[10] = \<const0> ;
  assign axi_r_data_count[9] = \<const0> ;
  assign axi_r_data_count[8] = \<const0> ;
  assign axi_r_data_count[7] = \<const0> ;
  assign axi_r_data_count[6] = \<const0> ;
  assign axi_r_data_count[5] = \<const0> ;
  assign axi_r_data_count[4] = \<const0> ;
  assign axi_r_data_count[3] = \<const0> ;
  assign axi_r_data_count[2] = \<const0> ;
  assign axi_r_data_count[1] = \<const0> ;
  assign axi_r_data_count[0] = \<const0> ;
  assign axi_r_dbiterr = \<const0> ;
  assign axi_r_overflow = \<const0> ;
  assign axi_r_prog_empty = \<const1> ;
  assign axi_r_prog_full = \<const0> ;
  assign axi_r_rd_data_count[10] = \<const0> ;
  assign axi_r_rd_data_count[9] = \<const0> ;
  assign axi_r_rd_data_count[8] = \<const0> ;
  assign axi_r_rd_data_count[7] = \<const0> ;
  assign axi_r_rd_data_count[6] = \<const0> ;
  assign axi_r_rd_data_count[5] = \<const0> ;
  assign axi_r_rd_data_count[4] = \<const0> ;
  assign axi_r_rd_data_count[3] = \<const0> ;
  assign axi_r_rd_data_count[2] = \<const0> ;
  assign axi_r_rd_data_count[1] = \<const0> ;
  assign axi_r_rd_data_count[0] = \<const0> ;
  assign axi_r_sbiterr = \<const0> ;
  assign axi_r_underflow = \<const0> ;
  assign axi_r_wr_data_count[10] = \<const0> ;
  assign axi_r_wr_data_count[9] = \<const0> ;
  assign axi_r_wr_data_count[8] = \<const0> ;
  assign axi_r_wr_data_count[7] = \<const0> ;
  assign axi_r_wr_data_count[6] = \<const0> ;
  assign axi_r_wr_data_count[5] = \<const0> ;
  assign axi_r_wr_data_count[4] = \<const0> ;
  assign axi_r_wr_data_count[3] = \<const0> ;
  assign axi_r_wr_data_count[2] = \<const0> ;
  assign axi_r_wr_data_count[1] = \<const0> ;
  assign axi_r_wr_data_count[0] = \<const0> ;
  assign axi_w_data_count[10] = \<const0> ;
  assign axi_w_data_count[9] = \<const0> ;
  assign axi_w_data_count[8] = \<const0> ;
  assign axi_w_data_count[7] = \<const0> ;
  assign axi_w_data_count[6] = \<const0> ;
  assign axi_w_data_count[5] = \<const0> ;
  assign axi_w_data_count[4] = \<const0> ;
  assign axi_w_data_count[3] = \<const0> ;
  assign axi_w_data_count[2] = \<const0> ;
  assign axi_w_data_count[1] = \<const0> ;
  assign axi_w_data_count[0] = \<const0> ;
  assign axi_w_dbiterr = \<const0> ;
  assign axi_w_overflow = \<const0> ;
  assign axi_w_prog_empty = \<const1> ;
  assign axi_w_prog_full = \<const0> ;
  assign axi_w_rd_data_count[10] = \<const0> ;
  assign axi_w_rd_data_count[9] = \<const0> ;
  assign axi_w_rd_data_count[8] = \<const0> ;
  assign axi_w_rd_data_count[7] = \<const0> ;
  assign axi_w_rd_data_count[6] = \<const0> ;
  assign axi_w_rd_data_count[5] = \<const0> ;
  assign axi_w_rd_data_count[4] = \<const0> ;
  assign axi_w_rd_data_count[3] = \<const0> ;
  assign axi_w_rd_data_count[2] = \<const0> ;
  assign axi_w_rd_data_count[1] = \<const0> ;
  assign axi_w_rd_data_count[0] = \<const0> ;
  assign axi_w_sbiterr = \<const0> ;
  assign axi_w_underflow = \<const0> ;
  assign axi_w_wr_data_count[10] = \<const0> ;
  assign axi_w_wr_data_count[9] = \<const0> ;
  assign axi_w_wr_data_count[8] = \<const0> ;
  assign axi_w_wr_data_count[7] = \<const0> ;
  assign axi_w_wr_data_count[6] = \<const0> ;
  assign axi_w_wr_data_count[5] = \<const0> ;
  assign axi_w_wr_data_count[4] = \<const0> ;
  assign axi_w_wr_data_count[3] = \<const0> ;
  assign axi_w_wr_data_count[2] = \<const0> ;
  assign axi_w_wr_data_count[1] = \<const0> ;
  assign axi_w_wr_data_count[0] = \<const0> ;
  assign axis_data_count[10] = \<const0> ;
  assign axis_data_count[9] = \<const0> ;
  assign axis_data_count[8] = \<const0> ;
  assign axis_data_count[7] = \<const0> ;
  assign axis_data_count[6] = \<const0> ;
  assign axis_data_count[5] = \<const0> ;
  assign axis_data_count[4] = \<const0> ;
  assign axis_data_count[3] = \<const0> ;
  assign axis_data_count[2] = \<const0> ;
  assign axis_data_count[1] = \<const0> ;
  assign axis_data_count[0] = \<const0> ;
  assign axis_dbiterr = \<const0> ;
  assign axis_overflow = \<const0> ;
  assign axis_prog_empty = \<const1> ;
  assign axis_prog_full = \<const0> ;
  assign axis_rd_data_count[10] = \<const0> ;
  assign axis_rd_data_count[9] = \<const0> ;
  assign axis_rd_data_count[8] = \<const0> ;
  assign axis_rd_data_count[7] = \<const0> ;
  assign axis_rd_data_count[6] = \<const0> ;
  assign axis_rd_data_count[5] = \<const0> ;
  assign axis_rd_data_count[4] = \<const0> ;
  assign axis_rd_data_count[3] = \<const0> ;
  assign axis_rd_data_count[2] = \<const0> ;
  assign axis_rd_data_count[1] = \<const0> ;
  assign axis_rd_data_count[0] = \<const0> ;
  assign axis_sbiterr = \<const0> ;
  assign axis_underflow = \<const0> ;
  assign axis_wr_data_count[10] = \<const0> ;
  assign axis_wr_data_count[9] = \<const0> ;
  assign axis_wr_data_count[8] = \<const0> ;
  assign axis_wr_data_count[7] = \<const0> ;
  assign axis_wr_data_count[6] = \<const0> ;
  assign axis_wr_data_count[5] = \<const0> ;
  assign axis_wr_data_count[4] = \<const0> ;
  assign axis_wr_data_count[3] = \<const0> ;
  assign axis_wr_data_count[2] = \<const0> ;
  assign axis_wr_data_count[1] = \<const0> ;
  assign axis_wr_data_count[0] = \<const0> ;
  assign data_count[9] = \<const0> ;
  assign data_count[8] = \<const0> ;
  assign data_count[7] = \<const0> ;
  assign data_count[6] = \<const0> ;
  assign data_count[5] = \<const0> ;
  assign data_count[4] = \<const0> ;
  assign data_count[3] = \<const0> ;
  assign data_count[2] = \<const0> ;
  assign data_count[1] = \<const0> ;
  assign data_count[0] = \<const0> ;
  assign dbiterr = \<const0> ;
  assign m_axi_araddr[31] = \<const0> ;
  assign m_axi_araddr[30] = \<const0> ;
  assign m_axi_araddr[29] = \<const0> ;
  assign m_axi_araddr[28] = \<const0> ;
  assign m_axi_araddr[27] = \<const0> ;
  assign m_axi_araddr[26] = \<const0> ;
  assign m_axi_araddr[25] = \<const0> ;
  assign m_axi_araddr[24] = \<const0> ;
  assign m_axi_araddr[23] = \<const0> ;
  assign m_axi_araddr[22] = \<const0> ;
  assign m_axi_araddr[21] = \<const0> ;
  assign m_axi_araddr[20] = \<const0> ;
  assign m_axi_araddr[19] = \<const0> ;
  assign m_axi_araddr[18] = \<const0> ;
  assign m_axi_araddr[17] = \<const0> ;
  assign m_axi_araddr[16] = \<const0> ;
  assign m_axi_araddr[15] = \<const0> ;
  assign m_axi_araddr[14] = \<const0> ;
  assign m_axi_araddr[13] = \<const0> ;
  assign m_axi_araddr[12] = \<const0> ;
  assign m_axi_araddr[11] = \<const0> ;
  assign m_axi_araddr[10] = \<const0> ;
  assign m_axi_araddr[9] = \<const0> ;
  assign m_axi_araddr[8] = \<const0> ;
  assign m_axi_araddr[7] = \<const0> ;
  assign m_axi_araddr[6] = \<const0> ;
  assign m_axi_araddr[5] = \<const0> ;
  assign m_axi_araddr[4] = \<const0> ;
  assign m_axi_araddr[3] = \<const0> ;
  assign m_axi_araddr[2] = \<const0> ;
  assign m_axi_araddr[1] = \<const0> ;
  assign m_axi_araddr[0] = \<const0> ;
  assign m_axi_arburst[1] = \<const0> ;
  assign m_axi_arburst[0] = \<const0> ;
  assign m_axi_arcache[3] = \<const0> ;
  assign m_axi_arcache[2] = \<const0> ;
  assign m_axi_arcache[1] = \<const0> ;
  assign m_axi_arcache[0] = \<const0> ;
  assign m_axi_arid[0] = \<const0> ;
  assign m_axi_arlen[7] = \<const0> ;
  assign m_axi_arlen[6] = \<const0> ;
  assign m_axi_arlen[5] = \<const0> ;
  assign m_axi_arlen[4] = \<const0> ;
  assign m_axi_arlen[3] = \<const0> ;
  assign m_axi_arlen[2] = \<const0> ;
  assign m_axi_arlen[1] = \<const0> ;
  assign m_axi_arlen[0] = \<const0> ;
  assign m_axi_arlock[0] = \<const0> ;
  assign m_axi_arprot[2] = \<const0> ;
  assign m_axi_arprot[1] = \<const0> ;
  assign m_axi_arprot[0] = \<const0> ;
  assign m_axi_arqos[3] = \<const0> ;
  assign m_axi_arqos[2] = \<const0> ;
  assign m_axi_arqos[1] = \<const0> ;
  assign m_axi_arqos[0] = \<const0> ;
  assign m_axi_arregion[3] = \<const0> ;
  assign m_axi_arregion[2] = \<const0> ;
  assign m_axi_arregion[1] = \<const0> ;
  assign m_axi_arregion[0] = \<const0> ;
  assign m_axi_arsize[2] = \<const0> ;
  assign m_axi_arsize[1] = \<const0> ;
  assign m_axi_arsize[0] = \<const0> ;
  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_arvalid = \<const0> ;
  assign m_axi_awaddr[31] = \<const0> ;
  assign m_axi_awaddr[30] = \<const0> ;
  assign m_axi_awaddr[29] = \<const0> ;
  assign m_axi_awaddr[28] = \<const0> ;
  assign m_axi_awaddr[27] = \<const0> ;
  assign m_axi_awaddr[26] = \<const0> ;
  assign m_axi_awaddr[25] = \<const0> ;
  assign m_axi_awaddr[24] = \<const0> ;
  assign m_axi_awaddr[23] = \<const0> ;
  assign m_axi_awaddr[22] = \<const0> ;
  assign m_axi_awaddr[21] = \<const0> ;
  assign m_axi_awaddr[20] = \<const0> ;
  assign m_axi_awaddr[19] = \<const0> ;
  assign m_axi_awaddr[18] = \<const0> ;
  assign m_axi_awaddr[17] = \<const0> ;
  assign m_axi_awaddr[16] = \<const0> ;
  assign m_axi_awaddr[15] = \<const0> ;
  assign m_axi_awaddr[14] = \<const0> ;
  assign m_axi_awaddr[13] = \<const0> ;
  assign m_axi_awaddr[12] = \<const0> ;
  assign m_axi_awaddr[11] = \<const0> ;
  assign m_axi_awaddr[10] = \<const0> ;
  assign m_axi_awaddr[9] = \<const0> ;
  assign m_axi_awaddr[8] = \<const0> ;
  assign m_axi_awaddr[7] = \<const0> ;
  assign m_axi_awaddr[6] = \<const0> ;
  assign m_axi_awaddr[5] = \<const0> ;
  assign m_axi_awaddr[4] = \<const0> ;
  assign m_axi_awaddr[3] = \<const0> ;
  assign m_axi_awaddr[2] = \<const0> ;
  assign m_axi_awaddr[1] = \<const0> ;
  assign m_axi_awaddr[0] = \<const0> ;
  assign m_axi_awburst[1] = \<const0> ;
  assign m_axi_awburst[0] = \<const0> ;
  assign m_axi_awcache[3] = \<const0> ;
  assign m_axi_awcache[2] = \<const0> ;
  assign m_axi_awcache[1] = \<const0> ;
  assign m_axi_awcache[0] = \<const0> ;
  assign m_axi_awid[0] = \<const0> ;
  assign m_axi_awlen[7] = \<const0> ;
  assign m_axi_awlen[6] = \<const0> ;
  assign m_axi_awlen[5] = \<const0> ;
  assign m_axi_awlen[4] = \<const0> ;
  assign m_axi_awlen[3] = \<const0> ;
  assign m_axi_awlen[2] = \<const0> ;
  assign m_axi_awlen[1] = \<const0> ;
  assign m_axi_awlen[0] = \<const0> ;
  assign m_axi_awlock[0] = \<const0> ;
  assign m_axi_awprot[2] = \<const0> ;
  assign m_axi_awprot[1] = \<const0> ;
  assign m_axi_awprot[0] = \<const0> ;
  assign m_axi_awqos[3] = \<const0> ;
  assign m_axi_awqos[2] = \<const0> ;
  assign m_axi_awqos[1] = \<const0> ;
  assign m_axi_awqos[0] = \<const0> ;
  assign m_axi_awregion[3] = \<const0> ;
  assign m_axi_awregion[2] = \<const0> ;
  assign m_axi_awregion[1] = \<const0> ;
  assign m_axi_awregion[0] = \<const0> ;
  assign m_axi_awsize[2] = \<const0> ;
  assign m_axi_awsize[1] = \<const0> ;
  assign m_axi_awsize[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_awvalid = \<const0> ;
  assign m_axi_bready = \<const0> ;
  assign m_axi_rready = \<const0> ;
  assign m_axi_wdata[63] = \<const0> ;
  assign m_axi_wdata[62] = \<const0> ;
  assign m_axi_wdata[61] = \<const0> ;
  assign m_axi_wdata[60] = \<const0> ;
  assign m_axi_wdata[59] = \<const0> ;
  assign m_axi_wdata[58] = \<const0> ;
  assign m_axi_wdata[57] = \<const0> ;
  assign m_axi_wdata[56] = \<const0> ;
  assign m_axi_wdata[55] = \<const0> ;
  assign m_axi_wdata[54] = \<const0> ;
  assign m_axi_wdata[53] = \<const0> ;
  assign m_axi_wdata[52] = \<const0> ;
  assign m_axi_wdata[51] = \<const0> ;
  assign m_axi_wdata[50] = \<const0> ;
  assign m_axi_wdata[49] = \<const0> ;
  assign m_axi_wdata[48] = \<const0> ;
  assign m_axi_wdata[47] = \<const0> ;
  assign m_axi_wdata[46] = \<const0> ;
  assign m_axi_wdata[45] = \<const0> ;
  assign m_axi_wdata[44] = \<const0> ;
  assign m_axi_wdata[43] = \<const0> ;
  assign m_axi_wdata[42] = \<const0> ;
  assign m_axi_wdata[41] = \<const0> ;
  assign m_axi_wdata[40] = \<const0> ;
  assign m_axi_wdata[39] = \<const0> ;
  assign m_axi_wdata[38] = \<const0> ;
  assign m_axi_wdata[37] = \<const0> ;
  assign m_axi_wdata[36] = \<const0> ;
  assign m_axi_wdata[35] = \<const0> ;
  assign m_axi_wdata[34] = \<const0> ;
  assign m_axi_wdata[33] = \<const0> ;
  assign m_axi_wdata[32] = \<const0> ;
  assign m_axi_wdata[31] = \<const0> ;
  assign m_axi_wdata[30] = \<const0> ;
  assign m_axi_wdata[29] = \<const0> ;
  assign m_axi_wdata[28] = \<const0> ;
  assign m_axi_wdata[27] = \<const0> ;
  assign m_axi_wdata[26] = \<const0> ;
  assign m_axi_wdata[25] = \<const0> ;
  assign m_axi_wdata[24] = \<const0> ;
  assign m_axi_wdata[23] = \<const0> ;
  assign m_axi_wdata[22] = \<const0> ;
  assign m_axi_wdata[21] = \<const0> ;
  assign m_axi_wdata[20] = \<const0> ;
  assign m_axi_wdata[19] = \<const0> ;
  assign m_axi_wdata[18] = \<const0> ;
  assign m_axi_wdata[17] = \<const0> ;
  assign m_axi_wdata[16] = \<const0> ;
  assign m_axi_wdata[15] = \<const0> ;
  assign m_axi_wdata[14] = \<const0> ;
  assign m_axi_wdata[13] = \<const0> ;
  assign m_axi_wdata[12] = \<const0> ;
  assign m_axi_wdata[11] = \<const0> ;
  assign m_axi_wdata[10] = \<const0> ;
  assign m_axi_wdata[9] = \<const0> ;
  assign m_axi_wdata[8] = \<const0> ;
  assign m_axi_wdata[7] = \<const0> ;
  assign m_axi_wdata[6] = \<const0> ;
  assign m_axi_wdata[5] = \<const0> ;
  assign m_axi_wdata[4] = \<const0> ;
  assign m_axi_wdata[3] = \<const0> ;
  assign m_axi_wdata[2] = \<const0> ;
  assign m_axi_wdata[1] = \<const0> ;
  assign m_axi_wdata[0] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = \<const0> ;
  assign m_axi_wstrb[7] = \<const0> ;
  assign m_axi_wstrb[6] = \<const0> ;
  assign m_axi_wstrb[5] = \<const0> ;
  assign m_axi_wstrb[4] = \<const0> ;
  assign m_axi_wstrb[3] = \<const0> ;
  assign m_axi_wstrb[2] = \<const0> ;
  assign m_axi_wstrb[1] = \<const0> ;
  assign m_axi_wstrb[0] = \<const0> ;
  assign m_axi_wuser[0] = \<const0> ;
  assign m_axi_wvalid = \<const0> ;
  assign m_axis_tdata[7] = \<const0> ;
  assign m_axis_tdata[6] = \<const0> ;
  assign m_axis_tdata[5] = \<const0> ;
  assign m_axis_tdata[4] = \<const0> ;
  assign m_axis_tdata[3] = \<const0> ;
  assign m_axis_tdata[2] = \<const0> ;
  assign m_axis_tdata[1] = \<const0> ;
  assign m_axis_tdata[0] = \<const0> ;
  assign m_axis_tdest[0] = \<const0> ;
  assign m_axis_tid[0] = \<const0> ;
  assign m_axis_tkeep[0] = \<const0> ;
  assign m_axis_tlast = \<const0> ;
  assign m_axis_tstrb[0] = \<const0> ;
  assign m_axis_tuser[3] = \<const0> ;
  assign m_axis_tuser[2] = \<const0> ;
  assign m_axis_tuser[1] = \<const0> ;
  assign m_axis_tuser[0] = \<const0> ;
  assign m_axis_tvalid = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[9] = \<const0> ;
  assign rd_data_count[8] = \<const0> ;
  assign rd_data_count[7] = \<const0> ;
  assign rd_data_count[6] = \<const0> ;
  assign rd_data_count[5] = \<const0> ;
  assign rd_data_count[4] = \<const0> ;
  assign rd_data_count[3] = \<const0> ;
  assign rd_data_count[2] = \<const0> ;
  assign rd_data_count[1] = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const1> ;
  assign s_axi_arready = \<const0> ;
  assign s_axi_awready = \<const0> ;
  assign s_axi_bid[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_bvalid = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rid[0] = \<const0> ;
  assign s_axi_rlast = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  assign s_axi_rvalid = \<const0> ;
  assign s_axi_wready = \<const0> ;
  assign s_axis_tready = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign valid = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[9] = \<const0> ;
  assign wr_data_count[8] = \<const0> ;
  assign wr_data_count[7] = \<const0> ;
  assign wr_data_count[6] = \<const0> ;
  assign wr_data_count[5] = \<const0> ;
  assign wr_data_count[4] = \<const0> ;
  assign wr_data_count[3] = \<const0> ;
  assign wr_data_count[2] = \<const0> ;
  assign wr_data_count[1] = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const1> ;
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
TP_track_fit_fifo_fifo_generator_v12_0_synth inst_fifo_gen
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_builtin" *) 
module TP_track_fit_fifo_fifo_generator_v12_0_builtin
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    rd_clk,
    wr_clk,
    din,
    rst);
  output [125:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input rd_clk;
  input wr_clk;
  input [125:0]din;
  input rst;

  wire [125:0]din;
  wire [125:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire rst_to_builtin;
  wire wr_clk;
  wire wr_en;

TP_track_fit_fifo_reset_builtin \g7ser_birst.rstbt 
       (.rst(rst),
        .rst_to_builtin(rst_to_builtin),
        .wr_clk(wr_clk));
TP_track_fit_fifo_builtin_top_v6 \v7_bi_fifo.fblk 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst_to_builtin(rst_to_builtin),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "fifo_generator_v12_0_synth" *) 
module TP_track_fit_fifo_fifo_generator_v12_0_synth
   (dout,
    empty,
    full,
    rd_en,
    wr_en,
    rd_clk,
    wr_clk,
    din,
    rst);
  output [125:0]dout;
  output empty;
  output full;
  input rd_en;
  input wr_en;
  input rd_clk;
  input wr_clk;
  input [125:0]din;
  input rst;

  wire [125:0]din;
  wire [125:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;

TP_track_fit_fifo_fifo_generator_top \gconvfifo.rf 
       (.din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .rd_clk(rd_clk),
        .rd_en(rd_en),
        .rst(rst),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "reset_builtin" *) 
module TP_track_fit_fifo_reset_builtin
   (rst_to_builtin,
    wr_clk,
    rst);
  output rst_to_builtin;
  input wr_clk;
  input rst;

  wire \n_0_rsync.ric.wr_rst_fb_reg[0] ;
  wire \n_0_rsync.ric.wr_rst_fb_reg[1] ;
  wire \n_0_rsync.ric.wr_rst_fb_reg[2] ;
  wire \n_0_rsync.ric.wr_rst_fb_reg[3] ;
  wire \n_0_rsync.ric.wr_rst_fb_reg[4] ;
  wire [4:0]p_0_in;
  wire [0:0]power_on_wr_rst;
  wire rst;
  wire rst_to_builtin;
  wire wr_clk;
  wire wr_rst_reg;

LUT2 #(
    .INIT(4'hE)) 
     \gf36e1_inst.sngfifo36e1_i_2 
       (.I0(wr_rst_reg),
        .I1(power_on_wr_rst),
        .O(rst_to_builtin));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b1)) 
     \rsync.ric.power_on_wr_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(power_on_wr_rst),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b1)) 
     \rsync.ric.power_on_wr_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(p_0_in[0]),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b1)) 
     \rsync.ric.power_on_wr_rst_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(p_0_in[1]),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b1)) 
     \rsync.ric.power_on_wr_rst_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(p_0_in[2]),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b1)) 
     \rsync.ric.power_on_wr_rst_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(p_0_in[3]),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b1)) 
     \rsync.ric.power_on_wr_rst_reg[5] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(p_0_in[4]),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rsync.ric.wr_rst_fb_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\n_0_rsync.ric.wr_rst_fb_reg[1] ),
        .Q(\n_0_rsync.ric.wr_rst_fb_reg[0] ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rsync.ric.wr_rst_fb_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\n_0_rsync.ric.wr_rst_fb_reg[2] ),
        .Q(\n_0_rsync.ric.wr_rst_fb_reg[1] ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rsync.ric.wr_rst_fb_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\n_0_rsync.ric.wr_rst_fb_reg[3] ),
        .Q(\n_0_rsync.ric.wr_rst_fb_reg[2] ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rsync.ric.wr_rst_fb_reg[3] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\n_0_rsync.ric.wr_rst_fb_reg[4] ),
        .Q(\n_0_rsync.ric.wr_rst_fb_reg[3] ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rsync.ric.wr_rst_fb_reg[4] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(wr_rst_reg),
        .Q(\n_0_rsync.ric.wr_rst_fb_reg[4] ),
        .R(1'b0));
(* ASYNC_REG *) 
   (* msgon = "true" *) 
   FDPE #(
    .INIT(1'b0)) 
     \rsync.ric.wr_rst_reg_reg 
       (.C(wr_clk),
        .CE(\n_0_rsync.ric.wr_rst_fb_reg[0] ),
        .D(1'b0),
        .PRE(rst),
        .Q(wr_rst_reg));
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
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
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
