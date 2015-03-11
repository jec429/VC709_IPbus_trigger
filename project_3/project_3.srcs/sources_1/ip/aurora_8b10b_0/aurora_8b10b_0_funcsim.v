// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
// Date        : Wed Mar 11 18:11:47 2015
// Host        : PCPSB375 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_3/project_3.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_funcsim.v
// Design      : aurora_8b10b_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* core_generation_info = "aurora_8b10b_0,aurora_8b10b_v10_3,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=right,c_gt_clock_1=GTHQ3,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=1,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=X,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=31250,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=125000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *) 
(* NotValidForBitStream *)
module aurora_8b10b_0
   (s_axi_tx_tdata,
    s_axi_tx_tkeep,
    s_axi_tx_tvalid,
    s_axi_tx_tlast,
    s_axi_tx_tready,
    m_axi_rx_tdata,
    m_axi_rx_tkeep,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    rxp,
    rxn,
    txp,
    txn,
    gt_refclk1,
    frame_err,
    hard_err,
    soft_err,
    lane_up,
    channel_up,
    warn_cc,
    do_cc,
    user_clk,
    sync_clk,
    gt_reset,
    reset,
    sys_reset_out,
    power_down,
    loopback,
    tx_lock,
    init_clk_in,
    tx_resetdone_out,
    rx_resetdone_out,
    link_reset_out,
    drpclk_in,
    drpaddr_in,
    drpen_in,
    drpdi_in,
    drprdy_out,
    drpdo_out,
    drpwe_in,
    gt0_qplllock_in,
    gt0_qpllrefclklost_in,
    gt0_qpllreset_out,
    gt_qpllclk_quad4_in,
    gt_qpllrefclk_quad4_in,
    tx_out_clk,
    pll_not_locked);
  input [0:31]s_axi_tx_tdata;
  input [0:3]s_axi_tx_tkeep;
  input s_axi_tx_tvalid;
  input s_axi_tx_tlast;
  output s_axi_tx_tready;
  output [0:31]m_axi_rx_tdata;
  output [0:3]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  input rxp;
  input rxn;
  output txp;
  output txn;
  input gt_refclk1;
  output frame_err;
  output hard_err;
  output soft_err;
  output lane_up;
  output channel_up;
  input warn_cc;
  input do_cc;
  input user_clk;
  input sync_clk;
  input gt_reset;
  input reset;
  output sys_reset_out;
  input power_down;
  input [2:0]loopback;
  output tx_lock;
  input init_clk_in;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output link_reset_out;
  input drpclk_in;
  input [8:0]drpaddr_in;
  input drpen_in;
  input [15:0]drpdi_in;
  output drprdy_out;
  output [15:0]drpdo_out;
  input drpwe_in;
  input gt0_qplllock_in;
  input gt0_qpllrefclklost_in;
  output gt0_qpllreset_out;
  input gt_qpllclk_quad4_in;
  input gt_qpllrefclk_quad4_in;
  output tx_out_clk;
  input pll_not_locked;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d6 ;
  wire \aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d1_cdc_to ;
  wire \aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d2 ;
  wire \aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d3 ;
  wire \aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d4 ;
  wire \aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d5 ;
  wire \aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d6 ;
  wire \aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d7 ;
  wire channel_up;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d6 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d1_cdc_to ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d2 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d3 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d4 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d5 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d6 ;
  wire \core_reset_logic_i/link_reset_cdc_sync/s_out_d7 ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d6 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d1_cdc_to ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d2 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d3 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d4 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d5 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d6 ;
  wire \core_reset_logic_i/tx_lock_cdc_sync/s_out_d7 ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d6 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d1_cdc_to ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d2 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d3 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d4 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d5 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d6 ;
  wire \core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d7 ;
  wire do_cc;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire frame_err;
  wire gt_qpllclk_quad4_in;
  wire gt_qpllrefclk_quad4_in;
  wire gt_refclk1;
  wire gt_reset;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d2 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d3 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d4 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d5 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d6 ;
  wire \gt_wrapper_i/gtrxreset_cdc_sync/s_out_d7 ;
  wire hard_err;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\hpcnt_reset_cdc_sync/s_level_out_bus_d6 ;
  wire \hpcnt_reset_cdc_sync/s_out_d1_cdc_to ;
  wire \hpcnt_reset_cdc_sync/s_out_d2 ;
  wire \hpcnt_reset_cdc_sync/s_out_d3 ;
  wire \hpcnt_reset_cdc_sync/s_out_d4 ;
  wire \hpcnt_reset_cdc_sync/s_out_d5 ;
  wire \hpcnt_reset_cdc_sync/s_out_d6 ;
  wire \hpcnt_reset_cdc_sync/s_out_d7 ;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [0:31]m_axi_rx_tdata;
  wire [1:3]\^m_axi_rx_tkeep ;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire power_down;
  wire reset;
  wire rx_resetdone_out;
  wire rxn;
  wire rxp;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire soft_err;
  wire sync_clk;
  wire sys_reset_out;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_resetdone_out;
  wire txn;
  wire txp;
  wire user_clk;

  assign gt0_qpllreset_out = \<const0> ;
  assign m_axi_rx_tkeep[0] = \<const1> ;
  assign m_axi_rx_tkeep[1:3] = \^m_axi_rx_tkeep [1:3];
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
aurora_8b10b_0_aurora_8b10b_0_core inst
       (.O1(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d2 ),
        .O10(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d5 ),
        .O100(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d5 ),
        .O101(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d6 ),
        .O102(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O103(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d2 ),
        .O104(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d3 ),
        .O105(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d4 ),
        .O106(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d5 ),
        .O107(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_level_out_bus_d6 ),
        .O108(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O109(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d2 ),
        .O11(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d6 ),
        .O110(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d3 ),
        .O111(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d4 ),
        .O112(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d5 ),
        .O113(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_level_out_bus_d6 ),
        .O114(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O115(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ),
        .O116(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ),
        .O117(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ),
        .O118(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ),
        .O119(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ),
        .O12(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O120(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O121(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ),
        .O122(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ),
        .O123(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ),
        .O124(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ),
        .O125(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ),
        .O126(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O127(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ),
        .O128(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ),
        .O129(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ),
        .O13(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d2 ),
        .O130(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ),
        .O131(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ),
        .O132(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O133(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d2 ),
        .O134(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d3 ),
        .O135(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d4 ),
        .O136(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d5 ),
        .O137(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_level_out_bus_d6 ),
        .O138(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O139(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ),
        .O14(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d3 ),
        .O140(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ),
        .O141(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ),
        .O142(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ),
        .O143(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ),
        .O144(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O145(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d2 ),
        .O146(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d3 ),
        .O147(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d4 ),
        .O148(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d5 ),
        .O149(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_level_out_bus_d6 ),
        .O15(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d4 ),
        .O150(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O151(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2 ),
        .O152(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3 ),
        .O153(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4 ),
        .O154(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5 ),
        .O155(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6 ),
        .O156(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O157(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2 ),
        .O158(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3 ),
        .O159(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4 ),
        .O16(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d5 ),
        .O160(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5 ),
        .O161(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6 ),
        .O162(drprdy_out),
        .O163(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O164(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d2 ),
        .O165(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d3 ),
        .O166(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d4 ),
        .O167(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d5 ),
        .O168(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_level_out_bus_d6 ),
        .O169(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O17(\core_reset_logic_i/tx_lock_cdc_sync/s_level_out_bus_d6 ),
        .O170(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d2 ),
        .O171(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d3 ),
        .O172(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d4 ),
        .O173(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d5 ),
        .O174(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_level_out_bus_d6 ),
        .O175(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O176(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d2 ),
        .O177(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d3 ),
        .O178(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d4 ),
        .O179(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d5 ),
        .O18(\hpcnt_reset_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O180(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_level_out_bus_d6 ),
        .O181(sys_reset_out),
        .O182(channel_up),
        .O19(\hpcnt_reset_cdc_sync/s_level_out_bus_d2 ),
        .O2(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d3 ),
        .O20(\hpcnt_reset_cdc_sync/s_level_out_bus_d3 ),
        .O21(\hpcnt_reset_cdc_sync/s_level_out_bus_d4 ),
        .O22(\hpcnt_reset_cdc_sync/s_level_out_bus_d5 ),
        .O23(\hpcnt_reset_cdc_sync/s_level_out_bus_d6 ),
        .O24(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O25(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d2 ),
        .O26(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d3 ),
        .O27(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d4 ),
        .O28(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d5 ),
        .O29(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d6 ),
        .O3(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d4 ),
        .O30(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O31(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d2 ),
        .O32(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d3 ),
        .O33(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d4 ),
        .O34(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d5 ),
        .O35(\gt_wrapper_i/gtrxreset_cdc_sync/s_level_out_bus_d6 ),
        .O36(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O37(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ),
        .O38(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ),
        .O39(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ),
        .O4(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d5 ),
        .O40(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ),
        .O41(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ),
        .O42(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O43(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ),
        .O44(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ),
        .O45(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ),
        .O46(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ),
        .O47(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ),
        .O48(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O49(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ),
        .O5(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d6 ),
        .O50(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ),
        .O51(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ),
        .O52(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ),
        .O53(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ),
        .O54(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O55(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d2 ),
        .O56(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d3 ),
        .O57(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d4 ),
        .O58(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d5 ),
        .O59(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_level_out_bus_d6 ),
        .O6(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O60(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O61(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ),
        .O62(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ),
        .O63(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ),
        .O64(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ),
        .O65(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ),
        .O66(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O67(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d2 ),
        .O68(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d3 ),
        .O69(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d4 ),
        .O7(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d2 ),
        .O70(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d5 ),
        .O71(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_level_out_bus_d6 ),
        .O72(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O73(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d2 ),
        .O74(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d3 ),
        .O75(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d4 ),
        .O76(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d5 ),
        .O77(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_level_out_bus_d6 ),
        .O78(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O79(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d2 ),
        .O8(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d3 ),
        .O80(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d3 ),
        .O81(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d4 ),
        .O82(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d5 ),
        .O83(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_level_out_bus_d6 ),
        .O84(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O85(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d2 ),
        .O86(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d3 ),
        .O87(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d4 ),
        .O88(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d5 ),
        .O89(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_level_out_bus_d6 ),
        .O9(\core_reset_logic_i/link_reset_cdc_sync/s_level_out_bus_d4 ),
        .O90(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O91(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d2 ),
        .O92(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d3 ),
        .O93(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d4 ),
        .O94(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d5 ),
        .O95(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_level_out_bus_d6 ),
        .O96(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O97(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d2 ),
        .O98(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d3 ),
        .O99(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_level_out_bus_d4 ),
        .do_cc(do_cc),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drpwe_in(drpwe_in),
        .frame_err(frame_err),
        .gt_qpllclk_quad4_in(gt_qpllclk_quad4_in),
        .gt_qpllrefclk_quad4_in(gt_qpllrefclk_quad4_in),
        .gt_refclk1(gt_refclk1),
        .gt_reset(gt_reset),
        .hard_err(hard_err),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .link_reset_out(link_reset_out),
        .loopback(loopback),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep({\^m_axi_rx_tkeep [1],\^m_axi_rx_tkeep [2],\^m_axi_rx_tkeep [3]}),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .out(\core_reset_logic_i/tx_resetdone_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .power_down(power_down),
        .reset(reset),
        .rx_resetdone_out(rx_resetdone_out),
        .rxn(rxn),
        .rxp(rxp),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .s_out_d1_cdc_to(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_0(\core_reset_logic_i/link_reset_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_105(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_112(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_119(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_126(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_133(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_14(\hpcnt_reset_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_140(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_147(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_154(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_161(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_168(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_175(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_182(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_189(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_196(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_21(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_28(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_35(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_42(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_49(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_56(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_63(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_7(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_70(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_77(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_84(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_91(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_98(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d2(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d2 ),
        .s_out_d2_1(\core_reset_logic_i/link_reset_cdc_sync/s_out_d2 ),
        .s_out_d2_106(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d2 ),
        .s_out_d2_113(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d2 ),
        .s_out_d2_120(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d2 ),
        .s_out_d2_127(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2 ),
        .s_out_d2_134(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d2 ),
        .s_out_d2_141(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2 ),
        .s_out_d2_148(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d2 ),
        .s_out_d2_15(\hpcnt_reset_cdc_sync/s_out_d2 ),
        .s_out_d2_155(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2 ),
        .s_out_d2_162(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d2 ),
        .s_out_d2_169(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d2 ),
        .s_out_d2_176(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d2 ),
        .s_out_d2_183(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d2 ),
        .s_out_d2_190(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d2 ),
        .s_out_d2_197(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d2 ),
        .s_out_d2_22(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d2 ),
        .s_out_d2_29(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d2 ),
        .s_out_d2_36(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d2 ),
        .s_out_d2_43(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d2 ),
        .s_out_d2_50(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d2 ),
        .s_out_d2_57(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d2 ),
        .s_out_d2_64(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d2 ),
        .s_out_d2_71(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d2 ),
        .s_out_d2_78(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d2 ),
        .s_out_d2_8(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d2 ),
        .s_out_d2_85(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d2 ),
        .s_out_d2_92(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d2 ),
        .s_out_d2_99(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d2 ),
        .s_out_d3(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d3 ),
        .s_out_d3_100(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d3 ),
        .s_out_d3_107(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d3 ),
        .s_out_d3_114(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d3 ),
        .s_out_d3_121(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d3 ),
        .s_out_d3_128(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3 ),
        .s_out_d3_135(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d3 ),
        .s_out_d3_142(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3 ),
        .s_out_d3_149(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d3 ),
        .s_out_d3_156(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3 ),
        .s_out_d3_16(\hpcnt_reset_cdc_sync/s_out_d3 ),
        .s_out_d3_163(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d3 ),
        .s_out_d3_170(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d3 ),
        .s_out_d3_177(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d3 ),
        .s_out_d3_184(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d3 ),
        .s_out_d3_191(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d3 ),
        .s_out_d3_198(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d3 ),
        .s_out_d3_2(\core_reset_logic_i/link_reset_cdc_sync/s_out_d3 ),
        .s_out_d3_23(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d3 ),
        .s_out_d3_30(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d3 ),
        .s_out_d3_37(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d3 ),
        .s_out_d3_44(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d3 ),
        .s_out_d3_51(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d3 ),
        .s_out_d3_58(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d3 ),
        .s_out_d3_65(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d3 ),
        .s_out_d3_72(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d3 ),
        .s_out_d3_79(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d3 ),
        .s_out_d3_86(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d3 ),
        .s_out_d3_9(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d3 ),
        .s_out_d3_93(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d3 ),
        .s_out_d4(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d4 ),
        .s_out_d4_10(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d4 ),
        .s_out_d4_101(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d4 ),
        .s_out_d4_108(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d4 ),
        .s_out_d4_115(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d4 ),
        .s_out_d4_122(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d4 ),
        .s_out_d4_129(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4 ),
        .s_out_d4_136(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d4 ),
        .s_out_d4_143(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4 ),
        .s_out_d4_150(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d4 ),
        .s_out_d4_157(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4 ),
        .s_out_d4_164(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d4 ),
        .s_out_d4_17(\hpcnt_reset_cdc_sync/s_out_d4 ),
        .s_out_d4_171(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d4 ),
        .s_out_d4_178(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d4 ),
        .s_out_d4_185(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d4 ),
        .s_out_d4_192(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d4 ),
        .s_out_d4_199(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d4 ),
        .s_out_d4_24(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d4 ),
        .s_out_d4_3(\core_reset_logic_i/link_reset_cdc_sync/s_out_d4 ),
        .s_out_d4_31(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d4 ),
        .s_out_d4_38(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d4 ),
        .s_out_d4_45(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d4 ),
        .s_out_d4_52(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d4 ),
        .s_out_d4_59(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d4 ),
        .s_out_d4_66(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d4 ),
        .s_out_d4_73(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d4 ),
        .s_out_d4_80(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d4 ),
        .s_out_d4_87(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d4 ),
        .s_out_d4_94(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d4 ),
        .s_out_d5(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d5 ),
        .s_out_d5_102(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d5 ),
        .s_out_d5_109(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d5 ),
        .s_out_d5_11(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d5 ),
        .s_out_d5_116(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d5 ),
        .s_out_d5_123(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d5 ),
        .s_out_d5_130(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5 ),
        .s_out_d5_137(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d5 ),
        .s_out_d5_144(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5 ),
        .s_out_d5_151(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d5 ),
        .s_out_d5_158(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5 ),
        .s_out_d5_165(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d5 ),
        .s_out_d5_172(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d5 ),
        .s_out_d5_179(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d5 ),
        .s_out_d5_18(\hpcnt_reset_cdc_sync/s_out_d5 ),
        .s_out_d5_186(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d5 ),
        .s_out_d5_193(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d5 ),
        .s_out_d5_200(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d5 ),
        .s_out_d5_25(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d5 ),
        .s_out_d5_32(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d5 ),
        .s_out_d5_39(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d5 ),
        .s_out_d5_4(\core_reset_logic_i/link_reset_cdc_sync/s_out_d5 ),
        .s_out_d5_46(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d5 ),
        .s_out_d5_53(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d5 ),
        .s_out_d5_60(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d5 ),
        .s_out_d5_67(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d5 ),
        .s_out_d5_74(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d5 ),
        .s_out_d5_81(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d5 ),
        .s_out_d5_88(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d5 ),
        .s_out_d5_95(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d5 ),
        .s_out_d6(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d6 ),
        .s_out_d6_103(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d6 ),
        .s_out_d6_110(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d6 ),
        .s_out_d6_117(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d6 ),
        .s_out_d6_12(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d6 ),
        .s_out_d6_124(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d6 ),
        .s_out_d6_131(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6 ),
        .s_out_d6_138(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d6 ),
        .s_out_d6_145(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6 ),
        .s_out_d6_152(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d6 ),
        .s_out_d6_159(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6 ),
        .s_out_d6_166(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d6 ),
        .s_out_d6_173(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d6 ),
        .s_out_d6_180(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d6 ),
        .s_out_d6_187(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d6 ),
        .s_out_d6_19(\hpcnt_reset_cdc_sync/s_out_d6 ),
        .s_out_d6_194(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d6 ),
        .s_out_d6_201(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d6 ),
        .s_out_d6_26(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d6 ),
        .s_out_d6_33(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d6 ),
        .s_out_d6_40(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d6 ),
        .s_out_d6_47(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d6 ),
        .s_out_d6_5(\core_reset_logic_i/link_reset_cdc_sync/s_out_d6 ),
        .s_out_d6_54(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d6 ),
        .s_out_d6_61(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d6 ),
        .s_out_d6_68(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d6 ),
        .s_out_d6_75(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d6 ),
        .s_out_d6_82(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d6 ),
        .s_out_d6_89(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d6 ),
        .s_out_d6_96(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d6 ),
        .s_out_d7(\core_reset_logic_i/tx_resetdone_cdc_sync/s_out_d7 ),
        .s_out_d7_104(\gt_wrapper_i/gt_rxresetfsm_i/sync2_pmaresetdone_cdc_sync/s_out_d7 ),
        .s_out_d7_111(\gt_wrapper_i/gt_rxresetfsm_i/sync2_txpmaresetdone_cdc_sync/s_out_d7 ),
        .s_out_d7_118(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_cdc_sync/s_out_d7 ),
        .s_out_d7_125(\gt_wrapper_i/gt_rxresetfsm_i/sync_pmaresetdone_fallingedge_detect_cdc_sync/s_out_d7 ),
        .s_out_d7_13(\core_reset_logic_i/tx_lock_cdc_sync/s_out_d7 ),
        .s_out_d7_132(\gt_wrapper_i/gt_rxresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7 ),
        .s_out_d7_139(\gt_wrapper_i/gt_rxresetfsm_i/sync_rx_fsm_reset_done_int_cdc_sync/s_out_d7 ),
        .s_out_d7_146(\gt_wrapper_i/gt_rxresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7 ),
        .s_out_d7_153(\gt_wrapper_i/gt_rxresetfsm_i/sync_RXRESETDONE_cdc_sync/s_out_d7 ),
        .s_out_d7_160(\gt_wrapper_i/gt_rxresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7 ),
        .s_out_d7_167(\gt_wrapper_i/gt_rxresetfsm_i/sync_data_valid_cdc_sync/s_out_d7 ),
        .s_out_d7_174(\gt_wrapper_i/gt_rxresetfsm_i/sync_cplllock_cdc_sync/s_out_d7 ),
        .s_out_d7_181(\gt_wrapper_i/gt_rxresetfsm_i/sync_qplllock_cdc_sync/s_out_d7 ),
        .s_out_d7_188(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rxpmaresetdone_cdc_sync/s_out_d7 ),
        .s_out_d7_195(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/rst_cdc_sync/s_out_d7 ),
        .s_out_d7_20(\hpcnt_reset_cdc_sync/s_out_d7 ),
        .s_out_d7_202(\gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gtrxreset_seq_i/gtrxreset_in_cdc_sync/s_out_d7 ),
        .s_out_d7_27(\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d7 ),
        .s_out_d7_34(\gt_wrapper_i/gtrxreset_cdc_sync/s_out_d7 ),
        .s_out_d7_41(\gt_wrapper_i/gt_txresetfsm_i/sync_run_phase_alignment_int_cdc_sync/s_out_d7 ),
        .s_out_d7_48(\gt_wrapper_i/gt_txresetfsm_i/sync_tx_fsm_reset_done_int_cdc_sync/s_out_d7 ),
        .s_out_d7_55(\gt_wrapper_i/gt_txresetfsm_i/sync_time_out_wait_bypass_cdc_sync/s_out_d7 ),
        .s_out_d7_6(\core_reset_logic_i/link_reset_cdc_sync/s_out_d7 ),
        .s_out_d7_62(\gt_wrapper_i/gt_txresetfsm_i/sync_TXRESETDONE_cdc_sync/s_out_d7 ),
        .s_out_d7_69(\gt_wrapper_i/gt_txresetfsm_i/sync_mmcm_lock_reclocked_cdc_sync/s_out_d7 ),
        .s_out_d7_76(\gt_wrapper_i/gt_txresetfsm_i/sync_cplllock_cdc_sync/s_out_d7 ),
        .s_out_d7_83(\gt_wrapper_i/gt_txresetfsm_i/sync_qplllock_cdc_sync/s_out_d7 ),
        .s_out_d7_90(\gt_wrapper_i/gt_rxresetfsm_i/gtrxreset_cdc_sync/s_out_d7 ),
        .s_out_d7_97(\gt_wrapper_i/gt_rxresetfsm_i/rxpmaresetdone_rx_cdc_sync/s_out_d7 ),
        .soft_err(soft_err),
        .sync_clk(sync_clk),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .tx_resetdone_out(tx_resetdone_out),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_AURORA_LANE_4BYTE" *) 
module aurora_8b10b_0_aurora_8b10b_0_AURORA_LANE_4BYTE
   (lane_up,
    s_out_d1_cdc_to_21,
    s_out_d2_22,
    s_out_d3_23,
    s_out_d4_24,
    s_out_d5_25,
    s_out_d6_26,
    s_out_d7_27,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    link_reset_out,
    ena_comma_align_i,
    TXCHARISK,
    GOT_V,
    rx_polarity_i,
    O1,
    O2,
    Q,
    O3,
    O4,
    hard_err_i,
    O5,
    O6,
    O7,
    O8,
    TXDATA,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    S1,
    S11_in,
    SR,
    user_clk,
    init_clk_in,
    gen_cc_i,
    GEN_ECP,
    I1,
    gen_a_i,
    I2,
    I3,
    hard_err_gt0,
    rx_realign_i,
    RXDISPERR,
    I4,
    RXCHARISK,
    RXDATA,
    D,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16);
  output lane_up;
  output s_out_d1_cdc_to_21;
  output s_out_d2_22;
  output s_out_d3_23;
  output s_out_d4_24;
  output s_out_d5_25;
  output s_out_d6_26;
  output s_out_d7_27;
  output [1:0]O24;
  output [1:0]O25;
  output [1:0]O26;
  output [1:0]O27;
  output [1:0]O28;
  output [1:0]O29;
  output link_reset_out;
  output ena_comma_align_i;
  output [3:0]TXCHARISK;
  output GOT_V;
  output rx_polarity_i;
  output O1;
  output O2;
  output [1:0]Q;
  output [1:0]O3;
  output O4;
  output hard_err_i;
  output [0:0]O5;
  output O6;
  output O7;
  output [7:0]O8;
  output [31:0]TXDATA;
  output [7:0]O9;
  output [7:0]O10;
  output [7:0]O11;
  output [7:0]O12;
  output [1:0]O13;
  output [1:0]O14;
  output S1;
  output S11_in;
  input [0:0]SR;
  input user_clk;
  input init_clk_in;
  input gen_cc_i;
  input GEN_ECP;
  input I1;
  input gen_a_i;
  input I2;
  input I3;
  input hard_err_gt0;
  input rx_realign_i;
  input [1:0]RXDISPERR;
  input I4;
  input [3:0]RXCHARISK;
  input [31:0]RXDATA;
  input [3:0]D;
  input [1:0]I5;
  input [1:0]I6;
  input [2:0]I7;
  input [3:0]I8;
  input [3:0]I9;
  input [31:0]I10;
  input [7:0]I11;
  input [7:0]I12;
  input I13;
  input I14;
  input I15;
  input I16;

  wire [3:0]D;
  wire GEN_ECP;
  wire GEN_SP;
  wire GOT_V;
  wire I1;
  wire [31:0]I10;
  wire [7:0]I11;
  wire [7:0]I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I2;
  wire I3;
  wire I4;
  wire [1:0]I5;
  wire [1:0]I6;
  wire [2:0]I7;
  wire [3:0]I8;
  wire [3:0]I9;
  wire O1;
  wire [7:0]O10;
  wire [7:0]O11;
  wire [7:0]O12;
  wire [1:0]O13;
  wire [1:0]O14;
  wire O2;
  wire [1:0]O24;
  wire [1:0]O25;
  wire [1:0]O26;
  wire [1:0]O27;
  wire [1:0]O28;
  wire [1:0]O29;
  wire [1:0]O3;
  wire O4;
  wire [0:0]O5;
  wire O6;
  wire O7;
  wire [7:0]O8;
  wire [7:0]O9;
  wire [1:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [1:0]RXDISPERR;
  wire RX_CC;
  wire RX_NEG;
  wire S1;
  wire S11_in;
  wire [0:0]SR;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire counter3_r0;
  wire counter4_r0;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire first_v_received_r;
  wire gen_a_i;
  wire gen_cc_i;
  wire gen_spa_i;
  wire gen_spa_r;
  wire hard_err_gt0;
  wire hard_err_i;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire n_7_aurora_8b10b_0_lane_init_sm_4byte_i;
  wire n_8_aurora_8b10b_0_lane_init_sm_4byte_i;
  wire ready_r;
  wire ready_r0;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire s_out_d1_cdc_to_21;
  wire s_out_d2_22;
  wire s_out_d3_23;
  wire s_out_d4_24;
  wire s_out_d5_25;
  wire s_out_d6_26;
  wire s_out_d7_27;
  wire user_clk;

aurora_8b10b_0_aurora_8b10b_0_ERR_DETECT_4BYTE aurora_8b10b_0_err_detect_4byte_i
       (.I1(n_7_aurora_8b10b_0_lane_init_sm_4byte_i),
        .I13(I13),
        .I14(I14),
        .I15(I15),
        .I16(I16),
        .O14(O14),
        .SR(SR),
        .enable_err_detect_i(enable_err_detect_i),
        .hard_err_gt0(hard_err_gt0),
        .hard_err_i(hard_err_i),
        .ready_r0(ready_r0),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_hotplug aurora_8b10b_0_hotplug_i
       (.D(RX_CC),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .SR(SR),
        .init_clk_in(init_clk_in),
        .link_reset_out(link_reset_out),
        .s_out_d1_cdc_to_21(s_out_d1_cdc_to_21),
        .s_out_d2_22(s_out_d2_22),
        .s_out_d3_23(s_out_d3_23),
        .s_out_d4_24(s_out_d4_24),
        .s_out_d5_25(s_out_d5_25),
        .s_out_d6_26(s_out_d6_26),
        .s_out_d7_27(s_out_d7_27),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_LANE_INIT_SM_4BYTE aurora_8b10b_0_lane_init_sm_4byte_i
       (.D(D),
        .GEN_SP(GEN_SP),
        .I4(I4),
        .O1(ena_comma_align_i),
        .O2(n_7_aurora_8b10b_0_lane_init_sm_4byte_i),
        .O3(n_8_aurora_8b10b_0_lane_init_sm_4byte_i),
        .RXCHARISK(RXCHARISK[3:2]),
        .RXDISPERR(RXDISPERR),
        .RX_NEG(RX_NEG),
        .SR(SR),
        .counter3_r0(counter3_r0),
        .counter4_r0(counter4_r0),
        .enable_err_detect_i(enable_err_detect_i),
        .first_v_received_r(first_v_received_r),
        .gen_spa_i(gen_spa_i),
        .gen_spa_r(gen_spa_r),
        .lane_up(lane_up),
        .ready_r(ready_r),
        .ready_r0(ready_r0),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_SYM_DEC_4BYTE aurora_8b10b_0_sym_dec_4byte_i
       (.D(RX_CC),
        .GOT_V(GOT_V),
        .I1(n_8_aurora_8b10b_0_lane_init_sm_4byte_i),
        .I11(I11),
        .I12(I12),
        .I2(I2),
        .I3(I3),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O6),
        .O6(O5),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .Q(Q),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .RX_NEG(RX_NEG),
        .S1(S1),
        .S11_in(S11_in),
        .counter3_r0(counter3_r0),
        .counter4_r0(counter4_r0),
        .first_v_received_r(first_v_received_r),
        .gen_spa_i(gen_spa_i),
        .lane_up(lane_up),
        .ready_r(ready_r),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_SYM_GEN_4BYTE aurora_8b10b_0_sym_gen_4byte_i
       (.GEN_ECP(GEN_ECP),
        .GEN_SP(GEN_SP),
        .I1(I1),
        .I10(I10),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_spa_i(gen_spa_i),
        .gen_spa_r(gen_spa_r),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_AXI_TO_LL" *) 
module aurora_8b10b_0_aurora_8b10b_0_AXI_TO_LL
   (O1,
    O2,
    user_clk,
    O181,
    O182,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    tx_dst_rdy);
  output O1;
  output O2;
  input user_clk;
  input O181;
  input O182;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input tx_dst_rdy;

  wire O1;
  wire O181;
  wire O182;
  wire O2;
  wire new_pkt_r;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tvalid;
  wire tx_dst_rdy;
  wire user_clk;

LUT6 #(
    .INIT(64'h2020202000302020)) 
     new_pkt_r_i_1
       (.I0(O1),
        .I1(O181),
        .I2(O182),
        .I3(s_axi_tx_tlast),
        .I4(s_axi_tx_tvalid),
        .I5(tx_dst_rdy),
        .O(new_pkt_r));
FDRE new_pkt_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(new_pkt_r),
        .Q(O1),
        .R(1'b0));
LUT3 #(
    .INIT(8'hFB)) 
     sof_to_eof_1_r_i_2
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .I2(tx_dst_rdy),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_CHANNEL_ERR_DETECT" *) 
module aurora_8b10b_0_aurora_8b10b_0_CHANNEL_ERR_DETECT
   (soft_err,
    hard_err,
    reset_channel_i,
    wait_for_lane_up_r0,
    user_clk,
    hard_err_i,
    lane_up,
    power_down,
    I1,
    D);
  output soft_err;
  output hard_err;
  output reset_channel_i;
  output wait_for_lane_up_r0;
  input user_clk;
  input hard_err_i;
  input lane_up;
  input power_down;
  input [0:0]I1;
  input [1:0]D;

  wire [1:0]D;
  wire [0:0]I1;
  wire channel_soft_err_c;
  wire hard_err;
  wire hard_err_i;
  wire hard_err_r;
  wire lane_up;
  wire lane_up_r;
  wire n_0_RESET_CHANNEL_i_1;
  wire \n_0_soft_err_r_reg[0] ;
  wire \n_0_soft_err_r_reg[1] ;
  wire power_down;
  wire reset_channel_i;
  wire soft_err;
  wire user_clk;
  wire wait_for_lane_up_r0;

FDRE #(
    .INIT(1'b1)) 
     CHANNEL_HARD_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_r),
        .Q(hard_err),
        .R(1'b0));
LUT2 #(
    .INIT(4'hE)) 
     CHANNEL_SOFT_ERR_i_1
       (.I0(\n_0_soft_err_r_reg[1] ),
        .I1(\n_0_soft_err_r_reg[0] ),
        .O(channel_soft_err_c));
FDRE #(
    .INIT(1'b1)) 
     CHANNEL_SOFT_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(channel_soft_err_c),
        .Q(soft_err),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     RESET_CHANNEL_i_1
       (.I0(power_down),
        .I1(lane_up_r),
        .O(n_0_RESET_CHANNEL_i_1));
FDRE #(
    .INIT(1'b1)) 
     RESET_CHANNEL_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_RESET_CHANNEL_i_1),
        .Q(reset_channel_i),
        .R(1'b0));
FDRE hard_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_i),
        .Q(hard_err_r),
        .R(1'b0));
FDRE lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(lane_up),
        .Q(lane_up_r),
        .R(1'b0));
LUT2 #(
    .INIT(4'hE)) 
     ready_r_i_1
       (.I0(reset_channel_i),
        .I1(I1),
        .O(wait_for_lane_up_r0));
FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(\n_0_soft_err_r_reg[0] ),
        .R(1'b0));
FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\n_0_soft_err_r_reg[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_CHANNEL_INIT_SM" *) 
module aurora_8b10b_0_aurora_8b10b_0_CHANNEL_INIT_SM
   (SR,
    O1,
    gen_ver_i,
    gtrxreset_i,
    START_RX,
    O2,
    reset_i,
    user_clk,
    wait_for_lane_up_r0,
    GOT_V,
    I1,
    txver_count_r0,
    reset_channel_i);
  output [0:0]SR;
  output O1;
  output gen_ver_i;
  output gtrxreset_i;
  output START_RX;
  output [0:0]O2;
  output reset_i;
  input user_clk;
  input wait_for_lane_up_r0;
  input GOT_V;
  input [0:0]I1;
  input txver_count_r0;
  input reset_channel_i;

  wire GOT_V;
  wire [0:0]I1;
  wire O1;
  wire [0:0]O2;
  wire [0:0]SR;
  wire START_RX;
  wire START_RX0;
  wire all_lanes_v_r;
  wire bad_v_r;
  wire bad_v_r0;
  wire [0:13]free_count_r_reg;
  wire gen_ver_i;
  wire got_first_v_r;
  wire [7:0]gtrxreset_extend_r;
  wire gtrxreset_i;
  wire gtrxreset_nxt;
  wire n_0_GTRXRESET_OUT_i_1;
  wire n_0_GTRXRESET_OUT_i_2;
  wire \n_0_free_count_r[13]_i_2 ;
  wire \n_0_free_count_r[13]_i_3 ;
  wire \n_0_free_count_r[13]_i_4 ;
  wire \n_0_free_count_r[13]_i_5 ;
  wire \n_0_free_count_r[1]_i_2 ;
  wire \n_0_free_count_r[1]_i_3 ;
  wire \n_0_free_count_r[5]_i_2 ;
  wire \n_0_free_count_r[5]_i_3 ;
  wire \n_0_free_count_r[5]_i_4 ;
  wire \n_0_free_count_r[5]_i_5 ;
  wire \n_0_free_count_r[9]_i_2 ;
  wire \n_0_free_count_r[9]_i_3 ;
  wire \n_0_free_count_r[9]_i_4 ;
  wire \n_0_free_count_r[9]_i_5 ;
  wire \n_0_free_count_r_reg[13]_i_1 ;
  wire \n_0_free_count_r_reg[5]_i_1 ;
  wire \n_0_free_count_r_reg[9]_i_1 ;
  wire n_0_got_first_v_r_i_1;
  wire \n_0_rxver_count_r_reg[1]_srl2 ;
  wire \n_0_rxver_count_r_reg[1]_srl2_i_1 ;
  wire \n_0_rxver_count_r_reg[2] ;
  wire \n_0_txver_count_r_reg[6]_srl7 ;
  wire \n_0_txver_count_r_reg[7] ;
  wire \n_0_v_count_r_reg[14]_srl15 ;
  wire \n_0_v_count_r_reg[15] ;
  wire \n_0_verify_watchdog_r_reg[14]_srl15 ;
  wire \n_0_verify_watchdog_r_reg[14]_srl15_i_1 ;
  wire \n_0_verify_watchdog_r_reg[14]_srl15_i_2 ;
  wire \n_0_verify_watchdog_r_reg[14]_srl15_i_3 ;
  wire \n_0_verify_watchdog_r_reg[15] ;
  wire \n_1_free_count_r_reg[13]_i_1 ;
  wire \n_1_free_count_r_reg[5]_i_1 ;
  wire \n_1_free_count_r_reg[9]_i_1 ;
  wire \n_2_free_count_r_reg[13]_i_1 ;
  wire \n_2_free_count_r_reg[5]_i_1 ;
  wire \n_2_free_count_r_reg[9]_i_1 ;
  wire \n_3_free_count_r_reg[13]_i_1 ;
  wire \n_3_free_count_r_reg[1]_i_1 ;
  wire \n_3_free_count_r_reg[5]_i_1 ;
  wire \n_3_free_count_r_reg[9]_i_1 ;
  wire \n_4_free_count_r_reg[13]_i_1 ;
  wire \n_4_free_count_r_reg[5]_i_1 ;
  wire \n_4_free_count_r_reg[9]_i_1 ;
  wire \n_5_free_count_r_reg[13]_i_1 ;
  wire \n_5_free_count_r_reg[5]_i_1 ;
  wire \n_5_free_count_r_reg[9]_i_1 ;
  wire \n_6_free_count_r_reg[13]_i_1 ;
  wire \n_6_free_count_r_reg[1]_i_1 ;
  wire \n_6_free_count_r_reg[5]_i_1 ;
  wire \n_6_free_count_r_reg[9]_i_1 ;
  wire \n_7_free_count_r_reg[13]_i_1 ;
  wire \n_7_free_count_r_reg[1]_i_1 ;
  wire \n_7_free_count_r_reg[5]_i_1 ;
  wire \n_7_free_count_r_reg[9]_i_1 ;
  wire next_ready_c;
  wire next_verify_c;
  wire [15:15]p_2_out;
  wire p_3_in;
  wire ready_r;
  wire ready_r2;
  wire reset_channel_i;
  wire reset_i;
  wire reset_lanes_c;
  wire txver_count_r0;
  wire user_clk;
  wire wait_for_lane_up_r;
  wire wait_for_lane_up_r0;
  wire [3:1]\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED ;

FDRE CHANNEL_UP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r2),
        .Q(O1),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     FRAME_ERR_i_1
       (.I0(START_RX),
        .O(O2));
LUT3 #(
    .INIT(8'hFE)) 
     GTRXRESET_OUT_i_1
       (.I0(gtrxreset_extend_r[2]),
        .I1(n_0_GTRXRESET_OUT_i_2),
        .I2(gtrxreset_extend_r[3]),
        .O(n_0_GTRXRESET_OUT_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     GTRXRESET_OUT_i_2
       (.I0(gtrxreset_extend_r[1]),
        .I1(gtrxreset_extend_r[0]),
        .I2(gtrxreset_extend_r[6]),
        .I3(gtrxreset_extend_r[7]),
        .I4(gtrxreset_extend_r[5]),
        .I5(gtrxreset_extend_r[4]),
        .O(n_0_GTRXRESET_OUT_i_2));
FDRE #(
    .INIT(1'b0)) 
     GTRXRESET_OUT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_GTRXRESET_OUT_i_1),
        .Q(gtrxreset_i),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     START_RX_i_1
       (.I0(wait_for_lane_up_r),
        .O(START_RX0));
FDRE START_RX_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(START_RX0),
        .Q(START_RX),
        .R(I1));
FDRE all_lanes_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GOT_V),
        .Q(all_lanes_v_r),
        .R(1'b0));
LUT3 #(
    .INIT(8'h28)) 
     bad_v_r_i_1
       (.I0(got_first_v_r),
        .I1(\n_0_v_count_r_reg[15] ),
        .I2(all_lanes_v_r),
        .O(bad_v_r0));
FDRE bad_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(bad_v_r0),
        .Q(bad_v_r),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[13]_i_2 
       (.I0(free_count_r_reg[10]),
        .O(\n_0_free_count_r[13]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[13]_i_3 
       (.I0(free_count_r_reg[11]),
        .O(\n_0_free_count_r[13]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[13]_i_4 
       (.I0(free_count_r_reg[12]),
        .O(\n_0_free_count_r[13]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[13]_i_5 
       (.I0(free_count_r_reg[13]),
        .O(\n_0_free_count_r[13]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[1]_i_2 
       (.I0(free_count_r_reg[0]),
        .O(\n_0_free_count_r[1]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[1]_i_3 
       (.I0(free_count_r_reg[1]),
        .O(\n_0_free_count_r[1]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[5]_i_2 
       (.I0(free_count_r_reg[2]),
        .O(\n_0_free_count_r[5]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[5]_i_3 
       (.I0(free_count_r_reg[3]),
        .O(\n_0_free_count_r[5]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[5]_i_4 
       (.I0(free_count_r_reg[4]),
        .O(\n_0_free_count_r[5]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[5]_i_5 
       (.I0(free_count_r_reg[5]),
        .O(\n_0_free_count_r[5]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[9]_i_2 
       (.I0(free_count_r_reg[6]),
        .O(\n_0_free_count_r[9]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[9]_i_3 
       (.I0(free_count_r_reg[7]),
        .O(\n_0_free_count_r[9]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[9]_i_4 
       (.I0(free_count_r_reg[8]),
        .O(\n_0_free_count_r[9]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[9]_i_5 
       (.I0(free_count_r_reg[9]),
        .O(\n_0_free_count_r[9]_i_5 ));
FDSE \free_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_6_free_count_r_reg[1]_i_1 ),
        .Q(free_count_r_reg[0]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_4_free_count_r_reg[13]_i_1 ),
        .Q(free_count_r_reg[10]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_5_free_count_r_reg[13]_i_1 ),
        .Q(free_count_r_reg[11]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_6_free_count_r_reg[13]_i_1 ),
        .Q(free_count_r_reg[12]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_7_free_count_r_reg[13]_i_1 ),
        .Q(free_count_r_reg[13]),
        .S(wait_for_lane_up_r0));
CARRY4 \free_count_r_reg[13]_i_1 
       (.CI(1'b0),
        .CO({\n_0_free_count_r_reg[13]_i_1 ,\n_1_free_count_r_reg[13]_i_1 ,\n_2_free_count_r_reg[13]_i_1 ,\n_3_free_count_r_reg[13]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_free_count_r_reg[13]_i_1 ,\n_5_free_count_r_reg[13]_i_1 ,\n_6_free_count_r_reg[13]_i_1 ,\n_7_free_count_r_reg[13]_i_1 }),
        .S({\n_0_free_count_r[13]_i_2 ,\n_0_free_count_r[13]_i_3 ,\n_0_free_count_r[13]_i_4 ,\n_0_free_count_r[13]_i_5 }));
FDSE \free_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_7_free_count_r_reg[1]_i_1 ),
        .Q(free_count_r_reg[1]),
        .S(wait_for_lane_up_r0));
CARRY4 \free_count_r_reg[1]_i_1 
       (.CI(\n_0_free_count_r_reg[5]_i_1 ),
        .CO({\NLW_free_count_r_reg[1]_i_1_CO_UNCONNECTED [3:1],\n_3_free_count_r_reg[1]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\NLW_free_count_r_reg[1]_i_1_O_UNCONNECTED [3:2],\n_6_free_count_r_reg[1]_i_1 ,\n_7_free_count_r_reg[1]_i_1 }),
        .S({1'b0,1'b0,\n_0_free_count_r[1]_i_2 ,\n_0_free_count_r[1]_i_3 }));
FDSE \free_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_4_free_count_r_reg[5]_i_1 ),
        .Q(free_count_r_reg[2]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_5_free_count_r_reg[5]_i_1 ),
        .Q(free_count_r_reg[3]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_6_free_count_r_reg[5]_i_1 ),
        .Q(free_count_r_reg[4]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_7_free_count_r_reg[5]_i_1 ),
        .Q(free_count_r_reg[5]),
        .S(wait_for_lane_up_r0));
CARRY4 \free_count_r_reg[5]_i_1 
       (.CI(\n_0_free_count_r_reg[9]_i_1 ),
        .CO({\n_0_free_count_r_reg[5]_i_1 ,\n_1_free_count_r_reg[5]_i_1 ,\n_2_free_count_r_reg[5]_i_1 ,\n_3_free_count_r_reg[5]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_free_count_r_reg[5]_i_1 ,\n_5_free_count_r_reg[5]_i_1 ,\n_6_free_count_r_reg[5]_i_1 ,\n_7_free_count_r_reg[5]_i_1 }),
        .S({\n_0_free_count_r[5]_i_2 ,\n_0_free_count_r[5]_i_3 ,\n_0_free_count_r[5]_i_4 ,\n_0_free_count_r[5]_i_5 }));
FDSE \free_count_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_4_free_count_r_reg[9]_i_1 ),
        .Q(free_count_r_reg[6]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_5_free_count_r_reg[9]_i_1 ),
        .Q(free_count_r_reg[7]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_6_free_count_r_reg[9]_i_1 ),
        .Q(free_count_r_reg[8]),
        .S(wait_for_lane_up_r0));
FDSE \free_count_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_7_free_count_r_reg[9]_i_1 ),
        .Q(free_count_r_reg[9]),
        .S(wait_for_lane_up_r0));
CARRY4 \free_count_r_reg[9]_i_1 
       (.CI(\n_0_free_count_r_reg[13]_i_1 ),
        .CO({\n_0_free_count_r_reg[9]_i_1 ,\n_1_free_count_r_reg[9]_i_1 ,\n_2_free_count_r_reg[9]_i_1 ,\n_3_free_count_r_reg[9]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_free_count_r_reg[9]_i_1 ,\n_5_free_count_r_reg[9]_i_1 ,\n_6_free_count_r_reg[9]_i_1 ,\n_7_free_count_r_reg[9]_i_1 }),
        .S({\n_0_free_count_r[9]_i_2 ,\n_0_free_count_r[9]_i_3 ,\n_0_free_count_r[9]_i_4 ,\n_0_free_count_r[9]_i_5 }));
LUT1 #(
    .INIT(2'h1)) 
     gen_cc_flop_0_i_i_1
       (.I0(O1),
        .O(reset_i));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hA8)) 
     got_first_v_r_i_1
       (.I0(gen_ver_i),
        .I1(got_first_v_r),
        .I2(all_lanes_v_r),
        .O(n_0_got_first_v_r_i_1));
FDRE got_first_v_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_got_first_v_r_i_1),
        .Q(got_first_v_r),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b1)) 
     gtreset_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_in),
        .Q(gtrxreset_nxt),
        .R(1'b0));
LUT4 #(
    .INIT(16'h8A88)) 
     gtreset_flop_0_i_i_1
       (.I0(gen_ver_i),
        .I1(\n_0_verify_watchdog_r_reg[15] ),
        .I2(\n_0_rxver_count_r_reg[2] ),
        .I3(bad_v_r),
        .O(p_3_in));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[1]),
        .Q(gtrxreset_extend_r[0]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[2]),
        .Q(gtrxreset_extend_r[1]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[3]),
        .Q(gtrxreset_extend_r[2]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[4]),
        .Q(gtrxreset_extend_r[3]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[5]),
        .Q(gtrxreset_extend_r[4]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[6]),
        .Q(gtrxreset_extend_r[5]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_extend_r[7]),
        .Q(gtrxreset_extend_r[6]),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \gtrxreset_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gtrxreset_nxt),
        .Q(gtrxreset_extend_r[7]),
        .R(I1));
FDRE ready_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(ready_r2),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT4 #(
    .INIT(16'hEAAA)) 
     ready_r_i_2
       (.I0(ready_r),
        .I1(\n_0_rxver_count_r_reg[2] ),
        .I2(\n_0_txver_count_r_reg[7] ),
        .I3(gen_ver_i),
        .O(next_ready_c));
FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(wait_for_lane_up_r0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b1)) 
     reset_lanes_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_lanes_c),
        .Q(SR),
        .R(1'b0));
LUT4 #(
    .INIT(16'hFFAE)) 
     reset_lanes_flop_i_i_1
       (.I0(p_3_in),
        .I1(reset_channel_i),
        .I2(wait_for_lane_up_r),
        .I3(I1),
        .O(reset_lanes_c));
(* srl_bus_name = "\inst/aurora_8b10b_0_global_logic_i/channel_init_sm_i/rxver_count_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 " *) 
   SRL16E \rxver_count_r_reg[1]_srl2 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b0),
        .CE(\n_0_rxver_count_r_reg[1]_srl2_i_1 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\n_0_rxver_count_r_reg[1]_srl2 ));
LUT3 #(
    .INIT(8'h8F)) 
     \rxver_count_r_reg[1]_srl2_i_1 
       (.I0(\n_0_v_count_r_reg[15] ),
        .I1(all_lanes_v_r),
        .I2(gen_ver_i),
        .O(\n_0_rxver_count_r_reg[1]_srl2_i_1 ));
FDRE \rxver_count_r_reg[2] 
       (.C(user_clk),
        .CE(\n_0_rxver_count_r_reg[1]_srl2_i_1 ),
        .D(\n_0_rxver_count_r_reg[1]_srl2 ),
        .Q(\n_0_rxver_count_r_reg[2] ),
        .R(1'b0));
(* srl_bus_name = "\inst/aurora_8b10b_0_global_logic_i/channel_init_sm_i/txver_count_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 " *) 
   SRL16E \txver_count_r_reg[6]_srl7 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b0),
        .CE(txver_count_r0),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\n_0_txver_count_r_reg[6]_srl7 ));
FDRE \txver_count_r_reg[7] 
       (.C(user_clk),
        .CE(txver_count_r0),
        .D(\n_0_txver_count_r_reg[6]_srl7 ),
        .Q(\n_0_txver_count_r_reg[7] ),
        .R(1'b0));
(* srl_bus_name = "\inst/aurora_8b10b_0_global_logic_i/channel_init_sm_i/v_count_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_global_logic_i/channel_init_sm_i/v_count_r_reg[14]_srl15 " *) 
   SRL16E \v_count_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(p_2_out),
        .Q(\n_0_v_count_r_reg[14]_srl15 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT4 #(
    .INIT(16'h8F88)) 
     \v_count_r_reg[14]_srl15_i_1 
       (.I0(\n_0_v_count_r_reg[15] ),
        .I1(gen_ver_i),
        .I2(got_first_v_r),
        .I3(all_lanes_v_r),
        .O(p_2_out));
FDRE \v_count_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_v_count_r_reg[14]_srl15 ),
        .Q(\n_0_v_count_r_reg[15] ),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT4 #(
    .INIT(16'hAEEE)) 
     verify_r_i_1
       (.I0(wait_for_lane_up_r),
        .I1(gen_ver_i),
        .I2(\n_0_rxver_count_r_reg[2] ),
        .I3(\n_0_txver_count_r_reg[7] ),
        .O(next_verify_c));
FDRE verify_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_verify_c),
        .Q(gen_ver_i),
        .R(wait_for_lane_up_r0));
(* srl_bus_name = "\inst/aurora_8b10b_0_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 " *) 
   SRL16E \verify_watchdog_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(\n_0_verify_watchdog_r_reg[14]_srl15_i_1 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\n_0_verify_watchdog_r_reg[14]_srl15 ));
LUT5 #(
    .INIT(32'h0008FFFF)) 
     \verify_watchdog_r_reg[14]_srl15_i_1 
       (.I0(\n_0_verify_watchdog_r_reg[14]_srl15_i_2 ),
        .I1(\n_0_verify_watchdog_r_reg[14]_srl15_i_3 ),
        .I2(free_count_r_reg[12]),
        .I3(free_count_r_reg[6]),
        .I4(gen_ver_i),
        .O(\n_0_verify_watchdog_r_reg[14]_srl15_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \verify_watchdog_r_reg[14]_srl15_i_2 
       (.I0(free_count_r_reg[2]),
        .I1(free_count_r_reg[3]),
        .I2(free_count_r_reg[8]),
        .I3(free_count_r_reg[7]),
        .I4(free_count_r_reg[9]),
        .I5(free_count_r_reg[13]),
        .O(\n_0_verify_watchdog_r_reg[14]_srl15_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \verify_watchdog_r_reg[14]_srl15_i_3 
       (.I0(free_count_r_reg[5]),
        .I1(free_count_r_reg[10]),
        .I2(free_count_r_reg[11]),
        .I3(free_count_r_reg[4]),
        .I4(free_count_r_reg[0]),
        .I5(free_count_r_reg[1]),
        .O(\n_0_verify_watchdog_r_reg[14]_srl15_i_3 ));
FDRE \verify_watchdog_r_reg[15] 
       (.C(user_clk),
        .CE(\n_0_verify_watchdog_r_reg[14]_srl15_i_1 ),
        .D(\n_0_verify_watchdog_r_reg[14]_srl15 ),
        .Q(\n_0_verify_watchdog_r_reg[15] ),
        .R(1'b0));
FDRE wait_for_lane_up_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(wait_for_lane_up_r0),
        .Q(wait_for_lane_up_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_ERR_DETECT_4BYTE" *) 
module aurora_8b10b_0_aurora_8b10b_0_ERR_DETECT_4BYTE
   (ready_r0,
    hard_err_i,
    O14,
    I1,
    user_clk,
    hard_err_gt0,
    SR,
    enable_err_detect_i,
    I13,
    I14,
    I15,
    I16);
  output ready_r0;
  output hard_err_i;
  output [1:0]O14;
  input I1;
  input user_clk;
  input hard_err_gt0;
  input [0:0]SR;
  input enable_err_detect_i;
  input I13;
  input I14;
  input I15;
  input I16;

  wire I1;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire [1:0]O14;
  wire SOFT_ERR0;
  wire [0:0]SR;
  wire cnt_good_code_r;
  wire cnt_soft_err_r;
  wire enable_err_detect_i;
  wire [1:0]err_cnt_r;
  wire [3:0]good_cnt_r_reg__0;
  wire hard_err_frm_soft_err;
  wire hard_err_gt;
  wire hard_err_gt0;
  wire hard_err_i;
  wire \n_0_SOFT_ERR[1]_i_1 ;
  wire n_0_cnt_good_code_r_i_2;
  wire n_0_cnt_good_code_r_i_3;
  wire \n_0_err_cnt_r[0]_i_1 ;
  wire \n_0_err_cnt_r[1]_i_1 ;
  wire \n_0_err_cnt_r[2]_i_1 ;
  wire \n_0_err_cnt_r[2]_i_2 ;
  wire \n_0_good_cnt_r[3]_i_1 ;
  wire \n_0_soft_err_r_reg[0] ;
  wire \n_0_soft_err_r_reg[1] ;
  wire \n_0_soft_err_r_reg[2] ;
  wire \n_0_soft_err_r_reg[3] ;
  wire next_good_code_c;
  wire next_soft_err_c;
  wire next_start_c;
  wire [3:0]p_0_in__4;
  wire p_1_in11_in;
  wire ready_r0;
  wire start_r;
  wire user_clk;

(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \SOFT_ERR[0]_i_1 
       (.I0(\n_0_soft_err_r_reg[1] ),
        .I1(\n_0_soft_err_r_reg[0] ),
        .O(SOFT_ERR0));
LUT2 #(
    .INIT(4'hE)) 
     \SOFT_ERR[1]_i_1 
       (.I0(\n_0_soft_err_r_reg[3] ),
        .I1(\n_0_soft_err_r_reg[2] ),
        .O(\n_0_SOFT_ERR[1]_i_1 ));
FDRE \SOFT_ERR_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(SOFT_ERR0),
        .Q(O14[1]),
        .R(1'b0));
FDRE \SOFT_ERR_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_SOFT_ERR[1]_i_1 ),
        .Q(O14[0]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'hFFAE)) 
     align_r_i_1
       (.I0(SR),
        .I1(p_1_in11_in),
        .I2(hard_err_frm_soft_err),
        .I3(hard_err_gt),
        .O(ready_r0));
LUT5 #(
    .INIT(32'hAAAA2A00)) 
     cnt_good_code_r_i_1
       (.I0(n_0_cnt_good_code_r_i_2),
        .I1(n_0_cnt_good_code_r_i_3),
        .I2(good_cnt_r_reg__0[3]),
        .I3(cnt_good_code_r),
        .I4(cnt_soft_err_r),
        .O(next_good_code_c));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     cnt_good_code_r_i_2
       (.I0(\n_0_soft_err_r_reg[0] ),
        .I1(\n_0_soft_err_r_reg[1] ),
        .I2(\n_0_soft_err_r_reg[2] ),
        .I3(\n_0_soft_err_r_reg[3] ),
        .O(n_0_cnt_good_code_r_i_2));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'h80)) 
     cnt_good_code_r_i_3
       (.I0(good_cnt_r_reg__0[2]),
        .I1(good_cnt_r_reg__0[1]),
        .I2(good_cnt_r_reg__0[0]),
        .O(n_0_cnt_good_code_r_i_3));
FDRE cnt_good_code_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_good_code_c),
        .Q(cnt_good_code_r),
        .R(I1));
LUT4 #(
    .INIT(16'h5554)) 
     cnt_soft_err_r_i_1
       (.I0(n_0_cnt_good_code_r_i_2),
        .I1(cnt_soft_err_r),
        .I2(start_r),
        .I3(cnt_good_code_r),
        .O(next_soft_err_c));
FDRE cnt_soft_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_soft_err_c),
        .Q(cnt_soft_err_r),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hBEBE4140)) 
     \err_cnt_r[0]_i_1 
       (.I0(p_1_in11_in),
        .I1(\n_0_err_cnt_r[2]_i_2 ),
        .I2(cnt_soft_err_r),
        .I3(err_cnt_r[1]),
        .I4(err_cnt_r[0]),
        .O(\n_0_err_cnt_r[0]_i_1 ));
LUT5 #(
    .INIT(32'hCCCC6CC8)) 
     \err_cnt_r[1]_i_1 
       (.I0(err_cnt_r[0]),
        .I1(err_cnt_r[1]),
        .I2(cnt_soft_err_r),
        .I3(\n_0_err_cnt_r[2]_i_2 ),
        .I4(p_1_in11_in),
        .O(\n_0_err_cnt_r[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hFFFF8000)) 
     \err_cnt_r[2]_i_1 
       (.I0(err_cnt_r[0]),
        .I1(err_cnt_r[1]),
        .I2(cnt_soft_err_r),
        .I3(\n_0_err_cnt_r[2]_i_2 ),
        .I4(p_1_in11_in),
        .O(\n_0_err_cnt_r[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'hEEEF)) 
     \err_cnt_r[2]_i_2 
       (.I0(good_cnt_r_reg__0[1]),
        .I1(good_cnt_r_reg__0[0]),
        .I2(good_cnt_r_reg__0[3]),
        .I3(good_cnt_r_reg__0[2]),
        .O(\n_0_err_cnt_r[2]_i_2 ));
FDRE \err_cnt_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_err_cnt_r[0]_i_1 ),
        .Q(err_cnt_r[0]),
        .R(I1));
FDRE \err_cnt_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_err_cnt_r[1]_i_1 ),
        .Q(err_cnt_r[1]),
        .R(I1));
FDRE \err_cnt_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_err_cnt_r[2]_i_1 ),
        .Q(p_1_in11_in),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \good_cnt_r[0]_i_1 
       (.I0(good_cnt_r_reg__0[0]),
        .O(p_0_in__4[0]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \good_cnt_r[1]_i_1 
       (.I0(good_cnt_r_reg__0[0]),
        .I1(good_cnt_r_reg__0[1]),
        .O(p_0_in__4[1]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \good_cnt_r[2]_i_1 
       (.I0(good_cnt_r_reg__0[0]),
        .I1(good_cnt_r_reg__0[1]),
        .I2(good_cnt_r_reg__0[2]),
        .O(p_0_in__4[2]));
LUT4 #(
    .INIT(16'hEFFF)) 
     \good_cnt_r[3]_i_1 
       (.I0(start_r),
        .I1(cnt_soft_err_r),
        .I2(enable_err_detect_i),
        .I3(cnt_good_code_r),
        .O(\n_0_good_cnt_r[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \good_cnt_r[3]_i_2 
       (.I0(good_cnt_r_reg__0[3]),
        .I1(good_cnt_r_reg__0[0]),
        .I2(good_cnt_r_reg__0[1]),
        .I3(good_cnt_r_reg__0[2]),
        .O(p_0_in__4[3]));
FDRE \good_cnt_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__4[0]),
        .Q(good_cnt_r_reg__0[0]),
        .R(\n_0_good_cnt_r[3]_i_1 ));
FDRE \good_cnt_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__4[1]),
        .Q(good_cnt_r_reg__0[1]),
        .R(\n_0_good_cnt_r[3]_i_1 ));
FDRE \good_cnt_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__4[2]),
        .Q(good_cnt_r_reg__0[2]),
        .R(\n_0_good_cnt_r[3]_i_1 ));
FDRE \good_cnt_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_0_in__4[3]),
        .Q(good_cnt_r_reg__0[3]),
        .R(\n_0_good_cnt_r[3]_i_1 ));
FDRE hard_err_frm_soft_err_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_in11_in),
        .Q(hard_err_frm_soft_err),
        .R(I1));
FDRE hard_err_gt_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(hard_err_gt0),
        .Q(hard_err_gt),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     hard_err_r_i_1
       (.I0(hard_err_gt),
        .I1(hard_err_frm_soft_err),
        .I2(p_1_in11_in),
        .O(hard_err_i));
FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I13),
        .Q(\n_0_soft_err_r_reg[0] ),
        .R(I1));
FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I14),
        .Q(\n_0_soft_err_r_reg[1] ),
        .R(I1));
FDRE \soft_err_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I15),
        .Q(\n_0_soft_err_r_reg[2] ),
        .R(I1));
FDRE \soft_err_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I16),
        .Q(\n_0_soft_err_r_reg[3] ),
        .R(I1));
LUT5 #(
    .INIT(32'hA8888888)) 
     start_r_i_1
       (.I0(n_0_cnt_good_code_r_i_2),
        .I1(start_r),
        .I2(n_0_cnt_good_code_r_i_3),
        .I3(good_cnt_r_reg__0[3]),
        .I4(cnt_good_code_r),
        .O(next_start_c));
FDSE start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_start_c),
        .Q(start_r),
        .S(I1));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_GLOBAL_LOGIC" *) 
module aurora_8b10b_0_aurora_8b10b_0_GLOBAL_LOGIC
   (SR,
    I7,
    gen_a_i,
    I9,
    I8,
    O1,
    gtrxreset_i,
    soft_err,
    hard_err,
    START_RX,
    O2,
    reset_i,
    user_clk,
    GOT_V,
    hard_err_i,
    lane_up,
    I1,
    power_down,
    D);
  output [0:0]SR;
  output [2:0]I7;
  output gen_a_i;
  output [3:0]I9;
  output [3:0]I8;
  output O1;
  output gtrxreset_i;
  output soft_err;
  output hard_err;
  output START_RX;
  output [0:0]O2;
  output reset_i;
  input user_clk;
  input GOT_V;
  input hard_err_i;
  input lane_up;
  input [0:0]I1;
  input power_down;
  input [1:0]D;

  wire [1:0]D;
  wire GOT_V;
  wire [0:0]I1;
  wire [2:0]I7;
  wire [3:0]I8;
  wire [3:0]I9;
  wire O1;
  wire [0:0]O2;
  wire [0:0]SR;
  wire START_RX;
  wire gen_a_i;
  wire gen_ver_i;
  wire gtrxreset_i;
  wire hard_err;
  wire hard_err_i;
  wire lane_up;
  wire power_down;
  wire reset_channel_i;
  wire reset_i;
  wire soft_err;
  wire txver_count_r0;
  wire user_clk;
  wire wait_for_lane_up_r0;

aurora_8b10b_0_aurora_8b10b_0_CHANNEL_ERR_DETECT channel_err_detect_i
       (.D(D),
        .I1(I1),
        .hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .lane_up(lane_up),
        .power_down(power_down),
        .reset_channel_i(reset_channel_i),
        .soft_err(soft_err),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
aurora_8b10b_0_aurora_8b10b_0_CHANNEL_INIT_SM channel_init_sm_i
       (.GOT_V(GOT_V),
        .I1(I1),
        .O1(O1),
        .O2(O2),
        .SR(SR),
        .START_RX(START_RX),
        .gen_ver_i(gen_ver_i),
        .gtrxreset_i(gtrxreset_i),
        .reset_channel_i(reset_channel_i),
        .reset_i(reset_i),
        .txver_count_r0(txver_count_r0),
        .user_clk(user_clk),
        .wait_for_lane_up_r0(wait_for_lane_up_r0));
aurora_8b10b_0_aurora_8b10b_0_IDLE_AND_VER_GEN idle_and_ver_gen_i
       (.I1(I1),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .gen_a_i(gen_a_i),
        .gen_ver_i(gen_ver_i),
        .txver_count_r0(txver_count_r0),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_GT_WRAPPER" *) 
module aurora_8b10b_0_aurora_8b10b_0_GT_WRAPPER
   (s_out_d1_cdc_to_28,
    s_out_d2_29,
    s_out_d3_30,
    s_out_d4_31,
    s_out_d5_32,
    s_out_d6_33,
    s_out_d7_34,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    s_out_d1_cdc_to_35,
    s_out_d2_36,
    s_out_d3_37,
    s_out_d4_38,
    s_out_d5_39,
    s_out_d6_40,
    s_out_d7_41,
    O36,
    O37,
    O38,
    O39,
    O40,
    O41,
    O1,
    s_out_d1_cdc_to_42,
    s_out_d2_43,
    s_out_d3_44,
    s_out_d4_45,
    s_out_d5_46,
    s_out_d6_47,
    s_out_d7_48,
    O42,
    O43,
    O44,
    O45,
    O46,
    O47,
    s_out_d1_cdc_to_49,
    s_out_d2_50,
    s_out_d3_51,
    s_out_d4_52,
    s_out_d5_53,
    s_out_d6_54,
    s_out_d7_55,
    O48,
    O49,
    O50,
    O51,
    O52,
    O53,
    s_out_d1_cdc_to_56,
    s_out_d2_57,
    s_out_d3_58,
    s_out_d4_59,
    s_out_d5_60,
    s_out_d6_61,
    s_out_d7_62,
    O54,
    O55,
    O56,
    O57,
    O58,
    O59,
    s_out_d1_cdc_to_63,
    s_out_d2_64,
    s_out_d3_65,
    s_out_d4_66,
    s_out_d5_67,
    s_out_d6_68,
    s_out_d7_69,
    O60,
    O61,
    O62,
    O63,
    O64,
    O65,
    O2,
    s_out_d1_cdc_to_70,
    s_out_d2_71,
    s_out_d3_72,
    s_out_d4_73,
    s_out_d5_74,
    s_out_d6_75,
    s_out_d7_76,
    O66,
    O67,
    O68,
    O69,
    O70,
    O71,
    s_out_d1_cdc_to_77,
    s_out_d2_78,
    s_out_d3_79,
    s_out_d4_80,
    s_out_d5_81,
    s_out_d6_82,
    s_out_d7_83,
    O72,
    O73,
    O74,
    O75,
    O76,
    O77,
    s_out_d1_cdc_to_84,
    s_out_d2_85,
    s_out_d3_86,
    s_out_d4_87,
    s_out_d5_88,
    s_out_d6_89,
    s_out_d7_90,
    O78,
    O79,
    O80,
    O81,
    O82,
    O83,
    s_out_d1_cdc_to_91,
    s_out_d2_92,
    s_out_d3_93,
    s_out_d4_94,
    s_out_d5_95,
    s_out_d6_96,
    s_out_d7_97,
    O84,
    O85,
    O86,
    O87,
    O88,
    O89,
    s_out_d1_cdc_to_98,
    s_out_d2_99,
    s_out_d3_100,
    s_out_d4_101,
    s_out_d5_102,
    s_out_d6_103,
    s_out_d7_104,
    O90,
    O91,
    O92,
    O93,
    O94,
    O95,
    s_out_d1_cdc_to_105,
    s_out_d2_106,
    s_out_d3_107,
    s_out_d4_108,
    s_out_d5_109,
    s_out_d6_110,
    s_out_d7_111,
    O96,
    O97,
    O98,
    O99,
    O100,
    O101,
    s_out_d1_cdc_to_112,
    s_out_d2_113,
    s_out_d3_114,
    s_out_d4_115,
    s_out_d5_116,
    s_out_d6_117,
    s_out_d7_118,
    O102,
    O103,
    O104,
    O105,
    O106,
    O107,
    s_out_d1_cdc_to_119,
    s_out_d2_120,
    s_out_d3_121,
    s_out_d4_122,
    s_out_d5_123,
    s_out_d6_124,
    s_out_d7_125,
    O108,
    O109,
    O110,
    O111,
    O112,
    O113,
    s_out_d1_cdc_to_126,
    s_out_d2_127,
    s_out_d3_128,
    s_out_d4_129,
    s_out_d5_130,
    s_out_d6_131,
    s_out_d7_132,
    O114,
    O115,
    O116,
    O117,
    O118,
    O119,
    s_out_d1_cdc_to_133,
    s_out_d2_134,
    s_out_d3_135,
    s_out_d4_136,
    s_out_d5_137,
    s_out_d6_138,
    s_out_d7_139,
    O120,
    O121,
    O122,
    O123,
    O124,
    O125,
    s_out_d1_cdc_to_140,
    s_out_d2_141,
    s_out_d3_142,
    s_out_d4_143,
    s_out_d5_144,
    s_out_d6_145,
    s_out_d7_146,
    O126,
    O127,
    O128,
    O129,
    O130,
    O131,
    s_out_d1_cdc_to_147,
    s_out_d2_148,
    s_out_d3_149,
    s_out_d4_150,
    s_out_d5_151,
    s_out_d6_152,
    s_out_d7_153,
    O132,
    O133,
    O134,
    O135,
    O136,
    O137,
    s_out_d1_cdc_to_154,
    s_out_d2_155,
    s_out_d3_156,
    s_out_d4_157,
    s_out_d5_158,
    s_out_d6_159,
    s_out_d7_160,
    O138,
    O139,
    O140,
    O141,
    O142,
    O143,
    s_out_d1_cdc_to_161,
    s_out_d2_162,
    s_out_d3_163,
    s_out_d4_164,
    s_out_d5_165,
    s_out_d6_166,
    s_out_d7_167,
    O144,
    O145,
    O146,
    O147,
    O148,
    O149,
    s_out_d1_cdc_to_168,
    s_out_d2_169,
    s_out_d3_170,
    s_out_d4_171,
    s_out_d5_172,
    s_out_d6_173,
    s_out_d7_174,
    O150,
    O151,
    O152,
    O153,
    O154,
    O155,
    s_out_d1_cdc_to_175,
    s_out_d2_176,
    s_out_d3_177,
    s_out_d4_178,
    s_out_d5_179,
    s_out_d6_180,
    s_out_d7_181,
    O156,
    O157,
    O158,
    O159,
    O160,
    O161,
    O3,
    txn,
    txp,
    rx_realign_i,
    tx_out_clk,
    drpdo_out,
    RXDATA,
    D,
    RXCHARISK,
    RXDISPERR,
    s_out_d1_cdc_to_182,
    s_out_d2_183,
    s_out_d3_184,
    s_out_d4_185,
    s_out_d5_186,
    s_out_d6_187,
    s_out_d7_188,
    O163,
    O164,
    O165,
    O166,
    O167,
    O168,
    s_out_d1_cdc_to_189,
    s_out_d2_190,
    s_out_d3_191,
    s_out_d4_192,
    s_out_d5_193,
    s_out_d6_194,
    s_out_d7_195,
    O169,
    O170,
    O171,
    O172,
    O173,
    O174,
    s_out_d1_cdc_to_196,
    s_out_d2_197,
    s_out_d3_198,
    s_out_d4_199,
    s_out_d5_200,
    s_out_d6_201,
    s_out_d7_202,
    O175,
    O176,
    O177,
    O178,
    O179,
    O180,
    rx_resetdone_out,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    hard_err_gt0,
    I11,
    I12,
    gtrxreset_i,
    init_clk_in,
    drpclk_in,
    rxn,
    rxp,
    gt_refclk1,
    gt_qpllclk_quad4_in,
    gt_qpllrefclk_quad4_in,
    ena_comma_align_i,
    rx_polarity_i,
    sync_clk,
    user_clk,
    power_down,
    loopback,
    TXDATA,
    TXCHARISK,
    link_reset_comb_r,
    gt_reset,
    I1,
    I2,
    I3,
    I4,
    drpen_in,
    drpdi_in,
    drpwe_in,
    drpaddr_in);
  output s_out_d1_cdc_to_28;
  output s_out_d2_29;
  output s_out_d3_30;
  output s_out_d4_31;
  output s_out_d5_32;
  output s_out_d6_33;
  output s_out_d7_34;
  output [1:0]O30;
  output [1:0]O31;
  output [1:0]O32;
  output [1:0]O33;
  output [1:0]O34;
  output [1:0]O35;
  output s_out_d1_cdc_to_35;
  output s_out_d2_36;
  output s_out_d3_37;
  output s_out_d4_38;
  output s_out_d5_39;
  output s_out_d6_40;
  output s_out_d7_41;
  output [1:0]O36;
  output [1:0]O37;
  output [1:0]O38;
  output [1:0]O39;
  output [1:0]O40;
  output [1:0]O41;
  output O1;
  output s_out_d1_cdc_to_42;
  output s_out_d2_43;
  output s_out_d3_44;
  output s_out_d4_45;
  output s_out_d5_46;
  output s_out_d6_47;
  output s_out_d7_48;
  output [1:0]O42;
  output [1:0]O43;
  output [1:0]O44;
  output [1:0]O45;
  output [1:0]O46;
  output [1:0]O47;
  output s_out_d1_cdc_to_49;
  output s_out_d2_50;
  output s_out_d3_51;
  output s_out_d4_52;
  output s_out_d5_53;
  output s_out_d6_54;
  output s_out_d7_55;
  output [1:0]O48;
  output [1:0]O49;
  output [1:0]O50;
  output [1:0]O51;
  output [1:0]O52;
  output [1:0]O53;
  output s_out_d1_cdc_to_56;
  output s_out_d2_57;
  output s_out_d3_58;
  output s_out_d4_59;
  output s_out_d5_60;
  output s_out_d6_61;
  output s_out_d7_62;
  output [1:0]O54;
  output [1:0]O55;
  output [1:0]O56;
  output [1:0]O57;
  output [1:0]O58;
  output [1:0]O59;
  output s_out_d1_cdc_to_63;
  output s_out_d2_64;
  output s_out_d3_65;
  output s_out_d4_66;
  output s_out_d5_67;
  output s_out_d6_68;
  output s_out_d7_69;
  output [1:0]O60;
  output [1:0]O61;
  output [1:0]O62;
  output [1:0]O63;
  output [1:0]O64;
  output [1:0]O65;
  output O2;
  output s_out_d1_cdc_to_70;
  output s_out_d2_71;
  output s_out_d3_72;
  output s_out_d4_73;
  output s_out_d5_74;
  output s_out_d6_75;
  output s_out_d7_76;
  output [1:0]O66;
  output [1:0]O67;
  output [1:0]O68;
  output [1:0]O69;
  output [1:0]O70;
  output [1:0]O71;
  output s_out_d1_cdc_to_77;
  output s_out_d2_78;
  output s_out_d3_79;
  output s_out_d4_80;
  output s_out_d5_81;
  output s_out_d6_82;
  output s_out_d7_83;
  output [1:0]O72;
  output [1:0]O73;
  output [1:0]O74;
  output [1:0]O75;
  output [1:0]O76;
  output [1:0]O77;
  output s_out_d1_cdc_to_84;
  output s_out_d2_85;
  output s_out_d3_86;
  output s_out_d4_87;
  output s_out_d5_88;
  output s_out_d6_89;
  output s_out_d7_90;
  output [1:0]O78;
  output [1:0]O79;
  output [1:0]O80;
  output [1:0]O81;
  output [1:0]O82;
  output [1:0]O83;
  output s_out_d1_cdc_to_91;
  output s_out_d2_92;
  output s_out_d3_93;
  output s_out_d4_94;
  output s_out_d5_95;
  output s_out_d6_96;
  output s_out_d7_97;
  output [1:0]O84;
  output [1:0]O85;
  output [1:0]O86;
  output [1:0]O87;
  output [1:0]O88;
  output [1:0]O89;
  output s_out_d1_cdc_to_98;
  output s_out_d2_99;
  output s_out_d3_100;
  output s_out_d4_101;
  output s_out_d5_102;
  output s_out_d6_103;
  output s_out_d7_104;
  output [1:0]O90;
  output [1:0]O91;
  output [1:0]O92;
  output [1:0]O93;
  output [1:0]O94;
  output [1:0]O95;
  output s_out_d1_cdc_to_105;
  output s_out_d2_106;
  output s_out_d3_107;
  output s_out_d4_108;
  output s_out_d5_109;
  output s_out_d6_110;
  output s_out_d7_111;
  output [1:0]O96;
  output [1:0]O97;
  output [1:0]O98;
  output [1:0]O99;
  output [1:0]O100;
  output [1:0]O101;
  output s_out_d1_cdc_to_112;
  output s_out_d2_113;
  output s_out_d3_114;
  output s_out_d4_115;
  output s_out_d5_116;
  output s_out_d6_117;
  output s_out_d7_118;
  output [1:0]O102;
  output [1:0]O103;
  output [1:0]O104;
  output [1:0]O105;
  output [1:0]O106;
  output [1:0]O107;
  output s_out_d1_cdc_to_119;
  output s_out_d2_120;
  output s_out_d3_121;
  output s_out_d4_122;
  output s_out_d5_123;
  output s_out_d6_124;
  output s_out_d7_125;
  output [1:0]O108;
  output [1:0]O109;
  output [1:0]O110;
  output [1:0]O111;
  output [1:0]O112;
  output [1:0]O113;
  output s_out_d1_cdc_to_126;
  output s_out_d2_127;
  output s_out_d3_128;
  output s_out_d4_129;
  output s_out_d5_130;
  output s_out_d6_131;
  output s_out_d7_132;
  output [1:0]O114;
  output [1:0]O115;
  output [1:0]O116;
  output [1:0]O117;
  output [1:0]O118;
  output [1:0]O119;
  output s_out_d1_cdc_to_133;
  output s_out_d2_134;
  output s_out_d3_135;
  output s_out_d4_136;
  output s_out_d5_137;
  output s_out_d6_138;
  output s_out_d7_139;
  output [1:0]O120;
  output [1:0]O121;
  output [1:0]O122;
  output [1:0]O123;
  output [1:0]O124;
  output [1:0]O125;
  output s_out_d1_cdc_to_140;
  output s_out_d2_141;
  output s_out_d3_142;
  output s_out_d4_143;
  output s_out_d5_144;
  output s_out_d6_145;
  output s_out_d7_146;
  output [1:0]O126;
  output [1:0]O127;
  output [1:0]O128;
  output [1:0]O129;
  output [1:0]O130;
  output [1:0]O131;
  output s_out_d1_cdc_to_147;
  output s_out_d2_148;
  output s_out_d3_149;
  output s_out_d4_150;
  output s_out_d5_151;
  output s_out_d6_152;
  output s_out_d7_153;
  output [1:0]O132;
  output [1:0]O133;
  output [1:0]O134;
  output [1:0]O135;
  output [1:0]O136;
  output [1:0]O137;
  output s_out_d1_cdc_to_154;
  output s_out_d2_155;
  output s_out_d3_156;
  output s_out_d4_157;
  output s_out_d5_158;
  output s_out_d6_159;
  output s_out_d7_160;
  output [1:0]O138;
  output [1:0]O139;
  output [1:0]O140;
  output [1:0]O141;
  output [1:0]O142;
  output [1:0]O143;
  output s_out_d1_cdc_to_161;
  output s_out_d2_162;
  output s_out_d3_163;
  output s_out_d4_164;
  output s_out_d5_165;
  output s_out_d6_166;
  output s_out_d7_167;
  output [1:0]O144;
  output [1:0]O145;
  output [1:0]O146;
  output [1:0]O147;
  output [1:0]O148;
  output [1:0]O149;
  output s_out_d1_cdc_to_168;
  output s_out_d2_169;
  output s_out_d3_170;
  output s_out_d4_171;
  output s_out_d5_172;
  output s_out_d6_173;
  output s_out_d7_174;
  output [1:0]O150;
  output [1:0]O151;
  output [1:0]O152;
  output [1:0]O153;
  output [1:0]O154;
  output [1:0]O155;
  output s_out_d1_cdc_to_175;
  output s_out_d2_176;
  output s_out_d3_177;
  output s_out_d4_178;
  output s_out_d5_179;
  output s_out_d6_180;
  output s_out_d7_181;
  output [1:0]O156;
  output [1:0]O157;
  output [1:0]O158;
  output [1:0]O159;
  output [1:0]O160;
  output [1:0]O161;
  output O3;
  output txn;
  output txp;
  output rx_realign_i;
  output tx_out_clk;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]D;
  output [3:0]RXCHARISK;
  output [1:0]RXDISPERR;
  output s_out_d1_cdc_to_182;
  output s_out_d2_183;
  output s_out_d3_184;
  output s_out_d4_185;
  output s_out_d5_186;
  output s_out_d6_187;
  output s_out_d7_188;
  output [1:0]O163;
  output [1:0]O164;
  output [1:0]O165;
  output [1:0]O166;
  output [1:0]O167;
  output [1:0]O168;
  output s_out_d1_cdc_to_189;
  output s_out_d2_190;
  output s_out_d3_191;
  output s_out_d4_192;
  output s_out_d5_193;
  output s_out_d6_194;
  output s_out_d7_195;
  output [1:0]O169;
  output [1:0]O170;
  output [1:0]O171;
  output [1:0]O172;
  output [1:0]O173;
  output [1:0]O174;
  output s_out_d1_cdc_to_196;
  output s_out_d2_197;
  output s_out_d3_198;
  output s_out_d4_199;
  output s_out_d5_200;
  output s_out_d6_201;
  output s_out_d7_202;
  output [1:0]O175;
  output [1:0]O176;
  output [1:0]O177;
  output [1:0]O178;
  output [1:0]O179;
  output [1:0]O180;
  output rx_resetdone_out;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output hard_err_gt0;
  output [7:0]I11;
  output [7:0]I12;
  input gtrxreset_i;
  input init_clk_in;
  input drpclk_in;
  input rxn;
  input rxp;
  input gt_refclk1;
  input gt_qpllclk_quad4_in;
  input gt_qpllrefclk_quad4_in;
  input ena_comma_align_i;
  input rx_polarity_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input link_reset_comb_r;
  input gt_reset;
  input I1;
  input I2;
  input [0:0]I3;
  input [7:0]I4;
  input drpen_in;
  input [15:0]drpdi_in;
  input drpwe_in;
  input [8:0]drpaddr_in;

  wire [3:0]D;
  wire I1;
  wire [7:0]I11;
  wire [7:0]I12;
  wire I2;
  wire [0:0]I3;
  wire [7:0]I4;
  wire O1;
  wire O10;
  wire [1:0]O100;
  wire [1:0]O101;
  wire [1:0]O102;
  wire [1:0]O103;
  wire [1:0]O104;
  wire [1:0]O105;
  wire [1:0]O106;
  wire [1:0]O107;
  wire [1:0]O108;
  wire [1:0]O109;
  wire O11;
  wire [1:0]O110;
  wire [1:0]O111;
  wire [1:0]O112;
  wire [1:0]O113;
  wire [1:0]O114;
  wire [1:0]O115;
  wire [1:0]O116;
  wire [1:0]O117;
  wire [1:0]O118;
  wire [1:0]O119;
  wire [1:0]O120;
  wire [1:0]O121;
  wire [1:0]O122;
  wire [1:0]O123;
  wire [1:0]O124;
  wire [1:0]O125;
  wire [1:0]O126;
  wire [1:0]O127;
  wire [1:0]O128;
  wire [1:0]O129;
  wire [1:0]O130;
  wire [1:0]O131;
  wire [1:0]O132;
  wire [1:0]O133;
  wire [1:0]O134;
  wire [1:0]O135;
  wire [1:0]O136;
  wire [1:0]O137;
  wire [1:0]O138;
  wire [1:0]O139;
  wire [1:0]O140;
  wire [1:0]O141;
  wire [1:0]O142;
  wire [1:0]O143;
  wire [1:0]O144;
  wire [1:0]O145;
  wire [1:0]O146;
  wire [1:0]O147;
  wire [1:0]O148;
  wire [1:0]O149;
  wire [1:0]O150;
  wire [1:0]O151;
  wire [1:0]O152;
  wire [1:0]O153;
  wire [1:0]O154;
  wire [1:0]O155;
  wire [1:0]O156;
  wire [1:0]O157;
  wire [1:0]O158;
  wire [1:0]O159;
  wire [1:0]O160;
  wire [1:0]O161;
  wire [1:0]O163;
  wire [1:0]O164;
  wire [1:0]O165;
  wire [1:0]O166;
  wire [1:0]O167;
  wire [1:0]O168;
  wire [1:0]O169;
  wire [1:0]O170;
  wire [1:0]O171;
  wire [1:0]O172;
  wire [1:0]O173;
  wire [1:0]O174;
  wire [1:0]O175;
  wire [1:0]O176;
  wire [1:0]O177;
  wire [1:0]O178;
  wire [1:0]O179;
  wire [1:0]O180;
  wire O2;
  wire O3;
  wire [1:0]O30;
  wire [1:0]O31;
  wire [1:0]O32;
  wire [1:0]O33;
  wire [1:0]O34;
  wire [1:0]O35;
  wire [1:0]O36;
  wire [1:0]O37;
  wire [1:0]O38;
  wire [1:0]O39;
  wire O4;
  wire [1:0]O40;
  wire [1:0]O41;
  wire [1:0]O42;
  wire [1:0]O43;
  wire [1:0]O44;
  wire [1:0]O45;
  wire [1:0]O46;
  wire [1:0]O47;
  wire [1:0]O48;
  wire [1:0]O49;
  wire O5;
  wire [1:0]O50;
  wire [1:0]O51;
  wire [1:0]O52;
  wire [1:0]O53;
  wire [1:0]O54;
  wire [1:0]O55;
  wire [1:0]O56;
  wire [1:0]O57;
  wire [1:0]O58;
  wire [1:0]O59;
  wire O6;
  wire [1:0]O60;
  wire [1:0]O61;
  wire [1:0]O62;
  wire [1:0]O63;
  wire [1:0]O64;
  wire [1:0]O65;
  wire [1:0]O66;
  wire [1:0]O67;
  wire [1:0]O68;
  wire [1:0]O69;
  wire O7;
  wire [1:0]O70;
  wire [1:0]O71;
  wire [1:0]O72;
  wire [1:0]O73;
  wire [1:0]O74;
  wire [1:0]O75;
  wire [1:0]O76;
  wire [1:0]O77;
  wire [1:0]O78;
  wire [1:0]O79;
  wire O8;
  wire [1:0]O80;
  wire [1:0]O81;
  wire [1:0]O82;
  wire [1:0]O83;
  wire [1:0]O84;
  wire [1:0]O85;
  wire [1:0]O86;
  wire [1:0]O87;
  wire [1:0]O88;
  wire [1:0]O89;
  wire O9;
  wire [1:0]O90;
  wire [1:0]O91;
  wire [1:0]O92;
  wire [1:0]O93;
  wire [1:0]O94;
  wire [1:0]O95;
  wire [1:0]O96;
  wire [1:0]O97;
  wire [1:0]O98;
  wire [1:0]O99;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [1:0]RXDISPERR;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire cpll_reset_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire fsm_gt_rx_reset_t;
  wire \gt0_aurora_8b10b_0_i/ack_flag ;
  wire gt_qpllclk_quad4_in;
  wire gt_qpllrefclk_quad4_in;
  wire gt_refclk1;
  wire gt_reset;
  wire gt_rx_reset_i;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_i;
  wire gtrxreset_pulse;
  wire gtrxreset_r2;
  wire gtrxreset_r3;
  wire hard_err_gt0;
  wire init_clk_in;
  wire link_reset_comb_r;
  wire link_reset_r2;
  wire [2:0]loopback;
  wire n_0_gt0_rxresetdone_r3_reg_srl3;
  wire n_0_gt0_txresetdone_r3_reg_srl3;
  wire n_0_gtrxreset_cdc_sync;
  wire n_0_gtrxreset_pulse_i_1;
  wire \n_0_rx_cdrlock_counter[12]_i_3 ;
  wire \n_0_rx_cdrlock_counter[12]_i_4 ;
  wire \n_0_rx_cdrlock_counter[12]_i_5 ;
  wire \n_0_rx_cdrlock_counter[12]_i_6 ;
  wire \n_0_rx_cdrlock_counter[16]_i_3 ;
  wire \n_0_rx_cdrlock_counter[16]_i_4 ;
  wire \n_0_rx_cdrlock_counter[16]_i_5 ;
  wire \n_0_rx_cdrlock_counter[16]_i_6 ;
  wire \n_0_rx_cdrlock_counter[20]_i_3 ;
  wire \n_0_rx_cdrlock_counter[20]_i_4 ;
  wire \n_0_rx_cdrlock_counter[20]_i_5 ;
  wire \n_0_rx_cdrlock_counter[20]_i_6 ;
  wire \n_0_rx_cdrlock_counter[24]_i_3 ;
  wire \n_0_rx_cdrlock_counter[24]_i_4 ;
  wire \n_0_rx_cdrlock_counter[24]_i_5 ;
  wire \n_0_rx_cdrlock_counter[24]_i_6 ;
  wire \n_0_rx_cdrlock_counter[28]_i_3 ;
  wire \n_0_rx_cdrlock_counter[28]_i_4 ;
  wire \n_0_rx_cdrlock_counter[28]_i_5 ;
  wire \n_0_rx_cdrlock_counter[28]_i_6 ;
  wire \n_0_rx_cdrlock_counter[31]_i_10 ;
  wire \n_0_rx_cdrlock_counter[31]_i_11 ;
  wire \n_0_rx_cdrlock_counter[31]_i_2 ;
  wire \n_0_rx_cdrlock_counter[31]_i_4 ;
  wire \n_0_rx_cdrlock_counter[31]_i_5 ;
  wire \n_0_rx_cdrlock_counter[31]_i_6 ;
  wire \n_0_rx_cdrlock_counter[31]_i_7 ;
  wire \n_0_rx_cdrlock_counter[31]_i_8 ;
  wire \n_0_rx_cdrlock_counter[31]_i_9 ;
  wire \n_0_rx_cdrlock_counter[4]_i_3 ;
  wire \n_0_rx_cdrlock_counter[4]_i_4 ;
  wire \n_0_rx_cdrlock_counter[4]_i_5 ;
  wire \n_0_rx_cdrlock_counter[4]_i_6 ;
  wire \n_0_rx_cdrlock_counter[8]_i_3 ;
  wire \n_0_rx_cdrlock_counter[8]_i_4 ;
  wire \n_0_rx_cdrlock_counter[8]_i_5 ;
  wire \n_0_rx_cdrlock_counter[8]_i_6 ;
  wire \n_0_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_0_rx_cdrlock_counter_reg[8]_i_2 ;
  wire n_0_rx_cdrlocked_i_1;
  wire n_0_rx_cdrlocked_reg;
  wire n_0_rxfsm_soft_reset_r_i_1;
  wire n_137_gt_txresetfsm_i;
  wire \n_1_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_1_rx_cdrlock_counter_reg[8]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_2_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_2_rx_cdrlock_counter_reg[8]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_3_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_3_rx_cdrlock_counter_reg[8]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_4_rx_cdrlock_counter_reg[8]_i_2 ;
  wire n_5_aurora_8b10b_0_multi_gt_i;
  wire \n_5_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_5_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_5_rx_cdrlock_counter_reg[8]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_6_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_6_rx_cdrlock_counter_reg[8]_i_2 ;
  wire n_7_aurora_8b10b_0_multi_gt_i;
  wire \n_7_rx_cdrlock_counter_reg[12]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[16]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[20]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[24]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[28]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[31]_i_3 ;
  wire \n_7_rx_cdrlock_counter_reg[4]_i_2 ;
  wire \n_7_rx_cdrlock_counter_reg[8]_i_2 ;
  wire power_down;
  wire [31:0]rx_cdrlock_counter;
  wire [31:0]rx_cdrlock_counter_0;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_resetdone_out;
  wire rxfsm_rxresetdone_r;
  wire rxfsm_rxresetdone_r2;
  wire rxfsm_soft_reset_r;
  wire rxn;
  wire rxp;
  wire s_out_d1_cdc_to_105;
  wire s_out_d1_cdc_to_112;
  wire s_out_d1_cdc_to_119;
  wire s_out_d1_cdc_to_126;
  wire s_out_d1_cdc_to_133;
  wire s_out_d1_cdc_to_140;
  wire s_out_d1_cdc_to_147;
  wire s_out_d1_cdc_to_154;
  wire s_out_d1_cdc_to_161;
  wire s_out_d1_cdc_to_168;
  wire s_out_d1_cdc_to_175;
  wire s_out_d1_cdc_to_182;
  wire s_out_d1_cdc_to_189;
  wire s_out_d1_cdc_to_196;
  wire s_out_d1_cdc_to_28;
  wire s_out_d1_cdc_to_35;
  wire s_out_d1_cdc_to_42;
  wire s_out_d1_cdc_to_49;
  wire s_out_d1_cdc_to_56;
  wire s_out_d1_cdc_to_63;
  wire s_out_d1_cdc_to_70;
  wire s_out_d1_cdc_to_77;
  wire s_out_d1_cdc_to_84;
  wire s_out_d1_cdc_to_91;
  wire s_out_d1_cdc_to_98;
  wire s_out_d2_106;
  wire s_out_d2_113;
  wire s_out_d2_120;
  wire s_out_d2_127;
  wire s_out_d2_134;
  wire s_out_d2_141;
  wire s_out_d2_148;
  wire s_out_d2_155;
  wire s_out_d2_162;
  wire s_out_d2_169;
  wire s_out_d2_176;
  wire s_out_d2_183;
  wire s_out_d2_190;
  wire s_out_d2_197;
  wire s_out_d2_29;
  wire s_out_d2_36;
  wire s_out_d2_43;
  wire s_out_d2_50;
  wire s_out_d2_57;
  wire s_out_d2_64;
  wire s_out_d2_71;
  wire s_out_d2_78;
  wire s_out_d2_85;
  wire s_out_d2_92;
  wire s_out_d2_99;
  wire s_out_d3_100;
  wire s_out_d3_107;
  wire s_out_d3_114;
  wire s_out_d3_121;
  wire s_out_d3_128;
  wire s_out_d3_135;
  wire s_out_d3_142;
  wire s_out_d3_149;
  wire s_out_d3_156;
  wire s_out_d3_163;
  wire s_out_d3_170;
  wire s_out_d3_177;
  wire s_out_d3_184;
  wire s_out_d3_191;
  wire s_out_d3_198;
  wire s_out_d3_30;
  wire s_out_d3_37;
  wire s_out_d3_44;
  wire s_out_d3_51;
  wire s_out_d3_58;
  wire s_out_d3_65;
  wire s_out_d3_72;
  wire s_out_d3_79;
  wire s_out_d3_86;
  wire s_out_d3_93;
  wire s_out_d4_101;
  wire s_out_d4_108;
  wire s_out_d4_115;
  wire s_out_d4_122;
  wire s_out_d4_129;
  wire s_out_d4_136;
  wire s_out_d4_143;
  wire s_out_d4_150;
  wire s_out_d4_157;
  wire s_out_d4_164;
  wire s_out_d4_171;
  wire s_out_d4_178;
  wire s_out_d4_185;
  wire s_out_d4_192;
  wire s_out_d4_199;
  wire s_out_d4_31;
  wire s_out_d4_38;
  wire s_out_d4_45;
  wire s_out_d4_52;
  wire s_out_d4_59;
  wire s_out_d4_66;
  wire s_out_d4_73;
  wire s_out_d4_80;
  wire s_out_d4_87;
  wire s_out_d4_94;
  wire s_out_d5_102;
  wire s_out_d5_109;
  wire s_out_d5_116;
  wire s_out_d5_123;
  wire s_out_d5_130;
  wire s_out_d5_137;
  wire s_out_d5_144;
  wire s_out_d5_151;
  wire s_out_d5_158;
  wire s_out_d5_165;
  wire s_out_d5_172;
  wire s_out_d5_179;
  wire s_out_d5_186;
  wire s_out_d5_193;
  wire s_out_d5_200;
  wire s_out_d5_32;
  wire s_out_d5_39;
  wire s_out_d5_46;
  wire s_out_d5_53;
  wire s_out_d5_60;
  wire s_out_d5_67;
  wire s_out_d5_74;
  wire s_out_d5_81;
  wire s_out_d5_88;
  wire s_out_d5_95;
  wire s_out_d6_103;
  wire s_out_d6_110;
  wire s_out_d6_117;
  wire s_out_d6_124;
  wire s_out_d6_131;
  wire s_out_d6_138;
  wire s_out_d6_145;
  wire s_out_d6_152;
  wire s_out_d6_159;
  wire s_out_d6_166;
  wire s_out_d6_173;
  wire s_out_d6_180;
  wire s_out_d6_187;
  wire s_out_d6_194;
  wire s_out_d6_201;
  wire s_out_d6_33;
  wire s_out_d6_40;
  wire s_out_d6_47;
  wire s_out_d6_54;
  wire s_out_d6_61;
  wire s_out_d6_68;
  wire s_out_d6_75;
  wire s_out_d6_82;
  wire s_out_d6_89;
  wire s_out_d6_96;
  wire s_out_d7_104;
  wire s_out_d7_111;
  wire s_out_d7_118;
  wire s_out_d7_125;
  wire s_out_d7_132;
  wire s_out_d7_139;
  wire s_out_d7_146;
  wire s_out_d7_153;
  wire s_out_d7_160;
  wire s_out_d7_167;
  wire s_out_d7_174;
  wire s_out_d7_181;
  wire s_out_d7_188;
  wire s_out_d7_195;
  wire s_out_d7_202;
  wire s_out_d7_34;
  wire s_out_d7_41;
  wire s_out_d7_48;
  wire s_out_d7_55;
  wire s_out_d7_62;
  wire s_out_d7_69;
  wire s_out_d7_76;
  wire s_out_d7_83;
  wire s_out_d7_90;
  wire s_out_d7_97;
  wire sync_clk;
  wire tx_out_clk;
  wire txfsm_txresetdone_r;
  wire txn;
  wire txp;
  wire user_clk;
  wire [3:2]\NLW_rx_cdrlock_counter_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_rx_cdrlock_counter_reg[31]_i_3_O_UNCONNECTED ;

aurora_8b10b_0_aurora_8b10b_0_multi_gt aurora_8b10b_0_multi_gt_i
       (.D(D),
        .I1(n_137_gt_txresetfsm_i),
        .I11(I11),
        .I12(I12),
        .I2(I1),
        .I3(I2),
        .I4(I3),
        .I5(I4),
        .O1(O3),
        .O10(O10),
        .O11(O11),
        .O163(O163),
        .O164(O164),
        .O165(O165),
        .O166(O166),
        .O167(O167),
        .O168(O168),
        .O169(O169),
        .O170(O170),
        .O171(O171),
        .O172(O172),
        .O173(O173),
        .O174(O174),
        .O175(O175),
        .O176(O176),
        .O177(O177),
        .O178(O178),
        .O179(O179),
        .O180(O180),
        .O2(O2),
        .O3(n_5_aurora_8b10b_0_multi_gt_i),
        .O4(n_7_aurora_8b10b_0_multi_gt_i),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .RXDISPERR(RXDISPERR),
        .SR(gt_rx_reset_i),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .ack_flag(\gt0_aurora_8b10b_0_i/ack_flag ),
        .cpll_reset_i(cpll_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt_qpllclk_quad4_in(gt_qpllclk_quad4_in),
        .gt_qpllrefclk_quad4_in(gt_qpllrefclk_quad4_in),
        .gt_refclk1(gt_refclk1),
        .gt_rxdfelfhold_i(gt_rxdfelfhold_i),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .hard_err_gt0(hard_err_gt0),
        .init_clk_in(init_clk_in),
        .loopback(loopback),
        .power_down(power_down),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxn(rxn),
        .rxp(rxp),
        .s_out_d1_cdc_to_182(s_out_d1_cdc_to_182),
        .s_out_d1_cdc_to_189(s_out_d1_cdc_to_189),
        .s_out_d1_cdc_to_196(s_out_d1_cdc_to_196),
        .s_out_d2_183(s_out_d2_183),
        .s_out_d2_190(s_out_d2_190),
        .s_out_d2_197(s_out_d2_197),
        .s_out_d3_184(s_out_d3_184),
        .s_out_d3_191(s_out_d3_191),
        .s_out_d3_198(s_out_d3_198),
        .s_out_d4_185(s_out_d4_185),
        .s_out_d4_192(s_out_d4_192),
        .s_out_d4_199(s_out_d4_199),
        .s_out_d5_186(s_out_d5_186),
        .s_out_d5_193(s_out_d5_193),
        .s_out_d5_200(s_out_d5_200),
        .s_out_d6_187(s_out_d6_187),
        .s_out_d6_194(s_out_d6_194),
        .s_out_d6_201(s_out_d6_201),
        .s_out_d7_188(s_out_d7_188),
        .s_out_d7_195(s_out_d7_195),
        .s_out_d7_202(s_out_d7_202),
        .sync_clk(sync_clk),
        .tx_out_clk(tx_out_clk),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
(* srl_name = "\inst/gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 " *) 
   SRL16E gt0_rxresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(n_5_aurora_8b10b_0_multi_gt_i),
        .Q(n_0_gt0_rxresetdone_r3_reg_srl3));
(* srl_name = "\inst/gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 " *) 
   SRL16E gt0_txresetdone_r3_reg_srl3
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(n_7_aurora_8b10b_0_multi_gt_i),
        .Q(n_0_gt0_txresetdone_r3_reg_srl3));
FDRE gt_rx_reset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(fsm_gt_rx_reset_t),
        .Q(gt_rx_reset_i),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     gt_rxresetdone_r_i_1
       (.I0(rx_resetdone_out),
        .O(O4));
aurora_8b10b_0_aurora_8b10b_0_rx_startup_fsm gt_rxresetfsm_i
       (.AR(rxfsm_soft_reset_r),
        .I1(n_0_rx_cdrlocked_reg),
        .O100(O100),
        .O101(O101),
        .O102(O102),
        .O103(O103),
        .O104(O104),
        .O105(O105),
        .O106(O106),
        .O107(O107),
        .O108(O108),
        .O109(O109),
        .O110(O110),
        .O111(O111),
        .O112(O112),
        .O113(O113),
        .O114(O114),
        .O115(O115),
        .O116(O116),
        .O117(O117),
        .O118(O118),
        .O119(O119),
        .O120(O120),
        .O121(O121),
        .O122(O122),
        .O123(O123),
        .O124(O124),
        .O125(O125),
        .O126(O126),
        .O127(O127),
        .O128(O128),
        .O129(O129),
        .O130(O130),
        .O131(O131),
        .O132(O132),
        .O133(O133),
        .O134(O134),
        .O135(O135),
        .O136(O136),
        .O137(O137),
        .O138(O138),
        .O139(O139),
        .O140(O140),
        .O141(O141),
        .O142(O142),
        .O143(O143),
        .O144(O144),
        .O145(O145),
        .O146(O146),
        .O147(O147),
        .O148(O148),
        .O149(O149),
        .O150(O150),
        .O151(O151),
        .O152(O152),
        .O153(O153),
        .O154(O154),
        .O155(O155),
        .O156(O156),
        .O157(O157),
        .O158(O158),
        .O159(O159),
        .O160(O160),
        .O161(O161),
        .O2(O2),
        .O78(O78),
        .O79(O79),
        .O80(O80),
        .O81(O81),
        .O82(O82),
        .O83(O83),
        .O84(O84),
        .O85(O85),
        .O86(O86),
        .O87(O87),
        .O88(O88),
        .O89(O89),
        .O90(O90),
        .O91(O91),
        .O92(O92),
        .O93(O93),
        .O94(O94),
        .O95(O95),
        .O96(O96),
        .O97(O97),
        .O98(O98),
        .O99(O99),
        .fsm_gt_rx_reset_t(fsm_gt_rx_reset_t),
        .gt_rxdfelfhold_i(gt_rxdfelfhold_i),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .init_clk_in(init_clk_in),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .s_out_d1_cdc_to_105(s_out_d1_cdc_to_105),
        .s_out_d1_cdc_to_112(s_out_d1_cdc_to_112),
        .s_out_d1_cdc_to_119(s_out_d1_cdc_to_119),
        .s_out_d1_cdc_to_126(s_out_d1_cdc_to_126),
        .s_out_d1_cdc_to_133(s_out_d1_cdc_to_133),
        .s_out_d1_cdc_to_140(s_out_d1_cdc_to_140),
        .s_out_d1_cdc_to_147(s_out_d1_cdc_to_147),
        .s_out_d1_cdc_to_154(s_out_d1_cdc_to_154),
        .s_out_d1_cdc_to_161(s_out_d1_cdc_to_161),
        .s_out_d1_cdc_to_168(s_out_d1_cdc_to_168),
        .s_out_d1_cdc_to_175(s_out_d1_cdc_to_175),
        .s_out_d1_cdc_to_84(s_out_d1_cdc_to_84),
        .s_out_d1_cdc_to_91(s_out_d1_cdc_to_91),
        .s_out_d1_cdc_to_98(s_out_d1_cdc_to_98),
        .s_out_d2_106(s_out_d2_106),
        .s_out_d2_113(s_out_d2_113),
        .s_out_d2_120(s_out_d2_120),
        .s_out_d2_127(s_out_d2_127),
        .s_out_d2_134(s_out_d2_134),
        .s_out_d2_141(s_out_d2_141),
        .s_out_d2_148(s_out_d2_148),
        .s_out_d2_155(s_out_d2_155),
        .s_out_d2_162(s_out_d2_162),
        .s_out_d2_169(s_out_d2_169),
        .s_out_d2_176(s_out_d2_176),
        .s_out_d2_85(s_out_d2_85),
        .s_out_d2_92(s_out_d2_92),
        .s_out_d2_99(s_out_d2_99),
        .s_out_d3_100(s_out_d3_100),
        .s_out_d3_107(s_out_d3_107),
        .s_out_d3_114(s_out_d3_114),
        .s_out_d3_121(s_out_d3_121),
        .s_out_d3_128(s_out_d3_128),
        .s_out_d3_135(s_out_d3_135),
        .s_out_d3_142(s_out_d3_142),
        .s_out_d3_149(s_out_d3_149),
        .s_out_d3_156(s_out_d3_156),
        .s_out_d3_163(s_out_d3_163),
        .s_out_d3_170(s_out_d3_170),
        .s_out_d3_177(s_out_d3_177),
        .s_out_d3_86(s_out_d3_86),
        .s_out_d3_93(s_out_d3_93),
        .s_out_d4_101(s_out_d4_101),
        .s_out_d4_108(s_out_d4_108),
        .s_out_d4_115(s_out_d4_115),
        .s_out_d4_122(s_out_d4_122),
        .s_out_d4_129(s_out_d4_129),
        .s_out_d4_136(s_out_d4_136),
        .s_out_d4_143(s_out_d4_143),
        .s_out_d4_150(s_out_d4_150),
        .s_out_d4_157(s_out_d4_157),
        .s_out_d4_164(s_out_d4_164),
        .s_out_d4_171(s_out_d4_171),
        .s_out_d4_178(s_out_d4_178),
        .s_out_d4_87(s_out_d4_87),
        .s_out_d4_94(s_out_d4_94),
        .s_out_d5_102(s_out_d5_102),
        .s_out_d5_109(s_out_d5_109),
        .s_out_d5_116(s_out_d5_116),
        .s_out_d5_123(s_out_d5_123),
        .s_out_d5_130(s_out_d5_130),
        .s_out_d5_137(s_out_d5_137),
        .s_out_d5_144(s_out_d5_144),
        .s_out_d5_151(s_out_d5_151),
        .s_out_d5_158(s_out_d5_158),
        .s_out_d5_165(s_out_d5_165),
        .s_out_d5_172(s_out_d5_172),
        .s_out_d5_179(s_out_d5_179),
        .s_out_d5_88(s_out_d5_88),
        .s_out_d5_95(s_out_d5_95),
        .s_out_d6_103(s_out_d6_103),
        .s_out_d6_110(s_out_d6_110),
        .s_out_d6_117(s_out_d6_117),
        .s_out_d6_124(s_out_d6_124),
        .s_out_d6_131(s_out_d6_131),
        .s_out_d6_138(s_out_d6_138),
        .s_out_d6_145(s_out_d6_145),
        .s_out_d6_152(s_out_d6_152),
        .s_out_d6_159(s_out_d6_159),
        .s_out_d6_166(s_out_d6_166),
        .s_out_d6_173(s_out_d6_173),
        .s_out_d6_180(s_out_d6_180),
        .s_out_d6_89(s_out_d6_89),
        .s_out_d6_96(s_out_d6_96),
        .s_out_d7_104(s_out_d7_104),
        .s_out_d7_111(s_out_d7_111),
        .s_out_d7_118(s_out_d7_118),
        .s_out_d7_125(s_out_d7_125),
        .s_out_d7_132(s_out_d7_132),
        .s_out_d7_139(s_out_d7_139),
        .s_out_d7_146(s_out_d7_146),
        .s_out_d7_153(s_out_d7_153),
        .s_out_d7_160(s_out_d7_160),
        .s_out_d7_167(s_out_d7_167),
        .s_out_d7_174(s_out_d7_174),
        .s_out_d7_181(s_out_d7_181),
        .s_out_d7_90(s_out_d7_90),
        .s_out_d7_97(s_out_d7_97),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_tx_startup_fsm gt_txresetfsm_i
       (.O1(O1),
        .O2(O2),
        .O3(n_137_gt_txresetfsm_i),
        .O36(O36),
        .O37(O37),
        .O38(O38),
        .O39(O39),
        .O40(O40),
        .O41(O41),
        .O42(O42),
        .O43(O43),
        .O44(O44),
        .O45(O45),
        .O46(O46),
        .O47(O47),
        .O48(O48),
        .O49(O49),
        .O50(O50),
        .O51(O51),
        .O52(O52),
        .O53(O53),
        .O54(O54),
        .O55(O55),
        .O56(O56),
        .O57(O57),
        .O58(O58),
        .O59(O59),
        .O60(O60),
        .O61(O61),
        .O62(O62),
        .O63(O63),
        .O64(O64),
        .O65(O65),
        .O66(O66),
        .O67(O67),
        .O68(O68),
        .O69(O69),
        .O70(O70),
        .O71(O71),
        .O72(O72),
        .O73(O73),
        .O74(O74),
        .O75(O75),
        .O76(O76),
        .O77(O77),
        .ack_flag(\gt0_aurora_8b10b_0_i/ack_flag ),
        .cpll_reset_i(cpll_reset_i),
        .gt_reset(gt_reset),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_35(s_out_d1_cdc_to_35),
        .s_out_d1_cdc_to_42(s_out_d1_cdc_to_42),
        .s_out_d1_cdc_to_49(s_out_d1_cdc_to_49),
        .s_out_d1_cdc_to_56(s_out_d1_cdc_to_56),
        .s_out_d1_cdc_to_63(s_out_d1_cdc_to_63),
        .s_out_d1_cdc_to_70(s_out_d1_cdc_to_70),
        .s_out_d1_cdc_to_77(s_out_d1_cdc_to_77),
        .s_out_d2_36(s_out_d2_36),
        .s_out_d2_43(s_out_d2_43),
        .s_out_d2_50(s_out_d2_50),
        .s_out_d2_57(s_out_d2_57),
        .s_out_d2_64(s_out_d2_64),
        .s_out_d2_71(s_out_d2_71),
        .s_out_d2_78(s_out_d2_78),
        .s_out_d3_37(s_out_d3_37),
        .s_out_d3_44(s_out_d3_44),
        .s_out_d3_51(s_out_d3_51),
        .s_out_d3_58(s_out_d3_58),
        .s_out_d3_65(s_out_d3_65),
        .s_out_d3_72(s_out_d3_72),
        .s_out_d3_79(s_out_d3_79),
        .s_out_d4_38(s_out_d4_38),
        .s_out_d4_45(s_out_d4_45),
        .s_out_d4_52(s_out_d4_52),
        .s_out_d4_59(s_out_d4_59),
        .s_out_d4_66(s_out_d4_66),
        .s_out_d4_73(s_out_d4_73),
        .s_out_d4_80(s_out_d4_80),
        .s_out_d5_39(s_out_d5_39),
        .s_out_d5_46(s_out_d5_46),
        .s_out_d5_53(s_out_d5_53),
        .s_out_d5_60(s_out_d5_60),
        .s_out_d5_67(s_out_d5_67),
        .s_out_d5_74(s_out_d5_74),
        .s_out_d5_81(s_out_d5_81),
        .s_out_d6_40(s_out_d6_40),
        .s_out_d6_47(s_out_d6_47),
        .s_out_d6_54(s_out_d6_54),
        .s_out_d6_61(s_out_d6_61),
        .s_out_d6_68(s_out_d6_68),
        .s_out_d6_75(s_out_d6_75),
        .s_out_d6_82(s_out_d6_82),
        .s_out_d7_41(s_out_d7_41),
        .s_out_d7_48(s_out_d7_48),
        .s_out_d7_55(s_out_d7_55),
        .s_out_d7_62(s_out_d7_62),
        .s_out_d7_69(s_out_d7_69),
        .s_out_d7_76(s_out_d7_76),
        .s_out_d7_83(s_out_d7_83),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_0 gtrxreset_cdc_sync
       (.O1(n_0_gtrxreset_cdc_sync),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .gtrxreset_i(gtrxreset_i),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_28(s_out_d1_cdc_to_28),
        .s_out_d2_29(s_out_d2_29),
        .s_out_d3_30(s_out_d3_30),
        .s_out_d4_31(s_out_d4_31),
        .s_out_d5_32(s_out_d5_32),
        .s_out_d6_33(s_out_d6_33),
        .s_out_d7_34(s_out_d7_34));
LUT2 #(
    .INIT(4'h2)) 
     gtrxreset_pulse_i_1
       (.I0(gtrxreset_r2),
        .I1(gtrxreset_r3),
        .O(n_0_gtrxreset_pulse_i_1));
FDRE gtrxreset_pulse_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_gtrxreset_pulse_i_1),
        .Q(gtrxreset_pulse),
        .R(1'b0));
FDRE gtrxreset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_gtrxreset_cdc_sync),
        .Q(gtrxreset_r2),
        .R(1'b0));
FDRE gtrxreset_r3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(gtrxreset_r2),
        .Q(gtrxreset_r3),
        .R(1'b0));
FDRE link_reset_r2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_comb_r),
        .Q(link_reset_r2),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[0]_i_1 
       (.I0(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .O(rx_cdrlock_counter_0[0]));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[10]_i_1 
       (.I0(\n_6_rx_cdrlock_counter_reg[12]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[10]));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[11]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[12]_i_2 ),
        .O(rx_cdrlock_counter_0[11]));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[12]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_4_rx_cdrlock_counter_reg[12]_i_2 ),
        .O(rx_cdrlock_counter_0[12]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[12]_i_3 
       (.I0(rx_cdrlock_counter[12]),
        .O(\n_0_rx_cdrlock_counter[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[12]_i_4 
       (.I0(rx_cdrlock_counter[11]),
        .O(\n_0_rx_cdrlock_counter[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[12]_i_5 
       (.I0(rx_cdrlock_counter[10]),
        .O(\n_0_rx_cdrlock_counter[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[12]_i_6 
       (.I0(rx_cdrlock_counter[9]),
        .O(\n_0_rx_cdrlock_counter[12]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[13]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[16]_i_2 ),
        .O(rx_cdrlock_counter_0[13]));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[14]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[16]_i_2 ),
        .O(rx_cdrlock_counter_0[14]));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[15]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[16]_i_2 ),
        .O(rx_cdrlock_counter_0[15]));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[16]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_4_rx_cdrlock_counter_reg[16]_i_2 ),
        .O(rx_cdrlock_counter_0[16]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[16]_i_3 
       (.I0(rx_cdrlock_counter[16]),
        .O(\n_0_rx_cdrlock_counter[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[16]_i_4 
       (.I0(rx_cdrlock_counter[15]),
        .O(\n_0_rx_cdrlock_counter[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[16]_i_5 
       (.I0(rx_cdrlock_counter[14]),
        .O(\n_0_rx_cdrlock_counter[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[16]_i_6 
       (.I0(rx_cdrlock_counter[13]),
        .O(\n_0_rx_cdrlock_counter[16]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[17]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[20]_i_2 ),
        .O(rx_cdrlock_counter_0[17]));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[18]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[20]_i_2 ),
        .O(rx_cdrlock_counter_0[18]));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[19]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[20]_i_2 ),
        .O(rx_cdrlock_counter_0[19]));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[1]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[4]_i_2 ),
        .O(rx_cdrlock_counter_0[1]));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[20]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_4_rx_cdrlock_counter_reg[20]_i_2 ),
        .O(rx_cdrlock_counter_0[20]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[20]_i_3 
       (.I0(rx_cdrlock_counter[20]),
        .O(\n_0_rx_cdrlock_counter[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[20]_i_4 
       (.I0(rx_cdrlock_counter[19]),
        .O(\n_0_rx_cdrlock_counter[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[20]_i_5 
       (.I0(rx_cdrlock_counter[18]),
        .O(\n_0_rx_cdrlock_counter[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[20]_i_6 
       (.I0(rx_cdrlock_counter[17]),
        .O(\n_0_rx_cdrlock_counter[20]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[21]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[24]_i_2 ),
        .O(rx_cdrlock_counter_0[21]));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[22]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[24]_i_2 ),
        .O(rx_cdrlock_counter_0[22]));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[23]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[24]_i_2 ),
        .O(rx_cdrlock_counter_0[23]));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[24]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_4_rx_cdrlock_counter_reg[24]_i_2 ),
        .O(rx_cdrlock_counter_0[24]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[24]_i_3 
       (.I0(rx_cdrlock_counter[24]),
        .O(\n_0_rx_cdrlock_counter[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[24]_i_4 
       (.I0(rx_cdrlock_counter[23]),
        .O(\n_0_rx_cdrlock_counter[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[24]_i_5 
       (.I0(rx_cdrlock_counter[22]),
        .O(\n_0_rx_cdrlock_counter[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[24]_i_6 
       (.I0(rx_cdrlock_counter[21]),
        .O(\n_0_rx_cdrlock_counter[24]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[25]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[28]_i_2 ),
        .O(rx_cdrlock_counter_0[25]));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[26]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[28]_i_2 ),
        .O(rx_cdrlock_counter_0[26]));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[27]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[28]_i_2 ),
        .O(rx_cdrlock_counter_0[27]));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[28]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_4_rx_cdrlock_counter_reg[28]_i_2 ),
        .O(rx_cdrlock_counter_0[28]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[28]_i_3 
       (.I0(rx_cdrlock_counter[28]),
        .O(\n_0_rx_cdrlock_counter[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[28]_i_4 
       (.I0(rx_cdrlock_counter[27]),
        .O(\n_0_rx_cdrlock_counter[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[28]_i_5 
       (.I0(rx_cdrlock_counter[26]),
        .O(\n_0_rx_cdrlock_counter[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[28]_i_6 
       (.I0(rx_cdrlock_counter[25]),
        .O(\n_0_rx_cdrlock_counter[28]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[29]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[31]_i_3 ),
        .O(rx_cdrlock_counter_0[29]));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[2]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[4]_i_2 ),
        .O(rx_cdrlock_counter_0[2]));
(* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[30]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_6_rx_cdrlock_counter_reg[31]_i_3 ),
        .O(rx_cdrlock_counter_0[30]));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[31]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[31]_i_3 ),
        .O(rx_cdrlock_counter_0[31]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[31]_i_10 
       (.I0(rx_cdrlock_counter[30]),
        .O(\n_0_rx_cdrlock_counter[31]_i_10 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[31]_i_11 
       (.I0(rx_cdrlock_counter[29]),
        .O(\n_0_rx_cdrlock_counter[31]_i_11 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rx_cdrlock_counter[31]_i_2 
       (.I0(\n_0_rx_cdrlock_counter[31]_i_4 ),
        .I1(\n_0_rx_cdrlock_counter[31]_i_5 ),
        .I2(\n_0_rx_cdrlock_counter[31]_i_6 ),
        .I3(rx_cdrlock_counter[29]),
        .I4(\n_0_rx_cdrlock_counter[31]_i_7 ),
        .I5(\n_0_rx_cdrlock_counter[31]_i_8 ),
        .O(\n_0_rx_cdrlock_counter[31]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rx_cdrlock_counter[31]_i_4 
       (.I0(rx_cdrlock_counter[31]),
        .I1(rx_cdrlock_counter[30]),
        .I2(rx_cdrlock_counter[27]),
        .I3(rx_cdrlock_counter[28]),
        .I4(rx_cdrlock_counter[25]),
        .I5(rx_cdrlock_counter[26]),
        .O(\n_0_rx_cdrlock_counter[31]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
     \rx_cdrlock_counter[31]_i_5 
       (.I0(rx_cdrlock_counter[8]),
        .I1(rx_cdrlock_counter[7]),
        .I2(rx_cdrlock_counter[3]),
        .I3(rx_cdrlock_counter[4]),
        .I4(rx_cdrlock_counter[1]),
        .I5(rx_cdrlock_counter[2]),
        .O(\n_0_rx_cdrlock_counter[31]_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF7FF)) 
     \rx_cdrlock_counter[31]_i_6 
       (.I0(rx_cdrlock_counter[10]),
        .I1(rx_cdrlock_counter[9]),
        .I2(rx_cdrlock_counter[5]),
        .I3(rx_cdrlock_counter[6]),
        .I4(rx_cdrlock_counter[11]),
        .I5(rx_cdrlock_counter[12]),
        .O(\n_0_rx_cdrlock_counter[31]_i_6 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rx_cdrlock_counter[31]_i_7 
       (.I0(rx_cdrlock_counter[20]),
        .I1(rx_cdrlock_counter[19]),
        .I2(rx_cdrlock_counter[15]),
        .I3(rx_cdrlock_counter[16]),
        .I4(rx_cdrlock_counter[13]),
        .I5(rx_cdrlock_counter[14]),
        .O(\n_0_rx_cdrlock_counter[31]_i_7 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \rx_cdrlock_counter[31]_i_8 
       (.I0(rx_cdrlock_counter[22]),
        .I1(rx_cdrlock_counter[21]),
        .I2(rx_cdrlock_counter[17]),
        .I3(rx_cdrlock_counter[18]),
        .I4(rx_cdrlock_counter[23]),
        .I5(rx_cdrlock_counter[24]),
        .O(\n_0_rx_cdrlock_counter[31]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[31]_i_9 
       (.I0(rx_cdrlock_counter[31]),
        .O(\n_0_rx_cdrlock_counter[31]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[3]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_5_rx_cdrlock_counter_reg[4]_i_2 ),
        .O(rx_cdrlock_counter_0[3]));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[4]_i_1 
       (.I0(\n_4_rx_cdrlock_counter_reg[4]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[4]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[4]_i_3 
       (.I0(rx_cdrlock_counter[4]),
        .O(\n_0_rx_cdrlock_counter[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[4]_i_4 
       (.I0(rx_cdrlock_counter[3]),
        .O(\n_0_rx_cdrlock_counter[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[4]_i_5 
       (.I0(rx_cdrlock_counter[2]),
        .O(\n_0_rx_cdrlock_counter[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[4]_i_6 
       (.I0(rx_cdrlock_counter[1]),
        .O(\n_0_rx_cdrlock_counter[4]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \rx_cdrlock_counter[5]_i_1 
       (.I0(rx_cdrlock_counter[0]),
        .I1(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .I2(\n_7_rx_cdrlock_counter_reg[8]_i_2 ),
        .O(rx_cdrlock_counter_0[5]));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[6]_i_1 
       (.I0(\n_6_rx_cdrlock_counter_reg[8]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[6]));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[7]_i_1 
       (.I0(\n_5_rx_cdrlock_counter_reg[8]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[7]));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[8]_i_1 
       (.I0(\n_4_rx_cdrlock_counter_reg[8]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[8]));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[8]_i_3 
       (.I0(rx_cdrlock_counter[8]),
        .O(\n_0_rx_cdrlock_counter[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[8]_i_4 
       (.I0(rx_cdrlock_counter[7]),
        .O(\n_0_rx_cdrlock_counter[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[8]_i_5 
       (.I0(rx_cdrlock_counter[6]),
        .O(\n_0_rx_cdrlock_counter[8]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[8]_i_6 
       (.I0(rx_cdrlock_counter[5]),
        .O(\n_0_rx_cdrlock_counter[8]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \rx_cdrlock_counter[9]_i_1 
       (.I0(\n_7_rx_cdrlock_counter_reg[12]_i_2 ),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(rx_cdrlock_counter_0[9]));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[0]),
        .Q(rx_cdrlock_counter[0]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[10]),
        .Q(rx_cdrlock_counter[10]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[11] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[11]),
        .Q(rx_cdrlock_counter[11]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[12] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[12]),
        .Q(rx_cdrlock_counter[12]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[8]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[12]_i_2 ,\n_1_rx_cdrlock_counter_reg[12]_i_2 ,\n_2_rx_cdrlock_counter_reg[12]_i_2 ,\n_3_rx_cdrlock_counter_reg[12]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[12]_i_2 ,\n_5_rx_cdrlock_counter_reg[12]_i_2 ,\n_6_rx_cdrlock_counter_reg[12]_i_2 ,\n_7_rx_cdrlock_counter_reg[12]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[12]_i_3 ,\n_0_rx_cdrlock_counter[12]_i_4 ,\n_0_rx_cdrlock_counter[12]_i_5 ,\n_0_rx_cdrlock_counter[12]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[13] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[13]),
        .Q(rx_cdrlock_counter[13]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[14] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[14]),
        .Q(rx_cdrlock_counter[14]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[15] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[15]),
        .Q(rx_cdrlock_counter[15]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[16] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[16]),
        .Q(rx_cdrlock_counter[16]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[12]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[16]_i_2 ,\n_1_rx_cdrlock_counter_reg[16]_i_2 ,\n_2_rx_cdrlock_counter_reg[16]_i_2 ,\n_3_rx_cdrlock_counter_reg[16]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[16]_i_2 ,\n_5_rx_cdrlock_counter_reg[16]_i_2 ,\n_6_rx_cdrlock_counter_reg[16]_i_2 ,\n_7_rx_cdrlock_counter_reg[16]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[16]_i_3 ,\n_0_rx_cdrlock_counter[16]_i_4 ,\n_0_rx_cdrlock_counter[16]_i_5 ,\n_0_rx_cdrlock_counter[16]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[17] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[17]),
        .Q(rx_cdrlock_counter[17]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[18] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[18]),
        .Q(rx_cdrlock_counter[18]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[19] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[19]),
        .Q(rx_cdrlock_counter[19]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[1]),
        .Q(rx_cdrlock_counter[1]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[20] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[20]),
        .Q(rx_cdrlock_counter[20]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[16]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[20]_i_2 ,\n_1_rx_cdrlock_counter_reg[20]_i_2 ,\n_2_rx_cdrlock_counter_reg[20]_i_2 ,\n_3_rx_cdrlock_counter_reg[20]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[20]_i_2 ,\n_5_rx_cdrlock_counter_reg[20]_i_2 ,\n_6_rx_cdrlock_counter_reg[20]_i_2 ,\n_7_rx_cdrlock_counter_reg[20]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[20]_i_3 ,\n_0_rx_cdrlock_counter[20]_i_4 ,\n_0_rx_cdrlock_counter[20]_i_5 ,\n_0_rx_cdrlock_counter[20]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[21] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[21]),
        .Q(rx_cdrlock_counter[21]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[22] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[22]),
        .Q(rx_cdrlock_counter[22]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[23] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[23]),
        .Q(rx_cdrlock_counter[23]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[24] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[24]),
        .Q(rx_cdrlock_counter[24]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[20]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[24]_i_2 ,\n_1_rx_cdrlock_counter_reg[24]_i_2 ,\n_2_rx_cdrlock_counter_reg[24]_i_2 ,\n_3_rx_cdrlock_counter_reg[24]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[24]_i_2 ,\n_5_rx_cdrlock_counter_reg[24]_i_2 ,\n_6_rx_cdrlock_counter_reg[24]_i_2 ,\n_7_rx_cdrlock_counter_reg[24]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[24]_i_3 ,\n_0_rx_cdrlock_counter[24]_i_4 ,\n_0_rx_cdrlock_counter[24]_i_5 ,\n_0_rx_cdrlock_counter[24]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[25] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[25]),
        .Q(rx_cdrlock_counter[25]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[26] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[26]),
        .Q(rx_cdrlock_counter[26]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[27] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[27]),
        .Q(rx_cdrlock_counter[27]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[28] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[28]),
        .Q(rx_cdrlock_counter[28]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[24]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[28]_i_2 ,\n_1_rx_cdrlock_counter_reg[28]_i_2 ,\n_2_rx_cdrlock_counter_reg[28]_i_2 ,\n_3_rx_cdrlock_counter_reg[28]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[28]_i_2 ,\n_5_rx_cdrlock_counter_reg[28]_i_2 ,\n_6_rx_cdrlock_counter_reg[28]_i_2 ,\n_7_rx_cdrlock_counter_reg[28]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[28]_i_3 ,\n_0_rx_cdrlock_counter[28]_i_4 ,\n_0_rx_cdrlock_counter[28]_i_5 ,\n_0_rx_cdrlock_counter[28]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[29] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[29]),
        .Q(rx_cdrlock_counter[29]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[2]),
        .Q(rx_cdrlock_counter[2]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[30] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[30]),
        .Q(rx_cdrlock_counter[30]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[31] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[31]),
        .Q(rx_cdrlock_counter[31]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[31]_i_3 
       (.CI(\n_0_rx_cdrlock_counter_reg[28]_i_2 ),
        .CO({\NLW_rx_cdrlock_counter_reg[31]_i_3_CO_UNCONNECTED [3:2],\n_2_rx_cdrlock_counter_reg[31]_i_3 ,\n_3_rx_cdrlock_counter_reg[31]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_rx_cdrlock_counter_reg[31]_i_3_O_UNCONNECTED [3],\n_5_rx_cdrlock_counter_reg[31]_i_3 ,\n_6_rx_cdrlock_counter_reg[31]_i_3 ,\n_7_rx_cdrlock_counter_reg[31]_i_3 }),
        .S({1'b0,\n_0_rx_cdrlock_counter[31]_i_9 ,\n_0_rx_cdrlock_counter[31]_i_10 ,\n_0_rx_cdrlock_counter[31]_i_11 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[3]),
        .Q(rx_cdrlock_counter[3]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[4]),
        .Q(rx_cdrlock_counter[4]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\n_0_rx_cdrlock_counter_reg[4]_i_2 ,\n_1_rx_cdrlock_counter_reg[4]_i_2 ,\n_2_rx_cdrlock_counter_reg[4]_i_2 ,\n_3_rx_cdrlock_counter_reg[4]_i_2 }),
        .CYINIT(rx_cdrlock_counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[4]_i_2 ,\n_5_rx_cdrlock_counter_reg[4]_i_2 ,\n_6_rx_cdrlock_counter_reg[4]_i_2 ,\n_7_rx_cdrlock_counter_reg[4]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[4]_i_3 ,\n_0_rx_cdrlock_counter[4]_i_4 ,\n_0_rx_cdrlock_counter[4]_i_5 ,\n_0_rx_cdrlock_counter[4]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[5]),
        .Q(rx_cdrlock_counter[5]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[6]),
        .Q(rx_cdrlock_counter[6]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[7]),
        .Q(rx_cdrlock_counter[7]),
        .R(gt_rx_reset_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[8]),
        .Q(rx_cdrlock_counter[8]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\n_0_rx_cdrlock_counter_reg[4]_i_2 ),
        .CO({\n_0_rx_cdrlock_counter_reg[8]_i_2 ,\n_1_rx_cdrlock_counter_reg[8]_i_2 ,\n_2_rx_cdrlock_counter_reg[8]_i_2 ,\n_3_rx_cdrlock_counter_reg[8]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_rx_cdrlock_counter_reg[8]_i_2 ,\n_5_rx_cdrlock_counter_reg[8]_i_2 ,\n_6_rx_cdrlock_counter_reg[8]_i_2 ,\n_7_rx_cdrlock_counter_reg[8]_i_2 }),
        .S({\n_0_rx_cdrlock_counter[8]_i_3 ,\n_0_rx_cdrlock_counter[8]_i_4 ,\n_0_rx_cdrlock_counter[8]_i_5 ,\n_0_rx_cdrlock_counter[8]_i_6 }));
FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(rx_cdrlock_counter_0[9]),
        .Q(rx_cdrlock_counter[9]),
        .R(gt_rx_reset_i));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     rx_cdrlocked_i_1
       (.I0(n_0_rx_cdrlocked_reg),
        .I1(rx_cdrlock_counter[0]),
        .I2(\n_0_rx_cdrlock_counter[31]_i_2 ),
        .O(n_0_rx_cdrlocked_i_1));
FDRE rx_cdrlocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_rx_cdrlocked_i_1),
        .Q(n_0_rx_cdrlocked_reg),
        .R(gt_rx_reset_i));
FDRE rxfsm_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r),
        .Q(rxfsm_rxresetdone_r2),
        .R(1'b0));
FDRE rxfsm_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(rxfsm_rxresetdone_r2),
        .Q(rx_resetdone_out),
        .R(1'b0));
FDRE rxfsm_rxresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_gt0_rxresetdone_r3_reg_srl3),
        .Q(rxfsm_rxresetdone_r),
        .R(1'b0));
LUT3 #(
    .INIT(8'hFE)) 
     rxfsm_soft_reset_r_i_1
       (.I0(gt_reset),
        .I1(gtrxreset_pulse),
        .I2(link_reset_r2),
        .O(n_0_rxfsm_soft_reset_r_i_1));
FDRE rxfsm_soft_reset_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_rxfsm_soft_reset_r_i_1),
        .Q(rxfsm_soft_reset_r),
        .R(1'b0));
FDRE txfsm_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_gt0_txresetdone_r3_reg_srl3),
        .Q(txfsm_txresetdone_r),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_IDLE_AND_VER_GEN" *) 
module aurora_8b10b_0_aurora_8b10b_0_IDLE_AND_VER_GEN
   (I7,
    gen_a_i,
    I9,
    I8,
    txver_count_r0,
    user_clk,
    gen_ver_i,
    I1);
  output [2:0]I7;
  output gen_a_i;
  output [3:0]I9;
  output [3:0]I8;
  output txver_count_r0;
  input user_clk;
  input gen_ver_i;
  input [0:0]I1;

  wire D0;
  wire [0:0]I1;
  wire [2:0]I7;
  wire [3:0]I8;
  wire [3:0]I9;
  wire did_ver_i;
  wire [0:2]down_count_r;
  wire gen_a_flop_c;
  wire gen_a_i;
  wire [1:3]gen_k_c;
  wire gen_ver_i;
  wire insert_ver_c;
  wire \n_0_down_count_r[0]_i_1 ;
  wire \n_0_down_count_r[1]_i_1 ;
  wire \n_0_downcounter_r[0]_i_1 ;
  wire \n_0_downcounter_r[1]_i_1 ;
  wire \n_0_downcounter_r[2]_i_1 ;
  wire \n_0_downcounter_r_reg[0] ;
  wire \n_0_downcounter_r_reg[1] ;
  wire \n_0_downcounter_r_reg[2] ;
  wire n_0_gen_r_flop_0_i_i_1;
  wire \n_0_lfsr_reg[3]_i_1 ;
  wire \n_0_lfsr_reg_reg[1] ;
  wire \n_0_lfsr_reg_reg[3] ;
  wire p_1_in;
  wire p_2_in;
  wire prev_cycle_gen_ver_r;
  wire recycle_gen_ver_c;
  wire txver_count_r0;
  wire user_clk;
  wire ver_counter_c;

FDRE DID_VER_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ver_counter_c),
        .Q(did_ver_i),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \down_count_r[0]_i_1 
       (.I0(\n_0_lfsr_reg_reg[3] ),
        .I1(p_2_in),
        .O(\n_0_down_count_r[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT2 #(
    .INIT(4'h9)) 
     \down_count_r[1]_i_1 
       (.I0(\n_0_lfsr_reg_reg[3] ),
        .I1(p_2_in),
        .O(\n_0_down_count_r[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \down_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_down_count_r[0]_i_1 ),
        .Q(down_count_r[0]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \down_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_down_count_r[1]_i_1 ),
        .Q(down_count_r[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \down_count_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_c[3]),
        .Q(down_count_r[2]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT4 #(
    .INIT(16'hF0C2)) 
     \downcounter_r[0]_i_1 
       (.I0(down_count_r[0]),
        .I1(\n_0_downcounter_r_reg[2] ),
        .I2(\n_0_downcounter_r_reg[0] ),
        .I3(\n_0_downcounter_r_reg[1] ),
        .O(\n_0_downcounter_r[0]_i_1 ));
LUT4 #(
    .INIT(16'hCC32)) 
     \downcounter_r[1]_i_1 
       (.I0(down_count_r[1]),
        .I1(\n_0_downcounter_r_reg[2] ),
        .I2(\n_0_downcounter_r_reg[0] ),
        .I3(\n_0_downcounter_r_reg[1] ),
        .O(\n_0_downcounter_r[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT4 #(
    .INIT(16'h5554)) 
     \downcounter_r[2]_i_1 
       (.I0(\n_0_downcounter_r_reg[2] ),
        .I1(\n_0_downcounter_r_reg[1] ),
        .I2(\n_0_downcounter_r_reg[0] ),
        .I3(down_count_r[2]),
        .O(\n_0_downcounter_r[2]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \downcounter_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_downcounter_r[0]_i_1 ),
        .Q(\n_0_downcounter_r_reg[0] ),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \downcounter_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_downcounter_r[1]_i_1 ),
        .Q(\n_0_downcounter_r_reg[1] ),
        .R(I1));
FDRE #(
    .INIT(1'b0)) 
     \downcounter_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_downcounter_r[2]_i_1 ),
        .Q(\n_0_downcounter_r_reg[2] ),
        .R(I1));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_a_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_a_flop_c),
        .Q(gen_a_i),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT5 #(
    .INIT(32'h00010101)) 
     gen_a_flop_0_i_i_1
       (.I0(\n_0_downcounter_r_reg[1] ),
        .I1(\n_0_downcounter_r_reg[0] ),
        .I2(\n_0_downcounter_r_reg[2] ),
        .I3(gen_ver_i),
        .I4(did_ver_i),
        .O(gen_a_flop_c));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_k_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(D0),
        .Q(I9[3]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hD5D5D5D5D5D5D5C0)) 
     gen_k_flop_0_i_i_1
       (.I0(p_1_in),
        .I1(did_ver_i),
        .I2(gen_ver_i),
        .I3(\n_0_downcounter_r_reg[2] ),
        .I4(\n_0_downcounter_r_reg[0] ),
        .I5(\n_0_downcounter_r_reg[1] ),
        .O(D0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_k_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_c[1]),
        .Q(I9[2]),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     gen_k_flop_1_i_i_1
       (.I0(\n_0_lfsr_reg_reg[1] ),
        .O(gen_k_c[1]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_k_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_c[2]),
        .Q(I9[1]),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     gen_k_flop_2_i_i_1
       (.I0(p_2_in),
        .O(gen_k_c[2]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_k_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_k_c[3]),
        .Q(I9[0]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT1 #(
    .INIT(2'h1)) 
     gen_k_flop_3_i_i_1
       (.I0(\n_0_lfsr_reg_reg[3] ),
        .O(gen_k_c[3]));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_r_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_gen_r_flop_0_i_i_1),
        .Q(I8[3]),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000FE00FE00FE00)) 
     gen_r_flop_0_i_i_1
       (.I0(\n_0_downcounter_r_reg[1] ),
        .I1(\n_0_downcounter_r_reg[0] ),
        .I2(\n_0_downcounter_r_reg[2] ),
        .I3(p_1_in),
        .I4(did_ver_i),
        .I5(gen_ver_i),
        .O(n_0_gen_r_flop_0_i_i_1));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_r_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_lfsr_reg_reg[1] ),
        .Q(I8[2]),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_r_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(I8[1]),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_r_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_lfsr_reg_reg[3] ),
        .Q(I8[0]),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_v_flop_1_i
       (.C(user_clk),
        .CE(1'b1),
        .D(recycle_gen_ver_c),
        .Q(I7[2]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT2 #(
    .INIT(4'h8)) 
     gen_v_flop_1_i_i_1
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(recycle_gen_ver_c));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_v_flop_2_i
       (.C(user_clk),
        .CE(1'b1),
        .D(recycle_gen_ver_c),
        .Q(I7[1]),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_v_flop_3_i
       (.C(user_clk),
        .CE(1'b1),
        .D(recycle_gen_ver_c),
        .Q(I7[0]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT4 #(
    .INIT(16'h55A9)) 
     \lfsr_reg[3]_i_1 
       (.I0(p_1_in),
        .I1(p_2_in),
        .I2(\n_0_lfsr_reg_reg[1] ),
        .I3(\n_0_lfsr_reg_reg[3] ),
        .O(\n_0_lfsr_reg[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \lfsr_reg_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_lfsr_reg_reg[1] ),
        .Q(p_1_in),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \lfsr_reg_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_2_in),
        .Q(\n_0_lfsr_reg_reg[1] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \lfsr_reg_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_lfsr_reg_reg[3] ),
        .Q(p_2_in),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \lfsr_reg_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_lfsr_reg[3]_i_1 ),
        .Q(\n_0_lfsr_reg_reg[3] ),
        .R(1'b0));
FDRE prev_cycle_gen_ver_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_ver_i),
        .Q(prev_cycle_gen_ver_r),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \txver_count_r_reg[6]_srl7_i_1 
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(txver_count_r0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "SRL16" *) 
   (* srl_name = "\inst/aurora_8b10b_0_global_logic_i/idle_and_ver_gen_i/ver_counter_i " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     ver_counter_i
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(insert_ver_c),
        .Q(ver_counter_c));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'h8A)) 
     ver_counter_i_i_1
       (.I0(gen_ver_i),
        .I1(did_ver_i),
        .I2(prev_cycle_gen_ver_r),
        .O(insert_ver_c));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_LANE_INIT_SM_4BYTE" *) 
module aurora_8b10b_0_aurora_8b10b_0_LANE_INIT_SM_4BYTE
   (lane_up,
    ready_r,
    O1,
    gen_spa_i,
    enable_err_detect_i,
    rx_polarity_i,
    GEN_SP,
    O2,
    O3,
    SR,
    user_clk,
    ready_r0,
    counter4_r0,
    counter3_r0,
    gen_spa_r,
    RX_NEG,
    rx_realign_i,
    RXDISPERR,
    I4,
    RXCHARISK,
    first_v_received_r,
    D);
  output lane_up;
  output ready_r;
  output O1;
  output gen_spa_i;
  output enable_err_detect_i;
  output rx_polarity_i;
  output GEN_SP;
  output O2;
  output O3;
  input [0:0]SR;
  input user_clk;
  input ready_r0;
  input counter4_r0;
  input counter3_r0;
  input gen_spa_r;
  input RX_NEG;
  input rx_realign_i;
  input [1:0]RXDISPERR;
  input I4;
  input [1:0]RXCHARISK;
  input first_v_received_r;
  input [3:0]D;

  wire [3:0]D;
  wire ENABLE_ERR_DETECT0;
  wire GEN_SP;
  wire I4;
  wire O1;
  wire O2;
  wire O3;
  wire [1:0]RXCHARISK;
  wire [1:0]RXDISPERR;
  wire RX_NEG;
  wire [0:0]SR;
  wire begin_r;
  wire consecutive_commas_r;
  wire consecutive_commas_r0;
  wire count_128d_done_r;
  wire count_32d_done_r;
  wire count_8d_done_r;
  wire counter1_r0;
  wire counter3_r0;
  wire counter4_r0;
  wire counter5_r0;
  wire do_watchdog_count_r;
  wire do_watchdog_count_r0;
  wire enable_err_detect_i;
  wire first_v_received_r;
  wire gen_spa_i;
  wire gen_spa_r;
  wire lane_up;
  wire \n_0_RX_CHAR_IS_COMMA_R_reg[0] ;
  wire \n_0_RX_CHAR_IS_COMMA_R_reg[3] ;
  wire n_0_begin_r_i_2;
  wire \n_0_counter1_r[0]_i_3 ;
  wire \n_0_counter1_r[2]_i_1 ;
  wire \n_0_counter1_r_reg[1] ;
  wire \n_0_counter1_r_reg[3] ;
  wire \n_0_counter1_r_reg[5] ;
  wire \n_0_counter1_r_reg[6] ;
  wire \n_0_counter1_r_reg[7] ;
  wire \n_0_counter2_r_reg[14]_srl14 ;
  wire \n_0_counter2_r_reg[15] ;
  wire \n_0_counter3_r_reg[2]_srl3 ;
  wire \n_0_counter3_r_reg[3] ;
  wire \n_0_counter4_r_reg[14]_srl15 ;
  wire \n_0_counter4_r_reg[15] ;
  wire \n_0_counter5_r_reg[14]_srl15 ;
  wire \n_0_counter5_r_reg[15] ;
  wire n_0_reset_count_r_i_3;
  wire n_0_rx_polarity_r_i_1;
  wire next_ack_c;
  wire next_align_c;
  wire next_begin_c;
  wire next_polarity_c;
  wire next_ready_c;
  wire next_realign_c;
  wire next_rst_c;
  wire p_0_in2_in;
  wire [7:0]p_0_in__3;
  wire p_1_in;
  wire polarity_r;
  wire prev_count_128d_done_r;
  wire ready_r;
  wire ready_r0;
  wire realign_r;
  wire reset_count_r;
  wire reset_count_r0;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire tx_reset_i;
  wire user_clk;

(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'hE)) 
     ENABLE_ERR_DETECT_i_1
       (.I0(gen_spa_i),
        .I1(ready_r),
        .O(ENABLE_ERR_DETECT0));
FDRE ENABLE_ERR_DETECT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(ENABLE_ERR_DETECT0),
        .Q(enable_err_detect_i),
        .R(1'b0));
FDRE \RX_CHAR_IS_COMMA_R_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(\n_0_RX_CHAR_IS_COMMA_R_reg[0] ),
        .R(1'b0));
FDRE \RX_CHAR_IS_COMMA_R_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(p_1_in),
        .R(1'b0));
FDRE \RX_CHAR_IS_COMMA_R_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[2]),
        .Q(p_0_in2_in),
        .R(1'b0));
FDRE \RX_CHAR_IS_COMMA_R_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[3]),
        .Q(\n_0_RX_CHAR_IS_COMMA_R_reg[3] ),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0444FFFF04440444)) 
     ack_r_i_1
       (.I0(\n_0_counter5_r_reg[15] ),
        .I1(gen_spa_i),
        .I2(\n_0_counter3_r_reg[3] ),
        .I3(\n_0_counter2_r_reg[15] ),
        .I4(RX_NEG),
        .I5(polarity_r),
        .O(next_ack_c));
FDRE ack_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ack_c),
        .Q(gen_spa_i),
        .R(ready_r0));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'hF222)) 
     align_r_i_2
       (.I0(O1),
        .I1(count_128d_done_r),
        .I2(tx_reset_i),
        .I3(count_8d_done_r),
        .O(next_align_c));
FDRE align_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_align_c),
        .Q(O1),
        .R(ready_r0));
LUT5 #(
    .INIT(32'hFFFFF888)) 
     begin_r_i_1
       (.I0(gen_spa_i),
        .I1(\n_0_counter5_r_reg[15] ),
        .I2(realign_r),
        .I3(rx_realign_i),
        .I4(n_0_begin_r_i_2),
        .O(next_begin_c));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'hF888)) 
     begin_r_i_2
       (.I0(polarity_r),
        .I1(RX_NEG),
        .I2(\n_0_counter4_r_reg[15] ),
        .I3(ready_r),
        .O(n_0_begin_r_i_2));
FDSE begin_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_begin_c),
        .Q(begin_r),
        .S(ready_r0));
LUT5 #(
    .INIT(32'hFFFFFFFD)) 
     consecutive_commas_r_i_1
       (.I0(O1),
        .I1(\n_0_RX_CHAR_IS_COMMA_R_reg[0] ),
        .I2(p_0_in2_in),
        .I3(p_1_in),
        .I4(\n_0_RX_CHAR_IS_COMMA_R_reg[3] ),
        .O(consecutive_commas_r0));
FDRE consecutive_commas_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(consecutive_commas_r0),
        .Q(consecutive_commas_r),
        .R(1'b0));
LUT2 #(
    .INIT(4'hE)) 
     \counter1_r[0]_i_1 
       (.I0(ready_r),
        .I1(reset_count_r),
        .O(counter1_r0));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \counter1_r[0]_i_2 
       (.I0(count_128d_done_r),
        .I1(count_32d_done_r),
        .I2(count_8d_done_r),
        .I3(\n_0_counter1_r[0]_i_3 ),
        .I4(\n_0_counter1_r_reg[3] ),
        .I5(\n_0_counter1_r_reg[1] ),
        .O(p_0_in__3[7]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h80)) 
     \counter1_r[0]_i_3 
       (.I0(\n_0_counter1_r_reg[5] ),
        .I1(\n_0_counter1_r_reg[6] ),
        .I2(\n_0_counter1_r_reg[7] ),
        .O(\n_0_counter1_r[0]_i_3 ));
LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \counter1_r[1]_i_1 
       (.I0(\n_0_counter1_r_reg[1] ),
        .I1(\n_0_counter1_r_reg[3] ),
        .I2(\n_0_counter1_r[0]_i_3 ),
        .I3(count_8d_done_r),
        .I4(count_32d_done_r),
        .O(p_0_in__3[6]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \counter1_r[2]_i_1 
       (.I0(count_32d_done_r),
        .I1(count_8d_done_r),
        .I2(\n_0_counter1_r_reg[7] ),
        .I3(\n_0_counter1_r_reg[6] ),
        .I4(\n_0_counter1_r_reg[5] ),
        .I5(\n_0_counter1_r_reg[3] ),
        .O(\n_0_counter1_r[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \counter1_r[3]_i_1 
       (.I0(\n_0_counter1_r_reg[3] ),
        .I1(\n_0_counter1_r_reg[5] ),
        .I2(\n_0_counter1_r_reg[6] ),
        .I3(\n_0_counter1_r_reg[7] ),
        .I4(count_8d_done_r),
        .O(p_0_in__3[4]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \counter1_r[4]_i_1 
       (.I0(count_8d_done_r),
        .I1(\n_0_counter1_r_reg[7] ),
        .I2(\n_0_counter1_r_reg[6] ),
        .I3(\n_0_counter1_r_reg[5] ),
        .O(p_0_in__3[3]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \counter1_r[5]_i_1 
       (.I0(\n_0_counter1_r_reg[7] ),
        .I1(\n_0_counter1_r_reg[6] ),
        .I2(\n_0_counter1_r_reg[5] ),
        .O(p_0_in__3[2]));
LUT2 #(
    .INIT(4'h6)) 
     \counter1_r[6]_i_1 
       (.I0(\n_0_counter1_r_reg[7] ),
        .I1(\n_0_counter1_r_reg[6] ),
        .O(p_0_in__3[1]));
LUT1 #(
    .INIT(2'h1)) 
     \counter1_r[7]_i_1 
       (.I0(\n_0_counter1_r_reg[7] ),
        .O(p_0_in__3[0]));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[0] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in__3[7]),
        .Q(count_128d_done_r),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[1] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in__3[6]),
        .Q(\n_0_counter1_r_reg[1] ),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[2] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(\n_0_counter1_r[2]_i_1 ),
        .Q(count_32d_done_r),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[3] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in__3[4]),
        .Q(\n_0_counter1_r_reg[3] ),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[4] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in__3[3]),
        .Q(count_8d_done_r),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[5] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in__3[2]),
        .Q(\n_0_counter1_r_reg[5] ),
        .R(counter1_r0));
FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[6] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in__3[1]),
        .Q(\n_0_counter1_r_reg[6] ),
        .R(counter1_r0));
FDSE #(
    .INIT(1'b1)) 
     \counter1_r_reg[7] 
       (.C(user_clk),
        .CE(consecutive_commas_r0),
        .D(p_0_in__3[0]),
        .Q(\n_0_counter1_r_reg[7] ),
        .S(counter1_r0));
(* srl_bus_name = "\inst/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter2_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter2_r_reg[14]_srl14 " *) 
   SRL16E \counter2_r_reg[14]_srl14 
       (.A0(1'b1),
        .A1(1'b0),
        .A2(1'b1),
        .A3(1'b1),
        .CE(1'b1),
        .CLK(user_clk),
        .D(gen_spa_r),
        .Q(\n_0_counter2_r_reg[14]_srl14 ));
FDRE \counter2_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_counter2_r_reg[14]_srl14 ),
        .Q(\n_0_counter2_r_reg[15] ),
        .R(1'b0));
(* srl_bus_name = "\inst/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter3_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter3_r_reg[2]_srl3 " *) 
   SRL16E \counter3_r_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(counter3_r0),
        .CLK(user_clk),
        .D(gen_spa_i),
        .Q(\n_0_counter3_r_reg[2]_srl3 ));
FDRE \counter3_r_reg[3] 
       (.C(user_clk),
        .CE(counter3_r0),
        .D(\n_0_counter3_r_reg[2]_srl3 ),
        .Q(\n_0_counter3_r_reg[3] ),
        .R(1'b0));
(* srl_bus_name = "\inst/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter4_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter4_r_reg[14]_srl15 " *) 
   SRL16E \counter4_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter4_r0),
        .CLK(user_clk),
        .D(ready_r),
        .Q(\n_0_counter4_r_reg[14]_srl15 ));
FDRE \counter4_r_reg[15] 
       (.C(user_clk),
        .CE(counter4_r0),
        .D(\n_0_counter4_r_reg[14]_srl15 ),
        .Q(\n_0_counter4_r_reg[15] ),
        .R(1'b0));
(* srl_bus_name = "\inst/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter5_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter5_r_reg[14]_srl15 " *) 
   SRL16E \counter5_r_reg[14]_srl15 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b1),
        .A3(1'b1),
        .CE(counter5_r0),
        .CLK(user_clk),
        .D(gen_spa_i),
        .Q(\n_0_counter5_r_reg[14]_srl15 ));
LUT2 #(
    .INIT(4'hB)) 
     \counter5_r_reg[14]_srl15_i_1 
       (.I0(do_watchdog_count_r),
        .I1(gen_spa_i),
        .O(counter5_r0));
FDRE \counter5_r_reg[15] 
       (.C(user_clk),
        .CE(counter5_r0),
        .D(\n_0_counter5_r_reg[14]_srl15 ),
        .Q(\n_0_counter5_r_reg[15] ),
        .R(1'b0));
LUT2 #(
    .INIT(4'h2)) 
     do_watchdog_count_r_i_1
       (.I0(count_128d_done_r),
        .I1(prev_count_128d_done_r),
        .O(do_watchdog_count_r0));
FDRE do_watchdog_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(do_watchdog_count_r0),
        .Q(do_watchdog_count_r),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h1)) 
     gen_sp_r_i_1
       (.I0(ready_r),
        .I1(gen_spa_i),
        .O(GEN_SP));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   FDRE #(
    .INIT(1'b0)) 
     lane_up_flop_i
       (.C(user_clk),
        .CE(1'b1),
        .D(ready_r),
        .Q(lane_up),
        .R(SR));
LUT5 #(
    .INIT(32'hFFFF888F)) 
     \left_align_select_r[0]_i_2 
       (.I0(RXCHARISK[1]),
        .I1(RXCHARISK[0]),
        .I2(ready_r),
        .I3(O1),
        .I4(first_v_received_r),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h08)) 
     polarity_r_i_1
       (.I0(count_32d_done_r),
        .I1(realign_r),
        .I2(rx_realign_i),
        .O(next_polarity_c));
FDRE polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_polarity_c),
        .Q(polarity_r),
        .R(ready_r0));
FDRE prev_count_128d_done_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(count_128d_done_r),
        .Q(prev_count_128d_done_r),
        .R(1'b0));
LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
     ready_r_i_1__0
       (.I0(\n_0_counter5_r_reg[15] ),
        .I1(gen_spa_i),
        .I2(\n_0_counter3_r_reg[3] ),
        .I3(\n_0_counter2_r_reg[15] ),
        .I4(\n_0_counter4_r_reg[15] ),
        .I5(ready_r),
        .O(next_ready_c));
FDRE ready_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_ready_c),
        .Q(ready_r),
        .R(ready_r0));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'hFF040404)) 
     realign_r_i_1
       (.I0(rx_realign_i),
        .I1(realign_r),
        .I2(count_32d_done_r),
        .I3(count_128d_done_r),
        .I4(O1),
        .O(next_realign_c));
FDRE realign_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_realign_c),
        .Q(realign_r),
        .R(ready_r0));
LUT6 #(
    .INIT(64'hFFFFFFFF55555551)) 
     reset_count_r_i_1
       (.I0(tx_reset_i),
        .I1(consecutive_commas_r),
        .I2(RXDISPERR[0]),
        .I3(RXDISPERR[1]),
        .I4(I4),
        .I5(n_0_reset_count_r_i_3),
        .O(reset_count_r0));
LUT4 #(
    .INIT(16'hBAEE)) 
     reset_count_r_i_3
       (.I0(SR),
        .I1(begin_r),
        .I2(count_8d_done_r),
        .I3(tx_reset_i),
        .O(n_0_reset_count_r_i_3));
FDRE reset_count_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(reset_count_r0),
        .Q(reset_count_r),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     rst_r_i_1
       (.I0(begin_r),
        .I1(count_8d_done_r),
        .I2(tx_reset_i),
        .O(next_rst_c));
FDRE rst_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(next_rst_c),
        .Q(tx_reset_i),
        .R(ready_r0));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h78)) 
     rx_polarity_r_i_1
       (.I0(polarity_r),
        .I1(RX_NEG),
        .I2(rx_polarity_i),
        .O(n_0_rx_polarity_r_i_1));
FDRE #(
    .INIT(1'b0)) 
     rx_polarity_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_rx_polarity_r_i_1),
        .Q(rx_polarity_i),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \soft_err_r[0]_i_1 
       (.I0(enable_err_detect_i),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_LEFT_ALIGN_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_CONTROL
   (MUX_SELECT,
    I1,
    user_clk);
  output [0:0]MUX_SELECT;
  input I1;
  input user_clk;

  wire I1;
  wire [0:0]MUX_SELECT;
  wire user_clk;

FDRE \MUX_SELECT_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I1),
        .Q(MUX_SELECT),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_LEFT_ALIGN_MUX" *) 
module aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_MUX
   (Q,
    D,
    stage_2_data_r,
    MUX_SELECT,
    user_clk,
    STORAGE_SELECT);
  output [15:0]Q;
  output [31:0]D;
  input [0:31]stage_2_data_r;
  input [0:0]MUX_SELECT;
  input user_clk;
  input [1:0]STORAGE_SELECT;

  wire [31:0]D;
  wire [16:31]MUXED_DATA;
  wire [0:0]MUX_SELECT;
  wire [15:0]Q;
  wire [1:0]STORAGE_SELECT;
  wire [0:15]muxed_data_c;
  wire [0:31]stage_2_data_r;
  wire user_clk;

(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[0]_i_1 
       (.I0(stage_2_data_r[16]),
        .I1(stage_2_data_r[0]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[0]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[10]_i_1 
       (.I0(stage_2_data_r[26]),
        .I1(stage_2_data_r[10]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[10]));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[11]_i_1 
       (.I0(stage_2_data_r[27]),
        .I1(stage_2_data_r[11]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[11]));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[12]_i_1 
       (.I0(stage_2_data_r[28]),
        .I1(stage_2_data_r[12]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[12]));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[13]_i_1 
       (.I0(stage_2_data_r[29]),
        .I1(stage_2_data_r[13]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[13]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[14]_i_1 
       (.I0(stage_2_data_r[30]),
        .I1(stage_2_data_r[14]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[14]));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[15]_i_1 
       (.I0(stage_2_data_r[31]),
        .I1(stage_2_data_r[15]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[15]));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[1]_i_1 
       (.I0(stage_2_data_r[17]),
        .I1(stage_2_data_r[1]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[1]));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[2]_i_1 
       (.I0(stage_2_data_r[18]),
        .I1(stage_2_data_r[2]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[2]));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[3]_i_1 
       (.I0(stage_2_data_r[19]),
        .I1(stage_2_data_r[3]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[3]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[4]_i_1 
       (.I0(stage_2_data_r[20]),
        .I1(stage_2_data_r[4]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[4]));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[5]_i_1 
       (.I0(stage_2_data_r[21]),
        .I1(stage_2_data_r[5]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[5]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[6]_i_1 
       (.I0(stage_2_data_r[22]),
        .I1(stage_2_data_r[6]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[6]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[7]_i_1 
       (.I0(stage_2_data_r[23]),
        .I1(stage_2_data_r[7]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[7]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[8]_i_1 
       (.I0(stage_2_data_r[24]),
        .I1(stage_2_data_r[8]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[8]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[9]_i_1 
       (.I0(stage_2_data_r[25]),
        .I1(stage_2_data_r[9]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[9]));
FDRE \MUXED_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[0]),
        .Q(Q[15]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[10]),
        .Q(Q[5]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[11]),
        .Q(Q[4]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[12]),
        .Q(Q[3]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[13]),
        .Q(Q[2]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[14]),
        .Q(Q[1]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[15]),
        .Q(Q[0]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[16]),
        .Q(MUXED_DATA[16]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[17]),
        .Q(MUXED_DATA[17]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[18]),
        .Q(MUXED_DATA[18]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[19]),
        .Q(MUXED_DATA[19]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[1]),
        .Q(Q[14]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[20]),
        .Q(MUXED_DATA[20]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[21]),
        .Q(MUXED_DATA[21]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[22]),
        .Q(MUXED_DATA[22]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[23]),
        .Q(MUXED_DATA[23]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[24]),
        .Q(MUXED_DATA[24]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[25]),
        .Q(MUXED_DATA[25]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[26]),
        .Q(MUXED_DATA[26]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[27]),
        .Q(MUXED_DATA[27]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[28]),
        .Q(MUXED_DATA[28]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[29]),
        .Q(MUXED_DATA[29]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[2]),
        .Q(Q[13]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[30]),
        .Q(MUXED_DATA[30]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_2_data_r[31]),
        .Q(MUXED_DATA[31]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[3]),
        .Q(Q[12]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[4]),
        .Q(Q[11]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[5]),
        .Q(Q[10]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[6]),
        .Q(Q[9]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[7]),
        .Q(Q[8]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[8]),
        .Q(Q[7]),
        .R(1'b0));
FDRE \MUXED_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(muxed_data_c[9]),
        .Q(Q[6]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[0]_i_1 
       (.I0(MUXED_DATA[16]),
        .I1(Q[15]),
        .I2(STORAGE_SELECT[1]),
        .O(D[31]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[10]_i_1 
       (.I0(MUXED_DATA[26]),
        .I1(Q[5]),
        .I2(STORAGE_SELECT[1]),
        .O(D[21]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[11]_i_1 
       (.I0(MUXED_DATA[27]),
        .I1(Q[4]),
        .I2(STORAGE_SELECT[1]),
        .O(D[20]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[12]_i_1 
       (.I0(MUXED_DATA[28]),
        .I1(Q[3]),
        .I2(STORAGE_SELECT[1]),
        .O(D[19]));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[13]_i_1 
       (.I0(MUXED_DATA[29]),
        .I1(Q[2]),
        .I2(STORAGE_SELECT[1]),
        .O(D[18]));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[14]_i_1 
       (.I0(MUXED_DATA[30]),
        .I1(Q[1]),
        .I2(STORAGE_SELECT[1]),
        .O(D[17]));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[15]_i_1 
       (.I0(MUXED_DATA[31]),
        .I1(Q[0]),
        .I2(STORAGE_SELECT[1]),
        .O(D[16]));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[16]_i_1 
       (.I0(MUXED_DATA[16]),
        .I1(Q[15]),
        .I2(STORAGE_SELECT[0]),
        .O(D[15]));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[17]_i_1 
       (.I0(MUXED_DATA[17]),
        .I1(Q[14]),
        .I2(STORAGE_SELECT[0]),
        .O(D[14]));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[18]_i_1 
       (.I0(MUXED_DATA[18]),
        .I1(Q[13]),
        .I2(STORAGE_SELECT[0]),
        .O(D[13]));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[19]_i_1 
       (.I0(MUXED_DATA[19]),
        .I1(Q[12]),
        .I2(STORAGE_SELECT[0]),
        .O(D[12]));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[1]_i_1 
       (.I0(MUXED_DATA[17]),
        .I1(Q[14]),
        .I2(STORAGE_SELECT[1]),
        .O(D[30]));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[20]_i_1 
       (.I0(MUXED_DATA[20]),
        .I1(Q[11]),
        .I2(STORAGE_SELECT[0]),
        .O(D[11]));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[21]_i_1 
       (.I0(MUXED_DATA[21]),
        .I1(Q[10]),
        .I2(STORAGE_SELECT[0]),
        .O(D[10]));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[22]_i_1 
       (.I0(MUXED_DATA[22]),
        .I1(Q[9]),
        .I2(STORAGE_SELECT[0]),
        .O(D[9]));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[23]_i_1 
       (.I0(MUXED_DATA[23]),
        .I1(Q[8]),
        .I2(STORAGE_SELECT[0]),
        .O(D[8]));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[24]_i_1 
       (.I0(MUXED_DATA[24]),
        .I1(Q[7]),
        .I2(STORAGE_SELECT[0]),
        .O(D[7]));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[25]_i_1 
       (.I0(MUXED_DATA[25]),
        .I1(Q[6]),
        .I2(STORAGE_SELECT[0]),
        .O(D[6]));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[26]_i_1 
       (.I0(MUXED_DATA[26]),
        .I1(Q[5]),
        .I2(STORAGE_SELECT[0]),
        .O(D[5]));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[27]_i_1 
       (.I0(MUXED_DATA[27]),
        .I1(Q[4]),
        .I2(STORAGE_SELECT[0]),
        .O(D[4]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[28]_i_1 
       (.I0(MUXED_DATA[28]),
        .I1(Q[3]),
        .I2(STORAGE_SELECT[0]),
        .O(D[3]));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[29]_i_1 
       (.I0(MUXED_DATA[29]),
        .I1(Q[2]),
        .I2(STORAGE_SELECT[0]),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[2]_i_1 
       (.I0(MUXED_DATA[18]),
        .I1(Q[13]),
        .I2(STORAGE_SELECT[1]),
        .O(D[29]));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[30]_i_1 
       (.I0(MUXED_DATA[30]),
        .I1(Q[1]),
        .I2(STORAGE_SELECT[0]),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[31]_i_1 
       (.I0(MUXED_DATA[31]),
        .I1(Q[0]),
        .I2(STORAGE_SELECT[0]),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[3]_i_1 
       (.I0(MUXED_DATA[19]),
        .I1(Q[12]),
        .I2(STORAGE_SELECT[1]),
        .O(D[28]));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[4]_i_1 
       (.I0(MUXED_DATA[20]),
        .I1(Q[11]),
        .I2(STORAGE_SELECT[1]),
        .O(D[27]));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[5]_i_1 
       (.I0(MUXED_DATA[21]),
        .I1(Q[10]),
        .I2(STORAGE_SELECT[1]),
        .O(D[26]));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[6]_i_1 
       (.I0(MUXED_DATA[22]),
        .I1(Q[9]),
        .I2(STORAGE_SELECT[1]),
        .O(D[25]));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[7]_i_1 
       (.I0(MUXED_DATA[23]),
        .I1(Q[8]),
        .I2(STORAGE_SELECT[1]),
        .O(D[24]));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[8]_i_1 
       (.I0(MUXED_DATA[24]),
        .I1(Q[7]),
        .I2(STORAGE_SELECT[1]),
        .O(D[23]));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \STORAGE_DATA[9]_i_1 
       (.I0(MUXED_DATA[25]),
        .I1(Q[6]),
        .I2(STORAGE_SELECT[1]),
        .O(D[22]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_LL_TO_AXI" *) 
module aurora_8b10b_0_aurora_8b10b_0_LL_TO_AXI
   (m_axi_rx_tkeep,
    rx_eof,
    Q);
  output [2:0]m_axi_rx_tkeep;
  input rx_eof;
  input [1:0]Q;

  wire [1:0]Q;
  wire [2:0]m_axi_rx_tkeep;
  wire rx_eof;

(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \m_axi_rx_tkeep[1]_INST_0 
       (.I0(rx_eof),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(m_axi_rx_tkeep[2]));
LUT2 #(
    .INIT(4'hE)) 
     \m_axi_rx_tkeep[2]_INST_0 
       (.I0(rx_eof),
        .I1(Q[1]),
        .O(m_axi_rx_tkeep[1]));
(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT3 #(
    .INIT(8'hEA)) 
     \m_axi_rx_tkeep[3]_INST_0 
       (.I0(rx_eof),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(m_axi_rx_tkeep[0]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_OUTPUT_MUX" *) 
module aurora_8b10b_0_aurora_8b10b_0_OUTPUT_MUX
   (m_axi_rx_tdata,
    Q,
    user_clk,
    I1,
    I2);
  output [0:31]m_axi_rx_tdata;
  input [31:0]Q;
  input user_clk;
  input [15:0]I1;
  input I2;

  wire [15:0]I1;
  wire I2;
  wire [31:0]Q;
  wire [0:31]m_axi_rx_tdata;
  wire [16:31]output_data_c;
  wire user_clk;

(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[16]_i_1 
       (.I0(I1[15]),
        .I1(Q[15]),
        .I2(I2),
        .O(output_data_c[16]));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[17]_i_1 
       (.I0(I1[14]),
        .I1(Q[14]),
        .I2(I2),
        .O(output_data_c[17]));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[18]_i_1 
       (.I0(I1[13]),
        .I1(Q[13]),
        .I2(I2),
        .O(output_data_c[18]));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[19]_i_1 
       (.I0(I1[12]),
        .I1(Q[12]),
        .I2(I2),
        .O(output_data_c[19]));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[20]_i_1 
       (.I0(I1[11]),
        .I1(Q[11]),
        .I2(I2),
        .O(output_data_c[20]));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[21]_i_1 
       (.I0(I1[10]),
        .I1(Q[10]),
        .I2(I2),
        .O(output_data_c[21]));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[22]_i_1 
       (.I0(I1[9]),
        .I1(Q[9]),
        .I2(I2),
        .O(output_data_c[22]));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[23]_i_1 
       (.I0(I1[8]),
        .I1(Q[8]),
        .I2(I2),
        .O(output_data_c[23]));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[24]_i_1 
       (.I0(I1[7]),
        .I1(Q[7]),
        .I2(I2),
        .O(output_data_c[24]));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[25]_i_1 
       (.I0(I1[6]),
        .I1(Q[6]),
        .I2(I2),
        .O(output_data_c[25]));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[26]_i_1 
       (.I0(I1[5]),
        .I1(Q[5]),
        .I2(I2),
        .O(output_data_c[26]));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[27]_i_1 
       (.I0(I1[4]),
        .I1(Q[4]),
        .I2(I2),
        .O(output_data_c[27]));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[28]_i_1 
       (.I0(I1[3]),
        .I1(Q[3]),
        .I2(I2),
        .O(output_data_c[28]));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[29]_i_1 
       (.I0(I1[2]),
        .I1(Q[2]),
        .I2(I2),
        .O(output_data_c[29]));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[30]_i_1 
       (.I0(I1[1]),
        .I1(Q[1]),
        .I2(I2),
        .O(output_data_c[30]));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \OUTPUT_DATA[31]_i_1 
       (.I0(I1[0]),
        .I1(Q[0]),
        .I2(I2),
        .O(output_data_c[31]));
FDRE \OUTPUT_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(m_axi_rx_tdata[0]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(m_axi_rx_tdata[10]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(m_axi_rx_tdata[11]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(m_axi_rx_tdata[12]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(m_axi_rx_tdata[13]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(m_axi_rx_tdata[14]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(m_axi_rx_tdata[15]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[16]),
        .Q(m_axi_rx_tdata[16]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[17]),
        .Q(m_axi_rx_tdata[17]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[18]),
        .Q(m_axi_rx_tdata[18]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[19]),
        .Q(m_axi_rx_tdata[19]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(m_axi_rx_tdata[1]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[20]),
        .Q(m_axi_rx_tdata[20]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[21]),
        .Q(m_axi_rx_tdata[21]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[22]),
        .Q(m_axi_rx_tdata[22]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[23]),
        .Q(m_axi_rx_tdata[23]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[24]),
        .Q(m_axi_rx_tdata[24]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[25]),
        .Q(m_axi_rx_tdata[25]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[26]),
        .Q(m_axi_rx_tdata[26]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[27]),
        .Q(m_axi_rx_tdata[27]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[28]),
        .Q(m_axi_rx_tdata[28]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[29]),
        .Q(m_axi_rx_tdata[29]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(m_axi_rx_tdata[2]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[30]),
        .Q(m_axi_rx_tdata[30]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(output_data_c[31]),
        .Q(m_axi_rx_tdata[31]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(m_axi_rx_tdata[3]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(m_axi_rx_tdata[4]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(m_axi_rx_tdata[5]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(m_axi_rx_tdata[6]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(m_axi_rx_tdata[7]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(m_axi_rx_tdata[8]),
        .R(1'b0));
FDRE \OUTPUT_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(m_axi_rx_tdata[9]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_OUTPUT_SWITCH_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_OUTPUT_SWITCH_CONTROL
   (O1,
    I1,
    user_clk);
  output O1;
  input I1;
  input user_clk;

  wire I1;
  wire O1;
  wire user_clk;

FDRE \OUTPUT_SELECT_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I1),
        .Q(O1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_RESET_LOGIC" *) 
module aurora_8b10b_0_aurora_8b10b_0_RESET_LOGIC
   (s_out_d1_cdc_to,
    s_out_d2,
    s_out_d3,
    s_out_d4,
    s_out_d5,
    s_out_d6,
    s_out_d7,
    out,
    O1,
    O2,
    O3,
    O4,
    O5,
    link_reset_comb_r,
    s_out_d1_cdc_to_0,
    s_out_d2_1,
    s_out_d3_2,
    s_out_d4_3,
    s_out_d5_4,
    s_out_d6_5,
    s_out_d7_6,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    s_out_d1_cdc_to_7,
    s_out_d2_8,
    s_out_d3_9,
    s_out_d4_10,
    s_out_d5_11,
    s_out_d6_12,
    s_out_d7_13,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O181,
    I1,
    user_clk,
    I2,
    I3,
    init_clk_in,
    link_reset_out,
    reset);
  output s_out_d1_cdc_to;
  output s_out_d2;
  output s_out_d3;
  output s_out_d4;
  output s_out_d5;
  output s_out_d6;
  output s_out_d7;
  output [1:0]out;
  output [1:0]O1;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output link_reset_comb_r;
  output s_out_d1_cdc_to_0;
  output s_out_d2_1;
  output s_out_d3_2;
  output s_out_d4_3;
  output s_out_d5_4;
  output s_out_d6_5;
  output s_out_d7_6;
  output [1:0]O6;
  output [1:0]O7;
  output [1:0]O8;
  output [1:0]O9;
  output [1:0]O10;
  output [1:0]O11;
  output s_out_d1_cdc_to_7;
  output s_out_d2_8;
  output s_out_d3_9;
  output s_out_d4_10;
  output s_out_d5_11;
  output s_out_d6_12;
  output s_out_d7_13;
  output [1:0]O12;
  output [1:0]O13;
  output [1:0]O14;
  output [1:0]O15;
  output [1:0]O16;
  output [1:0]O17;
  output O181;
  input I1;
  input user_clk;
  input I2;
  input I3;
  input init_clk_in;
  input link_reset_out;
  input reset;

  wire I1;
  wire I2;
  wire I3;
  wire [1:0]O1;
  wire [1:0]O10;
  wire [1:0]O11;
  wire [1:0]O12;
  wire [1:0]O13;
  wire [1:0]O14;
  wire [1:0]O15;
  wire [1:0]O16;
  wire [1:0]O17;
  wire O181;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [1:0]O8;
  wire [1:0]O9;
  wire gt_rxresetdone_r;
  wire gt_rxresetdone_r2;
  wire gt_rxresetdone_r3;
  wire gt_txresetdone_r;
  wire gt_txresetdone_r2;
  wire gt_txresetdone_r3;
  wire init_clk_in;
  wire link_reset_comb_r;
  wire link_reset_out;
  wire n_19_link_reset_cdc_sync;
  wire n_19_tx_resetdone_cdc_sync;
  wire [1:0]out;
  wire reset;
  wire s_out_d1_cdc_to;
  wire s_out_d1_cdc_to_0;
  wire s_out_d1_cdc_to_7;
  wire s_out_d2;
  wire s_out_d2_1;
  wire s_out_d2_8;
  wire s_out_d3;
  wire s_out_d3_2;
  wire s_out_d3_9;
  wire s_out_d4;
  wire s_out_d4_10;
  wire s_out_d4_3;
  wire s_out_d5;
  wire s_out_d5_11;
  wire s_out_d5_4;
  wire s_out_d6;
  wire s_out_d6_12;
  wire s_out_d6_5;
  wire s_out_d7;
  wire s_out_d7_13;
  wire s_out_d7_6;
  wire tx_lock_comb_r;
  wire tx_lock_sync;
  wire user_clk;

FDRE SYSTEM_RESET_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_19_link_reset_cdc_sync),
        .Q(O181),
        .R(1'b0));
FDCE gt_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(gt_rxresetdone_r),
        .Q(gt_rxresetdone_r2));
FDRE gt_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt_rxresetdone_r2),
        .Q(gt_rxresetdone_r3),
        .R(1'b0));
FDCE gt_rxresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(I2),
        .D(1'b1),
        .Q(gt_rxresetdone_r));
FDCE gt_txresetdone_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(n_19_tx_resetdone_cdc_sync),
        .D(gt_txresetdone_r),
        .Q(gt_txresetdone_r2));
FDRE gt_txresetdone_r3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gt_txresetdone_r2),
        .Q(gt_txresetdone_r3),
        .R(1'b0));
FDCE gt_txresetdone_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(n_19_tx_resetdone_cdc_sync),
        .D(1'b1),
        .Q(gt_txresetdone_r));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_25 link_reset_cdc_sync
       (.O1(n_19_link_reset_cdc_sync),
        .O10(O10),
        .O11(O11),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .gt_rxresetdone_r3(gt_rxresetdone_r3),
        .gt_txresetdone_r3(gt_txresetdone_r3),
        .link_reset_comb_r(link_reset_comb_r),
        .reset(reset),
        .s_out_d1_cdc_to_0(s_out_d1_cdc_to_0),
        .s_out_d2_1(s_out_d2_1),
        .s_out_d3_2(s_out_d3_2),
        .s_out_d4_3(s_out_d4_3),
        .s_out_d5_4(s_out_d5_4),
        .s_out_d6_5(s_out_d6_5),
        .s_out_d7_6(s_out_d7_6),
        .tx_lock_sync(tx_lock_sync),
        .user_clk(user_clk));
FDRE link_reset_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_out),
        .Q(link_reset_comb_r),
        .R(1'b0));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_26 tx_lock_cdc_sync
       (.O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .s_out_d1_cdc_to_7(s_out_d1_cdc_to_7),
        .s_out_d2_8(s_out_d2_8),
        .s_out_d3_9(s_out_d3_9),
        .s_out_d4_10(s_out_d4_10),
        .s_out_d5_11(s_out_d5_11),
        .s_out_d6_12(s_out_d6_12),
        .s_out_d7_13(s_out_d7_13),
        .tx_lock_comb_r(tx_lock_comb_r),
        .tx_lock_sync(tx_lock_sync),
        .user_clk(user_clk));
FDRE tx_lock_comb_r_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(I3),
        .Q(tx_lock_comb_r),
        .R(1'b0));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_27 tx_resetdone_cdc_sync
       (.I1(I1),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(n_19_tx_resetdone_cdc_sync),
        .out(out),
        .s_out_d1_cdc_to(s_out_d1_cdc_to),
        .s_out_d2(s_out_d2),
        .s_out_d3(s_out_d3),
        .s_out_d4(s_out_d4),
        .s_out_d5(s_out_d5),
        .s_out_d6(s_out_d6),
        .s_out_d7(s_out_d7),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_RX_LL" *) 
module aurora_8b10b_0_aurora_8b10b_0_RX_LL
   (rx_eof,
    frame_err,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    Q,
    m_axi_rx_tdata,
    I1,
    D,
    I2,
    S11_in,
    S1,
    user_clk,
    SR,
    I3,
    O12,
    O11,
    O10,
    O9,
    START_RX,
    O13,
    I4);
  output rx_eof;
  output frame_err;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  output [1:0]Q;
  output [0:31]m_axi_rx_tdata;
  input I1;
  input [1:0]D;
  input I2;
  input S11_in;
  input S1;
  input user_clk;
  input [0:0]SR;
  input I3;
  input [7:0]O12;
  input [7:0]O11;
  input [7:0]O10;
  input [7:0]O9;
  input START_RX;
  input [1:0]O13;
  input [1:0]I4;

  wire [1:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire [1:0]I4;
  wire [7:0]O10;
  wire [7:0]O11;
  wire [7:0]O12;
  wire [1:0]O13;
  wire [7:0]O9;
  wire [1:0]Q;
  wire S1;
  wire S11_in;
  wire [0:0]SR;
  wire START_RX;
  wire frame_err;
  wire [0:31]m_axi_rx_tdata;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire rx_eof;
  wire user_clk;

aurora_8b10b_0_aurora_8b10b_0_RX_LL_PDU_DATAPATH rx_ll_pdu_datapath_i
       (.D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O9(O9),
        .Q(Q),
        .S1(S1),
        .S11_in(S11_in),
        .SR(SR),
        .START_RX(START_RX),
        .frame_err(frame_err),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .rx_eof(rx_eof),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_RX_LL_DEFRAMER" *) 
module aurora_8b10b_0_aurora_8b10b_0_RX_LL_DEFRAMER
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    I1,
    D,
    I2,
    S11_in,
    S1,
    SR,
    user_clk,
    START_RX,
    Q,
    I3,
    O13);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output [1:0]O6;
  input I1;
  input [1:0]D;
  input I2;
  input S11_in;
  input S1;
  input [0:0]SR;
  input user_clk;
  input START_RX;
  input [1:0]Q;
  input [1:0]I3;
  input [1:0]O13;

  wire [1:0]D;
  wire I1;
  wire I2;
  wire [1:0]I3;
  wire O1;
  wire [1:0]O13;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire [1:0]O6;
  wire [1:0]Q;
  wire S1;
  wire S11_in;
  wire [0:0]SR;
  wire START_RX;
  wire [0:1]after_scp_c;
  wire [0:1]in_frame_c;
  wire in_frame_r;
  wire \n_0_DEFRAMED_DATA_V[0]_i_1 ;
  wire \n_0_DEFRAMED_DATA_V[1]_i_1 ;
  wire n_0_stage_2_frame_err_r_i_2;
  wire [0:1]stage_1_after_scp_r;
  wire [0:1]stage_1_data_v_r;
  wire [0:1]stage_1_in_frame_r;
  wire user_clk;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED;

FDRE \AFTER_SCP_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(after_scp_c[0]),
        .Q(stage_1_after_scp_r[0]),
        .R(SR));
FDRE \AFTER_SCP_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(after_scp_c[1]),
        .Q(stage_1_after_scp_r[1]),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \COUNT[0]_i_1 
       (.I0(stage_1_data_v_r[1]),
        .I1(stage_1_data_v_r[0]),
        .O(O6[1]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \COUNT[1]_i_1 
       (.I0(stage_1_data_v_r[1]),
        .I1(stage_1_data_v_r[0]),
        .O(O6[0]));
LUT2 #(
    .INIT(4'h8)) 
     \DEFRAMED_DATA_V[0]_i_1 
       (.I0(in_frame_c[0]),
        .I1(O13[1]),
        .O(\n_0_DEFRAMED_DATA_V[0]_i_1 ));
LUT2 #(
    .INIT(4'h8)) 
     \DEFRAMED_DATA_V[1]_i_1 
       (.I0(in_frame_c[1]),
        .I1(O13[0]),
        .O(\n_0_DEFRAMED_DATA_V[1]_i_1 ));
FDRE \DEFRAMED_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_DEFRAMED_DATA_V[0]_i_1 ),
        .Q(stage_1_data_v_r[0]),
        .R(SR));
FDRE \DEFRAMED_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_DEFRAMED_DATA_V[1]_i_1 ),
        .Q(stage_1_data_v_r[1]),
        .R(SR));
FDRE \IN_FRAME_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_r),
        .Q(stage_1_in_frame_r[0]),
        .R(SR));
FDRE \IN_FRAME_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_c[0]),
        .Q(stage_1_in_frame_r[1]),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \MUX_SELECT[2]_i_1 
       (.I0(stage_1_data_v_r[1]),
        .I1(stage_1_data_v_r[0]),
        .O(O5));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   CARRY4 data_after_start_muxcy_0_CARRY4
       (.CI(1'b0),
        .CO({NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED[3:2],after_scp_c[1],after_scp_c[0]}),
        .CYINIT(1'b0),
        .DI({NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED[3:2],1'b1,1'b1}),
        .O(NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED[3:2],S1,S11_in}));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   CARRY4 in_frame_muxcy_0_CARRY4
       (.CI(1'b0),
        .CO({NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED[3:2],in_frame_c[1],in_frame_c[0]}),
        .CYINIT(in_frame_r),
        .DI({NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED[3:2],D[0],D[1]}),
        .O(NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED[3:2],I2,I1}));
FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(in_frame_c[1]),
        .Q(in_frame_r),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT4 #(
    .INIT(16'hF888)) 
     stage_2_end_after_start_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(Q[0]),
        .I2(stage_1_after_scp_r[0]),
        .I3(Q[1]),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT4 #(
    .INIT(16'h4F44)) 
     stage_2_end_before_start_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(Q[0]),
        .I2(stage_1_after_scp_r[0]),
        .I3(Q[1]),
        .O(O3));
LUT2 #(
    .INIT(4'h4)) 
     stage_2_frame_err_r_i_1
       (.I0(n_0_stage_2_frame_err_r_i_2),
        .I1(START_RX),
        .O(O1));
LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
     stage_2_frame_err_r_i_2
       (.I0(Q[1]),
        .I1(stage_1_in_frame_r[0]),
        .I2(I3[1]),
        .I3(Q[0]),
        .I4(stage_1_in_frame_r[1]),
        .I5(I3[0]),
        .O(n_0_stage_2_frame_err_r_i_2));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT4 #(
    .INIT(16'hF888)) 
     stage_2_start_with_data_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(stage_1_data_v_r[1]),
        .I2(stage_1_after_scp_r[0]),
        .I3(stage_1_data_v_r[0]),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_RX_LL_PDU_DATAPATH" *) 
module aurora_8b10b_0_aurora_8b10b_0_RX_LL_PDU_DATAPATH
   (rx_eof,
    frame_err,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    Q,
    m_axi_rx_tdata,
    I1,
    D,
    I2,
    S11_in,
    S1,
    user_clk,
    SR,
    I3,
    O12,
    O11,
    O10,
    O9,
    START_RX,
    O13,
    I4);
  output rx_eof;
  output frame_err;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  output [1:0]Q;
  output [0:31]m_axi_rx_tdata;
  input I1;
  input [1:0]D;
  input I2;
  input S11_in;
  input S1;
  input user_clk;
  input [0:0]SR;
  input I3;
  input [7:0]O12;
  input [7:0]O11;
  input [7:0]O10;
  input [7:0]O9;
  input START_RX;
  input [1:0]O13;
  input [1:0]I4;

  wire [1:0]D;
  wire EOF_N;
  wire FRAME_ERR_RESULT;
  wire FRAME_ERR_RESULT0;
  wire I1;
  wire I2;
  wire I3;
  wire [1:0]I4;
  wire [0:15]MUXED_DATA;
  wire [2:2]MUX_SELECT;
  wire [7:0]O10;
  wire [7:0]O11;
  wire [7:0]O12;
  wire [1:0]O13;
  wire [7:0]O9;
  wire [1:0]Q;
  wire RX_SRC_RDY_N;
  wire S1;
  wire S11_in;
  wire [0:0]SR;
  wire SRC_RDY_N;
  wire START_RX;
  wire [0:1]STORAGE_CE;
  wire [0:31]STORAGE_DATA;
  wire [4:9]STORAGE_SELECT;
  wire [0:1]ce_command_c;
  wire [0:1]count_c;
  wire end_storage_r0;
  wire frame_err;
  wire [0:31]m_axi_rx_tdata;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire \n_0_stage_1_data_r_reg[0]_srl3 ;
  wire \n_0_stage_1_data_r_reg[10]_srl3 ;
  wire \n_0_stage_1_data_r_reg[11]_srl3 ;
  wire \n_0_stage_1_data_r_reg[12]_srl3 ;
  wire \n_0_stage_1_data_r_reg[13]_srl3 ;
  wire \n_0_stage_1_data_r_reg[14]_srl3 ;
  wire \n_0_stage_1_data_r_reg[15]_srl3 ;
  wire \n_0_stage_1_data_r_reg[16]_srl3 ;
  wire \n_0_stage_1_data_r_reg[17]_srl3 ;
  wire \n_0_stage_1_data_r_reg[18]_srl3 ;
  wire \n_0_stage_1_data_r_reg[19]_srl3 ;
  wire \n_0_stage_1_data_r_reg[1]_srl3 ;
  wire \n_0_stage_1_data_r_reg[20]_srl3 ;
  wire \n_0_stage_1_data_r_reg[21]_srl3 ;
  wire \n_0_stage_1_data_r_reg[22]_srl3 ;
  wire \n_0_stage_1_data_r_reg[23]_srl3 ;
  wire \n_0_stage_1_data_r_reg[24]_srl3 ;
  wire \n_0_stage_1_data_r_reg[25]_srl3 ;
  wire \n_0_stage_1_data_r_reg[26]_srl3 ;
  wire \n_0_stage_1_data_r_reg[27]_srl3 ;
  wire \n_0_stage_1_data_r_reg[28]_srl3 ;
  wire \n_0_stage_1_data_r_reg[29]_srl3 ;
  wire \n_0_stage_1_data_r_reg[2]_srl3 ;
  wire \n_0_stage_1_data_r_reg[30]_srl3 ;
  wire \n_0_stage_1_data_r_reg[31]_srl3 ;
  wire \n_0_stage_1_data_r_reg[3]_srl3 ;
  wire \n_0_stage_1_data_r_reg[4]_srl3 ;
  wire \n_0_stage_1_data_r_reg[5]_srl3 ;
  wire \n_0_stage_1_data_r_reg[6]_srl3 ;
  wire \n_0_stage_1_data_r_reg[7]_srl3 ;
  wire \n_0_stage_1_data_r_reg[8]_srl3 ;
  wire \n_0_stage_1_data_r_reg[9]_srl3 ;
  wire n_0_stage_1_rx_ll_deframer_i;
  wire n_0_stage_2_frame_err_r_reg;
  wire n_0_stage_3_output_switch_control_i;
  wire n_16_stage_3_left_align_datapath_mux_i;
  wire n_17_stage_3_left_align_datapath_mux_i;
  wire n_18_stage_3_left_align_datapath_mux_i;
  wire n_19_stage_3_left_align_datapath_mux_i;
  wire n_1_sideband_output_i;
  wire n_1_stage_1_rx_ll_deframer_i;
  wire n_20_stage_3_left_align_datapath_mux_i;
  wire n_21_stage_3_left_align_datapath_mux_i;
  wire n_22_stage_3_left_align_datapath_mux_i;
  wire n_23_stage_3_left_align_datapath_mux_i;
  wire n_24_stage_3_left_align_datapath_mux_i;
  wire n_25_stage_3_left_align_datapath_mux_i;
  wire n_26_stage_3_left_align_datapath_mux_i;
  wire n_27_stage_3_left_align_datapath_mux_i;
  wire n_28_stage_3_left_align_datapath_mux_i;
  wire n_29_stage_3_left_align_datapath_mux_i;
  wire n_2_stage_1_rx_ll_deframer_i;
  wire n_30_stage_3_left_align_datapath_mux_i;
  wire n_31_stage_3_left_align_datapath_mux_i;
  wire n_32_stage_3_left_align_datapath_mux_i;
  wire n_33_stage_3_left_align_datapath_mux_i;
  wire n_34_stage_3_left_align_datapath_mux_i;
  wire n_35_stage_3_left_align_datapath_mux_i;
  wire n_36_stage_3_left_align_datapath_mux_i;
  wire n_37_stage_3_left_align_datapath_mux_i;
  wire n_38_stage_3_left_align_datapath_mux_i;
  wire n_39_stage_3_left_align_datapath_mux_i;
  wire n_3_stage_1_rx_ll_deframer_i;
  wire n_3_stage_2_valid_data_counter_i;
  wire n_3_stage_3_storage_count_control_i;
  wire n_40_stage_3_left_align_datapath_mux_i;
  wire n_41_stage_3_left_align_datapath_mux_i;
  wire n_42_stage_3_left_align_datapath_mux_i;
  wire n_43_stage_3_left_align_datapath_mux_i;
  wire n_44_stage_3_left_align_datapath_mux_i;
  wire n_45_stage_3_left_align_datapath_mux_i;
  wire n_46_stage_3_left_align_datapath_mux_i;
  wire n_47_stage_3_left_align_datapath_mux_i;
  wire n_4_stage_1_rx_ll_deframer_i;
  wire n_4_stage_3_storage_count_control_i;
  wire n_5_stage_2_valid_data_counter_i;
  wire n_5_stage_3_storage_count_control_i;
  wire n_6_sideband_output_i;
  wire n_7_sideband_output_i;
  wire rx_eof;
  wire [0:1]stage_1_ecp_r;
  wire stage_1_pad_r;
  wire [0:1]stage_1_scp_r;
  wire [0:31]stage_2_data_r;
  wire [0:1]stage_2_data_v_count_r;
  wire stage_2_end_after_start_r;
  wire stage_2_end_before_start_r;
  wire stage_2_pad_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire [0:1]stage_3_storage_count_r;
  wire [0:1]storage_count_c;
  wire user_clk;

FDRE FRAME_ERR_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(FRAME_ERR_RESULT),
        .Q(frame_err),
        .R(SR));
FDRE RX_EOF_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(EOF_N),
        .Q(rx_eof),
        .R(1'b0));
FDRE \RX_REM_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(n_6_sideband_output_i),
        .Q(Q[1]),
        .R(1'b0));
FDRE \RX_REM_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(n_7_sideband_output_i),
        .Q(Q[0]),
        .R(1'b0));
FDSE RX_SRC_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(SRC_RDY_N),
        .Q(RX_SRC_RDY_N),
        .S(SR));
LUT1 #(
    .INIT(2'h1)) 
     m_axi_rx_tlast_INST_0
       (.I0(rx_eof),
        .O(m_axi_rx_tlast));
LUT1 #(
    .INIT(2'h1)) 
     m_axi_rx_tvalid_INST_0
       (.I0(RX_SRC_RDY_N),
        .O(m_axi_rx_tvalid));
aurora_8b10b_0_aurora_8b10b_0_OUTPUT_MUX output_mux_i
       (.I1({MUXED_DATA[0],MUXED_DATA[1],MUXED_DATA[2],MUXED_DATA[3],MUXED_DATA[4],MUXED_DATA[5],MUXED_DATA[6],MUXED_DATA[7],MUXED_DATA[8],MUXED_DATA[9],MUXED_DATA[10],MUXED_DATA[11],MUXED_DATA[12],MUXED_DATA[13],MUXED_DATA[14],MUXED_DATA[15]}),
        .I2(n_0_stage_3_output_switch_control_i),
        .Q({STORAGE_DATA[0],STORAGE_DATA[1],STORAGE_DATA[2],STORAGE_DATA[3],STORAGE_DATA[4],STORAGE_DATA[5],STORAGE_DATA[6],STORAGE_DATA[7],STORAGE_DATA[8],STORAGE_DATA[9],STORAGE_DATA[10],STORAGE_DATA[11],STORAGE_DATA[12],STORAGE_DATA[13],STORAGE_DATA[14],STORAGE_DATA[15],STORAGE_DATA[16],STORAGE_DATA[17],STORAGE_DATA[18],STORAGE_DATA[19],STORAGE_DATA[20],STORAGE_DATA[21],STORAGE_DATA[22],STORAGE_DATA[23],STORAGE_DATA[24],STORAGE_DATA[25],STORAGE_DATA[26],STORAGE_DATA[27],STORAGE_DATA[28],STORAGE_DATA[29],STORAGE_DATA[30],STORAGE_DATA[31]}),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_SIDEBAND_OUTPUT sideband_output_i
       (.D(storage_count_c[1]),
        .EOF_N(EOF_N),
        .FRAME_ERR_RESULT(FRAME_ERR_RESULT),
        .FRAME_ERR_RESULT0(FRAME_ERR_RESULT0),
        .I1(n_4_stage_3_storage_count_control_i),
        .I2(n_0_stage_2_frame_err_r_reg),
        .I3(n_3_stage_2_valid_data_counter_i),
        .I4(stage_2_data_v_count_r[1]),
        .I5(n_5_stage_2_valid_data_counter_i),
        .O1({n_6_sideband_output_i,n_7_sideband_output_i}),
        .Q(stage_3_storage_count_r[1]),
        .SR(n_1_sideband_output_i),
        .SRC_RDY_N(SRC_RDY_N),
        .START_RX(START_RX),
        .end_storage_r0(end_storage_r0),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_pad_r(stage_2_pad_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .user_clk(user_clk));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[0]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[0]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O12[7]),
        .Q(\n_0_stage_1_data_r_reg[0]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[10]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[10]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O11[5]),
        .Q(\n_0_stage_1_data_r_reg[10]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[11]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[11]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O11[4]),
        .Q(\n_0_stage_1_data_r_reg[11]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[12]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[12]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O11[3]),
        .Q(\n_0_stage_1_data_r_reg[12]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[13]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[13]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O11[2]),
        .Q(\n_0_stage_1_data_r_reg[13]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[14]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[14]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O11[1]),
        .Q(\n_0_stage_1_data_r_reg[14]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[15]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[15]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O11[0]),
        .Q(\n_0_stage_1_data_r_reg[15]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[16]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[16]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O10[7]),
        .Q(\n_0_stage_1_data_r_reg[16]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[17]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[17]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O10[6]),
        .Q(\n_0_stage_1_data_r_reg[17]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[18]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[18]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O10[5]),
        .Q(\n_0_stage_1_data_r_reg[18]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[19]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[19]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O10[4]),
        .Q(\n_0_stage_1_data_r_reg[19]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[1]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[1]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O12[6]),
        .Q(\n_0_stage_1_data_r_reg[1]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[20]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[20]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O10[3]),
        .Q(\n_0_stage_1_data_r_reg[20]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[21]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[21]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O10[2]),
        .Q(\n_0_stage_1_data_r_reg[21]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[22]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[22]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O10[1]),
        .Q(\n_0_stage_1_data_r_reg[22]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[23]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[23]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O10[0]),
        .Q(\n_0_stage_1_data_r_reg[23]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[24]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[24]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O9[7]),
        .Q(\n_0_stage_1_data_r_reg[24]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[25]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[25]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O9[6]),
        .Q(\n_0_stage_1_data_r_reg[25]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[26]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[26]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O9[5]),
        .Q(\n_0_stage_1_data_r_reg[26]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[27]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[27]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O9[4]),
        .Q(\n_0_stage_1_data_r_reg[27]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[28]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[28]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O9[3]),
        .Q(\n_0_stage_1_data_r_reg[28]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[29]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[29]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O9[2]),
        .Q(\n_0_stage_1_data_r_reg[29]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[2]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[2]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O12[5]),
        .Q(\n_0_stage_1_data_r_reg[2]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[30]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[30]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O9[1]),
        .Q(\n_0_stage_1_data_r_reg[30]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[31]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[31]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O9[0]),
        .Q(\n_0_stage_1_data_r_reg[31]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[3]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O12[4]),
        .Q(\n_0_stage_1_data_r_reg[3]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[4]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[4]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O12[3]),
        .Q(\n_0_stage_1_data_r_reg[4]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[5]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[5]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O12[2]),
        .Q(\n_0_stage_1_data_r_reg[5]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[6]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[6]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O12[1]),
        .Q(\n_0_stage_1_data_r_reg[6]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[7]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[7]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O12[0]),
        .Q(\n_0_stage_1_data_r_reg[7]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[8]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[8]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O11[7]),
        .Q(\n_0_stage_1_data_r_reg[8]_srl3 ));
(* srl_bus_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "\inst/aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[9]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[9]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(user_clk),
        .D(O11[6]),
        .Q(\n_0_stage_1_data_r_reg[9]_srl3 ));
FDRE \stage_1_ecp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I4[1]),
        .Q(stage_1_ecp_r[0]),
        .R(1'b0));
FDRE \stage_1_ecp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I4[0]),
        .Q(stage_1_ecp_r[1]),
        .R(1'b0));
FDRE stage_1_pad_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(I3),
        .Q(stage_1_pad_r),
        .R(1'b0));
aurora_8b10b_0_aurora_8b10b_0_RX_LL_DEFRAMER stage_1_rx_ll_deframer_i
       (.D(D),
        .I1(I1),
        .I2(I2),
        .I3({stage_1_scp_r[0],stage_1_scp_r[1]}),
        .O1(n_0_stage_1_rx_ll_deframer_i),
        .O13(O13),
        .O2(n_1_stage_1_rx_ll_deframer_i),
        .O3(n_2_stage_1_rx_ll_deframer_i),
        .O4(n_3_stage_1_rx_ll_deframer_i),
        .O5(n_4_stage_1_rx_ll_deframer_i),
        .O6({count_c[0],count_c[1]}),
        .Q({stage_1_ecp_r[0],stage_1_ecp_r[1]}),
        .S1(S1),
        .S11_in(S11_in),
        .SR(SR),
        .START_RX(START_RX),
        .user_clk(user_clk));
FDRE \stage_1_scp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(stage_1_scp_r[0]),
        .R(1'b0));
FDRE \stage_1_scp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(stage_1_scp_r[1]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[0]_srl3 ),
        .Q(stage_2_data_r[0]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[10]_srl3 ),
        .Q(stage_2_data_r[10]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[11]_srl3 ),
        .Q(stage_2_data_r[11]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[12]_srl3 ),
        .Q(stage_2_data_r[12]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[13]_srl3 ),
        .Q(stage_2_data_r[13]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[14]_srl3 ),
        .Q(stage_2_data_r[14]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[15]_srl3 ),
        .Q(stage_2_data_r[15]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[16]_srl3 ),
        .Q(stage_2_data_r[16]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[17]_srl3 ),
        .Q(stage_2_data_r[17]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[18]_srl3 ),
        .Q(stage_2_data_r[18]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[19]_srl3 ),
        .Q(stage_2_data_r[19]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[1]_srl3 ),
        .Q(stage_2_data_r[1]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[20]_srl3 ),
        .Q(stage_2_data_r[20]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[21]_srl3 ),
        .Q(stage_2_data_r[21]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[22]_srl3 ),
        .Q(stage_2_data_r[22]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[23]_srl3 ),
        .Q(stage_2_data_r[23]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[24]_srl3 ),
        .Q(stage_2_data_r[24]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[25]_srl3 ),
        .Q(stage_2_data_r[25]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[26]_srl3 ),
        .Q(stage_2_data_r[26]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[27]_srl3 ),
        .Q(stage_2_data_r[27]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[28]_srl3 ),
        .Q(stage_2_data_r[28]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[29]_srl3 ),
        .Q(stage_2_data_r[29]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[2]_srl3 ),
        .Q(stage_2_data_r[2]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[30]_srl3 ),
        .Q(stage_2_data_r[30]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[31]_srl3 ),
        .Q(stage_2_data_r[31]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[3]_srl3 ),
        .Q(stage_2_data_r[3]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[4]_srl3 ),
        .Q(stage_2_data_r[4]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[5]_srl3 ),
        .Q(stage_2_data_r[5]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[6]_srl3 ),
        .Q(stage_2_data_r[6]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[7]_srl3 ),
        .Q(stage_2_data_r[7]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[8]_srl3 ),
        .Q(stage_2_data_r[8]),
        .R(1'b0));
FDRE \stage_2_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_stage_1_data_r_reg[9]_srl3 ),
        .Q(stage_2_data_r[9]),
        .R(1'b0));
FDRE stage_2_end_after_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_3_stage_1_rx_ll_deframer_i),
        .Q(stage_2_end_after_start_r),
        .R(SR));
FDRE stage_2_end_before_start_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_2_stage_1_rx_ll_deframer_i),
        .Q(stage_2_end_before_start_r),
        .R(SR));
FDRE stage_2_frame_err_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_stage_1_rx_ll_deframer_i),
        .Q(n_0_stage_2_frame_err_r_reg),
        .R(1'b0));
aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_CONTROL stage_2_left_align_control_i
       (.I1(n_4_stage_1_rx_ll_deframer_i),
        .MUX_SELECT(MUX_SELECT),
        .user_clk(user_clk));
FDRE stage_2_pad_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(stage_1_pad_r),
        .Q(stage_2_pad_r),
        .R(1'b0));
FDRE stage_2_start_with_data_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_1_stage_1_rx_ll_deframer_i),
        .Q(stage_2_start_with_data_r),
        .R(SR));
aurora_8b10b_0_aurora_8b10b_0_VALID_DATA_COUNTER stage_2_valid_data_counter_i
       (.D(ce_command_c[0]),
        .FRAME_ERR_RESULT0(FRAME_ERR_RESULT0),
        .I1({stage_3_storage_count_r[0],stage_3_storage_count_r[1]}),
        .I2(n_0_stage_2_frame_err_r_reg),
        .I3(n_5_stage_3_storage_count_control_i),
        .I4({count_c[0],count_c[1]}),
        .I5(n_5_stage_2_valid_data_counter_i),
        .O1(n_3_stage_2_valid_data_counter_i),
        .O2(storage_count_c[0]),
        .Q({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .SR(SR),
        .end_storage_r0(end_storage_r0),
        .stage_2_end_after_start_r(stage_2_end_after_start_r),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_LEFT_ALIGN_MUX stage_3_left_align_datapath_mux_i
       (.D({n_16_stage_3_left_align_datapath_mux_i,n_17_stage_3_left_align_datapath_mux_i,n_18_stage_3_left_align_datapath_mux_i,n_19_stage_3_left_align_datapath_mux_i,n_20_stage_3_left_align_datapath_mux_i,n_21_stage_3_left_align_datapath_mux_i,n_22_stage_3_left_align_datapath_mux_i,n_23_stage_3_left_align_datapath_mux_i,n_24_stage_3_left_align_datapath_mux_i,n_25_stage_3_left_align_datapath_mux_i,n_26_stage_3_left_align_datapath_mux_i,n_27_stage_3_left_align_datapath_mux_i,n_28_stage_3_left_align_datapath_mux_i,n_29_stage_3_left_align_datapath_mux_i,n_30_stage_3_left_align_datapath_mux_i,n_31_stage_3_left_align_datapath_mux_i,n_32_stage_3_left_align_datapath_mux_i,n_33_stage_3_left_align_datapath_mux_i,n_34_stage_3_left_align_datapath_mux_i,n_35_stage_3_left_align_datapath_mux_i,n_36_stage_3_left_align_datapath_mux_i,n_37_stage_3_left_align_datapath_mux_i,n_38_stage_3_left_align_datapath_mux_i,n_39_stage_3_left_align_datapath_mux_i,n_40_stage_3_left_align_datapath_mux_i,n_41_stage_3_left_align_datapath_mux_i,n_42_stage_3_left_align_datapath_mux_i,n_43_stage_3_left_align_datapath_mux_i,n_44_stage_3_left_align_datapath_mux_i,n_45_stage_3_left_align_datapath_mux_i,n_46_stage_3_left_align_datapath_mux_i,n_47_stage_3_left_align_datapath_mux_i}),
        .MUX_SELECT(MUX_SELECT),
        .Q({MUXED_DATA[0],MUXED_DATA[1],MUXED_DATA[2],MUXED_DATA[3],MUXED_DATA[4],MUXED_DATA[5],MUXED_DATA[6],MUXED_DATA[7],MUXED_DATA[8],MUXED_DATA[9],MUXED_DATA[10],MUXED_DATA[11],MUXED_DATA[12],MUXED_DATA[13],MUXED_DATA[14],MUXED_DATA[15]}),
        .STORAGE_SELECT({STORAGE_SELECT[4],STORAGE_SELECT[9]}),
        .stage_2_data_r(stage_2_data_r),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_OUTPUT_SWITCH_CONTROL stage_3_output_switch_control_i
       (.I1(n_3_stage_3_storage_count_control_i),
        .O1(n_0_stage_3_output_switch_control_i),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_STORAGE_CE_CONTROL stage_3_storage_ce_control_i
       (.D({ce_command_c[0],ce_command_c[1]}),
        .Q({STORAGE_CE[0],STORAGE_CE[1]}),
        .SR(SR),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_STORAGE_COUNT_CONTROL stage_3_storage_count_control_i
       (.D(ce_command_c[1]),
        .I1({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .I2({storage_count_c[0],storage_count_c[1]}),
        .O1(n_3_stage_3_storage_count_control_i),
        .O2(n_4_stage_3_storage_count_control_i),
        .O3(n_5_stage_3_storage_count_control_i),
        .Q({stage_3_storage_count_r[0],stage_3_storage_count_r[1]}),
        .SR(n_1_sideband_output_i),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_STORAGE_SWITCH_CONTROL stage_3_storage_switch_control_i
       (.I1({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .Q({stage_3_storage_count_r[0],stage_3_storage_count_r[1]}),
        .STORAGE_SELECT({STORAGE_SELECT[4],STORAGE_SELECT[9]}),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_STORAGE_MUX stage_4_storage_mux_i
       (.D({n_16_stage_3_left_align_datapath_mux_i,n_17_stage_3_left_align_datapath_mux_i,n_18_stage_3_left_align_datapath_mux_i,n_19_stage_3_left_align_datapath_mux_i,n_20_stage_3_left_align_datapath_mux_i,n_21_stage_3_left_align_datapath_mux_i,n_22_stage_3_left_align_datapath_mux_i,n_23_stage_3_left_align_datapath_mux_i,n_24_stage_3_left_align_datapath_mux_i,n_25_stage_3_left_align_datapath_mux_i,n_26_stage_3_left_align_datapath_mux_i,n_27_stage_3_left_align_datapath_mux_i,n_28_stage_3_left_align_datapath_mux_i,n_29_stage_3_left_align_datapath_mux_i,n_30_stage_3_left_align_datapath_mux_i,n_31_stage_3_left_align_datapath_mux_i,n_32_stage_3_left_align_datapath_mux_i,n_33_stage_3_left_align_datapath_mux_i,n_34_stage_3_left_align_datapath_mux_i,n_35_stage_3_left_align_datapath_mux_i,n_36_stage_3_left_align_datapath_mux_i,n_37_stage_3_left_align_datapath_mux_i,n_38_stage_3_left_align_datapath_mux_i,n_39_stage_3_left_align_datapath_mux_i,n_40_stage_3_left_align_datapath_mux_i,n_41_stage_3_left_align_datapath_mux_i,n_42_stage_3_left_align_datapath_mux_i,n_43_stage_3_left_align_datapath_mux_i,n_44_stage_3_left_align_datapath_mux_i,n_45_stage_3_left_align_datapath_mux_i,n_46_stage_3_left_align_datapath_mux_i,n_47_stage_3_left_align_datapath_mux_i}),
        .E({STORAGE_CE[0],STORAGE_CE[1]}),
        .Q({STORAGE_DATA[0],STORAGE_DATA[1],STORAGE_DATA[2],STORAGE_DATA[3],STORAGE_DATA[4],STORAGE_DATA[5],STORAGE_DATA[6],STORAGE_DATA[7],STORAGE_DATA[8],STORAGE_DATA[9],STORAGE_DATA[10],STORAGE_DATA[11],STORAGE_DATA[12],STORAGE_DATA[13],STORAGE_DATA[14],STORAGE_DATA[15],STORAGE_DATA[16],STORAGE_DATA[17],STORAGE_DATA[18],STORAGE_DATA[19],STORAGE_DATA[20],STORAGE_DATA[21],STORAGE_DATA[22],STORAGE_DATA[23],STORAGE_DATA[24],STORAGE_DATA[25],STORAGE_DATA[26],STORAGE_DATA[27],STORAGE_DATA[28],STORAGE_DATA[29],STORAGE_DATA[30],STORAGE_DATA[31]}),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_SIDEBAND_OUTPUT" *) 
module aurora_8b10b_0_aurora_8b10b_0_SIDEBAND_OUTPUT
   (SRC_RDY_N,
    SR,
    EOF_N,
    stage_3_end_storage_r,
    FRAME_ERR_RESULT,
    D,
    O1,
    user_clk,
    I1,
    end_storage_r0,
    FRAME_ERR_RESULT0,
    I2,
    START_RX,
    stage_2_pad_r,
    stage_2_end_before_start_r,
    stage_2_start_with_data_r,
    I3,
    Q,
    I4,
    I5);
  output SRC_RDY_N;
  output [0:0]SR;
  output EOF_N;
  output stage_3_end_storage_r;
  output FRAME_ERR_RESULT;
  output [0:0]D;
  output [1:0]O1;
  input user_clk;
  input I1;
  input end_storage_r0;
  input FRAME_ERR_RESULT0;
  input I2;
  input START_RX;
  input stage_2_pad_r;
  input stage_2_end_before_start_r;
  input stage_2_start_with_data_r;
  input I3;
  input [0:0]Q;
  input [0:0]I4;
  input [0:0]I5;

  wire [0:0]D;
  wire EOF_N;
  wire FRAME_ERR_RESULT;
  wire FRAME_ERR_RESULT0;
  wire I1;
  wire I2;
  wire I3;
  wire [0:0]I4;
  wire [0:0]I5;
  wire [1:0]O1;
  wire [0:0]Q;
  wire [0:0]SR;
  wire SRC_RDY_N;
  wire START_RX;
  wire end_storage_r0;
  wire \n_0_RX_REM[1]_i_1 ;
  wire n_0_SRC_RDY_N_i_2;
  wire n_0_pad_storage_r_i_1;
  wire n_0_pad_storage_r_reg;
  wire stage_2_end_before_start_r;
  wire stage_2_pad_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire user_clk;

FDRE EOF_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(I1),
        .Q(EOF_N),
        .R(1'b0));
FDRE FRAME_ERR_RESULT_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(FRAME_ERR_RESULT0),
        .Q(FRAME_ERR_RESULT),
        .R(1'b0));
LUT4 #(
    .INIT(16'h00FD)) 
     \RX_REM[1]_i_1 
       (.I0(stage_2_pad_r),
        .I1(stage_2_start_with_data_r),
        .I2(stage_3_end_storage_r),
        .I3(n_0_pad_storage_r_reg),
        .O(\n_0_RX_REM[1]_i_1 ));
FDRE \RX_REM_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I5),
        .Q(O1[1]),
        .R(1'b0));
FDRE \RX_REM_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_RX_REM[1]_i_1 ),
        .Q(O1[0]),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     SRC_RDY_N_i_1
       (.I0(I2),
        .I1(START_RX),
        .O(SR));
LUT4 #(
    .INIT(16'h04FF)) 
     SRC_RDY_N_i_2
       (.I0(stage_2_end_before_start_r),
        .I1(stage_2_start_with_data_r),
        .I2(stage_3_end_storage_r),
        .I3(I3),
        .O(n_0_SRC_RDY_N_i_2));
FDSE SRC_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_SRC_RDY_N_i_2),
        .Q(SRC_RDY_N),
        .S(SR));
FDRE end_storage_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(end_storage_r0),
        .Q(stage_3_end_storage_r),
        .R(SR));
LUT5 #(
    .INIT(32'h30203000)) 
     pad_storage_r_i_1
       (.I0(n_0_SRC_RDY_N_i_2),
        .I1(I2),
        .I2(START_RX),
        .I3(stage_2_pad_r),
        .I4(n_0_pad_storage_r_reg),
        .O(n_0_pad_storage_r_i_1));
FDRE pad_storage_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_pad_storage_r_i_1),
        .Q(n_0_pad_storage_r_reg),
        .R(1'b0));
LUT4 #(
    .INIT(16'hEF10)) 
     \storage_count_r[1]_i_1 
       (.I0(stage_2_start_with_data_r),
        .I1(stage_3_end_storage_r),
        .I2(Q),
        .I3(I4),
        .O(D));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_STORAGE_CE_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_STORAGE_CE_CONTROL
   (Q,
    SR,
    D,
    user_clk);
  output [1:0]Q;
  input [0:0]SR;
  input [1:0]D;
  input user_clk;

  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire user_clk;

FDRE \STORAGE_CE_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
FDRE \STORAGE_CE_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_STORAGE_COUNT_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_STORAGE_COUNT_CONTROL
   (D,
    Q,
    O1,
    O2,
    O3,
    I1,
    stage_2_start_with_data_r,
    stage_3_end_storage_r,
    stage_2_end_before_start_r,
    SR,
    I2,
    user_clk);
  output [0:0]D;
  output [1:0]Q;
  output O1;
  output O2;
  output O3;
  input [1:0]I1;
  input stage_2_start_with_data_r;
  input stage_3_end_storage_r;
  input stage_2_end_before_start_r;
  input [0:0]SR;
  input [1:0]I2;
  input user_clk;

  wire [0:0]D;
  wire [1:0]I1;
  wire [1:0]I2;
  wire O1;
  wire O2;
  wire O3;
  wire [1:0]Q;
  wire [0:0]SR;
  wire stage_2_end_before_start_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire user_clk;

(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT5 #(
    .INIT(32'h0000777F)) 
     EOF_N_i_1
       (.I0(stage_2_start_with_data_r),
        .I1(stage_2_end_before_start_r),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(stage_3_end_storage_r),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT2 #(
    .INIT(4'h1)) 
     FRAME_ERR_RESULT_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(O3));
LUT6 #(
    .INIT(64'h0000000000000444)) 
     \OUTPUT_SELECT[9]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(I1[0]),
        .I3(I1[1]),
        .I4(stage_2_start_with_data_r),
        .I5(stage_3_end_storage_r),
        .O(O1));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
     \STORAGE_CE[1]_i_1 
       (.I0(Q[0]),
        .I1(I1[0]),
        .I2(I1[1]),
        .I3(stage_2_start_with_data_r),
        .I4(stage_3_end_storage_r),
        .I5(Q[1]),
        .O(D));
FDRE \storage_count_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I2[1]),
        .Q(Q[1]),
        .R(SR));
FDRE \storage_count_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I2[0]),
        .Q(Q[0]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_STORAGE_MUX" *) 
module aurora_8b10b_0_aurora_8b10b_0_STORAGE_MUX
   (Q,
    E,
    D,
    user_clk);
  output [31:0]Q;
  input [1:0]E;
  input [31:0]D;
  input user_clk;

  wire [31:0]D;
  wire [1:0]E;
  wire [31:0]Q;
  wire user_clk;

FDRE \STORAGE_DATA_reg[0] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[31]),
        .Q(Q[31]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[10] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[21]),
        .Q(Q[21]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[11] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[20]),
        .Q(Q[20]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[12] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[19]),
        .Q(Q[19]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[13] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[18]),
        .Q(Q[18]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[14] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[17]),
        .Q(Q[17]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[15] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[16]),
        .Q(Q[16]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[16] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[15]),
        .Q(Q[15]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[17] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[14]),
        .Q(Q[14]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[18] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[13]),
        .Q(Q[13]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[19] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[12]),
        .Q(Q[12]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[1] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[30]),
        .Q(Q[30]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[20] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[11]),
        .Q(Q[11]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[21] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[10]),
        .Q(Q[10]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[22] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[9]),
        .Q(Q[9]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[23] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[8]),
        .Q(Q[8]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[24] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[7]),
        .Q(Q[7]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[25] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[6]),
        .Q(Q[6]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[26] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[5]),
        .Q(Q[5]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[27] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[28] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[29] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[2] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[29]),
        .Q(Q[29]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[30] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[31] 
       (.C(user_clk),
        .CE(E[0]),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[3] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[28]),
        .Q(Q[28]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[4] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[27]),
        .Q(Q[27]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[5] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[26]),
        .Q(Q[26]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[6] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[25]),
        .Q(Q[25]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[7] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[24]),
        .Q(Q[24]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[8] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[23]),
        .Q(Q[23]),
        .R(1'b0));
FDRE \STORAGE_DATA_reg[9] 
       (.C(user_clk),
        .CE(E[1]),
        .D(D[22]),
        .Q(Q[22]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_STORAGE_SWITCH_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_STORAGE_SWITCH_CONTROL
   (STORAGE_SELECT,
    Q,
    I1,
    stage_3_end_storage_r,
    stage_2_start_with_data_r,
    user_clk);
  output [1:0]STORAGE_SELECT;
  input [1:0]Q;
  input [1:0]I1;
  input stage_3_end_storage_r;
  input stage_2_start_with_data_r;
  input user_clk;

  wire [1:0]I1;
  wire [1:0]Q;
  wire [1:0]STORAGE_SELECT;
  wire \n_0_STORAGE_SELECT[4]_i_1 ;
  wire \n_0_STORAGE_SELECT[9]_i_1 ;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire user_clk;

LUT6 #(
    .INIT(64'h0000000000000040)) 
     \STORAGE_SELECT[4]_i_1 
       (.I0(I1[0]),
        .I1(I1[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(stage_3_end_storage_r),
        .I5(stage_2_start_with_data_r),
        .O(\n_0_STORAGE_SELECT[4]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFFF14)) 
     \STORAGE_SELECT[9]_i_1 
       (.I0(Q[0]),
        .I1(I1[0]),
        .I2(I1[1]),
        .I3(stage_3_end_storage_r),
        .I4(stage_2_start_with_data_r),
        .O(\n_0_STORAGE_SELECT[9]_i_1 ));
FDRE \STORAGE_SELECT_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_STORAGE_SELECT[4]_i_1 ),
        .Q(STORAGE_SELECT[1]),
        .R(1'b0));
FDRE \STORAGE_SELECT_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_STORAGE_SELECT[9]_i_1 ),
        .Q(STORAGE_SELECT[0]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_SYM_DEC_4BYTE" *) 
module aurora_8b10b_0_aurora_8b10b_0_SYM_DEC_4BYTE
   (RX_NEG,
    D,
    GOT_V,
    first_v_received_r,
    O1,
    O2,
    Q,
    O3,
    O4,
    counter3_r0,
    counter4_r0,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    S1,
    S11_in,
    user_clk,
    I2,
    I3,
    lane_up,
    gen_spa_i,
    ready_r,
    RXCHARISK,
    RXDATA,
    I1,
    I11,
    I12);
  output RX_NEG;
  output [0:0]D;
  output GOT_V;
  output first_v_received_r;
  output O1;
  output O2;
  output [1:0]Q;
  output [1:0]O3;
  output O4;
  output counter3_r0;
  output counter4_r0;
  output O5;
  output [0:0]O6;
  output O7;
  output [7:0]O8;
  output [7:0]O9;
  output [7:0]O10;
  output [7:0]O11;
  output [7:0]O12;
  output [1:0]O13;
  output S1;
  output S11_in;
  input user_clk;
  input I2;
  input I3;
  input lane_up;
  input gen_spa_i;
  input ready_r;
  input [3:0]RXCHARISK;
  input [31:0]RXDATA;
  input I1;
  input [7:0]I11;
  input [7:0]I12;

  wire [0:0]D;
  wire GOT_V;
  wire I1;
  wire [7:0]I11;
  wire [7:0]I12;
  wire I2;
  wire I3;
  wire O1;
  wire [7:0]O10;
  wire [7:0]O11;
  wire [7:0]O12;
  wire [1:0]O13;
  wire O2;
  wire [1:0]O3;
  wire O4;
  wire O5;
  wire [0:0]O6;
  wire O7;
  wire [7:0]O8;
  wire [7:0]O9;
  wire [1:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire RX_CC0;
  wire RX_ECP0;
  wire RX_NEG;
  wire RX_NEG0;
  wire [0:1]RX_PAD;
  wire RX_SCP0;
  wire RX_SP0;
  wire RX_SPA0;
  wire S1;
  wire S11_in;
  wire counter3_r0;
  wire counter4_r0;
  wire first_v_received_r;
  wire gen_spa_i;
  wire got_v_c;
  wire lane_up;
  wire n_0_GOT_V_i_2;
  wire n_0_RX_CC_i_2;
  wire n_0_RX_CC_i_3;
  wire \n_0_RX_ECP[1]_i_1 ;
  wire \n_0_RX_SCP[1]_i_1 ;
  wire n_0_RX_SPA_i_2;
  wire n_0_RX_SP_i_2;
  wire n_0_RX_SP_i_3;
  wire n_0_first_v_received_r_i_1;
  wire \n_0_left_align_select_r[0]_i_1 ;
  wire \n_0_left_align_select_r[1]_i_1 ;
  wire \n_0_previous_cycle_data_r_reg[16] ;
  wire \n_0_previous_cycle_data_r_reg[17] ;
  wire \n_0_previous_cycle_data_r_reg[18] ;
  wire \n_0_previous_cycle_data_r_reg[19] ;
  wire \n_0_previous_cycle_data_r_reg[20] ;
  wire \n_0_previous_cycle_data_r_reg[21] ;
  wire \n_0_previous_cycle_data_r_reg[22] ;
  wire \n_0_previous_cycle_data_r_reg[23] ;
  wire \n_0_rx_cc_r[3]_i_1 ;
  wire \n_0_rx_cc_r[5]_i_1 ;
  wire \n_0_rx_cc_r[7]_i_1 ;
  wire \n_0_rx_ecp_d_r[1]_i_1 ;
  wire \n_0_rx_ecp_d_r[3]_i_1 ;
  wire \n_0_rx_ecp_d_r[4]_i_1 ;
  wire \n_0_rx_ecp_d_r[5]_i_1 ;
  wire \n_0_rx_ecp_d_r[7]_i_1 ;
  wire \n_0_rx_pad_d_r[2]_i_1 ;
  wire \n_0_rx_pe_control_r_reg[0] ;
  wire \n_0_rx_pe_control_r_reg[1] ;
  wire \n_0_rx_pe_control_r_reg[2] ;
  wire \n_0_rx_pe_control_r_reg[3] ;
  wire \n_0_rx_scp_d_r[0]_i_1 ;
  wire \n_0_rx_scp_d_r[2]_i_1 ;
  wire \n_0_rx_scp_d_r[3]_i_1 ;
  wire \n_0_rx_scp_d_r[4]_i_1 ;
  wire \n_0_rx_scp_d_r[6]_i_1 ;
  wire \n_0_rx_scp_d_r[7]_i_1 ;
  wire \n_0_rx_spa_neg_d_r[1]_i_1 ;
  wire \n_0_rx_spa_r[0]_i_1 ;
  wire \n_0_rx_spa_r[1]_i_1 ;
  wire \n_0_rx_spa_r[3]_i_1 ;
  wire \n_0_rx_spa_r[4]_i_1 ;
  wire \n_0_rx_spa_r[5]_i_1 ;
  wire \n_0_rx_spa_r[6]_i_1 ;
  wire \n_0_rx_spa_r[7]_i_1 ;
  wire \n_0_rx_v_d_r[3]_i_1 ;
  wire \n_0_rx_v_d_r[4]_i_1 ;
  wire \n_0_rx_v_d_r[5]_i_1 ;
  wire \n_0_rx_v_d_r[6]_i_1 ;
  wire \n_0_rx_v_d_r[7]_i_1 ;
  wire \n_0_word_aligned_control_bits_r[0]_i_1 ;
  wire \n_0_word_aligned_control_bits_r[1]_i_1 ;
  wire \n_0_word_aligned_data_r[0]_i_1 ;
  wire \n_0_word_aligned_data_r[10]_i_1 ;
  wire \n_0_word_aligned_data_r[11]_i_1 ;
  wire \n_0_word_aligned_data_r[12]_i_1 ;
  wire \n_0_word_aligned_data_r[13]_i_1 ;
  wire \n_0_word_aligned_data_r[14]_i_1 ;
  wire \n_0_word_aligned_data_r[15]_i_1 ;
  wire \n_0_word_aligned_data_r[1]_i_1 ;
  wire \n_0_word_aligned_data_r[2]_i_1 ;
  wire \n_0_word_aligned_data_r[3]_i_1 ;
  wire \n_0_word_aligned_data_r[4]_i_1 ;
  wire \n_0_word_aligned_data_r[5]_i_1 ;
  wire \n_0_word_aligned_data_r[6]_i_1 ;
  wire \n_0_word_aligned_data_r[7]_i_1 ;
  wire \n_0_word_aligned_data_r[8]_i_1 ;
  wire \n_0_word_aligned_data_r[9]_i_1 ;
  wire [1:0]p_1_out;
  wire [7:0]p_2_in;
  wire [1:0]p_3_out;
  wire [5:0]p_8_out;
  wire [2:1]previous_cycle_control_r;
  wire ready_r;
  wire [1:7]rx_cc_r;
  wire rx_cc_r0;
  wire [0:7]rx_ecp_d_r;
  wire rx_ecp_d_r0;
  wire [0:2]rx_pad_d_r;
  wire rx_pad_d_r0;
  wire [0:7]rx_scp_d_r;
  wire rx_sp_i;
  wire [0:1]rx_sp_neg_d_r;
  wire [2:7]rx_sp_r;
  wire rx_sp_r111_in;
  wire rx_sp_r114_in;
  wire rx_spa_i;
  wire [0:1]rx_spa_neg_d_r;
  wire rx_spa_neg_d_r0;
  wire [0:7]rx_spa_r;
  wire rx_spa_r0;
  wire [2:7]rx_v_d_r;
  wire rx_v_d_r0;
  wire user_clk;
  wire [0:3]word_aligned_control_bits_r;

LUT4 #(
    .INIT(16'h8000)) 
     GOT_V_i_1
       (.I0(n_0_RX_SP_i_2),
        .I1(n_0_GOT_V_i_2),
        .I2(rx_v_d_r[7]),
        .I3(rx_spa_r[1]),
        .O(got_v_c));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     GOT_V_i_2
       (.I0(rx_spa_r[0]),
        .I1(rx_v_d_r[6]),
        .I2(rx_v_d_r[3]),
        .I3(rx_v_d_r[2]),
        .I4(rx_v_d_r[5]),
        .I5(rx_v_d_r[4]),
        .O(n_0_GOT_V_i_2));
FDRE GOT_V_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(got_v_c),
        .Q(GOT_V),
        .R(1'b0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_CC_i_1
       (.I0(n_0_RX_CC_i_2),
        .I1(n_0_RX_CC_i_3),
        .I2(\n_0_rx_pe_control_r_reg[3] ),
        .I3(\n_0_rx_pe_control_r_reg[2] ),
        .I4(rx_ecp_d_r[4]),
        .I5(rx_scp_d_r[6]),
        .O(RX_CC0));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'h8)) 
     RX_CC_i_2
       (.I0(\n_0_rx_pe_control_r_reg[0] ),
        .I1(\n_0_rx_pe_control_r_reg[1] ),
        .O(n_0_RX_CC_i_2));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_CC_i_3
       (.I0(rx_cc_r[1]),
        .I1(rx_cc_r[3]),
        .I2(rx_cc_r[7]),
        .I3(rx_scp_d_r[2]),
        .I4(rx_cc_r[5]),
        .I5(rx_ecp_d_r[0]),
        .O(n_0_RX_CC_i_3));
FDRE RX_CC_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_CC0),
        .Q(D),
        .R(1'b0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \RX_ECP[0]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[1] ),
        .I1(\n_0_rx_pe_control_r_reg[0] ),
        .I2(rx_scp_d_r[2]),
        .I3(rx_ecp_d_r[1]),
        .I4(rx_ecp_d_r[0]),
        .I5(rx_ecp_d_r[3]),
        .O(RX_ECP0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \RX_ECP[1]_i_1 
       (.I0(rx_scp_d_r[6]),
        .I1(rx_ecp_d_r[4]),
        .I2(\n_0_rx_pe_control_r_reg[2] ),
        .I3(\n_0_rx_pe_control_r_reg[3] ),
        .I4(rx_ecp_d_r[5]),
        .I5(rx_ecp_d_r[7]),
        .O(\n_0_RX_ECP[1]_i_1 ));
FDRE \RX_ECP_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_ECP0),
        .Q(Q[1]),
        .R(1'b0));
FDRE \RX_ECP_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_RX_ECP[1]_i_1 ),
        .Q(Q[0]),
        .R(1'b0));
LUT5 #(
    .INIT(32'h0000F888)) 
     RX_NEG_i_1
       (.I0(rx_spa_neg_d_r[0]),
        .I1(rx_spa_neg_d_r[1]),
        .I2(rx_sp_neg_d_r[0]),
        .I3(rx_sp_neg_d_r[1]),
        .I4(\n_0_rx_pe_control_r_reg[1] ),
        .O(RX_NEG0));
FDRE RX_NEG_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_NEG0),
        .Q(RX_NEG),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \RX_PAD[0]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[0] ),
        .I1(rx_pad_d_r[0]),
        .I2(rx_spa_r[3]),
        .I3(\n_0_rx_pe_control_r_reg[1] ),
        .O(p_3_out[1]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \RX_PAD[1]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[2] ),
        .I1(rx_pad_d_r[2]),
        .I2(rx_spa_r[7]),
        .I3(\n_0_rx_pe_control_r_reg[3] ),
        .O(p_3_out[0]));
FDRE \RX_PAD_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out[1]),
        .Q(RX_PAD[0]),
        .R(1'b0));
FDRE \RX_PAD_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_3_out[0]),
        .Q(RX_PAD[1]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \RX_PE_DATA_V[0]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[0] ),
        .O(p_1_out[1]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \RX_PE_DATA_V[1]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[2] ),
        .O(p_1_out[0]));
FDRE \RX_PE_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_out[1]),
        .Q(O13[1]),
        .R(1'b0));
FDRE \RX_PE_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_1_out[0]),
        .Q(O13[0]),
        .R(1'b0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \RX_SCP[0]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[1] ),
        .I1(\n_0_rx_pe_control_r_reg[0] ),
        .I2(rx_spa_r[1]),
        .I3(rx_scp_d_r[2]),
        .I4(rx_scp_d_r[3]),
        .I5(rx_scp_d_r[0]),
        .O(RX_SCP0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \RX_SCP[1]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[3] ),
        .I1(\n_0_rx_pe_control_r_reg[2] ),
        .I2(rx_spa_r[5]),
        .I3(rx_scp_d_r[6]),
        .I4(rx_scp_d_r[7]),
        .I5(rx_scp_d_r[4]),
        .O(\n_0_RX_SCP[1]_i_1 ));
FDRE \RX_SCP_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SCP0),
        .Q(O3[1]),
        .R(1'b0));
FDRE \RX_SCP_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_RX_SCP[1]_i_1 ),
        .Q(O3[0]),
        .R(1'b0));
LUT4 #(
    .INIT(16'h8000)) 
     RX_SPA_i_1
       (.I0(n_0_RX_SP_i_2),
        .I1(n_0_RX_SPA_i_2),
        .I2(rx_spa_r[4]),
        .I3(rx_spa_r[2]),
        .O(RX_SPA0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_SPA_i_2
       (.I0(rx_spa_r[7]),
        .I1(rx_spa_r[3]),
        .I2(rx_spa_r[1]),
        .I3(rx_spa_r[0]),
        .I4(rx_spa_r[5]),
        .I5(rx_spa_r[6]),
        .O(n_0_RX_SPA_i_2));
FDRE RX_SPA_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SPA0),
        .Q(rx_spa_i),
        .R(1'b0));
LUT4 #(
    .INIT(16'h8000)) 
     RX_SP_i_1
       (.I0(n_0_RX_SP_i_2),
        .I1(n_0_RX_SP_i_3),
        .I2(rx_sp_r[4]),
        .I3(rx_sp_r[6]),
        .O(RX_SP0));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     RX_SP_i_2
       (.I0(\n_0_rx_pe_control_r_reg[2] ),
        .I1(\n_0_rx_pe_control_r_reg[0] ),
        .I2(\n_0_rx_pe_control_r_reg[1] ),
        .I3(\n_0_rx_pe_control_r_reg[3] ),
        .O(n_0_RX_SP_i_2));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_SP_i_3
       (.I0(rx_sp_r[5]),
        .I1(rx_sp_r[7]),
        .I2(rx_spa_r[1]),
        .I3(rx_spa_r[0]),
        .I4(rx_sp_r[2]),
        .I5(rx_sp_r[3]),
        .O(n_0_RX_SP_i_3));
FDRE RX_SP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(RX_SP0),
        .Q(rx_sp_i),
        .R(1'b0));
LUT2 #(
    .INIT(4'hB)) 
     \counter3_r_reg[2]_srl3_i_1 
       (.I0(rx_spa_i),
        .I1(gen_spa_i),
        .O(counter3_r0));
LUT2 #(
    .INIT(4'hB)) 
     \counter4_r_reg[14]_srl15_i_1 
       (.I0(rx_sp_i),
        .I1(ready_r),
        .O(counter4_r0));
LUT1 #(
    .INIT(2'h1)) 
     data_after_start_muxcy_0_i_1
       (.I0(O3[1]),
        .O(S11_in));
LUT1 #(
    .INIT(2'h1)) 
     data_after_start_muxcy_1_i_1
       (.I0(O3[0]),
        .O(S1));
LUT6 #(
    .INIT(64'hFFFF000080000000)) 
     first_v_received_r_i_1
       (.I0(n_0_RX_SP_i_2),
        .I1(n_0_GOT_V_i_2),
        .I2(rx_v_d_r[7]),
        .I3(rx_spa_r[1]),
        .I4(lane_up),
        .I5(first_v_received_r),
        .O(n_0_first_v_received_r_i_1));
FDRE #(
    .INIT(1'b0)) 
     first_v_received_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_first_v_received_r_i_1),
        .Q(first_v_received_r),
        .R(1'b0));
LUT2 #(
    .INIT(4'h1)) 
     in_frame_muxcy_0_i_1
       (.I0(Q[1]),
        .I1(O3[1]),
        .O(O4));
LUT2 #(
    .INIT(4'h1)) 
     in_frame_muxcy_1_i_1
       (.I0(Q[0]),
        .I1(O3[0]),
        .O(O2));
LUT6 #(
    .INIT(64'hFFFFFAFB10114010)) 
     \left_align_select_r[0]_i_1 
       (.I0(I1),
        .I1(RXCHARISK[0]),
        .I2(RXCHARISK[2]),
        .I3(RXCHARISK[1]),
        .I4(RXCHARISK[3]),
        .I5(O7),
        .O(\n_0_left_align_select_r[0]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFBFEB10110500)) 
     \left_align_select_r[1]_i_1 
       (.I0(I1),
        .I1(RXCHARISK[0]),
        .I2(RXCHARISK[2]),
        .I3(RXCHARISK[1]),
        .I4(RXCHARISK[3]),
        .I5(O5),
        .O(\n_0_left_align_select_r[1]_i_1 ));
FDRE \left_align_select_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_left_align_select_r[0]_i_1 ),
        .Q(O7),
        .R(1'b0));
FDRE \left_align_select_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_left_align_select_r[1]_i_1 ),
        .Q(O5),
        .R(1'b0));
FDRE \previous_cycle_control_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[3]),
        .Q(O6),
        .R(1'b0));
FDRE \previous_cycle_control_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[2]),
        .Q(previous_cycle_control_r[1]),
        .R(1'b0));
FDRE \previous_cycle_control_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXCHARISK[1]),
        .Q(previous_cycle_control_r[2]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[24]),
        .Q(O8[0]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[18]),
        .Q(p_2_in[2]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[19]),
        .Q(p_2_in[3]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[20]),
        .Q(p_2_in[4]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[21]),
        .Q(p_2_in[5]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[22]),
        .Q(p_2_in[6]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[23]),
        .Q(p_2_in[7]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[8]),
        .Q(\n_0_previous_cycle_data_r_reg[16] ),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[9]),
        .Q(\n_0_previous_cycle_data_r_reg[17] ),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[10]),
        .Q(\n_0_previous_cycle_data_r_reg[18] ),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[11]),
        .Q(\n_0_previous_cycle_data_r_reg[19] ),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[25]),
        .Q(O8[1]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[12]),
        .Q(\n_0_previous_cycle_data_r_reg[20] ),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[13]),
        .Q(\n_0_previous_cycle_data_r_reg[21] ),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[14]),
        .Q(\n_0_previous_cycle_data_r_reg[22] ),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[15]),
        .Q(\n_0_previous_cycle_data_r_reg[23] ),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[26]),
        .Q(O8[2]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[27]),
        .Q(O8[3]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[28]),
        .Q(O8[4]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[29]),
        .Q(O8[5]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[30]),
        .Q(O8[6]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[31]),
        .Q(O8[7]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[16]),
        .Q(p_2_in[0]),
        .R(1'b0));
FDRE \previous_cycle_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(RXDATA[17]),
        .Q(p_2_in[1]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_cc_r[1]_i_1 
       (.I0(O12[3]),
        .I1(O12[2]),
        .I2(O12[1]),
        .I3(O12[0]),
        .O(rx_cc_r0));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_cc_r[3]_i_1 
       (.I0(O11[3]),
        .I1(O11[2]),
        .I2(O11[1]),
        .I3(O11[0]),
        .O(\n_0_rx_cc_r[3]_i_1 ));
LUT4 #(
    .INIT(16'h4000)) 
     \rx_cc_r[5]_i_1 
       (.I0(O10[3]),
        .I1(O10[2]),
        .I2(O10[1]),
        .I3(O10[0]),
        .O(\n_0_rx_cc_r[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_cc_r[7]_i_1 
       (.I0(O9[3]),
        .I1(O9[2]),
        .I2(O9[1]),
        .I3(O9[0]),
        .O(\n_0_rx_cc_r[7]_i_1 ));
FDRE \rx_cc_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_r0),
        .Q(rx_cc_r[1]),
        .R(1'b0));
FDRE \rx_cc_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_cc_r[3]_i_1 ),
        .Q(rx_cc_r[3]),
        .R(1'b0));
FDRE \rx_cc_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_cc_r[5]_i_1 ),
        .Q(rx_cc_r[5]),
        .R(1'b0));
FDRE \rx_cc_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_cc_r[7]_i_1 ),
        .Q(rx_cc_r[7]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \rx_ecp_d_r[0]_i_1 
       (.I0(O12[5]),
        .I1(O12[4]),
        .I2(O12[6]),
        .I3(O12[7]),
        .O(rx_ecp_d_r0));
LUT4 #(
    .INIT(16'h4000)) 
     \rx_ecp_d_r[1]_i_1 
       (.I0(O12[1]),
        .I1(O12[2]),
        .I2(O12[3]),
        .I3(O12[0]),
        .O(\n_0_rx_ecp_d_r[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_ecp_d_r[3]_i_1 
       (.I0(O11[0]),
        .I1(O11[2]),
        .I2(O11[3]),
        .I3(O11[1]),
        .O(\n_0_rx_ecp_d_r[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \rx_ecp_d_r[4]_i_1 
       (.I0(O10[5]),
        .I1(O10[4]),
        .I2(O10[6]),
        .I3(O10[7]),
        .O(\n_0_rx_ecp_d_r[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_ecp_d_r[5]_i_1 
       (.I0(O10[1]),
        .I1(O10[2]),
        .I2(O10[3]),
        .I3(O10[0]),
        .O(\n_0_rx_ecp_d_r[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_ecp_d_r[7]_i_1 
       (.I0(O9[0]),
        .I1(O9[2]),
        .I2(O9[3]),
        .I3(O9[1]),
        .O(\n_0_rx_ecp_d_r[7]_i_1 ));
FDRE \rx_ecp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_ecp_d_r0),
        .Q(rx_ecp_d_r[0]),
        .R(1'b0));
FDRE \rx_ecp_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_ecp_d_r[1]_i_1 ),
        .Q(rx_ecp_d_r[1]),
        .R(1'b0));
FDRE \rx_ecp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_ecp_d_r[3]_i_1 ),
        .Q(rx_ecp_d_r[3]),
        .R(1'b0));
FDRE \rx_ecp_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_ecp_d_r[4]_i_1 ),
        .Q(rx_ecp_d_r[4]),
        .R(1'b0));
FDRE \rx_ecp_d_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_ecp_d_r[5]_i_1 ),
        .Q(rx_ecp_d_r[5]),
        .R(1'b0));
FDRE \rx_ecp_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_ecp_d_r[7]_i_1 ),
        .Q(rx_ecp_d_r[7]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_pad_d_r[0]_i_1 
       (.I0(O11[6]),
        .I1(O11[5]),
        .I2(O11[7]),
        .I3(O11[4]),
        .O(rx_pad_d_r0));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_pad_d_r[2]_i_1 
       (.I0(O9[6]),
        .I1(O9[5]),
        .I2(O9[7]),
        .I3(O9[4]),
        .O(\n_0_rx_pad_d_r[2]_i_1 ));
FDRE \rx_pad_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_pad_d_r0),
        .Q(rx_pad_d_r[0]),
        .R(1'b0));
FDRE \rx_pad_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_pad_d_r[2]_i_1 ),
        .Q(rx_pad_d_r[2]),
        .R(1'b0));
FDRE \rx_pe_control_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[0]),
        .Q(\n_0_rx_pe_control_r_reg[0] ),
        .R(1'b0));
FDRE \rx_pe_control_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[1]),
        .Q(\n_0_rx_pe_control_r_reg[1] ),
        .R(1'b0));
FDRE \rx_pe_control_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[2]),
        .Q(\n_0_rx_pe_control_r_reg[2] ),
        .R(1'b0));
FDRE \rx_pe_control_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(word_aligned_control_bits_r[3]),
        .Q(\n_0_rx_pe_control_r_reg[3] ),
        .R(1'b0));
LUT4 #(
    .INIT(16'h1000)) 
     \rx_scp_d_r[0]_i_1 
       (.I0(O12[7]),
        .I1(O12[5]),
        .I2(O12[6]),
        .I3(O12[4]),
        .O(\n_0_rx_scp_d_r[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \rx_scp_d_r[2]_i_1 
       (.I0(O11[5]),
        .I1(O11[4]),
        .I2(O11[6]),
        .I3(O11[7]),
        .O(\n_0_rx_scp_d_r[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_scp_d_r[3]_i_1 
       (.I0(O11[2]),
        .I1(O11[3]),
        .I2(O11[1]),
        .I3(O11[0]),
        .O(\n_0_rx_scp_d_r[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_scp_d_r[4]_i_1 
       (.I0(O10[7]),
        .I1(O10[5]),
        .I2(O10[6]),
        .I3(O10[4]),
        .O(\n_0_rx_scp_d_r[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \rx_scp_d_r[6]_i_1 
       (.I0(O9[5]),
        .I1(O9[4]),
        .I2(O9[6]),
        .I3(O9[7]),
        .O(\n_0_rx_scp_d_r[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_scp_d_r[7]_i_1 
       (.I0(O9[2]),
        .I1(O9[3]),
        .I2(O9[1]),
        .I3(O9[0]),
        .O(\n_0_rx_scp_d_r[7]_i_1 ));
FDRE \rx_scp_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_scp_d_r[0]_i_1 ),
        .Q(rx_scp_d_r[0]),
        .R(1'b0));
FDRE \rx_scp_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_scp_d_r[2]_i_1 ),
        .Q(rx_scp_d_r[2]),
        .R(1'b0));
FDRE \rx_scp_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_scp_d_r[3]_i_1 ),
        .Q(rx_scp_d_r[3]),
        .R(1'b0));
FDRE \rx_scp_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_scp_d_r[4]_i_1 ),
        .Q(rx_scp_d_r[4]),
        .R(1'b0));
FDRE \rx_scp_d_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_scp_d_r[6]_i_1 ),
        .Q(rx_scp_d_r[6]),
        .R(1'b0));
FDRE \rx_scp_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_scp_d_r[7]_i_1 ),
        .Q(rx_scp_d_r[7]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_sp_neg_d_r[0]_i_1 
       (.I0(O11[6]),
        .I1(O11[7]),
        .I2(O11[5]),
        .I3(O11[4]),
        .O(rx_sp_r114_in));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_sp_neg_d_r[1]_i_1 
       (.I0(O11[3]),
        .I1(O11[1]),
        .I2(O11[2]),
        .I3(O11[0]),
        .O(rx_sp_r111_in));
FDRE \rx_sp_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_r114_in),
        .Q(rx_sp_neg_d_r[0]),
        .R(1'b0));
FDRE \rx_sp_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_sp_r111_in),
        .Q(rx_sp_neg_d_r[1]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT4 #(
    .INIT(16'h2004)) 
     \rx_sp_r[2]_i_1 
       (.I0(O11[5]),
        .I1(O11[6]),
        .I2(O11[4]),
        .I3(O11[7]),
        .O(p_8_out[5]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h1008)) 
     \rx_sp_r[3]_i_1 
       (.I0(O11[3]),
        .I1(O11[1]),
        .I2(O11[2]),
        .I3(O11[0]),
        .O(p_8_out[4]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT4 #(
    .INIT(16'h0810)) 
     \rx_sp_r[4]_i_1 
       (.I0(O10[7]),
        .I1(O10[5]),
        .I2(O10[6]),
        .I3(O10[4]),
        .O(p_8_out[3]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT4 #(
    .INIT(16'h0420)) 
     \rx_sp_r[5]_i_1 
       (.I0(O10[3]),
        .I1(O10[2]),
        .I2(O10[1]),
        .I3(O10[0]),
        .O(p_8_out[2]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT4 #(
    .INIT(16'h0810)) 
     \rx_sp_r[6]_i_1 
       (.I0(O9[7]),
        .I1(O9[5]),
        .I2(O9[6]),
        .I3(O9[4]),
        .O(p_8_out[1]));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'h0420)) 
     \rx_sp_r[7]_i_1 
       (.I0(O9[3]),
        .I1(O9[2]),
        .I2(O9[1]),
        .I3(O9[0]),
        .O(p_8_out[0]));
FDRE \rx_sp_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[5]),
        .Q(rx_sp_r[2]),
        .R(1'b0));
FDRE \rx_sp_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[4]),
        .Q(rx_sp_r[3]),
        .R(1'b0));
FDRE \rx_sp_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[3]),
        .Q(rx_sp_r[4]),
        .R(1'b0));
FDRE \rx_sp_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[2]),
        .Q(rx_sp_r[5]),
        .R(1'b0));
FDRE \rx_sp_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[1]),
        .Q(rx_sp_r[6]),
        .R(1'b0));
FDRE \rx_sp_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(p_8_out[0]),
        .Q(rx_sp_r[7]),
        .R(1'b0));
LUT4 #(
    .INIT(16'h4000)) 
     \rx_spa_neg_d_r[0]_i_1 
       (.I0(O11[5]),
        .I1(O11[6]),
        .I2(O11[7]),
        .I3(O11[4]),
        .O(rx_spa_neg_d_r0));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_spa_neg_d_r[1]_i_1 
       (.I0(O11[2]),
        .I1(O11[3]),
        .I2(O11[1]),
        .I3(O11[0]),
        .O(\n_0_rx_spa_neg_d_r[1]_i_1 ));
FDRE \rx_spa_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_neg_d_r0),
        .Q(rx_spa_neg_d_r[0]),
        .R(1'b0));
FDRE \rx_spa_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_spa_neg_d_r[1]_i_1 ),
        .Q(rx_spa_neg_d_r[1]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_spa_r[0]_i_1 
       (.I0(O12[6]),
        .I1(O12[7]),
        .I2(O12[5]),
        .I3(O12[4]),
        .O(\n_0_rx_spa_r[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_spa_r[1]_i_1 
       (.I0(O12[1]),
        .I1(O12[0]),
        .I2(O12[2]),
        .I3(O12[3]),
        .O(\n_0_rx_spa_r[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \rx_spa_r[2]_i_1 
       (.I0(O11[6]),
        .I1(O11[7]),
        .I2(O11[5]),
        .I3(O11[4]),
        .O(rx_spa_r0));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_spa_r[3]_i_1 
       (.I0(O11[1]),
        .I1(O11[0]),
        .I2(O11[2]),
        .I3(O11[3]),
        .O(\n_0_rx_spa_r[3]_i_1 ));
LUT4 #(
    .INIT(16'h0010)) 
     \rx_spa_r[4]_i_1 
       (.I0(O10[6]),
        .I1(O10[7]),
        .I2(O10[5]),
        .I3(O10[4]),
        .O(\n_0_rx_spa_r[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_spa_r[5]_i_1 
       (.I0(O10[1]),
        .I1(O10[0]),
        .I2(O10[2]),
        .I3(O10[3]),
        .O(\n_0_rx_spa_r[5]_i_1 ));
LUT4 #(
    .INIT(16'h0010)) 
     \rx_spa_r[6]_i_1 
       (.I0(O9[6]),
        .I1(O9[7]),
        .I2(O9[5]),
        .I3(O9[4]),
        .O(\n_0_rx_spa_r[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_spa_r[7]_i_1 
       (.I0(O9[1]),
        .I1(O9[0]),
        .I2(O9[2]),
        .I3(O9[3]),
        .O(\n_0_rx_spa_r[7]_i_1 ));
FDRE \rx_spa_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_spa_r[0]_i_1 ),
        .Q(rx_spa_r[0]),
        .R(1'b0));
FDRE \rx_spa_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_spa_r[1]_i_1 ),
        .Q(rx_spa_r[1]),
        .R(1'b0));
FDRE \rx_spa_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_spa_r0),
        .Q(rx_spa_r[2]),
        .R(1'b0));
FDRE \rx_spa_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_spa_r[3]_i_1 ),
        .Q(rx_spa_r[3]),
        .R(1'b0));
FDRE \rx_spa_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_spa_r[4]_i_1 ),
        .Q(rx_spa_r[4]),
        .R(1'b0));
FDRE \rx_spa_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_spa_r[5]_i_1 ),
        .Q(rx_spa_r[5]),
        .R(1'b0));
FDRE \rx_spa_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_spa_r[6]_i_1 ),
        .Q(rx_spa_r[6]),
        .R(1'b0));
FDRE \rx_spa_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_spa_r[7]_i_1 ),
        .Q(rx_spa_r[7]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_v_d_r[2]_i_1 
       (.I0(O11[4]),
        .I1(O11[6]),
        .I2(O11[7]),
        .I3(O11[5]),
        .O(rx_v_d_r0));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \rx_v_d_r[3]_i_1 
       (.I0(O11[2]),
        .I1(O11[1]),
        .I2(O11[3]),
        .I3(O11[0]),
        .O(\n_0_rx_v_d_r[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_v_d_r[4]_i_1 
       (.I0(O10[4]),
        .I1(O10[6]),
        .I2(O10[7]),
        .I3(O10[5]),
        .O(\n_0_rx_v_d_r[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \rx_v_d_r[5]_i_1 
       (.I0(O10[2]),
        .I1(O10[1]),
        .I2(O10[3]),
        .I3(O10[0]),
        .O(\n_0_rx_v_d_r[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_v_d_r[6]_i_1 
       (.I0(O9[4]),
        .I1(O9[6]),
        .I2(O9[7]),
        .I3(O9[5]),
        .O(\n_0_rx_v_d_r[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \rx_v_d_r[7]_i_1 
       (.I0(O9[2]),
        .I1(O9[1]),
        .I2(O9[3]),
        .I3(O9[0]),
        .O(\n_0_rx_v_d_r[7]_i_1 ));
FDRE \rx_v_d_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_v_d_r0),
        .Q(rx_v_d_r[2]),
        .R(1'b0));
FDRE \rx_v_d_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_v_d_r[3]_i_1 ),
        .Q(rx_v_d_r[3]),
        .R(1'b0));
FDRE \rx_v_d_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_v_d_r[4]_i_1 ),
        .Q(rx_v_d_r[4]),
        .R(1'b0));
FDRE \rx_v_d_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_v_d_r[5]_i_1 ),
        .Q(rx_v_d_r[5]),
        .R(1'b0));
FDRE \rx_v_d_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_v_d_r[6]_i_1 ),
        .Q(rx_v_d_r[6]),
        .R(1'b0));
FDRE \rx_v_d_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_rx_v_d_r[7]_i_1 ),
        .Q(rx_v_d_r[7]),
        .R(1'b0));
LUT2 #(
    .INIT(4'hE)) 
     stage_1_pad_r_i_1
       (.I0(RX_PAD[0]),
        .I1(RX_PAD[1]),
        .O(O1));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_control_bits_r[0]_i_1 
       (.I0(O6),
        .I1(previous_cycle_control_r[2]),
        .I2(O5),
        .I3(previous_cycle_control_r[1]),
        .I4(O7),
        .I5(RXCHARISK[0]),
        .O(\n_0_word_aligned_control_bits_r[0]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_control_bits_r[1]_i_1 
       (.I0(RXCHARISK[0]),
        .I1(previous_cycle_control_r[1]),
        .I2(O5),
        .I3(O6),
        .I4(O7),
        .I5(RXCHARISK[1]),
        .O(\n_0_word_aligned_control_bits_r[1]_i_1 ));
FDRE \word_aligned_control_bits_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_control_bits_r[0]_i_1 ),
        .Q(word_aligned_control_bits_r[0]),
        .R(1'b0));
FDRE \word_aligned_control_bits_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_control_bits_r[1]_i_1 ),
        .Q(word_aligned_control_bits_r[1]),
        .R(1'b0));
FDRE \word_aligned_control_bits_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I3),
        .Q(word_aligned_control_bits_r[2]),
        .R(1'b0));
FDRE \word_aligned_control_bits_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I2),
        .Q(word_aligned_control_bits_r[3]),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[0]_i_1 
       (.I0(O8[7]),
        .I1(\n_0_previous_cycle_data_r_reg[23] ),
        .I2(O5),
        .I3(p_2_in[7]),
        .I4(O7),
        .I5(RXDATA[7]),
        .O(\n_0_word_aligned_data_r[0]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[10]_i_1 
       (.I0(RXDATA[5]),
        .I1(p_2_in[5]),
        .I2(O5),
        .I3(O8[5]),
        .I4(O7),
        .I5(RXDATA[13]),
        .O(\n_0_word_aligned_data_r[10]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[11]_i_1 
       (.I0(RXDATA[4]),
        .I1(p_2_in[4]),
        .I2(O5),
        .I3(O8[4]),
        .I4(O7),
        .I5(RXDATA[12]),
        .O(\n_0_word_aligned_data_r[11]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[12]_i_1 
       (.I0(RXDATA[3]),
        .I1(p_2_in[3]),
        .I2(O5),
        .I3(O8[3]),
        .I4(O7),
        .I5(RXDATA[11]),
        .O(\n_0_word_aligned_data_r[12]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[13]_i_1 
       (.I0(RXDATA[2]),
        .I1(p_2_in[2]),
        .I2(O5),
        .I3(O8[2]),
        .I4(O7),
        .I5(RXDATA[10]),
        .O(\n_0_word_aligned_data_r[13]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[14]_i_1 
       (.I0(RXDATA[1]),
        .I1(p_2_in[1]),
        .I2(O5),
        .I3(O8[1]),
        .I4(O7),
        .I5(RXDATA[9]),
        .O(\n_0_word_aligned_data_r[14]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[15]_i_1 
       (.I0(RXDATA[0]),
        .I1(p_2_in[0]),
        .I2(O5),
        .I3(O8[0]),
        .I4(O7),
        .I5(RXDATA[8]),
        .O(\n_0_word_aligned_data_r[15]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[1]_i_1 
       (.I0(O8[6]),
        .I1(\n_0_previous_cycle_data_r_reg[22] ),
        .I2(O5),
        .I3(p_2_in[6]),
        .I4(O7),
        .I5(RXDATA[6]),
        .O(\n_0_word_aligned_data_r[1]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[2]_i_1 
       (.I0(O8[5]),
        .I1(\n_0_previous_cycle_data_r_reg[21] ),
        .I2(O5),
        .I3(p_2_in[5]),
        .I4(O7),
        .I5(RXDATA[5]),
        .O(\n_0_word_aligned_data_r[2]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[3]_i_1 
       (.I0(O8[4]),
        .I1(\n_0_previous_cycle_data_r_reg[20] ),
        .I2(O5),
        .I3(p_2_in[4]),
        .I4(O7),
        .I5(RXDATA[4]),
        .O(\n_0_word_aligned_data_r[3]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[4]_i_1 
       (.I0(O8[3]),
        .I1(\n_0_previous_cycle_data_r_reg[19] ),
        .I2(O5),
        .I3(p_2_in[3]),
        .I4(O7),
        .I5(RXDATA[3]),
        .O(\n_0_word_aligned_data_r[4]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[5]_i_1 
       (.I0(O8[2]),
        .I1(\n_0_previous_cycle_data_r_reg[18] ),
        .I2(O5),
        .I3(p_2_in[2]),
        .I4(O7),
        .I5(RXDATA[2]),
        .O(\n_0_word_aligned_data_r[5]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[6]_i_1 
       (.I0(O8[1]),
        .I1(\n_0_previous_cycle_data_r_reg[17] ),
        .I2(O5),
        .I3(p_2_in[1]),
        .I4(O7),
        .I5(RXDATA[1]),
        .O(\n_0_word_aligned_data_r[6]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[7]_i_1 
       (.I0(O8[0]),
        .I1(\n_0_previous_cycle_data_r_reg[16] ),
        .I2(O5),
        .I3(p_2_in[0]),
        .I4(O7),
        .I5(RXDATA[0]),
        .O(\n_0_word_aligned_data_r[7]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[8]_i_1 
       (.I0(RXDATA[7]),
        .I1(p_2_in[7]),
        .I2(O5),
        .I3(O8[7]),
        .I4(O7),
        .I5(RXDATA[15]),
        .O(\n_0_word_aligned_data_r[8]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[9]_i_1 
       (.I0(RXDATA[6]),
        .I1(p_2_in[6]),
        .I2(O5),
        .I3(O8[6]),
        .I4(O7),
        .I5(RXDATA[14]),
        .O(\n_0_word_aligned_data_r[9]_i_1 ));
FDRE \word_aligned_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[0]_i_1 ),
        .Q(O12[7]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[10]_i_1 ),
        .Q(O11[5]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[11]_i_1 ),
        .Q(O11[4]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[12]_i_1 ),
        .Q(O11[3]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[13]_i_1 ),
        .Q(O11[2]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[14]_i_1 ),
        .Q(O11[1]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[15]_i_1 ),
        .Q(O11[0]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I12[7]),
        .Q(O10[7]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I12[6]),
        .Q(O10[6]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I12[5]),
        .Q(O10[5]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I12[4]),
        .Q(O10[4]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[1]_i_1 ),
        .Q(O12[6]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I12[3]),
        .Q(O10[3]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I12[2]),
        .Q(O10[2]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I12[1]),
        .Q(O10[1]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I12[0]),
        .Q(O10[0]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I11[7]),
        .Q(O9[7]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I11[6]),
        .Q(O9[6]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I11[5]),
        .Q(O9[5]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I11[4]),
        .Q(O9[4]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I11[3]),
        .Q(O9[3]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I11[2]),
        .Q(O9[2]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[2]_i_1 ),
        .Q(O12[5]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I11[1]),
        .Q(O9[1]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I11[0]),
        .Q(O9[0]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[3]_i_1 ),
        .Q(O12[4]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[4]_i_1 ),
        .Q(O12[3]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[5]_i_1 ),
        .Q(O12[2]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[6]_i_1 ),
        .Q(O12[1]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[7]_i_1 ),
        .Q(O12[0]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[8]_i_1 ),
        .Q(O11[7]),
        .R(1'b0));
FDRE \word_aligned_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_word_aligned_data_r[9]_i_1 ),
        .Q(O11[6]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_SYM_GEN_4BYTE" *) 
module aurora_8b10b_0_aurora_8b10b_0_SYM_GEN_4BYTE
   (gen_spa_r,
    TXCHARISK,
    TXDATA,
    gen_spa_i,
    user_clk,
    GEN_SP,
    gen_cc_i,
    GEN_ECP,
    I1,
    gen_a_i,
    I5,
    I6,
    I7,
    I8,
    I9,
    I10);
  output gen_spa_r;
  output [3:0]TXCHARISK;
  output [31:0]TXDATA;
  input gen_spa_i;
  input user_clk;
  input GEN_SP;
  input gen_cc_i;
  input GEN_ECP;
  input I1;
  input gen_a_i;
  input [1:0]I5;
  input [1:0]I6;
  input [2:0]I7;
  input [3:0]I8;
  input [3:0]I9;
  input [31:0]I10;

  wire GEN_ECP;
  wire GEN_SP;
  wire I1;
  wire [31:0]I10;
  wire [1:0]I5;
  wire [1:0]I6;
  wire [2:0]I7;
  wire [3:0]I8;
  wire [3:0]I9;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire gen_a_i;
  wire gen_a_r;
  wire gen_cc_i;
  wire gen_cc_r;
  wire gen_sp_r;
  wire gen_spa_i;
  wire gen_spa_r;
  wire \n_0_TX_CHAR_IS_K[0]_i_1 ;
  wire \n_0_TX_CHAR_IS_K[1]_i_1 ;
  wire \n_0_TX_CHAR_IS_K[2]_i_1 ;
  wire \n_0_TX_CHAR_IS_K[3]_i_1 ;
  wire \n_0_TX_DATA[0]_i_1 ;
  wire \n_0_TX_DATA[10]_i_1 ;
  wire \n_0_TX_DATA[10]_i_2 ;
  wire \n_0_TX_DATA[11]_i_1 ;
  wire \n_0_TX_DATA[12]_i_1 ;
  wire \n_0_TX_DATA[12]_i_2 ;
  wire \n_0_TX_DATA[13]_i_1 ;
  wire \n_0_TX_DATA[13]_i_2 ;
  wire \n_0_TX_DATA[14]_i_1 ;
  wire \n_0_TX_DATA[14]_i_2 ;
  wire \n_0_TX_DATA[15]_i_1 ;
  wire \n_0_TX_DATA[15]_i_2 ;
  wire \n_0_TX_DATA[15]_i_3 ;
  wire \n_0_TX_DATA[16]_i_1 ;
  wire \n_0_TX_DATA[17]_i_1 ;
  wire \n_0_TX_DATA[18]_i_1 ;
  wire \n_0_TX_DATA[18]_i_2 ;
  wire \n_0_TX_DATA[19]_i_1 ;
  wire \n_0_TX_DATA[1]_i_1 ;
  wire \n_0_TX_DATA[20]_i_1 ;
  wire \n_0_TX_DATA[20]_i_2 ;
  wire \n_0_TX_DATA[21]_i_1 ;
  wire \n_0_TX_DATA[21]_i_2 ;
  wire \n_0_TX_DATA[22]_i_1 ;
  wire \n_0_TX_DATA[22]_i_2 ;
  wire \n_0_TX_DATA[23]_i_1 ;
  wire \n_0_TX_DATA[23]_i_2 ;
  wire \n_0_TX_DATA[23]_i_3 ;
  wire \n_0_TX_DATA[24]_i_1 ;
  wire \n_0_TX_DATA[25]_i_1 ;
  wire \n_0_TX_DATA[26]_i_1 ;
  wire \n_0_TX_DATA[27]_i_1 ;
  wire \n_0_TX_DATA[28]_i_1 ;
  wire \n_0_TX_DATA[28]_i_2 ;
  wire \n_0_TX_DATA[29]_i_1 ;
  wire \n_0_TX_DATA[2]_i_1 ;
  wire \n_0_TX_DATA[2]_i_2 ;
  wire \n_0_TX_DATA[30]_i_1 ;
  wire \n_0_TX_DATA[30]_i_2 ;
  wire \n_0_TX_DATA[30]_i_3 ;
  wire \n_0_TX_DATA[31]_i_1 ;
  wire \n_0_TX_DATA[31]_i_2 ;
  wire \n_0_TX_DATA[31]_i_3 ;
  wire \n_0_TX_DATA[31]_i_4 ;
  wire \n_0_TX_DATA[3]_i_1 ;
  wire \n_0_TX_DATA[4]_i_1 ;
  wire \n_0_TX_DATA[4]_i_2 ;
  wire \n_0_TX_DATA[5]_i_1 ;
  wire \n_0_TX_DATA[5]_i_2 ;
  wire \n_0_TX_DATA[6]_i_1 ;
  wire \n_0_TX_DATA[6]_i_2 ;
  wire \n_0_TX_DATA[7]_i_1 ;
  wire \n_0_TX_DATA[7]_i_2 ;
  wire \n_0_TX_DATA[7]_i_3 ;
  wire \n_0_TX_DATA[8]_i_1 ;
  wire \n_0_TX_DATA[9]_i_1 ;
  wire \n_0_gen_ecp_r_reg[1] ;
  wire \n_0_gen_k_r_reg[3] ;
  wire \n_0_gen_pad_r_reg[1] ;
  wire \n_0_gen_r_r_reg[3] ;
  wire \n_0_tx_pe_data_v_r_reg[1] ;
  wire p_0_in;
  wire p_0_in11_in;
  wire p_0_in15_in;
  wire p_0_in17_in;
  wire p_0_in20_in;
  wire p_0_in6_in;
  wire p_0_in8_in;
  wire p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in1_in;
  wire p_1_in5_in;
  wire [0:31]tx_pe_data_r;
  wire user_clk;

LUT5 #(
    .INIT(32'h0000000B)) 
     \TX_CHAR_IS_K[0]_i_1 
       (.I0(\n_0_gen_pad_r_reg[1] ),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .I4(p_1_in),
        .O(\n_0_TX_CHAR_IS_K[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \TX_CHAR_IS_K[1]_i_1 
       (.I0(p_1_in1_in),
        .I1(gen_sp_r),
        .I2(gen_spa_r),
        .I3(\n_0_tx_pe_data_v_r_reg[1] ),
        .O(\n_0_TX_CHAR_IS_K[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT5 #(
    .INIT(32'h0000000B)) 
     \TX_CHAR_IS_K[2]_i_1 
       (.I0(p_0_in15_in),
        .I1(p_1_in10_in),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .I4(p_1_in5_in),
        .O(\n_0_TX_CHAR_IS_K[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \TX_CHAR_IS_K[3]_i_1 
       (.I0(p_1_in10_in),
        .O(\n_0_TX_CHAR_IS_K[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \TX_CHAR_IS_K_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_TX_CHAR_IS_K[0]_i_1 ),
        .Q(TXCHARISK[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \TX_CHAR_IS_K_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_TX_CHAR_IS_K[1]_i_1 ),
        .Q(TXCHARISK[2]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \TX_CHAR_IS_K_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_TX_CHAR_IS_K[2]_i_1 ),
        .Q(TXCHARISK[1]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \TX_CHAR_IS_K_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_TX_CHAR_IS_K[3]_i_1 ),
        .Q(TXCHARISK[0]),
        .R(1'b0));
LUT5 #(
    .INIT(32'h00004F40)) 
     \TX_DATA[0]_i_1 
       (.I0(\n_0_gen_pad_r_reg[1] ),
        .I1(tx_pe_data_r[31]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(gen_cc_r),
        .I4(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[0]_i_1 ));
LUT4 #(
    .INIT(16'hFFB8)) 
     \TX_DATA[10]_i_1 
       (.I0(tx_pe_data_r[21]),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(\n_0_TX_DATA[10]_i_2 ),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[10]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00FF0032)) 
     \TX_DATA[10]_i_2 
       (.I0(p_0_in6_in),
        .I1(p_1_in1_in),
        .I2(p_0_in),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[10]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT4 #(
    .INIT(16'hF8FB)) 
     \TX_DATA[11]_i_1 
       (.I0(tx_pe_data_r[20]),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(\n_0_gen_ecp_r_reg[1] ),
        .I3(gen_cc_r),
        .O(\n_0_TX_DATA[11]_i_1 ));
LUT4 #(
    .INIT(16'hFFB8)) 
     \TX_DATA[12]_i_1 
       (.I0(tx_pe_data_r[19]),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(\n_0_TX_DATA[12]_i_2 ),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[12]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00030002)) 
     \TX_DATA[12]_i_2 
       (.I0(p_0_in6_in),
        .I1(p_1_in1_in),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .I4(p_0_in),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[12]_i_2 ));
LUT4 #(
    .INIT(16'hFFB8)) 
     \TX_DATA[13]_i_1 
       (.I0(tx_pe_data_r[18]),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(\n_0_TX_DATA[13]_i_2 ),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[13]_i_1 ));
LUT6 #(
    .INIT(64'hFFFF0000FFFFFEFF)) 
     \TX_DATA[13]_i_2 
       (.I0(p_0_in6_in),
        .I1(p_1_in1_in),
        .I2(gen_spa_r),
        .I3(p_0_in),
        .I4(gen_cc_r),
        .I5(gen_sp_r),
        .O(\n_0_TX_DATA[13]_i_2 ));
LUT4 #(
    .INIT(16'hFFB8)) 
     \TX_DATA[14]_i_1 
       (.I0(tx_pe_data_r[17]),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(\n_0_TX_DATA[14]_i_2 ),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[14]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00CD)) 
     \TX_DATA[14]_i_2 
       (.I0(p_0_in6_in),
        .I1(p_1_in1_in),
        .I2(p_0_in),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[14]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \TX_DATA[15]_i_1 
       (.I0(\n_0_gen_ecp_r_reg[1] ),
        .I1(p_0_in),
        .I2(\n_0_TX_DATA[31]_i_3 ),
        .I3(p_1_in1_in),
        .I4(p_0_in6_in),
        .I5(\n_0_tx_pe_data_v_r_reg[1] ),
        .O(\n_0_TX_DATA[15]_i_1 ));
LUT4 #(
    .INIT(16'hFFB8)) 
     \TX_DATA[15]_i_2 
       (.I0(tx_pe_data_r[16]),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(\n_0_TX_DATA[15]_i_3 ),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[15]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFF000000EF)) 
     \TX_DATA[15]_i_3 
       (.I0(p_0_in6_in),
        .I1(p_1_in1_in),
        .I2(p_0_in),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[15]_i_3 ));
LUT5 #(
    .INIT(32'hFFFF4F40)) 
     \TX_DATA[16]_i_1 
       (.I0(p_0_in15_in),
        .I1(tx_pe_data_r[15]),
        .I2(p_1_in10_in),
        .I3(gen_cc_r),
        .I4(p_1_in13_in),
        .O(\n_0_TX_DATA[16]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF4F4F4F40)) 
     \TX_DATA[17]_i_1 
       (.I0(p_0_in15_in),
        .I1(tx_pe_data_r[14]),
        .I2(p_1_in10_in),
        .I3(gen_cc_r),
        .I4(gen_sp_r),
        .I5(p_1_in13_in),
        .O(\n_0_TX_DATA[17]_i_1 ));
LUT5 #(
    .INIT(32'h0000EFE0)) 
     \TX_DATA[18]_i_1 
       (.I0(p_0_in15_in),
        .I1(tx_pe_data_r[13]),
        .I2(p_1_in10_in),
        .I3(\n_0_TX_DATA[18]_i_2 ),
        .I4(p_1_in13_in),
        .O(\n_0_TX_DATA[18]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00FF0032)) 
     \TX_DATA[18]_i_2 
       (.I0(p_0_in11_in),
        .I1(p_1_in5_in),
        .I2(p_0_in8_in),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[18]_i_2 ));
LUT5 #(
    .INIT(32'hFFE0FFEF)) 
     \TX_DATA[19]_i_1 
       (.I0(p_0_in15_in),
        .I1(tx_pe_data_r[12]),
        .I2(p_1_in10_in),
        .I3(p_1_in13_in),
        .I4(gen_cc_r),
        .O(\n_0_TX_DATA[19]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF4F4F4F40)) 
     \TX_DATA[1]_i_1 
       (.I0(\n_0_gen_pad_r_reg[1] ),
        .I1(tx_pe_data_r[30]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(gen_cc_r),
        .I4(gen_sp_r),
        .I5(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[1]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFEFE0)) 
     \TX_DATA[20]_i_1 
       (.I0(p_0_in15_in),
        .I1(tx_pe_data_r[11]),
        .I2(p_1_in10_in),
        .I3(\n_0_TX_DATA[20]_i_2 ),
        .I4(p_1_in13_in),
        .O(\n_0_TX_DATA[20]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00030002)) 
     \TX_DATA[20]_i_2 
       (.I0(p_0_in11_in),
        .I1(p_1_in5_in),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .I4(p_0_in8_in),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[20]_i_2 ));
LUT5 #(
    .INIT(32'hFFFF4F40)) 
     \TX_DATA[21]_i_1 
       (.I0(p_0_in15_in),
        .I1(tx_pe_data_r[10]),
        .I2(p_1_in10_in),
        .I3(\n_0_TX_DATA[21]_i_2 ),
        .I4(p_1_in13_in),
        .O(\n_0_TX_DATA[21]_i_1 ));
LUT6 #(
    .INIT(64'hFFFF0000FFFFFEFF)) 
     \TX_DATA[21]_i_2 
       (.I0(p_0_in11_in),
        .I1(p_1_in5_in),
        .I2(gen_spa_r),
        .I3(p_0_in8_in),
        .I4(gen_cc_r),
        .I5(gen_sp_r),
        .O(\n_0_TX_DATA[21]_i_2 ));
LUT5 #(
    .INIT(32'hFFFF4F40)) 
     \TX_DATA[22]_i_1 
       (.I0(p_0_in15_in),
        .I1(tx_pe_data_r[9]),
        .I2(p_1_in10_in),
        .I3(\n_0_TX_DATA[22]_i_2 ),
        .I4(p_1_in13_in),
        .O(\n_0_TX_DATA[22]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00CD)) 
     \TX_DATA[22]_i_2 
       (.I0(p_0_in11_in),
        .I1(p_1_in5_in),
        .I2(p_0_in8_in),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[22]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \TX_DATA[23]_i_1 
       (.I0(p_1_in13_in),
        .I1(p_0_in8_in),
        .I2(\n_0_TX_DATA[31]_i_3 ),
        .I3(p_1_in5_in),
        .I4(p_0_in11_in),
        .I5(p_1_in10_in),
        .O(\n_0_TX_DATA[23]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFEFE0)) 
     \TX_DATA[23]_i_2 
       (.I0(p_0_in15_in),
        .I1(tx_pe_data_r[8]),
        .I2(p_1_in10_in),
        .I3(\n_0_TX_DATA[23]_i_3 ),
        .I4(p_1_in13_in),
        .O(\n_0_TX_DATA[23]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFF000000EF)) 
     \TX_DATA[23]_i_3 
       (.I0(p_0_in11_in),
        .I1(p_1_in5_in),
        .I2(p_0_in8_in),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[23]_i_3 ));
LUT4 #(
    .INIT(16'h00B8)) 
     \TX_DATA[24]_i_1 
       (.I0(tx_pe_data_r[7]),
        .I1(p_1_in10_in),
        .I2(gen_cc_r),
        .I3(p_1_in13_in),
        .O(\n_0_TX_DATA[24]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT4 #(
    .INIT(16'h00B8)) 
     \TX_DATA[25]_i_1 
       (.I0(tx_pe_data_r[6]),
        .I1(p_1_in10_in),
        .I2(gen_cc_r),
        .I3(p_1_in13_in),
        .O(\n_0_TX_DATA[25]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT4 #(
    .INIT(16'hEFE0)) 
     \TX_DATA[26]_i_1 
       (.I0(tx_pe_data_r[5]),
        .I1(p_1_in13_in),
        .I2(p_1_in10_in),
        .I3(\n_0_TX_DATA[28]_i_2 ),
        .O(\n_0_TX_DATA[26]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT4 #(
    .INIT(16'hF8FB)) 
     \TX_DATA[27]_i_1 
       (.I0(tx_pe_data_r[4]),
        .I1(p_1_in10_in),
        .I2(p_1_in13_in),
        .I3(gen_cc_r),
        .O(\n_0_TX_DATA[27]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT4 #(
    .INIT(16'hEFE0)) 
     \TX_DATA[28]_i_1 
       (.I0(tx_pe_data_r[3]),
        .I1(p_1_in13_in),
        .I2(p_1_in10_in),
        .I3(\n_0_TX_DATA[28]_i_2 ),
        .O(\n_0_TX_DATA[28]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \TX_DATA[28]_i_2 
       (.I0(p_1_in13_in),
        .I1(p_0_in17_in),
        .I2(\n_0_TX_DATA[31]_i_3 ),
        .I3(p_0_in20_in),
        .I4(gen_a_r),
        .O(\n_0_TX_DATA[28]_i_2 ));
LUT5 #(
    .INIT(32'h0B3B0B08)) 
     \TX_DATA[29]_i_1 
       (.I0(tx_pe_data_r[2]),
        .I1(p_1_in10_in),
        .I2(p_1_in13_in),
        .I3(gen_a_r),
        .I4(\n_0_TX_DATA[31]_i_4 ),
        .O(\n_0_TX_DATA[29]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFEFE0)) 
     \TX_DATA[2]_i_1 
       (.I0(\n_0_gen_pad_r_reg[1] ),
        .I1(tx_pe_data_r[29]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(\n_0_TX_DATA[2]_i_2 ),
        .I4(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[2]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00FF0032)) 
     \TX_DATA[2]_i_2 
       (.I0(\n_0_gen_k_r_reg[3] ),
        .I1(p_1_in),
        .I2(\n_0_gen_r_r_reg[3] ),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[2]_i_2 ));
LUT6 #(
    .INIT(64'hFFB8FFBBFFB8CC88)) 
     \TX_DATA[30]_i_1 
       (.I0(tx_pe_data_r[1]),
        .I1(p_1_in10_in),
        .I2(\n_0_TX_DATA[30]_i_2 ),
        .I3(p_1_in13_in),
        .I4(gen_a_r),
        .I5(\n_0_TX_DATA[30]_i_3 ),
        .O(\n_0_TX_DATA[30]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'hF1)) 
     \TX_DATA[30]_i_2 
       (.I0(gen_spa_r),
        .I1(gen_sp_r),
        .I2(gen_cc_r),
        .O(\n_0_TX_DATA[30]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFAAAAAAAB)) 
     \TX_DATA[30]_i_3 
       (.I0(gen_cc_r),
        .I1(gen_sp_r),
        .I2(gen_spa_r),
        .I3(p_0_in17_in),
        .I4(p_0_in20_in),
        .I5(p_1_in13_in),
        .O(\n_0_TX_DATA[30]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \TX_DATA[31]_i_1 
       (.I0(gen_a_r),
        .I1(p_0_in20_in),
        .I2(\n_0_TX_DATA[31]_i_3 ),
        .I3(p_0_in17_in),
        .I4(p_1_in13_in),
        .I5(p_1_in10_in),
        .O(\n_0_TX_DATA[31]_i_1 ));
LUT6 #(
    .INIT(64'h00B833BB00B80088)) 
     \TX_DATA[31]_i_2 
       (.I0(tx_pe_data_r[0]),
        .I1(p_1_in10_in),
        .I2(\n_0_TX_DATA[31]_i_3 ),
        .I3(p_1_in13_in),
        .I4(gen_a_r),
        .I5(\n_0_TX_DATA[31]_i_4 ),
        .O(\n_0_TX_DATA[31]_i_2 ));
LUT3 #(
    .INIT(8'hFE)) 
     \TX_DATA[31]_i_3 
       (.I0(gen_sp_r),
        .I1(gen_spa_r),
        .I2(gen_cc_r),
        .O(\n_0_TX_DATA[31]_i_3 ));
LUT6 #(
    .INIT(64'h00000000FFFEFFFF)) 
     \TX_DATA[31]_i_4 
       (.I0(p_0_in20_in),
        .I1(gen_cc_r),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .I4(p_0_in17_in),
        .I5(p_1_in13_in),
        .O(\n_0_TX_DATA[31]_i_4 ));
LUT5 #(
    .INIT(32'hFFE0FFEF)) 
     \TX_DATA[3]_i_1 
       (.I0(\n_0_gen_pad_r_reg[1] ),
        .I1(tx_pe_data_r[28]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .I4(gen_cc_r),
        .O(\n_0_TX_DATA[3]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFEFE0)) 
     \TX_DATA[4]_i_1 
       (.I0(\n_0_gen_pad_r_reg[1] ),
        .I1(tx_pe_data_r[27]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(\n_0_TX_DATA[4]_i_2 ),
        .I4(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[4]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00030002)) 
     \TX_DATA[4]_i_2 
       (.I0(\n_0_gen_k_r_reg[3] ),
        .I1(p_1_in),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .I4(\n_0_gen_r_r_reg[3] ),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[4]_i_2 ));
LUT5 #(
    .INIT(32'hFFFF4F40)) 
     \TX_DATA[5]_i_1 
       (.I0(\n_0_gen_pad_r_reg[1] ),
        .I1(tx_pe_data_r[26]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(\n_0_TX_DATA[5]_i_2 ),
        .I4(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[5]_i_1 ));
LUT6 #(
    .INIT(64'hFFFF0000FFFFFEFF)) 
     \TX_DATA[5]_i_2 
       (.I0(\n_0_gen_k_r_reg[3] ),
        .I1(p_1_in),
        .I2(gen_spa_r),
        .I3(\n_0_gen_r_r_reg[3] ),
        .I4(gen_cc_r),
        .I5(gen_sp_r),
        .O(\n_0_TX_DATA[5]_i_2 ));
LUT5 #(
    .INIT(32'hFFFF4F40)) 
     \TX_DATA[6]_i_1 
       (.I0(\n_0_gen_pad_r_reg[1] ),
        .I1(tx_pe_data_r[25]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(\n_0_TX_DATA[6]_i_2 ),
        .I4(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[6]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00CD)) 
     \TX_DATA[6]_i_2 
       (.I0(\n_0_gen_k_r_reg[3] ),
        .I1(p_1_in),
        .I2(\n_0_gen_r_r_reg[3] ),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[6]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \TX_DATA[7]_i_1 
       (.I0(\n_0_gen_ecp_r_reg[1] ),
        .I1(\n_0_gen_r_r_reg[3] ),
        .I2(\n_0_TX_DATA[31]_i_3 ),
        .I3(p_1_in),
        .I4(\n_0_gen_k_r_reg[3] ),
        .I5(\n_0_tx_pe_data_v_r_reg[1] ),
        .O(\n_0_TX_DATA[7]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFEFE0)) 
     \TX_DATA[7]_i_2 
       (.I0(\n_0_gen_pad_r_reg[1] ),
        .I1(tx_pe_data_r[24]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(\n_0_TX_DATA[7]_i_3 ),
        .I4(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[7]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFF000000EF)) 
     \TX_DATA[7]_i_3 
       (.I0(\n_0_gen_k_r_reg[3] ),
        .I1(p_1_in),
        .I2(\n_0_gen_r_r_reg[3] ),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[7]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT4 #(
    .INIT(16'hFFB8)) 
     \TX_DATA[8]_i_1 
       (.I0(tx_pe_data_r[23]),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(gen_cc_r),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[8]_i_1 ));
LUT5 #(
    .INIT(32'h0000BBB8)) 
     \TX_DATA[9]_i_1 
       (.I0(tx_pe_data_r[22]),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(gen_cc_r),
        .I3(gen_sp_r),
        .I4(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[9]_i_1 ));
FDRE \TX_DATA_reg[0] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[0]_i_1 ),
        .Q(TXDATA[24]),
        .R(1'b0));
FDRE \TX_DATA_reg[10] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[10]_i_1 ),
        .Q(TXDATA[18]),
        .R(1'b0));
FDRE \TX_DATA_reg[11] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[11]_i_1 ),
        .Q(TXDATA[19]),
        .R(1'b0));
FDRE \TX_DATA_reg[12] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[12]_i_1 ),
        .Q(TXDATA[20]),
        .R(1'b0));
FDRE \TX_DATA_reg[13] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[13]_i_1 ),
        .Q(TXDATA[21]),
        .R(1'b0));
FDRE \TX_DATA_reg[14] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[14]_i_1 ),
        .Q(TXDATA[22]),
        .R(1'b0));
FDRE \TX_DATA_reg[15] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[15]_i_2 ),
        .Q(TXDATA[23]),
        .R(1'b0));
FDRE \TX_DATA_reg[16] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[16]_i_1 ),
        .Q(TXDATA[8]),
        .R(1'b0));
FDRE \TX_DATA_reg[17] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[17]_i_1 ),
        .Q(TXDATA[9]),
        .R(1'b0));
FDRE \TX_DATA_reg[18] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[18]_i_1 ),
        .Q(TXDATA[10]),
        .R(1'b0));
FDRE \TX_DATA_reg[19] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[19]_i_1 ),
        .Q(TXDATA[11]),
        .R(1'b0));
FDRE \TX_DATA_reg[1] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[1]_i_1 ),
        .Q(TXDATA[25]),
        .R(1'b0));
FDRE \TX_DATA_reg[20] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[20]_i_1 ),
        .Q(TXDATA[12]),
        .R(1'b0));
FDRE \TX_DATA_reg[21] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[21]_i_1 ),
        .Q(TXDATA[13]),
        .R(1'b0));
FDRE \TX_DATA_reg[22] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[22]_i_1 ),
        .Q(TXDATA[14]),
        .R(1'b0));
FDRE \TX_DATA_reg[23] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[23]_i_2 ),
        .Q(TXDATA[15]),
        .R(1'b0));
FDRE \TX_DATA_reg[24] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[24]_i_1 ),
        .Q(TXDATA[0]),
        .R(1'b0));
FDRE \TX_DATA_reg[25] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[25]_i_1 ),
        .Q(TXDATA[1]),
        .R(1'b0));
FDRE \TX_DATA_reg[26] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[26]_i_1 ),
        .Q(TXDATA[2]),
        .R(1'b0));
FDRE \TX_DATA_reg[27] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[27]_i_1 ),
        .Q(TXDATA[3]),
        .R(1'b0));
FDRE \TX_DATA_reg[28] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[28]_i_1 ),
        .Q(TXDATA[4]),
        .R(1'b0));
FDRE \TX_DATA_reg[29] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[29]_i_1 ),
        .Q(TXDATA[5]),
        .R(1'b0));
FDRE \TX_DATA_reg[2] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[2]_i_1 ),
        .Q(TXDATA[26]),
        .R(1'b0));
FDRE \TX_DATA_reg[30] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[30]_i_1 ),
        .Q(TXDATA[6]),
        .R(1'b0));
FDRE \TX_DATA_reg[31] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[31]_i_2 ),
        .Q(TXDATA[7]),
        .R(1'b0));
FDRE \TX_DATA_reg[3] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[3]_i_1 ),
        .Q(TXDATA[27]),
        .R(1'b0));
FDRE \TX_DATA_reg[4] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[4]_i_1 ),
        .Q(TXDATA[28]),
        .R(1'b0));
FDRE \TX_DATA_reg[5] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[5]_i_1 ),
        .Q(TXDATA[29]),
        .R(1'b0));
FDRE \TX_DATA_reg[6] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[6]_i_1 ),
        .Q(TXDATA[30]),
        .R(1'b0));
FDRE \TX_DATA_reg[7] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[7]_i_2 ),
        .Q(TXDATA[31]),
        .R(1'b0));
FDRE \TX_DATA_reg[8] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[8]_i_1 ),
        .Q(TXDATA[16]),
        .R(1'b0));
FDRE \TX_DATA_reg[9] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[9]_i_1 ),
        .Q(TXDATA[17]),
        .R(1'b0));
FDRE gen_a_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_a_i),
        .Q(gen_a_r),
        .R(1'b0));
FDRE gen_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_cc_i),
        .Q(gen_cc_r),
        .R(1'b0));
FDRE \gen_ecp_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP),
        .Q(\n_0_gen_ecp_r_reg[1] ),
        .R(1'b0));
FDRE \gen_k_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[3]),
        .Q(p_0_in20_in),
        .R(1'b0));
FDRE \gen_k_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[2]),
        .Q(p_0_in11_in),
        .R(1'b0));
FDRE \gen_k_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[1]),
        .Q(p_0_in6_in),
        .R(1'b0));
FDRE \gen_k_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I9[0]),
        .Q(\n_0_gen_k_r_reg[3] ),
        .R(1'b0));
FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I5[1]),
        .Q(p_0_in15_in),
        .R(1'b0));
FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I5[0]),
        .Q(\n_0_gen_pad_r_reg[1] ),
        .R(1'b0));
FDRE \gen_r_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I8[3]),
        .Q(p_0_in17_in),
        .R(1'b0));
FDRE \gen_r_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I8[2]),
        .Q(p_0_in8_in),
        .R(1'b0));
FDRE \gen_r_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I8[1]),
        .Q(p_0_in),
        .R(1'b0));
FDRE \gen_r_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I8[0]),
        .Q(\n_0_gen_r_r_reg[3] ),
        .R(1'b0));
FDRE \gen_scp_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I1),
        .Q(p_1_in13_in),
        .R(1'b0));
FDRE gen_sp_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_SP),
        .Q(gen_sp_r),
        .R(1'b0));
FDRE gen_spa_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(gen_spa_i),
        .Q(gen_spa_r),
        .R(1'b0));
FDRE \gen_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I7[2]),
        .Q(p_1_in5_in),
        .R(1'b0));
FDRE \gen_v_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I7[1]),
        .Q(p_1_in1_in),
        .R(1'b0));
FDRE \gen_v_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I7[0]),
        .Q(p_1_in),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[31]),
        .Q(tx_pe_data_r[0]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[21]),
        .Q(tx_pe_data_r[10]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[20]),
        .Q(tx_pe_data_r[11]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[19]),
        .Q(tx_pe_data_r[12]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[18]),
        .Q(tx_pe_data_r[13]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[17]),
        .Q(tx_pe_data_r[14]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[16]),
        .Q(tx_pe_data_r[15]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[15]),
        .Q(tx_pe_data_r[16]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[14]),
        .Q(tx_pe_data_r[17]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[13]),
        .Q(tx_pe_data_r[18]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[12]),
        .Q(tx_pe_data_r[19]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[30]),
        .Q(tx_pe_data_r[1]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[11]),
        .Q(tx_pe_data_r[20]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[10]),
        .Q(tx_pe_data_r[21]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[9]),
        .Q(tx_pe_data_r[22]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[8]),
        .Q(tx_pe_data_r[23]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[7]),
        .Q(tx_pe_data_r[24]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[6]),
        .Q(tx_pe_data_r[25]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[5]),
        .Q(tx_pe_data_r[26]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[4]),
        .Q(tx_pe_data_r[27]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[3]),
        .Q(tx_pe_data_r[28]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[2]),
        .Q(tx_pe_data_r[29]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[29]),
        .Q(tx_pe_data_r[2]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[1]),
        .Q(tx_pe_data_r[30]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[0]),
        .Q(tx_pe_data_r[31]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[28]),
        .Q(tx_pe_data_r[3]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[27]),
        .Q(tx_pe_data_r[4]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[26]),
        .Q(tx_pe_data_r[5]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[25]),
        .Q(tx_pe_data_r[6]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[24]),
        .Q(tx_pe_data_r[7]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[23]),
        .Q(tx_pe_data_r[8]),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I10[22]),
        .Q(tx_pe_data_r[9]),
        .R(1'b0));
FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I6[1]),
        .Q(p_1_in10_in),
        .R(1'b0));
FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I6[0]),
        .Q(\n_0_tx_pe_data_v_r_reg[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_TX_LL" *) 
module aurora_8b10b_0_aurora_8b10b_0_TX_LL
   (gen_cc_i,
    GEN_ECP,
    O1,
    tx_dst_rdy,
    s_axi_tx_tready,
    I5,
    I6,
    Q,
    reset_i,
    user_clk,
    do_cc,
    O182,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    I1,
    I2,
    s_axi_tx_tkeep,
    s_axi_tx_tdata);
  output gen_cc_i;
  output GEN_ECP;
  output O1;
  output tx_dst_rdy;
  output s_axi_tx_tready;
  output [1:0]I5;
  output [1:0]I6;
  output [31:0]Q;
  input reset_i;
  input user_clk;
  input do_cc;
  input O182;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input I1;
  input I2;
  input [0:3]s_axi_tx_tkeep;
  input [0:31]s_axi_tx_tdata;

  wire GEN_ECP;
  wire I1;
  wire I2;
  wire [1:0]I5;
  wire [1:0]I6;
  wire O1;
  wire O182;
  wire [31:0]Q;
  wire do_cc;
  wire do_cc_r;
  wire gen_cc_i;
  wire n_0_tx_ll_datapath_i;
  wire n_6_tx_ll_control_i;
  wire n_8_tx_ll_control_i;
  wire pdu_ok_c;
  wire reset_i;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire storage_pad_r0;
  wire storage_v_r0;
  wire tx_dst_rdy;
  wire user_clk;

aurora_8b10b_0_aurora_8b10b_0_TX_LL_CONTROL tx_ll_control_i
       (.D(n_8_tx_ll_control_i),
        .E(pdu_ok_c),
        .GEN_ECP(GEN_ECP),
        .I1(I1),
        .I2(n_0_tx_ll_datapath_i),
        .I3(I2),
        .O1(O1),
        .O182(O182),
        .O2(tx_dst_rdy),
        .O3(n_6_tx_ll_control_i),
        .do_cc(do_cc),
        .do_cc_r(do_cc_r),
        .gen_cc_i(gen_cc_i),
        .reset_i(reset_i),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .storage_pad_r0(storage_pad_r0),
        .storage_v_r0(storage_v_r0),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_TX_LL_DATAPATH tx_ll_datapath_i
       (.D(n_8_tx_ll_control_i),
        .E(pdu_ok_c),
        .I1(n_6_tx_ll_control_i),
        .I2(I1),
        .I5(I5),
        .I6(I6),
        .O1(n_0_tx_ll_datapath_i),
        .Q(Q),
        .do_cc_r(do_cc_r),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .storage_pad_r0(storage_pad_r0),
        .storage_v_r0(storage_v_r0),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_TX_LL_CONTROL" *) 
module aurora_8b10b_0_aurora_8b10b_0_TX_LL_CONTROL
   (gen_cc_i,
    do_cc_r,
    GEN_ECP,
    O1,
    O2,
    E,
    O3,
    s_axi_tx_tready,
    D,
    storage_pad_r0,
    storage_v_r0,
    reset_i,
    user_clk,
    do_cc,
    O182,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    I1,
    I2,
    I3,
    s_axi_tx_tkeep);
  output gen_cc_i;
  output do_cc_r;
  output GEN_ECP;
  output O1;
  output O2;
  output [0:0]E;
  output O3;
  output s_axi_tx_tready;
  output [0:0]D;
  output storage_pad_r0;
  output storage_v_r0;
  input reset_i;
  input user_clk;
  input do_cc;
  input O182;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input I1;
  input I2;
  input I3;
  input [0:3]s_axi_tx_tkeep;

  wire [0:0]D;
  wire [0:0]E;
  wire GEN_ECP;
  wire GEN_ECP0;
  wire I1;
  wire I2;
  wire I3;
  wire O1;
  wire O182;
  wire O2;
  wire O3;
  wire data_r;
  wire data_to_eof_1_r;
  wire data_to_eof_2_r;
  wire do_cc;
  wire do_cc_r;
  wire gen_cc_i;
  wire idle_r;
  wire n_0_GEN_SCP_i_1;
  wire n_0_sof_to_data_r_i_1;
  wire n_0_storage_v_r_i_2;
  wire next_data_c;
  wire next_data_to_eof_1_c;
  wire next_idle_c;
  wire next_sof_to_eof_1_c;
  wire reset_i;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire sof_to_data_r;
  wire sof_to_eof_1_r;
  wire sof_to_eof_2_r;
  wire storage_pad_r0;
  wire storage_v_r0;
  wire tx_dst_rdy_n_c;
  wire user_clk;

(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     GEN_ECP_i_1
       (.I0(data_to_eof_2_r),
        .I1(sof_to_eof_2_r),
        .I2(do_cc_r),
        .O(GEN_ECP0));
FDRE GEN_ECP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(GEN_ECP0),
        .Q(GEN_ECP),
        .R(reset_i));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT3 #(
    .INIT(8'h54)) 
     GEN_SCP_i_1
       (.I0(do_cc_r),
        .I1(sof_to_eof_1_r),
        .I2(sof_to_data_r),
        .O(n_0_GEN_SCP_i_1));
FDRE GEN_SCP_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_GEN_SCP_i_1),
        .Q(O1),
        .R(reset_i));
LUT6 #(
    .INIT(64'hFFFBFFFBFFFBEEEA)) 
     TX_DST_RDY_N_i_1
       (.I0(do_cc),
        .I1(do_cc_r),
        .I2(data_to_eof_1_r),
        .I3(sof_to_eof_1_r),
        .I4(next_sof_to_eof_1_c),
        .I5(next_data_to_eof_1_c),
        .O(tx_dst_rdy_n_c));
FDSE TX_DST_RDY_N_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(tx_dst_rdy_n_c),
        .Q(O2),
        .S(reset_i));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT5 #(
    .INIT(32'hBFBFBF00)) 
     data_r_i_1
       (.I0(O2),
        .I1(s_axi_tx_tvalid),
        .I2(s_axi_tx_tlast),
        .I3(sof_to_data_r),
        .I4(data_r),
        .O(next_data_c));
FDRE data_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_data_c),
        .Q(data_r),
        .R(reset_i));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT5 #(
    .INIT(32'h40404000)) 
     data_to_eof_1_r_i_1
       (.I0(O2),
        .I1(s_axi_tx_tvalid),
        .I2(s_axi_tx_tlast),
        .I3(sof_to_data_r),
        .I4(data_r),
        .O(next_data_to_eof_1_c));
FDRE data_to_eof_1_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_data_to_eof_1_c),
        .Q(data_to_eof_1_r),
        .R(reset_i));
FDRE data_to_eof_2_r_reg
       (.C(user_clk),
        .CE(E),
        .D(data_to_eof_1_r),
        .Q(data_to_eof_2_r),
        .R(reset_i));
FDRE do_cc_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(do_cc),
        .Q(do_cc_r),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   (* XILINX_LEGACY_PRIM = "FDR" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_cc_flop_0_i
       (.C(user_clk),
        .CE(1'b1),
        .D(do_cc_r),
        .Q(gen_cc_i),
        .R(reset_i));
LUT6 #(
    .INIT(64'h0001011400000000)) 
     \gen_pad_r[1]_i_1 
       (.I0(n_0_storage_v_r_i_2),
        .I1(s_axi_tx_tkeep[3]),
        .I2(s_axi_tx_tkeep[0]),
        .I3(s_axi_tx_tkeep[1]),
        .I4(s_axi_tx_tkeep[2]),
        .I5(s_axi_tx_tlast),
        .O(D));
LUT6 #(
    .INIT(64'hFBFBFBFBFBFBFB00)) 
     idle_r_i_1
       (.I0(O2),
        .I1(s_axi_tx_tvalid),
        .I2(I1),
        .I3(sof_to_eof_2_r),
        .I4(data_to_eof_2_r),
        .I5(idle_r),
        .O(next_idle_c));
FDSE idle_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_idle_c),
        .Q(idle_r),
        .S(reset_i));
LUT6 #(
    .INIT(64'hA2AAA2AA00000200)) 
     in_frame_r_i_1
       (.I0(O182),
        .I1(s_axi_tx_tlast),
        .I2(O2),
        .I3(s_axi_tx_tvalid),
        .I4(I1),
        .I5(I2),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT1 #(
    .INIT(2'h1)) 
     s_axi_tx_tready_INST_0
       (.I0(O2),
        .O(s_axi_tx_tready));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT5 #(
    .INIT(32'h00005554)) 
     sof_to_data_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(idle_r),
        .I2(data_to_eof_2_r),
        .I3(sof_to_eof_2_r),
        .I4(I3),
        .O(n_0_sof_to_data_r_i_1));
FDRE sof_to_data_r_reg
       (.C(user_clk),
        .CE(E),
        .D(n_0_sof_to_data_r_i_1),
        .Q(sof_to_data_r),
        .R(reset_i));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT5 #(
    .INIT(32'h0000AAA8)) 
     sof_to_eof_1_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(idle_r),
        .I2(data_to_eof_2_r),
        .I3(sof_to_eof_2_r),
        .I4(I3),
        .O(next_sof_to_eof_1_c));
FDRE sof_to_eof_1_r_reg
       (.C(user_clk),
        .CE(E),
        .D(next_sof_to_eof_1_c),
        .Q(sof_to_eof_1_r),
        .R(reset_i));
FDRE sof_to_eof_2_r_reg
       (.C(user_clk),
        .CE(E),
        .D(sof_to_eof_1_r),
        .Q(sof_to_eof_2_r),
        .R(reset_i));
LUT6 #(
    .INIT(64'h1440400000000000)) 
     storage_pad_r_i_1
       (.I0(n_0_storage_v_r_i_2),
        .I1(s_axi_tx_tkeep[3]),
        .I2(s_axi_tx_tkeep[0]),
        .I3(s_axi_tx_tkeep[1]),
        .I4(s_axi_tx_tkeep[2]),
        .I5(s_axi_tx_tlast),
        .O(storage_pad_r0));
LUT1 #(
    .INIT(2'h1)) 
     \storage_r[0]_i_1 
       (.I0(do_cc_r),
        .O(E));
LUT6 #(
    .INIT(64'h00000000FDD5D557)) 
     storage_v_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(s_axi_tx_tkeep[3]),
        .I2(s_axi_tx_tkeep[0]),
        .I3(s_axi_tx_tkeep[1]),
        .I4(s_axi_tx_tkeep[2]),
        .I5(n_0_storage_v_r_i_2),
        .O(storage_v_r0));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT4 #(
    .INIT(16'hCFEF)) 
     storage_v_r_i_2
       (.I0(I1),
        .I1(O2),
        .I2(s_axi_tx_tvalid),
        .I3(I2),
        .O(n_0_storage_v_r_i_2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_TX_LL_DATAPATH" *) 
module aurora_8b10b_0_aurora_8b10b_0_TX_LL_DATAPATH
   (O1,
    I5,
    I6,
    Q,
    E,
    storage_v_r0,
    user_clk,
    storage_pad_r0,
    I1,
    s_axi_tx_tvalid,
    tx_dst_rdy,
    I2,
    do_cc_r,
    s_axi_tx_tdata,
    D);
  output O1;
  output [1:0]I5;
  output [1:0]I6;
  output [31:0]Q;
  input [0:0]E;
  input storage_v_r0;
  input user_clk;
  input storage_pad_r0;
  input I1;
  input s_axi_tx_tvalid;
  input tx_dst_rdy;
  input I2;
  input do_cc_r;
  input [0:31]s_axi_tx_tdata;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire [1:0]I5;
  wire [1:0]I6;
  wire O1;
  wire [31:0]Q;
  wire do_cc_r;
  wire \n_0_gen_pad_r_reg[0] ;
  wire \n_0_gen_pad_r_reg[1] ;
  wire \n_0_tx_pe_data_r_reg[0] ;
  wire \n_0_tx_pe_data_r_reg[10] ;
  wire \n_0_tx_pe_data_r_reg[11] ;
  wire \n_0_tx_pe_data_r_reg[12] ;
  wire \n_0_tx_pe_data_r_reg[13] ;
  wire \n_0_tx_pe_data_r_reg[14] ;
  wire \n_0_tx_pe_data_r_reg[15] ;
  wire \n_0_tx_pe_data_r_reg[16] ;
  wire \n_0_tx_pe_data_r_reg[17] ;
  wire \n_0_tx_pe_data_r_reg[18] ;
  wire \n_0_tx_pe_data_r_reg[19] ;
  wire \n_0_tx_pe_data_r_reg[1] ;
  wire \n_0_tx_pe_data_r_reg[20] ;
  wire \n_0_tx_pe_data_r_reg[21] ;
  wire \n_0_tx_pe_data_r_reg[22] ;
  wire \n_0_tx_pe_data_r_reg[23] ;
  wire \n_0_tx_pe_data_r_reg[24] ;
  wire \n_0_tx_pe_data_r_reg[25] ;
  wire \n_0_tx_pe_data_r_reg[26] ;
  wire \n_0_tx_pe_data_r_reg[27] ;
  wire \n_0_tx_pe_data_r_reg[28] ;
  wire \n_0_tx_pe_data_r_reg[29] ;
  wire \n_0_tx_pe_data_r_reg[2] ;
  wire \n_0_tx_pe_data_r_reg[30] ;
  wire \n_0_tx_pe_data_r_reg[31] ;
  wire \n_0_tx_pe_data_r_reg[3] ;
  wire \n_0_tx_pe_data_r_reg[4] ;
  wire \n_0_tx_pe_data_r_reg[5] ;
  wire \n_0_tx_pe_data_r_reg[6] ;
  wire \n_0_tx_pe_data_r_reg[7] ;
  wire \n_0_tx_pe_data_r_reg[8] ;
  wire \n_0_tx_pe_data_r_reg[9] ;
  wire \n_0_tx_pe_data_v_r_reg[0] ;
  wire \n_0_tx_pe_data_v_r_reg[1] ;
  wire [0:0]p_1_out;
  wire [0:31]s_axi_tx_tdata;
  wire s_axi_tx_tvalid;
  wire storage_pad_r;
  wire storage_pad_r0;
  wire [0:15]storage_r;
  wire storage_v_r;
  wire storage_v_r0;
  wire tx_dst_rdy;
  wire user_clk;

FDRE \GEN_PAD_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_gen_pad_r_reg[0] ),
        .Q(I5[1]),
        .R(do_cc_r));
FDRE \GEN_PAD_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_gen_pad_r_reg[1] ),
        .Q(I5[0]),
        .R(do_cc_r));
FDRE \TX_PE_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_v_r_reg[0] ),
        .Q(I6[1]),
        .R(do_cc_r));
FDRE \TX_PE_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_v_r_reg[1] ),
        .Q(I6[0]),
        .R(do_cc_r));
FDRE \TX_PE_DATA_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[0] ),
        .Q(Q[31]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[10] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[10] ),
        .Q(Q[21]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[11] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[11] ),
        .Q(Q[20]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[12] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[12] ),
        .Q(Q[19]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[13] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[13] ),
        .Q(Q[18]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[14] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[14] ),
        .Q(Q[17]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[15] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[15] ),
        .Q(Q[16]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[16] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[16] ),
        .Q(Q[15]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[17] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[17] ),
        .Q(Q[14]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[18] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[18] ),
        .Q(Q[13]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[19] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[19] ),
        .Q(Q[12]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[1] ),
        .Q(Q[30]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[20] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[20] ),
        .Q(Q[11]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[21] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[21] ),
        .Q(Q[10]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[22] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[22] ),
        .Q(Q[9]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[23] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[23] ),
        .Q(Q[8]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[24] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[24] ),
        .Q(Q[7]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[25] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[25] ),
        .Q(Q[6]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[26] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[26] ),
        .Q(Q[5]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[27] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[27] ),
        .Q(Q[4]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[28] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[28] ),
        .Q(Q[3]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[29] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[29] ),
        .Q(Q[2]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[2] ),
        .Q(Q[29]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[30] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[30] ),
        .Q(Q[1]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[31] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[31] ),
        .Q(Q[0]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[3] ),
        .Q(Q[28]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[4] ),
        .Q(Q[27]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[5] ),
        .Q(Q[26]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[6] ),
        .Q(Q[25]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[7] ),
        .Q(Q[24]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[8] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[8] ),
        .Q(Q[23]),
        .R(1'b0));
FDRE \TX_PE_DATA_reg[9] 
       (.C(user_clk),
        .CE(1'b1),
        .D(\n_0_tx_pe_data_r_reg[9] ),
        .Q(Q[22]),
        .R(1'b0));
FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r),
        .Q(\n_0_gen_pad_r_reg[0] ),
        .R(1'b0));
FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(D),
        .Q(\n_0_gen_pad_r_reg[1] ),
        .R(1'b0));
FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(I1),
        .Q(O1),
        .R(1'b0));
FDRE storage_pad_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_pad_r0),
        .Q(storage_pad_r),
        .R(1'b0));
FDRE \storage_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[16]),
        .Q(storage_r[0]),
        .R(1'b0));
FDRE \storage_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[26]),
        .Q(storage_r[10]),
        .R(1'b0));
FDRE \storage_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[27]),
        .Q(storage_r[11]),
        .R(1'b0));
FDRE \storage_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[28]),
        .Q(storage_r[12]),
        .R(1'b0));
FDRE \storage_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[29]),
        .Q(storage_r[13]),
        .R(1'b0));
FDRE \storage_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[30]),
        .Q(storage_r[14]),
        .R(1'b0));
FDRE \storage_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[31]),
        .Q(storage_r[15]),
        .R(1'b0));
FDRE \storage_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[17]),
        .Q(storage_r[1]),
        .R(1'b0));
FDRE \storage_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[18]),
        .Q(storage_r[2]),
        .R(1'b0));
FDRE \storage_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[19]),
        .Q(storage_r[3]),
        .R(1'b0));
FDRE \storage_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[20]),
        .Q(storage_r[4]),
        .R(1'b0));
FDRE \storage_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[21]),
        .Q(storage_r[5]),
        .R(1'b0));
FDRE \storage_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[22]),
        .Q(storage_r[6]),
        .R(1'b0));
FDRE \storage_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[23]),
        .Q(storage_r[7]),
        .R(1'b0));
FDRE \storage_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[24]),
        .Q(storage_r[8]),
        .R(1'b0));
FDRE \storage_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[25]),
        .Q(storage_r[9]),
        .R(1'b0));
FDRE storage_v_r_reg
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r0),
        .Q(storage_v_r),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[0]),
        .Q(\n_0_tx_pe_data_r_reg[0] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[10]),
        .Q(\n_0_tx_pe_data_r_reg[10] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[11]),
        .Q(\n_0_tx_pe_data_r_reg[11] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[12]),
        .Q(\n_0_tx_pe_data_r_reg[12] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[13]),
        .Q(\n_0_tx_pe_data_r_reg[13] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[14]),
        .Q(\n_0_tx_pe_data_r_reg[14] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[15]),
        .Q(\n_0_tx_pe_data_r_reg[15] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[0]),
        .Q(\n_0_tx_pe_data_r_reg[16] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[1]),
        .Q(\n_0_tx_pe_data_r_reg[17] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[2]),
        .Q(\n_0_tx_pe_data_r_reg[18] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[3]),
        .Q(\n_0_tx_pe_data_r_reg[19] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[1]),
        .Q(\n_0_tx_pe_data_r_reg[1] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[4]),
        .Q(\n_0_tx_pe_data_r_reg[20] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[5]),
        .Q(\n_0_tx_pe_data_r_reg[21] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[6]),
        .Q(\n_0_tx_pe_data_r_reg[22] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[7]),
        .Q(\n_0_tx_pe_data_r_reg[23] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[8]),
        .Q(\n_0_tx_pe_data_r_reg[24] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[9]),
        .Q(\n_0_tx_pe_data_r_reg[25] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[10]),
        .Q(\n_0_tx_pe_data_r_reg[26] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[11]),
        .Q(\n_0_tx_pe_data_r_reg[27] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[12]),
        .Q(\n_0_tx_pe_data_r_reg[28] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[13]),
        .Q(\n_0_tx_pe_data_r_reg[29] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[2]),
        .Q(\n_0_tx_pe_data_r_reg[2] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[14]),
        .Q(\n_0_tx_pe_data_r_reg[30] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(E),
        .D(s_axi_tx_tdata[15]),
        .Q(\n_0_tx_pe_data_r_reg[31] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[3]),
        .Q(\n_0_tx_pe_data_r_reg[3] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[4]),
        .Q(\n_0_tx_pe_data_r_reg[4] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[5]),
        .Q(\n_0_tx_pe_data_r_reg[5] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[6]),
        .Q(\n_0_tx_pe_data_r_reg[6] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[7]),
        .Q(\n_0_tx_pe_data_r_reg[7] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[8]),
        .Q(\n_0_tx_pe_data_r_reg[8] ),
        .R(1'b0));
FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(E),
        .D(storage_r[9]),
        .Q(\n_0_tx_pe_data_r_reg[9] ),
        .R(1'b0));
LUT4 #(
    .INIT(16'h080C)) 
     \tx_pe_data_v_r[1]_i_1 
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .I2(tx_dst_rdy),
        .I3(I2),
        .O(p_1_out));
FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(E),
        .D(storage_v_r),
        .Q(\n_0_tx_pe_data_v_r_reg[0] ),
        .R(1'b0));
FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(E),
        .D(p_1_out),
        .Q(\n_0_tx_pe_data_v_r_reg[1] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_VALID_DATA_COUNTER" *) 
module aurora_8b10b_0_aurora_8b10b_0_VALID_DATA_COUNTER
   (D,
    Q,
    O1,
    O2,
    I5,
    FRAME_ERR_RESULT0,
    end_storage_r0,
    stage_2_start_with_data_r,
    stage_3_end_storage_r,
    I1,
    I2,
    stage_2_end_after_start_r,
    stage_2_end_before_start_r,
    I3,
    SR,
    I4,
    user_clk);
  output [0:0]D;
  output [1:0]Q;
  output O1;
  output [0:0]O2;
  output [0:0]I5;
  output FRAME_ERR_RESULT0;
  output end_storage_r0;
  input stage_2_start_with_data_r;
  input stage_3_end_storage_r;
  input [1:0]I1;
  input I2;
  input stage_2_end_after_start_r;
  input stage_2_end_before_start_r;
  input I3;
  input [0:0]SR;
  input [1:0]I4;
  input user_clk;

  wire [0:0]D;
  wire FRAME_ERR_RESULT0;
  wire [1:0]I1;
  wire I2;
  wire I3;
  wire [1:0]I4;
  wire [0:0]I5;
  wire O1;
  wire [0:0]O2;
  wire [1:0]Q;
  wire [0:0]SR;
  wire end_storage_r0;
  wire n_0_end_storage_r_i_2;
  wire stage_2_end_after_start_r;
  wire stage_2_end_before_start_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire user_clk;

FDRE \COUNT_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I4[1]),
        .Q(Q[1]),
        .R(SR));
FDRE \COUNT_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(I4[0]),
        .Q(Q[0]),
        .R(SR));
LUT6 #(
    .INIT(64'hFFFECFCCCFCECFCC)) 
     FRAME_ERR_RESULT_i_1
       (.I0(n_0_end_storage_r_i_2),
        .I1(I2),
        .I2(stage_2_start_with_data_r),
        .I3(stage_2_end_after_start_r),
        .I4(stage_2_end_before_start_r),
        .I5(I3),
        .O(FRAME_ERR_RESULT0));
LUT4 #(
    .INIT(16'h3339)) 
     \RX_REM[0]_i_1 
       (.I0(Q[0]),
        .I1(I1[0]),
        .I2(stage_2_start_with_data_r),
        .I3(stage_3_end_storage_r),
        .O(I5));
LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEEE)) 
     SRC_RDY_N_i_3
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(Q[1]),
        .I3(I1[1]),
        .I4(Q[0]),
        .I5(I1[0]),
        .O(O1));
LUT6 #(
    .INIT(64'hFFFFFFFCFFFEFFFF)) 
     \STORAGE_CE[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(stage_2_start_with_data_r),
        .I3(stage_3_end_storage_r),
        .I4(I1[1]),
        .I5(I1[0]),
        .O(D));
LUT4 #(
    .INIT(16'hF022)) 
     end_storage_r_i_1
       (.I0(stage_2_end_before_start_r),
        .I1(n_0_end_storage_r_i_2),
        .I2(stage_2_end_after_start_r),
        .I3(stage_2_start_with_data_r),
        .O(end_storage_r0));
LUT4 #(
    .INIT(16'h0001)) 
     end_storage_r_i_2
       (.I0(Q[1]),
        .I1(I1[1]),
        .I2(Q[0]),
        .I3(I1[0]),
        .O(n_0_end_storage_r_i_2));
LUT6 #(
    .INIT(64'hE1F1F0E0F0E0F1F0)) 
     \storage_count_r[0]_i_1 
       (.I0(stage_2_start_with_data_r),
        .I1(stage_3_end_storage_r),
        .I2(Q[1]),
        .I3(I1[1]),
        .I4(Q[0]),
        .I5(I1[0]),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync
   (s_out_d1_cdc_to_14,
    s_out_d2_15,
    s_out_d3_16,
    s_out_d4_17,
    s_out_d5_18,
    s_out_d6_19,
    s_out_d7_20,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    reset,
    init_clk_in);
  output s_out_d1_cdc_to_14;
  output s_out_d2_15;
  output s_out_d3_16;
  output s_out_d4_17;
  output s_out_d5_18;
  output s_out_d6_19;
  output s_out_d7_20;
  output [1:0]O18;
  output [1:0]O19;
  output [1:0]O20;
  output [1:0]O21;
  output [1:0]O22;
  output [1:0]O23;
  input reset;
  input init_clk_in;

  wire [1:0]O18;
  wire [1:0]O19;
  wire [1:0]O20;
  wire [1:0]O21;
  wire [1:0]O22;
  wire [1:0]O23;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_14;
  wire s_out_d2_15;
  wire s_out_d3_16;
  wire s_out_d4_17;
  wire s_out_d5_18;
  wire s_out_d6_19;
  wire s_out_d7_20;

  assign p_level_in_int = reset;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_14));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_15));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O19[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O20[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O20[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O21[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O21[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O22[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O22[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O23[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O23[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_16));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_17));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_18));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_19));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_20));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O18[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O18[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O19[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_0
   (O1,
    s_out_d1_cdc_to_28,
    s_out_d2_29,
    s_out_d3_30,
    s_out_d4_31,
    s_out_d5_32,
    s_out_d6_33,
    s_out_d7_34,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    gtrxreset_i,
    init_clk_in);
  output O1;
  output s_out_d1_cdc_to_28;
  output s_out_d2_29;
  output s_out_d3_30;
  output s_out_d4_31;
  output s_out_d5_32;
  output s_out_d6_33;
  output s_out_d7_34;
  output [1:0]O30;
  output [1:0]O31;
  output [1:0]O32;
  output [1:0]O33;
  output [1:0]O34;
  output [1:0]O35;
  input gtrxreset_i;
  input init_clk_in;

  wire [1:0]O30;
  wire [1:0]O31;
  wire [1:0]O32;
  wire [1:0]O33;
  wire [1:0]O34;
  wire [1:0]O35;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_28;
  wire s_out_d2_29;
  wire s_out_d3_30;
  wire s_out_d4_31;
  wire s_out_d5_32;
  wire s_out_d6_33;
  wire s_out_d7_34;

  assign O1 = s_level_out_d4;
  assign p_level_in_int = gtrxreset_i;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_28));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_29));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O31[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O32[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O32[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O33[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O33[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O34[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O34[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O35[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O35[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_30));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_31));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_32));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_33));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_34));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O30[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O30[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O31[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_1
   (txresetdone_s3,
    s_out_d1_cdc_to_56,
    s_out_d2_57,
    s_out_d3_58,
    s_out_d4_59,
    s_out_d5_60,
    s_out_d6_61,
    s_out_d7_62,
    O54,
    O55,
    O56,
    O57,
    O58,
    O59,
    O1,
    txfsm_txresetdone_r,
    init_clk_in,
    reset_time_out,
    I1,
    out,
    I2,
    cplllock_sync);
  output txresetdone_s3;
  output s_out_d1_cdc_to_56;
  output s_out_d2_57;
  output s_out_d3_58;
  output s_out_d4_59;
  output s_out_d5_60;
  output s_out_d6_61;
  output s_out_d7_62;
  output [1:0]O54;
  output [1:0]O55;
  output [1:0]O56;
  output [1:0]O57;
  output [1:0]O58;
  output [1:0]O59;
  output O1;
  input txfsm_txresetdone_r;
  input init_clk_in;
  input reset_time_out;
  input I1;
  input [0:0]out;
  input I2;
  input cplllock_sync;

  wire I1;
  wire I2;
  wire O1;
  wire [1:0]O54;
  wire [1:0]O55;
  wire [1:0]O56;
  wire [1:0]O57;
  wire [1:0]O58;
  wire [1:0]O59;
  wire cplllock_sync;
  wire init_clk_in;
  wire [0:0]out;
  wire p_level_in_int;
  wire reset_time_out;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_56;
  wire s_out_d2_57;
  wire s_out_d3_58;
  wire s_out_d4_59;
  wire s_out_d5_60;
  wire s_out_d6_61;
  wire s_out_d7_62;

  assign p_level_in_int = txfsm_txresetdone_r;
  assign txresetdone_s3 = s_level_out_d4;
LUT6 #(
    .INIT(64'hBAFFBAFFBAFFBA00)) 
     \FSM_sequential_tx_state[3]_i_8 
       (.I0(s_level_out_d4),
        .I1(reset_time_out),
        .I2(I1),
        .I3(out),
        .I4(I2),
        .I5(cplllock_sync),
        .O(O1));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_56));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_57));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O55[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O56[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O56[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O57[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O57[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O58[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O58[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O59[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O59[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_58));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_59));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_60));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_61));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_62));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O54[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O54[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O55[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_10
   (s_out_d1_cdc_to_98,
    s_out_d2_99,
    s_out_d3_100,
    s_out_d4_101,
    s_out_d5_102,
    s_out_d6_103,
    s_out_d7_104,
    O90,
    O91,
    O92,
    O93,
    O94,
    O95,
    rxpmaresetdone_i,
    init_clk_in);
  output s_out_d1_cdc_to_98;
  output s_out_d2_99;
  output s_out_d3_100;
  output s_out_d4_101;
  output s_out_d5_102;
  output s_out_d6_103;
  output s_out_d7_104;
  output [1:0]O90;
  output [1:0]O91;
  output [1:0]O92;
  output [1:0]O93;
  output [1:0]O94;
  output [1:0]O95;
  input rxpmaresetdone_i;
  input init_clk_in;

  wire [1:0]O90;
  wire [1:0]O91;
  wire [1:0]O92;
  wire [1:0]O93;
  wire [1:0]O94;
  wire [1:0]O95;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_98;
  wire s_out_d2_99;
  wire s_out_d3_100;
  wire s_out_d4_101;
  wire s_out_d5_102;
  wire s_out_d6_103;
  wire s_out_d7_104;

  assign p_level_in_int = rxpmaresetdone_i;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_98));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_99));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O91[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O92[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O92[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O93[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O93[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O94[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O94[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O95[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O95[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_100));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_101));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_102));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_103));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_104));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O90[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O90[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O91[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_11
   (s_out_d1_cdc_to_105,
    s_out_d2_106,
    s_out_d3_107,
    s_out_d4_108,
    s_out_d5_109,
    s_out_d6_110,
    s_out_d7_111,
    O96,
    O97,
    O98,
    O99,
    O100,
    O101,
    txpmaresetdone_i,
    init_clk_in);
  output s_out_d1_cdc_to_105;
  output s_out_d2_106;
  output s_out_d3_107;
  output s_out_d4_108;
  output s_out_d5_109;
  output s_out_d6_110;
  output s_out_d7_111;
  output [1:0]O96;
  output [1:0]O97;
  output [1:0]O98;
  output [1:0]O99;
  output [1:0]O100;
  output [1:0]O101;
  input txpmaresetdone_i;
  input init_clk_in;

  wire [1:0]O100;
  wire [1:0]O101;
  wire [1:0]O96;
  wire [1:0]O97;
  wire [1:0]O98;
  wire [1:0]O99;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_105;
  wire s_out_d2_106;
  wire s_out_d3_107;
  wire s_out_d4_108;
  wire s_out_d5_109;
  wire s_out_d6_110;
  wire s_out_d7_111;

  assign p_level_in_int = txpmaresetdone_i;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_105));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_106));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O97[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O98[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O98[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O99[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O99[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O100[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O100[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O101[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O101[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_107));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_108));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_109));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_110));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_111));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O96[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O96[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O97[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_12
   (s_out_d1_cdc_to_147,
    s_out_d2_148,
    s_out_d3_149,
    s_out_d4_150,
    s_out_d5_151,
    s_out_d6_152,
    s_out_d7_153,
    O132,
    O133,
    O134,
    O135,
    O136,
    O137,
    E,
    O1,
    rxfsm_rxresetdone_r,
    init_clk_in,
    out,
    I1,
    I2,
    I3,
    I4,
    cplllock_sync,
    mmcm_lock_reclocked,
    I5,
    time_tlock_max,
    I6,
    data_valid_sync);
  output s_out_d1_cdc_to_147;
  output s_out_d2_148;
  output s_out_d3_149;
  output s_out_d4_150;
  output s_out_d5_151;
  output s_out_d6_152;
  output s_out_d7_153;
  output [1:0]O132;
  output [1:0]O133;
  output [1:0]O134;
  output [1:0]O135;
  output [1:0]O136;
  output [1:0]O137;
  output [0:0]E;
  output O1;
  input rxfsm_rxresetdone_r;
  input init_clk_in;
  input [3:0]out;
  input I1;
  input I2;
  input I3;
  input I4;
  input cplllock_sync;
  input mmcm_lock_reclocked;
  input I5;
  input time_tlock_max;
  input I6;
  input data_valid_sync;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire O1;
  wire [1:0]O132;
  wire [1:0]O133;
  wire [1:0]O134;
  wire [1:0]O135;
  wire [1:0]O136;
  wire [1:0]O137;
  wire cplllock_sync;
  wire data_valid_sync;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_sequential_rx_state[3]_i_10 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_3 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_7 ;
  wire n_0_reset_time_out_i_5;
  wire n_0_reset_time_out_i_6;
  wire [3:0]out;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_147;
  wire s_out_d2_148;
  wire s_out_d3_149;
  wire s_out_d4_150;
  wire s_out_d5_151;
  wire s_out_d6_152;
  wire s_out_d7_153;
  wire time_tlock_max;

  assign p_level_in_int = rxfsm_rxresetdone_r;
LUT6 #(
    .INIT(64'hAFA0EFEFAFA0EFE0)) 
     \FSM_sequential_rx_state[3]_i_10 
       (.I0(s_level_out_d4),
        .I1(I4),
        .I2(out[1]),
        .I3(mmcm_lock_reclocked),
        .I4(I5),
        .I5(time_tlock_max),
        .O(\n_0_FSM_sequential_rx_state[3]_i_10 ));
LUT5 #(
    .INIT(32'hB8BBB888)) 
     \FSM_sequential_rx_state[3]_i_3 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_7 ),
        .I1(out[0]),
        .I2(I2),
        .I3(out[2]),
        .I4(I3),
        .O(\n_0_FSM_sequential_rx_state[3]_i_3 ));
LUT5 #(
    .INIT(32'hBBB8BBBB)) 
     \FSM_sequential_rx_state[3]_i_7 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_10 ),
        .I1(out[2]),
        .I2(I4),
        .I3(cplllock_sync),
        .I4(out[1]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_7 ));
MUXF7 \FSM_sequential_rx_state_reg[3]_i_1 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_3 ),
        .I1(I1),
        .O(E),
        .S(out[3]));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_147));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_148));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O133[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O134[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O134[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O135[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O135[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O136[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O136[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O137[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O137[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_149));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_150));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_151));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_152));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_153));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O132[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O132[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O133[1]));
LUT6 #(
    .INIT(64'hAFCFA0CFAFCFAFCF)) 
     reset_time_out_i_5
       (.I0(s_level_out_d4),
        .I1(I6),
        .I2(out[2]),
        .I3(out[1]),
        .I4(cplllock_sync),
        .I5(data_valid_sync),
        .O(n_0_reset_time_out_i_5));
LUT5 #(
    .INIT(32'hAFA0CFCF)) 
     reset_time_out_i_6
       (.I0(s_level_out_d4),
        .I1(mmcm_lock_reclocked),
        .I2(out[2]),
        .I3(cplllock_sync),
        .I4(out[1]),
        .O(n_0_reset_time_out_i_6));
MUXF7 reset_time_out_reg_i_3
       (.I0(n_0_reset_time_out_i_5),
        .I1(n_0_reset_time_out_i_6),
        .O(O1),
        .S(out[0]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_13
   (cplllock_sync,
    s_out_d1_cdc_to_168,
    s_out_d2_169,
    s_out_d3_170,
    s_out_d4_171,
    s_out_d5_172,
    s_out_d6_173,
    s_out_d7_174,
    O150,
    O151,
    O152,
    O153,
    O154,
    O155,
    O1,
    O2,
    init_clk_in,
    out,
    recclk_mon_count_reset);
  output cplllock_sync;
  output s_out_d1_cdc_to_168;
  output s_out_d2_169;
  output s_out_d3_170;
  output s_out_d4_171;
  output s_out_d5_172;
  output s_out_d6_173;
  output s_out_d7_174;
  output [1:0]O150;
  output [1:0]O151;
  output [1:0]O152;
  output [1:0]O153;
  output [1:0]O154;
  output [1:0]O155;
  output O1;
  input O2;
  input init_clk_in;
  input [3:0]out;
  input recclk_mon_count_reset;

  wire O1;
  wire [1:0]O150;
  wire [1:0]O151;
  wire [1:0]O152;
  wire [1:0]O153;
  wire [1:0]O154;
  wire [1:0]O155;
  wire init_clk_in;
  wire [3:0]out;
  wire p_level_in_int;
  wire recclk_mon_count_reset;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_168;
  wire s_out_d2_169;
  wire s_out_d3_170;
  wire s_out_d4_171;
  wire s_out_d5_172;
  wire s_out_d6_173;
  wire s_out_d7_174;

  assign cplllock_sync = s_level_out_d3;
  assign p_level_in_int = O2;
LUT6 #(
    .INIT(64'hFFFFFF7F00000022)) 
     adapt_count_reset_i_1
       (.I0(out[0]),
        .I1(out[1]),
        .I2(s_level_out_d3),
        .I3(out[2]),
        .I4(out[3]),
        .I5(recclk_mon_count_reset),
        .O(O1));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_168));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_169));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O151[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O152[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O152[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O153[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O153[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O154[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O154[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O155[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O155[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_170));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_171));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_172));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_173));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_174));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O150[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O150[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O151[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_14
   (data_valid_sync,
    s_out_d1_cdc_to_161,
    s_out_d2_162,
    s_out_d3_163,
    s_out_d4_164,
    s_out_d5_165,
    s_out_d6_166,
    s_out_d7_167,
    O144,
    O145,
    O146,
    O147,
    O148,
    O149,
    O1,
    O2,
    D,
    O3,
    gt_rxuserrdy_i,
    init_clk_in,
    out,
    I1,
    I2,
    I3,
    I4,
    rx_state16_out,
    I5,
    I6,
    I7,
    time_out_wait_bypass_s3,
    I8);
  output data_valid_sync;
  output s_out_d1_cdc_to_161;
  output s_out_d2_162;
  output s_out_d3_163;
  output s_out_d4_164;
  output s_out_d5_165;
  output s_out_d6_166;
  output s_out_d7_167;
  output [1:0]O144;
  output [1:0]O145;
  output [1:0]O146;
  output [1:0]O147;
  output [1:0]O148;
  output [1:0]O149;
  output O1;
  output O2;
  output [2:0]D;
  output O3;
  input gt_rxuserrdy_i;
  input init_clk_in;
  input [3:0]out;
  input I1;
  input I2;
  input I3;
  input I4;
  input rx_state16_out;
  input I5;
  input I6;
  input I7;
  input time_out_wait_bypass_s3;
  input I8;

  wire [2:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire O1;
  wire [1:0]O144;
  wire [1:0]O145;
  wire [1:0]O146;
  wire [1:0]O147;
  wire [1:0]O148;
  wire [1:0]O149;
  wire O2;
  wire O3;
  wire init_clk_in;
  wire \n_0_FSM_sequential_rx_state[0]_i_3 ;
  wire \n_0_FSM_sequential_rx_state[1]_i_2 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_6 ;
  wire n_0_reset_time_out_i_2__0;
  wire n_0_rx_fsm_reset_done_int_i_3;
  wire n_0_rx_fsm_reset_done_int_i_4;
  wire [3:0]out;
  wire p_level_in_int;
  wire rx_fsm_reset_done_int;
  wire rx_state16_out;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_161;
  wire s_out_d2_162;
  wire s_out_d3_163;
  wire s_out_d4_164;
  wire s_out_d5_165;
  wire s_out_d6_166;
  wire s_out_d7_167;
  wire time_out_wait_bypass_s3;

  assign data_valid_sync = s_level_out_d3;
  assign p_level_in_int = gt_rxuserrdy_i;
LUT6 #(
    .INIT(64'h000000000010FFFF)) 
     \FSM_sequential_rx_state[0]_i_3 
       (.I0(out[1]),
        .I1(s_level_out_d3),
        .I2(I6),
        .I3(I3),
        .I4(out[0]),
        .I5(out[2]),
        .O(\n_0_FSM_sequential_rx_state[0]_i_3 ));
LUT6 #(
    .INIT(64'h888833338BBB0000)) 
     \FSM_sequential_rx_state[1]_i_1 
       (.I0(\n_0_FSM_sequential_rx_state[1]_i_2 ),
        .I1(out[3]),
        .I2(rx_state16_out),
        .I3(out[2]),
        .I4(out[0]),
        .I5(out[1]),
        .O(D[1]));
LUT5 #(
    .INIT(32'h11111011)) 
     \FSM_sequential_rx_state[1]_i_2 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(s_level_out_d3),
        .I3(I6),
        .I4(I3),
        .O(\n_0_FSM_sequential_rx_state[1]_i_2 ));
LUT6 #(
    .INIT(64'h00000000000FFF4F)) 
     \FSM_sequential_rx_state[3]_i_4 
       (.I0(I3),
        .I1(I6),
        .I2(out[0]),
        .I3(s_level_out_d3),
        .I4(out[1]),
        .I5(out[2]),
        .O(O3));
LUT5 #(
    .INIT(32'h8888B8BB)) 
     \FSM_sequential_rx_state[3]_i_6 
       (.I0(\n_0_FSM_sequential_rx_state[1]_i_2 ),
        .I1(out[0]),
        .I2(out[1]),
        .I3(time_out_wait_bypass_s3),
        .I4(out[2]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_6 ));
MUXF7 \FSM_sequential_rx_state_reg[0]_i_1 
       (.I0(I5),
        .I1(\n_0_FSM_sequential_rx_state[0]_i_3 ),
        .O(D[0]),
        .S(out[3]));
MUXF7 \FSM_sequential_rx_state_reg[3]_i_2 
       (.I0(I7),
        .I1(\n_0_FSM_sequential_rx_state[3]_i_6 ),
        .O(D[2]),
        .S(out[3]));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_161));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_162));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O145[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O146[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O146[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O147[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O147[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O148[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O148[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O149[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O149[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_163));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_164));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_165));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_166));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_167));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O144[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O144[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O145[1]));
LUT5 #(
    .INIT(32'hB8FFB800)) 
     reset_time_out_i_1__0
       (.I0(n_0_reset_time_out_i_2__0),
        .I1(out[3]),
        .I2(I1),
        .I3(I2),
        .I4(I3),
        .O(O1));
LUT4 #(
    .INIT(16'h001D)) 
     reset_time_out_i_2__0
       (.I0(out[0]),
        .I1(s_level_out_d3),
        .I2(out[1]),
        .I3(out[2]),
        .O(n_0_reset_time_out_i_2__0));
LUT6 #(
    .INIT(64'hABFBFFFFA8080000)) 
     rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int),
        .I1(n_0_rx_fsm_reset_done_int_i_3),
        .I2(out[0]),
        .I3(n_0_rx_fsm_reset_done_int_i_4),
        .I4(out[3]),
        .I5(I4),
        .O(O2));
LUT5 #(
    .INIT(32'h00001000)) 
     rx_fsm_reset_done_int_i_2
       (.I0(out[0]),
        .I1(out[2]),
        .I2(s_level_out_d3),
        .I3(I8),
        .I4(I3),
        .O(rx_fsm_reset_done_int));
LUT5 #(
    .INIT(32'h000020AA)) 
     rx_fsm_reset_done_int_i_3
       (.I0(out[1]),
        .I1(I3),
        .I2(I8),
        .I3(s_level_out_d3),
        .I4(out[2]),
        .O(n_0_rx_fsm_reset_done_int_i_3));
LUT5 #(
    .INIT(32'h00004544)) 
     rx_fsm_reset_done_int_i_4
       (.I0(out[1]),
        .I1(s_level_out_d3),
        .I2(I3),
        .I3(I6),
        .I4(out[2]),
        .O(n_0_rx_fsm_reset_done_int_i_4));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_15
   (s_out_d1_cdc_to_154,
    s_out_d2_155,
    s_out_d3_156,
    s_out_d4_157,
    s_out_d5_158,
    s_out_d6_159,
    s_out_d7_160,
    O138,
    O139,
    O140,
    O141,
    O142,
    O143,
    O1,
    SR,
    init_clk_in,
    mmcm_lock_reclocked,
    Q,
    I1);
  output s_out_d1_cdc_to_154;
  output s_out_d2_155;
  output s_out_d3_156;
  output s_out_d4_157;
  output s_out_d5_158;
  output s_out_d6_159;
  output s_out_d7_160;
  output [1:0]O138;
  output [1:0]O139;
  output [1:0]O140;
  output [1:0]O141;
  output [1:0]O142;
  output [1:0]O143;
  output O1;
  output [0:0]SR;
  input init_clk_in;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input I1;

  wire I1;
  wire O1;
  wire [1:0]O138;
  wire [1:0]O139;
  wire [1:0]O140;
  wire [1:0]O141;
  wire [1:0]O142;
  wire [1:0]O143;
  wire [1:0]Q;
  wire [0:0]SR;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_154;
  wire s_out_d2_155;
  wire s_out_d3_156;
  wire s_out_d4_157;
  wire s_out_d5_158;
  wire s_out_d6_159;
  wire s_out_d7_160;

LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b1),
        .O(p_level_in_int));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_154));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O139[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O139[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O140[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O140[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O141[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O141[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O142[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O142[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O143[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(1'b0),
        .O(O143[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d2_155));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d3_156));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d4_157));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d5_158));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d6_159));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(s_out_d7_160));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O138[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O138[0]));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1__0 
       (.I0(s_level_out_d3),
        .O(SR));
LUT5 #(
    .INIT(32'hEAAA0000)) 
     mmcm_lock_reclocked_i_1__0
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(I1),
        .I3(Q[0]),
        .I4(s_level_out_d3),
        .O(O1));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_16
   (rxpmaresetdone_s,
    rxpmaresetdone_ss,
    s_out_d1_cdc_to_112,
    s_out_d2_113,
    s_out_d3_114,
    s_out_d4_115,
    s_out_d5_116,
    s_out_d6_117,
    s_out_d7_118,
    O102,
    O103,
    O104,
    O105,
    O106,
    O107,
    init_clk_in);
  output rxpmaresetdone_s;
  output rxpmaresetdone_ss;
  output s_out_d1_cdc_to_112;
  output s_out_d2_113;
  output s_out_d3_114;
  output s_out_d4_115;
  output s_out_d5_116;
  output s_out_d6_117;
  output s_out_d7_118;
  output [1:0]O102;
  output [1:0]O103;
  output [1:0]O104;
  output [1:0]O105;
  output [1:0]O106;
  output [1:0]O107;
  input init_clk_in;

  wire [1:0]O102;
  wire [1:0]O103;
  wire [1:0]O104;
  wire [1:0]O105;
  wire [1:0]O106;
  wire [1:0]O107;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_112;
  wire s_out_d2_113;
  wire s_out_d3_114;
  wire s_out_d4_115;
  wire s_out_d5_116;
  wire s_out_d6_117;
  wire s_out_d7_118;

  assign rxpmaresetdone_s = s_level_out_d3;
  assign rxpmaresetdone_ss = s_level_out_d4;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b1),
        .O(p_level_in_int));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_112));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O103[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O103[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O104[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O104[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O105[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O105[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O106[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O106[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O107[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(1'b0),
        .O(O107[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d2_113));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d3_114));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d4_115));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d5_116));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d6_117));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(s_out_d7_118));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O102[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O102[0]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_17
   (s_out_d1_cdc_to_119,
    s_out_d2_120,
    s_out_d3_121,
    s_out_d4_122,
    s_out_d5_123,
    s_out_d6_124,
    s_out_d7_125,
    O108,
    O109,
    O110,
    O111,
    O112,
    O113,
    rxpmaresetdone_i0,
    pmaresetdone_fallingedge_detect,
    user_clk,
    rxpmaresetdone_rx_s);
  output s_out_d1_cdc_to_119;
  output s_out_d2_120;
  output s_out_d3_121;
  output s_out_d4_122;
  output s_out_d5_123;
  output s_out_d6_124;
  output s_out_d7_125;
  output [1:0]O108;
  output [1:0]O109;
  output [1:0]O110;
  output [1:0]O111;
  output [1:0]O112;
  output [1:0]O113;
  output rxpmaresetdone_i0;
  input pmaresetdone_fallingedge_detect;
  input user_clk;
  input rxpmaresetdone_rx_s;

  wire [1:0]O108;
  wire [1:0]O109;
  wire [1:0]O110;
  wire [1:0]O111;
  wire [1:0]O112;
  wire [1:0]O113;
  wire p_level_in_int;
  wire rxpmaresetdone_i0;
  wire rxpmaresetdone_rx_s;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_119;
  wire s_out_d2_120;
  wire s_out_d3_121;
  wire s_out_d4_122;
  wire s_out_d5_123;
  wire s_out_d6_124;
  wire s_out_d7_125;
  wire user_clk;

  assign p_level_in_int = pmaresetdone_fallingedge_detect;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_119));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_120));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O109[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O110[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O110[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O111[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O111[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O112[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O112[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O113[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O113[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_121));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_122));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_123));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_124));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_125));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O108[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O108[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O109[1]));
LUT2 #(
    .INIT(4'h8)) 
     rxpmaresetdone_i_i_1
       (.I0(s_level_out_d3),
        .I1(rxpmaresetdone_rx_s),
        .O(rxpmaresetdone_i0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_18
   (s_out_d1_cdc_to_175,
    s_out_d2_176,
    s_out_d3_177,
    s_out_d4_178,
    s_out_d5_179,
    s_out_d6_180,
    s_out_d7_181,
    O156,
    O157,
    O158,
    O159,
    O160,
    O161,
    init_clk_in);
  output s_out_d1_cdc_to_175;
  output s_out_d2_176;
  output s_out_d3_177;
  output s_out_d4_178;
  output s_out_d5_179;
  output s_out_d6_180;
  output s_out_d7_181;
  output [1:0]O156;
  output [1:0]O157;
  output [1:0]O158;
  output [1:0]O159;
  output [1:0]O160;
  output [1:0]O161;
  input init_clk_in;

  wire [1:0]O156;
  wire [1:0]O157;
  wire [1:0]O158;
  wire [1:0]O159;
  wire [1:0]O160;
  wire [1:0]O161;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_175;
  wire s_out_d2_176;
  wire s_out_d3_177;
  wire s_out_d4_178;
  wire s_out_d5_179;
  wire s_out_d6_180;
  wire s_out_d7_181;

LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b1),
        .O(p_level_in_int));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_175));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O157[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O157[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O158[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O158[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O159[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O159[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O160[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O160[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O161[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(1'b0),
        .O(O161[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d2_176));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d3_177));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d4_178));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d5_179));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d6_180));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(s_out_d7_181));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O156[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O156[0]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_19
   (O1,
    s_out_d1_cdc_to_126,
    s_out_d2_127,
    s_out_d3_128,
    s_out_d4_129,
    s_out_d5_130,
    s_out_d6_131,
    s_out_d7_132,
    O114,
    O115,
    O116,
    O117,
    O118,
    O119,
    O2,
    I1,
    user_clk);
  output O1;
  output s_out_d1_cdc_to_126;
  output s_out_d2_127;
  output s_out_d3_128;
  output s_out_d4_129;
  output s_out_d5_130;
  output s_out_d6_131;
  output s_out_d7_132;
  output [1:0]O114;
  output [1:0]O115;
  output [1:0]O116;
  output [1:0]O117;
  output [1:0]O118;
  output [1:0]O119;
  output O2;
  input I1;
  input user_clk;

  wire [1:0]O114;
  wire [1:0]O115;
  wire [1:0]O116;
  wire [1:0]O117;
  wire [1:0]O118;
  wire [1:0]O119;
  wire O2;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_126;
  wire s_out_d2_127;
  wire s_out_d3_128;
  wire s_out_d4_129;
  wire s_out_d5_130;
  wire s_out_d6_131;
  wire s_out_d7_132;
  wire user_clk;

  assign O1 = s_level_out_d4;
  assign p_level_in_int = I1;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_126));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_127));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O115[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O116[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O116[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O117[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O117[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O118[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O118[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O119[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O119[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_128));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_129));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_130));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_131));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_132));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O114[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O114[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O115[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1__0 
       (.I0(s_level_out_d4),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_2
   (cplllock_sync,
    s_out_d1_cdc_to_70,
    s_out_d2_71,
    s_out_d3_72,
    s_out_d4_73,
    s_out_d5_74,
    s_out_d6_75,
    s_out_d7_76,
    O66,
    O67,
    O68,
    O69,
    O70,
    O71,
    O1,
    E,
    O2,
    init_clk_in,
    out,
    reset_time_out,
    mmcm_lock_reclocked,
    txresetdone_s3,
    wait_time_done,
    I1,
    I2,
    I3,
    I4,
    I5);
  output cplllock_sync;
  output s_out_d1_cdc_to_70;
  output s_out_d2_71;
  output s_out_d3_72;
  output s_out_d4_73;
  output s_out_d5_74;
  output s_out_d6_75;
  output s_out_d7_76;
  output [1:0]O66;
  output [1:0]O67;
  output [1:0]O68;
  output [1:0]O69;
  output [1:0]O70;
  output [1:0]O71;
  output O1;
  output [0:0]E;
  input O2;
  input init_clk_in;
  input [3:0]out;
  input reset_time_out;
  input mmcm_lock_reclocked;
  input txresetdone_s3;
  input wait_time_done;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;

  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire O1;
  wire [1:0]O66;
  wire [1:0]O67;
  wire [1:0]O68;
  wire [1:0]O69;
  wire [1:0]O70;
  wire [1:0]O71;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_sequential_tx_state[3]_i_7 ;
  wire \n_0_FSM_sequential_tx_state_reg[3]_i_3 ;
  wire n_0_reset_time_out_i_3;
  wire [3:0]out;
  wire p_level_in_int;
  wire reset_time_out;
  wire reset_time_out_0;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_70;
  wire s_out_d2_71;
  wire s_out_d3_72;
  wire s_out_d4_73;
  wire s_out_d5_74;
  wire s_out_d6_75;
  wire s_out_d7_76;
  wire txresetdone_s3;
  wire wait_time_done;

  assign cplllock_sync = s_level_out_d3;
  assign p_level_in_int = O2;
LUT6 #(
    .INIT(64'h00AA00AA0FCF0FC0)) 
     \FSM_sequential_tx_state[3]_i_1 
       (.I0(\n_0_FSM_sequential_tx_state_reg[3]_i_3 ),
        .I1(wait_time_done),
        .I2(I1),
        .I3(out[3]),
        .I4(I2),
        .I5(out[0]),
        .O(E));
LUT6 #(
    .INIT(64'hBA00BA00BAFFBA00)) 
     \FSM_sequential_tx_state[3]_i_7 
       (.I0(mmcm_lock_reclocked),
        .I1(reset_time_out),
        .I2(I4),
        .I3(out[2]),
        .I4(I5),
        .I5(s_level_out_d3),
        .O(\n_0_FSM_sequential_tx_state[3]_i_7 ));
MUXF7 \FSM_sequential_tx_state_reg[3]_i_3 
       (.I0(\n_0_FSM_sequential_tx_state[3]_i_7 ),
        .I1(I3),
        .O(\n_0_FSM_sequential_tx_state_reg[3]_i_3 ),
        .S(out[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_70));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_71));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O67[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O68[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O68[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O69[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O69[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O70[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O70[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O71[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O71[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_72));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_73));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_74));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_75));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_76));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O66[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O66[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O67[1]));
LUT6 #(
    .INIT(64'hEFEFEFAA202020AA)) 
     reset_time_out_i_1
       (.I0(reset_time_out_0),
        .I1(out[3]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .I5(reset_time_out),
        .O(O1));
LUT6 #(
    .INIT(64'h4C554C555F554F55)) 
     reset_time_out_i_2
       (.I0(out[3]),
        .I1(n_0_reset_time_out_i_3),
        .I2(out[2]),
        .I3(out[0]),
        .I4(mmcm_lock_reclocked),
        .I5(out[1]),
        .O(reset_time_out_0));
LUT5 #(
    .INIT(32'hF4040404)) 
     reset_time_out_i_3
       (.I0(out[3]),
        .I1(s_level_out_d3),
        .I2(out[2]),
        .I3(out[1]),
        .I4(txresetdone_s3),
        .O(n_0_reset_time_out_i_3));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_20
   (s_out_d1_cdc_to_133,
    s_out_d2_134,
    s_out_d3_135,
    s_out_d4_136,
    s_out_d5_137,
    s_out_d6_138,
    s_out_d7_139,
    O120,
    O121,
    O122,
    O123,
    O124,
    O125,
    O1,
    O2,
    I1,
    user_clk,
    I2,
    wait_bypass_count_reg,
    I3,
    I4,
    I5);
  output s_out_d1_cdc_to_133;
  output s_out_d2_134;
  output s_out_d3_135;
  output s_out_d4_136;
  output s_out_d5_137;
  output s_out_d6_138;
  output s_out_d7_139;
  output [1:0]O120;
  output [1:0]O121;
  output [1:0]O122;
  output [1:0]O123;
  output [1:0]O124;
  output [1:0]O125;
  output O1;
  output O2;
  input I1;
  input user_clk;
  input I2;
  input [0:0]wait_bypass_count_reg;
  input I3;
  input I4;
  input I5;

  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire O1;
  wire [1:0]O120;
  wire [1:0]O121;
  wire [1:0]O122;
  wire [1:0]O123;
  wire [1:0]O124;
  wire [1:0]O125;
  wire O2;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_133;
  wire s_out_d2_134;
  wire s_out_d3_135;
  wire s_out_d4_136;
  wire s_out_d5_137;
  wire s_out_d6_138;
  wire s_out_d7_139;
  wire user_clk;
  wire [0:0]wait_bypass_count_reg;

  assign p_level_in_int = I1;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_133));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_134));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O121[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O122[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O122[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O123[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O123[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O124[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O124[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O125[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O125[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_135));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_136));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_137));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_138));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_139));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O120[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O120[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O121[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFF00FF0100000000)) 
     time_out_wait_bypass_i_1__0
       (.I0(I2),
        .I1(wait_bypass_count_reg),
        .I2(I3),
        .I3(I4),
        .I4(s_level_out_d4),
        .I5(I5),
        .O(O1));
LUT4 #(
    .INIT(16'h00FE)) 
     \wait_bypass_count[0]_i_2__0 
       (.I0(I2),
        .I1(wait_bypass_count_reg),
        .I2(I3),
        .I3(s_level_out_d4),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_21
   (time_out_wait_bypass_s3,
    s_out_d1_cdc_to_140,
    s_out_d2_141,
    s_out_d3_142,
    s_out_d4_143,
    s_out_d5_144,
    s_out_d6_145,
    s_out_d7_146,
    O126,
    O127,
    O128,
    O129,
    O130,
    O131,
    I1,
    init_clk_in);
  output time_out_wait_bypass_s3;
  output s_out_d1_cdc_to_140;
  output s_out_d2_141;
  output s_out_d3_142;
  output s_out_d4_143;
  output s_out_d5_144;
  output s_out_d6_145;
  output s_out_d7_146;
  output [1:0]O126;
  output [1:0]O127;
  output [1:0]O128;
  output [1:0]O129;
  output [1:0]O130;
  output [1:0]O131;
  input I1;
  input init_clk_in;

  wire [1:0]O126;
  wire [1:0]O127;
  wire [1:0]O128;
  wire [1:0]O129;
  wire [1:0]O130;
  wire [1:0]O131;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_140;
  wire s_out_d2_141;
  wire s_out_d3_142;
  wire s_out_d4_143;
  wire s_out_d5_144;
  wire s_out_d6_145;
  wire s_out_d7_146;

  assign p_level_in_int = I1;
  assign time_out_wait_bypass_s3 = s_level_out_d4;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_140));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_141));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O127[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O128[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O128[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O129[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O129[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O130[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O130[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O131[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O131[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_142));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_143));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_144));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_145));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_146));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O126[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O126[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O127[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_22
   (gtrxreset_f,
    s_out_d1_cdc_to_196,
    s_out_d2_197,
    s_out_d3_198,
    s_out_d4_199,
    s_out_d5_200,
    s_out_d6_201,
    s_out_d7_202,
    O175,
    O176,
    O177,
    O178,
    O179,
    O180,
    SR,
    drpclk_in);
  output gtrxreset_f;
  output s_out_d1_cdc_to_196;
  output s_out_d2_197;
  output s_out_d3_198;
  output s_out_d4_199;
  output s_out_d5_200;
  output s_out_d6_201;
  output s_out_d7_202;
  output [1:0]O175;
  output [1:0]O176;
  output [1:0]O177;
  output [1:0]O178;
  output [1:0]O179;
  output [1:0]O180;
  input [0:0]SR;
  input drpclk_in;

  wire [1:0]O175;
  wire [1:0]O176;
  wire [1:0]O177;
  wire [1:0]O178;
  wire [1:0]O179;
  wire [1:0]O180;
  wire drpclk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_196;
  wire s_out_d2_197;
  wire s_out_d3_198;
  wire s_out_d4_199;
  wire s_out_d5_200;
  wire s_out_d6_201;
  wire s_out_d7_202;

  assign gtrxreset_f = s_level_out_d3;
  assign p_level_in_int = SR[0];
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_196));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_197));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O176[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O177[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O177[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O178[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O178[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O179[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O179[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O180[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O180[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_198));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_199));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_200));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_201));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_202));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O175[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O175[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O176[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_23
   (SR,
    s_out_d1_cdc_to_189,
    s_out_d2_190,
    s_out_d3_191,
    s_out_d4_192,
    s_out_d5_193,
    s_out_d6_194,
    s_out_d7_195,
    O169,
    O170,
    O171,
    O172,
    O173,
    O174,
    cpll_reset_i,
    drpclk_in);
  output [0:0]SR;
  output s_out_d1_cdc_to_189;
  output s_out_d2_190;
  output s_out_d3_191;
  output s_out_d4_192;
  output s_out_d5_193;
  output s_out_d6_194;
  output s_out_d7_195;
  output [1:0]O169;
  output [1:0]O170;
  output [1:0]O171;
  output [1:0]O172;
  output [1:0]O173;
  output [1:0]O174;
  input cpll_reset_i;
  input drpclk_in;

  wire [1:0]O169;
  wire [1:0]O170;
  wire [1:0]O171;
  wire [1:0]O172;
  wire [1:0]O173;
  wire [1:0]O174;
  wire drpclk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_189;
  wire s_out_d2_190;
  wire s_out_d3_191;
  wire s_out_d4_192;
  wire s_out_d5_193;
  wire s_out_d6_194;
  wire s_out_d7_195;

  assign SR[0] = s_level_out_d3;
  assign p_level_in_int = cpll_reset_i;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_189));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_190));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O170[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O171[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O171[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O172[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O172[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O173[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O173[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O174[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O174[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_191));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_192));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_193));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_194));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_195));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O169[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O169[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O170[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_24
   (rxpmaresetdone_ss,
    s_out_d1_cdc_to_182,
    s_out_d2_183,
    s_out_d3_184,
    s_out_d4_185,
    s_out_d5_186,
    s_out_d6_187,
    s_out_d7_188,
    O163,
    O164,
    O165,
    O166,
    O167,
    O168,
    D,
    I1,
    drpclk_in,
    I2,
    rxpmaresetdone_sss,
    Q,
    gtrxreset_ss);
  output rxpmaresetdone_ss;
  output s_out_d1_cdc_to_182;
  output s_out_d2_183;
  output s_out_d3_184;
  output s_out_d4_185;
  output s_out_d5_186;
  output s_out_d6_187;
  output s_out_d7_188;
  output [1:0]O163;
  output [1:0]O164;
  output [1:0]O165;
  output [1:0]O166;
  output [1:0]O167;
  output [1:0]O168;
  output [1:0]D;
  input I1;
  input drpclk_in;
  input I2;
  input rxpmaresetdone_sss;
  input [2:0]Q;
  input gtrxreset_ss;

  wire [1:0]D;
  wire I2;
  wire [1:0]O163;
  wire [1:0]O164;
  wire [1:0]O165;
  wire [1:0]O166;
  wire [1:0]O167;
  wire [1:0]O168;
  wire [2:0]Q;
  wire drpclk_in;
  wire gtrxreset_ss;
  wire \n_0_state[0]_i_2 ;
  wire p_level_in_int;
  wire rxpmaresetdone_sss;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_182;
  wire s_out_d2_183;
  wire s_out_d3_184;
  wire s_out_d4_185;
  wire s_out_d5_186;
  wire s_out_d6_187;
  wire s_out_d7_188;

  assign p_level_in_int = I1;
  assign rxpmaresetdone_ss = s_level_out_d3;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_182));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_183));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O164[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O165[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O165[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O166[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O166[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O167[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O167[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O168[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O168[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_184));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_185));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_186));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_187));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_188));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O163[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O163[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O164[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
LUT6 #(
    .INIT(64'h33F23332F0C2F002)) 
     \state[0]_i_1 
       (.I0(gtrxreset_ss),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(\n_0_state[0]_i_2 ),
        .I5(I2),
        .O(D[0]));
LUT2 #(
    .INIT(4'hB)) 
     \state[0]_i_2 
       (.I0(s_level_out_d3),
        .I1(rxpmaresetdone_sss),
        .O(\n_0_state[0]_i_2 ));
LUT6 #(
    .INIT(64'h553000FFFF00FF00)) 
     \state[1]_i_1 
       (.I0(I2),
        .I1(s_level_out_d3),
        .I2(rxpmaresetdone_sss),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[0]),
        .O(D[1]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_25
   (s_out_d1_cdc_to_0,
    s_out_d2_1,
    s_out_d3_2,
    s_out_d4_3,
    s_out_d5_4,
    s_out_d6_5,
    s_out_d7_6,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O1,
    link_reset_comb_r,
    user_clk,
    reset,
    tx_lock_sync,
    gt_rxresetdone_r3,
    gt_txresetdone_r3);
  output s_out_d1_cdc_to_0;
  output s_out_d2_1;
  output s_out_d3_2;
  output s_out_d4_3;
  output s_out_d5_4;
  output s_out_d6_5;
  output s_out_d7_6;
  output [1:0]O6;
  output [1:0]O7;
  output [1:0]O8;
  output [1:0]O9;
  output [1:0]O10;
  output [1:0]O11;
  output O1;
  input link_reset_comb_r;
  input user_clk;
  input reset;
  input tx_lock_sync;
  input gt_rxresetdone_r3;
  input gt_txresetdone_r3;

  wire O1;
  wire [1:0]O10;
  wire [1:0]O11;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [1:0]O8;
  wire [1:0]O9;
  wire gt_rxresetdone_r3;
  wire gt_txresetdone_r3;
  wire p_level_in_int;
  wire reset;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_0;
  wire s_out_d2_1;
  wire s_out_d3_2;
  wire s_out_d4_3;
  wire s_out_d5_4;
  wire s_out_d6_5;
  wire s_out_d7_6;
  wire tx_lock_sync;
  wire user_clk;

  assign p_level_in_int = link_reset_comb_r;
LUT5 #(
    .INIT(32'hEFFFFFFF)) 
     SYSTEM_RESET_i_1
       (.I0(reset),
        .I1(s_level_out_d3),
        .I2(tx_lock_sync),
        .I3(gt_rxresetdone_r3),
        .I4(gt_txresetdone_r3),
        .O(O1));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_0));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_1));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O7[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O8[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O8[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O9[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O9[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O10[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O10[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O11[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O11[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_2));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_3));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_4));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_5));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_6));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O6[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O6[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O7[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_26
   (tx_lock_sync,
    s_out_d1_cdc_to_7,
    s_out_d2_8,
    s_out_d3_9,
    s_out_d4_10,
    s_out_d5_11,
    s_out_d6_12,
    s_out_d7_13,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    tx_lock_comb_r,
    user_clk);
  output tx_lock_sync;
  output s_out_d1_cdc_to_7;
  output s_out_d2_8;
  output s_out_d3_9;
  output s_out_d4_10;
  output s_out_d5_11;
  output s_out_d6_12;
  output s_out_d7_13;
  output [1:0]O12;
  output [1:0]O13;
  output [1:0]O14;
  output [1:0]O15;
  output [1:0]O16;
  output [1:0]O17;
  input tx_lock_comb_r;
  input user_clk;

  wire [1:0]O12;
  wire [1:0]O13;
  wire [1:0]O14;
  wire [1:0]O15;
  wire [1:0]O16;
  wire [1:0]O17;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_7;
  wire s_out_d2_8;
  wire s_out_d3_9;
  wire s_out_d4_10;
  wire s_out_d5_11;
  wire s_out_d6_12;
  wire s_out_d7_13;
  wire user_clk;

  assign p_level_in_int = tx_lock_comb_r;
  assign tx_lock_sync = s_level_out_d3;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_7));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_8));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O13[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O14[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O14[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O15[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O15[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O16[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O16[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O17[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O17[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_9));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_10));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_11));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_12));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_13));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O12[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O12[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O13[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_27
   (s_out_d1_cdc_to,
    s_out_d2,
    s_out_d3,
    s_out_d4,
    s_out_d5,
    s_out_d6,
    s_out_d7,
    out,
    O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    I1,
    user_clk);
  output s_out_d1_cdc_to;
  output s_out_d2;
  output s_out_d3;
  output s_out_d4;
  output s_out_d5;
  output s_out_d6;
  output s_out_d7;
  output [1:0]out;
  output [1:0]O1;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output O6;
  input I1;
  input user_clk;

  wire [1:0]O1;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire O6;
  wire [1:0]out;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to;
  wire s_out_d2;
  wire s_out_d3;
  wire s_out_d4;
  wire s_out_d5;
  wire s_out_d6;
  wire s_out_d7;
  wire user_clk;

  assign p_level_in_int = I1;
LUT1 #(
    .INIT(2'h1)) 
     gt_txresetdone_r_i_1
       (.I0(s_level_out_d3),
        .O(O6));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O1[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O2[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O2[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O3[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O3[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O4[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O4[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O5[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O5[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(out[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(out[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O1[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_28
   (cc_sync,
    s_out_d1_cdc_to_21,
    s_out_d2_22,
    s_out_d3_23,
    s_out_d4_24,
    s_out_d5_25,
    s_out_d6_26,
    s_out_d7_27,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    rx_cc_extend_r2,
    init_clk_in);
  output cc_sync;
  output s_out_d1_cdc_to_21;
  output s_out_d2_22;
  output s_out_d3_23;
  output s_out_d4_24;
  output s_out_d5_25;
  output s_out_d6_26;
  output s_out_d7_27;
  output [1:0]O24;
  output [1:0]O25;
  output [1:0]O26;
  output [1:0]O27;
  output [1:0]O28;
  output [1:0]O29;
  input rx_cc_extend_r2;
  input init_clk_in;

  wire [1:0]O24;
  wire [1:0]O25;
  wire [1:0]O26;
  wire [1:0]O27;
  wire [1:0]O28;
  wire [1:0]O29;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_21;
  wire s_out_d2_22;
  wire s_out_d3_23;
  wire s_out_d4_24;
  wire s_out_d5_25;
  wire s_out_d6_26;
  wire s_out_d7_27;

  assign cc_sync = s_level_out_d3;
  assign p_level_in_int = rx_cc_extend_r2;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_21));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_22));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O25[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O26[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O26[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O27[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O27[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O28[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O28[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O29[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O29[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_23));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_24));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_25));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_26));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_27));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O24[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O24[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O25[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_3
   (s_out_d1_cdc_to_63,
    s_out_d2_64,
    s_out_d3_65,
    s_out_d4_66,
    s_out_d5_67,
    s_out_d6_68,
    s_out_d7_69,
    O60,
    O61,
    O62,
    O63,
    O64,
    O65,
    O1,
    SR,
    init_clk_in,
    mmcm_lock_reclocked,
    Q,
    I1);
  output s_out_d1_cdc_to_63;
  output s_out_d2_64;
  output s_out_d3_65;
  output s_out_d4_66;
  output s_out_d5_67;
  output s_out_d6_68;
  output s_out_d7_69;
  output [1:0]O60;
  output [1:0]O61;
  output [1:0]O62;
  output [1:0]O63;
  output [1:0]O64;
  output [1:0]O65;
  output O1;
  output [0:0]SR;
  input init_clk_in;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input I1;

  wire I1;
  wire O1;
  wire [1:0]O60;
  wire [1:0]O61;
  wire [1:0]O62;
  wire [1:0]O63;
  wire [1:0]O64;
  wire [1:0]O65;
  wire [1:0]Q;
  wire [0:0]SR;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_63;
  wire s_out_d2_64;
  wire s_out_d3_65;
  wire s_out_d4_66;
  wire s_out_d5_67;
  wire s_out_d6_68;
  wire s_out_d7_69;

LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b1),
        .O(p_level_in_int));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_63));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O61[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O61[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O62[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O62[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O63[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O63[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O64[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O64[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O65[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(1'b0),
        .O(O65[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d2_64));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d3_65));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d4_66));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d5_67));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d6_68));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(s_out_d7_69));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O60[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O60[0]));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1 
       (.I0(s_level_out_d3),
        .O(SR));
LUT5 #(
    .INIT(32'hEAAA0000)) 
     mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(I1),
        .I3(Q[0]),
        .I4(s_level_out_d3),
        .O(O1));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_4
   (s_out_d1_cdc_to_77,
    s_out_d2_78,
    s_out_d3_79,
    s_out_d4_80,
    s_out_d5_81,
    s_out_d6_82,
    s_out_d7_83,
    O72,
    O73,
    O74,
    O75,
    O76,
    O77,
    init_clk_in);
  output s_out_d1_cdc_to_77;
  output s_out_d2_78;
  output s_out_d3_79;
  output s_out_d4_80;
  output s_out_d5_81;
  output s_out_d6_82;
  output s_out_d7_83;
  output [1:0]O72;
  output [1:0]O73;
  output [1:0]O74;
  output [1:0]O75;
  output [1:0]O76;
  output [1:0]O77;
  input init_clk_in;

  wire [1:0]O72;
  wire [1:0]O73;
  wire [1:0]O74;
  wire [1:0]O75;
  wire [1:0]O76;
  wire [1:0]O77;
  wire init_clk_in;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_77;
  wire s_out_d2_78;
  wire s_out_d3_79;
  wire s_out_d4_80;
  wire s_out_d5_81;
  wire s_out_d6_82;
  wire s_out_d7_83;

LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b1),
        .O(p_level_in_int));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_77));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O73[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O73[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O74[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O74[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O75[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O75[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O76[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O76[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O77[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(1'b0),
        .O(O77[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d2_78));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d3_79));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d4_80));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d5_81));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d6_82));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(s_out_d7_83));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O72[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O72[0]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_5
   (O1,
    s_out_d1_cdc_to_35,
    s_out_d2_36,
    s_out_d3_37,
    s_out_d4_38,
    s_out_d5_39,
    s_out_d6_40,
    s_out_d7_41,
    O36,
    O37,
    O38,
    O39,
    O40,
    O41,
    O2,
    I1,
    user_clk);
  output O1;
  output s_out_d1_cdc_to_35;
  output s_out_d2_36;
  output s_out_d3_37;
  output s_out_d4_38;
  output s_out_d5_39;
  output s_out_d6_40;
  output s_out_d7_41;
  output [1:0]O36;
  output [1:0]O37;
  output [1:0]O38;
  output [1:0]O39;
  output [1:0]O40;
  output [1:0]O41;
  output O2;
  input I1;
  input user_clk;

  wire O2;
  wire [1:0]O36;
  wire [1:0]O37;
  wire [1:0]O38;
  wire [1:0]O39;
  wire [1:0]O40;
  wire [1:0]O41;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_35;
  wire s_out_d2_36;
  wire s_out_d3_37;
  wire s_out_d4_38;
  wire s_out_d5_39;
  wire s_out_d6_40;
  wire s_out_d7_41;
  wire user_clk;

  assign O1 = s_level_out_d4;
  assign p_level_in_int = I1;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_35));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_36));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O37[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O38[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O38[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O39[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O39[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O40[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O40[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O41[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O41[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_37));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_38));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_39));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_40));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_41));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O36[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O36[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O37[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1 
       (.I0(s_level_out_d4),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_6
   (s_out_d1_cdc_to_49,
    s_out_d2_50,
    s_out_d3_51,
    s_out_d4_52,
    s_out_d5_53,
    s_out_d6_54,
    s_out_d7_55,
    O48,
    O49,
    O50,
    O51,
    O52,
    O53,
    D,
    I1,
    init_clk_in,
    I2,
    out);
  output s_out_d1_cdc_to_49;
  output s_out_d2_50;
  output s_out_d3_51;
  output s_out_d4_52;
  output s_out_d5_53;
  output s_out_d6_54;
  output s_out_d7_55;
  output [1:0]O48;
  output [1:0]O49;
  output [1:0]O50;
  output [1:0]O51;
  output [1:0]O52;
  output [1:0]O53;
  output [0:0]D;
  input I1;
  input init_clk_in;
  input I2;
  input [2:0]out;

  wire [0:0]D;
  wire I2;
  wire [1:0]O48;
  wire [1:0]O49;
  wire [1:0]O50;
  wire [1:0]O51;
  wire [1:0]O52;
  wire [1:0]O53;
  wire init_clk_in;
  wire [2:0]out;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_49;
  wire s_out_d2_50;
  wire s_out_d3_51;
  wire s_out_d4_52;
  wire s_out_d5_53;
  wire s_out_d6_54;
  wire s_out_d7_55;

  assign p_level_in_int = I1;
LUT5 #(
    .INIT(32'h00073000)) 
     \FSM_sequential_tx_state[3]_i_2 
       (.I0(s_level_out_d4),
        .I1(I2),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .O(D));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_49));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_50));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O49[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O50[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O50[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O51[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O51[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O52[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O52[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O53[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O53[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_51));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_52));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_53));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_54));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_55));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O48[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O48[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O49[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_7
   (s_out_d1_cdc_to_42,
    s_out_d2_43,
    s_out_d3_44,
    s_out_d4_45,
    s_out_d5_46,
    s_out_d6_47,
    s_out_d7_48,
    O42,
    O43,
    O44,
    O45,
    O46,
    O47,
    O2,
    O3,
    O1,
    user_clk,
    I1,
    I2,
    I3,
    I4,
    I5,
    wait_bypass_count_reg);
  output s_out_d1_cdc_to_42;
  output s_out_d2_43;
  output s_out_d3_44;
  output s_out_d4_45;
  output s_out_d5_46;
  output s_out_d6_47;
  output s_out_d7_48;
  output [1:0]O42;
  output [1:0]O43;
  output [1:0]O44;
  output [1:0]O45;
  output [1:0]O46;
  output [1:0]O47;
  output O2;
  output O3;
  input O1;
  input user_clk;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input [1:0]wait_bypass_count_reg;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire O2;
  wire O3;
  wire [1:0]O42;
  wire [1:0]O43;
  wire [1:0]O44;
  wire [1:0]O45;
  wire [1:0]O46;
  wire [1:0]O47;
  wire n_0_time_out_wait_bypass_i_2;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_42;
  wire s_out_d2_43;
  wire s_out_d3_44;
  wire s_out_d4_45;
  wire s_out_d5_46;
  wire s_out_d6_47;
  wire s_out_d7_48;
  wire user_clk;
  wire [1:0]wait_bypass_count_reg;

  assign p_level_in_int = O1;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_42));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_43));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O43[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O44[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O44[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O45[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O45[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O46[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O46[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O47[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O47[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_44));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_45));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_46));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_47));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_48));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O42[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O42[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O43[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
LUT6 #(
    .INIT(64'hAAAAAAAE00000000)) 
     time_out_wait_bypass_i_1
       (.I0(I1),
        .I1(I2),
        .I2(I3),
        .I3(n_0_time_out_wait_bypass_i_2),
        .I4(I4),
        .I5(I5),
        .O(O2));
LUT3 #(
    .INIT(8'hBF)) 
     time_out_wait_bypass_i_2
       (.I0(s_level_out_d4),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[0]),
        .O(n_0_time_out_wait_bypass_i_2));
LUT6 #(
    .INIT(64'h00000000FFFFDFFF)) 
     \wait_bypass_count[0]_i_2 
       (.I0(I2),
        .I1(I4),
        .I2(wait_bypass_count_reg[0]),
        .I3(wait_bypass_count_reg[1]),
        .I4(I3),
        .I5(s_level_out_d4),
        .O(O3));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_8
   (gtrxreset_s,
    s_out_d1_cdc_to_84,
    s_out_d2_85,
    s_out_d3_86,
    s_out_d4_87,
    s_out_d5_88,
    s_out_d6_89,
    s_out_d7_90,
    O78,
    O79,
    O80,
    O81,
    O82,
    O83,
    I1,
    user_clk);
  output gtrxreset_s;
  output s_out_d1_cdc_to_84;
  output s_out_d2_85;
  output s_out_d3_86;
  output s_out_d4_87;
  output s_out_d5_88;
  output s_out_d6_89;
  output s_out_d7_90;
  output [1:0]O78;
  output [1:0]O79;
  output [1:0]O80;
  output [1:0]O81;
  output [1:0]O82;
  output [1:0]O83;
  input I1;
  input user_clk;

  wire [1:0]O78;
  wire [1:0]O79;
  wire [1:0]O80;
  wire [1:0]O81;
  wire [1:0]O82;
  wire [1:0]O83;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_84;
  wire s_out_d2_85;
  wire s_out_d3_86;
  wire s_out_d4_87;
  wire s_out_d5_88;
  wire s_out_d6_89;
  wire s_out_d7_90;
  wire user_clk;

  assign gtrxreset_s = s_level_out_d3;
  assign p_level_in_int = I1;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_84));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d2_85));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O79[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O80[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O80[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O81[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O81[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O82[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O82[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O83[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O83[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d3_86));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d4_87));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d5_88));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d6_89));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d7_90));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(O78[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O78[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O79[1]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0_aurora_8b10b_0_cdc_sync_9
   (rxpmaresetdone_rx_s,
    s_out_d1_cdc_to_91,
    s_out_d2_92,
    s_out_d3_93,
    s_out_d4_94,
    s_out_d5_95,
    s_out_d6_96,
    s_out_d7_97,
    O84,
    O85,
    O86,
    O87,
    O88,
    O89,
    user_clk);
  output rxpmaresetdone_rx_s;
  output s_out_d1_cdc_to_91;
  output s_out_d2_92;
  output s_out_d3_93;
  output s_out_d4_94;
  output s_out_d5_95;
  output s_out_d6_96;
  output s_out_d7_97;
  output [1:0]O84;
  output [1:0]O85;
  output [1:0]O86;
  output [1:0]O87;
  output [1:0]O88;
  output [1:0]O89;
  input user_clk;

  wire [1:0]O84;
  wire [1:0]O85;
  wire [1:0]O86;
  wire [1:0]O87;
  wire [1:0]O88;
  wire [1:0]O89;
  wire p_level_in_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d4;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_91;
  wire s_out_d2_92;
  wire s_out_d3_93;
  wire s_out_d4_94;
  wire s_out_d5_95;
  wire s_out_d6_96;
  wire s_out_d7_97;
  wire user_clk;

  assign rxpmaresetdone_rx_s = s_level_out_d3;
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(1'b1),
        .O(p_level_in_int));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(1'b0),
        .O(s_out_d1_cdc_to_91));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(1'b0),
        .O(O85[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(1'b0),
        .O(O85[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(1'b0),
        .O(O86[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(1'b0),
        .O(O86[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(1'b0),
        .O(O87[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(1'b0),
        .O(O87[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(1'b0),
        .O(O88[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(1'b0),
        .O(O88[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(1'b0),
        .O(O89[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(1'b0),
        .O(O89[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(1'b0),
        .O(s_out_d2_92));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(1'b0),
        .O(s_out_d3_93));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(1'b0),
        .O(s_out_d4_94));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(1'b0),
        .O(s_out_d5_95));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(1'b0),
        .O(s_out_d6_96));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(1'b0),
        .O(s_out_d7_97));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(1'b0),
        .O(O84[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(1'b0),
        .O(O84[0]));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(p_level_in_int),
        .Q(s_level_out_d1_cdc_to),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* KEEP = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_core" *) 
module aurora_8b10b_0_aurora_8b10b_0_core
   (tx_resetdone_out,
    s_out_d1_cdc_to,
    s_out_d2,
    s_out_d3,
    s_out_d4,
    s_out_d5,
    s_out_d6,
    s_out_d7,
    out,
    O1,
    O2,
    O3,
    O4,
    O5,
    s_out_d1_cdc_to_0,
    s_out_d2_1,
    s_out_d3_2,
    s_out_d4_3,
    s_out_d5_4,
    s_out_d6_5,
    s_out_d7_6,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    s_out_d1_cdc_to_7,
    s_out_d2_8,
    s_out_d3_9,
    s_out_d4_10,
    s_out_d5_11,
    s_out_d6_12,
    s_out_d7_13,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    s_out_d1_cdc_to_14,
    s_out_d2_15,
    s_out_d3_16,
    s_out_d4_17,
    s_out_d5_18,
    s_out_d6_19,
    s_out_d7_20,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    lane_up,
    s_out_d1_cdc_to_21,
    s_out_d2_22,
    s_out_d3_23,
    s_out_d4_24,
    s_out_d5_25,
    s_out_d6_26,
    s_out_d7_27,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    s_out_d1_cdc_to_28,
    s_out_d2_29,
    s_out_d3_30,
    s_out_d4_31,
    s_out_d5_32,
    s_out_d6_33,
    s_out_d7_34,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    s_out_d1_cdc_to_35,
    s_out_d2_36,
    s_out_d3_37,
    s_out_d4_38,
    s_out_d5_39,
    s_out_d6_40,
    s_out_d7_41,
    O36,
    O37,
    O38,
    O39,
    O40,
    O41,
    s_out_d1_cdc_to_42,
    s_out_d2_43,
    s_out_d3_44,
    s_out_d4_45,
    s_out_d5_46,
    s_out_d6_47,
    s_out_d7_48,
    O42,
    O43,
    O44,
    O45,
    O46,
    O47,
    s_out_d1_cdc_to_49,
    s_out_d2_50,
    s_out_d3_51,
    s_out_d4_52,
    s_out_d5_53,
    s_out_d6_54,
    s_out_d7_55,
    O48,
    O49,
    O50,
    O51,
    O52,
    O53,
    s_out_d1_cdc_to_56,
    s_out_d2_57,
    s_out_d3_58,
    s_out_d4_59,
    s_out_d5_60,
    s_out_d6_61,
    s_out_d7_62,
    O54,
    O55,
    O56,
    O57,
    O58,
    O59,
    s_out_d1_cdc_to_63,
    s_out_d2_64,
    s_out_d3_65,
    s_out_d4_66,
    s_out_d5_67,
    s_out_d6_68,
    s_out_d7_69,
    O60,
    O61,
    O62,
    O63,
    O64,
    O65,
    tx_lock,
    s_out_d1_cdc_to_70,
    s_out_d2_71,
    s_out_d3_72,
    s_out_d4_73,
    s_out_d5_74,
    s_out_d6_75,
    s_out_d7_76,
    O66,
    O67,
    O68,
    O69,
    O70,
    O71,
    s_out_d1_cdc_to_77,
    s_out_d2_78,
    s_out_d3_79,
    s_out_d4_80,
    s_out_d5_81,
    s_out_d6_82,
    s_out_d7_83,
    O72,
    O73,
    O74,
    O75,
    O76,
    O77,
    s_out_d1_cdc_to_84,
    s_out_d2_85,
    s_out_d3_86,
    s_out_d4_87,
    s_out_d5_88,
    s_out_d6_89,
    s_out_d7_90,
    O78,
    O79,
    O80,
    O81,
    O82,
    O83,
    s_out_d1_cdc_to_91,
    s_out_d2_92,
    s_out_d3_93,
    s_out_d4_94,
    s_out_d5_95,
    s_out_d6_96,
    s_out_d7_97,
    O84,
    O85,
    O86,
    O87,
    O88,
    O89,
    s_out_d1_cdc_to_98,
    s_out_d2_99,
    s_out_d3_100,
    s_out_d4_101,
    s_out_d5_102,
    s_out_d6_103,
    s_out_d7_104,
    O90,
    O91,
    O92,
    O93,
    O94,
    O95,
    s_out_d1_cdc_to_105,
    s_out_d2_106,
    s_out_d3_107,
    s_out_d4_108,
    s_out_d5_109,
    s_out_d6_110,
    s_out_d7_111,
    O96,
    O97,
    O98,
    O99,
    O100,
    O101,
    s_out_d1_cdc_to_112,
    s_out_d2_113,
    s_out_d3_114,
    s_out_d4_115,
    s_out_d5_116,
    s_out_d6_117,
    s_out_d7_118,
    O102,
    O103,
    O104,
    O105,
    O106,
    O107,
    s_out_d1_cdc_to_119,
    s_out_d2_120,
    s_out_d3_121,
    s_out_d4_122,
    s_out_d5_123,
    s_out_d6_124,
    s_out_d7_125,
    O108,
    O109,
    O110,
    O111,
    O112,
    O113,
    s_out_d1_cdc_to_126,
    s_out_d2_127,
    s_out_d3_128,
    s_out_d4_129,
    s_out_d5_130,
    s_out_d6_131,
    s_out_d7_132,
    O114,
    O115,
    O116,
    O117,
    O118,
    O119,
    s_out_d1_cdc_to_133,
    s_out_d2_134,
    s_out_d3_135,
    s_out_d4_136,
    s_out_d5_137,
    s_out_d6_138,
    s_out_d7_139,
    O120,
    O121,
    O122,
    O123,
    O124,
    O125,
    s_out_d1_cdc_to_140,
    s_out_d2_141,
    s_out_d3_142,
    s_out_d4_143,
    s_out_d5_144,
    s_out_d6_145,
    s_out_d7_146,
    O126,
    O127,
    O128,
    O129,
    O130,
    O131,
    s_out_d1_cdc_to_147,
    s_out_d2_148,
    s_out_d3_149,
    s_out_d4_150,
    s_out_d5_151,
    s_out_d6_152,
    s_out_d7_153,
    O132,
    O133,
    O134,
    O135,
    O136,
    O137,
    s_out_d1_cdc_to_154,
    s_out_d2_155,
    s_out_d3_156,
    s_out_d4_157,
    s_out_d5_158,
    s_out_d6_159,
    s_out_d7_160,
    O138,
    O139,
    O140,
    O141,
    O142,
    O143,
    s_out_d1_cdc_to_161,
    s_out_d2_162,
    s_out_d3_163,
    s_out_d4_164,
    s_out_d5_165,
    s_out_d6_166,
    s_out_d7_167,
    O144,
    O145,
    O146,
    O147,
    O148,
    O149,
    s_out_d1_cdc_to_168,
    s_out_d2_169,
    s_out_d3_170,
    s_out_d4_171,
    s_out_d5_172,
    s_out_d6_173,
    s_out_d7_174,
    O150,
    O151,
    O152,
    O153,
    O154,
    O155,
    s_out_d1_cdc_to_175,
    s_out_d2_176,
    s_out_d3_177,
    s_out_d4_178,
    s_out_d5_179,
    s_out_d6_180,
    s_out_d7_181,
    O156,
    O157,
    O158,
    O159,
    O160,
    O161,
    O162,
    txn,
    txp,
    tx_out_clk,
    drpdo_out,
    s_out_d1_cdc_to_182,
    s_out_d2_183,
    s_out_d3_184,
    s_out_d4_185,
    s_out_d5_186,
    s_out_d6_187,
    s_out_d7_188,
    O163,
    O164,
    O165,
    O166,
    O167,
    O168,
    s_out_d1_cdc_to_189,
    s_out_d2_190,
    s_out_d3_191,
    s_out_d4_192,
    s_out_d5_193,
    s_out_d6_194,
    s_out_d7_195,
    O169,
    O170,
    O171,
    O172,
    O173,
    O174,
    s_out_d1_cdc_to_196,
    s_out_d2_197,
    s_out_d3_198,
    s_out_d4_199,
    s_out_d5_200,
    s_out_d6_201,
    s_out_d7_202,
    O175,
    O176,
    O177,
    O178,
    O179,
    O180,
    rx_resetdone_out,
    O181,
    link_reset_out,
    O182,
    soft_err,
    hard_err,
    frame_err,
    m_axi_rx_tvalid,
    m_axi_rx_tdata,
    m_axi_rx_tkeep,
    m_axi_rx_tlast,
    s_axi_tx_tready,
    reset,
    user_clk,
    init_clk_in,
    drpclk_in,
    rxn,
    rxp,
    gt_refclk1,
    gt_qpllclk_quad4_in,
    gt_qpllrefclk_quad4_in,
    sync_clk,
    power_down,
    loopback,
    do_cc,
    gt_reset,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    s_axi_tx_tdata,
    drpen_in,
    drpdi_in,
    drpwe_in,
    drpaddr_in,
    s_axi_tx_tkeep);
  output tx_resetdone_out;
  output s_out_d1_cdc_to;
  output s_out_d2;
  output s_out_d3;
  output s_out_d4;
  output s_out_d5;
  output s_out_d6;
  output s_out_d7;
  output [1:0]out;
  output [1:0]O1;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output s_out_d1_cdc_to_0;
  output s_out_d2_1;
  output s_out_d3_2;
  output s_out_d4_3;
  output s_out_d5_4;
  output s_out_d6_5;
  output s_out_d7_6;
  output [1:0]O6;
  output [1:0]O7;
  output [1:0]O8;
  output [1:0]O9;
  output [1:0]O10;
  output [1:0]O11;
  output s_out_d1_cdc_to_7;
  output s_out_d2_8;
  output s_out_d3_9;
  output s_out_d4_10;
  output s_out_d5_11;
  output s_out_d6_12;
  output s_out_d7_13;
  output [1:0]O12;
  output [1:0]O13;
  output [1:0]O14;
  output [1:0]O15;
  output [1:0]O16;
  output [1:0]O17;
  output s_out_d1_cdc_to_14;
  output s_out_d2_15;
  output s_out_d3_16;
  output s_out_d4_17;
  output s_out_d5_18;
  output s_out_d6_19;
  output s_out_d7_20;
  output [1:0]O18;
  output [1:0]O19;
  output [1:0]O20;
  output [1:0]O21;
  output [1:0]O22;
  output [1:0]O23;
  output lane_up;
  output s_out_d1_cdc_to_21;
  output s_out_d2_22;
  output s_out_d3_23;
  output s_out_d4_24;
  output s_out_d5_25;
  output s_out_d6_26;
  output s_out_d7_27;
  output [1:0]O24;
  output [1:0]O25;
  output [1:0]O26;
  output [1:0]O27;
  output [1:0]O28;
  output [1:0]O29;
  output s_out_d1_cdc_to_28;
  output s_out_d2_29;
  output s_out_d3_30;
  output s_out_d4_31;
  output s_out_d5_32;
  output s_out_d6_33;
  output s_out_d7_34;
  output [1:0]O30;
  output [1:0]O31;
  output [1:0]O32;
  output [1:0]O33;
  output [1:0]O34;
  output [1:0]O35;
  output s_out_d1_cdc_to_35;
  output s_out_d2_36;
  output s_out_d3_37;
  output s_out_d4_38;
  output s_out_d5_39;
  output s_out_d6_40;
  output s_out_d7_41;
  output [1:0]O36;
  output [1:0]O37;
  output [1:0]O38;
  output [1:0]O39;
  output [1:0]O40;
  output [1:0]O41;
  output s_out_d1_cdc_to_42;
  output s_out_d2_43;
  output s_out_d3_44;
  output s_out_d4_45;
  output s_out_d5_46;
  output s_out_d6_47;
  output s_out_d7_48;
  output [1:0]O42;
  output [1:0]O43;
  output [1:0]O44;
  output [1:0]O45;
  output [1:0]O46;
  output [1:0]O47;
  output s_out_d1_cdc_to_49;
  output s_out_d2_50;
  output s_out_d3_51;
  output s_out_d4_52;
  output s_out_d5_53;
  output s_out_d6_54;
  output s_out_d7_55;
  output [1:0]O48;
  output [1:0]O49;
  output [1:0]O50;
  output [1:0]O51;
  output [1:0]O52;
  output [1:0]O53;
  output s_out_d1_cdc_to_56;
  output s_out_d2_57;
  output s_out_d3_58;
  output s_out_d4_59;
  output s_out_d5_60;
  output s_out_d6_61;
  output s_out_d7_62;
  output [1:0]O54;
  output [1:0]O55;
  output [1:0]O56;
  output [1:0]O57;
  output [1:0]O58;
  output [1:0]O59;
  output s_out_d1_cdc_to_63;
  output s_out_d2_64;
  output s_out_d3_65;
  output s_out_d4_66;
  output s_out_d5_67;
  output s_out_d6_68;
  output s_out_d7_69;
  output [1:0]O60;
  output [1:0]O61;
  output [1:0]O62;
  output [1:0]O63;
  output [1:0]O64;
  output [1:0]O65;
  output tx_lock;
  output s_out_d1_cdc_to_70;
  output s_out_d2_71;
  output s_out_d3_72;
  output s_out_d4_73;
  output s_out_d5_74;
  output s_out_d6_75;
  output s_out_d7_76;
  output [1:0]O66;
  output [1:0]O67;
  output [1:0]O68;
  output [1:0]O69;
  output [1:0]O70;
  output [1:0]O71;
  output s_out_d1_cdc_to_77;
  output s_out_d2_78;
  output s_out_d3_79;
  output s_out_d4_80;
  output s_out_d5_81;
  output s_out_d6_82;
  output s_out_d7_83;
  output [1:0]O72;
  output [1:0]O73;
  output [1:0]O74;
  output [1:0]O75;
  output [1:0]O76;
  output [1:0]O77;
  output s_out_d1_cdc_to_84;
  output s_out_d2_85;
  output s_out_d3_86;
  output s_out_d4_87;
  output s_out_d5_88;
  output s_out_d6_89;
  output s_out_d7_90;
  output [1:0]O78;
  output [1:0]O79;
  output [1:0]O80;
  output [1:0]O81;
  output [1:0]O82;
  output [1:0]O83;
  output s_out_d1_cdc_to_91;
  output s_out_d2_92;
  output s_out_d3_93;
  output s_out_d4_94;
  output s_out_d5_95;
  output s_out_d6_96;
  output s_out_d7_97;
  output [1:0]O84;
  output [1:0]O85;
  output [1:0]O86;
  output [1:0]O87;
  output [1:0]O88;
  output [1:0]O89;
  output s_out_d1_cdc_to_98;
  output s_out_d2_99;
  output s_out_d3_100;
  output s_out_d4_101;
  output s_out_d5_102;
  output s_out_d6_103;
  output s_out_d7_104;
  output [1:0]O90;
  output [1:0]O91;
  output [1:0]O92;
  output [1:0]O93;
  output [1:0]O94;
  output [1:0]O95;
  output s_out_d1_cdc_to_105;
  output s_out_d2_106;
  output s_out_d3_107;
  output s_out_d4_108;
  output s_out_d5_109;
  output s_out_d6_110;
  output s_out_d7_111;
  output [1:0]O96;
  output [1:0]O97;
  output [1:0]O98;
  output [1:0]O99;
  output [1:0]O100;
  output [1:0]O101;
  output s_out_d1_cdc_to_112;
  output s_out_d2_113;
  output s_out_d3_114;
  output s_out_d4_115;
  output s_out_d5_116;
  output s_out_d6_117;
  output s_out_d7_118;
  output [1:0]O102;
  output [1:0]O103;
  output [1:0]O104;
  output [1:0]O105;
  output [1:0]O106;
  output [1:0]O107;
  output s_out_d1_cdc_to_119;
  output s_out_d2_120;
  output s_out_d3_121;
  output s_out_d4_122;
  output s_out_d5_123;
  output s_out_d6_124;
  output s_out_d7_125;
  output [1:0]O108;
  output [1:0]O109;
  output [1:0]O110;
  output [1:0]O111;
  output [1:0]O112;
  output [1:0]O113;
  output s_out_d1_cdc_to_126;
  output s_out_d2_127;
  output s_out_d3_128;
  output s_out_d4_129;
  output s_out_d5_130;
  output s_out_d6_131;
  output s_out_d7_132;
  output [1:0]O114;
  output [1:0]O115;
  output [1:0]O116;
  output [1:0]O117;
  output [1:0]O118;
  output [1:0]O119;
  output s_out_d1_cdc_to_133;
  output s_out_d2_134;
  output s_out_d3_135;
  output s_out_d4_136;
  output s_out_d5_137;
  output s_out_d6_138;
  output s_out_d7_139;
  output [1:0]O120;
  output [1:0]O121;
  output [1:0]O122;
  output [1:0]O123;
  output [1:0]O124;
  output [1:0]O125;
  output s_out_d1_cdc_to_140;
  output s_out_d2_141;
  output s_out_d3_142;
  output s_out_d4_143;
  output s_out_d5_144;
  output s_out_d6_145;
  output s_out_d7_146;
  output [1:0]O126;
  output [1:0]O127;
  output [1:0]O128;
  output [1:0]O129;
  output [1:0]O130;
  output [1:0]O131;
  output s_out_d1_cdc_to_147;
  output s_out_d2_148;
  output s_out_d3_149;
  output s_out_d4_150;
  output s_out_d5_151;
  output s_out_d6_152;
  output s_out_d7_153;
  output [1:0]O132;
  output [1:0]O133;
  output [1:0]O134;
  output [1:0]O135;
  output [1:0]O136;
  output [1:0]O137;
  output s_out_d1_cdc_to_154;
  output s_out_d2_155;
  output s_out_d3_156;
  output s_out_d4_157;
  output s_out_d5_158;
  output s_out_d6_159;
  output s_out_d7_160;
  output [1:0]O138;
  output [1:0]O139;
  output [1:0]O140;
  output [1:0]O141;
  output [1:0]O142;
  output [1:0]O143;
  output s_out_d1_cdc_to_161;
  output s_out_d2_162;
  output s_out_d3_163;
  output s_out_d4_164;
  output s_out_d5_165;
  output s_out_d6_166;
  output s_out_d7_167;
  output [1:0]O144;
  output [1:0]O145;
  output [1:0]O146;
  output [1:0]O147;
  output [1:0]O148;
  output [1:0]O149;
  output s_out_d1_cdc_to_168;
  output s_out_d2_169;
  output s_out_d3_170;
  output s_out_d4_171;
  output s_out_d5_172;
  output s_out_d6_173;
  output s_out_d7_174;
  output [1:0]O150;
  output [1:0]O151;
  output [1:0]O152;
  output [1:0]O153;
  output [1:0]O154;
  output [1:0]O155;
  output s_out_d1_cdc_to_175;
  output s_out_d2_176;
  output s_out_d3_177;
  output s_out_d4_178;
  output s_out_d5_179;
  output s_out_d6_180;
  output s_out_d7_181;
  output [1:0]O156;
  output [1:0]O157;
  output [1:0]O158;
  output [1:0]O159;
  output [1:0]O160;
  output [1:0]O161;
  output O162;
  output txn;
  output txp;
  output tx_out_clk;
  output [15:0]drpdo_out;
  output s_out_d1_cdc_to_182;
  output s_out_d2_183;
  output s_out_d3_184;
  output s_out_d4_185;
  output s_out_d5_186;
  output s_out_d6_187;
  output s_out_d7_188;
  output [1:0]O163;
  output [1:0]O164;
  output [1:0]O165;
  output [1:0]O166;
  output [1:0]O167;
  output [1:0]O168;
  output s_out_d1_cdc_to_189;
  output s_out_d2_190;
  output s_out_d3_191;
  output s_out_d4_192;
  output s_out_d5_193;
  output s_out_d6_194;
  output s_out_d7_195;
  output [1:0]O169;
  output [1:0]O170;
  output [1:0]O171;
  output [1:0]O172;
  output [1:0]O173;
  output [1:0]O174;
  output s_out_d1_cdc_to_196;
  output s_out_d2_197;
  output s_out_d3_198;
  output s_out_d4_199;
  output s_out_d5_200;
  output s_out_d6_201;
  output s_out_d7_202;
  output [1:0]O175;
  output [1:0]O176;
  output [1:0]O177;
  output [1:0]O178;
  output [1:0]O179;
  output [1:0]O180;
  output rx_resetdone_out;
  output O181;
  output link_reset_out;
  output O182;
  output soft_err;
  output hard_err;
  output frame_err;
  output m_axi_rx_tvalid;
  output [0:31]m_axi_rx_tdata;
  output [2:0]m_axi_rx_tkeep;
  output m_axi_rx_tlast;
  output s_axi_tx_tready;
  input reset;
  input user_clk;
  input init_clk_in;
  input drpclk_in;
  input rxn;
  input rxp;
  input gt_refclk1;
  input gt_qpllclk_quad4_in;
  input gt_qpllrefclk_quad4_in;
  input sync_clk;
  input power_down;
  input [2:0]loopback;
  input do_cc;
  input gt_reset;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input [0:31]s_axi_tx_tdata;
  input drpen_in;
  input [15:0]drpdi_in;
  input drpwe_in;
  input [8:0]drpaddr_in;
  input [0:3]s_axi_tx_tkeep;

  wire GEN_ECP;
  wire [0:1]GEN_PAD;
  wire GOT_V;
  wire [1:0]O1;
  wire [1:0]O10;
  wire [1:0]O100;
  wire [1:0]O101;
  wire [1:0]O102;
  wire [1:0]O103;
  wire [1:0]O104;
  wire [1:0]O105;
  wire [1:0]O106;
  wire [1:0]O107;
  wire [1:0]O108;
  wire [1:0]O109;
  wire [1:0]O11;
  wire [1:0]O110;
  wire [1:0]O111;
  wire [1:0]O112;
  wire [1:0]O113;
  wire [1:0]O114;
  wire [1:0]O115;
  wire [1:0]O116;
  wire [1:0]O117;
  wire [1:0]O118;
  wire [1:0]O119;
  wire [1:0]O12;
  wire [1:0]O120;
  wire [1:0]O121;
  wire [1:0]O122;
  wire [1:0]O123;
  wire [1:0]O124;
  wire [1:0]O125;
  wire [1:0]O126;
  wire [1:0]O127;
  wire [1:0]O128;
  wire [1:0]O129;
  wire [1:0]O13;
  wire [1:0]O130;
  wire [1:0]O131;
  wire [1:0]O132;
  wire [1:0]O133;
  wire [1:0]O134;
  wire [1:0]O135;
  wire [1:0]O136;
  wire [1:0]O137;
  wire [1:0]O138;
  wire [1:0]O139;
  wire [1:0]O14;
  wire [1:0]O140;
  wire [1:0]O141;
  wire [1:0]O142;
  wire [1:0]O143;
  wire [1:0]O144;
  wire [1:0]O145;
  wire [1:0]O146;
  wire [1:0]O147;
  wire [1:0]O148;
  wire [1:0]O149;
  wire [1:0]O15;
  wire [1:0]O150;
  wire [1:0]O151;
  wire [1:0]O152;
  wire [1:0]O153;
  wire [1:0]O154;
  wire [1:0]O155;
  wire [1:0]O156;
  wire [1:0]O157;
  wire [1:0]O158;
  wire [1:0]O159;
  wire [1:0]O16;
  wire [1:0]O160;
  wire [1:0]O161;
  wire O162;
  wire [1:0]O163;
  wire [1:0]O164;
  wire [1:0]O165;
  wire [1:0]O166;
  wire [1:0]O167;
  wire [1:0]O168;
  wire [1:0]O169;
  wire [1:0]O17;
  wire [1:0]O170;
  wire [1:0]O171;
  wire [1:0]O172;
  wire [1:0]O173;
  wire [1:0]O174;
  wire [1:0]O175;
  wire [1:0]O176;
  wire [1:0]O177;
  wire [1:0]O178;
  wire [1:0]O179;
  wire [1:0]O18;
  wire [1:0]O180;
  wire O181;
  wire O182;
  wire [1:0]O19;
  wire [1:0]O2;
  wire [1:0]O20;
  wire [1:0]O21;
  wire [1:0]O22;
  wire [1:0]O23;
  wire [1:0]O24;
  wire [1:0]O25;
  wire [1:0]O26;
  wire [1:0]O27;
  wire [1:0]O28;
  wire [1:0]O29;
  wire [1:0]O3;
  wire [1:0]O30;
  wire [1:0]O31;
  wire [1:0]O32;
  wire [1:0]O33;
  wire [1:0]O34;
  wire [1:0]O35;
  wire [1:0]O36;
  wire [1:0]O37;
  wire [1:0]O38;
  wire [1:0]O39;
  wire [1:0]O4;
  wire [1:0]O40;
  wire [1:0]O41;
  wire [1:0]O42;
  wire [1:0]O43;
  wire [1:0]O44;
  wire [1:0]O45;
  wire [1:0]O46;
  wire [1:0]O47;
  wire [1:0]O48;
  wire [1:0]O49;
  wire [1:0]O5;
  wire [1:0]O50;
  wire [1:0]O51;
  wire [1:0]O52;
  wire [1:0]O53;
  wire [1:0]O54;
  wire [1:0]O55;
  wire [1:0]O56;
  wire [1:0]O57;
  wire [1:0]O58;
  wire [1:0]O59;
  wire [1:0]O6;
  wire [1:0]O60;
  wire [1:0]O61;
  wire [1:0]O62;
  wire [1:0]O63;
  wire [1:0]O64;
  wire [1:0]O65;
  wire [1:0]O66;
  wire [1:0]O67;
  wire [1:0]O68;
  wire [1:0]O69;
  wire [1:0]O7;
  wire [1:0]O70;
  wire [1:0]O71;
  wire [1:0]O72;
  wire [1:0]O73;
  wire [1:0]O74;
  wire [1:0]O75;
  wire [1:0]O76;
  wire [1:0]O77;
  wire [1:0]O78;
  wire [1:0]O79;
  wire [1:0]O8;
  wire [1:0]O80;
  wire [1:0]O81;
  wire [1:0]O82;
  wire [1:0]O83;
  wire [1:0]O84;
  wire [1:0]O85;
  wire [1:0]O86;
  wire [1:0]O87;
  wire [1:0]O88;
  wire [1:0]O89;
  wire [1:0]O9;
  wire [1:0]O90;
  wire [1:0]O91;
  wire [1:0]O92;
  wire [1:0]O93;
  wire [1:0]O94;
  wire [1:0]O95;
  wire [1:0]O96;
  wire [1:0]O97;
  wire [1:0]O98;
  wire [1:0]O99;
  wire [0:1]SOFT_ERR;
  wire START_RX;
  wire [0:31]TX_PE_DATA;
  wire [0:1]TX_PE_DATA_V;
  wire \aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0 ;
  wire [0:0]\aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r ;
  wire do_cc;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire frame_err;
  wire gen_a_i;
  wire gen_cc_i;
  wire [0:3]gen_k_i;
  wire [0:3]gen_r_i;
  wire [1:3]gen_v_i;
  wire gt_qpllclk_quad4_in;
  wire gt_qpllrefclk_quad4_in;
  wire gt_refclk1;
  wire gt_reset;
  wire gtrxreset_i;
  wire hard_err;
  wire hard_err_i;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_comb_r;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [0:31]m_axi_rx_tdata;
  wire [2:0]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire n_0_axi_to_ll_pdu_i;
  wire n_100_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_101_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_102_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_103_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_104_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_105_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_106_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_107_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_108_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_109_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_110_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_1_axi_to_ll_pdu_i;
  wire n_28_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_29_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_2_aurora_8b10b_0_tx_ll_i;
  wire n_34_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_37_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_38_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_39_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_40_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_41_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_42_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_43_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_44_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_45_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_46_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_541_gt_wrapper_i;
  wire n_542_gt_wrapper_i;
  wire n_543_gt_wrapper_i;
  wire n_544_gt_wrapper_i;
  wire n_545_gt_wrapper_i;
  wire n_546_gt_wrapper_i;
  wire n_547_gt_wrapper_i;
  wire n_548_gt_wrapper_i;
  wire n_550_gt_wrapper_i;
  wire n_551_gt_wrapper_i;
  wire n_552_gt_wrapper_i;
  wire n_553_gt_wrapper_i;
  wire n_554_gt_wrapper_i;
  wire n_555_gt_wrapper_i;
  wire n_556_gt_wrapper_i;
  wire n_557_gt_wrapper_i;
  wire n_558_gt_wrapper_i;
  wire n_559_gt_wrapper_i;
  wire n_560_gt_wrapper_i;
  wire n_561_gt_wrapper_i;
  wire n_562_gt_wrapper_i;
  wire n_563_gt_wrapper_i;
  wire n_564_gt_wrapper_i;
  wire n_565_gt_wrapper_i;
  wire n_79_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_80_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_81_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_82_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_83_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_84_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_85_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_86_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_87_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_88_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_89_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_90_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_91_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_92_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_93_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_94_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_95_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_96_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_97_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_98_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_99_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire [1:0]out;
  wire power_down;
  wire reset;
  wire reset_lanes_i;
  wire [3:0]rx_char_is_comma_i;
  wire [3:0]rx_char_is_k_i;
  wire [31:0]rx_data_i;
  wire [1:0]rx_disp_err_i;
  wire [0:1]rx_ecp_striped_i;
  wire rx_eof;
  wire \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S1 ;
  wire \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S11_in ;
  wire rx_ll_rst;
  wire [0:1]rx_pe_data_v_striped_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire [0:1]rx_rem_int;
  wire rx_resetdone_out;
  wire [0:1]rx_scp_striped_i;
  wire rxn;
  wire rxp;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire s_out_d1_cdc_to;
  wire s_out_d1_cdc_to_0;
  wire s_out_d1_cdc_to_105;
  wire s_out_d1_cdc_to_112;
  wire s_out_d1_cdc_to_119;
  wire s_out_d1_cdc_to_126;
  wire s_out_d1_cdc_to_133;
  wire s_out_d1_cdc_to_14;
  wire s_out_d1_cdc_to_140;
  wire s_out_d1_cdc_to_147;
  wire s_out_d1_cdc_to_154;
  wire s_out_d1_cdc_to_161;
  wire s_out_d1_cdc_to_168;
  wire s_out_d1_cdc_to_175;
  wire s_out_d1_cdc_to_182;
  wire s_out_d1_cdc_to_189;
  wire s_out_d1_cdc_to_196;
  wire s_out_d1_cdc_to_21;
  wire s_out_d1_cdc_to_28;
  wire s_out_d1_cdc_to_35;
  wire s_out_d1_cdc_to_42;
  wire s_out_d1_cdc_to_49;
  wire s_out_d1_cdc_to_56;
  wire s_out_d1_cdc_to_63;
  wire s_out_d1_cdc_to_7;
  wire s_out_d1_cdc_to_70;
  wire s_out_d1_cdc_to_77;
  wire s_out_d1_cdc_to_84;
  wire s_out_d1_cdc_to_91;
  wire s_out_d1_cdc_to_98;
  wire s_out_d2;
  wire s_out_d2_1;
  wire s_out_d2_106;
  wire s_out_d2_113;
  wire s_out_d2_120;
  wire s_out_d2_127;
  wire s_out_d2_134;
  wire s_out_d2_141;
  wire s_out_d2_148;
  wire s_out_d2_15;
  wire s_out_d2_155;
  wire s_out_d2_162;
  wire s_out_d2_169;
  wire s_out_d2_176;
  wire s_out_d2_183;
  wire s_out_d2_190;
  wire s_out_d2_197;
  wire s_out_d2_22;
  wire s_out_d2_29;
  wire s_out_d2_36;
  wire s_out_d2_43;
  wire s_out_d2_50;
  wire s_out_d2_57;
  wire s_out_d2_64;
  wire s_out_d2_71;
  wire s_out_d2_78;
  wire s_out_d2_8;
  wire s_out_d2_85;
  wire s_out_d2_92;
  wire s_out_d2_99;
  wire s_out_d3;
  wire s_out_d3_100;
  wire s_out_d3_107;
  wire s_out_d3_114;
  wire s_out_d3_121;
  wire s_out_d3_128;
  wire s_out_d3_135;
  wire s_out_d3_142;
  wire s_out_d3_149;
  wire s_out_d3_156;
  wire s_out_d3_16;
  wire s_out_d3_163;
  wire s_out_d3_170;
  wire s_out_d3_177;
  wire s_out_d3_184;
  wire s_out_d3_191;
  wire s_out_d3_198;
  wire s_out_d3_2;
  wire s_out_d3_23;
  wire s_out_d3_30;
  wire s_out_d3_37;
  wire s_out_d3_44;
  wire s_out_d3_51;
  wire s_out_d3_58;
  wire s_out_d3_65;
  wire s_out_d3_72;
  wire s_out_d3_79;
  wire s_out_d3_86;
  wire s_out_d3_9;
  wire s_out_d3_93;
  wire s_out_d4;
  wire s_out_d4_10;
  wire s_out_d4_101;
  wire s_out_d4_108;
  wire s_out_d4_115;
  wire s_out_d4_122;
  wire s_out_d4_129;
  wire s_out_d4_136;
  wire s_out_d4_143;
  wire s_out_d4_150;
  wire s_out_d4_157;
  wire s_out_d4_164;
  wire s_out_d4_17;
  wire s_out_d4_171;
  wire s_out_d4_178;
  wire s_out_d4_185;
  wire s_out_d4_192;
  wire s_out_d4_199;
  wire s_out_d4_24;
  wire s_out_d4_3;
  wire s_out_d4_31;
  wire s_out_d4_38;
  wire s_out_d4_45;
  wire s_out_d4_52;
  wire s_out_d4_59;
  wire s_out_d4_66;
  wire s_out_d4_73;
  wire s_out_d4_80;
  wire s_out_d4_87;
  wire s_out_d4_94;
  wire s_out_d5;
  wire s_out_d5_102;
  wire s_out_d5_109;
  wire s_out_d5_11;
  wire s_out_d5_116;
  wire s_out_d5_123;
  wire s_out_d5_130;
  wire s_out_d5_137;
  wire s_out_d5_144;
  wire s_out_d5_151;
  wire s_out_d5_158;
  wire s_out_d5_165;
  wire s_out_d5_172;
  wire s_out_d5_179;
  wire s_out_d5_18;
  wire s_out_d5_186;
  wire s_out_d5_193;
  wire s_out_d5_200;
  wire s_out_d5_25;
  wire s_out_d5_32;
  wire s_out_d5_39;
  wire s_out_d5_4;
  wire s_out_d5_46;
  wire s_out_d5_53;
  wire s_out_d5_60;
  wire s_out_d5_67;
  wire s_out_d5_74;
  wire s_out_d5_81;
  wire s_out_d5_88;
  wire s_out_d5_95;
  wire s_out_d6;
  wire s_out_d6_103;
  wire s_out_d6_110;
  wire s_out_d6_117;
  wire s_out_d6_12;
  wire s_out_d6_124;
  wire s_out_d6_131;
  wire s_out_d6_138;
  wire s_out_d6_145;
  wire s_out_d6_152;
  wire s_out_d6_159;
  wire s_out_d6_166;
  wire s_out_d6_173;
  wire s_out_d6_180;
  wire s_out_d6_187;
  wire s_out_d6_19;
  wire s_out_d6_194;
  wire s_out_d6_201;
  wire s_out_d6_26;
  wire s_out_d6_33;
  wire s_out_d6_40;
  wire s_out_d6_47;
  wire s_out_d6_5;
  wire s_out_d6_54;
  wire s_out_d6_61;
  wire s_out_d6_68;
  wire s_out_d6_75;
  wire s_out_d6_82;
  wire s_out_d6_89;
  wire s_out_d6_96;
  wire s_out_d7;
  wire s_out_d7_104;
  wire s_out_d7_111;
  wire s_out_d7_118;
  wire s_out_d7_125;
  wire s_out_d7_13;
  wire s_out_d7_132;
  wire s_out_d7_139;
  wire s_out_d7_146;
  wire s_out_d7_153;
  wire s_out_d7_160;
  wire s_out_d7_167;
  wire s_out_d7_174;
  wire s_out_d7_181;
  wire s_out_d7_188;
  wire s_out_d7_195;
  wire s_out_d7_20;
  wire s_out_d7_202;
  wire s_out_d7_27;
  wire s_out_d7_34;
  wire s_out_d7_41;
  wire s_out_d7_48;
  wire s_out_d7_55;
  wire s_out_d7_6;
  wire s_out_d7_62;
  wire s_out_d7_69;
  wire s_out_d7_76;
  wire s_out_d7_83;
  wire s_out_d7_90;
  wire s_out_d7_97;
  wire soft_err;
  wire sync_clk;
  wire [3:0]tx_char_is_k_i;
  wire [31:0]tx_data_i;
  wire tx_dst_rdy;
  wire \tx_ll_control_i/reset_i ;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_resetdone_out;
  wire txn;
  wire txp;
  wire user_clk;

aurora_8b10b_0_aurora_8b10b_0_AURORA_LANE_4BYTE aurora_8b10b_0_aurora_lane_4byte_0_i
       (.D(rx_char_is_comma_i),
        .GEN_ECP(GEN_ECP),
        .GOT_V(GOT_V),
        .I1(n_2_aurora_8b10b_0_tx_ll_i),
        .I10({TX_PE_DATA[0],TX_PE_DATA[1],TX_PE_DATA[2],TX_PE_DATA[3],TX_PE_DATA[4],TX_PE_DATA[5],TX_PE_DATA[6],TX_PE_DATA[7],TX_PE_DATA[8],TX_PE_DATA[9],TX_PE_DATA[10],TX_PE_DATA[11],TX_PE_DATA[12],TX_PE_DATA[13],TX_PE_DATA[14],TX_PE_DATA[15],TX_PE_DATA[16],TX_PE_DATA[17],TX_PE_DATA[18],TX_PE_DATA[19],TX_PE_DATA[20],TX_PE_DATA[21],TX_PE_DATA[22],TX_PE_DATA[23],TX_PE_DATA[24],TX_PE_DATA[25],TX_PE_DATA[26],TX_PE_DATA[27],TX_PE_DATA[28],TX_PE_DATA[29],TX_PE_DATA[30],TX_PE_DATA[31]}),
        .I11({n_550_gt_wrapper_i,n_551_gt_wrapper_i,n_552_gt_wrapper_i,n_553_gt_wrapper_i,n_554_gt_wrapper_i,n_555_gt_wrapper_i,n_556_gt_wrapper_i,n_557_gt_wrapper_i}),
        .I12({n_558_gt_wrapper_i,n_559_gt_wrapper_i,n_560_gt_wrapper_i,n_561_gt_wrapper_i,n_562_gt_wrapper_i,n_563_gt_wrapper_i,n_564_gt_wrapper_i,n_565_gt_wrapper_i}),
        .I13(n_542_gt_wrapper_i),
        .I14(n_543_gt_wrapper_i),
        .I15(n_544_gt_wrapper_i),
        .I16(n_545_gt_wrapper_i),
        .I2(n_547_gt_wrapper_i),
        .I3(n_548_gt_wrapper_i),
        .I4(n_546_gt_wrapper_i),
        .I5({GEN_PAD[0],GEN_PAD[1]}),
        .I6({TX_PE_DATA_V[0],TX_PE_DATA_V[1]}),
        .I7({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .I8({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .I9({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .O1(n_28_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .O10({n_87_aurora_8b10b_0_aurora_lane_4byte_0_i,n_88_aurora_8b10b_0_aurora_lane_4byte_0_i,n_89_aurora_8b10b_0_aurora_lane_4byte_0_i,n_90_aurora_8b10b_0_aurora_lane_4byte_0_i,n_91_aurora_8b10b_0_aurora_lane_4byte_0_i,n_92_aurora_8b10b_0_aurora_lane_4byte_0_i,n_93_aurora_8b10b_0_aurora_lane_4byte_0_i,n_94_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O11({n_95_aurora_8b10b_0_aurora_lane_4byte_0_i,n_96_aurora_8b10b_0_aurora_lane_4byte_0_i,n_97_aurora_8b10b_0_aurora_lane_4byte_0_i,n_98_aurora_8b10b_0_aurora_lane_4byte_0_i,n_99_aurora_8b10b_0_aurora_lane_4byte_0_i,n_100_aurora_8b10b_0_aurora_lane_4byte_0_i,n_101_aurora_8b10b_0_aurora_lane_4byte_0_i,n_102_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O12({n_103_aurora_8b10b_0_aurora_lane_4byte_0_i,n_104_aurora_8b10b_0_aurora_lane_4byte_0_i,n_105_aurora_8b10b_0_aurora_lane_4byte_0_i,n_106_aurora_8b10b_0_aurora_lane_4byte_0_i,n_107_aurora_8b10b_0_aurora_lane_4byte_0_i,n_108_aurora_8b10b_0_aurora_lane_4byte_0_i,n_109_aurora_8b10b_0_aurora_lane_4byte_0_i,n_110_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O13({rx_pe_data_v_striped_i[0],rx_pe_data_v_striped_i[1]}),
        .O14({SOFT_ERR[0],SOFT_ERR[1]}),
        .O2(n_29_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .O3({rx_scp_striped_i[0],rx_scp_striped_i[1]}),
        .O4(n_34_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .O5(\aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r ),
        .O6(n_37_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .O7(n_38_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .O8({n_39_aurora_8b10b_0_aurora_lane_4byte_0_i,n_40_aurora_8b10b_0_aurora_lane_4byte_0_i,n_41_aurora_8b10b_0_aurora_lane_4byte_0_i,n_42_aurora_8b10b_0_aurora_lane_4byte_0_i,n_43_aurora_8b10b_0_aurora_lane_4byte_0_i,n_44_aurora_8b10b_0_aurora_lane_4byte_0_i,n_45_aurora_8b10b_0_aurora_lane_4byte_0_i,n_46_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O9({n_79_aurora_8b10b_0_aurora_lane_4byte_0_i,n_80_aurora_8b10b_0_aurora_lane_4byte_0_i,n_81_aurora_8b10b_0_aurora_lane_4byte_0_i,n_82_aurora_8b10b_0_aurora_lane_4byte_0_i,n_83_aurora_8b10b_0_aurora_lane_4byte_0_i,n_84_aurora_8b10b_0_aurora_lane_4byte_0_i,n_85_aurora_8b10b_0_aurora_lane_4byte_0_i,n_86_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .Q({rx_ecp_striped_i[0],rx_ecp_striped_i[1]}),
        .RXCHARISK(rx_char_is_k_i),
        .RXDATA(rx_data_i),
        .RXDISPERR(rx_disp_err_i),
        .S1(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S1 ),
        .S11_in(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S11_in ),
        .SR(reset_lanes_i),
        .TXCHARISK(tx_char_is_k_i),
        .TXDATA(tx_data_i),
        .ena_comma_align_i(ena_comma_align_i),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .hard_err_gt0(\aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0 ),
        .hard_err_i(hard_err_i),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .link_reset_out(link_reset_out),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .s_out_d1_cdc_to_21(s_out_d1_cdc_to_21),
        .s_out_d2_22(s_out_d2_22),
        .s_out_d3_23(s_out_d3_23),
        .s_out_d4_24(s_out_d4_24),
        .s_out_d5_25(s_out_d5_25),
        .s_out_d6_26(s_out_d6_26),
        .s_out_d7_27(s_out_d7_27),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_GLOBAL_LOGIC aurora_8b10b_0_global_logic_i
       (.D({SOFT_ERR[0],SOFT_ERR[1]}),
        .GOT_V(GOT_V),
        .I1(O181),
        .I7({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .I8({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .I9({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .O1(O182),
        .O2(rx_ll_rst),
        .SR(reset_lanes_i),
        .START_RX(START_RX),
        .gen_a_i(gen_a_i),
        .gtrxreset_i(gtrxreset_i),
        .hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .lane_up(lane_up),
        .power_down(power_down),
        .reset_i(\tx_ll_control_i/reset_i ),
        .soft_err(soft_err),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_RX_LL aurora_8b10b_0_rx_ll_i
       (.D({rx_scp_striped_i[0],rx_scp_striped_i[1]}),
        .I1(n_34_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .I2(n_29_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .I3(n_28_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .I4({rx_ecp_striped_i[0],rx_ecp_striped_i[1]}),
        .O10({n_87_aurora_8b10b_0_aurora_lane_4byte_0_i,n_88_aurora_8b10b_0_aurora_lane_4byte_0_i,n_89_aurora_8b10b_0_aurora_lane_4byte_0_i,n_90_aurora_8b10b_0_aurora_lane_4byte_0_i,n_91_aurora_8b10b_0_aurora_lane_4byte_0_i,n_92_aurora_8b10b_0_aurora_lane_4byte_0_i,n_93_aurora_8b10b_0_aurora_lane_4byte_0_i,n_94_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O11({n_95_aurora_8b10b_0_aurora_lane_4byte_0_i,n_96_aurora_8b10b_0_aurora_lane_4byte_0_i,n_97_aurora_8b10b_0_aurora_lane_4byte_0_i,n_98_aurora_8b10b_0_aurora_lane_4byte_0_i,n_99_aurora_8b10b_0_aurora_lane_4byte_0_i,n_100_aurora_8b10b_0_aurora_lane_4byte_0_i,n_101_aurora_8b10b_0_aurora_lane_4byte_0_i,n_102_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O12({n_103_aurora_8b10b_0_aurora_lane_4byte_0_i,n_104_aurora_8b10b_0_aurora_lane_4byte_0_i,n_105_aurora_8b10b_0_aurora_lane_4byte_0_i,n_106_aurora_8b10b_0_aurora_lane_4byte_0_i,n_107_aurora_8b10b_0_aurora_lane_4byte_0_i,n_108_aurora_8b10b_0_aurora_lane_4byte_0_i,n_109_aurora_8b10b_0_aurora_lane_4byte_0_i,n_110_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O13({rx_pe_data_v_striped_i[0],rx_pe_data_v_striped_i[1]}),
        .O9({n_79_aurora_8b10b_0_aurora_lane_4byte_0_i,n_80_aurora_8b10b_0_aurora_lane_4byte_0_i,n_81_aurora_8b10b_0_aurora_lane_4byte_0_i,n_82_aurora_8b10b_0_aurora_lane_4byte_0_i,n_83_aurora_8b10b_0_aurora_lane_4byte_0_i,n_84_aurora_8b10b_0_aurora_lane_4byte_0_i,n_85_aurora_8b10b_0_aurora_lane_4byte_0_i,n_86_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .Q({rx_rem_int[0],rx_rem_int[1]}),
        .S1(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S1 ),
        .S11_in(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S11_in ),
        .SR(rx_ll_rst),
        .START_RX(START_RX),
        .frame_err(frame_err),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .rx_eof(rx_eof),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_TX_LL aurora_8b10b_0_tx_ll_i
       (.GEN_ECP(GEN_ECP),
        .I1(n_0_axi_to_ll_pdu_i),
        .I2(n_1_axi_to_ll_pdu_i),
        .I5({GEN_PAD[0],GEN_PAD[1]}),
        .I6({TX_PE_DATA_V[0],TX_PE_DATA_V[1]}),
        .O1(n_2_aurora_8b10b_0_tx_ll_i),
        .O182(O182),
        .Q({TX_PE_DATA[0],TX_PE_DATA[1],TX_PE_DATA[2],TX_PE_DATA[3],TX_PE_DATA[4],TX_PE_DATA[5],TX_PE_DATA[6],TX_PE_DATA[7],TX_PE_DATA[8],TX_PE_DATA[9],TX_PE_DATA[10],TX_PE_DATA[11],TX_PE_DATA[12],TX_PE_DATA[13],TX_PE_DATA[14],TX_PE_DATA[15],TX_PE_DATA[16],TX_PE_DATA[17],TX_PE_DATA[18],TX_PE_DATA[19],TX_PE_DATA[20],TX_PE_DATA[21],TX_PE_DATA[22],TX_PE_DATA[23],TX_PE_DATA[24],TX_PE_DATA[25],TX_PE_DATA[26],TX_PE_DATA[27],TX_PE_DATA[28],TX_PE_DATA[29],TX_PE_DATA[30],TX_PE_DATA[31]}),
        .do_cc(do_cc),
        .gen_cc_i(gen_cc_i),
        .reset_i(\tx_ll_control_i/reset_i ),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_AXI_TO_LL axi_to_ll_pdu_i
       (.O1(n_0_axi_to_ll_pdu_i),
        .O181(O181),
        .O182(O182),
        .O2(n_1_axi_to_ll_pdu_i),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_RESET_LOGIC core_reset_logic_i
       (.I1(tx_resetdone_out),
        .I2(n_541_gt_wrapper_i),
        .I3(tx_lock),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O181(O181),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .init_clk_in(init_clk_in),
        .link_reset_comb_r(link_reset_comb_r),
        .link_reset_out(link_reset_out),
        .out(out),
        .reset(reset),
        .s_out_d1_cdc_to(s_out_d1_cdc_to),
        .s_out_d1_cdc_to_0(s_out_d1_cdc_to_0),
        .s_out_d1_cdc_to_7(s_out_d1_cdc_to_7),
        .s_out_d2(s_out_d2),
        .s_out_d2_1(s_out_d2_1),
        .s_out_d2_8(s_out_d2_8),
        .s_out_d3(s_out_d3),
        .s_out_d3_2(s_out_d3_2),
        .s_out_d3_9(s_out_d3_9),
        .s_out_d4(s_out_d4),
        .s_out_d4_10(s_out_d4_10),
        .s_out_d4_3(s_out_d4_3),
        .s_out_d5(s_out_d5),
        .s_out_d5_11(s_out_d5_11),
        .s_out_d5_4(s_out_d5_4),
        .s_out_d6(s_out_d6),
        .s_out_d6_12(s_out_d6_12),
        .s_out_d6_5(s_out_d6_5),
        .s_out_d7(s_out_d7),
        .s_out_d7_13(s_out_d7_13),
        .s_out_d7_6(s_out_d7_6),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_GT_WRAPPER gt_wrapper_i
       (.D(rx_char_is_comma_i),
        .I1(n_37_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .I11({n_550_gt_wrapper_i,n_551_gt_wrapper_i,n_552_gt_wrapper_i,n_553_gt_wrapper_i,n_554_gt_wrapper_i,n_555_gt_wrapper_i,n_556_gt_wrapper_i,n_557_gt_wrapper_i}),
        .I12({n_558_gt_wrapper_i,n_559_gt_wrapper_i,n_560_gt_wrapper_i,n_561_gt_wrapper_i,n_562_gt_wrapper_i,n_563_gt_wrapper_i,n_564_gt_wrapper_i,n_565_gt_wrapper_i}),
        .I2(n_38_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .I3(\aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r ),
        .I4({n_39_aurora_8b10b_0_aurora_lane_4byte_0_i,n_40_aurora_8b10b_0_aurora_lane_4byte_0_i,n_41_aurora_8b10b_0_aurora_lane_4byte_0_i,n_42_aurora_8b10b_0_aurora_lane_4byte_0_i,n_43_aurora_8b10b_0_aurora_lane_4byte_0_i,n_44_aurora_8b10b_0_aurora_lane_4byte_0_i,n_45_aurora_8b10b_0_aurora_lane_4byte_0_i,n_46_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O1(tx_resetdone_out),
        .O10(n_547_gt_wrapper_i),
        .O100(O100),
        .O101(O101),
        .O102(O102),
        .O103(O103),
        .O104(O104),
        .O105(O105),
        .O106(O106),
        .O107(O107),
        .O108(O108),
        .O109(O109),
        .O11(n_548_gt_wrapper_i),
        .O110(O110),
        .O111(O111),
        .O112(O112),
        .O113(O113),
        .O114(O114),
        .O115(O115),
        .O116(O116),
        .O117(O117),
        .O118(O118),
        .O119(O119),
        .O120(O120),
        .O121(O121),
        .O122(O122),
        .O123(O123),
        .O124(O124),
        .O125(O125),
        .O126(O126),
        .O127(O127),
        .O128(O128),
        .O129(O129),
        .O130(O130),
        .O131(O131),
        .O132(O132),
        .O133(O133),
        .O134(O134),
        .O135(O135),
        .O136(O136),
        .O137(O137),
        .O138(O138),
        .O139(O139),
        .O140(O140),
        .O141(O141),
        .O142(O142),
        .O143(O143),
        .O144(O144),
        .O145(O145),
        .O146(O146),
        .O147(O147),
        .O148(O148),
        .O149(O149),
        .O150(O150),
        .O151(O151),
        .O152(O152),
        .O153(O153),
        .O154(O154),
        .O155(O155),
        .O156(O156),
        .O157(O157),
        .O158(O158),
        .O159(O159),
        .O160(O160),
        .O161(O161),
        .O163(O163),
        .O164(O164),
        .O165(O165),
        .O166(O166),
        .O167(O167),
        .O168(O168),
        .O169(O169),
        .O170(O170),
        .O171(O171),
        .O172(O172),
        .O173(O173),
        .O174(O174),
        .O175(O175),
        .O176(O176),
        .O177(O177),
        .O178(O178),
        .O179(O179),
        .O180(O180),
        .O2(tx_lock),
        .O3(O162),
        .O30(O30),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O36(O36),
        .O37(O37),
        .O38(O38),
        .O39(O39),
        .O4(n_541_gt_wrapper_i),
        .O40(O40),
        .O41(O41),
        .O42(O42),
        .O43(O43),
        .O44(O44),
        .O45(O45),
        .O46(O46),
        .O47(O47),
        .O48(O48),
        .O49(O49),
        .O5(n_542_gt_wrapper_i),
        .O50(O50),
        .O51(O51),
        .O52(O52),
        .O53(O53),
        .O54(O54),
        .O55(O55),
        .O56(O56),
        .O57(O57),
        .O58(O58),
        .O59(O59),
        .O6(n_543_gt_wrapper_i),
        .O60(O60),
        .O61(O61),
        .O62(O62),
        .O63(O63),
        .O64(O64),
        .O65(O65),
        .O66(O66),
        .O67(O67),
        .O68(O68),
        .O69(O69),
        .O7(n_544_gt_wrapper_i),
        .O70(O70),
        .O71(O71),
        .O72(O72),
        .O73(O73),
        .O74(O74),
        .O75(O75),
        .O76(O76),
        .O77(O77),
        .O78(O78),
        .O79(O79),
        .O8(n_545_gt_wrapper_i),
        .O80(O80),
        .O81(O81),
        .O82(O82),
        .O83(O83),
        .O84(O84),
        .O85(O85),
        .O86(O86),
        .O87(O87),
        .O88(O88),
        .O89(O89),
        .O9(n_546_gt_wrapper_i),
        .O90(O90),
        .O91(O91),
        .O92(O92),
        .O93(O93),
        .O94(O94),
        .O95(O95),
        .O96(O96),
        .O97(O97),
        .O98(O98),
        .O99(O99),
        .RXCHARISK(rx_char_is_k_i),
        .RXDATA(rx_data_i),
        .RXDISPERR(rx_disp_err_i),
        .TXCHARISK(tx_char_is_k_i),
        .TXDATA(tx_data_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt_qpllclk_quad4_in(gt_qpllclk_quad4_in),
        .gt_qpllrefclk_quad4_in(gt_qpllrefclk_quad4_in),
        .gt_refclk1(gt_refclk1),
        .gt_reset(gt_reset),
        .gtrxreset_i(gtrxreset_i),
        .hard_err_gt0(\aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0 ),
        .init_clk_in(init_clk_in),
        .link_reset_comb_r(link_reset_comb_r),
        .loopback(loopback),
        .power_down(power_down),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rx_resetdone_out(rx_resetdone_out),
        .rxn(rxn),
        .rxp(rxp),
        .s_out_d1_cdc_to_105(s_out_d1_cdc_to_105),
        .s_out_d1_cdc_to_112(s_out_d1_cdc_to_112),
        .s_out_d1_cdc_to_119(s_out_d1_cdc_to_119),
        .s_out_d1_cdc_to_126(s_out_d1_cdc_to_126),
        .s_out_d1_cdc_to_133(s_out_d1_cdc_to_133),
        .s_out_d1_cdc_to_140(s_out_d1_cdc_to_140),
        .s_out_d1_cdc_to_147(s_out_d1_cdc_to_147),
        .s_out_d1_cdc_to_154(s_out_d1_cdc_to_154),
        .s_out_d1_cdc_to_161(s_out_d1_cdc_to_161),
        .s_out_d1_cdc_to_168(s_out_d1_cdc_to_168),
        .s_out_d1_cdc_to_175(s_out_d1_cdc_to_175),
        .s_out_d1_cdc_to_182(s_out_d1_cdc_to_182),
        .s_out_d1_cdc_to_189(s_out_d1_cdc_to_189),
        .s_out_d1_cdc_to_196(s_out_d1_cdc_to_196),
        .s_out_d1_cdc_to_28(s_out_d1_cdc_to_28),
        .s_out_d1_cdc_to_35(s_out_d1_cdc_to_35),
        .s_out_d1_cdc_to_42(s_out_d1_cdc_to_42),
        .s_out_d1_cdc_to_49(s_out_d1_cdc_to_49),
        .s_out_d1_cdc_to_56(s_out_d1_cdc_to_56),
        .s_out_d1_cdc_to_63(s_out_d1_cdc_to_63),
        .s_out_d1_cdc_to_70(s_out_d1_cdc_to_70),
        .s_out_d1_cdc_to_77(s_out_d1_cdc_to_77),
        .s_out_d1_cdc_to_84(s_out_d1_cdc_to_84),
        .s_out_d1_cdc_to_91(s_out_d1_cdc_to_91),
        .s_out_d1_cdc_to_98(s_out_d1_cdc_to_98),
        .s_out_d2_106(s_out_d2_106),
        .s_out_d2_113(s_out_d2_113),
        .s_out_d2_120(s_out_d2_120),
        .s_out_d2_127(s_out_d2_127),
        .s_out_d2_134(s_out_d2_134),
        .s_out_d2_141(s_out_d2_141),
        .s_out_d2_148(s_out_d2_148),
        .s_out_d2_155(s_out_d2_155),
        .s_out_d2_162(s_out_d2_162),
        .s_out_d2_169(s_out_d2_169),
        .s_out_d2_176(s_out_d2_176),
        .s_out_d2_183(s_out_d2_183),
        .s_out_d2_190(s_out_d2_190),
        .s_out_d2_197(s_out_d2_197),
        .s_out_d2_29(s_out_d2_29),
        .s_out_d2_36(s_out_d2_36),
        .s_out_d2_43(s_out_d2_43),
        .s_out_d2_50(s_out_d2_50),
        .s_out_d2_57(s_out_d2_57),
        .s_out_d2_64(s_out_d2_64),
        .s_out_d2_71(s_out_d2_71),
        .s_out_d2_78(s_out_d2_78),
        .s_out_d2_85(s_out_d2_85),
        .s_out_d2_92(s_out_d2_92),
        .s_out_d2_99(s_out_d2_99),
        .s_out_d3_100(s_out_d3_100),
        .s_out_d3_107(s_out_d3_107),
        .s_out_d3_114(s_out_d3_114),
        .s_out_d3_121(s_out_d3_121),
        .s_out_d3_128(s_out_d3_128),
        .s_out_d3_135(s_out_d3_135),
        .s_out_d3_142(s_out_d3_142),
        .s_out_d3_149(s_out_d3_149),
        .s_out_d3_156(s_out_d3_156),
        .s_out_d3_163(s_out_d3_163),
        .s_out_d3_170(s_out_d3_170),
        .s_out_d3_177(s_out_d3_177),
        .s_out_d3_184(s_out_d3_184),
        .s_out_d3_191(s_out_d3_191),
        .s_out_d3_198(s_out_d3_198),
        .s_out_d3_30(s_out_d3_30),
        .s_out_d3_37(s_out_d3_37),
        .s_out_d3_44(s_out_d3_44),
        .s_out_d3_51(s_out_d3_51),
        .s_out_d3_58(s_out_d3_58),
        .s_out_d3_65(s_out_d3_65),
        .s_out_d3_72(s_out_d3_72),
        .s_out_d3_79(s_out_d3_79),
        .s_out_d3_86(s_out_d3_86),
        .s_out_d3_93(s_out_d3_93),
        .s_out_d4_101(s_out_d4_101),
        .s_out_d4_108(s_out_d4_108),
        .s_out_d4_115(s_out_d4_115),
        .s_out_d4_122(s_out_d4_122),
        .s_out_d4_129(s_out_d4_129),
        .s_out_d4_136(s_out_d4_136),
        .s_out_d4_143(s_out_d4_143),
        .s_out_d4_150(s_out_d4_150),
        .s_out_d4_157(s_out_d4_157),
        .s_out_d4_164(s_out_d4_164),
        .s_out_d4_171(s_out_d4_171),
        .s_out_d4_178(s_out_d4_178),
        .s_out_d4_185(s_out_d4_185),
        .s_out_d4_192(s_out_d4_192),
        .s_out_d4_199(s_out_d4_199),
        .s_out_d4_31(s_out_d4_31),
        .s_out_d4_38(s_out_d4_38),
        .s_out_d4_45(s_out_d4_45),
        .s_out_d4_52(s_out_d4_52),
        .s_out_d4_59(s_out_d4_59),
        .s_out_d4_66(s_out_d4_66),
        .s_out_d4_73(s_out_d4_73),
        .s_out_d4_80(s_out_d4_80),
        .s_out_d4_87(s_out_d4_87),
        .s_out_d4_94(s_out_d4_94),
        .s_out_d5_102(s_out_d5_102),
        .s_out_d5_109(s_out_d5_109),
        .s_out_d5_116(s_out_d5_116),
        .s_out_d5_123(s_out_d5_123),
        .s_out_d5_130(s_out_d5_130),
        .s_out_d5_137(s_out_d5_137),
        .s_out_d5_144(s_out_d5_144),
        .s_out_d5_151(s_out_d5_151),
        .s_out_d5_158(s_out_d5_158),
        .s_out_d5_165(s_out_d5_165),
        .s_out_d5_172(s_out_d5_172),
        .s_out_d5_179(s_out_d5_179),
        .s_out_d5_186(s_out_d5_186),
        .s_out_d5_193(s_out_d5_193),
        .s_out_d5_200(s_out_d5_200),
        .s_out_d5_32(s_out_d5_32),
        .s_out_d5_39(s_out_d5_39),
        .s_out_d5_46(s_out_d5_46),
        .s_out_d5_53(s_out_d5_53),
        .s_out_d5_60(s_out_d5_60),
        .s_out_d5_67(s_out_d5_67),
        .s_out_d5_74(s_out_d5_74),
        .s_out_d5_81(s_out_d5_81),
        .s_out_d5_88(s_out_d5_88),
        .s_out_d5_95(s_out_d5_95),
        .s_out_d6_103(s_out_d6_103),
        .s_out_d6_110(s_out_d6_110),
        .s_out_d6_117(s_out_d6_117),
        .s_out_d6_124(s_out_d6_124),
        .s_out_d6_131(s_out_d6_131),
        .s_out_d6_138(s_out_d6_138),
        .s_out_d6_145(s_out_d6_145),
        .s_out_d6_152(s_out_d6_152),
        .s_out_d6_159(s_out_d6_159),
        .s_out_d6_166(s_out_d6_166),
        .s_out_d6_173(s_out_d6_173),
        .s_out_d6_180(s_out_d6_180),
        .s_out_d6_187(s_out_d6_187),
        .s_out_d6_194(s_out_d6_194),
        .s_out_d6_201(s_out_d6_201),
        .s_out_d6_33(s_out_d6_33),
        .s_out_d6_40(s_out_d6_40),
        .s_out_d6_47(s_out_d6_47),
        .s_out_d6_54(s_out_d6_54),
        .s_out_d6_61(s_out_d6_61),
        .s_out_d6_68(s_out_d6_68),
        .s_out_d6_75(s_out_d6_75),
        .s_out_d6_82(s_out_d6_82),
        .s_out_d6_89(s_out_d6_89),
        .s_out_d6_96(s_out_d6_96),
        .s_out_d7_104(s_out_d7_104),
        .s_out_d7_111(s_out_d7_111),
        .s_out_d7_118(s_out_d7_118),
        .s_out_d7_125(s_out_d7_125),
        .s_out_d7_132(s_out_d7_132),
        .s_out_d7_139(s_out_d7_139),
        .s_out_d7_146(s_out_d7_146),
        .s_out_d7_153(s_out_d7_153),
        .s_out_d7_160(s_out_d7_160),
        .s_out_d7_167(s_out_d7_167),
        .s_out_d7_174(s_out_d7_174),
        .s_out_d7_181(s_out_d7_181),
        .s_out_d7_188(s_out_d7_188),
        .s_out_d7_195(s_out_d7_195),
        .s_out_d7_202(s_out_d7_202),
        .s_out_d7_34(s_out_d7_34),
        .s_out_d7_41(s_out_d7_41),
        .s_out_d7_48(s_out_d7_48),
        .s_out_d7_55(s_out_d7_55),
        .s_out_d7_62(s_out_d7_62),
        .s_out_d7_69(s_out_d7_69),
        .s_out_d7_76(s_out_d7_76),
        .s_out_d7_83(s_out_d7_83),
        .s_out_d7_90(s_out_d7_90),
        .s_out_d7_97(s_out_d7_97),
        .sync_clk(sync_clk),
        .tx_out_clk(tx_out_clk),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync hpcnt_reset_cdc_sync
       (.O18(O18),
        .O19(O19),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .init_clk_in(init_clk_in),
        .reset(reset),
        .s_out_d1_cdc_to_14(s_out_d1_cdc_to_14),
        .s_out_d2_15(s_out_d2_15),
        .s_out_d3_16(s_out_d3_16),
        .s_out_d4_17(s_out_d4_17),
        .s_out_d5_18(s_out_d5_18),
        .s_out_d6_19(s_out_d6_19),
        .s_out_d7_20(s_out_d7_20));
aurora_8b10b_0_aurora_8b10b_0_LL_TO_AXI ll_to_axi_pdu_i
       (.Q({rx_rem_int[0],rx_rem_int[1]}),
        .m_axi_rx_tkeep(m_axi_rx_tkeep),
        .rx_eof(rx_eof));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_gt" *) 
module aurora_8b10b_0_aurora_8b10b_0_gt
   (O2,
    O1,
    txn,
    txp,
    rx_realign_i,
    O3,
    tx_out_clk,
    O4,
    drpdo_out,
    RXDATA,
    D,
    RXCHARISK,
    RXDISPERR,
    s_out_d1_cdc_to_182,
    s_out_d2_183,
    s_out_d3_184,
    s_out_d4_185,
    s_out_d5_186,
    s_out_d6_187,
    s_out_d7_188,
    O163,
    O164,
    O165,
    O166,
    O167,
    O168,
    s_out_d1_cdc_to_189,
    s_out_d2_190,
    s_out_d3_191,
    s_out_d4_192,
    s_out_d5_193,
    s_out_d6_194,
    s_out_d7_195,
    O169,
    O170,
    O171,
    O172,
    O173,
    O174,
    s_out_d1_cdc_to_196,
    s_out_d2_197,
    s_out_d3_198,
    s_out_d4_199,
    s_out_d5_200,
    s_out_d6_201,
    s_out_d7_202,
    O175,
    O176,
    O177,
    O178,
    O179,
    O180,
    ack_flag,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    hard_err_gt0,
    I11,
    I12,
    init_clk_in,
    drpclk_in,
    rxn,
    rxp,
    gt_refclk1,
    gt_tx_reset_i,
    gt_qpllclk_quad4_in,
    gt_qpllrefclk_quad4_in,
    gt_rxdfelfhold_i,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    power_down,
    gt_txuserrdy_i,
    loopback,
    TXDATA,
    TXCHARISK,
    cpll_reset_i,
    SR,
    I1,
    I2,
    I3,
    I4,
    I5,
    drpen_in,
    drpdi_in,
    drpwe_in,
    drpaddr_in);
  output O2;
  output O1;
  output txn;
  output txp;
  output rx_realign_i;
  output O3;
  output tx_out_clk;
  output O4;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]D;
  output [3:0]RXCHARISK;
  output [1:0]RXDISPERR;
  output s_out_d1_cdc_to_182;
  output s_out_d2_183;
  output s_out_d3_184;
  output s_out_d4_185;
  output s_out_d5_186;
  output s_out_d6_187;
  output s_out_d7_188;
  output [1:0]O163;
  output [1:0]O164;
  output [1:0]O165;
  output [1:0]O166;
  output [1:0]O167;
  output [1:0]O168;
  output s_out_d1_cdc_to_189;
  output s_out_d2_190;
  output s_out_d3_191;
  output s_out_d4_192;
  output s_out_d5_193;
  output s_out_d6_194;
  output s_out_d7_195;
  output [1:0]O169;
  output [1:0]O170;
  output [1:0]O171;
  output [1:0]O172;
  output [1:0]O173;
  output [1:0]O174;
  output s_out_d1_cdc_to_196;
  output s_out_d2_197;
  output s_out_d3_198;
  output s_out_d4_199;
  output s_out_d5_200;
  output s_out_d6_201;
  output s_out_d7_202;
  output [1:0]O175;
  output [1:0]O176;
  output [1:0]O177;
  output [1:0]O178;
  output [1:0]O179;
  output [1:0]O180;
  output ack_flag;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output hard_err_gt0;
  output [7:0]I11;
  output [7:0]I12;
  input init_clk_in;
  input drpclk_in;
  input rxn;
  input rxp;
  input gt_refclk1;
  input gt_tx_reset_i;
  input gt_qpllclk_quad4_in;
  input gt_qpllrefclk_quad4_in;
  input gt_rxdfelfhold_i;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input gt_txuserrdy_i;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input cpll_reset_i;
  input [0:0]SR;
  input I1;
  input I2;
  input I3;
  input [0:0]I4;
  input [7:0]I5;
  input drpen_in;
  input [15:0]drpdi_in;
  input drpwe_in;
  input [8:0]drpaddr_in;

  wire [3:0]D;
  wire I1;
  wire [7:0]I11;
  wire [7:0]I12;
  wire I2;
  wire I3;
  wire [0:0]I4;
  wire [7:0]I5;
  wire O1;
  wire O10;
  wire O11;
  wire [1:0]O163;
  wire [1:0]O164;
  wire [1:0]O165;
  wire [1:0]O166;
  wire [1:0]O167;
  wire [1:0]O168;
  wire [1:0]O169;
  wire [1:0]O170;
  wire [1:0]O171;
  wire [1:0]O172;
  wire [1:0]O173;
  wire [1:0]O174;
  wire [1:0]O175;
  wire [1:0]O176;
  wire [1:0]O177;
  wire [1:0]O178;
  wire [1:0]O179;
  wire [1:0]O180;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [1:0]RXDISPERR;
  wire [0:0]SR;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire ack_flag;
  wire ack_sync1;
  wire ack_sync2;
  wire ack_sync3;
  wire ack_sync4;
  wire ack_sync5;
  wire ack_sync6;
  wire cpll_pd_i;
  wire cpll_reset_i;
  wire cpll_reset_i_0;
  wire cpllreset_ovrd_i;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_sync6;
  wire [8:0]drpaddr_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_i;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_i;
  wire drpen_in;
  wire drpwe_i;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire flag;
  wire flag2;
  wire gt0_pllrefclklost_i;
  wire gt_qpllclk_quad4_in;
  wire gt_qpllrefclk_quad4_in;
  wire gt_refclk1;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_out;
  wire hard_err_gt0;
  wire init_clk_in;
  wire [2:0]loopback;
  wire n_0_ack_flag_i_1;
  wire \n_0_cpllpd_wait_reg[94]_srl31 ;
  wire \n_0_cpllreset_wait_reg[126]_srl31 ;
  wire n_0_flag_i_1__0;
  wire n_0_gthe2_i;
  wire n_104_gthe2_i;
  wire n_105_gthe2_i;
  wire n_10_gthe2_i;
  wire n_113_gthe2_i;
  wire n_115_gthe2_i;
  wire n_116_gthe2_i;
  wire n_12_gthe2_i;
  wire n_17_gthe2_i;
  wire \n_1_cpllpd_wait_reg[31]_srl32 ;
  wire \n_1_cpllpd_wait_reg[63]_srl32 ;
  wire \n_1_cpllreset_wait_reg[31]_srl32 ;
  wire \n_1_cpllreset_wait_reg[63]_srl32 ;
  wire \n_1_cpllreset_wait_reg[95]_srl32 ;
  wire n_205_gthe2_i;
  wire n_206_gthe2_i;
  wire n_207_gthe2_i;
  wire n_208_gthe2_i;
  wire n_209_gthe2_i;
  wire n_210_gthe2_i;
  wire n_211_gthe2_i;
  wire n_29_gthe2_i;
  wire n_33_gthe2_i;
  wire n_34_gthe2_i;
  wire n_46_gthe2_i;
  wire n_47_gthe2_i;
  wire n_4_gthe2_i;
  wire n_57_gthe2_i;
  wire n_58_gthe2_i;
  wire n_59_gthe2_i;
  wire n_60_gthe2_i;
  wire n_61_gthe2_i;
  wire n_62_gthe2_i;
  wire n_63_gthe2_i;
  wire n_64_gthe2_i;
  wire n_65_gthe2_i;
  wire n_66_gthe2_i;
  wire n_67_gthe2_i;
  wire n_68_gthe2_i;
  wire n_69_gthe2_i;
  wire n_70_gthe2_i;
  wire n_71_gthe2_i;
  wire power_down;
  wire rx_buf_err_i;
  wire [3:2]rx_disp_err_i;
  wire [3:0]rx_not_in_table_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxn;
  wire rxp;
  wire s_out_d1_cdc_to_182;
  wire s_out_d1_cdc_to_189;
  wire s_out_d1_cdc_to_196;
  wire s_out_d2_183;
  wire s_out_d2_190;
  wire s_out_d2_197;
  wire s_out_d3_184;
  wire s_out_d3_191;
  wire s_out_d3_198;
  wire s_out_d4_185;
  wire s_out_d4_192;
  wire s_out_d4_199;
  wire s_out_d5_186;
  wire s_out_d5_193;
  wire s_out_d5_200;
  wire s_out_d6_187;
  wire s_out_d6_194;
  wire s_out_d6_201;
  wire s_out_d7_188;
  wire s_out_d7_195;
  wire s_out_d7_202;
  wire sync_clk;
  wire tx_buf_err_i;
  wire tx_out_clk;
  wire txn;
  wire txp;
  wire user_clk;
  wire \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ;
  wire NLW_gthe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gthe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gthe2_i_RSOSINTDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gthe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gthe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gthe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gthe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gthe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gthe2_i_RXDFESLIDETAPSTARTED_UNCONNECTED;
  wire NLW_gthe2_i_RXDFESLIDETAPSTROBEDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXDFESLIDETAPSTROBESTARTED_UNCONNECTED;
  wire NLW_gthe2_i_RXDFESTADAPTDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gthe2_i_RXOSINTSTARTED_UNCONNECTED;
  wire NLW_gthe2_i_RXOSINTSTROBEDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXOSINTSTROBESTARTED_UNCONNECTED;
  wire NLW_gthe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gthe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gthe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gthe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gthe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXSYNCDONE_UNCONNECTED;
  wire NLW_gthe2_i_RXSYNCOUT_UNCONNECTED;
  wire NLW_gthe2_i_RXVALID_UNCONNECTED;
  wire NLW_gthe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gthe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gthe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gthe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gthe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gthe2_i_TXPMARESETDONE_UNCONNECTED;
  wire NLW_gthe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gthe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gthe2_i_TXRATEDONE_UNCONNECTED;
  wire NLW_gthe2_i_TXSYNCDONE_UNCONNECTED;
  wire NLW_gthe2_i_TXSYNCOUT_UNCONNECTED;
  wire [15:0]NLW_gthe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gthe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gthe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gthe2_i_RXCHBONDO_UNCONNECTED;
  wire [63:32]NLW_gthe2_i_RXDATA_UNCONNECTED;
  wire [1:0]NLW_gthe2_i_RXDATAVALID_UNCONNECTED;
  wire [7:4]NLW_gthe2_i_RXDISPERR_UNCONNECTED;
  wire [5:0]NLW_gthe2_i_RXHEADER_UNCONNECTED;
  wire [1:0]NLW_gthe2_i_RXHEADERVALID_UNCONNECTED;
  wire [7:4]NLW_gthe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gthe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gthe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [1:0]NLW_gthe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire [2:0]NLW_gthe2_i_RXSTATUS_UNCONNECTED;

LUT4 #(
    .INIT(16'hFF90)) 
     ack_flag_i_1
       (.I0(ack_sync5),
        .I1(ack_sync6),
        .I2(ack_flag),
        .I3(flag2),
        .O(n_0_ack_flag_i_1));
FDRE #(
    .INIT(1'b0)) 
     ack_flag_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_ack_flag_i_1),
        .Q(ack_flag),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg1
       (.C(init_clk_in),
        .CE(1'b1),
        .D(data_sync6),
        .Q(ack_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg2
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync1),
        .Q(ack_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg3
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync2),
        .Q(ack_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg4
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync3),
        .Q(ack_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg5
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync4),
        .Q(ack_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     ack_sync_reg6
       (.C(init_clk_in),
        .CE(1'b1),
        .D(ack_sync5),
        .Q(ack_sync6),
        .R(1'b0));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg[31]_srl32 " *) 
   SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
     \cpllpd_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(1'b0),
        .Q(\NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllpd_wait_reg[31]_srl32 ));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg[63]_srl32 " *) 
   SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
     \cpllpd_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\n_1_cpllpd_wait_reg[31]_srl32 ),
        .Q(\NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllpd_wait_reg[63]_srl32 ));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllpd_wait_reg[94]_srl31 " *) 
   SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
     \cpllpd_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\n_1_cpllpd_wait_reg[63]_srl32 ),
        .Q(\n_0_cpllpd_wait_reg[94]_srl31 ),
        .Q31(\NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b1)) 
     \cpllpd_wait_reg[95] 
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(\n_0_cpllpd_wait_reg[94]_srl31 ),
        .Q(cpll_pd_i),
        .R(1'b0));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[126]_srl31 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\n_1_cpllreset_wait_reg[95]_srl32 ),
        .Q(\n_0_cpllreset_wait_reg[126]_srl31 ),
        .Q31(\NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ));
FDRE #(
    .INIT(1'b0)) 
     \cpllreset_wait_reg[127] 
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(\n_0_cpllreset_wait_reg[126]_srl31 ),
        .Q(cpllreset_ovrd_i),
        .R(1'b0));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[31]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h000000FF)) 
     \cpllreset_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(1'b0),
        .Q(\NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[31]_srl32 ));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[63]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\n_1_cpllreset_wait_reg[31]_srl32 ),
        .Q(\NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[63]_srl32 ));
(* srl_bus_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg " *) 
   (* srl_name = "\inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/cpllreset_wait_reg[95]_srl32 " *) 
   SRLC32E #(
    .INIT(32'h00000000)) 
     \cpllreset_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(gt_refclk1),
        .D(\n_1_cpllreset_wait_reg[63]_srl32 ),
        .Q(\NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\n_1_cpllreset_wait_reg[95]_srl32 ));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(flag),
        .Q(data_sync1),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
(* ASYNC_REG *) 
   (* BOX_TYPE = "PRIMITIVE" *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(gt_refclk1),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_sync6),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     flag2_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(I1),
        .Q(flag2),
        .R(1'b0));
LUT3 #(
    .INIT(8'hB4)) 
     flag_i_1__0
       (.I0(ack_flag),
        .I1(cpll_reset_i),
        .I2(flag),
        .O(n_0_flag_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     flag_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_flag_i_1__0),
        .Q(flag),
        .R(1'b0));
(* BOX_TYPE = "PRIMITIVE" *) 
   GTHE2_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(20'h00C10),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .A_RXOSCALRESET(1'b0),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CFOK_CFG(42'h24800040E80),
    .CFOK_CFG2(6'b100000),
    .CFOK_CFG3(6'b100000),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(7),
    .CHAN_BOND_SEQ_1_1(10'b0101111100),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b0001),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b0000),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(31),
    .CLK_COR_MIN_LAT(24),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0111110111),
    .CLK_COR_SEQ_1_2(10'b0111110111),
    .CLK_COR_SEQ_1_3(10'b0111110111),
    .CLK_COR_SEQ_1_4(10'b0111110111),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0100000000),
    .CLK_COR_SEQ_2_3(10'b0100000000),
    .CLK_COR_SEQ_2_4(10'b0100000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(4),
    .CPLL_CFG(29'h00BC07DC),
    .CPLL_FBDIV(5),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CLKRSVD0_INVERTED(1'b0),
    .IS_CLKRSVD1_INVERTED(1'b0),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DMONITORCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_SIGVALIDCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .LOOPBACK_CFG(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'b00000000000000000000000010000000),
    .PMA_RSV2(32'b00011100000000000000000000001010),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(15'b000000000001000),
    .PMA_RSV5(4'b0000),
    .RESET_POWERSAVE_DISABLE(1'b0),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(83'h0002007FE1000C2200018),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00001000000000),
    .RXLPM_LF_CFG(18'b001001000000000000),
    .RXOOB_CFG(7'b0000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOSCALRESET_TIMEOUT(5'b00000),
    .RXOUT_DIV(2),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'hC00002),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_CFG0(2'b00),
    .RXPI_CFG1(2'b00),
    .RXPI_CFG2(2'b00),
    .RXPI_CFG3(2'b11),
    .RXPI_CFG4(1'b1),
    .RXPI_CFG5(1'b1),
    .RXPI_CFG6(3'b001),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b0),
    .RX_BIAS_CFG(24'b000011000000000000010000),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(4'b1010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(14'b00000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFELPM_CFG0(4'b0110),
    .RX_DFELPM_CFG1(1'b0),
    .RX_DFELPM_KLKH_AGC_STUP_EN(1'b1),
    .RX_DFE_AGC_CFG0(2'b00),
    .RX_DFE_AGC_CFG1(3'b100),
    .RX_DFE_AGC_CFG2(4'b0000),
    .RX_DFE_AGC_OVRDEN(1'b1),
    .RX_DFE_GAIN_CFG(23'h0020C0),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011100000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_H6_CFG(11'b00000100000),
    .RX_DFE_H7_CFG(11'b00000100000),
    .RX_DFE_KL_CFG(33'b001000001000000000000001100010000),
    .RX_DFE_KL_LPM_KH_CFG0(2'b01),
    .RX_DFE_KL_LPM_KH_CFG1(3'b010),
    .RX_DFE_KL_LPM_KH_CFG2(4'b0010),
    .RX_DFE_KL_LPM_KH_OVRDEN(1'b1),
    .RX_DFE_KL_LPM_KL_CFG0(2'b10),
    .RX_DFE_KL_LPM_KL_CFG1(3'b010),
    .RX_DFE_KL_LPM_KL_CFG2(4'b0010),
    .RX_DFE_KL_LPM_KL_OVRDEN(1'b1),
    .RX_DFE_LPM_CFG(16'h0080),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_ST_CFG(54'h00E100000C003F),
    .RX_DFE_UT_CFG(17'b00011100000000000),
    .RX_DFE_VP_CFG(17'b00011101010100011),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b001),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("2.0"),
    .TERM_RCAL_CFG(15'b100001000010000),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOOB_CFG(1'b0),
    .TXOUT_DIV(2),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b0),
    .TXPI_CFG4(1'b0),
    .TXPI_CFG5(3'b100),
    .TXPI_GREY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b000),
    .TXPMARESET_TIME(5'b00001),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_PRECHARGE_TIME(17'h155CC),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0),
    .USE_PCS_CLK_PHASE_SEL(1'b0)) 
     gthe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD0(1'b0),
        .CLKRSVD1(1'b0),
        .CPLLFBCLKLOST(n_0_gthe2_i),
        .CPLLLOCK(O2),
        .CPLLLOCKDETCLK(init_clk_in),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(cpll_pd_i),
        .CPLLREFCLKLOST(gt0_pllrefclklost_i),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(cpll_reset_i_0),
        .DMONFIFORESET(1'b0),
        .DMONITORCLK(1'b0),
        .DMONITOROUT({n_57_gthe2_i,n_58_gthe2_i,n_59_gthe2_i,n_60_gthe2_i,n_61_gthe2_i,n_62_gthe2_i,n_63_gthe2_i,n_64_gthe2_i,n_65_gthe2_i,n_66_gthe2_i,n_67_gthe2_i,n_68_gthe2_i,n_69_gthe2_i,n_70_gthe2_i,n_71_gthe2_i}),
        .DRPADDR(drpaddr_i),
        .DRPCLK(drpclk_in),
        .DRPDI(drpdi_i),
        .DRPDO(drpdo_out),
        .DRPEN(drpen_i),
        .DRPRDY(O1),
        .DRPWE(drpwe_i),
        .EYESCANDATAERROR(n_4_gthe2_i),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .GTGREFCLK(1'b0),
        .GTHRXN(rxn),
        .GTHRXP(rxp),
        .GTHTXN(txn),
        .GTHTXP(txp),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTREFCLK0(gt_refclk1),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(NLW_gthe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gtrxreset_out),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(gt_tx_reset_i),
        .LOOPBACK(loopback),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gthe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gthe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt_qpllclk_quad4_in),
        .QPLLREFCLK(gt_qpllrefclk_quad4_in),
        .RESETOVRD(1'b0),
        .RSOSINTDONE(NLW_gthe2_i_RSOSINTDONE_UNCONNECTED),
        .RX8B10BEN(1'b1),
        .RXADAPTSELTEST({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({rx_buf_err_i,n_115_gthe2_i,n_116_gthe2_i}),
        .RXBYTEISALIGNED(n_10_gthe2_i),
        .RXBYTEREALIGN(rx_realign_i),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(n_12_gthe2_i),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gthe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gthe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gthe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gthe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],D}),
        .RXCHARISK({NLW_gthe2_i_RXCHARISK_UNCONNECTED[7:4],RXCHARISK}),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gthe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT({n_104_gthe2_i,n_105_gthe2_i}),
        .RXCOMINITDET(NLW_gthe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(n_17_gthe2_i),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(NLW_gthe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gthe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gthe2_i_RXDATA_UNCONNECTED[63:32],RXDATA}),
        .RXDATAVALID(NLW_gthe2_i_RXDATAVALID_UNCONNECTED[1:0]),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(gt_rxdfelfhold_i),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFEAGCTRL({1'b1,1'b0,1'b0,1'b0,1'b0}),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(gt_rxdfelfhold_i),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFESLIDETAP({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXDFESLIDETAPADAPTEN(1'b0),
        .RXDFESLIDETAPHOLD(1'b0),
        .RXDFESLIDETAPID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXDFESLIDETAPINITOVRDEN(1'b0),
        .RXDFESLIDETAPONLYADAPTEN(1'b0),
        .RXDFESLIDETAPOVRDEN(1'b0),
        .RXDFESLIDETAPSTARTED(NLW_gthe2_i_RXDFESLIDETAPSTARTED_UNCONNECTED),
        .RXDFESLIDETAPSTROBE(1'b0),
        .RXDFESLIDETAPSTROBEDONE(NLW_gthe2_i_RXDFESLIDETAPSTROBEDONE_UNCONNECTED),
        .RXDFESLIDETAPSTROBESTARTED(NLW_gthe2_i_RXDFESLIDETAPSTROBESTARTED_UNCONNECTED),
        .RXDFESTADAPTDONE(NLW_gthe2_i_RXDFESTADAPTDONE_UNCONNECTED),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFETAP6HOLD(1'b0),
        .RXDFETAP6OVRDEN(1'b0),
        .RXDFETAP7HOLD(1'b0),
        .RXDFETAP7OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDISPERR({NLW_gthe2_i_RXDISPERR_UNCONNECTED[7:4],rx_disp_err_i,RXDISPERR}),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gthe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gthe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gthe2_i_RXHEADER_UNCONNECTED[5:0]),
        .RXHEADERVALID(NLW_gthe2_i_RXHEADERVALID_UNCONNECTED[1:0]),
        .RXLPMEN(1'b0),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(ena_comma_align_i),
        .RXMONITOROUT({n_205_gthe2_i,n_206_gthe2_i,n_207_gthe2_i,n_208_gthe2_i,n_209_gthe2_i,n_210_gthe2_i,n_211_gthe2_i}),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXNOTINTABLE({NLW_gthe2_i_RXNOTINTABLE_UNCONNECTED[7:4],rx_not_in_table_i}),
        .RXOOBRESET(1'b0),
        .RXOSCALRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSINTCFG({1'b0,1'b1,1'b1,1'b0}),
        .RXOSINTEN(1'b1),
        .RXOSINTHOLD(1'b0),
        .RXOSINTID0({1'b0,1'b0,1'b0,1'b0}),
        .RXOSINTNTRLEN(1'b0),
        .RXOSINTOVRDEN(1'b0),
        .RXOSINTSTARTED(NLW_gthe2_i_RXOSINTSTARTED_UNCONNECTED),
        .RXOSINTSTROBE(1'b0),
        .RXOSINTSTROBEDONE(NLW_gthe2_i_RXOSINTSTROBEDONE_UNCONNECTED),
        .RXOSINTSTROBESTARTED(NLW_gthe2_i_RXOSINTSTROBESTARTED_UNCONNECTED),
        .RXOSINTTESTOVRDEN(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(n_29_gthe2_i),
        .RXOUTCLKFABRIC(NLW_gthe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gthe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(ena_comma_align_i),
        .RXPCSRESET(1'b0),
        .RXPD({power_down,power_down}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gthe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gthe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gthe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(1'b0),
        .RXPMARESETDONE(n_33_gthe2_i),
        .RXPOLARITY(rx_polarity_i),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(n_34_gthe2_i),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gthe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gthe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gthe2_i_RXRATEDONE_UNCONNECTED),
        .RXRATEMODE(1'b0),
        .RXRESETDONE(O3),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gthe2_i_RXSTARTOFSEQ_UNCONNECTED[1:0]),
        .RXSTATUS(NLW_gthe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYNCALLIN(1'b0),
        .RXSYNCDONE(NLW_gthe2_i_RXSYNCDONE_UNCONNECTED),
        .RXSYNCIN(1'b0),
        .RXSYNCMODE(1'b0),
        .RXSYNCOUT(NLW_gthe2_i_RXSYNCOUT_UNCONNECTED),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt_rxuserrdy_i),
        .RXUSRCLK(sync_clk),
        .RXUSRCLK2(user_clk),
        .RXVALID(NLW_gthe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS({tx_buf_err_i,n_113_gthe2_i}),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,TXCHARISK}),
        .TXCOMFINISH(NLW_gthe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,TXDATA}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gthe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(power_down),
        .TXGEARBOXREADY(NLW_gthe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(tx_out_clk),
        .TXOUTCLKFABRIC(n_46_gthe2_i),
        .TXOUTCLKPCS(n_47_gthe2_i),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({power_down,power_down}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gthe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gthe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPIPPMEN(1'b0),
        .TXPIPPMOVRDEN(1'b0),
        .TXPIPPMPD(1'b0),
        .TXPIPPMSEL(1'b1),
        .TXPIPPMSTEPSIZE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPMARESETDONE(NLW_gthe2_i_TXPMARESETDONE_UNCONNECTED),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gthe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gthe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gthe2_i_TXRATEDONE_UNCONNECTED),
        .TXRATEMODE(1'b0),
        .TXRESETDONE(O4),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYNCALLIN(1'b0),
        .TXSYNCDONE(NLW_gthe2_i_TXSYNCDONE_UNCONNECTED),
        .TXSYNCIN(1'b0),
        .TXSYNCMODE(1'b0),
        .TXSYNCOUT(NLW_gthe2_i_TXSYNCOUT_UNCONNECTED),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt_txuserrdy_i),
        .TXUSRCLK(sync_clk),
        .TXUSRCLK2(user_clk));
LUT3 #(
    .INIT(8'hBE)) 
     gthe2_i_i_1
       (.I0(cpllreset_ovrd_i),
        .I1(data_sync6),
        .I2(data_sync5),
        .O(cpll_reset_i_0));
aurora_8b10b_0_aurora_8b10b_0_gtrxreset_seq gtrxreset_seq_i
       (.DRPADDR(drpaddr_i),
        .DRPDI(drpdi_i),
        .I1(n_33_gthe2_i),
        .I2(O1),
        .O163(O163),
        .O164(O164),
        .O165(O165),
        .O166(O166),
        .O167(O167),
        .O168(O168),
        .O169(O169),
        .O170(O170),
        .O171(O171),
        .O172(O172),
        .O173(O173),
        .O174(O174),
        .O175(O175),
        .O176(O176),
        .O177(O177),
        .O178(O178),
        .O179(O179),
        .O180(O180),
        .SR(SR),
        .cpll_reset_i(cpll_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_i(drpen_i),
        .drpen_in(drpen_in),
        .drpwe_i(drpwe_i),
        .drpwe_in(drpwe_in),
        .gtrxreset_out(gtrxreset_out),
        .s_out_d1_cdc_to_182(s_out_d1_cdc_to_182),
        .s_out_d1_cdc_to_189(s_out_d1_cdc_to_189),
        .s_out_d1_cdc_to_196(s_out_d1_cdc_to_196),
        .s_out_d2_183(s_out_d2_183),
        .s_out_d2_190(s_out_d2_190),
        .s_out_d2_197(s_out_d2_197),
        .s_out_d3_184(s_out_d3_184),
        .s_out_d3_191(s_out_d3_191),
        .s_out_d3_198(s_out_d3_198),
        .s_out_d4_185(s_out_d4_185),
        .s_out_d4_192(s_out_d4_192),
        .s_out_d4_199(s_out_d4_199),
        .s_out_d5_186(s_out_d5_186),
        .s_out_d5_193(s_out_d5_193),
        .s_out_d5_200(s_out_d5_200),
        .s_out_d6_187(s_out_d6_187),
        .s_out_d6_194(s_out_d6_194),
        .s_out_d6_201(s_out_d6_201),
        .s_out_d7_188(s_out_d7_188),
        .s_out_d7_195(s_out_d7_195),
        .s_out_d7_202(s_out_d7_202));
LUT3 #(
    .INIT(8'hFE)) 
     hard_err_gt_i_1
       (.I0(rx_buf_err_i),
        .I1(tx_buf_err_i),
        .I2(rx_realign_i),
        .O(hard_err_gt0));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     reset_count_r_i_2
       (.I0(rx_disp_err_i[2]),
        .I1(rx_not_in_table_i[3]),
        .I2(rx_not_in_table_i[1]),
        .I3(rx_not_in_table_i[2]),
        .I4(rx_disp_err_i[3]),
        .I5(rx_not_in_table_i[0]),
        .O(O9));
LUT2 #(
    .INIT(4'hE)) 
     \soft_err_r[0]_i_2 
       (.I0(RXDISPERR[0]),
        .I1(rx_not_in_table_i[0]),
        .O(O5));
LUT2 #(
    .INIT(4'hE)) 
     \soft_err_r[1]_i_1 
       (.I0(RXDISPERR[1]),
        .I1(rx_not_in_table_i[1]),
        .O(O6));
LUT2 #(
    .INIT(4'hE)) 
     \soft_err_r[2]_i_1 
       (.I0(rx_disp_err_i[2]),
        .I1(rx_not_in_table_i[2]),
        .O(O7));
LUT2 #(
    .INIT(4'hE)) 
     \soft_err_r[3]_i_1 
       (.I0(rx_not_in_table_i[3]),
        .I1(rx_disp_err_i[3]),
        .O(O8));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_control_bits_r[2]_i_1 
       (.I0(RXCHARISK[1]),
        .I1(I4),
        .I2(I2),
        .I3(RXCHARISK[0]),
        .I4(I3),
        .I5(RXCHARISK[2]),
        .O(O11));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_control_bits_r[3]_i_1 
       (.I0(RXCHARISK[2]),
        .I1(RXCHARISK[0]),
        .I2(I2),
        .I3(RXCHARISK[1]),
        .I4(I3),
        .I5(RXCHARISK[3]),
        .O(O10));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[16]_i_1 
       (.I0(RXDATA[15]),
        .I1(I5[7]),
        .I2(I2),
        .I3(RXDATA[7]),
        .I4(I3),
        .I5(RXDATA[23]),
        .O(I12[7]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[17]_i_1 
       (.I0(RXDATA[14]),
        .I1(I5[6]),
        .I2(I2),
        .I3(RXDATA[6]),
        .I4(I3),
        .I5(RXDATA[22]),
        .O(I12[6]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[18]_i_1 
       (.I0(RXDATA[13]),
        .I1(I5[5]),
        .I2(I2),
        .I3(RXDATA[5]),
        .I4(I3),
        .I5(RXDATA[21]),
        .O(I12[5]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[19]_i_1 
       (.I0(RXDATA[12]),
        .I1(I5[4]),
        .I2(I2),
        .I3(RXDATA[4]),
        .I4(I3),
        .I5(RXDATA[20]),
        .O(I12[4]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[20]_i_1 
       (.I0(RXDATA[11]),
        .I1(I5[3]),
        .I2(I2),
        .I3(RXDATA[3]),
        .I4(I3),
        .I5(RXDATA[19]),
        .O(I12[3]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[21]_i_1 
       (.I0(RXDATA[10]),
        .I1(I5[2]),
        .I2(I2),
        .I3(RXDATA[2]),
        .I4(I3),
        .I5(RXDATA[18]),
        .O(I12[2]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[22]_i_1 
       (.I0(RXDATA[9]),
        .I1(I5[1]),
        .I2(I2),
        .I3(RXDATA[1]),
        .I4(I3),
        .I5(RXDATA[17]),
        .O(I12[1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[23]_i_1 
       (.I0(RXDATA[8]),
        .I1(I5[0]),
        .I2(I2),
        .I3(RXDATA[0]),
        .I4(I3),
        .I5(RXDATA[16]),
        .O(I12[0]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[24]_i_1 
       (.I0(RXDATA[23]),
        .I1(RXDATA[7]),
        .I2(I2),
        .I3(RXDATA[15]),
        .I4(I3),
        .I5(RXDATA[31]),
        .O(I11[7]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[25]_i_1 
       (.I0(RXDATA[22]),
        .I1(RXDATA[6]),
        .I2(I2),
        .I3(RXDATA[14]),
        .I4(I3),
        .I5(RXDATA[30]),
        .O(I11[6]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[26]_i_1 
       (.I0(RXDATA[21]),
        .I1(RXDATA[5]),
        .I2(I2),
        .I3(RXDATA[13]),
        .I4(I3),
        .I5(RXDATA[29]),
        .O(I11[5]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[27]_i_1 
       (.I0(RXDATA[20]),
        .I1(RXDATA[4]),
        .I2(I2),
        .I3(RXDATA[12]),
        .I4(I3),
        .I5(RXDATA[28]),
        .O(I11[4]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[28]_i_1 
       (.I0(RXDATA[19]),
        .I1(RXDATA[3]),
        .I2(I2),
        .I3(RXDATA[11]),
        .I4(I3),
        .I5(RXDATA[27]),
        .O(I11[3]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[29]_i_1 
       (.I0(RXDATA[18]),
        .I1(RXDATA[2]),
        .I2(I2),
        .I3(RXDATA[10]),
        .I4(I3),
        .I5(RXDATA[26]),
        .O(I11[2]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[30]_i_1 
       (.I0(RXDATA[17]),
        .I1(RXDATA[1]),
        .I2(I2),
        .I3(RXDATA[9]),
        .I4(I3),
        .I5(RXDATA[25]),
        .O(I11[1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[31]_i_1 
       (.I0(RXDATA[16]),
        .I1(RXDATA[0]),
        .I2(I2),
        .I3(RXDATA[8]),
        .I4(I3),
        .I5(RXDATA[24]),
        .O(I11[0]));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_gtrxreset_seq" *) 
module aurora_8b10b_0_aurora_8b10b_0_gtrxreset_seq
   (s_out_d1_cdc_to_182,
    s_out_d2_183,
    s_out_d3_184,
    s_out_d4_185,
    s_out_d5_186,
    s_out_d6_187,
    s_out_d7_188,
    O163,
    O164,
    O165,
    O166,
    O167,
    O168,
    s_out_d1_cdc_to_189,
    s_out_d2_190,
    s_out_d3_191,
    s_out_d4_192,
    s_out_d5_193,
    s_out_d6_194,
    s_out_d7_195,
    O169,
    O170,
    O171,
    O172,
    O173,
    O174,
    s_out_d1_cdc_to_196,
    s_out_d2_197,
    s_out_d3_198,
    s_out_d4_199,
    s_out_d5_200,
    s_out_d6_201,
    s_out_d7_202,
    O175,
    O176,
    O177,
    O178,
    O179,
    O180,
    gtrxreset_out,
    drpen_i,
    DRPDI,
    drpwe_i,
    DRPADDR,
    I1,
    cpll_reset_i,
    SR,
    drpclk_in,
    I2,
    drpdo_out,
    drpen_in,
    drpdi_in,
    drpwe_in,
    drpaddr_in);
  output s_out_d1_cdc_to_182;
  output s_out_d2_183;
  output s_out_d3_184;
  output s_out_d4_185;
  output s_out_d5_186;
  output s_out_d6_187;
  output s_out_d7_188;
  output [1:0]O163;
  output [1:0]O164;
  output [1:0]O165;
  output [1:0]O166;
  output [1:0]O167;
  output [1:0]O168;
  output s_out_d1_cdc_to_189;
  output s_out_d2_190;
  output s_out_d3_191;
  output s_out_d4_192;
  output s_out_d5_193;
  output s_out_d6_194;
  output s_out_d7_195;
  output [1:0]O169;
  output [1:0]O170;
  output [1:0]O171;
  output [1:0]O172;
  output [1:0]O173;
  output [1:0]O174;
  output s_out_d1_cdc_to_196;
  output s_out_d2_197;
  output s_out_d3_198;
  output s_out_d4_199;
  output s_out_d5_200;
  output s_out_d6_201;
  output s_out_d7_202;
  output [1:0]O175;
  output [1:0]O176;
  output [1:0]O177;
  output [1:0]O178;
  output [1:0]O179;
  output [1:0]O180;
  output gtrxreset_out;
  output drpen_i;
  output [15:0]DRPDI;
  output drpwe_i;
  output [8:0]DRPADDR;
  input I1;
  input cpll_reset_i;
  input [0:0]SR;
  input drpclk_in;
  input I2;
  input [15:0]drpdo_out;
  input drpen_in;
  input [15:0]drpdi_in;
  input drpwe_in;
  input [8:0]drpaddr_in;

  wire [8:0]DRPADDR;
  wire [15:0]DRPDI;
  wire I1;
  wire I2;
  wire [1:0]O163;
  wire [1:0]O164;
  wire [1:0]O165;
  wire [1:0]O166;
  wire [1:0]O167;
  wire [1:0]O168;
  wire [1:0]O169;
  wire [1:0]O170;
  wire [1:0]O171;
  wire [1:0]O172;
  wire [1:0]O173;
  wire [1:0]O174;
  wire [1:0]O175;
  wire [1:0]O176;
  wire [1:0]O177;
  wire [1:0]O178;
  wire [1:0]O179;
  wire [1:0]O180;
  wire [0:0]SR;
  wire cpll_reset_i;
  wire drp_op_done;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_i;
  wire drpen_in;
  wire drpwe_i;
  wire drpwe_in;
  wire flag;
  wire gtrxreset_f;
  wire gtrxreset_i;
  wire gtrxreset_out;
  wire gtrxreset_s;
  wire gtrxreset_ss;
  wire n_0_DRP_OP_DONE_i_1;
  wire n_0_flag_i_1;
  wire \n_0_rd_data[0]_i_1 ;
  wire \n_0_rd_data[10]_i_1 ;
  wire \n_0_rd_data[11]_i_1 ;
  wire \n_0_rd_data[12]_i_1 ;
  wire \n_0_rd_data[13]_i_1 ;
  wire \n_0_rd_data[14]_i_1 ;
  wire \n_0_rd_data[15]_i_1 ;
  wire \n_0_rd_data[15]_i_2 ;
  wire \n_0_rd_data[1]_i_1 ;
  wire \n_0_rd_data[2]_i_1 ;
  wire \n_0_rd_data[3]_i_1 ;
  wire \n_0_rd_data[4]_i_1 ;
  wire \n_0_rd_data[5]_i_1 ;
  wire \n_0_rd_data[6]_i_1 ;
  wire \n_0_rd_data[7]_i_1 ;
  wire \n_0_rd_data[8]_i_1 ;
  wire \n_0_rd_data[9]_i_1 ;
  wire [2:0]next_state;
  wire [15:0]original_rd_data;
  wire original_rd_data0;
  wire [15:0]rd_data;
  wire rst_ss;
  wire rxpmaresetdone_ss;
  wire rxpmaresetdone_sss;
  wire s_out_d1_cdc_to_182;
  wire s_out_d1_cdc_to_189;
  wire s_out_d1_cdc_to_196;
  wire s_out_d2_183;
  wire s_out_d2_190;
  wire s_out_d2_197;
  wire s_out_d3_184;
  wire s_out_d3_191;
  wire s_out_d3_198;
  wire s_out_d4_185;
  wire s_out_d4_192;
  wire s_out_d4_199;
  wire s_out_d5_186;
  wire s_out_d5_193;
  wire s_out_d5_200;
  wire s_out_d6_187;
  wire s_out_d6_194;
  wire s_out_d6_201;
  wire s_out_d7_188;
  wire s_out_d7_195;
  wire s_out_d7_202;
  wire [2:0]state;

LUT5 #(
    .INIT(32'hFFFF8000)) 
     DRP_OP_DONE_i_1
       (.I0(I2),
        .I1(state[0]),
        .I2(state[1]),
        .I3(state[2]),
        .I4(drp_op_done),
        .O(n_0_DRP_OP_DONE_i_1));
FDCE DRP_OP_DONE_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(gtrxreset_f),
        .D(n_0_DRP_OP_DONE_i_1),
        .Q(drp_op_done));
LUT4 #(
    .INIT(16'h3EEE)) 
     flag_i_1
       (.I0(flag),
        .I1(state[2]),
        .I2(state[0]),
        .I3(state[1]),
        .O(n_0_flag_i_1));
FDRE #(
    .INIT(1'b0)) 
     flag_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(n_0_flag_i_1),
        .Q(flag),
        .R(1'b0));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_10
       (.I0(drpdi_in[9]),
        .I1(rd_data[9]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[9]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_11
       (.I0(drpdi_in[8]),
        .I1(rd_data[8]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[8]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_12
       (.I0(drpdi_in[7]),
        .I1(rd_data[7]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[7]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_13
       (.I0(drpdi_in[6]),
        .I1(rd_data[6]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[6]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_14
       (.I0(drpdi_in[5]),
        .I1(rd_data[5]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[5]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_15
       (.I0(drpdi_in[4]),
        .I1(rd_data[4]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[4]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_16
       (.I0(drpdi_in[3]),
        .I1(rd_data[3]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[3]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_17
       (.I0(drpdi_in[2]),
        .I1(rd_data[2]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[2]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_18
       (.I0(drpdi_in[1]),
        .I1(rd_data[1]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[1]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_19
       (.I0(drpdi_in[0]),
        .I1(rd_data[0]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[0]));
LUT5 #(
    .INIT(32'hFF640064)) 
     gthe2_i_i_2
       (.I0(state[2]),
        .I1(state[0]),
        .I2(state[1]),
        .I3(drp_op_done),
        .I4(drpen_in),
        .O(drpen_i));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT2 #(
    .INIT(4'h8)) 
     gthe2_i_i_20
       (.I0(drp_op_done),
        .I1(drpaddr_in[8]),
        .O(DRPADDR[8]));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT2 #(
    .INIT(4'h8)) 
     gthe2_i_i_21
       (.I0(drp_op_done),
        .I1(drpaddr_in[7]),
        .O(DRPADDR[7]));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT2 #(
    .INIT(4'h8)) 
     gthe2_i_i_22
       (.I0(drp_op_done),
        .I1(drpaddr_in[6]),
        .O(DRPADDR[6]));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT2 #(
    .INIT(4'h8)) 
     gthe2_i_i_23
       (.I0(drp_op_done),
        .I1(drpaddr_in[5]),
        .O(DRPADDR[5]));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT2 #(
    .INIT(4'hB)) 
     gthe2_i_i_24
       (.I0(drpaddr_in[4]),
        .I1(drp_op_done),
        .O(DRPADDR[4]));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT2 #(
    .INIT(4'h8)) 
     gthe2_i_i_25
       (.I0(drp_op_done),
        .I1(drpaddr_in[3]),
        .O(DRPADDR[3]));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT2 #(
    .INIT(4'h8)) 
     gthe2_i_i_26
       (.I0(drp_op_done),
        .I1(drpaddr_in[2]),
        .O(DRPADDR[2]));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT2 #(
    .INIT(4'h8)) 
     gthe2_i_i_27
       (.I0(drp_op_done),
        .I1(drpaddr_in[1]),
        .O(DRPADDR[1]));
LUT2 #(
    .INIT(4'hB)) 
     gthe2_i_i_28
       (.I0(drpaddr_in[0]),
        .I1(drp_op_done),
        .O(DRPADDR[0]));
LUT5 #(
    .INIT(32'hAAAA3C00)) 
     gthe2_i_i_3
       (.I0(drpwe_in),
        .I1(state[0]),
        .I2(state[2]),
        .I3(state[1]),
        .I4(drp_op_done),
        .O(drpwe_i));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_4
       (.I0(drpdi_in[15]),
        .I1(rd_data[15]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[15]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_5
       (.I0(drpdi_in[14]),
        .I1(rd_data[14]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[14]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_6
       (.I0(drpdi_in[13]),
        .I1(rd_data[13]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[13]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_7
       (.I0(drpdi_in[12]),
        .I1(rd_data[12]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[12]));
LUT6 #(
    .INIT(64'hAA0CAA00AA00AA00)) 
     gthe2_i_i_8
       (.I0(drpdi_in[11]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(drp_op_done),
        .I4(state[1]),
        .I5(rd_data[11]),
        .O(DRPDI[11]));
LUT6 #(
    .INIT(64'hA0A0ACA0ACA0A0A0)) 
     gthe2_i_i_9
       (.I0(drpdi_in[10]),
        .I1(rd_data[10]),
        .I2(drp_op_done),
        .I3(state[1]),
        .I4(state[2]),
        .I5(state[0]),
        .O(DRPDI[10]));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_22 gtrxreset_in_cdc_sync
       (.O175(O175),
        .O176(O176),
        .O177(O177),
        .O178(O178),
        .O179(O179),
        .O180(O180),
        .SR(SR),
        .drpclk_in(drpclk_in),
        .gtrxreset_f(gtrxreset_f),
        .s_out_d1_cdc_to_196(s_out_d1_cdc_to_196),
        .s_out_d2_197(s_out_d2_197),
        .s_out_d3_198(s_out_d3_198),
        .s_out_d4_199(s_out_d4_199),
        .s_out_d5_200(s_out_d5_200),
        .s_out_d6_201(s_out_d6_201),
        .s_out_d7_202(s_out_d7_202));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT4 #(
    .INIT(16'h0DFA)) 
     gtrxreset_o_i_1
       (.I0(state[0]),
        .I1(gtrxreset_ss),
        .I2(state[1]),
        .I3(state[2]),
        .O(gtrxreset_i));
FDRE gtrxreset_o_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtrxreset_i),
        .Q(gtrxreset_out),
        .R(rst_ss));
FDRE gtrxreset_s_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtrxreset_f),
        .Q(gtrxreset_s),
        .R(rst_ss));
FDRE gtrxreset_ss_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtrxreset_s),
        .Q(gtrxreset_ss),
        .R(rst_ss));
LUT5 #(
    .INIT(32'h00040000)) 
     \original_rd_data[15]_i_1 
       (.I0(state[0]),
        .I1(I2),
        .I2(flag),
        .I3(state[2]),
        .I4(state[1]),
        .O(original_rd_data0));
FDRE \original_rd_data_reg[0] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[0]),
        .Q(original_rd_data[0]),
        .R(1'b0));
FDRE \original_rd_data_reg[10] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[10]),
        .Q(original_rd_data[10]),
        .R(1'b0));
FDRE \original_rd_data_reg[11] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[11]),
        .Q(original_rd_data[11]),
        .R(1'b0));
FDRE \original_rd_data_reg[12] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[12]),
        .Q(original_rd_data[12]),
        .R(1'b0));
FDRE \original_rd_data_reg[13] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[13]),
        .Q(original_rd_data[13]),
        .R(1'b0));
FDRE \original_rd_data_reg[14] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[14]),
        .Q(original_rd_data[14]),
        .R(1'b0));
FDRE \original_rd_data_reg[15] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[15]),
        .Q(original_rd_data[15]),
        .R(1'b0));
FDRE \original_rd_data_reg[1] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[1]),
        .Q(original_rd_data[1]),
        .R(1'b0));
FDRE \original_rd_data_reg[2] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[2]),
        .Q(original_rd_data[2]),
        .R(1'b0));
FDRE \original_rd_data_reg[3] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[3]),
        .Q(original_rd_data[3]),
        .R(1'b0));
FDRE \original_rd_data_reg[4] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[4]),
        .Q(original_rd_data[4]),
        .R(1'b0));
FDRE \original_rd_data_reg[5] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[5]),
        .Q(original_rd_data[5]),
        .R(1'b0));
FDRE \original_rd_data_reg[6] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[6]),
        .Q(original_rd_data[6]),
        .R(1'b0));
FDRE \original_rd_data_reg[7] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[7]),
        .Q(original_rd_data[7]),
        .R(1'b0));
FDRE \original_rd_data_reg[8] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[8]),
        .Q(original_rd_data[8]),
        .R(1'b0));
FDRE \original_rd_data_reg[9] 
       (.C(drpclk_in),
        .CE(original_rd_data0),
        .D(drpdo_out[9]),
        .Q(original_rd_data[9]),
        .R(1'b0));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[0]_i_1 
       (.I0(drpdo_out[0]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[0]),
        .O(\n_0_rd_data[0]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[10]_i_1 
       (.I0(drpdo_out[10]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[10]),
        .O(\n_0_rd_data[10]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[11]_i_1 
       (.I0(drpdo_out[11]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[11]),
        .O(\n_0_rd_data[11]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[12]_i_1 
       (.I0(drpdo_out[12]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[12]),
        .O(\n_0_rd_data[12]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[13]_i_1 
       (.I0(drpdo_out[13]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[13]),
        .O(\n_0_rd_data[13]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[14]_i_1 
       (.I0(drpdo_out[14]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[14]),
        .O(\n_0_rd_data[14]_i_1 ));
LUT4 #(
    .INIT(16'h0400)) 
     \rd_data[15]_i_1 
       (.I0(state[0]),
        .I1(state[1]),
        .I2(state[2]),
        .I3(I2),
        .O(\n_0_rd_data[15]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[15]_i_2 
       (.I0(drpdo_out[15]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[15]),
        .O(\n_0_rd_data[15]_i_2 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[1]_i_1 
       (.I0(drpdo_out[1]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[1]),
        .O(\n_0_rd_data[1]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[2]_i_1 
       (.I0(drpdo_out[2]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[2]),
        .O(\n_0_rd_data[2]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[3]_i_1 
       (.I0(drpdo_out[3]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[3]),
        .O(\n_0_rd_data[3]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[4]_i_1 
       (.I0(drpdo_out[4]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[4]),
        .O(\n_0_rd_data[4]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[5]_i_1 
       (.I0(drpdo_out[5]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[5]),
        .O(\n_0_rd_data[5]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[6]_i_1 
       (.I0(drpdo_out[6]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[6]),
        .O(\n_0_rd_data[6]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[7]_i_1 
       (.I0(drpdo_out[7]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[7]),
        .O(\n_0_rd_data[7]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[8]_i_1 
       (.I0(drpdo_out[8]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[8]),
        .O(\n_0_rd_data[8]_i_1 ));
LUT4 #(
    .INIT(16'hFB08)) 
     \rd_data[9]_i_1 
       (.I0(drpdo_out[9]),
        .I1(I2),
        .I2(flag),
        .I3(original_rd_data[9]),
        .O(\n_0_rd_data[9]_i_1 ));
FDRE \rd_data_reg[0] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[0]_i_1 ),
        .Q(rd_data[0]),
        .R(rst_ss));
FDRE \rd_data_reg[10] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[10]_i_1 ),
        .Q(rd_data[10]),
        .R(rst_ss));
FDRE \rd_data_reg[11] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[11]_i_1 ),
        .Q(rd_data[11]),
        .R(rst_ss));
FDRE \rd_data_reg[12] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[12]_i_1 ),
        .Q(rd_data[12]),
        .R(rst_ss));
FDRE \rd_data_reg[13] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[13]_i_1 ),
        .Q(rd_data[13]),
        .R(rst_ss));
FDRE \rd_data_reg[14] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[14]_i_1 ),
        .Q(rd_data[14]),
        .R(rst_ss));
FDRE \rd_data_reg[15] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[15]_i_2 ),
        .Q(rd_data[15]),
        .R(rst_ss));
FDRE \rd_data_reg[1] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[1]_i_1 ),
        .Q(rd_data[1]),
        .R(rst_ss));
FDRE \rd_data_reg[2] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[2]_i_1 ),
        .Q(rd_data[2]),
        .R(rst_ss));
FDRE \rd_data_reg[3] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[3]_i_1 ),
        .Q(rd_data[3]),
        .R(rst_ss));
FDRE \rd_data_reg[4] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[4]_i_1 ),
        .Q(rd_data[4]),
        .R(rst_ss));
FDRE \rd_data_reg[5] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[5]_i_1 ),
        .Q(rd_data[5]),
        .R(rst_ss));
FDRE \rd_data_reg[6] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[6]_i_1 ),
        .Q(rd_data[6]),
        .R(rst_ss));
FDRE \rd_data_reg[7] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[7]_i_1 ),
        .Q(rd_data[7]),
        .R(rst_ss));
FDRE \rd_data_reg[8] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[8]_i_1 ),
        .Q(rd_data[8]),
        .R(rst_ss));
FDRE \rd_data_reg[9] 
       (.C(drpclk_in),
        .CE(\n_0_rd_data[15]_i_1 ),
        .D(\n_0_rd_data[9]_i_1 ),
        .Q(rd_data[9]),
        .R(rst_ss));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_23 rst_cdc_sync
       (.O169(O169),
        .O170(O170),
        .O171(O171),
        .O172(O172),
        .O173(O173),
        .O174(O174),
        .SR(rst_ss),
        .cpll_reset_i(cpll_reset_i),
        .drpclk_in(drpclk_in),
        .s_out_d1_cdc_to_189(s_out_d1_cdc_to_189),
        .s_out_d2_190(s_out_d2_190),
        .s_out_d3_191(s_out_d3_191),
        .s_out_d4_192(s_out_d4_192),
        .s_out_d5_193(s_out_d5_193),
        .s_out_d6_194(s_out_d6_194),
        .s_out_d7_195(s_out_d7_195));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_24 rxpmaresetdone_cdc_sync
       (.D(next_state[1:0]),
        .I1(I1),
        .I2(I2),
        .O163(O163),
        .O164(O164),
        .O165(O165),
        .O166(O166),
        .O167(O167),
        .O168(O168),
        .Q(state),
        .drpclk_in(drpclk_in),
        .gtrxreset_ss(gtrxreset_ss),
        .rxpmaresetdone_ss(rxpmaresetdone_ss),
        .rxpmaresetdone_sss(rxpmaresetdone_sss),
        .s_out_d1_cdc_to_182(s_out_d1_cdc_to_182),
        .s_out_d2_183(s_out_d2_183),
        .s_out_d3_184(s_out_d3_184),
        .s_out_d4_185(s_out_d4_185),
        .s_out_d5_186(s_out_d5_186),
        .s_out_d6_187(s_out_d6_187),
        .s_out_d7_188(s_out_d7_188));
FDRE rxpmaresetdone_sss_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rxpmaresetdone_ss),
        .Q(rxpmaresetdone_sss),
        .R(rst_ss));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT4 #(
    .INIT(16'h7CCC)) 
     \state[2]_i_1 
       (.I0(I2),
        .I1(state[2]),
        .I2(state[1]),
        .I3(state[0]),
        .O(next_state[2]));
FDRE \state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(state[0]),
        .R(rst_ss));
FDRE \state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(state[1]),
        .R(rst_ss));
FDRE \state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(next_state[2]),
        .Q(state[2]),
        .R(rst_ss));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_hotplug" *) 
module aurora_8b10b_0_aurora_8b10b_0_hotplug
   (s_out_d1_cdc_to_21,
    s_out_d2_22,
    s_out_d3_23,
    s_out_d4_24,
    s_out_d5_25,
    s_out_d6_26,
    s_out_d7_27,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    link_reset_out,
    init_clk_in,
    user_clk,
    SR,
    D);
  output s_out_d1_cdc_to_21;
  output s_out_d2_22;
  output s_out_d3_23;
  output s_out_d4_24;
  output s_out_d5_25;
  output s_out_d6_26;
  output s_out_d7_27;
  output [1:0]O24;
  output [1:0]O25;
  output [1:0]O26;
  output [1:0]O27;
  output [1:0]O28;
  output [1:0]O29;
  output link_reset_out;
  input init_clk_in;
  input user_clk;
  input [0:0]SR;
  input [0:0]D;

  wire [0:0]D;
  wire [1:0]O24;
  wire [1:0]O25;
  wire [1:0]O26;
  wire [1:0]O27;
  wire [1:0]O28;
  wire [1:0]O29;
  wire [0:0]SR;
  wire cc_sync;
  wire [25:0]count_for_reset_r_reg;
  wire init_clk_in;
  wire link_reset_0;
  wire link_reset_out;
  wire \n_0_count_for_reset_r[0]_i_2 ;
  wire \n_0_count_for_reset_r[0]_i_3 ;
  wire \n_0_count_for_reset_r[0]_i_4 ;
  wire \n_0_count_for_reset_r[0]_i_5 ;
  wire \n_0_count_for_reset_r[12]_i_2 ;
  wire \n_0_count_for_reset_r[12]_i_3 ;
  wire \n_0_count_for_reset_r[12]_i_4 ;
  wire \n_0_count_for_reset_r[12]_i_5 ;
  wire \n_0_count_for_reset_r[16]_i_2 ;
  wire \n_0_count_for_reset_r[16]_i_3 ;
  wire \n_0_count_for_reset_r[16]_i_4 ;
  wire \n_0_count_for_reset_r[16]_i_5 ;
  wire \n_0_count_for_reset_r[20]_i_2 ;
  wire \n_0_count_for_reset_r[20]_i_3 ;
  wire \n_0_count_for_reset_r[20]_i_4 ;
  wire \n_0_count_for_reset_r[20]_i_5 ;
  wire \n_0_count_for_reset_r[24]_i_2 ;
  wire \n_0_count_for_reset_r[24]_i_3 ;
  wire \n_0_count_for_reset_r[4]_i_2 ;
  wire \n_0_count_for_reset_r[4]_i_3 ;
  wire \n_0_count_for_reset_r[4]_i_4 ;
  wire \n_0_count_for_reset_r[4]_i_5 ;
  wire \n_0_count_for_reset_r[8]_i_2 ;
  wire \n_0_count_for_reset_r[8]_i_3 ;
  wire \n_0_count_for_reset_r[8]_i_4 ;
  wire \n_0_count_for_reset_r[8]_i_5 ;
  wire \n_0_count_for_reset_r_reg[0]_i_1 ;
  wire \n_0_count_for_reset_r_reg[12]_i_1 ;
  wire \n_0_count_for_reset_r_reg[16]_i_1 ;
  wire \n_0_count_for_reset_r_reg[20]_i_1 ;
  wire \n_0_count_for_reset_r_reg[4]_i_1 ;
  wire \n_0_count_for_reset_r_reg[8]_i_1 ;
  wire n_0_link_reset_0_i_1;
  wire n_0_link_reset_0_i_2;
  wire n_0_link_reset_0_i_3;
  wire n_0_link_reset_0_i_4;
  wire n_0_link_reset_0_i_5;
  wire n_0_rx_cc_extend_r2_i_1;
  wire n_0_rx_cc_extend_r2_i_2;
  wire \n_1_count_for_reset_r_reg[0]_i_1 ;
  wire \n_1_count_for_reset_r_reg[12]_i_1 ;
  wire \n_1_count_for_reset_r_reg[16]_i_1 ;
  wire \n_1_count_for_reset_r_reg[20]_i_1 ;
  wire \n_1_count_for_reset_r_reg[4]_i_1 ;
  wire \n_1_count_for_reset_r_reg[8]_i_1 ;
  wire \n_2_count_for_reset_r_reg[0]_i_1 ;
  wire \n_2_count_for_reset_r_reg[12]_i_1 ;
  wire \n_2_count_for_reset_r_reg[16]_i_1 ;
  wire \n_2_count_for_reset_r_reg[20]_i_1 ;
  wire \n_2_count_for_reset_r_reg[4]_i_1 ;
  wire \n_2_count_for_reset_r_reg[8]_i_1 ;
  wire \n_3_count_for_reset_r_reg[0]_i_1 ;
  wire \n_3_count_for_reset_r_reg[12]_i_1 ;
  wire \n_3_count_for_reset_r_reg[16]_i_1 ;
  wire \n_3_count_for_reset_r_reg[20]_i_1 ;
  wire \n_3_count_for_reset_r_reg[24]_i_1 ;
  wire \n_3_count_for_reset_r_reg[4]_i_1 ;
  wire \n_3_count_for_reset_r_reg[8]_i_1 ;
  wire \n_4_count_for_reset_r_reg[0]_i_1 ;
  wire \n_4_count_for_reset_r_reg[12]_i_1 ;
  wire \n_4_count_for_reset_r_reg[16]_i_1 ;
  wire \n_4_count_for_reset_r_reg[20]_i_1 ;
  wire \n_4_count_for_reset_r_reg[4]_i_1 ;
  wire \n_4_count_for_reset_r_reg[8]_i_1 ;
  wire \n_5_count_for_reset_r_reg[0]_i_1 ;
  wire \n_5_count_for_reset_r_reg[12]_i_1 ;
  wire \n_5_count_for_reset_r_reg[16]_i_1 ;
  wire \n_5_count_for_reset_r_reg[20]_i_1 ;
  wire \n_5_count_for_reset_r_reg[4]_i_1 ;
  wire \n_5_count_for_reset_r_reg[8]_i_1 ;
  wire \n_6_count_for_reset_r_reg[0]_i_1 ;
  wire \n_6_count_for_reset_r_reg[12]_i_1 ;
  wire \n_6_count_for_reset_r_reg[16]_i_1 ;
  wire \n_6_count_for_reset_r_reg[20]_i_1 ;
  wire \n_6_count_for_reset_r_reg[24]_i_1 ;
  wire \n_6_count_for_reset_r_reg[4]_i_1 ;
  wire \n_6_count_for_reset_r_reg[8]_i_1 ;
  wire \n_7_count_for_reset_r_reg[0]_i_1 ;
  wire \n_7_count_for_reset_r_reg[12]_i_1 ;
  wire \n_7_count_for_reset_r_reg[16]_i_1 ;
  wire \n_7_count_for_reset_r_reg[20]_i_1 ;
  wire \n_7_count_for_reset_r_reg[24]_i_1 ;
  wire \n_7_count_for_reset_r_reg[4]_i_1 ;
  wire \n_7_count_for_reset_r_reg[8]_i_1 ;
  wire [7:0]rx_cc_extend_r;
  wire rx_cc_extend_r2;
  wire s_out_d1_cdc_to_21;
  wire s_out_d2_22;
  wire s_out_d3_23;
  wire s_out_d4_24;
  wire s_out_d5_25;
  wire s_out_d6_26;
  wire s_out_d7_27;
  wire user_clk;
  wire [3:1]\NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED ;

LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[0]_i_2 
       (.I0(count_for_reset_r_reg[3]),
        .O(\n_0_count_for_reset_r[0]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[0]_i_3 
       (.I0(count_for_reset_r_reg[2]),
        .O(\n_0_count_for_reset_r[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[0]_i_4 
       (.I0(count_for_reset_r_reg[1]),
        .O(\n_0_count_for_reset_r[0]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \count_for_reset_r[0]_i_5 
       (.I0(count_for_reset_r_reg[0]),
        .O(\n_0_count_for_reset_r[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[12]_i_2 
       (.I0(count_for_reset_r_reg[15]),
        .O(\n_0_count_for_reset_r[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[12]_i_3 
       (.I0(count_for_reset_r_reg[14]),
        .O(\n_0_count_for_reset_r[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[12]_i_4 
       (.I0(count_for_reset_r_reg[13]),
        .O(\n_0_count_for_reset_r[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[12]_i_5 
       (.I0(count_for_reset_r_reg[12]),
        .O(\n_0_count_for_reset_r[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[16]_i_2 
       (.I0(count_for_reset_r_reg[19]),
        .O(\n_0_count_for_reset_r[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[16]_i_3 
       (.I0(count_for_reset_r_reg[18]),
        .O(\n_0_count_for_reset_r[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[16]_i_4 
       (.I0(count_for_reset_r_reg[17]),
        .O(\n_0_count_for_reset_r[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[16]_i_5 
       (.I0(count_for_reset_r_reg[16]),
        .O(\n_0_count_for_reset_r[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[20]_i_2 
       (.I0(count_for_reset_r_reg[23]),
        .O(\n_0_count_for_reset_r[20]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[20]_i_3 
       (.I0(count_for_reset_r_reg[22]),
        .O(\n_0_count_for_reset_r[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[20]_i_4 
       (.I0(count_for_reset_r_reg[21]),
        .O(\n_0_count_for_reset_r[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[20]_i_5 
       (.I0(count_for_reset_r_reg[20]),
        .O(\n_0_count_for_reset_r[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[24]_i_2 
       (.I0(count_for_reset_r_reg[25]),
        .O(\n_0_count_for_reset_r[24]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[24]_i_3 
       (.I0(count_for_reset_r_reg[24]),
        .O(\n_0_count_for_reset_r[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[4]_i_2 
       (.I0(count_for_reset_r_reg[7]),
        .O(\n_0_count_for_reset_r[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[4]_i_3 
       (.I0(count_for_reset_r_reg[6]),
        .O(\n_0_count_for_reset_r[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[4]_i_4 
       (.I0(count_for_reset_r_reg[5]),
        .O(\n_0_count_for_reset_r[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[4]_i_5 
       (.I0(count_for_reset_r_reg[4]),
        .O(\n_0_count_for_reset_r[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[8]_i_2 
       (.I0(count_for_reset_r_reg[11]),
        .O(\n_0_count_for_reset_r[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[8]_i_3 
       (.I0(count_for_reset_r_reg[10]),
        .O(\n_0_count_for_reset_r[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[8]_i_4 
       (.I0(count_for_reset_r_reg[9]),
        .O(\n_0_count_for_reset_r[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \count_for_reset_r[8]_i_5 
       (.I0(count_for_reset_r_reg[8]),
        .O(\n_0_count_for_reset_r[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[0]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\n_0_count_for_reset_r_reg[0]_i_1 ,\n_1_count_for_reset_r_reg[0]_i_1 ,\n_2_count_for_reset_r_reg[0]_i_1 ,\n_3_count_for_reset_r_reg[0]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_count_for_reset_r_reg[0]_i_1 ,\n_5_count_for_reset_r_reg[0]_i_1 ,\n_6_count_for_reset_r_reg[0]_i_1 ,\n_7_count_for_reset_r_reg[0]_i_1 }),
        .S({\n_0_count_for_reset_r[0]_i_2 ,\n_0_count_for_reset_r[0]_i_3 ,\n_0_count_for_reset_r[0]_i_4 ,\n_0_count_for_reset_r[0]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[10] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[10]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[11] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[11]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[12] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[12]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[12]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[8]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[12]_i_1 ,\n_1_count_for_reset_r_reg[12]_i_1 ,\n_2_count_for_reset_r_reg[12]_i_1 ,\n_3_count_for_reset_r_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_for_reset_r_reg[12]_i_1 ,\n_5_count_for_reset_r_reg[12]_i_1 ,\n_6_count_for_reset_r_reg[12]_i_1 ,\n_7_count_for_reset_r_reg[12]_i_1 }),
        .S({\n_0_count_for_reset_r[12]_i_2 ,\n_0_count_for_reset_r[12]_i_3 ,\n_0_count_for_reset_r[12]_i_4 ,\n_0_count_for_reset_r[12]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[13] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[13]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[14] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[14]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[15] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[15]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[16] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[16]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[16]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[12]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[16]_i_1 ,\n_1_count_for_reset_r_reg[16]_i_1 ,\n_2_count_for_reset_r_reg[16]_i_1 ,\n_3_count_for_reset_r_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_for_reset_r_reg[16]_i_1 ,\n_5_count_for_reset_r_reg[16]_i_1 ,\n_6_count_for_reset_r_reg[16]_i_1 ,\n_7_count_for_reset_r_reg[16]_i_1 }),
        .S({\n_0_count_for_reset_r[16]_i_2 ,\n_0_count_for_reset_r[16]_i_3 ,\n_0_count_for_reset_r[16]_i_4 ,\n_0_count_for_reset_r[16]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[17] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[17]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[18] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[18]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[19] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[19]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[1] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[1]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[20] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[20]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[20]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[16]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[20]_i_1 ,\n_1_count_for_reset_r_reg[20]_i_1 ,\n_2_count_for_reset_r_reg[20]_i_1 ,\n_3_count_for_reset_r_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_for_reset_r_reg[20]_i_1 ,\n_5_count_for_reset_r_reg[20]_i_1 ,\n_6_count_for_reset_r_reg[20]_i_1 ,\n_7_count_for_reset_r_reg[20]_i_1 }),
        .S({\n_0_count_for_reset_r[20]_i_2 ,\n_0_count_for_reset_r[20]_i_3 ,\n_0_count_for_reset_r[20]_i_4 ,\n_0_count_for_reset_r[20]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[21] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[21]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[22] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[22]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[23] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[23]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[24] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[24]_i_1 ),
        .Q(count_for_reset_r_reg[24]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[24]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[20]_i_1 ),
        .CO({\NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED [3:1],\n_3_count_for_reset_r_reg[24]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED [3:2],\n_6_count_for_reset_r_reg[24]_i_1 ,\n_7_count_for_reset_r_reg[24]_i_1 }),
        .S({1'b0,1'b0,\n_0_count_for_reset_r[24]_i_2 ,\n_0_count_for_reset_r[24]_i_3 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[25] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[24]_i_1 ),
        .Q(count_for_reset_r_reg[25]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[2] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[2]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[3] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[3]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[4] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[4]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[4]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[0]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[4]_i_1 ,\n_1_count_for_reset_r_reg[4]_i_1 ,\n_2_count_for_reset_r_reg[4]_i_1 ,\n_3_count_for_reset_r_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_for_reset_r_reg[4]_i_1 ,\n_5_count_for_reset_r_reg[4]_i_1 ,\n_6_count_for_reset_r_reg[4]_i_1 ,\n_7_count_for_reset_r_reg[4]_i_1 }),
        .S({\n_0_count_for_reset_r[4]_i_2 ,\n_0_count_for_reset_r[4]_i_3 ,\n_0_count_for_reset_r[4]_i_4 ,\n_0_count_for_reset_r[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[5] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[5]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[6] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_5_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[6]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[7] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_4_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[7]),
        .R(cc_sync));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[8] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_7_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[8]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[8]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[4]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[8]_i_1 ,\n_1_count_for_reset_r_reg[8]_i_1 ,\n_2_count_for_reset_r_reg[8]_i_1 ,\n_3_count_for_reset_r_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_count_for_reset_r_reg[8]_i_1 ,\n_5_count_for_reset_r_reg[8]_i_1 ,\n_6_count_for_reset_r_reg[8]_i_1 ,\n_7_count_for_reset_r_reg[8]_i_1 }),
        .S({\n_0_count_for_reset_r[8]_i_2 ,\n_0_count_for_reset_r[8]_i_3 ,\n_0_count_for_reset_r[8]_i_4 ,\n_0_count_for_reset_r[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[9] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(\n_6_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[9]),
        .R(cc_sync));
LUT6 #(
    .INIT(64'h7FFF888800000000)) 
     link_reset_0_i_1
       (.I0(count_for_reset_r_reg[3]),
        .I1(count_for_reset_r_reg[2]),
        .I2(count_for_reset_r_reg[0]),
        .I3(count_for_reset_r_reg[1]),
        .I4(count_for_reset_r_reg[4]),
        .I5(n_0_link_reset_0_i_2),
        .O(n_0_link_reset_0_i_1));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     link_reset_0_i_2
       (.I0(n_0_link_reset_0_i_3),
        .I1(count_for_reset_r_reg[17]),
        .I2(count_for_reset_r_reg[14]),
        .I3(count_for_reset_r_reg[11]),
        .I4(n_0_link_reset_0_i_4),
        .I5(n_0_link_reset_0_i_5),
        .O(n_0_link_reset_0_i_2));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     link_reset_0_i_3
       (.I0(count_for_reset_r_reg[21]),
        .I1(count_for_reset_r_reg[6]),
        .I2(count_for_reset_r_reg[7]),
        .I3(count_for_reset_r_reg[23]),
        .I4(count_for_reset_r_reg[25]),
        .I5(count_for_reset_r_reg[18]),
        .O(n_0_link_reset_0_i_3));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     link_reset_0_i_4
       (.I0(count_for_reset_r_reg[8]),
        .I1(count_for_reset_r_reg[9]),
        .I2(count_for_reset_r_reg[13]),
        .I3(count_for_reset_r_reg[19]),
        .I4(count_for_reset_r_reg[16]),
        .I5(count_for_reset_r_reg[22]),
        .O(n_0_link_reset_0_i_4));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     link_reset_0_i_5
       (.I0(count_for_reset_r_reg[15]),
        .I1(count_for_reset_r_reg[12]),
        .I2(count_for_reset_r_reg[10]),
        .I3(count_for_reset_r_reg[20]),
        .I4(count_for_reset_r_reg[5]),
        .I5(count_for_reset_r_reg[24]),
        .O(n_0_link_reset_0_i_5));
FDRE link_reset_0_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_link_reset_0_i_1),
        .Q(link_reset_0),
        .R(1'b0));
FDRE \link_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(1'b1),
        .D(link_reset_0),
        .Q(link_reset_out),
        .R(1'b0));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_28 rx_cc_cdc_sync
       (.O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .cc_sync(cc_sync),
        .init_clk_in(init_clk_in),
        .rx_cc_extend_r2(rx_cc_extend_r2),
        .s_out_d1_cdc_to_21(s_out_d1_cdc_to_21),
        .s_out_d2_22(s_out_d2_22),
        .s_out_d3_23(s_out_d3_23),
        .s_out_d4_24(s_out_d4_24),
        .s_out_d5_25(s_out_d5_25),
        .s_out_d6_26(s_out_d6_26),
        .s_out_d7_27(s_out_d7_27));
LUT3 #(
    .INIT(8'hFE)) 
     rx_cc_extend_r2_i_1
       (.I0(rx_cc_extend_r[2]),
        .I1(n_0_rx_cc_extend_r2_i_2),
        .I2(rx_cc_extend_r[3]),
        .O(n_0_rx_cc_extend_r2_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     rx_cc_extend_r2_i_2
       (.I0(rx_cc_extend_r[1]),
        .I1(rx_cc_extend_r[0]),
        .I2(rx_cc_extend_r[6]),
        .I3(rx_cc_extend_r[7]),
        .I4(rx_cc_extend_r[5]),
        .I5(rx_cc_extend_r[4]),
        .O(n_0_rx_cc_extend_r2_i_2));
FDRE rx_cc_extend_r2_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_0_rx_cc_extend_r2_i_1),
        .Q(rx_cc_extend_r2),
        .R(1'b0));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[0] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[1]),
        .Q(rx_cc_extend_r[0]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[1] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[2]),
        .Q(rx_cc_extend_r[1]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[2] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[3]),
        .Q(rx_cc_extend_r[2]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[3] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[4]),
        .Q(rx_cc_extend_r[3]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[4] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[5]),
        .Q(rx_cc_extend_r[4]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[5] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[6]),
        .Q(rx_cc_extend_r[5]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[6] 
       (.C(user_clk),
        .CE(1'b1),
        .D(rx_cc_extend_r[7]),
        .Q(rx_cc_extend_r[6]),
        .R(SR));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[7] 
       (.C(user_clk),
        .CE(1'b1),
        .D(D),
        .Q(rx_cc_extend_r[7]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_multi_gt" *) 
module aurora_8b10b_0_aurora_8b10b_0_multi_gt
   (O2,
    O1,
    txn,
    txp,
    rx_realign_i,
    O3,
    tx_out_clk,
    O4,
    drpdo_out,
    RXDATA,
    D,
    RXCHARISK,
    RXDISPERR,
    s_out_d1_cdc_to_182,
    s_out_d2_183,
    s_out_d3_184,
    s_out_d4_185,
    s_out_d5_186,
    s_out_d6_187,
    s_out_d7_188,
    O163,
    O164,
    O165,
    O166,
    O167,
    O168,
    s_out_d1_cdc_to_189,
    s_out_d2_190,
    s_out_d3_191,
    s_out_d4_192,
    s_out_d5_193,
    s_out_d6_194,
    s_out_d7_195,
    O169,
    O170,
    O171,
    O172,
    O173,
    O174,
    s_out_d1_cdc_to_196,
    s_out_d2_197,
    s_out_d3_198,
    s_out_d4_199,
    s_out_d5_200,
    s_out_d6_201,
    s_out_d7_202,
    O175,
    O176,
    O177,
    O178,
    O179,
    O180,
    ack_flag,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    hard_err_gt0,
    I11,
    I12,
    init_clk_in,
    drpclk_in,
    rxn,
    rxp,
    gt_refclk1,
    gt_tx_reset_i,
    gt_qpllclk_quad4_in,
    gt_qpllrefclk_quad4_in,
    gt_rxdfelfhold_i,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    power_down,
    gt_txuserrdy_i,
    loopback,
    TXDATA,
    TXCHARISK,
    cpll_reset_i,
    SR,
    I1,
    I2,
    I3,
    I4,
    I5,
    drpen_in,
    drpdi_in,
    drpwe_in,
    drpaddr_in);
  output O2;
  output O1;
  output txn;
  output txp;
  output rx_realign_i;
  output O3;
  output tx_out_clk;
  output O4;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]D;
  output [3:0]RXCHARISK;
  output [1:0]RXDISPERR;
  output s_out_d1_cdc_to_182;
  output s_out_d2_183;
  output s_out_d3_184;
  output s_out_d4_185;
  output s_out_d5_186;
  output s_out_d6_187;
  output s_out_d7_188;
  output [1:0]O163;
  output [1:0]O164;
  output [1:0]O165;
  output [1:0]O166;
  output [1:0]O167;
  output [1:0]O168;
  output s_out_d1_cdc_to_189;
  output s_out_d2_190;
  output s_out_d3_191;
  output s_out_d4_192;
  output s_out_d5_193;
  output s_out_d6_194;
  output s_out_d7_195;
  output [1:0]O169;
  output [1:0]O170;
  output [1:0]O171;
  output [1:0]O172;
  output [1:0]O173;
  output [1:0]O174;
  output s_out_d1_cdc_to_196;
  output s_out_d2_197;
  output s_out_d3_198;
  output s_out_d4_199;
  output s_out_d5_200;
  output s_out_d6_201;
  output s_out_d7_202;
  output [1:0]O175;
  output [1:0]O176;
  output [1:0]O177;
  output [1:0]O178;
  output [1:0]O179;
  output [1:0]O180;
  output ack_flag;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output hard_err_gt0;
  output [7:0]I11;
  output [7:0]I12;
  input init_clk_in;
  input drpclk_in;
  input rxn;
  input rxp;
  input gt_refclk1;
  input gt_tx_reset_i;
  input gt_qpllclk_quad4_in;
  input gt_qpllrefclk_quad4_in;
  input gt_rxdfelfhold_i;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input gt_txuserrdy_i;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input cpll_reset_i;
  input [0:0]SR;
  input I1;
  input I2;
  input I3;
  input [0:0]I4;
  input [7:0]I5;
  input drpen_in;
  input [15:0]drpdi_in;
  input drpwe_in;
  input [8:0]drpaddr_in;

  wire [3:0]D;
  wire I1;
  wire [7:0]I11;
  wire [7:0]I12;
  wire I2;
  wire I3;
  wire [0:0]I4;
  wire [7:0]I5;
  wire O1;
  wire O10;
  wire O11;
  wire [1:0]O163;
  wire [1:0]O164;
  wire [1:0]O165;
  wire [1:0]O166;
  wire [1:0]O167;
  wire [1:0]O168;
  wire [1:0]O169;
  wire [1:0]O170;
  wire [1:0]O171;
  wire [1:0]O172;
  wire [1:0]O173;
  wire [1:0]O174;
  wire [1:0]O175;
  wire [1:0]O176;
  wire [1:0]O177;
  wire [1:0]O178;
  wire [1:0]O179;
  wire [1:0]O180;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [1:0]RXDISPERR;
  wire [0:0]SR;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire ack_flag;
  wire cpll_reset_i;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire gt_qpllclk_quad4_in;
  wire gt_qpllrefclk_quad4_in;
  wire gt_refclk1;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire hard_err_gt0;
  wire init_clk_in;
  wire [2:0]loopback;
  wire power_down;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxn;
  wire rxp;
  wire s_out_d1_cdc_to_182;
  wire s_out_d1_cdc_to_189;
  wire s_out_d1_cdc_to_196;
  wire s_out_d2_183;
  wire s_out_d2_190;
  wire s_out_d2_197;
  wire s_out_d3_184;
  wire s_out_d3_191;
  wire s_out_d3_198;
  wire s_out_d4_185;
  wire s_out_d4_192;
  wire s_out_d4_199;
  wire s_out_d5_186;
  wire s_out_d5_193;
  wire s_out_d5_200;
  wire s_out_d6_187;
  wire s_out_d6_194;
  wire s_out_d6_201;
  wire s_out_d7_188;
  wire s_out_d7_195;
  wire s_out_d7_202;
  wire sync_clk;
  wire tx_out_clk;
  wire txn;
  wire txp;
  wire user_clk;

aurora_8b10b_0_aurora_8b10b_0_gt gt0_aurora_8b10b_0_i
       (.D(D),
        .I1(I1),
        .I11(I11),
        .I12(I12),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .O1(O1),
        .O10(O10),
        .O11(O11),
        .O163(O163),
        .O164(O164),
        .O165(O165),
        .O166(O166),
        .O167(O167),
        .O168(O168),
        .O169(O169),
        .O170(O170),
        .O171(O171),
        .O172(O172),
        .O173(O173),
        .O174(O174),
        .O175(O175),
        .O176(O176),
        .O177(O177),
        .O178(O178),
        .O179(O179),
        .O180(O180),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .RXDISPERR(RXDISPERR),
        .SR(SR),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .ack_flag(ack_flag),
        .cpll_reset_i(cpll_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt_qpllclk_quad4_in(gt_qpllclk_quad4_in),
        .gt_qpllrefclk_quad4_in(gt_qpllrefclk_quad4_in),
        .gt_refclk1(gt_refclk1),
        .gt_rxdfelfhold_i(gt_rxdfelfhold_i),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .hard_err_gt0(hard_err_gt0),
        .init_clk_in(init_clk_in),
        .loopback(loopback),
        .power_down(power_down),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rxn(rxn),
        .rxp(rxp),
        .s_out_d1_cdc_to_182(s_out_d1_cdc_to_182),
        .s_out_d1_cdc_to_189(s_out_d1_cdc_to_189),
        .s_out_d1_cdc_to_196(s_out_d1_cdc_to_196),
        .s_out_d2_183(s_out_d2_183),
        .s_out_d2_190(s_out_d2_190),
        .s_out_d2_197(s_out_d2_197),
        .s_out_d3_184(s_out_d3_184),
        .s_out_d3_191(s_out_d3_191),
        .s_out_d3_198(s_out_d3_198),
        .s_out_d4_185(s_out_d4_185),
        .s_out_d4_192(s_out_d4_192),
        .s_out_d4_199(s_out_d4_199),
        .s_out_d5_186(s_out_d5_186),
        .s_out_d5_193(s_out_d5_193),
        .s_out_d5_200(s_out_d5_200),
        .s_out_d6_187(s_out_d6_187),
        .s_out_d6_194(s_out_d6_194),
        .s_out_d6_201(s_out_d6_201),
        .s_out_d7_188(s_out_d7_188),
        .s_out_d7_195(s_out_d7_195),
        .s_out_d7_202(s_out_d7_202),
        .sync_clk(sync_clk),
        .tx_out_clk(tx_out_clk),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_rx_startup_fsm" *) 
module aurora_8b10b_0_aurora_8b10b_0_rx_startup_fsm
   (fsm_gt_rx_reset_t,
    s_out_d1_cdc_to_84,
    s_out_d2_85,
    s_out_d3_86,
    s_out_d4_87,
    s_out_d5_88,
    s_out_d6_89,
    s_out_d7_90,
    O78,
    O79,
    O80,
    O81,
    O82,
    O83,
    s_out_d1_cdc_to_91,
    s_out_d2_92,
    s_out_d3_93,
    s_out_d4_94,
    s_out_d5_95,
    s_out_d6_96,
    s_out_d7_97,
    O84,
    O85,
    O86,
    O87,
    O88,
    O89,
    s_out_d1_cdc_to_98,
    s_out_d2_99,
    s_out_d3_100,
    s_out_d4_101,
    s_out_d5_102,
    s_out_d6_103,
    s_out_d7_104,
    O90,
    O91,
    O92,
    O93,
    O94,
    O95,
    s_out_d1_cdc_to_105,
    s_out_d2_106,
    s_out_d3_107,
    s_out_d4_108,
    s_out_d5_109,
    s_out_d6_110,
    s_out_d7_111,
    O96,
    O97,
    O98,
    O99,
    O100,
    O101,
    s_out_d1_cdc_to_112,
    s_out_d2_113,
    s_out_d3_114,
    s_out_d4_115,
    s_out_d5_116,
    s_out_d6_117,
    s_out_d7_118,
    O102,
    O103,
    O104,
    O105,
    O106,
    O107,
    s_out_d1_cdc_to_119,
    s_out_d2_120,
    s_out_d3_121,
    s_out_d4_122,
    s_out_d5_123,
    s_out_d6_124,
    s_out_d7_125,
    O108,
    O109,
    O110,
    O111,
    O112,
    O113,
    s_out_d1_cdc_to_126,
    s_out_d2_127,
    s_out_d3_128,
    s_out_d4_129,
    s_out_d5_130,
    s_out_d6_131,
    s_out_d7_132,
    O114,
    O115,
    O116,
    O117,
    O118,
    O119,
    s_out_d1_cdc_to_133,
    s_out_d2_134,
    s_out_d3_135,
    s_out_d4_136,
    s_out_d5_137,
    s_out_d6_138,
    s_out_d7_139,
    O120,
    O121,
    O122,
    O123,
    O124,
    O125,
    s_out_d1_cdc_to_140,
    s_out_d2_141,
    s_out_d3_142,
    s_out_d4_143,
    s_out_d5_144,
    s_out_d6_145,
    s_out_d7_146,
    O126,
    O127,
    O128,
    O129,
    O130,
    O131,
    s_out_d1_cdc_to_147,
    s_out_d2_148,
    s_out_d3_149,
    s_out_d4_150,
    s_out_d5_151,
    s_out_d6_152,
    s_out_d7_153,
    O132,
    O133,
    O134,
    O135,
    O136,
    O137,
    s_out_d1_cdc_to_154,
    s_out_d2_155,
    s_out_d3_156,
    s_out_d4_157,
    s_out_d5_158,
    s_out_d6_159,
    s_out_d7_160,
    O138,
    O139,
    O140,
    O141,
    O142,
    O143,
    gt_rxuserrdy_i,
    s_out_d1_cdc_to_161,
    s_out_d2_162,
    s_out_d3_163,
    s_out_d4_164,
    s_out_d5_165,
    s_out_d6_166,
    s_out_d7_167,
    O144,
    O145,
    O146,
    O147,
    O148,
    O149,
    s_out_d1_cdc_to_168,
    s_out_d2_169,
    s_out_d3_170,
    s_out_d4_171,
    s_out_d5_172,
    s_out_d6_173,
    s_out_d7_174,
    O150,
    O151,
    O152,
    O153,
    O154,
    O155,
    s_out_d1_cdc_to_175,
    s_out_d2_176,
    s_out_d3_177,
    s_out_d4_178,
    s_out_d5_179,
    s_out_d6_180,
    s_out_d7_181,
    O156,
    O157,
    O158,
    O159,
    O160,
    O161,
    gt_rxdfelfhold_i,
    rxfsm_rxresetdone_r,
    O2,
    user_clk,
    init_clk_in,
    AR,
    gt_txuserrdy_i,
    I1);
  output fsm_gt_rx_reset_t;
  output s_out_d1_cdc_to_84;
  output s_out_d2_85;
  output s_out_d3_86;
  output s_out_d4_87;
  output s_out_d5_88;
  output s_out_d6_89;
  output s_out_d7_90;
  output [1:0]O78;
  output [1:0]O79;
  output [1:0]O80;
  output [1:0]O81;
  output [1:0]O82;
  output [1:0]O83;
  output s_out_d1_cdc_to_91;
  output s_out_d2_92;
  output s_out_d3_93;
  output s_out_d4_94;
  output s_out_d5_95;
  output s_out_d6_96;
  output s_out_d7_97;
  output [1:0]O84;
  output [1:0]O85;
  output [1:0]O86;
  output [1:0]O87;
  output [1:0]O88;
  output [1:0]O89;
  output s_out_d1_cdc_to_98;
  output s_out_d2_99;
  output s_out_d3_100;
  output s_out_d4_101;
  output s_out_d5_102;
  output s_out_d6_103;
  output s_out_d7_104;
  output [1:0]O90;
  output [1:0]O91;
  output [1:0]O92;
  output [1:0]O93;
  output [1:0]O94;
  output [1:0]O95;
  output s_out_d1_cdc_to_105;
  output s_out_d2_106;
  output s_out_d3_107;
  output s_out_d4_108;
  output s_out_d5_109;
  output s_out_d6_110;
  output s_out_d7_111;
  output [1:0]O96;
  output [1:0]O97;
  output [1:0]O98;
  output [1:0]O99;
  output [1:0]O100;
  output [1:0]O101;
  output s_out_d1_cdc_to_112;
  output s_out_d2_113;
  output s_out_d3_114;
  output s_out_d4_115;
  output s_out_d5_116;
  output s_out_d6_117;
  output s_out_d7_118;
  output [1:0]O102;
  output [1:0]O103;
  output [1:0]O104;
  output [1:0]O105;
  output [1:0]O106;
  output [1:0]O107;
  output s_out_d1_cdc_to_119;
  output s_out_d2_120;
  output s_out_d3_121;
  output s_out_d4_122;
  output s_out_d5_123;
  output s_out_d6_124;
  output s_out_d7_125;
  output [1:0]O108;
  output [1:0]O109;
  output [1:0]O110;
  output [1:0]O111;
  output [1:0]O112;
  output [1:0]O113;
  output s_out_d1_cdc_to_126;
  output s_out_d2_127;
  output s_out_d3_128;
  output s_out_d4_129;
  output s_out_d5_130;
  output s_out_d6_131;
  output s_out_d7_132;
  output [1:0]O114;
  output [1:0]O115;
  output [1:0]O116;
  output [1:0]O117;
  output [1:0]O118;
  output [1:0]O119;
  output s_out_d1_cdc_to_133;
  output s_out_d2_134;
  output s_out_d3_135;
  output s_out_d4_136;
  output s_out_d5_137;
  output s_out_d6_138;
  output s_out_d7_139;
  output [1:0]O120;
  output [1:0]O121;
  output [1:0]O122;
  output [1:0]O123;
  output [1:0]O124;
  output [1:0]O125;
  output s_out_d1_cdc_to_140;
  output s_out_d2_141;
  output s_out_d3_142;
  output s_out_d4_143;
  output s_out_d5_144;
  output s_out_d6_145;
  output s_out_d7_146;
  output [1:0]O126;
  output [1:0]O127;
  output [1:0]O128;
  output [1:0]O129;
  output [1:0]O130;
  output [1:0]O131;
  output s_out_d1_cdc_to_147;
  output s_out_d2_148;
  output s_out_d3_149;
  output s_out_d4_150;
  output s_out_d5_151;
  output s_out_d6_152;
  output s_out_d7_153;
  output [1:0]O132;
  output [1:0]O133;
  output [1:0]O134;
  output [1:0]O135;
  output [1:0]O136;
  output [1:0]O137;
  output s_out_d1_cdc_to_154;
  output s_out_d2_155;
  output s_out_d3_156;
  output s_out_d4_157;
  output s_out_d5_158;
  output s_out_d6_159;
  output s_out_d7_160;
  output [1:0]O138;
  output [1:0]O139;
  output [1:0]O140;
  output [1:0]O141;
  output [1:0]O142;
  output [1:0]O143;
  output gt_rxuserrdy_i;
  output s_out_d1_cdc_to_161;
  output s_out_d2_162;
  output s_out_d3_163;
  output s_out_d4_164;
  output s_out_d5_165;
  output s_out_d6_166;
  output s_out_d7_167;
  output [1:0]O144;
  output [1:0]O145;
  output [1:0]O146;
  output [1:0]O147;
  output [1:0]O148;
  output [1:0]O149;
  output s_out_d1_cdc_to_168;
  output s_out_d2_169;
  output s_out_d3_170;
  output s_out_d4_171;
  output s_out_d5_172;
  output s_out_d6_173;
  output s_out_d7_174;
  output [1:0]O150;
  output [1:0]O151;
  output [1:0]O152;
  output [1:0]O153;
  output [1:0]O154;
  output [1:0]O155;
  output s_out_d1_cdc_to_175;
  output s_out_d2_176;
  output s_out_d3_177;
  output s_out_d4_178;
  output s_out_d5_179;
  output s_out_d6_180;
  output s_out_d7_181;
  output [1:0]O156;
  output [1:0]O157;
  output [1:0]O158;
  output [1:0]O159;
  output [1:0]O160;
  output [1:0]O161;
  output gt_rxdfelfhold_i;
  input rxfsm_rxresetdone_r;
  input O2;
  input user_clk;
  input init_clk_in;
  input [0:0]AR;
  input gt_txuserrdy_i;
  input I1;

  wire [0:0]AR;
  wire I1;
  wire [1:0]O100;
  wire [1:0]O101;
  wire [1:0]O102;
  wire [1:0]O103;
  wire [1:0]O104;
  wire [1:0]O105;
  wire [1:0]O106;
  wire [1:0]O107;
  wire [1:0]O108;
  wire [1:0]O109;
  wire [1:0]O110;
  wire [1:0]O111;
  wire [1:0]O112;
  wire [1:0]O113;
  wire [1:0]O114;
  wire [1:0]O115;
  wire [1:0]O116;
  wire [1:0]O117;
  wire [1:0]O118;
  wire [1:0]O119;
  wire [1:0]O120;
  wire [1:0]O121;
  wire [1:0]O122;
  wire [1:0]O123;
  wire [1:0]O124;
  wire [1:0]O125;
  wire [1:0]O126;
  wire [1:0]O127;
  wire [1:0]O128;
  wire [1:0]O129;
  wire [1:0]O130;
  wire [1:0]O131;
  wire [1:0]O132;
  wire [1:0]O133;
  wire [1:0]O134;
  wire [1:0]O135;
  wire [1:0]O136;
  wire [1:0]O137;
  wire [1:0]O138;
  wire [1:0]O139;
  wire [1:0]O140;
  wire [1:0]O141;
  wire [1:0]O142;
  wire [1:0]O143;
  wire [1:0]O144;
  wire [1:0]O145;
  wire [1:0]O146;
  wire [1:0]O147;
  wire [1:0]O148;
  wire [1:0]O149;
  wire [1:0]O150;
  wire [1:0]O151;
  wire [1:0]O152;
  wire [1:0]O153;
  wire [1:0]O154;
  wire [1:0]O155;
  wire [1:0]O156;
  wire [1:0]O157;
  wire [1:0]O158;
  wire [1:0]O159;
  wire [1:0]O160;
  wire [1:0]O161;
  wire O2;
  wire [1:0]O78;
  wire [1:0]O79;
  wire [1:0]O80;
  wire [1:0]O81;
  wire [1:0]O82;
  wire [1:0]O83;
  wire [1:0]O84;
  wire [1:0]O85;
  wire [1:0]O86;
  wire [1:0]O87;
  wire [1:0]O88;
  wire [1:0]O89;
  wire [1:0]O90;
  wire [1:0]O91;
  wire [1:0]O92;
  wire [1:0]O93;
  wire [1:0]O94;
  wire [1:0]O95;
  wire [1:0]O96;
  wire [1:0]O97;
  wire [1:0]O98;
  wire [1:0]O99;
  wire [31:0]adapt_count_reg;
  wire cplllock_sync;
  wire data_valid_sync;
  wire fsm_gt_rx_reset_t;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_txuserrdy_i;
  wire gtrxreset_s;
  wire init_clk_in;
  wire [7:0]init_wait_count_reg__0;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_sequential_rx_state[0]_i_2 ;
  wire \n_0_FSM_sequential_rx_state[2]_i_1 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_11 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_5 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_8 ;
  wire \n_0_FSM_sequential_rx_state[3]_i_9 ;
  wire n_0_RXDFEAGCHOLD_i_1;
  wire n_0_RXUSERRDY_i_1;
  wire \n_0_adapt_count[0]_i_1 ;
  wire \n_0_adapt_count[0]_i_10 ;
  wire \n_0_adapt_count[0]_i_11 ;
  wire \n_0_adapt_count[0]_i_12 ;
  wire \n_0_adapt_count[0]_i_13 ;
  wire \n_0_adapt_count[0]_i_4 ;
  wire \n_0_adapt_count[0]_i_5 ;
  wire \n_0_adapt_count[0]_i_6 ;
  wire \n_0_adapt_count[0]_i_7 ;
  wire \n_0_adapt_count[0]_i_8 ;
  wire \n_0_adapt_count[0]_i_9 ;
  wire \n_0_adapt_count[12]_i_2 ;
  wire \n_0_adapt_count[12]_i_3 ;
  wire \n_0_adapt_count[12]_i_4 ;
  wire \n_0_adapt_count[12]_i_5 ;
  wire \n_0_adapt_count[16]_i_2 ;
  wire \n_0_adapt_count[16]_i_3 ;
  wire \n_0_adapt_count[16]_i_4 ;
  wire \n_0_adapt_count[16]_i_5 ;
  wire \n_0_adapt_count[20]_i_2 ;
  wire \n_0_adapt_count[20]_i_3 ;
  wire \n_0_adapt_count[20]_i_4 ;
  wire \n_0_adapt_count[20]_i_5 ;
  wire \n_0_adapt_count[24]_i_2 ;
  wire \n_0_adapt_count[24]_i_3 ;
  wire \n_0_adapt_count[24]_i_4 ;
  wire \n_0_adapt_count[24]_i_5 ;
  wire \n_0_adapt_count[28]_i_2 ;
  wire \n_0_adapt_count[28]_i_3 ;
  wire \n_0_adapt_count[28]_i_4 ;
  wire \n_0_adapt_count[28]_i_5 ;
  wire \n_0_adapt_count[4]_i_2 ;
  wire \n_0_adapt_count[4]_i_3 ;
  wire \n_0_adapt_count[4]_i_4 ;
  wire \n_0_adapt_count[4]_i_5 ;
  wire \n_0_adapt_count[8]_i_2 ;
  wire \n_0_adapt_count[8]_i_3 ;
  wire \n_0_adapt_count[8]_i_4 ;
  wire \n_0_adapt_count[8]_i_5 ;
  wire \n_0_adapt_count_reg[0]_i_2 ;
  wire \n_0_adapt_count_reg[12]_i_1 ;
  wire \n_0_adapt_count_reg[16]_i_1 ;
  wire \n_0_adapt_count_reg[20]_i_1 ;
  wire \n_0_adapt_count_reg[24]_i_1 ;
  wire \n_0_adapt_count_reg[4]_i_1 ;
  wire \n_0_adapt_count_reg[8]_i_1 ;
  wire n_0_check_tlock_max_i_1;
  wire n_0_check_tlock_max_reg;
  wire n_0_gtrxreset_i_i_1;
  wire \n_0_init_wait_count[7]_i_1__0 ;
  wire \n_0_init_wait_count[7]_i_3__0 ;
  wire \n_0_init_wait_count[7]_i_4__0 ;
  wire n_0_init_wait_done_i_1__0;
  wire n_0_init_wait_done_reg;
  wire \n_0_mmcm_lock_count[9]_i_2__0 ;
  wire \n_0_mmcm_lock_count[9]_i_4__0 ;
  wire n_0_mmcm_lock_reclocked_i_2__0;
  wire n_0_pmaresetdone_fallingedge_detect_i_1;
  wire n_0_reset_time_out_i_4;
  wire n_0_reset_time_out_reg;
  wire n_0_run_phase_alignment_int_i_1__0;
  wire n_0_run_phase_alignment_int_reg;
  wire n_0_rx_fsm_reset_done_int_reg;
  wire n_0_sync_run_phase_alignment_int_cdc_sync;
  wire n_0_time_out_100us_i_1;
  wire n_0_time_out_100us_i_2;
  wire n_0_time_out_100us_i_3;
  wire n_0_time_out_100us_i_4;
  wire n_0_time_out_100us_reg;
  wire n_0_time_out_1us_i_1;
  wire n_0_time_out_1us_i_2;
  wire n_0_time_out_1us_i_3;
  wire n_0_time_out_1us_i_4;
  wire n_0_time_out_1us_reg;
  wire n_0_time_out_2ms_i_1;
  wire n_0_time_out_2ms_i_2;
  wire n_0_time_out_2ms_reg;
  wire n_0_time_out_adapt_i_1;
  wire n_0_time_out_adapt_reg;
  wire \n_0_time_out_counter[0]_i_1 ;
  wire \n_0_time_out_counter[0]_i_3 ;
  wire \n_0_time_out_counter[0]_i_4 ;
  wire \n_0_time_out_counter[0]_i_5__0 ;
  wire \n_0_time_out_counter[0]_i_6__0 ;
  wire \n_0_time_out_counter[0]_i_7__0 ;
  wire \n_0_time_out_counter[0]_i_8 ;
  wire \n_0_time_out_counter[0]_i_9__0 ;
  wire \n_0_time_out_counter[12]_i_2__0 ;
  wire \n_0_time_out_counter[12]_i_3__0 ;
  wire \n_0_time_out_counter[12]_i_4__0 ;
  wire \n_0_time_out_counter[12]_i_5__0 ;
  wire \n_0_time_out_counter[16]_i_2__0 ;
  wire \n_0_time_out_counter[16]_i_3__0 ;
  wire \n_0_time_out_counter[16]_i_4 ;
  wire \n_0_time_out_counter[4]_i_2__0 ;
  wire \n_0_time_out_counter[4]_i_3__0 ;
  wire \n_0_time_out_counter[4]_i_4__0 ;
  wire \n_0_time_out_counter[4]_i_5__0 ;
  wire \n_0_time_out_counter[8]_i_2__0 ;
  wire \n_0_time_out_counter[8]_i_3__0 ;
  wire \n_0_time_out_counter[8]_i_4__0 ;
  wire \n_0_time_out_counter[8]_i_5__0 ;
  wire \n_0_time_out_counter_reg[0]_i_2__0 ;
  wire \n_0_time_out_counter_reg[12]_i_1__0 ;
  wire \n_0_time_out_counter_reg[4]_i_1__0 ;
  wire \n_0_time_out_counter_reg[8]_i_1__0 ;
  wire n_0_time_out_wait_bypass_reg;
  wire n_0_time_tlock_max_i_1;
  wire n_0_time_tlock_max_i_2;
  wire n_0_time_tlock_max_i_3;
  wire n_0_time_tlock_max_i_4;
  wire n_0_time_tlock_max_i_5;
  wire n_0_time_tlock_max_i_6;
  wire n_0_time_tlock_max_i_7;
  wire \n_0_wait_bypass_count[0]_i_4__0 ;
  wire \n_0_wait_bypass_count[0]_i_5__0 ;
  wire \n_0_wait_bypass_count[0]_i_6__0 ;
  wire \n_0_wait_bypass_count[0]_i_7__0 ;
  wire \n_0_wait_bypass_count[0]_i_8__0 ;
  wire \n_0_wait_bypass_count[0]_i_9 ;
  wire \n_0_wait_bypass_count[12]_i_2__0 ;
  wire \n_0_wait_bypass_count[4]_i_2__0 ;
  wire \n_0_wait_bypass_count[4]_i_3__0 ;
  wire \n_0_wait_bypass_count[4]_i_4__0 ;
  wire \n_0_wait_bypass_count[4]_i_5__0 ;
  wire \n_0_wait_bypass_count[8]_i_2__0 ;
  wire \n_0_wait_bypass_count[8]_i_3__0 ;
  wire \n_0_wait_bypass_count[8]_i_4__0 ;
  wire \n_0_wait_bypass_count[8]_i_5__0 ;
  wire \n_0_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_0_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_0_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_0_wait_time_cnt[0]_i_1__0 ;
  wire \n_0_wait_time_cnt[0]_i_2__0 ;
  wire \n_0_wait_time_cnt[0]_i_4__0 ;
  wire \n_0_wait_time_cnt[0]_i_5__0 ;
  wire \n_0_wait_time_cnt[0]_i_6__0 ;
  wire \n_0_wait_time_cnt[0]_i_7__0 ;
  wire \n_0_wait_time_cnt[0]_i_8 ;
  wire \n_0_wait_time_cnt[0]_i_9 ;
  wire \n_0_wait_time_cnt[12]_i_2__0 ;
  wire \n_0_wait_time_cnt[12]_i_3__0 ;
  wire \n_0_wait_time_cnt[12]_i_4__0 ;
  wire \n_0_wait_time_cnt[12]_i_5__0 ;
  wire \n_0_wait_time_cnt[4]_i_2__0 ;
  wire \n_0_wait_time_cnt[4]_i_3__0 ;
  wire \n_0_wait_time_cnt[4]_i_4__0 ;
  wire \n_0_wait_time_cnt[4]_i_5__0 ;
  wire \n_0_wait_time_cnt[8]_i_2__0 ;
  wire \n_0_wait_time_cnt[8]_i_3__0 ;
  wire \n_0_wait_time_cnt[8]_i_4__0 ;
  wire \n_0_wait_time_cnt[8]_i_5__0 ;
  wire \n_0_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_0_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_0_wait_time_cnt_reg[8]_i_1__0 ;
  wire n_19_sync_RXRESETDONE_cdc_sync;
  wire n_19_sync_mmcm_lock_reclocked_cdc_sync;
  wire n_19_sync_rx_fsm_reset_done_int_cdc_sync;
  wire \n_1_adapt_count_reg[0]_i_2 ;
  wire \n_1_adapt_count_reg[12]_i_1 ;
  wire \n_1_adapt_count_reg[16]_i_1 ;
  wire \n_1_adapt_count_reg[20]_i_1 ;
  wire \n_1_adapt_count_reg[24]_i_1 ;
  wire \n_1_adapt_count_reg[28]_i_1 ;
  wire \n_1_adapt_count_reg[4]_i_1 ;
  wire \n_1_adapt_count_reg[8]_i_1 ;
  wire \n_1_time_out_counter_reg[0]_i_2__0 ;
  wire \n_1_time_out_counter_reg[12]_i_1__0 ;
  wire \n_1_time_out_counter_reg[4]_i_1__0 ;
  wire \n_1_time_out_counter_reg[8]_i_1__0 ;
  wire \n_1_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_1_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_1_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_1_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_1_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_1_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_1_wait_time_cnt_reg[8]_i_1__0 ;
  wire n_20_sync_RXRESETDONE_cdc_sync;
  wire n_20_sync_cplllock_cdc_sync;
  wire n_20_sync_data_valid_cdc_sync;
  wire n_20_sync_mmcm_lock_reclocked_cdc_sync;
  wire n_20_sync_run_phase_alignment_int_cdc_sync;
  wire n_20_sync_rx_fsm_reset_done_int_cdc_sync;
  wire n_21_sync_data_valid_cdc_sync;
  wire n_22_sync_data_valid_cdc_sync;
  wire n_23_sync_data_valid_cdc_sync;
  wire n_24_sync_data_valid_cdc_sync;
  wire n_25_sync_data_valid_cdc_sync;
  wire \n_2_adapt_count_reg[0]_i_2 ;
  wire \n_2_adapt_count_reg[12]_i_1 ;
  wire \n_2_adapt_count_reg[16]_i_1 ;
  wire \n_2_adapt_count_reg[20]_i_1 ;
  wire \n_2_adapt_count_reg[24]_i_1 ;
  wire \n_2_adapt_count_reg[28]_i_1 ;
  wire \n_2_adapt_count_reg[4]_i_1 ;
  wire \n_2_adapt_count_reg[8]_i_1 ;
  wire \n_2_time_out_counter_reg[0]_i_2__0 ;
  wire \n_2_time_out_counter_reg[12]_i_1__0 ;
  wire \n_2_time_out_counter_reg[16]_i_1__0 ;
  wire \n_2_time_out_counter_reg[4]_i_1__0 ;
  wire \n_2_time_out_counter_reg[8]_i_1__0 ;
  wire \n_2_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_2_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_2_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_2_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_2_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_2_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_2_wait_time_cnt_reg[8]_i_1__0 ;
  wire \n_3_adapt_count_reg[0]_i_2 ;
  wire \n_3_adapt_count_reg[12]_i_1 ;
  wire \n_3_adapt_count_reg[16]_i_1 ;
  wire \n_3_adapt_count_reg[20]_i_1 ;
  wire \n_3_adapt_count_reg[24]_i_1 ;
  wire \n_3_adapt_count_reg[28]_i_1 ;
  wire \n_3_adapt_count_reg[4]_i_1 ;
  wire \n_3_adapt_count_reg[8]_i_1 ;
  wire \n_3_time_out_counter_reg[0]_i_2__0 ;
  wire \n_3_time_out_counter_reg[12]_i_1__0 ;
  wire \n_3_time_out_counter_reg[16]_i_1__0 ;
  wire \n_3_time_out_counter_reg[4]_i_1__0 ;
  wire \n_3_time_out_counter_reg[8]_i_1__0 ;
  wire \n_3_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_3_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_3_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_3_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_3_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_3_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_3_wait_time_cnt_reg[8]_i_1__0 ;
  wire \n_4_adapt_count_reg[0]_i_2 ;
  wire \n_4_adapt_count_reg[12]_i_1 ;
  wire \n_4_adapt_count_reg[16]_i_1 ;
  wire \n_4_adapt_count_reg[20]_i_1 ;
  wire \n_4_adapt_count_reg[24]_i_1 ;
  wire \n_4_adapt_count_reg[28]_i_1 ;
  wire \n_4_adapt_count_reg[4]_i_1 ;
  wire \n_4_adapt_count_reg[8]_i_1 ;
  wire \n_4_time_out_counter_reg[0]_i_2__0 ;
  wire \n_4_time_out_counter_reg[12]_i_1__0 ;
  wire \n_4_time_out_counter_reg[4]_i_1__0 ;
  wire \n_4_time_out_counter_reg[8]_i_1__0 ;
  wire \n_4_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_4_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_4_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_4_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_4_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_4_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_4_wait_time_cnt_reg[8]_i_1__0 ;
  wire \n_5_adapt_count_reg[0]_i_2 ;
  wire \n_5_adapt_count_reg[12]_i_1 ;
  wire \n_5_adapt_count_reg[16]_i_1 ;
  wire \n_5_adapt_count_reg[20]_i_1 ;
  wire \n_5_adapt_count_reg[24]_i_1 ;
  wire \n_5_adapt_count_reg[28]_i_1 ;
  wire \n_5_adapt_count_reg[4]_i_1 ;
  wire \n_5_adapt_count_reg[8]_i_1 ;
  wire \n_5_time_out_counter_reg[0]_i_2__0 ;
  wire \n_5_time_out_counter_reg[12]_i_1__0 ;
  wire \n_5_time_out_counter_reg[16]_i_1__0 ;
  wire \n_5_time_out_counter_reg[4]_i_1__0 ;
  wire \n_5_time_out_counter_reg[8]_i_1__0 ;
  wire \n_5_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_5_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_5_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_5_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_5_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_5_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_5_wait_time_cnt_reg[8]_i_1__0 ;
  wire \n_6_adapt_count_reg[0]_i_2 ;
  wire \n_6_adapt_count_reg[12]_i_1 ;
  wire \n_6_adapt_count_reg[16]_i_1 ;
  wire \n_6_adapt_count_reg[20]_i_1 ;
  wire \n_6_adapt_count_reg[24]_i_1 ;
  wire \n_6_adapt_count_reg[28]_i_1 ;
  wire \n_6_adapt_count_reg[4]_i_1 ;
  wire \n_6_adapt_count_reg[8]_i_1 ;
  wire \n_6_time_out_counter_reg[0]_i_2__0 ;
  wire \n_6_time_out_counter_reg[12]_i_1__0 ;
  wire \n_6_time_out_counter_reg[16]_i_1__0 ;
  wire \n_6_time_out_counter_reg[4]_i_1__0 ;
  wire \n_6_time_out_counter_reg[8]_i_1__0 ;
  wire \n_6_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_6_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_6_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_6_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_6_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_6_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_6_wait_time_cnt_reg[8]_i_1__0 ;
  wire \n_7_adapt_count_reg[0]_i_2 ;
  wire \n_7_adapt_count_reg[12]_i_1 ;
  wire \n_7_adapt_count_reg[16]_i_1 ;
  wire \n_7_adapt_count_reg[20]_i_1 ;
  wire \n_7_adapt_count_reg[24]_i_1 ;
  wire \n_7_adapt_count_reg[28]_i_1 ;
  wire \n_7_adapt_count_reg[4]_i_1 ;
  wire \n_7_adapt_count_reg[8]_i_1 ;
  wire \n_7_time_out_counter_reg[0]_i_2__0 ;
  wire \n_7_time_out_counter_reg[12]_i_1__0 ;
  wire \n_7_time_out_counter_reg[16]_i_1__0 ;
  wire \n_7_time_out_counter_reg[4]_i_1__0 ;
  wire \n_7_time_out_counter_reg[8]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_7_wait_bypass_count_reg[12]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_7_wait_time_cnt_reg[0]_i_3__0 ;
  wire \n_7_wait_time_cnt_reg[12]_i_1__0 ;
  wire \n_7_wait_time_cnt_reg[4]_i_1__0 ;
  wire \n_7_wait_time_cnt_reg[8]_i_1__0 ;
  wire [7:0]p_0_in__1;
  wire [9:0]p_0_in__2;
  wire pmaresetdone_fallingedge_detect;
  wire recclk_mon_count_reset;
(* RTL_KEEP = "yes" *)   wire [3:0]rx_state;
  wire rx_state16_out;
  wire rxfsm_rxresetdone_r;
  wire rxpmaresetdone_i;
  wire rxpmaresetdone_i0;
  wire rxpmaresetdone_rx_s;
  wire rxpmaresetdone_s;
  wire rxpmaresetdone_ss;
  wire s_out_d1_cdc_to_105;
  wire s_out_d1_cdc_to_112;
  wire s_out_d1_cdc_to_119;
  wire s_out_d1_cdc_to_126;
  wire s_out_d1_cdc_to_133;
  wire s_out_d1_cdc_to_140;
  wire s_out_d1_cdc_to_147;
  wire s_out_d1_cdc_to_154;
  wire s_out_d1_cdc_to_161;
  wire s_out_d1_cdc_to_168;
  wire s_out_d1_cdc_to_175;
  wire s_out_d1_cdc_to_84;
  wire s_out_d1_cdc_to_91;
  wire s_out_d1_cdc_to_98;
  wire s_out_d2_106;
  wire s_out_d2_113;
  wire s_out_d2_120;
  wire s_out_d2_127;
  wire s_out_d2_134;
  wire s_out_d2_141;
  wire s_out_d2_148;
  wire s_out_d2_155;
  wire s_out_d2_162;
  wire s_out_d2_169;
  wire s_out_d2_176;
  wire s_out_d2_85;
  wire s_out_d2_92;
  wire s_out_d2_99;
  wire s_out_d3_100;
  wire s_out_d3_107;
  wire s_out_d3_114;
  wire s_out_d3_121;
  wire s_out_d3_128;
  wire s_out_d3_135;
  wire s_out_d3_142;
  wire s_out_d3_149;
  wire s_out_d3_156;
  wire s_out_d3_163;
  wire s_out_d3_170;
  wire s_out_d3_177;
  wire s_out_d3_86;
  wire s_out_d3_93;
  wire s_out_d4_101;
  wire s_out_d4_108;
  wire s_out_d4_115;
  wire s_out_d4_122;
  wire s_out_d4_129;
  wire s_out_d4_136;
  wire s_out_d4_143;
  wire s_out_d4_150;
  wire s_out_d4_157;
  wire s_out_d4_164;
  wire s_out_d4_171;
  wire s_out_d4_178;
  wire s_out_d4_87;
  wire s_out_d4_94;
  wire s_out_d5_102;
  wire s_out_d5_109;
  wire s_out_d5_116;
  wire s_out_d5_123;
  wire s_out_d5_130;
  wire s_out_d5_137;
  wire s_out_d5_144;
  wire s_out_d5_151;
  wire s_out_d5_158;
  wire s_out_d5_165;
  wire s_out_d5_172;
  wire s_out_d5_179;
  wire s_out_d5_88;
  wire s_out_d5_95;
  wire s_out_d6_103;
  wire s_out_d6_110;
  wire s_out_d6_117;
  wire s_out_d6_124;
  wire s_out_d6_131;
  wire s_out_d6_138;
  wire s_out_d6_145;
  wire s_out_d6_152;
  wire s_out_d6_159;
  wire s_out_d6_166;
  wire s_out_d6_173;
  wire s_out_d6_180;
  wire s_out_d6_89;
  wire s_out_d6_96;
  wire s_out_d7_104;
  wire s_out_d7_111;
  wire s_out_d7_118;
  wire s_out_d7_125;
  wire s_out_d7_132;
  wire s_out_d7_139;
  wire s_out_d7_146;
  wire s_out_d7_153;
  wire s_out_d7_160;
  wire s_out_d7_167;
  wire s_out_d7_174;
  wire s_out_d7_181;
  wire s_out_d7_90;
  wire s_out_d7_97;
  wire time_out_adapt;
  wire [18:0]time_out_counter_reg;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire txpmaresetdone_i;
  wire user_clk;
  wire [12:0]wait_bypass_count_reg;
  wire [15:0]wait_time_cnt_reg;
  wire [3:3]\NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;

LUT6 #(
    .INIT(64'h08B80888FFFFFFFF)) 
     \FSM_sequential_rx_state[0]_i_2 
       (.I0(n_0_time_out_2ms_reg),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(n_0_reset_time_out_reg),
        .I4(time_tlock_max),
        .I5(rx_state[0]),
        .O(\n_0_FSM_sequential_rx_state[0]_i_2 ));
LUT6 #(
    .INIT(64'h00000000262226AA)) 
     \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state[2]),
        .I1(rx_state[0]),
        .I2(n_0_time_out_2ms_reg),
        .I3(rx_state[1]),
        .I4(rx_state16_out),
        .I5(rx_state[3]),
        .O(\n_0_FSM_sequential_rx_state[2]_i_1 ));
LUT2 #(
    .INIT(4'h2)) 
     \FSM_sequential_rx_state[2]_i_2 
       (.I0(time_tlock_max),
        .I1(n_0_reset_time_out_reg),
        .O(rx_state16_out));
LUT4 #(
    .INIT(16'h0001)) 
     \FSM_sequential_rx_state[3]_i_11 
       (.I0(wait_time_cnt_reg[7]),
        .I1(wait_time_cnt_reg[4]),
        .I2(wait_time_cnt_reg[9]),
        .I3(wait_time_cnt_reg[10]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_11 ));
LUT5 #(
    .INIT(32'h80880000)) 
     \FSM_sequential_rx_state[3]_i_5 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(n_0_reset_time_out_reg),
        .I3(n_0_time_out_2ms_reg),
        .I4(rx_state[0]),
        .O(\n_0_FSM_sequential_rx_state[3]_i_5 ));
LUT5 #(
    .INIT(32'h80FF8000)) 
     \FSM_sequential_rx_state[3]_i_8 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_11 ),
        .I1(\n_0_wait_time_cnt[0]_i_4__0 ),
        .I2(\n_0_wait_time_cnt[0]_i_5__0 ),
        .I3(rx_state[1]),
        .I4(I1),
        .O(\n_0_FSM_sequential_rx_state[3]_i_8 ));
LUT5 #(
    .INIT(32'h80FF8000)) 
     \FSM_sequential_rx_state[3]_i_9 
       (.I0(\n_0_FSM_sequential_rx_state[3]_i_11 ),
        .I1(\n_0_wait_time_cnt[0]_i_4__0 ),
        .I2(\n_0_wait_time_cnt[0]_i_5__0 ),
        .I3(rx_state[1]),
        .I4(n_0_init_wait_done_reg),
        .O(\n_0_FSM_sequential_rx_state[3]_i_9 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[0] 
       (.C(init_clk_in),
        .CE(n_19_sync_RXRESETDONE_cdc_sync),
        .D(n_24_sync_data_valid_cdc_sync),
        .Q(rx_state[0]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[1] 
       (.C(init_clk_in),
        .CE(n_19_sync_RXRESETDONE_cdc_sync),
        .D(n_23_sync_data_valid_cdc_sync),
        .Q(rx_state[1]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[2] 
       (.C(init_clk_in),
        .CE(n_19_sync_RXRESETDONE_cdc_sync),
        .D(\n_0_FSM_sequential_rx_state[2]_i_1 ),
        .Q(rx_state[2]),
        .R(AR));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_rx_state_reg[3] 
       (.C(init_clk_in),
        .CE(n_19_sync_RXRESETDONE_cdc_sync),
        .D(n_22_sync_data_valid_cdc_sync),
        .Q(rx_state[3]),
        .R(AR));
LUT6 #(
    .INIT(64'hFFFFFFFF00200000)) 
     RXDFEAGCHOLD_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(n_0_time_out_adapt_reg),
        .I5(gt_rxdfelfhold_i),
        .O(n_0_RXDFEAGCHOLD_i_1));
FDRE #(
    .INIT(1'b0)) 
     RXDFEAGCHOLD_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_RXDFEAGCHOLD_i_1),
        .Q(gt_rxdfelfhold_i),
        .R(AR));
LUT6 #(
    .INIT(64'hFFFFFFF500008000)) 
     RXUSERRDY_i_1
       (.I0(rx_state[0]),
        .I1(gt_txuserrdy_i),
        .I2(rx_state[2]),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .I5(gt_rxuserrdy_i),
        .O(n_0_RXUSERRDY_i_1));
FDRE #(
    .INIT(1'b0)) 
     RXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_RXUSERRDY_i_1),
        .Q(gt_rxuserrdy_i),
        .R(AR));
LUT1 #(
    .INIT(2'h1)) 
     \adapt_count[0]_i_1 
       (.I0(time_out_adapt),
        .O(\n_0_adapt_count[0]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000008000)) 
     \adapt_count[0]_i_10 
       (.I0(adapt_count_reg[3]),
        .I1(adapt_count_reg[12]),
        .I2(adapt_count_reg[5]),
        .I3(adapt_count_reg[1]),
        .I4(adapt_count_reg[11]),
        .I5(adapt_count_reg[29]),
        .O(\n_0_adapt_count[0]_i_10 ));
LUT6 #(
    .INIT(64'h0000000000008000)) 
     \adapt_count[0]_i_11 
       (.I0(adapt_count_reg[18]),
        .I1(adapt_count_reg[17]),
        .I2(adapt_count_reg[4]),
        .I3(adapt_count_reg[2]),
        .I4(adapt_count_reg[23]),
        .I5(adapt_count_reg[26]),
        .O(\n_0_adapt_count[0]_i_11 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \adapt_count[0]_i_12 
       (.I0(adapt_count_reg[27]),
        .I1(adapt_count_reg[25]),
        .I2(adapt_count_reg[8]),
        .I3(adapt_count_reg[13]),
        .I4(adapt_count_reg[9]),
        .I5(adapt_count_reg[24]),
        .O(\n_0_adapt_count[0]_i_12 ));
LUT6 #(
    .INIT(64'h0000000000080000)) 
     \adapt_count[0]_i_13 
       (.I0(adapt_count_reg[20]),
        .I1(adapt_count_reg[15]),
        .I2(adapt_count_reg[6]),
        .I3(adapt_count_reg[22]),
        .I4(adapt_count_reg[0]),
        .I5(adapt_count_reg[14]),
        .O(\n_0_adapt_count[0]_i_13 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \adapt_count[0]_i_3 
       (.I0(\n_0_adapt_count[0]_i_8 ),
        .I1(\n_0_adapt_count[0]_i_9 ),
        .I2(\n_0_adapt_count[0]_i_10 ),
        .I3(\n_0_adapt_count[0]_i_11 ),
        .I4(\n_0_adapt_count[0]_i_12 ),
        .I5(\n_0_adapt_count[0]_i_13 ),
        .O(time_out_adapt));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[0]_i_4 
       (.I0(adapt_count_reg[3]),
        .O(\n_0_adapt_count[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[0]_i_5 
       (.I0(adapt_count_reg[2]),
        .O(\n_0_adapt_count[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[0]_i_6 
       (.I0(adapt_count_reg[1]),
        .O(\n_0_adapt_count[0]_i_6 ));
LUT1 #(
    .INIT(2'h1)) 
     \adapt_count[0]_i_7 
       (.I0(adapt_count_reg[0]),
        .O(\n_0_adapt_count[0]_i_7 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \adapt_count[0]_i_8 
       (.I0(adapt_count_reg[19]),
        .I1(adapt_count_reg[16]),
        .I2(adapt_count_reg[21]),
        .I3(adapt_count_reg[30]),
        .I4(adapt_count_reg[7]),
        .I5(adapt_count_reg[28]),
        .O(\n_0_adapt_count[0]_i_8 ));
LUT2 #(
    .INIT(4'h2)) 
     \adapt_count[0]_i_9 
       (.I0(adapt_count_reg[10]),
        .I1(adapt_count_reg[31]),
        .O(\n_0_adapt_count[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[12]_i_2 
       (.I0(adapt_count_reg[15]),
        .O(\n_0_adapt_count[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[12]_i_3 
       (.I0(adapt_count_reg[14]),
        .O(\n_0_adapt_count[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[12]_i_4 
       (.I0(adapt_count_reg[13]),
        .O(\n_0_adapt_count[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[12]_i_5 
       (.I0(adapt_count_reg[12]),
        .O(\n_0_adapt_count[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[16]_i_2 
       (.I0(adapt_count_reg[19]),
        .O(\n_0_adapt_count[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[16]_i_3 
       (.I0(adapt_count_reg[18]),
        .O(\n_0_adapt_count[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[16]_i_4 
       (.I0(adapt_count_reg[17]),
        .O(\n_0_adapt_count[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[16]_i_5 
       (.I0(adapt_count_reg[16]),
        .O(\n_0_adapt_count[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[20]_i_2 
       (.I0(adapt_count_reg[23]),
        .O(\n_0_adapt_count[20]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[20]_i_3 
       (.I0(adapt_count_reg[22]),
        .O(\n_0_adapt_count[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[20]_i_4 
       (.I0(adapt_count_reg[21]),
        .O(\n_0_adapt_count[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[20]_i_5 
       (.I0(adapt_count_reg[20]),
        .O(\n_0_adapt_count[20]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[24]_i_2 
       (.I0(adapt_count_reg[27]),
        .O(\n_0_adapt_count[24]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[24]_i_3 
       (.I0(adapt_count_reg[26]),
        .O(\n_0_adapt_count[24]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[24]_i_4 
       (.I0(adapt_count_reg[25]),
        .O(\n_0_adapt_count[24]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[24]_i_5 
       (.I0(adapt_count_reg[24]),
        .O(\n_0_adapt_count[24]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[28]_i_2 
       (.I0(adapt_count_reg[31]),
        .O(\n_0_adapt_count[28]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[28]_i_3 
       (.I0(adapt_count_reg[30]),
        .O(\n_0_adapt_count[28]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[28]_i_4 
       (.I0(adapt_count_reg[29]),
        .O(\n_0_adapt_count[28]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[28]_i_5 
       (.I0(adapt_count_reg[28]),
        .O(\n_0_adapt_count[28]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[4]_i_2 
       (.I0(adapt_count_reg[7]),
        .O(\n_0_adapt_count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[4]_i_3 
       (.I0(adapt_count_reg[6]),
        .O(\n_0_adapt_count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[4]_i_4 
       (.I0(adapt_count_reg[5]),
        .O(\n_0_adapt_count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[4]_i_5 
       (.I0(adapt_count_reg[4]),
        .O(\n_0_adapt_count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[8]_i_2 
       (.I0(adapt_count_reg[11]),
        .O(\n_0_adapt_count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[8]_i_3 
       (.I0(adapt_count_reg[10]),
        .O(\n_0_adapt_count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[8]_i_4 
       (.I0(adapt_count_reg[9]),
        .O(\n_0_adapt_count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[8]_i_5 
       (.I0(adapt_count_reg[8]),
        .O(\n_0_adapt_count[8]_i_5 ));
FDRE \adapt_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[0]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_adapt_count_reg[0]_i_2 ,\n_1_adapt_count_reg[0]_i_2 ,\n_2_adapt_count_reg[0]_i_2 ,\n_3_adapt_count_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_adapt_count_reg[0]_i_2 ,\n_5_adapt_count_reg[0]_i_2 ,\n_6_adapt_count_reg[0]_i_2 ,\n_7_adapt_count_reg[0]_i_2 }),
        .S({\n_0_adapt_count[0]_i_4 ,\n_0_adapt_count[0]_i_5 ,\n_0_adapt_count[0]_i_6 ,\n_0_adapt_count[0]_i_7 }));
FDRE \adapt_count_reg[10] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[10]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[11] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[11]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[12] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[12]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[12]_i_1 
       (.CI(\n_0_adapt_count_reg[8]_i_1 ),
        .CO({\n_0_adapt_count_reg[12]_i_1 ,\n_1_adapt_count_reg[12]_i_1 ,\n_2_adapt_count_reg[12]_i_1 ,\n_3_adapt_count_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[12]_i_1 ,\n_5_adapt_count_reg[12]_i_1 ,\n_6_adapt_count_reg[12]_i_1 ,\n_7_adapt_count_reg[12]_i_1 }),
        .S({\n_0_adapt_count[12]_i_2 ,\n_0_adapt_count[12]_i_3 ,\n_0_adapt_count[12]_i_4 ,\n_0_adapt_count[12]_i_5 }));
FDRE \adapt_count_reg[13] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[13]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[14] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[14]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[15] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[15]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[16] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[16]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[16]_i_1 
       (.CI(\n_0_adapt_count_reg[12]_i_1 ),
        .CO({\n_0_adapt_count_reg[16]_i_1 ,\n_1_adapt_count_reg[16]_i_1 ,\n_2_adapt_count_reg[16]_i_1 ,\n_3_adapt_count_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[16]_i_1 ,\n_5_adapt_count_reg[16]_i_1 ,\n_6_adapt_count_reg[16]_i_1 ,\n_7_adapt_count_reg[16]_i_1 }),
        .S({\n_0_adapt_count[16]_i_2 ,\n_0_adapt_count[16]_i_3 ,\n_0_adapt_count[16]_i_4 ,\n_0_adapt_count[16]_i_5 }));
FDRE \adapt_count_reg[17] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[17]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[18] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[18]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[19] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[19]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[1]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[20] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[20]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[20]_i_1 
       (.CI(\n_0_adapt_count_reg[16]_i_1 ),
        .CO({\n_0_adapt_count_reg[20]_i_1 ,\n_1_adapt_count_reg[20]_i_1 ,\n_2_adapt_count_reg[20]_i_1 ,\n_3_adapt_count_reg[20]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[20]_i_1 ,\n_5_adapt_count_reg[20]_i_1 ,\n_6_adapt_count_reg[20]_i_1 ,\n_7_adapt_count_reg[20]_i_1 }),
        .S({\n_0_adapt_count[20]_i_2 ,\n_0_adapt_count[20]_i_3 ,\n_0_adapt_count[20]_i_4 ,\n_0_adapt_count[20]_i_5 }));
FDRE \adapt_count_reg[21] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[21]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[22] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[22]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[23] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[23]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[24] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[24]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[24]_i_1 
       (.CI(\n_0_adapt_count_reg[20]_i_1 ),
        .CO({\n_0_adapt_count_reg[24]_i_1 ,\n_1_adapt_count_reg[24]_i_1 ,\n_2_adapt_count_reg[24]_i_1 ,\n_3_adapt_count_reg[24]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[24]_i_1 ,\n_5_adapt_count_reg[24]_i_1 ,\n_6_adapt_count_reg[24]_i_1 ,\n_7_adapt_count_reg[24]_i_1 }),
        .S({\n_0_adapt_count[24]_i_2 ,\n_0_adapt_count[24]_i_3 ,\n_0_adapt_count[24]_i_4 ,\n_0_adapt_count[24]_i_5 }));
FDRE \adapt_count_reg[25] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[25]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[26] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[26]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[27] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[27]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[28] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[28]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[28]_i_1 
       (.CI(\n_0_adapt_count_reg[24]_i_1 ),
        .CO({\NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED [3],\n_1_adapt_count_reg[28]_i_1 ,\n_2_adapt_count_reg[28]_i_1 ,\n_3_adapt_count_reg[28]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[28]_i_1 ,\n_5_adapt_count_reg[28]_i_1 ,\n_6_adapt_count_reg[28]_i_1 ,\n_7_adapt_count_reg[28]_i_1 }),
        .S({\n_0_adapt_count[28]_i_2 ,\n_0_adapt_count[28]_i_3 ,\n_0_adapt_count[28]_i_4 ,\n_0_adapt_count[28]_i_5 }));
FDRE \adapt_count_reg[29] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[29]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[2]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[30] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[30]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[31] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[31]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[3]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[4]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[4]_i_1 
       (.CI(\n_0_adapt_count_reg[0]_i_2 ),
        .CO({\n_0_adapt_count_reg[4]_i_1 ,\n_1_adapt_count_reg[4]_i_1 ,\n_2_adapt_count_reg[4]_i_1 ,\n_3_adapt_count_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[4]_i_1 ,\n_5_adapt_count_reg[4]_i_1 ,\n_6_adapt_count_reg[4]_i_1 ,\n_7_adapt_count_reg[4]_i_1 }),
        .S({\n_0_adapt_count[4]_i_2 ,\n_0_adapt_count[4]_i_3 ,\n_0_adapt_count[4]_i_4 ,\n_0_adapt_count[4]_i_5 }));
FDRE \adapt_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[5]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[6]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[7]),
        .R(recclk_mon_count_reset));
FDRE \adapt_count_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[8]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[8]_i_1 
       (.CI(\n_0_adapt_count_reg[4]_i_1 ),
        .CO({\n_0_adapt_count_reg[8]_i_1 ,\n_1_adapt_count_reg[8]_i_1 ,\n_2_adapt_count_reg[8]_i_1 ,\n_3_adapt_count_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_adapt_count_reg[8]_i_1 ,\n_5_adapt_count_reg[8]_i_1 ,\n_6_adapt_count_reg[8]_i_1 ,\n_7_adapt_count_reg[8]_i_1 }),
        .S({\n_0_adapt_count[8]_i_2 ,\n_0_adapt_count[8]_i_3 ,\n_0_adapt_count[8]_i_4 ,\n_0_adapt_count[8]_i_5 }));
FDRE \adapt_count_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[9]),
        .R(recclk_mon_count_reset));
FDSE #(
    .INIT(1'b0)) 
     adapt_count_reset_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_20_sync_cplllock_cdc_sync),
        .Q(recclk_mon_count_reset),
        .S(AR));
LUT5 #(
    .INIT(32'hFFEF0020)) 
     check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[3]),
        .I4(n_0_check_tlock_max_reg),
        .O(n_0_check_tlock_max_i_1));
FDRE #(
    .INIT(1'b0)) 
     check_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_check_tlock_max_i_1),
        .Q(n_0_check_tlock_max_reg),
        .R(AR));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_8 gtrxreset_cdc_sync
       (.I1(fsm_gt_rx_reset_t),
        .O78(O78),
        .O79(O79),
        .O80(O80),
        .O81(O81),
        .O82(O82),
        .O83(O83),
        .gtrxreset_s(gtrxreset_s),
        .s_out_d1_cdc_to_84(s_out_d1_cdc_to_84),
        .s_out_d2_85(s_out_d2_85),
        .s_out_d3_86(s_out_d3_86),
        .s_out_d4_87(s_out_d4_87),
        .s_out_d5_88(s_out_d5_88),
        .s_out_d6_89(s_out_d6_89),
        .s_out_d7_90(s_out_d7_90),
        .user_clk(user_clk));
LUT5 #(
    .INIT(32'hFFFB0010)) 
     gtrxreset_i_i_1
       (.I0(rx_state[1]),
        .I1(rx_state[2]),
        .I2(rx_state[0]),
        .I3(rx_state[3]),
        .I4(fsm_gt_rx_reset_t),
        .O(n_0_gtrxreset_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     gtrxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_gtrxreset_i_i_1),
        .Q(fsm_gt_rx_reset_t),
        .R(AR));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in__1[0]));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in__1[1]));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in__1[2]));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .O(p_0_in__1[3]));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[3]),
        .I4(init_wait_count_reg__0[4]),
        .O(p_0_in__1[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[3]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in__1[5]));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg__0[6]),
        .I1(\n_0_init_wait_count[7]_i_4__0 ),
        .I2(init_wait_count_reg__0[5]),
        .O(p_0_in__1[6]));
LUT3 #(
    .INIT(8'hF7)) 
     \init_wait_count[7]_i_1__0 
       (.I0(\n_0_init_wait_count[7]_i_3__0 ),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .O(\n_0_init_wait_count[7]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[7]_i_2__0 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\n_0_init_wait_count[7]_i_4__0 ),
        .I3(init_wait_count_reg__0[6]),
        .O(p_0_in__1[7]));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[6]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[5]),
        .I5(init_wait_count_reg__0[7]),
        .O(\n_0_init_wait_count[7]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \init_wait_count[7]_i_4__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[2]),
        .O(\n_0_init_wait_count[7]_i_4__0 ));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[0]),
        .Q(init_wait_count_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[1]),
        .Q(init_wait_count_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[2]),
        .Q(init_wait_count_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[3]),
        .Q(init_wait_count_reg__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[4]),
        .Q(init_wait_count_reg__0[4]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[5]),
        .Q(init_wait_count_reg__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[6]),
        .Q(init_wait_count_reg__0[6]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .CLR(AR),
        .D(p_0_in__1[7]),
        .Q(init_wait_count_reg__0[7]));
LUT4 #(
    .INIT(16'hFF08)) 
     init_wait_done_i_1__0
       (.I0(\n_0_init_wait_count[7]_i_3__0 ),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(n_0_init_wait_done_reg),
        .O(n_0_init_wait_done_i_1__0));
FDCE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(AR),
        .D(n_0_init_wait_done_i_1__0),
        .Q(n_0_init_wait_done_reg));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__2[0]));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__2[1]));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__2[2]));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__2[3]));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__2[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__2[5]));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I2(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__2[6]));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__2[7]));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[8]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(p_0_in__2[8]));
LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
     \mmcm_lock_count[9]_i_2__0 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .I5(mmcm_lock_count_reg__0[9]),
        .O(\n_0_mmcm_lock_count[9]_i_2__0 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[9]_i_3__0 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I4(mmcm_lock_count_reg__0[6]),
        .I5(mmcm_lock_count_reg__0[8]),
        .O(p_0_in__2[9]));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \mmcm_lock_count[9]_i_4__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(\n_0_mmcm_lock_count[9]_i_4__0 ));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[9]),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I3(mmcm_lock_count_reg__0[6]),
        .O(n_0_mmcm_lock_reclocked_i_2__0));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_19_sync_mmcm_lock_reclocked_cdc_sync),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
LUT4 #(
    .INIT(16'h00BA)) 
     pmaresetdone_fallingedge_detect_i_1
       (.I0(pmaresetdone_fallingedge_detect),
        .I1(rxpmaresetdone_s),
        .I2(rxpmaresetdone_ss),
        .I3(fsm_gt_rx_reset_t),
        .O(n_0_pmaresetdone_fallingedge_detect_i_1));
FDRE #(
    .INIT(1'b0)) 
     pmaresetdone_fallingedge_detect_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_pmaresetdone_fallingedge_detect_i_1),
        .Q(pmaresetdone_fallingedge_detect),
        .R(1'b0));
LUT5 #(
    .INIT(32'h55772262)) 
     reset_time_out_i_4
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(I1),
        .I3(rx_state[1]),
        .I4(rx_state[0]),
        .O(n_0_reset_time_out_i_4));
FDSE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_20_sync_data_valid_cdc_sync),
        .Q(n_0_reset_time_out_reg),
        .S(AR));
LUT5 #(
    .INIT(32'hFEFF0002)) 
     run_phase_alignment_int_i_1__0
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(n_0_run_phase_alignment_int_reg),
        .O(n_0_run_phase_alignment_int_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_run_phase_alignment_int_i_1__0),
        .Q(n_0_run_phase_alignment_int_reg),
        .R(AR));
FDRE #(
    .INIT(1'b0)) 
     rx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_21_sync_data_valid_cdc_sync),
        .Q(n_0_rx_fsm_reset_done_int_reg),
        .R(AR));
FDCE #(
    .INIT(1'b0)) 
     rxpmaresetdone_i_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gtrxreset_s),
        .D(rxpmaresetdone_i0),
        .Q(rxpmaresetdone_i));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_9 rxpmaresetdone_rx_cdc_sync
       (.O84(O84),
        .O85(O85),
        .O86(O86),
        .O87(O87),
        .O88(O88),
        .O89(O89),
        .rxpmaresetdone_rx_s(rxpmaresetdone_rx_s),
        .s_out_d1_cdc_to_91(s_out_d1_cdc_to_91),
        .s_out_d2_92(s_out_d2_92),
        .s_out_d3_93(s_out_d3_93),
        .s_out_d4_94(s_out_d4_94),
        .s_out_d5_95(s_out_d5_95),
        .s_out_d6_96(s_out_d6_96),
        .s_out_d7_97(s_out_d7_97),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_10 sync2_pmaresetdone_cdc_sync
       (.O90(O90),
        .O91(O91),
        .O92(O92),
        .O93(O93),
        .O94(O94),
        .O95(O95),
        .init_clk_in(init_clk_in),
        .rxpmaresetdone_i(rxpmaresetdone_i),
        .s_out_d1_cdc_to_98(s_out_d1_cdc_to_98),
        .s_out_d2_99(s_out_d2_99),
        .s_out_d3_100(s_out_d3_100),
        .s_out_d4_101(s_out_d4_101),
        .s_out_d5_102(s_out_d5_102),
        .s_out_d6_103(s_out_d6_103),
        .s_out_d7_104(s_out_d7_104));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_11 sync2_txpmaresetdone_cdc_sync
       (.O100(O100),
        .O101(O101),
        .O96(O96),
        .O97(O97),
        .O98(O98),
        .O99(O99),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_105(s_out_d1_cdc_to_105),
        .s_out_d2_106(s_out_d2_106),
        .s_out_d3_107(s_out_d3_107),
        .s_out_d4_108(s_out_d4_108),
        .s_out_d5_109(s_out_d5_109),
        .s_out_d6_110(s_out_d6_110),
        .s_out_d7_111(s_out_d7_111),
        .txpmaresetdone_i(txpmaresetdone_i));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_12 sync_RXRESETDONE_cdc_sync
       (.E(n_19_sync_RXRESETDONE_cdc_sync),
        .I1(n_25_sync_data_valid_cdc_sync),
        .I2(\n_0_FSM_sequential_rx_state[3]_i_8 ),
        .I3(\n_0_FSM_sequential_rx_state[3]_i_9 ),
        .I4(n_0_time_out_2ms_reg),
        .I5(n_0_reset_time_out_reg),
        .I6(I1),
        .O1(n_20_sync_RXRESETDONE_cdc_sync),
        .O132(O132),
        .O133(O133),
        .O134(O134),
        .O135(O135),
        .O136(O136),
        .O137(O137),
        .cplllock_sync(cplllock_sync),
        .data_valid_sync(data_valid_sync),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .out(rx_state),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .s_out_d1_cdc_to_147(s_out_d1_cdc_to_147),
        .s_out_d2_148(s_out_d2_148),
        .s_out_d3_149(s_out_d3_149),
        .s_out_d4_150(s_out_d4_150),
        .s_out_d5_151(s_out_d5_151),
        .s_out_d6_152(s_out_d6_152),
        .s_out_d7_153(s_out_d7_153),
        .time_tlock_max(time_tlock_max));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_13 sync_cplllock_cdc_sync
       (.O1(n_20_sync_cplllock_cdc_sync),
        .O150(O150),
        .O151(O151),
        .O152(O152),
        .O153(O153),
        .O154(O154),
        .O155(O155),
        .O2(O2),
        .cplllock_sync(cplllock_sync),
        .init_clk_in(init_clk_in),
        .out(rx_state),
        .recclk_mon_count_reset(recclk_mon_count_reset),
        .s_out_d1_cdc_to_168(s_out_d1_cdc_to_168),
        .s_out_d2_169(s_out_d2_169),
        .s_out_d3_170(s_out_d3_170),
        .s_out_d4_171(s_out_d4_171),
        .s_out_d5_172(s_out_d5_172),
        .s_out_d6_173(s_out_d6_173),
        .s_out_d7_174(s_out_d7_174));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_14 sync_data_valid_cdc_sync
       (.D({n_22_sync_data_valid_cdc_sync,n_23_sync_data_valid_cdc_sync,n_24_sync_data_valid_cdc_sync}),
        .I1(n_20_sync_RXRESETDONE_cdc_sync),
        .I2(n_0_reset_time_out_i_4),
        .I3(n_0_reset_time_out_reg),
        .I4(n_0_rx_fsm_reset_done_int_reg),
        .I5(\n_0_FSM_sequential_rx_state[0]_i_2 ),
        .I6(n_0_time_out_100us_reg),
        .I7(\n_0_FSM_sequential_rx_state[3]_i_5 ),
        .I8(n_0_time_out_1us_reg),
        .O1(n_20_sync_data_valid_cdc_sync),
        .O144(O144),
        .O145(O145),
        .O146(O146),
        .O147(O147),
        .O148(O148),
        .O149(O149),
        .O2(n_21_sync_data_valid_cdc_sync),
        .O3(n_25_sync_data_valid_cdc_sync),
        .data_valid_sync(data_valid_sync),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .init_clk_in(init_clk_in),
        .out(rx_state),
        .rx_state16_out(rx_state16_out),
        .s_out_d1_cdc_to_161(s_out_d1_cdc_to_161),
        .s_out_d2_162(s_out_d2_162),
        .s_out_d3_163(s_out_d3_163),
        .s_out_d4_164(s_out_d4_164),
        .s_out_d5_165(s_out_d5_165),
        .s_out_d6_166(s_out_d6_166),
        .s_out_d7_167(s_out_d7_167),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_15 sync_mmcm_lock_reclocked_cdc_sync
       (.I1(n_0_mmcm_lock_reclocked_i_2__0),
        .O1(n_19_sync_mmcm_lock_reclocked_cdc_sync),
        .O138(O138),
        .O139(O139),
        .O140(O140),
        .O141(O141),
        .O142(O142),
        .O143(O143),
        .Q(mmcm_lock_count_reg__0[9:8]),
        .SR(n_20_sync_mmcm_lock_reclocked_cdc_sync),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .s_out_d1_cdc_to_154(s_out_d1_cdc_to_154),
        .s_out_d2_155(s_out_d2_155),
        .s_out_d3_156(s_out_d3_156),
        .s_out_d4_157(s_out_d4_157),
        .s_out_d5_158(s_out_d5_158),
        .s_out_d6_159(s_out_d6_159),
        .s_out_d7_160(s_out_d7_160));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_16 sync_pmaresetdone_cdc_sync
       (.O102(O102),
        .O103(O103),
        .O104(O104),
        .O105(O105),
        .O106(O106),
        .O107(O107),
        .init_clk_in(init_clk_in),
        .rxpmaresetdone_s(rxpmaresetdone_s),
        .rxpmaresetdone_ss(rxpmaresetdone_ss),
        .s_out_d1_cdc_to_112(s_out_d1_cdc_to_112),
        .s_out_d2_113(s_out_d2_113),
        .s_out_d3_114(s_out_d3_114),
        .s_out_d4_115(s_out_d4_115),
        .s_out_d5_116(s_out_d5_116),
        .s_out_d6_117(s_out_d6_117),
        .s_out_d7_118(s_out_d7_118));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_17 sync_pmaresetdone_fallingedge_detect_cdc_sync
       (.O108(O108),
        .O109(O109),
        .O110(O110),
        .O111(O111),
        .O112(O112),
        .O113(O113),
        .pmaresetdone_fallingedge_detect(pmaresetdone_fallingedge_detect),
        .rxpmaresetdone_i0(rxpmaresetdone_i0),
        .rxpmaresetdone_rx_s(rxpmaresetdone_rx_s),
        .s_out_d1_cdc_to_119(s_out_d1_cdc_to_119),
        .s_out_d2_120(s_out_d2_120),
        .s_out_d3_121(s_out_d3_121),
        .s_out_d4_122(s_out_d4_122),
        .s_out_d5_123(s_out_d5_123),
        .s_out_d6_124(s_out_d6_124),
        .s_out_d7_125(s_out_d7_125),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_18 sync_qplllock_cdc_sync
       (.O156(O156),
        .O157(O157),
        .O158(O158),
        .O159(O159),
        .O160(O160),
        .O161(O161),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_175(s_out_d1_cdc_to_175),
        .s_out_d2_176(s_out_d2_176),
        .s_out_d3_177(s_out_d3_177),
        .s_out_d4_178(s_out_d4_178),
        .s_out_d5_179(s_out_d5_179),
        .s_out_d6_180(s_out_d6_180),
        .s_out_d7_181(s_out_d7_181));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_19 sync_run_phase_alignment_int_cdc_sync
       (.I1(n_0_run_phase_alignment_int_reg),
        .O1(n_0_sync_run_phase_alignment_int_cdc_sync),
        .O114(O114),
        .O115(O115),
        .O116(O116),
        .O117(O117),
        .O118(O118),
        .O119(O119),
        .O2(n_20_sync_run_phase_alignment_int_cdc_sync),
        .s_out_d1_cdc_to_126(s_out_d1_cdc_to_126),
        .s_out_d2_127(s_out_d2_127),
        .s_out_d3_128(s_out_d3_128),
        .s_out_d4_129(s_out_d4_129),
        .s_out_d5_130(s_out_d5_130),
        .s_out_d6_131(s_out_d6_131),
        .s_out_d7_132(s_out_d7_132),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_20 sync_rx_fsm_reset_done_int_cdc_sync
       (.I1(n_0_rx_fsm_reset_done_int_reg),
        .I2(\n_0_wait_bypass_count[0]_i_4__0 ),
        .I3(\n_0_wait_bypass_count[0]_i_5__0 ),
        .I4(n_0_time_out_wait_bypass_reg),
        .I5(n_0_sync_run_phase_alignment_int_cdc_sync),
        .O1(n_19_sync_rx_fsm_reset_done_int_cdc_sync),
        .O120(O120),
        .O121(O121),
        .O122(O122),
        .O123(O123),
        .O124(O124),
        .O125(O125),
        .O2(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .s_out_d1_cdc_to_133(s_out_d1_cdc_to_133),
        .s_out_d2_134(s_out_d2_134),
        .s_out_d3_135(s_out_d3_135),
        .s_out_d4_136(s_out_d4_136),
        .s_out_d5_137(s_out_d5_137),
        .s_out_d6_138(s_out_d6_138),
        .s_out_d7_139(s_out_d7_139),
        .user_clk(user_clk),
        .wait_bypass_count_reg(wait_bypass_count_reg[10]));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_21 sync_time_out_wait_bypass_cdc_sync
       (.I1(n_0_time_out_wait_bypass_reg),
        .O126(O126),
        .O127(O127),
        .O128(O128),
        .O129(O129),
        .O130(O130),
        .O131(O131),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_140(s_out_d1_cdc_to_140),
        .s_out_d2_141(s_out_d2_141),
        .s_out_d3_142(s_out_d3_142),
        .s_out_d4_143(s_out_d4_143),
        .s_out_d5_144(s_out_d5_144),
        .s_out_d6_145(s_out_d6_145),
        .s_out_d7_146(s_out_d7_146),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT5 #(
    .INIT(32'hFFFF0800)) 
     time_out_100us_i_1
       (.I0(n_0_time_out_100us_i_2),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[11]),
        .I3(n_0_time_out_100us_i_3),
        .I4(n_0_time_out_100us_reg),
        .O(n_0_time_out_100us_i_1));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     time_out_100us_i_2
       (.I0(n_0_time_out_2ms_i_2),
        .I1(n_0_time_out_1us_i_3),
        .I2(n_0_time_tlock_max_i_6),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[0]),
        .I5(time_out_counter_reg[5]),
        .O(n_0_time_out_100us_i_2));
LUT5 #(
    .INIT(32'h00010000)) 
     time_out_100us_i_3
       (.I0(n_0_time_out_100us_i_4),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[4]),
        .O(n_0_time_out_100us_i_3));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     time_out_100us_i_4
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[16]),
        .O(n_0_time_out_100us_i_4));
FDRE #(
    .INIT(1'b0)) 
     time_out_100us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_100us_i_1),
        .Q(n_0_time_out_100us_reg),
        .R(n_0_reset_time_out_reg));
LUT6 #(
    .INIT(64'hFFFFFFFF04000000)) 
     time_out_1us_i_1
       (.I0(n_0_time_out_1us_i_2),
        .I1(time_out_counter_reg[5]),
        .I2(n_0_time_out_1us_i_3),
        .I3(n_0_time_out_1us_i_4),
        .I4(n_0_time_out_100us_i_3),
        .I5(n_0_time_out_1us_reg),
        .O(n_0_time_out_1us_i_1));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT2 #(
    .INIT(4'hB)) 
     time_out_1us_i_2
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[2]),
        .O(n_0_time_out_1us_i_2));
LUT2 #(
    .INIT(4'hE)) 
     time_out_1us_i_3
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[9]),
        .O(n_0_time_out_1us_i_3));
LUT6 #(
    .INIT(64'h0000000010000000)) 
     time_out_1us_i_4
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[6]),
        .I5(time_out_counter_reg[7]),
        .O(n_0_time_out_1us_i_4));
FDRE #(
    .INIT(1'b0)) 
     time_out_1us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_1us_i_1),
        .Q(n_0_time_out_1us_reg),
        .R(n_0_reset_time_out_reg));
LUT6 #(
    .INIT(64'hFFFFFFFF10000000)) 
     time_out_2ms_i_1
       (.I0(\n_0_time_out_counter[0]_i_3 ),
        .I1(n_0_time_out_2ms_i_2),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[12]),
        .I4(\n_0_time_out_counter[0]_i_4 ),
        .I5(n_0_time_out_2ms_reg),
        .O(n_0_time_out_2ms_i_1));
LUT2 #(
    .INIT(4'h7)) 
     time_out_2ms_i_2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[7]),
        .O(n_0_time_out_2ms_i_2));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_2ms_i_1),
        .Q(n_0_time_out_2ms_reg),
        .R(n_0_reset_time_out_reg));
LUT3 #(
    .INIT(8'h0E)) 
     time_out_adapt_i_1
       (.I0(n_0_time_out_adapt_reg),
        .I1(time_out_adapt),
        .I2(recclk_mon_count_reset),
        .O(n_0_time_out_adapt_i_1));
FDRE time_out_adapt_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_adapt_i_1),
        .Q(n_0_time_out_adapt_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hBFFFFFFFFFFFFFFF)) 
     \time_out_counter[0]_i_1 
       (.I0(\n_0_time_out_counter[0]_i_3 ),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[12]),
        .I5(\n_0_time_out_counter[0]_i_4 ),
        .O(\n_0_time_out_counter[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[5]),
        .O(\n_0_time_out_counter[0]_i_3 ));
LUT6 #(
    .INIT(64'h0000100000000000)) 
     \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[17]),
        .I5(\n_0_time_out_counter[0]_i_9__0 ),
        .O(\n_0_time_out_counter[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_5__0 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_6__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_7__0 
       (.I0(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_7__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_8 
       (.I0(time_out_counter_reg[0]),
        .O(\n_0_time_out_counter[0]_i_8 ));
LUT6 #(
    .INIT(64'h0000000000800000)) 
     \time_out_counter[0]_i_9__0 
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[14]),
        .O(\n_0_time_out_counter[0]_i_9__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_2__0 
       (.I0(time_out_counter_reg[15]),
        .O(\n_0_time_out_counter[12]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_3__0 
       (.I0(time_out_counter_reg[14]),
        .O(\n_0_time_out_counter[12]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_4__0 
       (.I0(time_out_counter_reg[13]),
        .O(\n_0_time_out_counter[12]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_5__0 
       (.I0(time_out_counter_reg[12]),
        .O(\n_0_time_out_counter[12]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_2__0 
       (.I0(time_out_counter_reg[18]),
        .O(\n_0_time_out_counter[16]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_3__0 
       (.I0(time_out_counter_reg[17]),
        .O(\n_0_time_out_counter[16]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_4 
       (.I0(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_2__0 
       (.I0(time_out_counter_reg[7]),
        .O(\n_0_time_out_counter[4]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_3__0 
       (.I0(time_out_counter_reg[6]),
        .O(\n_0_time_out_counter[4]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_4__0 
       (.I0(time_out_counter_reg[5]),
        .O(\n_0_time_out_counter[4]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_5__0 
       (.I0(time_out_counter_reg[4]),
        .O(\n_0_time_out_counter[4]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_2__0 
       (.I0(time_out_counter_reg[11]),
        .O(\n_0_time_out_counter[8]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_3__0 
       (.I0(time_out_counter_reg[10]),
        .O(\n_0_time_out_counter[8]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_4__0 
       (.I0(time_out_counter_reg[9]),
        .O(\n_0_time_out_counter[8]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_5__0 
       (.I0(time_out_counter_reg[8]),
        .O(\n_0_time_out_counter[8]_i_5__0 ));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[0]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\n_0_time_out_counter_reg[0]_i_2__0 ,\n_1_time_out_counter_reg[0]_i_2__0 ,\n_2_time_out_counter_reg[0]_i_2__0 ,\n_3_time_out_counter_reg[0]_i_2__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_time_out_counter_reg[0]_i_2__0 ,\n_5_time_out_counter_reg[0]_i_2__0 ,\n_6_time_out_counter_reg[0]_i_2__0 ,\n_7_time_out_counter_reg[0]_i_2__0 }),
        .S({\n_0_time_out_counter[0]_i_5__0 ,\n_0_time_out_counter[0]_i_6__0 ,\n_0_time_out_counter[0]_i_7__0 ,\n_0_time_out_counter[0]_i_8 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[10]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[11]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[12]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[8]_i_1__0 ),
        .CO({\n_0_time_out_counter_reg[12]_i_1__0 ,\n_1_time_out_counter_reg[12]_i_1__0 ,\n_2_time_out_counter_reg[12]_i_1__0 ,\n_3_time_out_counter_reg[12]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[12]_i_1__0 ,\n_5_time_out_counter_reg[12]_i_1__0 ,\n_6_time_out_counter_reg[12]_i_1__0 ,\n_7_time_out_counter_reg[12]_i_1__0 }),
        .S({\n_0_time_out_counter[12]_i_2__0 ,\n_0_time_out_counter[12]_i_3__0 ,\n_0_time_out_counter[12]_i_4__0 ,\n_0_time_out_counter[12]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[13]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[14]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[15]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[16]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[12]_i_1__0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:2],\n_2_time_out_counter_reg[16]_i_1__0 ,\n_3_time_out_counter_reg[16]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3],\n_5_time_out_counter_reg[16]_i_1__0 ,\n_6_time_out_counter_reg[16]_i_1__0 ,\n_7_time_out_counter_reg[16]_i_1__0 }),
        .S({1'b0,\n_0_time_out_counter[16]_i_2__0 ,\n_0_time_out_counter[16]_i_3__0 ,\n_0_time_out_counter[16]_i_4 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[17]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[18] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[18]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[1]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[2]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[3]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[4]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[0]_i_2__0 ),
        .CO({\n_0_time_out_counter_reg[4]_i_1__0 ,\n_1_time_out_counter_reg[4]_i_1__0 ,\n_2_time_out_counter_reg[4]_i_1__0 ,\n_3_time_out_counter_reg[4]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[4]_i_1__0 ,\n_5_time_out_counter_reg[4]_i_1__0 ,\n_6_time_out_counter_reg[4]_i_1__0 ,\n_7_time_out_counter_reg[4]_i_1__0 }),
        .S({\n_0_time_out_counter[4]_i_2__0 ,\n_0_time_out_counter[4]_i_3__0 ,\n_0_time_out_counter[4]_i_4__0 ,\n_0_time_out_counter[4]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[5]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[6]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[7]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[8]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\n_0_time_out_counter_reg[4]_i_1__0 ),
        .CO({\n_0_time_out_counter_reg[8]_i_1__0 ,\n_1_time_out_counter_reg[8]_i_1__0 ,\n_2_time_out_counter_reg[8]_i_1__0 ,\n_3_time_out_counter_reg[8]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[8]_i_1__0 ,\n_5_time_out_counter_reg[8]_i_1__0 ,\n_6_time_out_counter_reg[8]_i_1__0 ,\n_7_time_out_counter_reg[8]_i_1__0 }),
        .S({\n_0_time_out_counter[8]_i_2__0 ,\n_0_time_out_counter[8]_i_3__0 ,\n_0_time_out_counter[8]_i_4__0 ,\n_0_time_out_counter[8]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[9]),
        .R(n_0_reset_time_out_reg));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_19_sync_rx_fsm_reset_done_int_cdc_sync),
        .Q(n_0_time_out_wait_bypass_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFF000E0000)) 
     time_tlock_max_i_1
       (.I0(time_out_counter_reg[2]),
        .I1(n_0_time_tlock_max_i_2),
        .I2(n_0_time_tlock_max_i_3),
        .I3(n_0_time_tlock_max_i_4),
        .I4(n_0_check_tlock_max_reg),
        .I5(time_tlock_max),
        .O(n_0_time_tlock_max_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     time_tlock_max_i_2
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[8]),
        .I4(n_0_time_out_1us_i_3),
        .I5(n_0_time_tlock_max_i_5),
        .O(n_0_time_tlock_max_i_2));
LUT6 #(
    .INIT(64'h00000000FFFF0010)) 
     time_tlock_max_i_3
       (.I0(time_out_counter_reg[8]),
        .I1(n_0_time_out_1us_i_3),
        .I2(n_0_time_out_2ms_i_2),
        .I3(time_out_counter_reg[11]),
        .I4(n_0_time_tlock_max_i_6),
        .I5(n_0_time_tlock_max_i_5),
        .O(n_0_time_tlock_max_i_3));
LUT6 #(
    .INIT(64'h00000001000000FF)) 
     time_tlock_max_i_4
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[1]),
        .I3(n_0_time_tlock_max_i_5),
        .I4(n_0_time_tlock_max_i_7),
        .I5(time_out_counter_reg[4]),
        .O(n_0_time_tlock_max_i_4));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     time_tlock_max_i_5
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[14]),
        .I4(time_out_counter_reg[15]),
        .O(n_0_time_tlock_max_i_5));
LUT2 #(
    .INIT(4'h7)) 
     time_tlock_max_i_6
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[12]),
        .O(n_0_time_tlock_max_i_6));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     time_tlock_max_i_7
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[9]),
        .O(n_0_time_tlock_max_i_7));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_tlock_max_i_1),
        .Q(time_tlock_max),
        .R(n_0_reset_time_out_reg));
FDCE #(
    .INIT(1'b0)) 
     txpmaresetdone_i_reg
       (.C(user_clk),
        .CE(1'b1),
        .CLR(gtrxreset_s),
        .D(1'b1),
        .Q(txpmaresetdone_i));
LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
     \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[6]),
        .I3(wait_bypass_count_reg[0]),
        .I4(wait_bypass_count_reg[8]),
        .I5(wait_bypass_count_reg[7]),
        .O(\n_0_wait_bypass_count[0]_i_4__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
     \wait_bypass_count[0]_i_5__0 
       (.I0(wait_bypass_count_reg[1]),
        .I1(wait_bypass_count_reg[12]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[4]),
        .I5(wait_bypass_count_reg[11]),
        .O(\n_0_wait_bypass_count[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_6__0 
       (.I0(wait_bypass_count_reg[3]),
        .O(\n_0_wait_bypass_count[0]_i_6__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_7__0 
       (.I0(wait_bypass_count_reg[2]),
        .O(\n_0_wait_bypass_count[0]_i_7__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_8__0 
       (.I0(wait_bypass_count_reg[1]),
        .O(\n_0_wait_bypass_count[0]_i_8__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_9 
       (.I0(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_2__0 
       (.I0(wait_bypass_count_reg[12]),
        .O(\n_0_wait_bypass_count[12]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_2__0 
       (.I0(wait_bypass_count_reg[7]),
        .O(\n_0_wait_bypass_count[4]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_3__0 
       (.I0(wait_bypass_count_reg[6]),
        .O(\n_0_wait_bypass_count[4]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_4__0 
       (.I0(wait_bypass_count_reg[5]),
        .O(\n_0_wait_bypass_count[4]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_5__0 
       (.I0(wait_bypass_count_reg[4]),
        .O(\n_0_wait_bypass_count[4]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_2__0 
       (.I0(wait_bypass_count_reg[11]),
        .O(\n_0_wait_bypass_count[8]_i_2__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_3__0 
       (.I0(wait_bypass_count_reg[10]),
        .O(\n_0_wait_bypass_count[8]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_4__0 
       (.I0(wait_bypass_count_reg[9]),
        .O(\n_0_wait_bypass_count[8]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_5__0 
       (.I0(wait_bypass_count_reg[8]),
        .O(\n_0_wait_bypass_count[8]_i_5__0 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[0]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\n_0_wait_bypass_count_reg[0]_i_3__0 ,\n_1_wait_bypass_count_reg[0]_i_3__0 ,\n_2_wait_bypass_count_reg[0]_i_3__0 ,\n_3_wait_bypass_count_reg[0]_i_3__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_wait_bypass_count_reg[0]_i_3__0 ,\n_5_wait_bypass_count_reg[0]_i_3__0 ,\n_6_wait_bypass_count_reg[0]_i_3__0 ,\n_7_wait_bypass_count_reg[0]_i_3__0 }),
        .S({\n_0_wait_bypass_count[0]_i_6__0 ,\n_0_wait_bypass_count[0]_i_7__0 ,\n_0_wait_bypass_count[0]_i_8__0 ,\n_0_wait_bypass_count[0]_i_9 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[10]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[11]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[12]_i_1__0 ),
        .Q(wait_bypass_count_reg[12]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[8]_i_1__0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\n_7_wait_bypass_count_reg[12]_i_1__0 }),
        .S({1'b0,1'b0,1'b0,\n_0_wait_bypass_count[12]_i_2__0 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[1]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[2]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[3]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[4]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[0]_i_3__0 ),
        .CO({\n_0_wait_bypass_count_reg[4]_i_1__0 ,\n_1_wait_bypass_count_reg[4]_i_1__0 ,\n_2_wait_bypass_count_reg[4]_i_1__0 ,\n_3_wait_bypass_count_reg[4]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[4]_i_1__0 ,\n_5_wait_bypass_count_reg[4]_i_1__0 ,\n_6_wait_bypass_count_reg[4]_i_1__0 ,\n_7_wait_bypass_count_reg[4]_i_1__0 }),
        .S({\n_0_wait_bypass_count[4]_i_2__0 ,\n_0_wait_bypass_count[4]_i_3__0 ,\n_0_wait_bypass_count[4]_i_4__0 ,\n_0_wait_bypass_count[4]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[5]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[6]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[7]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[8]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[4]_i_1__0 ),
        .CO({\n_0_wait_bypass_count_reg[8]_i_1__0 ,\n_1_wait_bypass_count_reg[8]_i_1__0 ,\n_2_wait_bypass_count_reg[8]_i_1__0 ,\n_3_wait_bypass_count_reg[8]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[8]_i_1__0 ,\n_5_wait_bypass_count_reg[8]_i_1__0 ,\n_6_wait_bypass_count_reg[8]_i_1__0 ,\n_7_wait_bypass_count_reg[8]_i_1__0 }),
        .S({\n_0_wait_bypass_count[8]_i_2__0 ,\n_0_wait_bypass_count[8]_i_3__0 ,\n_0_wait_bypass_count[8]_i_4__0 ,\n_0_wait_bypass_count[8]_i_5__0 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(n_20_sync_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[9]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
LUT3 #(
    .INIT(8'h02)) 
     \wait_time_cnt[0]_i_1__0 
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .O(\n_0_wait_time_cnt[0]_i_1__0 ));
LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
     \wait_time_cnt[0]_i_2__0 
       (.I0(wait_time_cnt_reg[10]),
        .I1(wait_time_cnt_reg[9]),
        .I2(wait_time_cnt_reg[4]),
        .I3(wait_time_cnt_reg[7]),
        .I4(\n_0_wait_time_cnt[0]_i_4__0 ),
        .I5(\n_0_wait_time_cnt[0]_i_5__0 ),
        .O(\n_0_wait_time_cnt[0]_i_2__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \wait_time_cnt[0]_i_4__0 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[12]),
        .I2(wait_time_cnt_reg[11]),
        .I3(wait_time_cnt_reg[15]),
        .I4(wait_time_cnt_reg[2]),
        .I5(wait_time_cnt_reg[1]),
        .O(\n_0_wait_time_cnt[0]_i_4__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \wait_time_cnt[0]_i_5__0 
       (.I0(wait_time_cnt_reg[13]),
        .I1(wait_time_cnt_reg[8]),
        .I2(wait_time_cnt_reg[5]),
        .I3(wait_time_cnt_reg[14]),
        .I4(wait_time_cnt_reg[3]),
        .I5(wait_time_cnt_reg[6]),
        .O(\n_0_wait_time_cnt[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_6__0 
       (.I0(wait_time_cnt_reg[3]),
        .O(\n_0_wait_time_cnt[0]_i_6__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_7__0 
       (.I0(wait_time_cnt_reg[2]),
        .O(\n_0_wait_time_cnt[0]_i_7__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_8 
       (.I0(wait_time_cnt_reg[1]),
        .O(\n_0_wait_time_cnt[0]_i_8 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_9 
       (.I0(wait_time_cnt_reg[0]),
        .O(\n_0_wait_time_cnt[0]_i_9 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_2__0 
       (.I0(wait_time_cnt_reg[15]),
        .O(\n_0_wait_time_cnt[12]_i_2__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_3__0 
       (.I0(wait_time_cnt_reg[14]),
        .O(\n_0_wait_time_cnt[12]_i_3__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_4__0 
       (.I0(wait_time_cnt_reg[13]),
        .O(\n_0_wait_time_cnt[12]_i_4__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_5__0 
       (.I0(wait_time_cnt_reg[12]),
        .O(\n_0_wait_time_cnt[12]_i_5__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_2__0 
       (.I0(wait_time_cnt_reg[7]),
        .O(\n_0_wait_time_cnt[4]_i_2__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .O(\n_0_wait_time_cnt[4]_i_3__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_4__0 
       (.I0(wait_time_cnt_reg[5]),
        .O(\n_0_wait_time_cnt[4]_i_4__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_5__0 
       (.I0(wait_time_cnt_reg[4]),
        .O(\n_0_wait_time_cnt[4]_i_5__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_2__0 
       (.I0(wait_time_cnt_reg[11]),
        .O(\n_0_wait_time_cnt[8]_i_2__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_3__0 
       (.I0(wait_time_cnt_reg[10]),
        .O(\n_0_wait_time_cnt[8]_i_3__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_4__0 
       (.I0(wait_time_cnt_reg[9]),
        .O(\n_0_wait_time_cnt[8]_i_4__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .O(\n_0_wait_time_cnt[8]_i_5__0 ));
FDRE \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_7_wait_time_cnt_reg[0]_i_3__0 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
CARRY4 \wait_time_cnt_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\n_0_wait_time_cnt_reg[0]_i_3__0 ,\n_1_wait_time_cnt_reg[0]_i_3__0 ,\n_2_wait_time_cnt_reg[0]_i_3__0 ,\n_3_wait_time_cnt_reg[0]_i_3__0 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[0]_i_3__0 ,\n_5_wait_time_cnt_reg[0]_i_3__0 ,\n_6_wait_time_cnt_reg[0]_i_3__0 ,\n_7_wait_time_cnt_reg[0]_i_3__0 }),
        .S({\n_0_wait_time_cnt[0]_i_6__0 ,\n_0_wait_time_cnt[0]_i_7__0 ,\n_0_wait_time_cnt[0]_i_8 ,\n_0_wait_time_cnt[0]_i_9 }));
FDSE \wait_time_cnt_reg[10] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[11] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[12] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_7_wait_time_cnt_reg[12]_i_1__0 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
CARRY4 \wait_time_cnt_reg[12]_i_1__0 
       (.CI(\n_0_wait_time_cnt_reg[8]_i_1__0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3],\n_1_wait_time_cnt_reg[12]_i_1__0 ,\n_2_wait_time_cnt_reg[12]_i_1__0 ,\n_3_wait_time_cnt_reg[12]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[12]_i_1__0 ,\n_5_wait_time_cnt_reg[12]_i_1__0 ,\n_6_wait_time_cnt_reg[12]_i_1__0 ,\n_7_wait_time_cnt_reg[12]_i_1__0 }),
        .S({\n_0_wait_time_cnt[12]_i_2__0 ,\n_0_wait_time_cnt[12]_i_3__0 ,\n_0_wait_time_cnt[12]_i_4__0 ,\n_0_wait_time_cnt[12]_i_5__0 }));
FDRE \wait_time_cnt_reg[13] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[12]_i_1__0 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[14] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[12]_i_1__0 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[15] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[12]_i_1__0 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDSE \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[0]_i_3__0 ),
        .Q(wait_time_cnt_reg[1]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[0]_i_3__0 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[0]_i_3__0 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_7_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
CARRY4 \wait_time_cnt_reg[4]_i_1__0 
       (.CI(\n_0_wait_time_cnt_reg[0]_i_3__0 ),
        .CO({\n_0_wait_time_cnt_reg[4]_i_1__0 ,\n_1_wait_time_cnt_reg[4]_i_1__0 ,\n_2_wait_time_cnt_reg[4]_i_1__0 ,\n_3_wait_time_cnt_reg[4]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[4]_i_1__0 ,\n_5_wait_time_cnt_reg[4]_i_1__0 ,\n_6_wait_time_cnt_reg[4]_i_1__0 ,\n_7_wait_time_cnt_reg[4]_i_1__0 }),
        .S({\n_0_wait_time_cnt[4]_i_2__0 ,\n_0_wait_time_cnt[4]_i_3__0 ,\n_0_wait_time_cnt[4]_i_4__0 ,\n_0_wait_time_cnt[4]_i_5__0 }));
FDSE \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_5_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDSE \wait_time_cnt_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_4_wait_time_cnt_reg[4]_i_1__0 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\n_0_wait_time_cnt[0]_i_1__0 ));
FDRE \wait_time_cnt_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_7_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[8]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
CARRY4 \wait_time_cnt_reg[8]_i_1__0 
       (.CI(\n_0_wait_time_cnt_reg[4]_i_1__0 ),
        .CO({\n_0_wait_time_cnt_reg[8]_i_1__0 ,\n_1_wait_time_cnt_reg[8]_i_1__0 ,\n_2_wait_time_cnt_reg[8]_i_1__0 ,\n_3_wait_time_cnt_reg[8]_i_1__0 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[8]_i_1__0 ,\n_5_wait_time_cnt_reg[8]_i_1__0 ,\n_6_wait_time_cnt_reg[8]_i_1__0 ,\n_7_wait_time_cnt_reg[8]_i_1__0 }),
        .S({\n_0_wait_time_cnt[8]_i_2__0 ,\n_0_wait_time_cnt[8]_i_3__0 ,\n_0_wait_time_cnt[8]_i_4__0 ,\n_0_wait_time_cnt[8]_i_5__0 }));
FDRE \wait_time_cnt_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_wait_time_cnt[0]_i_2__0 ),
        .D(\n_6_wait_time_cnt_reg[8]_i_1__0 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\n_0_wait_time_cnt[0]_i_1__0 ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_tx_startup_fsm" *) 
module aurora_8b10b_0_aurora_8b10b_0_tx_startup_fsm
   (s_out_d1_cdc_to_35,
    s_out_d2_36,
    s_out_d3_37,
    s_out_d4_38,
    s_out_d5_39,
    s_out_d6_40,
    s_out_d7_41,
    O36,
    O37,
    O38,
    O39,
    O40,
    O41,
    O1,
    s_out_d1_cdc_to_42,
    s_out_d2_43,
    s_out_d3_44,
    s_out_d4_45,
    s_out_d5_46,
    s_out_d6_47,
    s_out_d7_48,
    O42,
    O43,
    O44,
    O45,
    O46,
    O47,
    s_out_d1_cdc_to_49,
    s_out_d2_50,
    s_out_d3_51,
    s_out_d4_52,
    s_out_d5_53,
    s_out_d6_54,
    s_out_d7_55,
    O48,
    O49,
    O50,
    O51,
    O52,
    O53,
    s_out_d1_cdc_to_56,
    s_out_d2_57,
    s_out_d3_58,
    s_out_d4_59,
    s_out_d5_60,
    s_out_d6_61,
    s_out_d7_62,
    O54,
    O55,
    O56,
    O57,
    O58,
    O59,
    s_out_d1_cdc_to_63,
    s_out_d2_64,
    s_out_d3_65,
    s_out_d4_66,
    s_out_d5_67,
    s_out_d6_68,
    s_out_d7_69,
    O60,
    O61,
    O62,
    O63,
    O64,
    O65,
    s_out_d1_cdc_to_70,
    s_out_d2_71,
    s_out_d3_72,
    s_out_d4_73,
    s_out_d5_74,
    s_out_d6_75,
    s_out_d7_76,
    O66,
    O67,
    O68,
    O69,
    O70,
    O71,
    s_out_d1_cdc_to_77,
    s_out_d2_78,
    s_out_d3_79,
    s_out_d4_80,
    s_out_d5_81,
    s_out_d6_82,
    s_out_d7_83,
    O72,
    O73,
    O74,
    O75,
    O76,
    O77,
    gt_tx_reset_i,
    cpll_reset_i,
    gt_txuserrdy_i,
    O3,
    txfsm_txresetdone_r,
    O2,
    user_clk,
    init_clk_in,
    gt_reset,
    ack_flag);
  output s_out_d1_cdc_to_35;
  output s_out_d2_36;
  output s_out_d3_37;
  output s_out_d4_38;
  output s_out_d5_39;
  output s_out_d6_40;
  output s_out_d7_41;
  output [1:0]O36;
  output [1:0]O37;
  output [1:0]O38;
  output [1:0]O39;
  output [1:0]O40;
  output [1:0]O41;
  output O1;
  output s_out_d1_cdc_to_42;
  output s_out_d2_43;
  output s_out_d3_44;
  output s_out_d4_45;
  output s_out_d5_46;
  output s_out_d6_47;
  output s_out_d7_48;
  output [1:0]O42;
  output [1:0]O43;
  output [1:0]O44;
  output [1:0]O45;
  output [1:0]O46;
  output [1:0]O47;
  output s_out_d1_cdc_to_49;
  output s_out_d2_50;
  output s_out_d3_51;
  output s_out_d4_52;
  output s_out_d5_53;
  output s_out_d6_54;
  output s_out_d7_55;
  output [1:0]O48;
  output [1:0]O49;
  output [1:0]O50;
  output [1:0]O51;
  output [1:0]O52;
  output [1:0]O53;
  output s_out_d1_cdc_to_56;
  output s_out_d2_57;
  output s_out_d3_58;
  output s_out_d4_59;
  output s_out_d5_60;
  output s_out_d6_61;
  output s_out_d7_62;
  output [1:0]O54;
  output [1:0]O55;
  output [1:0]O56;
  output [1:0]O57;
  output [1:0]O58;
  output [1:0]O59;
  output s_out_d1_cdc_to_63;
  output s_out_d2_64;
  output s_out_d3_65;
  output s_out_d4_66;
  output s_out_d5_67;
  output s_out_d6_68;
  output s_out_d7_69;
  output [1:0]O60;
  output [1:0]O61;
  output [1:0]O62;
  output [1:0]O63;
  output [1:0]O64;
  output [1:0]O65;
  output s_out_d1_cdc_to_70;
  output s_out_d2_71;
  output s_out_d3_72;
  output s_out_d4_73;
  output s_out_d5_74;
  output s_out_d6_75;
  output s_out_d7_76;
  output [1:0]O66;
  output [1:0]O67;
  output [1:0]O68;
  output [1:0]O69;
  output [1:0]O70;
  output [1:0]O71;
  output s_out_d1_cdc_to_77;
  output s_out_d2_78;
  output s_out_d3_79;
  output s_out_d4_80;
  output s_out_d5_81;
  output s_out_d6_82;
  output s_out_d7_83;
  output [1:0]O72;
  output [1:0]O73;
  output [1:0]O74;
  output [1:0]O75;
  output [1:0]O76;
  output [1:0]O77;
  output gt_tx_reset_i;
  output cpll_reset_i;
  output gt_txuserrdy_i;
  output O3;
  input txfsm_txresetdone_r;
  input O2;
  input user_clk;
  input init_clk_in;
  input gt_reset;
  input ack_flag;

  wire O1;
  wire O2;
  wire O3;
  wire [1:0]O36;
  wire [1:0]O37;
  wire [1:0]O38;
  wire [1:0]O39;
  wire [1:0]O40;
  wire [1:0]O41;
  wire [1:0]O42;
  wire [1:0]O43;
  wire [1:0]O44;
  wire [1:0]O45;
  wire [1:0]O46;
  wire [1:0]O47;
  wire [1:0]O48;
  wire [1:0]O49;
  wire [1:0]O50;
  wire [1:0]O51;
  wire [1:0]O52;
  wire [1:0]O53;
  wire [1:0]O54;
  wire [1:0]O55;
  wire [1:0]O56;
  wire [1:0]O57;
  wire [1:0]O58;
  wire [1:0]O59;
  wire [1:0]O60;
  wire [1:0]O61;
  wire [1:0]O62;
  wire [1:0]O63;
  wire [1:0]O64;
  wire [1:0]O65;
  wire [1:0]O66;
  wire [1:0]O67;
  wire [1:0]O68;
  wire [1:0]O69;
  wire [1:0]O70;
  wire [1:0]O71;
  wire [1:0]O72;
  wire [1:0]O73;
  wire [1:0]O74;
  wire [1:0]O75;
  wire [1:0]O76;
  wire [1:0]O77;
  wire ack_flag;
  wire clear;
  wire cpll_reset_i;
  wire cplllock_sync;
  wire gt_reset;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire init_clk_in;
  wire [7:0]init_wait_count_reg__0;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire n_0_CPLL_RESET_i_1;
  wire \n_0_FSM_sequential_tx_state[0]_i_1 ;
  wire \n_0_FSM_sequential_tx_state[0]_i_2 ;
  wire \n_0_FSM_sequential_tx_state[1]_i_1 ;
  wire \n_0_FSM_sequential_tx_state[2]_i_1 ;
  wire \n_0_FSM_sequential_tx_state[2]_i_2 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_10 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_5 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_6 ;
  wire \n_0_FSM_sequential_tx_state[3]_i_9 ;
  wire n_0_TXUSERRDY_i_1;
  wire n_0_gttxreset_i_i_1;
  wire \n_0_init_wait_count[7]_i_1 ;
  wire \n_0_init_wait_count[7]_i_3 ;
  wire \n_0_init_wait_count[7]_i_4 ;
  wire n_0_init_wait_done_i_1;
  wire n_0_init_wait_done_reg;
  wire \n_0_mmcm_lock_count[9]_i_2 ;
  wire \n_0_mmcm_lock_count[9]_i_4 ;
  wire n_0_mmcm_lock_reclocked_i_2;
  wire n_0_pll_reset_asserted_i_1;
  wire n_0_pll_reset_asserted_reg;
  wire n_0_run_phase_alignment_int_i_1;
  wire n_0_run_phase_alignment_int_reg;
  wire n_0_sync_run_phase_alignment_int_cdc_sync;
  wire n_0_time_out_2ms_i_1__0;
  wire n_0_time_out_2ms_i_2__0;
  wire n_0_time_out_2ms_reg;
  wire n_0_time_out_500us_i_1;
  wire n_0_time_out_500us_i_2;
  wire n_0_time_out_500us_reg;
  wire \n_0_time_out_counter[0]_i_1__0 ;
  wire \n_0_time_out_counter[0]_i_3__0 ;
  wire \n_0_time_out_counter[0]_i_4__0 ;
  wire \n_0_time_out_counter[0]_i_5 ;
  wire \n_0_time_out_counter[0]_i_6 ;
  wire \n_0_time_out_counter[0]_i_7 ;
  wire \n_0_time_out_counter[0]_i_8__0 ;
  wire \n_0_time_out_counter[0]_i_9 ;
  wire \n_0_time_out_counter[12]_i_2 ;
  wire \n_0_time_out_counter[12]_i_3 ;
  wire \n_0_time_out_counter[12]_i_4 ;
  wire \n_0_time_out_counter[12]_i_5 ;
  wire \n_0_time_out_counter[16]_i_2 ;
  wire \n_0_time_out_counter[16]_i_3 ;
  wire \n_0_time_out_counter[4]_i_2 ;
  wire \n_0_time_out_counter[4]_i_3 ;
  wire \n_0_time_out_counter[4]_i_4 ;
  wire \n_0_time_out_counter[4]_i_5 ;
  wire \n_0_time_out_counter[8]_i_2 ;
  wire \n_0_time_out_counter[8]_i_3 ;
  wire \n_0_time_out_counter[8]_i_4 ;
  wire \n_0_time_out_counter[8]_i_5 ;
  wire \n_0_time_out_counter_reg[0]_i_2 ;
  wire \n_0_time_out_counter_reg[12]_i_1 ;
  wire \n_0_time_out_counter_reg[4]_i_1 ;
  wire \n_0_time_out_counter_reg[8]_i_1 ;
  wire n_0_time_out_wait_bypass_reg;
  wire n_0_time_tlock_max_i_1__0;
  wire n_0_time_tlock_max_i_2__0;
  wire n_0_time_tlock_max_i_3__0;
  wire n_0_time_tlock_max_i_4__0;
  wire n_0_time_tlock_max_i_5__0;
  wire n_0_time_tlock_max_reg;
  wire n_0_tx_fsm_reset_done_int_i_1;
  wire \n_0_wait_bypass_count[0]_i_10 ;
  wire \n_0_wait_bypass_count[0]_i_4 ;
  wire \n_0_wait_bypass_count[0]_i_5 ;
  wire \n_0_wait_bypass_count[0]_i_6 ;
  wire \n_0_wait_bypass_count[0]_i_7 ;
  wire \n_0_wait_bypass_count[0]_i_8 ;
  wire \n_0_wait_bypass_count[0]_i_9__0 ;
  wire \n_0_wait_bypass_count[12]_i_2 ;
  wire \n_0_wait_bypass_count[12]_i_3 ;
  wire \n_0_wait_bypass_count[12]_i_4 ;
  wire \n_0_wait_bypass_count[12]_i_5 ;
  wire \n_0_wait_bypass_count[16]_i_2 ;
  wire \n_0_wait_bypass_count[4]_i_2 ;
  wire \n_0_wait_bypass_count[4]_i_3 ;
  wire \n_0_wait_bypass_count[4]_i_4 ;
  wire \n_0_wait_bypass_count[4]_i_5 ;
  wire \n_0_wait_bypass_count[8]_i_2 ;
  wire \n_0_wait_bypass_count[8]_i_3 ;
  wire \n_0_wait_bypass_count[8]_i_4 ;
  wire \n_0_wait_bypass_count[8]_i_5 ;
  wire \n_0_wait_bypass_count_reg[0]_i_3 ;
  wire \n_0_wait_bypass_count_reg[12]_i_1 ;
  wire \n_0_wait_bypass_count_reg[4]_i_1 ;
  wire \n_0_wait_bypass_count_reg[8]_i_1 ;
  wire \n_0_wait_time_cnt[0]_i_4 ;
  wire \n_0_wait_time_cnt[0]_i_5 ;
  wire \n_0_wait_time_cnt[0]_i_6 ;
  wire \n_0_wait_time_cnt[0]_i_7 ;
  wire \n_0_wait_time_cnt[12]_i_2 ;
  wire \n_0_wait_time_cnt[12]_i_3 ;
  wire \n_0_wait_time_cnt[12]_i_4 ;
  wire \n_0_wait_time_cnt[12]_i_5 ;
  wire \n_0_wait_time_cnt[4]_i_2 ;
  wire \n_0_wait_time_cnt[4]_i_3 ;
  wire \n_0_wait_time_cnt[4]_i_4 ;
  wire \n_0_wait_time_cnt[4]_i_5 ;
  wire \n_0_wait_time_cnt[8]_i_2 ;
  wire \n_0_wait_time_cnt[8]_i_3 ;
  wire \n_0_wait_time_cnt[8]_i_4 ;
  wire \n_0_wait_time_cnt[8]_i_5 ;
  wire \n_0_wait_time_cnt_reg[0]_i_3 ;
  wire \n_0_wait_time_cnt_reg[4]_i_1 ;
  wire \n_0_wait_time_cnt_reg[8]_i_1 ;
  wire n_19_sync_mmcm_lock_reclocked_cdc_sync;
  wire n_19_sync_time_out_wait_bypass_cdc_sync;
  wire n_19_sync_tx_fsm_reset_done_int_cdc_sync;
  wire \n_1_time_out_counter_reg[0]_i_2 ;
  wire \n_1_time_out_counter_reg[12]_i_1 ;
  wire \n_1_time_out_counter_reg[4]_i_1 ;
  wire \n_1_time_out_counter_reg[8]_i_1 ;
  wire \n_1_wait_bypass_count_reg[0]_i_3 ;
  wire \n_1_wait_bypass_count_reg[12]_i_1 ;
  wire \n_1_wait_bypass_count_reg[4]_i_1 ;
  wire \n_1_wait_bypass_count_reg[8]_i_1 ;
  wire \n_1_wait_time_cnt_reg[0]_i_3 ;
  wire \n_1_wait_time_cnt_reg[12]_i_1 ;
  wire \n_1_wait_time_cnt_reg[4]_i_1 ;
  wire \n_1_wait_time_cnt_reg[8]_i_1 ;
  wire n_20_sync_TXRESETDONE_cdc_sync;
  wire n_20_sync_cplllock_cdc_sync;
  wire n_20_sync_mmcm_lock_reclocked_cdc_sync;
  wire n_20_sync_run_phase_alignment_int_cdc_sync;
  wire n_20_sync_tx_fsm_reset_done_int_cdc_sync;
  wire n_21_sync_cplllock_cdc_sync;
  wire \n_2_time_out_counter_reg[0]_i_2 ;
  wire \n_2_time_out_counter_reg[12]_i_1 ;
  wire \n_2_time_out_counter_reg[4]_i_1 ;
  wire \n_2_time_out_counter_reg[8]_i_1 ;
  wire \n_2_wait_bypass_count_reg[0]_i_3 ;
  wire \n_2_wait_bypass_count_reg[12]_i_1 ;
  wire \n_2_wait_bypass_count_reg[4]_i_1 ;
  wire \n_2_wait_bypass_count_reg[8]_i_1 ;
  wire \n_2_wait_time_cnt_reg[0]_i_3 ;
  wire \n_2_wait_time_cnt_reg[12]_i_1 ;
  wire \n_2_wait_time_cnt_reg[4]_i_1 ;
  wire \n_2_wait_time_cnt_reg[8]_i_1 ;
  wire \n_3_time_out_counter_reg[0]_i_2 ;
  wire \n_3_time_out_counter_reg[12]_i_1 ;
  wire \n_3_time_out_counter_reg[16]_i_1 ;
  wire \n_3_time_out_counter_reg[4]_i_1 ;
  wire \n_3_time_out_counter_reg[8]_i_1 ;
  wire \n_3_wait_bypass_count_reg[0]_i_3 ;
  wire \n_3_wait_bypass_count_reg[12]_i_1 ;
  wire \n_3_wait_bypass_count_reg[4]_i_1 ;
  wire \n_3_wait_bypass_count_reg[8]_i_1 ;
  wire \n_3_wait_time_cnt_reg[0]_i_3 ;
  wire \n_3_wait_time_cnt_reg[12]_i_1 ;
  wire \n_3_wait_time_cnt_reg[4]_i_1 ;
  wire \n_3_wait_time_cnt_reg[8]_i_1 ;
  wire \n_4_time_out_counter_reg[0]_i_2 ;
  wire \n_4_time_out_counter_reg[12]_i_1 ;
  wire \n_4_time_out_counter_reg[4]_i_1 ;
  wire \n_4_time_out_counter_reg[8]_i_1 ;
  wire \n_4_wait_bypass_count_reg[0]_i_3 ;
  wire \n_4_wait_bypass_count_reg[12]_i_1 ;
  wire \n_4_wait_bypass_count_reg[4]_i_1 ;
  wire \n_4_wait_bypass_count_reg[8]_i_1 ;
  wire \n_4_wait_time_cnt_reg[0]_i_3 ;
  wire \n_4_wait_time_cnt_reg[12]_i_1 ;
  wire \n_4_wait_time_cnt_reg[4]_i_1 ;
  wire \n_4_wait_time_cnt_reg[8]_i_1 ;
  wire \n_5_time_out_counter_reg[0]_i_2 ;
  wire \n_5_time_out_counter_reg[12]_i_1 ;
  wire \n_5_time_out_counter_reg[4]_i_1 ;
  wire \n_5_time_out_counter_reg[8]_i_1 ;
  wire \n_5_wait_bypass_count_reg[0]_i_3 ;
  wire \n_5_wait_bypass_count_reg[12]_i_1 ;
  wire \n_5_wait_bypass_count_reg[4]_i_1 ;
  wire \n_5_wait_bypass_count_reg[8]_i_1 ;
  wire \n_5_wait_time_cnt_reg[0]_i_3 ;
  wire \n_5_wait_time_cnt_reg[12]_i_1 ;
  wire \n_5_wait_time_cnt_reg[4]_i_1 ;
  wire \n_5_wait_time_cnt_reg[8]_i_1 ;
  wire \n_6_time_out_counter_reg[0]_i_2 ;
  wire \n_6_time_out_counter_reg[12]_i_1 ;
  wire \n_6_time_out_counter_reg[16]_i_1 ;
  wire \n_6_time_out_counter_reg[4]_i_1 ;
  wire \n_6_time_out_counter_reg[8]_i_1 ;
  wire \n_6_wait_bypass_count_reg[0]_i_3 ;
  wire \n_6_wait_bypass_count_reg[12]_i_1 ;
  wire \n_6_wait_bypass_count_reg[4]_i_1 ;
  wire \n_6_wait_bypass_count_reg[8]_i_1 ;
  wire \n_6_wait_time_cnt_reg[0]_i_3 ;
  wire \n_6_wait_time_cnt_reg[12]_i_1 ;
  wire \n_6_wait_time_cnt_reg[4]_i_1 ;
  wire \n_6_wait_time_cnt_reg[8]_i_1 ;
  wire \n_7_time_out_counter_reg[0]_i_2 ;
  wire \n_7_time_out_counter_reg[12]_i_1 ;
  wire \n_7_time_out_counter_reg[16]_i_1 ;
  wire \n_7_time_out_counter_reg[4]_i_1 ;
  wire \n_7_time_out_counter_reg[8]_i_1 ;
  wire \n_7_wait_bypass_count_reg[0]_i_3 ;
  wire \n_7_wait_bypass_count_reg[12]_i_1 ;
  wire \n_7_wait_bypass_count_reg[16]_i_1 ;
  wire \n_7_wait_bypass_count_reg[4]_i_1 ;
  wire \n_7_wait_bypass_count_reg[8]_i_1 ;
  wire \n_7_wait_time_cnt_reg[0]_i_3 ;
  wire \n_7_wait_time_cnt_reg[12]_i_1 ;
  wire \n_7_wait_time_cnt_reg[4]_i_1 ;
  wire \n_7_wait_time_cnt_reg[8]_i_1 ;
  wire [7:0]p_0_in;
  wire [9:0]p_0_in__0;
  wire reset_time_out;
  wire s_out_d1_cdc_to_35;
  wire s_out_d1_cdc_to_42;
  wire s_out_d1_cdc_to_49;
  wire s_out_d1_cdc_to_56;
  wire s_out_d1_cdc_to_63;
  wire s_out_d1_cdc_to_70;
  wire s_out_d1_cdc_to_77;
  wire s_out_d2_36;
  wire s_out_d2_43;
  wire s_out_d2_50;
  wire s_out_d2_57;
  wire s_out_d2_64;
  wire s_out_d2_71;
  wire s_out_d2_78;
  wire s_out_d3_37;
  wire s_out_d3_44;
  wire s_out_d3_51;
  wire s_out_d3_58;
  wire s_out_d3_65;
  wire s_out_d3_72;
  wire s_out_d3_79;
  wire s_out_d4_38;
  wire s_out_d4_45;
  wire s_out_d4_52;
  wire s_out_d4_59;
  wire s_out_d4_66;
  wire s_out_d4_73;
  wire s_out_d4_80;
  wire s_out_d5_39;
  wire s_out_d5_46;
  wire s_out_d5_53;
  wire s_out_d5_60;
  wire s_out_d5_67;
  wire s_out_d5_74;
  wire s_out_d5_81;
  wire s_out_d6_40;
  wire s_out_d6_47;
  wire s_out_d6_54;
  wire s_out_d6_61;
  wire s_out_d6_68;
  wire s_out_d6_75;
  wire s_out_d6_82;
  wire s_out_d7_41;
  wire s_out_d7_48;
  wire s_out_d7_55;
  wire s_out_d7_62;
  wire s_out_d7_69;
  wire s_out_d7_76;
  wire s_out_d7_83;
  wire sel;
  wire [17:0]time_out_counter_reg;
(* RTL_KEEP = "yes" *)   wire [3:0]tx_state;
  wire tx_state13_out;
  wire txfsm_txresetdone_r;
  wire txresetdone_s3;
  wire user_clk;
  wire [16:0]wait_bypass_count_reg;
  wire [15:0]wait_time_cnt_reg;
  wire wait_time_done;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED ;

LUT6 #(
    .INIT(64'hFFFDFFFF00010000)) 
     CPLL_RESET_i_1
       (.I0(n_0_pll_reset_asserted_reg),
        .I1(tx_state[1]),
        .I2(tx_state[3]),
        .I3(tx_state[2]),
        .I4(tx_state[0]),
        .I5(cpll_reset_i),
        .O(n_0_CPLL_RESET_i_1));
FDRE #(
    .INIT(1'b0)) 
     CPLL_RESET_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_CPLL_RESET_i_1),
        .Q(cpll_reset_i),
        .R(gt_reset));
LUT6 #(
    .INIT(64'h000000005555FDF5)) 
     \FSM_sequential_tx_state[0]_i_1 
       (.I0(tx_state[0]),
        .I1(n_0_time_out_2ms_reg),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(\n_0_FSM_sequential_tx_state[2]_i_2 ),
        .I5(\n_0_FSM_sequential_tx_state[0]_i_2 ),
        .O(\n_0_FSM_sequential_tx_state[0]_i_1 ));
LUT6 #(
    .INIT(64'hEFAAAAAAAAAA0000)) 
     \FSM_sequential_tx_state[0]_i_2 
       (.I0(tx_state[3]),
        .I1(reset_time_out),
        .I2(n_0_time_out_500us_reg),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .I5(tx_state[1]),
        .O(\n_0_FSM_sequential_tx_state[0]_i_2 ));
LUT5 #(
    .INIT(32'h04141414)) 
     \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(tx_state13_out),
        .I4(tx_state[2]),
        .O(\n_0_FSM_sequential_tx_state[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \FSM_sequential_tx_state[1]_i_2 
       (.I0(reset_time_out),
        .I1(n_0_time_tlock_max_reg),
        .I2(mmcm_lock_reclocked),
        .O(tx_state13_out));
LUT6 #(
    .INIT(64'h5555004005050040)) 
     \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(n_0_time_out_2ms_reg),
        .I4(tx_state[2]),
        .I5(\n_0_FSM_sequential_tx_state[2]_i_2 ),
        .O(\n_0_FSM_sequential_tx_state[2]_i_1 ));
LUT4 #(
    .INIT(16'h5545)) 
     \FSM_sequential_tx_state[2]_i_2 
       (.I0(tx_state[1]),
        .I1(mmcm_lock_reclocked),
        .I2(n_0_time_tlock_max_reg),
        .I3(reset_time_out),
        .O(\n_0_FSM_sequential_tx_state[2]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_sequential_tx_state[3]_i_10 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[9]),
        .I4(wait_time_cnt_reg[7]),
        .I5(wait_time_cnt_reg[6]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_10 ));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     \FSM_sequential_tx_state[3]_i_4 
       (.I0(wait_time_cnt_reg[2]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[3]),
        .I3(wait_time_cnt_reg[0]),
        .I4(\n_0_FSM_sequential_tx_state[3]_i_9 ),
        .I5(\n_0_FSM_sequential_tx_state[3]_i_10 ),
        .O(wait_time_done));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_sequential_tx_state[3]_i_5 
       (.I0(tx_state[2]),
        .I1(tx_state[1]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_5 ));
LUT3 #(
    .INIT(8'h4F)) 
     \FSM_sequential_tx_state[3]_i_6 
       (.I0(reset_time_out),
        .I1(n_0_time_out_500us_reg),
        .I2(tx_state[0]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_sequential_tx_state[3]_i_9 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[11]),
        .I2(wait_time_cnt_reg[14]),
        .I3(wait_time_cnt_reg[15]),
        .I4(wait_time_cnt_reg[13]),
        .I5(wait_time_cnt_reg[12]),
        .O(\n_0_FSM_sequential_tx_state[3]_i_9 ));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[0] 
       (.C(init_clk_in),
        .CE(n_21_sync_cplllock_cdc_sync),
        .D(\n_0_FSM_sequential_tx_state[0]_i_1 ),
        .Q(tx_state[0]),
        .R(gt_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[1] 
       (.C(init_clk_in),
        .CE(n_21_sync_cplllock_cdc_sync),
        .D(\n_0_FSM_sequential_tx_state[1]_i_1 ),
        .Q(tx_state[1]),
        .R(gt_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[2] 
       (.C(init_clk_in),
        .CE(n_21_sync_cplllock_cdc_sync),
        .D(\n_0_FSM_sequential_tx_state[2]_i_1 ),
        .Q(tx_state[2]),
        .R(gt_reset));
(* KEEP = "yes" *) 
   FDRE \FSM_sequential_tx_state_reg[3] 
       (.C(init_clk_in),
        .CE(n_21_sync_cplllock_cdc_sync),
        .D(n_19_sync_time_out_wait_bypass_cdc_sync),
        .Q(tx_state[3]),
        .R(gt_reset));
LUT5 #(
    .INIT(32'hFFFB4000)) 
     TXUSERRDY_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(gt_txuserrdy_i),
        .O(n_0_TXUSERRDY_i_1));
FDRE #(
    .INIT(1'b0)) 
     TXUSERRDY_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_TXUSERRDY_i_1),
        .Q(gt_txuserrdy_i),
        .R(gt_reset));
LUT2 #(
    .INIT(4'h2)) 
     flag2_i_1
       (.I0(cpll_reset_i),
        .I1(ack_flag),
        .O(O3));
LUT5 #(
    .INIT(32'hFEFF0010)) 
     gttxreset_i_i_1
       (.I0(tx_state[1]),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(tx_state[2]),
        .I4(gt_tx_reset_i),
        .O(n_0_gttxreset_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     gttxreset_i_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_gttxreset_i_i_1),
        .Q(gt_tx_reset_i),
        .R(gt_reset));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[3]),
        .I4(init_wait_count_reg__0[4]),
        .O(p_0_in[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[3]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg__0[6]),
        .I1(\n_0_init_wait_count[7]_i_4 ),
        .I2(init_wait_count_reg__0[5]),
        .O(p_0_in[6]));
LUT3 #(
    .INIT(8'h7F)) 
     \init_wait_count[7]_i_1 
       (.I0(\n_0_init_wait_count[7]_i_3 ),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[6]),
        .O(\n_0_init_wait_count[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[7]_i_2 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\n_0_init_wait_count[7]_i_4 ),
        .I3(init_wait_count_reg__0[6]),
        .O(p_0_in[7]));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[5]),
        .I3(init_wait_count_reg__0[7]),
        .I4(init_wait_count_reg__0[0]),
        .I5(init_wait_count_reg__0[1]),
        .O(\n_0_init_wait_count[7]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[2]),
        .O(\n_0_init_wait_count[7]_i_4 ));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .CLR(gt_reset),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg__0[7]));
LUT4 #(
    .INIT(16'hFF80)) 
     init_wait_done_i_1
       (.I0(\n_0_init_wait_count[7]_i_3 ),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[6]),
        .I3(n_0_init_wait_done_reg),
        .O(n_0_init_wait_done_i_1));
FDCE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .CLR(gt_reset),
        .D(n_0_init_wait_done_i_1),
        .Q(n_0_init_wait_done_reg));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[2]));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__0[3]));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[5]));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\n_0_mmcm_lock_count[9]_i_4 ),
        .I2(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__0[6]));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__0[7]));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[8]_i_1 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(p_0_in__0[8]));
LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
     \mmcm_lock_count[9]_i_2 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_4 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .I5(mmcm_lock_count_reg__0[9]),
        .O(\n_0_mmcm_lock_count[9]_i_2 ));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(\n_0_mmcm_lock_count[9]_i_4 ),
        .I4(mmcm_lock_count_reg__0[6]),
        .I5(mmcm_lock_count_reg__0[8]),
        .O(p_0_in__0[9]));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \mmcm_lock_count[9]_i_4 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(\n_0_mmcm_lock_count[9]_i_4 ));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__0[9]),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(n_20_sync_mmcm_lock_reclocked_cdc_sync));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\n_0_mmcm_lock_count[9]_i_4 ),
        .I3(mmcm_lock_count_reg__0[6]),
        .O(n_0_mmcm_lock_reclocked_i_2));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_19_sync_mmcm_lock_reclocked_cdc_sync),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
LUT5 #(
    .INIT(32'hEF00FF10)) 
     pll_reset_asserted_i_1
       (.I0(tx_state[2]),
        .I1(tx_state[3]),
        .I2(tx_state[0]),
        .I3(n_0_pll_reset_asserted_reg),
        .I4(tx_state[1]),
        .O(n_0_pll_reset_asserted_i_1));
FDRE #(
    .INIT(1'b0)) 
     pll_reset_asserted_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_pll_reset_asserted_i_1),
        .Q(n_0_pll_reset_asserted_reg),
        .R(gt_reset));
FDRE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_20_sync_cplllock_cdc_sync),
        .Q(reset_time_out),
        .R(gt_reset));
LUT5 #(
    .INIT(32'hFFFD0004)) 
     run_phase_alignment_int_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(n_0_run_phase_alignment_int_reg),
        .O(n_0_run_phase_alignment_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_run_phase_alignment_int_i_1),
        .Q(n_0_run_phase_alignment_int_reg),
        .R(gt_reset));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_1 sync_TXRESETDONE_cdc_sync
       (.I1(n_0_time_out_500us_reg),
        .I2(n_0_time_out_2ms_reg),
        .O1(n_20_sync_TXRESETDONE_cdc_sync),
        .O54(O54),
        .O55(O55),
        .O56(O56),
        .O57(O57),
        .O58(O58),
        .O59(O59),
        .cplllock_sync(cplllock_sync),
        .init_clk_in(init_clk_in),
        .out(tx_state[2]),
        .reset_time_out(reset_time_out),
        .s_out_d1_cdc_to_56(s_out_d1_cdc_to_56),
        .s_out_d2_57(s_out_d2_57),
        .s_out_d3_58(s_out_d3_58),
        .s_out_d4_59(s_out_d4_59),
        .s_out_d5_60(s_out_d5_60),
        .s_out_d6_61(s_out_d6_61),
        .s_out_d7_62(s_out_d7_62),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .txresetdone_s3(txresetdone_s3));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_2 sync_cplllock_cdc_sync
       (.E(n_21_sync_cplllock_cdc_sync),
        .I1(\n_0_FSM_sequential_tx_state[3]_i_5 ),
        .I2(n_0_init_wait_done_reg),
        .I3(n_20_sync_TXRESETDONE_cdc_sync),
        .I4(n_0_time_tlock_max_reg),
        .I5(n_0_pll_reset_asserted_reg),
        .O1(n_20_sync_cplllock_cdc_sync),
        .O2(O2),
        .O66(O66),
        .O67(O67),
        .O68(O68),
        .O69(O69),
        .O70(O70),
        .O71(O71),
        .cplllock_sync(cplllock_sync),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .out(tx_state),
        .reset_time_out(reset_time_out),
        .s_out_d1_cdc_to_70(s_out_d1_cdc_to_70),
        .s_out_d2_71(s_out_d2_71),
        .s_out_d3_72(s_out_d3_72),
        .s_out_d4_73(s_out_d4_73),
        .s_out_d5_74(s_out_d5_74),
        .s_out_d6_75(s_out_d6_75),
        .s_out_d7_76(s_out_d7_76),
        .txresetdone_s3(txresetdone_s3),
        .wait_time_done(wait_time_done));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_3 sync_mmcm_lock_reclocked_cdc_sync
       (.I1(n_0_mmcm_lock_reclocked_i_2),
        .O1(n_19_sync_mmcm_lock_reclocked_cdc_sync),
        .O60(O60),
        .O61(O61),
        .O62(O62),
        .O63(O63),
        .O64(O64),
        .O65(O65),
        .Q(mmcm_lock_count_reg__0[9:8]),
        .SR(n_20_sync_mmcm_lock_reclocked_cdc_sync),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .s_out_d1_cdc_to_63(s_out_d1_cdc_to_63),
        .s_out_d2_64(s_out_d2_64),
        .s_out_d3_65(s_out_d3_65),
        .s_out_d4_66(s_out_d4_66),
        .s_out_d5_67(s_out_d5_67),
        .s_out_d6_68(s_out_d6_68),
        .s_out_d7_69(s_out_d7_69));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_4 sync_qplllock_cdc_sync
       (.O72(O72),
        .O73(O73),
        .O74(O74),
        .O75(O75),
        .O76(O76),
        .O77(O77),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_77(s_out_d1_cdc_to_77),
        .s_out_d2_78(s_out_d2_78),
        .s_out_d3_79(s_out_d3_79),
        .s_out_d4_80(s_out_d4_80),
        .s_out_d5_81(s_out_d5_81),
        .s_out_d6_82(s_out_d6_82),
        .s_out_d7_83(s_out_d7_83));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_5 sync_run_phase_alignment_int_cdc_sync
       (.I1(n_0_run_phase_alignment_int_reg),
        .O1(n_0_sync_run_phase_alignment_int_cdc_sync),
        .O2(n_20_sync_run_phase_alignment_int_cdc_sync),
        .O36(O36),
        .O37(O37),
        .O38(O38),
        .O39(O39),
        .O40(O40),
        .O41(O41),
        .s_out_d1_cdc_to_35(s_out_d1_cdc_to_35),
        .s_out_d2_36(s_out_d2_36),
        .s_out_d3_37(s_out_d3_37),
        .s_out_d4_38(s_out_d4_38),
        .s_out_d5_39(s_out_d5_39),
        .s_out_d6_40(s_out_d6_40),
        .s_out_d7_41(s_out_d7_41),
        .user_clk(user_clk));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_6 sync_time_out_wait_bypass_cdc_sync
       (.D(n_19_sync_time_out_wait_bypass_cdc_sync),
        .I1(n_0_time_out_wait_bypass_reg),
        .I2(\n_0_FSM_sequential_tx_state[3]_i_6 ),
        .O48(O48),
        .O49(O49),
        .O50(O50),
        .O51(O51),
        .O52(O52),
        .O53(O53),
        .init_clk_in(init_clk_in),
        .out(tx_state[3:1]),
        .s_out_d1_cdc_to_49(s_out_d1_cdc_to_49),
        .s_out_d2_50(s_out_d2_50),
        .s_out_d3_51(s_out_d3_51),
        .s_out_d4_52(s_out_d4_52),
        .s_out_d5_53(s_out_d5_53),
        .s_out_d6_54(s_out_d6_54),
        .s_out_d7_55(s_out_d7_55));
aurora_8b10b_0_aurora_8b10b_0_cdc_sync_7 sync_tx_fsm_reset_done_int_cdc_sync
       (.I1(n_0_time_out_wait_bypass_reg),
        .I2(\n_0_wait_bypass_count[0]_i_4 ),
        .I3(\n_0_wait_bypass_count[0]_i_6 ),
        .I4(\n_0_wait_bypass_count[0]_i_5 ),
        .I5(n_0_sync_run_phase_alignment_int_cdc_sync),
        .O1(O1),
        .O2(n_19_sync_tx_fsm_reset_done_int_cdc_sync),
        .O3(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .O42(O42),
        .O43(O43),
        .O44(O44),
        .O45(O45),
        .O46(O46),
        .O47(O47),
        .s_out_d1_cdc_to_42(s_out_d1_cdc_to_42),
        .s_out_d2_43(s_out_d2_43),
        .s_out_d3_44(s_out_d3_44),
        .s_out_d4_45(s_out_d4_45),
        .s_out_d5_46(s_out_d5_46),
        .s_out_d6_47(s_out_d6_47),
        .s_out_d7_48(s_out_d7_48),
        .user_clk(user_clk),
        .wait_bypass_count_reg(wait_bypass_count_reg[4:3]));
LUT6 #(
    .INIT(64'h00000000BAAAAAAA)) 
     time_out_2ms_i_1__0
       (.I0(n_0_time_out_2ms_reg),
        .I1(n_0_time_out_2ms_i_2__0),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[15]),
        .I4(\n_0_time_out_counter[0]_i_3__0 ),
        .I5(reset_time_out),
        .O(n_0_time_out_2ms_i_1__0));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT2 #(
    .INIT(4'hE)) 
     time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[9]),
        .O(n_0_time_out_2ms_i_2__0));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_2ms_i_1__0),
        .Q(n_0_time_out_2ms_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h00000000EAAAAAAA)) 
     time_out_500us_i_1
       (.I0(n_0_time_out_500us_reg),
        .I1(n_0_time_tlock_max_i_2__0),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[15]),
        .I4(n_0_time_out_500us_i_2),
        .I5(reset_time_out),
        .O(n_0_time_out_500us_i_1));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT5 #(
    .INIT(32'h00000008)) 
     time_out_500us_i_2
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[4]),
        .I4(time_out_counter_reg[6]),
        .O(n_0_time_out_500us_i_2));
FDRE #(
    .INIT(1'b0)) 
     time_out_500us_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_out_500us_i_1),
        .Q(n_0_time_out_500us_reg),
        .R(1'b0));
LUT5 #(
    .INIT(32'hFFFFFF7F)) 
     \time_out_counter[0]_i_1__0 
       (.I0(\n_0_time_out_counter[0]_i_3__0 ),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[9]),
        .I4(time_out_counter_reg[8]),
        .O(\n_0_time_out_counter[0]_i_1__0 ));
LUT6 #(
    .INIT(64'h0010000000000000)) 
     \time_out_counter[0]_i_3__0 
       (.I0(\n_0_time_out_counter[0]_i_8__0 ),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[7]),
        .I5(\n_0_time_out_counter[0]_i_9 ),
        .O(\n_0_time_out_counter[0]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_6 ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[0]),
        .O(\n_0_time_out_counter[0]_i_7 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \time_out_counter[0]_i_8__0 
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_8__0 ));
LUT6 #(
    .INIT(64'h0000000000080000)) 
     \time_out_counter[0]_i_9 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[6]),
        .O(\n_0_time_out_counter[0]_i_9 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_2 
       (.I0(time_out_counter_reg[15]),
        .O(\n_0_time_out_counter[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_3 
       (.I0(time_out_counter_reg[14]),
        .O(\n_0_time_out_counter[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_4 
       (.I0(time_out_counter_reg[13]),
        .O(\n_0_time_out_counter[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[12]_i_5 
       (.I0(time_out_counter_reg[12]),
        .O(\n_0_time_out_counter[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_2 
       (.I0(time_out_counter_reg[17]),
        .O(\n_0_time_out_counter[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_3 
       (.I0(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_2 
       (.I0(time_out_counter_reg[7]),
        .O(\n_0_time_out_counter[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_3 
       (.I0(time_out_counter_reg[6]),
        .O(\n_0_time_out_counter[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_4 
       (.I0(time_out_counter_reg[5]),
        .O(\n_0_time_out_counter[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[4]_i_5 
       (.I0(time_out_counter_reg[4]),
        .O(\n_0_time_out_counter[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_2 
       (.I0(time_out_counter_reg[11]),
        .O(\n_0_time_out_counter[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_3 
       (.I0(time_out_counter_reg[10]),
        .O(\n_0_time_out_counter[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_4 
       (.I0(time_out_counter_reg[9]),
        .O(\n_0_time_out_counter[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[8]_i_5 
       (.I0(time_out_counter_reg[8]),
        .O(\n_0_time_out_counter[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\n_0_time_out_counter_reg[0]_i_2 ,\n_1_time_out_counter_reg[0]_i_2 ,\n_2_time_out_counter_reg[0]_i_2 ,\n_3_time_out_counter_reg[0]_i_2 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_time_out_counter_reg[0]_i_2 ,\n_5_time_out_counter_reg[0]_i_2 ,\n_6_time_out_counter_reg[0]_i_2 ,\n_7_time_out_counter_reg[0]_i_2 }),
        .S({\n_0_time_out_counter[0]_i_4__0 ,\n_0_time_out_counter[0]_i_5 ,\n_0_time_out_counter[0]_i_6 ,\n_0_time_out_counter[0]_i_7 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[12] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\n_0_time_out_counter_reg[8]_i_1 ),
        .CO({\n_0_time_out_counter_reg[12]_i_1 ,\n_1_time_out_counter_reg[12]_i_1 ,\n_2_time_out_counter_reg[12]_i_1 ,\n_3_time_out_counter_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[12]_i_1 ,\n_5_time_out_counter_reg[12]_i_1 ,\n_6_time_out_counter_reg[12]_i_1 ,\n_7_time_out_counter_reg[12]_i_1 }),
        .S({\n_0_time_out_counter[12]_i_2 ,\n_0_time_out_counter[12]_i_3 ,\n_0_time_out_counter[12]_i_4 ,\n_0_time_out_counter[12]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[16] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\n_0_time_out_counter_reg[12]_i_1 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:1],\n_3_time_out_counter_reg[16]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3:2],\n_6_time_out_counter_reg[16]_i_1 ,\n_7_time_out_counter_reg[16]_i_1 }),
        .S({1'b0,1'b0,\n_0_time_out_counter[16]_i_2 ,\n_0_time_out_counter[16]_i_3 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\n_0_time_out_counter_reg[0]_i_2 ),
        .CO({\n_0_time_out_counter_reg[4]_i_1 ,\n_1_time_out_counter_reg[4]_i_1 ,\n_2_time_out_counter_reg[4]_i_1 ,\n_3_time_out_counter_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[4]_i_1 ,\n_5_time_out_counter_reg[4]_i_1 ,\n_6_time_out_counter_reg[4]_i_1 ,\n_7_time_out_counter_reg[4]_i_1 }),
        .S({\n_0_time_out_counter[4]_i_2 ,\n_0_time_out_counter[4]_i_3 ,\n_0_time_out_counter[4]_i_4 ,\n_0_time_out_counter[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\n_0_time_out_counter_reg[4]_i_1 ),
        .CO({\n_0_time_out_counter_reg[8]_i_1 ,\n_1_time_out_counter_reg[8]_i_1 ,\n_2_time_out_counter_reg[8]_i_1 ,\n_3_time_out_counter_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_time_out_counter_reg[8]_i_1 ,\n_5_time_out_counter_reg[8]_i_1 ,\n_6_time_out_counter_reg[8]_i_1 ,\n_7_time_out_counter_reg[8]_i_1 }),
        .S({\n_0_time_out_counter[8]_i_2 ,\n_0_time_out_counter[8]_i_3 ,\n_0_time_out_counter[8]_i_4 ,\n_0_time_out_counter[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(1'b1),
        .D(n_19_sync_tx_fsm_reset_done_int_cdc_sync),
        .Q(n_0_time_out_wait_bypass_reg),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT4 #(
    .INIT(16'h00AE)) 
     time_tlock_max_i_1__0
       (.I0(n_0_time_tlock_max_reg),
        .I1(n_0_time_tlock_max_i_2__0),
        .I2(n_0_time_tlock_max_i_3__0),
        .I3(reset_time_out),
        .O(n_0_time_tlock_max_i_1__0));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     time_tlock_max_i_2__0
       (.I0(\n_0_time_out_counter[0]_i_8__0 ),
        .I1(n_0_time_tlock_max_i_4__0),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[8]),
        .O(n_0_time_tlock_max_i_2__0));
LUT6 #(
    .INIT(64'hFFFFFFEFFFFFFFFF)) 
     time_tlock_max_i_3__0
       (.I0(n_0_time_tlock_max_i_5__0),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[14]),
        .I4(time_out_counter_reg[15]),
        .I5(time_out_counter_reg[6]),
        .O(n_0_time_tlock_max_i_3__0));
LUT5 #(
    .INIT(32'h00000080)) 
     time_tlock_max_i_4__0
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[16]),
        .O(n_0_time_tlock_max_i_4__0));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT2 #(
    .INIT(4'hB)) 
     time_tlock_max_i_5__0
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[7]),
        .O(n_0_time_tlock_max_i_5__0));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_time_tlock_max_i_1__0),
        .Q(n_0_time_tlock_max_reg),
        .R(1'b0));
LUT5 #(
    .INIT(32'hFFFF0008)) 
     tx_fsm_reset_done_int_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .I2(tx_state[1]),
        .I3(tx_state[2]),
        .I4(O1),
        .O(n_0_tx_fsm_reset_done_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     tx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(1'b1),
        .D(n_0_tx_fsm_reset_done_int_i_1),
        .Q(O1),
        .R(gt_reset));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_10 
       (.I0(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_10 ));
LUT6 #(
    .INIT(64'h0000080000000000)) 
     \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[7]),
        .I1(wait_bypass_count_reg[16]),
        .I2(wait_bypass_count_reg[8]),
        .I3(wait_bypass_count_reg[12]),
        .I4(wait_bypass_count_reg[15]),
        .I5(wait_bypass_count_reg[6]),
        .O(\n_0_wait_bypass_count[0]_i_4 ));
LUT5 #(
    .INIT(32'hDFFFFFFF)) 
     \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[0]),
        .I1(wait_bypass_count_reg[13]),
        .I2(wait_bypass_count_reg[14]),
        .I3(wait_bypass_count_reg[9]),
        .I4(wait_bypass_count_reg[5]),
        .O(\n_0_wait_bypass_count[0]_i_5 ));
LUT4 #(
    .INIT(16'hFFF7)) 
     \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[1]),
        .I1(wait_bypass_count_reg[2]),
        .I2(wait_bypass_count_reg[11]),
        .I3(wait_bypass_count_reg[10]),
        .O(\n_0_wait_bypass_count[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[3]),
        .O(\n_0_wait_bypass_count[0]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_8 
       (.I0(wait_bypass_count_reg[2]),
        .O(\n_0_wait_bypass_count[0]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_9__0 
       (.I0(wait_bypass_count_reg[1]),
        .O(\n_0_wait_bypass_count[0]_i_9__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_2 
       (.I0(wait_bypass_count_reg[15]),
        .O(\n_0_wait_bypass_count[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_3 
       (.I0(wait_bypass_count_reg[14]),
        .O(\n_0_wait_bypass_count[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_4 
       (.I0(wait_bypass_count_reg[13]),
        .O(\n_0_wait_bypass_count[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[12]_i_5 
       (.I0(wait_bypass_count_reg[12]),
        .O(\n_0_wait_bypass_count[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[16]_i_2 
       (.I0(wait_bypass_count_reg[16]),
        .O(\n_0_wait_bypass_count[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_2 
       (.I0(wait_bypass_count_reg[7]),
        .O(\n_0_wait_bypass_count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_3 
       (.I0(wait_bypass_count_reg[6]),
        .O(\n_0_wait_bypass_count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_4 
       (.I0(wait_bypass_count_reg[5]),
        .O(\n_0_wait_bypass_count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[4]_i_5 
       (.I0(wait_bypass_count_reg[4]),
        .O(\n_0_wait_bypass_count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_2 
       (.I0(wait_bypass_count_reg[11]),
        .O(\n_0_wait_bypass_count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_3 
       (.I0(wait_bypass_count_reg[10]),
        .O(\n_0_wait_bypass_count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_4 
       (.I0(wait_bypass_count_reg[9]),
        .O(\n_0_wait_bypass_count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[8]_i_5 
       (.I0(wait_bypass_count_reg[8]),
        .O(\n_0_wait_bypass_count[8]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[0]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\n_0_wait_bypass_count_reg[0]_i_3 ,\n_1_wait_bypass_count_reg[0]_i_3 ,\n_2_wait_bypass_count_reg[0]_i_3 ,\n_3_wait_bypass_count_reg[0]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_wait_bypass_count_reg[0]_i_3 ,\n_5_wait_bypass_count_reg[0]_i_3 ,\n_6_wait_bypass_count_reg[0]_i_3 ,\n_7_wait_bypass_count_reg[0]_i_3 }),
        .S({\n_0_wait_bypass_count[0]_i_7 ,\n_0_wait_bypass_count[0]_i_8 ,\n_0_wait_bypass_count[0]_i_9__0 ,\n_0_wait_bypass_count[0]_i_10 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[10]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[11]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[12]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[8]_i_1 ),
        .CO({\n_0_wait_bypass_count_reg[12]_i_1 ,\n_1_wait_bypass_count_reg[12]_i_1 ,\n_2_wait_bypass_count_reg[12]_i_1 ,\n_3_wait_bypass_count_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[12]_i_1 ,\n_5_wait_bypass_count_reg[12]_i_1 ,\n_6_wait_bypass_count_reg[12]_i_1 ,\n_7_wait_bypass_count_reg[12]_i_1 }),
        .S({\n_0_wait_bypass_count[12]_i_2 ,\n_0_wait_bypass_count[12]_i_3 ,\n_0_wait_bypass_count[12]_i_4 ,\n_0_wait_bypass_count[12]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[13] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[13]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[14] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[14]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[15] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[15]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[16] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[16]_i_1 ),
        .Q(wait_bypass_count_reg[16]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[12]_i_1 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\n_7_wait_bypass_count_reg[16]_i_1 }),
        .S({1'b0,1'b0,1'b0,\n_0_wait_bypass_count[16]_i_2 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[1]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[2]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[3]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[4]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[0]_i_3 ),
        .CO({\n_0_wait_bypass_count_reg[4]_i_1 ,\n_1_wait_bypass_count_reg[4]_i_1 ,\n_2_wait_bypass_count_reg[4]_i_1 ,\n_3_wait_bypass_count_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[4]_i_1 ,\n_5_wait_bypass_count_reg[4]_i_1 ,\n_6_wait_bypass_count_reg[4]_i_1 ,\n_7_wait_bypass_count_reg[4]_i_1 }),
        .S({\n_0_wait_bypass_count[4]_i_2 ,\n_0_wait_bypass_count[4]_i_3 ,\n_0_wait_bypass_count[4]_i_4 ,\n_0_wait_bypass_count[4]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[5]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[6]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[7]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[8]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[4]_i_1 ),
        .CO({\n_0_wait_bypass_count_reg[8]_i_1 ,\n_1_wait_bypass_count_reg[8]_i_1 ,\n_2_wait_bypass_count_reg[8]_i_1 ,\n_3_wait_bypass_count_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_wait_bypass_count_reg[8]_i_1 ,\n_5_wait_bypass_count_reg[8]_i_1 ,\n_6_wait_bypass_count_reg[8]_i_1 ,\n_7_wait_bypass_count_reg[8]_i_1 }),
        .S({\n_0_wait_bypass_count[8]_i_2 ,\n_0_wait_bypass_count[8]_i_3 ,\n_0_wait_bypass_count[8]_i_4 ,\n_0_wait_bypass_count[8]_i_5 }));
FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(n_20_sync_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[9]),
        .R(n_20_sync_run_phase_alignment_int_cdc_sync));
LUT4 #(
    .INIT(16'h002A)) 
     \wait_time_cnt[0]_i_1 
       (.I0(tx_state[0]),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(tx_state[3]),
        .O(clear));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_2 
       (.I0(wait_time_done),
        .O(sel));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_4 
       (.I0(wait_time_cnt_reg[3]),
        .O(\n_0_wait_time_cnt[0]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_5 
       (.I0(wait_time_cnt_reg[2]),
        .O(\n_0_wait_time_cnt[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_6 
       (.I0(wait_time_cnt_reg[1]),
        .O(\n_0_wait_time_cnt[0]_i_6 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_7 
       (.I0(wait_time_cnt_reg[0]),
        .O(\n_0_wait_time_cnt[0]_i_7 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_2 
       (.I0(wait_time_cnt_reg[15]),
        .O(\n_0_wait_time_cnt[12]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_3 
       (.I0(wait_time_cnt_reg[14]),
        .O(\n_0_wait_time_cnt[12]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_4 
       (.I0(wait_time_cnt_reg[13]),
        .O(\n_0_wait_time_cnt[12]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[12]_i_5 
       (.I0(wait_time_cnt_reg[12]),
        .O(\n_0_wait_time_cnt[12]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_2 
       (.I0(wait_time_cnt_reg[7]),
        .O(\n_0_wait_time_cnt[4]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .O(\n_0_wait_time_cnt[4]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_4 
       (.I0(wait_time_cnt_reg[5]),
        .O(\n_0_wait_time_cnt[4]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[4]_i_5 
       (.I0(wait_time_cnt_reg[4]),
        .O(\n_0_wait_time_cnt[4]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_2 
       (.I0(wait_time_cnt_reg[11]),
        .O(\n_0_wait_time_cnt[8]_i_2 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_3 
       (.I0(wait_time_cnt_reg[10]),
        .O(\n_0_wait_time_cnt[8]_i_3 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_4 
       (.I0(wait_time_cnt_reg[9]),
        .O(\n_0_wait_time_cnt[8]_i_4 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[8]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .O(\n_0_wait_time_cnt[8]_i_5 ));
FDRE \wait_time_cnt_reg[0] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_7_wait_time_cnt_reg[0]_i_3 ),
        .Q(wait_time_cnt_reg[0]),
        .R(clear));
CARRY4 \wait_time_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\n_0_wait_time_cnt_reg[0]_i_3 ,\n_1_wait_time_cnt_reg[0]_i_3 ,\n_2_wait_time_cnt_reg[0]_i_3 ,\n_3_wait_time_cnt_reg[0]_i_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[0]_i_3 ,\n_5_wait_time_cnt_reg[0]_i_3 ,\n_6_wait_time_cnt_reg[0]_i_3 ,\n_7_wait_time_cnt_reg[0]_i_3 }),
        .S({\n_0_wait_time_cnt[0]_i_4 ,\n_0_wait_time_cnt[0]_i_5 ,\n_0_wait_time_cnt[0]_i_6 ,\n_0_wait_time_cnt[0]_i_7 }));
FDSE \wait_time_cnt_reg[10] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_5_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[10]),
        .S(clear));
FDRE \wait_time_cnt_reg[11] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_4_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[11]),
        .R(clear));
FDRE \wait_time_cnt_reg[12] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_7_wait_time_cnt_reg[12]_i_1 ),
        .Q(wait_time_cnt_reg[12]),
        .R(clear));
CARRY4 \wait_time_cnt_reg[12]_i_1 
       (.CI(\n_0_wait_time_cnt_reg[8]_i_1 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\n_1_wait_time_cnt_reg[12]_i_1 ,\n_2_wait_time_cnt_reg[12]_i_1 ,\n_3_wait_time_cnt_reg[12]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[12]_i_1 ,\n_5_wait_time_cnt_reg[12]_i_1 ,\n_6_wait_time_cnt_reg[12]_i_1 ,\n_7_wait_time_cnt_reg[12]_i_1 }),
        .S({\n_0_wait_time_cnt[12]_i_2 ,\n_0_wait_time_cnt[12]_i_3 ,\n_0_wait_time_cnt[12]_i_4 ,\n_0_wait_time_cnt[12]_i_5 }));
FDRE \wait_time_cnt_reg[13] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_6_wait_time_cnt_reg[12]_i_1 ),
        .Q(wait_time_cnt_reg[13]),
        .R(clear));
FDRE \wait_time_cnt_reg[14] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_5_wait_time_cnt_reg[12]_i_1 ),
        .Q(wait_time_cnt_reg[14]),
        .R(clear));
FDRE \wait_time_cnt_reg[15] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_4_wait_time_cnt_reg[12]_i_1 ),
        .Q(wait_time_cnt_reg[15]),
        .R(clear));
FDSE \wait_time_cnt_reg[1] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_6_wait_time_cnt_reg[0]_i_3 ),
        .Q(wait_time_cnt_reg[1]),
        .S(clear));
FDRE \wait_time_cnt_reg[2] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_5_wait_time_cnt_reg[0]_i_3 ),
        .Q(wait_time_cnt_reg[2]),
        .R(clear));
FDRE \wait_time_cnt_reg[3] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_4_wait_time_cnt_reg[0]_i_3 ),
        .Q(wait_time_cnt_reg[3]),
        .R(clear));
FDRE \wait_time_cnt_reg[4] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_7_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[4]),
        .R(clear));
CARRY4 \wait_time_cnt_reg[4]_i_1 
       (.CI(\n_0_wait_time_cnt_reg[0]_i_3 ),
        .CO({\n_0_wait_time_cnt_reg[4]_i_1 ,\n_1_wait_time_cnt_reg[4]_i_1 ,\n_2_wait_time_cnt_reg[4]_i_1 ,\n_3_wait_time_cnt_reg[4]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[4]_i_1 ,\n_5_wait_time_cnt_reg[4]_i_1 ,\n_6_wait_time_cnt_reg[4]_i_1 ,\n_7_wait_time_cnt_reg[4]_i_1 }),
        .S({\n_0_wait_time_cnt[4]_i_2 ,\n_0_wait_time_cnt[4]_i_3 ,\n_0_wait_time_cnt[4]_i_4 ,\n_0_wait_time_cnt[4]_i_5 }));
FDSE \wait_time_cnt_reg[5] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_6_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[5]),
        .S(clear));
FDSE \wait_time_cnt_reg[6] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_5_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[6]),
        .S(clear));
FDSE \wait_time_cnt_reg[7] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_4_wait_time_cnt_reg[4]_i_1 ),
        .Q(wait_time_cnt_reg[7]),
        .S(clear));
FDRE \wait_time_cnt_reg[8] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_7_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[8]),
        .R(clear));
CARRY4 \wait_time_cnt_reg[8]_i_1 
       (.CI(\n_0_wait_time_cnt_reg[4]_i_1 ),
        .CO({\n_0_wait_time_cnt_reg[8]_i_1 ,\n_1_wait_time_cnt_reg[8]_i_1 ,\n_2_wait_time_cnt_reg[8]_i_1 ,\n_3_wait_time_cnt_reg[8]_i_1 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\n_4_wait_time_cnt_reg[8]_i_1 ,\n_5_wait_time_cnt_reg[8]_i_1 ,\n_6_wait_time_cnt_reg[8]_i_1 ,\n_7_wait_time_cnt_reg[8]_i_1 }),
        .S({\n_0_wait_time_cnt[8]_i_2 ,\n_0_wait_time_cnt[8]_i_3 ,\n_0_wait_time_cnt[8]_i_4 ,\n_0_wait_time_cnt[8]_i_5 }));
FDRE \wait_time_cnt_reg[9] 
       (.C(init_clk_in),
        .CE(sel),
        .D(\n_6_wait_time_cnt_reg[8]_i_1 ),
        .Q(wait_time_cnt_reg[9]),
        .R(clear));
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
