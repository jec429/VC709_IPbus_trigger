// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Fri Jul 18 14:10:44 2014
// Host        : PC210 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/aurora_8b10b_0/aurora_8b10b_0_funcsim.v
// Design      : aurora_8b10b_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* core_generation_info = "aurora_8b10b_0,aurora_8b10b_v10_1,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ1,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=1,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=45000,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=90000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *) 
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
    gt_qpllclk_quad2_in,
    gt_qpllrefclk_quad2_in,
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
  input gt_qpllclk_quad2_in;
  input gt_qpllrefclk_quad2_in;
  output tx_out_clk;
  input pll_not_locked;

  wire channel_up;
  wire do_cc;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire frame_err;
  wire gt0_qplllock_in;
  wire gt0_qpllrefclklost_in;
  wire gt0_qpllreset_out;
  wire gt_qpllclk_quad2_in;
  wire gt_qpllrefclk_quad2_in;
  wire gt_refclk1;
  wire gt_reset;
  wire hard_err;
  wire init_clk_in;
  wire lane_up;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [0:31]m_axi_rx_tdata;
  wire [0:3]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire pll_not_locked;
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
  wire warn_cc;

(* SIM_GTRESET_SPEEDUP = "FALSE" *) 
   (* core_generation_info = "aurora_8b10b_0,aurora_8b10b_v10_1,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ1,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=1,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=45000,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=90000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *) 
   aurora_8b10b_0aurora_8b10b_0_core inst
       (.channel_up(channel_up),
        .do_cc(do_cc),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .frame_err(frame_err),
        .gt0_qplllock_in(gt0_qplllock_in),
        .gt0_qpllrefclklost_in(gt0_qpllrefclklost_in),
        .gt0_qpllreset_out(gt0_qpllreset_out),
        .gt_qpllclk_quad2_in(gt_qpllclk_quad2_in),
        .gt_qpllrefclk_quad2_in(gt_qpllrefclk_quad2_in),
        .gt_refclk1(gt_refclk1),
        .gt_reset(gt_reset),
        .hard_err(hard_err),
        .init_clk_in(init_clk_in),
        .lane_up(lane_up),
        .link_reset_out(link_reset_out),
        .loopback(loopback),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep(m_axi_rx_tkeep),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .pll_not_locked(pll_not_locked),
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
        .soft_err(soft_err),
        .sync_clk(sync_clk),
        .sys_reset_out(sys_reset_out),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .tx_resetdone_out(tx_resetdone_out),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk),
        .warn_cc(warn_cc));
endmodule

module aurora_8b10b_0aurora_8b10b_0_AURORA_LANE_4BYTE
   (O1,
    s_out_d1_cdc_to,
    s_out_d2,
    s_out_d3,
    s_out_d4,
    s_out_d5,
    s_out_d6,
    s_out_d7,
    out,
    O2,
    O3,
    O4,
    O5,
    O6,
    ena_comma_align_i,
    TXCHARISK,
    O7,
    O8,
    got_v_i,
    link_reset_out,
    rx_polarity_i,
    D,
    O9,
    hard_err_i,
    O10,
    Q,
    O11,
    O12,
    O13,
    O14,
    O15,
    TXDATA,
    O16,
    O17,
    O18,
    O19,
    O20,
    S1,
    S11_in,
    reset_lanes_i,
    user_clk,
    gen_cc_i,
    I1,
    gen_scp_i,
    gen_a_i,
    I2,
    I3,
    hard_err_gt0,
    init_clk_in,
    I4,
    I5,
    in_frame_c,
    rx_realign_i,
    RXDISPERR,
    I6,
    RXCHARISK,
    RXDATA,
    I7,
    I8,
    I9,
    I10,
    I11,
    I12,
    I13,
    I14,
    I15,
    I16,
    I17,
    I18,
    I19);
  output O1;
  output s_out_d1_cdc_to;
  output s_out_d2;
  output s_out_d3;
  output s_out_d4;
  output s_out_d5;
  output s_out_d6;
  output s_out_d7;
  output [1:0]out;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output [1:0]O6;
  output ena_comma_align_i;
  output [3:0]TXCHARISK;
  output O7;
  output O8;
  output got_v_i;
  output link_reset_out;
  output rx_polarity_i;
  output [1:0]D;
  output O9;
  output hard_err_i;
  output O10;
  output [0:0]Q;
  output [7:0]O11;
  output O12;
  output [1:0]O13;
  output [1:0]O14;
  output O15;
  output [31:0]TXDATA;
  output [7:0]O16;
  output [7:0]O17;
  output [7:0]O18;
  output [7:0]O19;
  output [1:0]O20;
  output S1;
  output S11_in;
  input reset_lanes_i;
  input user_clk;
  input gen_cc_i;
  input I1;
  input gen_scp_i;
  input gen_a_i;
  input I2;
  input I3;
  input hard_err_gt0;
  input init_clk_in;
  input I4;
  input I5;
  input [0:1]in_frame_c;
  input rx_realign_i;
  input [1:0]RXDISPERR;
  input I6;
  input [3:0]RXCHARISK;
  input [31:0]RXDATA;
  input [3:0]I7;
  input [1:0]I8;
  input [1:0]I9;
  input [2:0]I10;
  input [3:0]I11;
  input [3:0]I12;
  input [7:0]I13;
  input [7:0]I14;
  input I15;
  input I16;
  input I17;
  input I18;
  input [31:0]I19;

  wire [1:0]D;
  wire GEN_SP;
  wire I1;
  wire [2:0]I10;
  wire [3:0]I11;
  wire [3:0]I12;
  wire [7:0]I13;
  wire [7:0]I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire [31:0]I19;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire [3:0]I7;
  wire [1:0]I8;
  wire [1:0]I9;
  wire O1;
  wire O10;
  wire [7:0]O11;
  wire O12;
  wire [1:0]O13;
  wire [1:0]O14;
  wire O15;
  wire [7:0]O16;
  wire [7:0]O17;
  wire [7:0]O18;
  wire [7:0]O19;
  wire [1:0]O2;
  wire [1:0]O20;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire [1:0]RXDISPERR;
  wire RX_NEG;
  wire S1;
  wire S11_in;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire counter3_r0;
  wire counter4_r0;
  wire ena_comma_align_i;
  wire enable_err_detect_i;
  wire first_v_received_r;
  wire gen_a_i;
  wire gen_cc_i;
  wire gen_scp_i;
  wire gen_spa_i;
  wire got_v_i;
  wire hard_err_gt0;
  wire hard_err_i;
  wire [0:1]in_frame_c;
  wire init_clk_in;
  wire link_reset_out;
  wire n_7_aurora_8b10b_0_lane_init_sm_4byte_i;
  wire [1:0]out;
  wire ready_r;
  wire ready_r0;
  wire reset_lanes_i;
  wire rx_cc_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire s_out_d1_cdc_to;
  wire s_out_d2;
  wire s_out_d3;
  wire s_out_d4;
  wire s_out_d5;
  wire s_out_d6;
  wire s_out_d7;
  wire user_clk;

aurora_8b10b_0aurora_8b10b_0_ERR_DETECT_4BYTE aurora_8b10b_0_err_detect_4byte_i
       (.I1(n_7_aurora_8b10b_0_lane_init_sm_4byte_i),
        .I15(I15),
        .I16(I16),
        .I17(I17),
        .I18(I18),
        .O20(O20),
        .enable_err_detect_i(enable_err_detect_i),
        .hard_err_gt0(hard_err_gt0),
        .hard_err_i(hard_err_i),
        .ready_r0(ready_r0),
        .reset_lanes_i(reset_lanes_i),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_hotplug aurora_8b10b_0_hotplug_i
       (.O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .init_clk_in(init_clk_in),
        .link_reset_out(link_reset_out),
        .out(out),
        .reset_lanes_i(reset_lanes_i),
        .rx_cc_i(rx_cc_i),
        .s_out_d1_cdc_to(s_out_d1_cdc_to),
        .s_out_d2(s_out_d2),
        .s_out_d3(s_out_d3),
        .s_out_d4(s_out_d4),
        .s_out_d5(s_out_d5),
        .s_out_d6(s_out_d6),
        .s_out_d7(s_out_d7),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_LANE_INIT_SM_4BYTE aurora_8b10b_0_lane_init_sm_4byte_i
       (.GEN_SP(GEN_SP),
        .I6(I6),
        .I7(I7),
        .O1(O1),
        .O10(O10),
        .O2(ena_comma_align_i),
        .O3(n_7_aurora_8b10b_0_lane_init_sm_4byte_i),
        .RXCHARISK(RXCHARISK[3:2]),
        .RXDISPERR(RXDISPERR),
        .RX_NEG(RX_NEG),
        .counter3_r0(counter3_r0),
        .counter4_r0(counter4_r0),
        .enable_err_detect_i(enable_err_detect_i),
        .first_v_received_r(first_v_received_r),
        .gen_spa_i(gen_spa_i),
        .ready_r(ready_r),
        .ready_r0(ready_r0),
        .reset_lanes_i(reset_lanes_i),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_SYM_DEC_4BYTE aurora_8b10b_0_sym_dec_4byte_i
       (.D(D),
        .I1(O1),
        .I13(I13),
        .I14(I14),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .O1(O7),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O2(O8),
        .O3(O16),
        .O4(O17),
        .O5(O18),
        .O6(O19),
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
        .got_v_i(got_v_i),
        .in_frame_c(in_frame_c),
        .ready_r(ready_r),
        .rx_cc_i(rx_cc_i),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_SYM_GEN_4BYTE aurora_8b10b_0_sym_gen_4byte_i
       (.GEN_SP(GEN_SP),
        .I1(I1),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I19(I19),
        .I8(I8),
        .I9(I9),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_scp_i(gen_scp_i),
        .gen_spa_i(gen_spa_i),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0aurora_8b10b_0_AXI_TO_LL
   (O1,
    O2,
    user_clk,
    sys_reset_out,
    I1,
    s_axi_tx_tlast,
    s_axi_tx_tvalid,
    tx_dst_rdy);
  output O1;
  output O2;
  input user_clk;
  input sys_reset_out;
  input I1;
  input s_axi_tx_tlast;
  input s_axi_tx_tvalid;
  input tx_dst_rdy;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire O1;
  wire O2;
  wire new_pkt_r;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tvalid;
  wire sys_reset_out;
  wire tx_dst_rdy;
  wire user_clk;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'h2020202000302020)) 
     new_pkt_r_i_1
       (.I0(O1),
        .I1(sys_reset_out),
        .I2(I1),
        .I3(s_axi_tx_tlast),
        .I4(s_axi_tx_tvalid),
        .I5(tx_dst_rdy),
        .O(new_pkt_r));
FDRE new_pkt_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(new_pkt_r),
        .Q(O1),
        .R(\<const0> ));
LUT3 #(
    .INIT(8'hFB)) 
     sof_to_eof_1_r_i_2
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .I2(tx_dst_rdy),
        .O(O2));
endmodule

module aurora_8b10b_0aurora_8b10b_0_CHANNEL_ERR_DETECT
   (soft_err,
    hard_err,
    reset_channel_i,
    user_clk,
    lane_up,
    hard_err_i,
    power_down,
    D);
  output soft_err;
  output hard_err;
  output reset_channel_i;
  input user_clk;
  input lane_up;
  input hard_err_i;
  input power_down;
  input [1:0]D;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire channel_soft_err_c;
  wire hard_err;
  wire hard_err_i;
  wire hard_err_r;
  wire lane_up;
  wire lane_up_r;
  wire n_0_RESET_CHANNEL_i_1;
  wire power_down;
  wire reset_channel_i;
  wire soft_err;
  wire [0:1]soft_err_r;
  wire user_clk;

FDRE #(
    .INIT(1'b1)) 
     CHANNEL_HARD_ERR_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(hard_err_r),
        .Q(hard_err),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'hE)) 
     CHANNEL_SOFT_ERR_i_1
       (.I0(soft_err_r[1]),
        .I1(soft_err_r[0]),
        .O(channel_soft_err_c));
FDRE #(
    .INIT(1'b1)) 
     CHANNEL_SOFT_ERR_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(channel_soft_err_c),
        .Q(soft_err),
        .R(\<const0> ));
GND GND
       (.G(\<const0> ));
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
        .CE(\<const1> ),
        .D(n_0_RESET_CHANNEL_i_1),
        .Q(reset_channel_i),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
FDRE hard_err_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(hard_err_i),
        .Q(hard_err_r),
        .R(\<const0> ));
FDRE lane_up_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(lane_up),
        .Q(lane_up_r),
        .R(\<const0> ));
FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(soft_err_r[0]),
        .R(\<const0> ));
FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(soft_err_r[1]),
        .R(\<const0> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_CHANNEL_INIT_SM
   (reset_lanes_i,
    gen_ver_i,
    wait_for_lane_up_r,
    O1,
    O2,
    SR,
    I5,
    reset_i,
    user_clk,
    got_v_i,
    SS,
    sys_reset_out,
    txver_count_r0,
    in_frame_r,
    in_frame_c,
    I1);
  output reset_lanes_i;
  output gen_ver_i;
  output wait_for_lane_up_r;
  output O1;
  output O2;
  output [0:0]SR;
  output [1:0]I5;
  output reset_i;
  input user_clk;
  input got_v_i;
  input [0:0]SS;
  input sys_reset_out;
  input txver_count_r0;
  input in_frame_r;
  input [0:0]in_frame_c;
  input I1;

  wire \<const0> ;
  wire \<const1> ;
  wire GND_2;
  wire I1;
  wire [1:0]I5;
  wire O1;
  wire O2;
  wire [0:0]SR;
  wire [0:0]SS;
  wire START_RX0;
  wire VCC_2;
  wire all_lanes_v_r;
  wire bad_v_r;
  wire bad_v_r0;
  wire [10:0]free_count_r0;
  wire [0:10]free_count_r_reg__0;
  wire gen_ver_i;
  wire got_first_v_r;
  wire got_v_i;
  wire [0:0]in_frame_c;
  wire in_frame_r;
  wire \n_0_free_count_r[0]_i_2 ;
  wire \n_0_free_count_r[2]_i_2 ;
  wire \n_0_free_count_r[6]_i_1 ;
  wire \n_0_free_count_r[9]_i_1 ;
  wire n_0_got_first_v_r_i_1;
  wire \n_0_rxver_count_r_reg[1]_srl2 ;
  wire \n_0_rxver_count_r_reg[1]_srl2_i_1 ;
  wire \n_0_txver_count_r_reg[6]_srl7 ;
  wire \n_0_v_count_r_reg[14]_srl15 ;
  wire \n_0_verify_watchdog_r_reg[14]_srl15 ;
  wire \n_0_verify_watchdog_r_reg[14]_srl15_i_1 ;
  wire next_ready_c;
  wire next_verify_c;
  wire [15:15]p_2_out;
  wire ready_r;
  wire ready_r2;
  wire reset_i;
  wire reset_lanes_c;
  wire reset_lanes_i;
  wire [2:2]rxver_count_r;
  wire sys_reset_out;
  wire [7:7]txver_count_r;
  wire txver_count_r0;
  wire user_clk;
  wire [15:15]v_count_r;
  wire [15:15]verify_watchdog_r;
  wire wait_for_lane_up_r;

FDRE CHANNEL_UP_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(ready_r2),
        .Q(O1),
        .R(\<const0> ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair136" *) 
   LUT1 #(
    .INIT(2'h1)) 
     FRAME_ERR_i_1
       (.I0(O2),
        .O(SR));
GND GND
       (.G(\<const0> ));
GND GND_1
       (.G(GND_2));
LUT2 #(
    .INIT(4'h8)) 
     \IN_FRAME[0]_i_1 
       (.I0(O2),
        .I1(in_frame_r),
        .O(I5[1]));
(* SOFT_HLUTNM = "soft_lutpair136" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \IN_FRAME[1]_i_1 
       (.I0(O2),
        .I1(in_frame_c),
        .O(I5[0]));
LUT1 #(
    .INIT(2'h1)) 
     START_RX_i_1
       (.I0(wait_for_lane_up_r),
        .O(START_RX0));
FDRE START_RX_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(START_RX0),
        .Q(O2),
        .R(sys_reset_out));
VCC VCC
       (.P(\<const1> ));
VCC VCC_1
       (.P(VCC_2));
FDRE all_lanes_v_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(got_v_i),
        .Q(all_lanes_v_r),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair134" *) 
   LUT3 #(
    .INIT(8'h28)) 
     bad_v_r_i_1
       (.I0(got_first_v_r),
        .I1(v_count_r),
        .I2(all_lanes_v_r),
        .O(bad_v_r0));
FDRE bad_v_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(bad_v_r0),
        .Q(bad_v_r),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair133" *) 
   LUT4 #(
    .INIT(16'hAA9A)) 
     \free_count_r[0]_i_1 
       (.I0(free_count_r_reg__0[0]),
        .I1(free_count_r_reg__0[1]),
        .I2(\n_0_free_count_r[0]_i_2 ),
        .I3(free_count_r_reg__0[2]),
        .O(free_count_r0[10]));
(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \free_count_r[0]_i_2 
       (.I0(\n_0_free_count_r[2]_i_2 ),
        .I1(free_count_r_reg__0[4]),
        .I2(free_count_r_reg__0[3]),
        .I3(free_count_r_reg__0[6]),
        .I4(free_count_r_reg__0[5]),
        .O(\n_0_free_count_r[0]_i_2 ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair137" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \free_count_r[10]_i_1 
       (.I0(free_count_r_reg__0[10]),
        .O(free_count_r0[0]));
(* SOFT_HLUTNM = "soft_lutpair133" *) 
   LUT3 #(
    .INIT(8'h9A)) 
     \free_count_r[1]_i_1 
       (.I0(free_count_r_reg__0[1]),
        .I1(free_count_r_reg__0[2]),
        .I2(\n_0_free_count_r[0]_i_2 ),
        .O(free_count_r0[9]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
     \free_count_r[2]_i_1 
       (.I0(free_count_r_reg__0[2]),
        .I1(free_count_r_reg__0[5]),
        .I2(free_count_r_reg__0[6]),
        .I3(free_count_r_reg__0[3]),
        .I4(free_count_r_reg__0[4]),
        .I5(\n_0_free_count_r[2]_i_2 ),
        .O(free_count_r0[8]));
(* SOFT_HLUTNM = "soft_lutpair135" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \free_count_r[2]_i_2 
       (.I0(free_count_r_reg__0[7]),
        .I1(free_count_r_reg__0[10]),
        .I2(free_count_r_reg__0[9]),
        .I3(free_count_r_reg__0[8]),
        .O(\n_0_free_count_r[2]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair130" *) 
   LUT5 #(
    .INIT(32'hAAAAAAA9)) 
     \free_count_r[3]_i_1 
       (.I0(free_count_r_reg__0[3]),
        .I1(free_count_r_reg__0[4]),
        .I2(\n_0_free_count_r[2]_i_2 ),
        .I3(free_count_r_reg__0[6]),
        .I4(free_count_r_reg__0[5]),
        .O(free_count_r0[7]));
LUT4 #(
    .INIT(16'hAAA9)) 
     \free_count_r[4]_i_1 
       (.I0(free_count_r_reg__0[4]),
        .I1(free_count_r_reg__0[5]),
        .I2(free_count_r_reg__0[6]),
        .I3(\n_0_free_count_r[2]_i_2 ),
        .O(free_count_r0[6]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
     \free_count_r[5]_i_1 
       (.I0(free_count_r_reg__0[5]),
        .I1(free_count_r_reg__0[7]),
        .I2(free_count_r_reg__0[10]),
        .I3(free_count_r_reg__0[9]),
        .I4(free_count_r_reg__0[8]),
        .I5(free_count_r_reg__0[6]),
        .O(free_count_r0[5]));
(* SOFT_HLUTNM = "soft_lutpair131" *) 
   LUT5 #(
    .INIT(32'hAAAAAAA9)) 
     \free_count_r[6]_i_1 
       (.I0(free_count_r_reg__0[6]),
        .I1(free_count_r_reg__0[8]),
        .I2(free_count_r_reg__0[9]),
        .I3(free_count_r_reg__0[10]),
        .I4(free_count_r_reg__0[7]),
        .O(\n_0_free_count_r[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair131" *) 
   LUT4 #(
    .INIT(16'hAAA9)) 
     \free_count_r[7]_i_1 
       (.I0(free_count_r_reg__0[7]),
        .I1(free_count_r_reg__0[10]),
        .I2(free_count_r_reg__0[9]),
        .I3(free_count_r_reg__0[8]),
        .O(free_count_r0[3]));
(* SOFT_HLUTNM = "soft_lutpair135" *) 
   LUT3 #(
    .INIT(8'hE1)) 
     \free_count_r[8]_i_1 
       (.I0(free_count_r_reg__0[10]),
        .I1(free_count_r_reg__0[9]),
        .I2(free_count_r_reg__0[8]),
        .O(free_count_r0[2]));
(* SOFT_HLUTNM = "soft_lutpair137" *) 
   LUT2 #(
    .INIT(4'h9)) 
     \free_count_r[9]_i_1 
       (.I0(free_count_r_reg__0[10]),
        .I1(free_count_r_reg__0[9]),
        .O(\n_0_free_count_r[9]_i_1 ));
(* counter = "26" *) 
   FDSE \free_count_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(free_count_r0[10]),
        .Q(free_count_r_reg__0[0]),
        .S(SS));
(* counter = "26" *) 
   FDSE \free_count_r_reg[10] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(free_count_r0[0]),
        .Q(free_count_r_reg__0[10]),
        .S(SS));
(* counter = "26" *) 
   FDSE \free_count_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(free_count_r0[9]),
        .Q(free_count_r_reg__0[1]),
        .S(SS));
(* counter = "26" *) 
   FDSE \free_count_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(free_count_r0[8]),
        .Q(free_count_r_reg__0[2]),
        .S(SS));
(* counter = "26" *) 
   FDSE \free_count_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(free_count_r0[7]),
        .Q(free_count_r_reg__0[3]),
        .S(SS));
(* counter = "26" *) 
   FDSE \free_count_r_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(free_count_r0[6]),
        .Q(free_count_r_reg__0[4]),
        .S(SS));
(* counter = "26" *) 
   FDSE \free_count_r_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(free_count_r0[5]),
        .Q(free_count_r_reg__0[5]),
        .S(SS));
(* counter = "26" *) 
   FDSE \free_count_r_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_free_count_r[6]_i_1 ),
        .Q(free_count_r_reg__0[6]),
        .S(SS));
(* counter = "26" *) 
   FDSE \free_count_r_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(free_count_r0[3]),
        .Q(free_count_r_reg__0[7]),
        .S(SS));
(* counter = "26" *) 
   FDSE \free_count_r_reg[8] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(free_count_r0[2]),
        .Q(free_count_r_reg__0[8]),
        .S(SS));
(* counter = "26" *) 
   FDSE \free_count_r_reg[9] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_free_count_r[9]_i_1 ),
        .Q(free_count_r_reg__0[9]),
        .S(SS));
LUT1 #(
    .INIT(2'h1)) 
     gen_cc_flop_0_i_i_1
       (.I0(O1),
        .O(reset_i));
LUT3 #(
    .INIT(8'hA8)) 
     got_first_v_r_i_1
       (.I0(gen_ver_i),
        .I1(got_first_v_r),
        .I2(all_lanes_v_r),
        .O(n_0_got_first_v_r_i_1));
FDRE got_first_v_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_0_got_first_v_r_i_1),
        .Q(got_first_v_r),
        .R(\<const0> ));
FDRE ready_r2_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(ready_r),
        .Q(ready_r2),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair132" *) 
   LUT4 #(
    .INIT(16'hEAAA)) 
     ready_r_i_1__0
       (.I0(ready_r),
        .I1(rxver_count_r),
        .I2(txver_count_r),
        .I3(gen_ver_i),
        .O(next_ready_c));
FDRE ready_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(next_ready_c),
        .Q(ready_r),
        .R(SS));
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b1)) 
     reset_lanes_flop_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(reset_lanes_c),
        .Q(reset_lanes_i),
        .R(GND_2));
LUT5 #(
    .INIT(32'hFFFFF200)) 
     reset_lanes_flop_i_i_1
       (.I0(bad_v_r),
        .I1(rxver_count_r),
        .I2(verify_watchdog_r),
        .I3(gen_ver_i),
        .I4(I1),
        .O(reset_lanes_c));
(* srl_bus_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/rxver_count_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 " *) 
   SRL16E \rxver_count_r_reg[1]_srl2 
       (.A0(\<const1> ),
        .A1(\<const0> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\n_0_rxver_count_r_reg[1]_srl2_i_1 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\n_0_rxver_count_r_reg[1]_srl2 ));
LUT3 #(
    .INIT(8'h8F)) 
     \rxver_count_r_reg[1]_srl2_i_1 
       (.I0(v_count_r),
        .I1(all_lanes_v_r),
        .I2(gen_ver_i),
        .O(\n_0_rxver_count_r_reg[1]_srl2_i_1 ));
FDRE \rxver_count_r_reg[2] 
       (.C(user_clk),
        .CE(\n_0_rxver_count_r_reg[1]_srl2_i_1 ),
        .D(\n_0_rxver_count_r_reg[1]_srl2 ),
        .Q(rxver_count_r),
        .R(\<const0> ));
(* srl_bus_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/txver_count_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 " *) 
   SRL16E \txver_count_r_reg[6]_srl7 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(txver_count_r0),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\n_0_txver_count_r_reg[6]_srl7 ));
FDRE \txver_count_r_reg[7] 
       (.C(user_clk),
        .CE(txver_count_r0),
        .D(\n_0_txver_count_r_reg[6]_srl7 ),
        .Q(txver_count_r),
        .R(\<const0> ));
(* srl_bus_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/v_count_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/v_count_r_reg[14]_srl15 " *) 
   SRL16E \v_count_r_reg[14]_srl15 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const1> ),
        .A3(\<const1> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(p_2_out),
        .Q(\n_0_v_count_r_reg[14]_srl15 ));
(* SOFT_HLUTNM = "soft_lutpair134" *) 
   LUT4 #(
    .INIT(16'h8F88)) 
     \v_count_r_reg[14]_srl15_i_1 
       (.I0(v_count_r),
        .I1(gen_ver_i),
        .I2(got_first_v_r),
        .I3(all_lanes_v_r),
        .O(p_2_out));
FDRE \v_count_r_reg[15] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_v_count_r_reg[14]_srl15 ),
        .Q(v_count_r),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair132" *) 
   LUT4 #(
    .INIT(16'hAEEE)) 
     verify_r_i_2
       (.I0(wait_for_lane_up_r),
        .I1(gen_ver_i),
        .I2(rxver_count_r),
        .I3(txver_count_r),
        .O(next_verify_c));
FDRE verify_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(next_verify_c),
        .Q(gen_ver_i),
        .R(SS));
(* srl_bus_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 " *) 
   SRL16E \verify_watchdog_r_reg[14]_srl15 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const1> ),
        .A3(\<const1> ),
        .CE(\n_0_verify_watchdog_r_reg[14]_srl15_i_1 ),
        .CLK(user_clk),
        .D(gen_ver_i),
        .Q(\n_0_verify_watchdog_r_reg[14]_srl15 ));
LUT5 #(
    .INIT(32'h0100FFFF)) 
     \verify_watchdog_r_reg[14]_srl15_i_1 
       (.I0(free_count_r_reg__0[1]),
        .I1(free_count_r_reg__0[0]),
        .I2(free_count_r_reg__0[2]),
        .I3(\n_0_free_count_r[0]_i_2 ),
        .I4(gen_ver_i),
        .O(\n_0_verify_watchdog_r_reg[14]_srl15_i_1 ));
FDRE \verify_watchdog_r_reg[15] 
       (.C(user_clk),
        .CE(\n_0_verify_watchdog_r_reg[14]_srl15_i_1 ),
        .D(\n_0_verify_watchdog_r_reg[14]_srl15 ),
        .Q(verify_watchdog_r),
        .R(\<const0> ));
FDRE wait_for_lane_up_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(SS),
        .Q(wait_for_lane_up_r),
        .R(\<const0> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_ERR_DETECT_4BYTE
   (ready_r0,
    hard_err_i,
    O20,
    I1,
    user_clk,
    hard_err_gt0,
    reset_lanes_i,
    enable_err_detect_i,
    I15,
    I16,
    I17,
    I18);
  output ready_r0;
  output hard_err_i;
  output [1:0]O20;
  input I1;
  input user_clk;
  input hard_err_gt0;
  input reset_lanes_i;
  input enable_err_detect_i;
  input I15;
  input I16;
  input I17;
  input I18;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire [1:0]O20;
  wire SOFT_ERR0;
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
  wire next_good_code_c;
  wire next_soft_err_c;
  wire next_start_c;
  wire [3:0]p_0_in__0;
  wire p_1_in11_in;
  wire ready_r0;
  wire reset_lanes_i;
  wire [0:3]soft_err_r;
  wire start_r;
  wire user_clk;

GND GND
       (.G(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \SOFT_ERR[0]_i_1 
       (.I0(soft_err_r[1]),
        .I1(soft_err_r[0]),
        .O(SOFT_ERR0));
LUT2 #(
    .INIT(4'hE)) 
     \SOFT_ERR[1]_i_1 
       (.I0(soft_err_r[3]),
        .I1(soft_err_r[2]),
        .O(\n_0_SOFT_ERR[1]_i_1 ));
FDRE \SOFT_ERR_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(SOFT_ERR0),
        .Q(O20[1]),
        .R(\<const0> ));
FDRE \SOFT_ERR_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_SOFT_ERR[1]_i_1 ),
        .Q(O20[0]),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT4 #(
    .INIT(16'hFFAE)) 
     align_r_i_1
       (.I0(reset_lanes_i),
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
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     cnt_good_code_r_i_2
       (.I0(soft_err_r[0]),
        .I1(soft_err_r[1]),
        .I2(soft_err_r[2]),
        .I3(soft_err_r[3]),
        .O(n_0_cnt_good_code_r_i_2));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'h80)) 
     cnt_good_code_r_i_3
       (.I0(good_cnt_r_reg__0[2]),
        .I1(good_cnt_r_reg__0[1]),
        .I2(good_cnt_r_reg__0[0]),
        .O(n_0_cnt_good_code_r_i_3));
FDRE cnt_good_code_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
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
        .CE(\<const1> ),
        .D(next_soft_err_c),
        .Q(cnt_soft_err_r),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT5 #(
    .INIT(32'hAAAA5AA4)) 
     \err_cnt_r[0]_i_1 
       (.I0(err_cnt_r[0]),
        .I1(err_cnt_r[1]),
        .I2(cnt_soft_err_r),
        .I3(\n_0_err_cnt_r[2]_i_2 ),
        .I4(p_1_in11_in),
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
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT5 #(
    .INIT(32'hFFFF8000)) 
     \err_cnt_r[2]_i_1 
       (.I0(err_cnt_r[0]),
        .I1(err_cnt_r[1]),
        .I2(cnt_soft_err_r),
        .I3(\n_0_err_cnt_r[2]_i_2 ),
        .I4(p_1_in11_in),
        .O(\n_0_err_cnt_r[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
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
        .CE(\<const1> ),
        .D(\n_0_err_cnt_r[0]_i_1 ),
        .Q(err_cnt_r[0]),
        .R(I1));
FDRE \err_cnt_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_err_cnt_r[1]_i_1 ),
        .Q(err_cnt_r[1]),
        .R(I1));
FDRE \err_cnt_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_err_cnt_r[2]_i_1 ),
        .Q(p_1_in11_in),
        .R(I1));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \good_cnt_r[0]_i_1 
       (.I0(good_cnt_r_reg__0[0]),
        .O(p_0_in__0[0]));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \good_cnt_r[1]_i_1 
       (.I0(good_cnt_r_reg__0[0]),
        .I1(good_cnt_r_reg__0[1]),
        .O(p_0_in__0[1]));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \good_cnt_r[2]_i_1 
       (.I0(good_cnt_r_reg__0[0]),
        .I1(good_cnt_r_reg__0[1]),
        .I2(good_cnt_r_reg__0[2]),
        .O(p_0_in__0[2]));
LUT4 #(
    .INIT(16'hEFFF)) 
     \good_cnt_r[3]_i_1 
       (.I0(start_r),
        .I1(cnt_soft_err_r),
        .I2(enable_err_detect_i),
        .I3(cnt_good_code_r),
        .O(\n_0_good_cnt_r[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \good_cnt_r[3]_i_2 
       (.I0(good_cnt_r_reg__0[3]),
        .I1(good_cnt_r_reg__0[0]),
        .I2(good_cnt_r_reg__0[1]),
        .I3(good_cnt_r_reg__0[2]),
        .O(p_0_in__0[3]));
(* counter = "14" *) 
   FDRE \good_cnt_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_0_in__0[0]),
        .Q(good_cnt_r_reg__0[0]),
        .R(\n_0_good_cnt_r[3]_i_1 ));
(* counter = "14" *) 
   FDRE \good_cnt_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_0_in__0[1]),
        .Q(good_cnt_r_reg__0[1]),
        .R(\n_0_good_cnt_r[3]_i_1 ));
(* counter = "14" *) 
   FDRE \good_cnt_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_0_in__0[2]),
        .Q(good_cnt_r_reg__0[2]),
        .R(\n_0_good_cnt_r[3]_i_1 ));
(* counter = "14" *) 
   FDRE \good_cnt_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_0_in__0[3]),
        .Q(good_cnt_r_reg__0[3]),
        .R(\n_0_good_cnt_r[3]_i_1 ));
FDRE hard_err_frm_soft_err_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_1_in11_in),
        .Q(hard_err_frm_soft_err),
        .R(I1));
FDRE hard_err_gt_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(hard_err_gt0),
        .Q(hard_err_gt),
        .R(I1));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     hard_err_r_i_1
       (.I0(hard_err_gt),
        .I1(hard_err_frm_soft_err),
        .I2(p_1_in11_in),
        .O(hard_err_i));
FDRE \soft_err_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I15),
        .Q(soft_err_r[0]),
        .R(I1));
FDRE \soft_err_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I16),
        .Q(soft_err_r[1]),
        .R(I1));
FDRE \soft_err_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I17),
        .Q(soft_err_r[2]),
        .R(I1));
FDRE \soft_err_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I18),
        .Q(soft_err_r[3]),
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
        .CE(\<const1> ),
        .D(next_start_c),
        .Q(start_r),
        .S(I1));
endmodule

module aurora_8b10b_0aurora_8b10b_0_GLOBAL_LOGIC
   (reset_lanes_i,
    I10,
    gen_a_i,
    I12,
    I11,
    wait_for_lane_up_r,
    O1,
    start_rx_i,
    soft_err,
    hard_err,
    reset_channel_i,
    SR,
    I5,
    reset_i,
    user_clk,
    got_v_i,
    SS,
    sys_reset_out,
    lane_up,
    hard_err_i,
    in_frame_r,
    in_frame_c,
    I1,
    power_down,
    D);
  output reset_lanes_i;
  output [2:0]I10;
  output gen_a_i;
  output [3:0]I12;
  output [3:0]I11;
  output wait_for_lane_up_r;
  output O1;
  output start_rx_i;
  output soft_err;
  output hard_err;
  output reset_channel_i;
  output [0:0]SR;
  output [1:0]I5;
  output reset_i;
  input user_clk;
  input got_v_i;
  input [0:0]SS;
  input sys_reset_out;
  input lane_up;
  input hard_err_i;
  input in_frame_r;
  input [0:0]in_frame_c;
  input I1;
  input power_down;
  input [1:0]D;

  wire [1:0]D;
  wire I1;
  wire [2:0]I10;
  wire [3:0]I11;
  wire [3:0]I12;
  wire [1:0]I5;
  wire O1;
  wire [0:0]SR;
  wire [0:0]SS;
  wire gen_a_i;
  wire gen_ver_i;
  wire got_v_i;
  wire hard_err;
  wire hard_err_i;
  wire [0:0]in_frame_c;
  wire in_frame_r;
  wire lane_up;
  wire power_down;
  wire reset_channel_i;
  wire reset_i;
  wire reset_lanes_i;
  wire soft_err;
  wire start_rx_i;
  wire sys_reset_out;
  wire txver_count_r0;
  wire user_clk;
  wire wait_for_lane_up_r;

aurora_8b10b_0aurora_8b10b_0_CHANNEL_ERR_DETECT channel_err_detect_i
       (.D(D),
        .hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .lane_up(lane_up),
        .power_down(power_down),
        .reset_channel_i(reset_channel_i),
        .soft_err(soft_err),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_CHANNEL_INIT_SM channel_init_sm_i
       (.I1(I1),
        .I5(I5),
        .O1(O1),
        .O2(start_rx_i),
        .SR(SR),
        .SS(SS),
        .gen_ver_i(gen_ver_i),
        .got_v_i(got_v_i),
        .in_frame_c(in_frame_c),
        .in_frame_r(in_frame_r),
        .reset_i(reset_i),
        .reset_lanes_i(reset_lanes_i),
        .sys_reset_out(sys_reset_out),
        .txver_count_r0(txver_count_r0),
        .user_clk(user_clk),
        .wait_for_lane_up_r(wait_for_lane_up_r));
aurora_8b10b_0aurora_8b10b_0_IDLE_AND_VER_GEN idle_and_ver_gen_i
       (.I10(I10),
        .I11(I11),
        .I12(I12),
        .gen_a_i(gen_a_i),
        .gen_ver_i(gen_ver_i),
        .sys_reset_out(sys_reset_out),
        .txver_count_r0(txver_count_r0),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0aurora_8b10b_0_GT_WRAPPER
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
    tx_lock,
    drprdy_out,
    txn,
    txp,
    rx_realign_i,
    tx_out_clk,
    drpdo_out,
    RXDATA,
    D,
    RXCHARISK,
    RXDISPERR,
    tx_resetdone_out,
    rx_resetdone_out,
    O90,
    O91,
    hard_err_gt0,
    O92,
    O93,
    O94,
    O95,
    O96,
    O97,
    O98,
    O99,
    O100,
    init_clk_in,
    drpclk_in,
    drpen_in,
    drpwe_in,
    gt_refclk1,
    rxn,
    rxp,
    gt_qpllclk_quad2_in,
    gt_qpllrefclk_quad2_in,
    ena_comma_align_i,
    rx_polarity_i,
    sync_clk,
    user_clk,
    power_down,
    drpdi_in,
    loopback,
    TXDATA,
    TXCHARISK,
    drpaddr_in,
    rxfsm_data_valid_r,
    link_reset_out,
    I1,
    I2,
    Q,
    I3,
    gt_reset,
    I4);
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
  output tx_lock;
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output tx_out_clk;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]D;
  output [3:0]RXCHARISK;
  output [1:0]RXDISPERR;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output O90;
  output O91;
  output hard_err_gt0;
  output [7:0]O92;
  output [7:0]O93;
  output O94;
  output O95;
  output O96;
  output O97;
  output O98;
  output O99;
  output O100;
  input init_clk_in;
  input drpclk_in;
  input drpen_in;
  input drpwe_in;
  input gt_refclk1;
  input rxn;
  input rxp;
  input gt_qpllclk_quad2_in;
  input gt_qpllrefclk_quad2_in;
  input ena_comma_align_i;
  input rx_polarity_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input [15:0]drpdi_in;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input [8:0]drpaddr_in;
  input rxfsm_data_valid_r;
  input link_reset_out;
  input I1;
  input I2;
  input [0:0]Q;
  input [7:0]I3;
  input gt_reset;
  input I4;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]D;
  wire GTRXRESET;
  wire I1;
  wire I2;
  wire [7:0]I3;
  wire I4;
  wire [1:0]O1;
  wire [1:0]O10;
  wire O100;
  wire [1:0]O11;
  wire [1:0]O12;
  wire [1:0]O13;
  wire [1:0]O14;
  wire [1:0]O15;
  wire [1:0]O16;
  wire [1:0]O17;
  wire [1:0]O18;
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
  wire O90;
  wire O91;
  wire [7:0]O92;
  wire [7:0]O93;
  wire O94;
  wire O95;
  wire O96;
  wire O97;
  wire O98;
  wire O99;
  wire [0:0]Q;
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
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire gt0_pllrefclklost_i;
  wire gt_qpllclk_quad2_in;
  wire gt_qpllrefclk_quad2_in;
  wire gt_refclk1;
  wire gt_reset;
  wire gt_rx_reset_i;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire hard_err_gt0;
  wire init_clk_in;
  wire link_reset_out;
  wire link_reset_r;
  wire link_reset_r2;
  wire [2:0]loopback;
  wire n_0_gt0_rxresetdone_r3_reg_srl3;
  wire n_0_gt0_txresetdone_r3_reg_srl3;
  wire \n_0_rx_cdrlock_counter[0]_i_2 ;
  wire \n_0_rx_cdrlock_counter[0]_i_3 ;
  wire \n_0_rx_cdrlock_counter[0]_i_4 ;
  wire \n_0_rx_cdrlock_counter[0]_i_5 ;
  wire \n_0_rx_cdrlock_counter[0]_i_6 ;
  wire \n_0_rx_cdrlock_counter[0]_i_7 ;
  wire \n_0_rx_cdrlock_counter[0]_i_8 ;
  wire \n_0_rx_cdrlock_counter[0]_i_9 ;
  wire \n_0_rx_cdrlock_counter[12]_i_2 ;
  wire \n_0_rx_cdrlock_counter[12]_i_3 ;
  wire \n_0_rx_cdrlock_counter[12]_i_4 ;
  wire \n_0_rx_cdrlock_counter[12]_i_5 ;
  wire \n_0_rx_cdrlock_counter[16]_i_2 ;
  wire \n_0_rx_cdrlock_counter[16]_i_3 ;
  wire \n_0_rx_cdrlock_counter[16]_i_4 ;
  wire \n_0_rx_cdrlock_counter[16]_i_5 ;
  wire \n_0_rx_cdrlock_counter[20]_i_2 ;
  wire \n_0_rx_cdrlock_counter[20]_i_3 ;
  wire \n_0_rx_cdrlock_counter[20]_i_4 ;
  wire \n_0_rx_cdrlock_counter[20]_i_5 ;
  wire \n_0_rx_cdrlock_counter[24]_i_2 ;
  wire \n_0_rx_cdrlock_counter[24]_i_3 ;
  wire \n_0_rx_cdrlock_counter[24]_i_4 ;
  wire \n_0_rx_cdrlock_counter[24]_i_5 ;
  wire \n_0_rx_cdrlock_counter[28]_i_2 ;
  wire \n_0_rx_cdrlock_counter[28]_i_3 ;
  wire \n_0_rx_cdrlock_counter[28]_i_4 ;
  wire \n_0_rx_cdrlock_counter[28]_i_5 ;
  wire \n_0_rx_cdrlock_counter[4]_i_2 ;
  wire \n_0_rx_cdrlock_counter[4]_i_3 ;
  wire \n_0_rx_cdrlock_counter[4]_i_4 ;
  wire \n_0_rx_cdrlock_counter[4]_i_5 ;
  wire \n_0_rx_cdrlock_counter[8]_i_2 ;
  wire \n_0_rx_cdrlock_counter[8]_i_3 ;
  wire \n_0_rx_cdrlock_counter[8]_i_4 ;
  wire \n_0_rx_cdrlock_counter[8]_i_5 ;
  wire \n_0_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_0_rx_cdrlock_counter_reg[12]_i_1 ;
  wire \n_0_rx_cdrlock_counter_reg[16]_i_1 ;
  wire \n_0_rx_cdrlock_counter_reg[20]_i_1 ;
  wire \n_0_rx_cdrlock_counter_reg[24]_i_1 ;
  wire \n_0_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_0_rx_cdrlock_counter_reg[8]_i_1 ;
  wire n_0_rx_cdrlocked_i_1;
  wire n_0_rx_cdrlocked_i_2;
  wire n_0_rx_cdrlocked_i_3;
  wire n_0_rx_cdrlocked_i_4;
  wire n_0_rx_cdrlocked_i_5;
  wire n_0_rx_cdrlocked_i_6;
  wire n_0_rx_cdrlocked_i_7;
  wire n_0_rxfsm_soft_reset_r_i_1;
  wire \n_1_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_1_rx_cdrlock_counter_reg[12]_i_1 ;
  wire \n_1_rx_cdrlock_counter_reg[16]_i_1 ;
  wire \n_1_rx_cdrlock_counter_reg[20]_i_1 ;
  wire \n_1_rx_cdrlock_counter_reg[24]_i_1 ;
  wire \n_1_rx_cdrlock_counter_reg[28]_i_1 ;
  wire \n_1_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_1_rx_cdrlock_counter_reg[8]_i_1 ;
  wire \n_2_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_2_rx_cdrlock_counter_reg[12]_i_1 ;
  wire \n_2_rx_cdrlock_counter_reg[16]_i_1 ;
  wire \n_2_rx_cdrlock_counter_reg[20]_i_1 ;
  wire \n_2_rx_cdrlock_counter_reg[24]_i_1 ;
  wire \n_2_rx_cdrlock_counter_reg[28]_i_1 ;
  wire \n_2_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_2_rx_cdrlock_counter_reg[8]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[12]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[16]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[20]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[24]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[28]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[8]_i_1 ;
  wire \n_4_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_4_rx_cdrlock_counter_reg[12]_i_1 ;
  wire \n_4_rx_cdrlock_counter_reg[16]_i_1 ;
  wire \n_4_rx_cdrlock_counter_reg[20]_i_1 ;
  wire \n_4_rx_cdrlock_counter_reg[24]_i_1 ;
  wire \n_4_rx_cdrlock_counter_reg[28]_i_1 ;
  wire \n_4_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_4_rx_cdrlock_counter_reg[8]_i_1 ;
  wire \n_5_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_5_rx_cdrlock_counter_reg[12]_i_1 ;
  wire \n_5_rx_cdrlock_counter_reg[16]_i_1 ;
  wire \n_5_rx_cdrlock_counter_reg[20]_i_1 ;
  wire \n_5_rx_cdrlock_counter_reg[24]_i_1 ;
  wire \n_5_rx_cdrlock_counter_reg[28]_i_1 ;
  wire \n_5_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_5_rx_cdrlock_counter_reg[8]_i_1 ;
  wire n_6_aurora_8b10b_0_multi_gt_i;
  wire \n_6_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_6_rx_cdrlock_counter_reg[12]_i_1 ;
  wire \n_6_rx_cdrlock_counter_reg[16]_i_1 ;
  wire \n_6_rx_cdrlock_counter_reg[20]_i_1 ;
  wire \n_6_rx_cdrlock_counter_reg[24]_i_1 ;
  wire \n_6_rx_cdrlock_counter_reg[28]_i_1 ;
  wire \n_6_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_6_rx_cdrlock_counter_reg[8]_i_1 ;
  wire n_76_gt_txresetfsm_i;
  wire \n_7_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_7_rx_cdrlock_counter_reg[12]_i_1 ;
  wire \n_7_rx_cdrlock_counter_reg[16]_i_1 ;
  wire \n_7_rx_cdrlock_counter_reg[20]_i_1 ;
  wire \n_7_rx_cdrlock_counter_reg[24]_i_1 ;
  wire \n_7_rx_cdrlock_counter_reg[28]_i_1 ;
  wire \n_7_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_7_rx_cdrlock_counter_reg[8]_i_1 ;
  wire n_8_aurora_8b10b_0_multi_gt_i;
  wire n_96_gt_txresetfsm_i;
  wire [1:0]out;
  wire power_down;
  wire [31:0]rx_cdrlock_counter;
  wire rx_cdrlocked;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_resetdone_out;
  wire rxfsm_data_valid_r;
  wire rxfsm_rxresetdone_r;
  wire rxfsm_rxresetdone_r2;
  wire rxfsm_soft_reset_r;
  wire rxn;
  wire rxp;
  wire s_out_d1_cdc_to;
  wire s_out_d1_cdc_to_0;
  wire s_out_d1_cdc_to_14;
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
  wire s_out_d2;
  wire s_out_d2_1;
  wire s_out_d2_15;
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
  wire s_out_d3;
  wire s_out_d3_16;
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
  wire s_out_d4_17;
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
  wire s_out_d5_11;
  wire s_out_d5_18;
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
  wire s_out_d6_12;
  wire s_out_d6_19;
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
  wire s_out_d7_13;
  wire s_out_d7_20;
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
  wire sync_clk;
  wire tx_lock;
  wire tx_out_clk;
  wire tx_resetdone_out;
  wire txfsm_txresetdone_r;
  wire txn;
  wire txp;
  wire user_clk;
  wire [3:3]\NLW_rx_cdrlock_counter_reg[28]_i_1_CO_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
aurora_8b10b_0aurora_8b10b_0_multi_gt aurora_8b10b_0_multi_gt_i
       (.D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .O1(n_6_aurora_8b10b_0_multi_gt_i),
        .O100(O100),
        .O2(n_8_aurora_8b10b_0_multi_gt_i),
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
        .Q(Q),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .RXDISPERR(RXDISPERR),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .cpll_reset_i(cpll_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt0_pllrefclklost_i(gt0_pllrefclklost_i),
        .gt_qpllclk_quad2_in(gt_qpllclk_quad2_in),
        .gt_qpllrefclk_quad2_in(gt_qpllrefclk_quad2_in),
        .gt_refclk1(gt_refclk1),
        .gt_rx_reset_i(gt_rx_reset_i),
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
        .sync_clk(sync_clk),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
(* srl_name = "inst/\gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 " *) 
   SRL16E gt0_rxresetdone_r3_reg_srl3
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(n_6_aurora_8b10b_0_multi_gt_i),
        .Q(n_0_gt0_rxresetdone_r3_reg_srl3));
(* srl_name = "inst/\gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 " *) 
   SRL16E gt0_txresetdone_r3_reg_srl3
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(n_8_aurora_8b10b_0_multi_gt_i),
        .Q(n_0_gt0_txresetdone_r3_reg_srl3));
FDRE gt_rx_reset_i_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(GTRXRESET),
        .Q(gt_rx_reset_i),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_rx_startup_fsm gt_rxresetfsm_i
       (.GTRXRESET(GTRXRESET),
        .I1(n_76_gt_txresetfsm_i),
        .I2(n_96_gt_txresetfsm_i),
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
        .gt0_pllrefclklost_i(gt0_pllrefclklost_i),
        .gt_rxdfelfhold_i(gt_rxdfelfhold_i),
        .gt_rxuserrdy_i(gt_rxuserrdy_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .init_clk_in(init_clk_in),
        .rx_cdrlocked(rx_cdrlocked),
        .rxfsm_data_valid_r(rxfsm_data_valid_r),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .rxfsm_soft_reset_r(rxfsm_soft_reset_r),
        .s_out_d1_cdc_to_42(s_out_d1_cdc_to_42),
        .s_out_d1_cdc_to_49(s_out_d1_cdc_to_49),
        .s_out_d1_cdc_to_56(s_out_d1_cdc_to_56),
        .s_out_d1_cdc_to_63(s_out_d1_cdc_to_63),
        .s_out_d1_cdc_to_70(s_out_d1_cdc_to_70),
        .s_out_d1_cdc_to_77(s_out_d1_cdc_to_77),
        .s_out_d1_cdc_to_84(s_out_d1_cdc_to_84),
        .s_out_d1_cdc_to_91(s_out_d1_cdc_to_91),
        .s_out_d2_43(s_out_d2_43),
        .s_out_d2_50(s_out_d2_50),
        .s_out_d2_57(s_out_d2_57),
        .s_out_d2_64(s_out_d2_64),
        .s_out_d2_71(s_out_d2_71),
        .s_out_d2_78(s_out_d2_78),
        .s_out_d2_85(s_out_d2_85),
        .s_out_d2_92(s_out_d2_92),
        .s_out_d3_44(s_out_d3_44),
        .s_out_d3_51(s_out_d3_51),
        .s_out_d3_58(s_out_d3_58),
        .s_out_d3_65(s_out_d3_65),
        .s_out_d3_72(s_out_d3_72),
        .s_out_d3_79(s_out_d3_79),
        .s_out_d3_86(s_out_d3_86),
        .s_out_d3_93(s_out_d3_93),
        .s_out_d4_45(s_out_d4_45),
        .s_out_d4_52(s_out_d4_52),
        .s_out_d4_59(s_out_d4_59),
        .s_out_d4_66(s_out_d4_66),
        .s_out_d4_73(s_out_d4_73),
        .s_out_d4_80(s_out_d4_80),
        .s_out_d4_87(s_out_d4_87),
        .s_out_d4_94(s_out_d4_94),
        .s_out_d5_46(s_out_d5_46),
        .s_out_d5_53(s_out_d5_53),
        .s_out_d5_60(s_out_d5_60),
        .s_out_d5_67(s_out_d5_67),
        .s_out_d5_74(s_out_d5_74),
        .s_out_d5_81(s_out_d5_81),
        .s_out_d5_88(s_out_d5_88),
        .s_out_d5_95(s_out_d5_95),
        .s_out_d6_47(s_out_d6_47),
        .s_out_d6_54(s_out_d6_54),
        .s_out_d6_61(s_out_d6_61),
        .s_out_d6_68(s_out_d6_68),
        .s_out_d6_75(s_out_d6_75),
        .s_out_d6_82(s_out_d6_82),
        .s_out_d6_89(s_out_d6_89),
        .s_out_d6_96(s_out_d6_96),
        .s_out_d7_48(s_out_d7_48),
        .s_out_d7_55(s_out_d7_55),
        .s_out_d7_62(s_out_d7_62),
        .s_out_d7_69(s_out_d7_69),
        .s_out_d7_76(s_out_d7_76),
        .s_out_d7_83(s_out_d7_83),
        .s_out_d7_90(s_out_d7_90),
        .s_out_d7_97(s_out_d7_97),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_tx_startup_fsm gt_txresetfsm_i
       (.O1(O1),
        .O10(O10),
        .O11(O11),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .O2(O2),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .O24(n_76_gt_txresetfsm_i),
        .O25(O24),
        .O26(O25),
        .O27(O26),
        .O28(O27),
        .O29(O28),
        .O3(O3),
        .O30(O29),
        .O31(n_96_gt_txresetfsm_i),
        .O32(O30),
        .O33(O31),
        .O34(O32),
        .O35(O33),
        .O36(O34),
        .O37(O35),
        .O38(O36),
        .O39(O37),
        .O4(O4),
        .O40(O38),
        .O41(O39),
        .O42(O40),
        .O43(O41),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .cpll_reset_i(cpll_reset_i),
        .gt0_pllrefclklost_i(gt0_pllrefclklost_i),
        .gt_reset(gt_reset),
        .gt_tx_reset_i(gt_tx_reset_i),
        .gt_txuserrdy_i(gt_txuserrdy_i),
        .init_clk_in(init_clk_in),
        .out(out),
        .s_out_d1_cdc_to(s_out_d1_cdc_to),
        .s_out_d1_cdc_to_0(s_out_d1_cdc_to_0),
        .s_out_d1_cdc_to_14(s_out_d1_cdc_to_14),
        .s_out_d1_cdc_to_21(s_out_d1_cdc_to_21),
        .s_out_d1_cdc_to_28(s_out_d1_cdc_to_28),
        .s_out_d1_cdc_to_35(s_out_d1_cdc_to_35),
        .s_out_d1_cdc_to_7(s_out_d1_cdc_to_7),
        .s_out_d2(s_out_d2),
        .s_out_d2_1(s_out_d2_1),
        .s_out_d2_15(s_out_d2_15),
        .s_out_d2_22(s_out_d2_22),
        .s_out_d2_29(s_out_d2_29),
        .s_out_d2_36(s_out_d2_36),
        .s_out_d2_8(s_out_d2_8),
        .s_out_d3(s_out_d3),
        .s_out_d3_16(s_out_d3_16),
        .s_out_d3_2(s_out_d3_2),
        .s_out_d3_23(s_out_d3_23),
        .s_out_d3_30(s_out_d3_30),
        .s_out_d3_37(s_out_d3_37),
        .s_out_d3_9(s_out_d3_9),
        .s_out_d4(s_out_d4),
        .s_out_d4_10(s_out_d4_10),
        .s_out_d4_17(s_out_d4_17),
        .s_out_d4_24(s_out_d4_24),
        .s_out_d4_3(s_out_d4_3),
        .s_out_d4_31(s_out_d4_31),
        .s_out_d4_38(s_out_d4_38),
        .s_out_d5(s_out_d5),
        .s_out_d5_11(s_out_d5_11),
        .s_out_d5_18(s_out_d5_18),
        .s_out_d5_25(s_out_d5_25),
        .s_out_d5_32(s_out_d5_32),
        .s_out_d5_39(s_out_d5_39),
        .s_out_d5_4(s_out_d5_4),
        .s_out_d6(s_out_d6),
        .s_out_d6_12(s_out_d6_12),
        .s_out_d6_19(s_out_d6_19),
        .s_out_d6_26(s_out_d6_26),
        .s_out_d6_33(s_out_d6_33),
        .s_out_d6_40(s_out_d6_40),
        .s_out_d6_5(s_out_d6_5),
        .s_out_d7(s_out_d7),
        .s_out_d7_13(s_out_d7_13),
        .s_out_d7_20(s_out_d7_20),
        .s_out_d7_27(s_out_d7_27),
        .s_out_d7_34(s_out_d7_34),
        .s_out_d7_41(s_out_d7_41),
        .s_out_d7_6(s_out_d7_6),
        .tx_lock(tx_lock),
        .tx_resetdone_out(tx_resetdone_out),
        .txfsm_txresetdone_r(txfsm_txresetdone_r),
        .user_clk(user_clk));
FDRE link_reset_r2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(link_reset_r),
        .Q(link_reset_r2),
        .R(\<const0> ));
FDRE link_reset_r_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(link_reset_out),
        .Q(link_reset_r),
        .R(\<const0> ));
LUT1 #(
    .INIT(2'h1)) 
     \rx_cdrlock_counter[0]_i_2 
       (.I0(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[0]_i_2 ));
LUT2 #(
    .INIT(4'hE)) 
     \rx_cdrlock_counter[0]_i_3 
       (.I0(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .I1(rx_cdrlock_counter[3]),
        .O(\n_0_rx_cdrlock_counter[0]_i_3 ));
LUT2 #(
    .INIT(4'hE)) 
     \rx_cdrlock_counter[0]_i_4 
       (.I0(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .I1(rx_cdrlock_counter[2]),
        .O(\n_0_rx_cdrlock_counter[0]_i_4 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[0]_i_5 
       (.I0(rx_cdrlock_counter[1]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[0]_i_5 ));
LUT2 #(
    .INIT(4'h1)) 
     \rx_cdrlock_counter[0]_i_6 
       (.I0(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .I1(rx_cdrlock_counter[0]),
        .O(\n_0_rx_cdrlock_counter[0]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000000080)) 
     \rx_cdrlock_counter[0]_i_7 
       (.I0(n_0_rx_cdrlocked_i_7),
        .I1(n_0_rx_cdrlocked_i_6),
        .I2(\n_0_rx_cdrlock_counter[0]_i_8 ),
        .I3(n_0_rx_cdrlocked_i_5),
        .I4(n_0_rx_cdrlocked_i_4),
        .I5(\n_0_rx_cdrlock_counter[0]_i_9 ),
        .O(\n_0_rx_cdrlock_counter[0]_i_7 ));
LUT4 #(
    .INIT(16'h0001)) 
     \rx_cdrlock_counter[0]_i_8 
       (.I0(rx_cdrlock_counter[14]),
        .I1(rx_cdrlock_counter[11]),
        .I2(rx_cdrlock_counter[24]),
        .I3(rx_cdrlock_counter[6]),
        .O(\n_0_rx_cdrlock_counter[0]_i_8 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \rx_cdrlock_counter[0]_i_9 
       (.I0(rx_cdrlock_counter[20]),
        .I1(rx_cdrlock_counter[18]),
        .I2(rx_cdrlock_counter[28]),
        .I3(rx_cdrlock_counter[26]),
        .O(\n_0_rx_cdrlock_counter[0]_i_9 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[12]_i_2 
       (.I0(rx_cdrlock_counter[15]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[12]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[12]_i_3 
       (.I0(rx_cdrlock_counter[14]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[12]_i_3 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[12]_i_4 
       (.I0(rx_cdrlock_counter[13]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[12]_i_4 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[12]_i_5 
       (.I0(rx_cdrlock_counter[12]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[12]_i_5 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[16]_i_2 
       (.I0(rx_cdrlock_counter[19]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[16]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[16]_i_3 
       (.I0(rx_cdrlock_counter[18]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[16]_i_3 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[16]_i_4 
       (.I0(rx_cdrlock_counter[17]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[16]_i_4 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[16]_i_5 
       (.I0(rx_cdrlock_counter[16]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[16]_i_5 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[20]_i_2 
       (.I0(rx_cdrlock_counter[23]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[20]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[20]_i_3 
       (.I0(rx_cdrlock_counter[22]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[20]_i_3 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[20]_i_4 
       (.I0(rx_cdrlock_counter[21]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[20]_i_4 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[20]_i_5 
       (.I0(rx_cdrlock_counter[20]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[20]_i_5 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[24]_i_2 
       (.I0(rx_cdrlock_counter[27]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[24]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[24]_i_3 
       (.I0(rx_cdrlock_counter[26]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[24]_i_3 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[24]_i_4 
       (.I0(rx_cdrlock_counter[25]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[24]_i_4 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[24]_i_5 
       (.I0(rx_cdrlock_counter[24]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[24]_i_5 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[28]_i_2 
       (.I0(rx_cdrlock_counter[31]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[28]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[28]_i_3 
       (.I0(rx_cdrlock_counter[30]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[28]_i_3 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[28]_i_4 
       (.I0(rx_cdrlock_counter[29]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[28]_i_4 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[28]_i_5 
       (.I0(rx_cdrlock_counter[28]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[28]_i_5 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[4]_i_2 
       (.I0(rx_cdrlock_counter[7]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[4]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[4]_i_3 
       (.I0(rx_cdrlock_counter[6]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[4]_i_3 ));
LUT2 #(
    .INIT(4'hE)) 
     \rx_cdrlock_counter[4]_i_4 
       (.I0(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .I1(rx_cdrlock_counter[5]),
        .O(\n_0_rx_cdrlock_counter[4]_i_4 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[4]_i_5 
       (.I0(rx_cdrlock_counter[4]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[4]_i_5 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[8]_i_2 
       (.I0(rx_cdrlock_counter[11]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[8]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[8]_i_3 
       (.I0(rx_cdrlock_counter[10]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[8]_i_3 ));
LUT2 #(
    .INIT(4'hE)) 
     \rx_cdrlock_counter[8]_i_4 
       (.I0(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .I1(rx_cdrlock_counter[9]),
        .O(\n_0_rx_cdrlock_counter[8]_i_4 ));
LUT2 #(
    .INIT(4'h2)) 
     \rx_cdrlock_counter[8]_i_5 
       (.I0(rx_cdrlock_counter[8]),
        .I1(\n_0_rx_cdrlock_counter[0]_i_7 ),
        .O(\n_0_rx_cdrlock_counter[8]_i_5 ));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[0] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[0]_i_1 ),
        .Q(rx_cdrlock_counter[0]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\n_0_rx_cdrlock_counter_reg[0]_i_1 ,\n_1_rx_cdrlock_counter_reg[0]_i_1 ,\n_2_rx_cdrlock_counter_reg[0]_i_1 ,\n_3_rx_cdrlock_counter_reg[0]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\n_0_rx_cdrlock_counter[0]_i_2 }),
        .O({\n_4_rx_cdrlock_counter_reg[0]_i_1 ,\n_5_rx_cdrlock_counter_reg[0]_i_1 ,\n_6_rx_cdrlock_counter_reg[0]_i_1 ,\n_7_rx_cdrlock_counter_reg[0]_i_1 }),
        .S({\n_0_rx_cdrlock_counter[0]_i_3 ,\n_0_rx_cdrlock_counter[0]_i_4 ,\n_0_rx_cdrlock_counter[0]_i_5 ,\n_0_rx_cdrlock_counter[0]_i_6 }));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[10] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_rx_cdrlock_counter_reg[8]_i_1 ),
        .Q(rx_cdrlock_counter[10]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[11] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_rx_cdrlock_counter_reg[8]_i_1 ),
        .Q(rx_cdrlock_counter[11]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[12] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[12]_i_1 ),
        .Q(rx_cdrlock_counter[12]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[12]_i_1 
       (.CI(\n_0_rx_cdrlock_counter_reg[8]_i_1 ),
        .CO({\n_0_rx_cdrlock_counter_reg[12]_i_1 ,\n_1_rx_cdrlock_counter_reg[12]_i_1 ,\n_2_rx_cdrlock_counter_reg[12]_i_1 ,\n_3_rx_cdrlock_counter_reg[12]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_rx_cdrlock_counter_reg[12]_i_1 ,\n_5_rx_cdrlock_counter_reg[12]_i_1 ,\n_6_rx_cdrlock_counter_reg[12]_i_1 ,\n_7_rx_cdrlock_counter_reg[12]_i_1 }),
        .S({\n_0_rx_cdrlock_counter[12]_i_2 ,\n_0_rx_cdrlock_counter[12]_i_3 ,\n_0_rx_cdrlock_counter[12]_i_4 ,\n_0_rx_cdrlock_counter[12]_i_5 }));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[13] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[12]_i_1 ),
        .Q(rx_cdrlock_counter[13]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[14] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_rx_cdrlock_counter_reg[12]_i_1 ),
        .Q(rx_cdrlock_counter[14]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[15] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_rx_cdrlock_counter_reg[12]_i_1 ),
        .Q(rx_cdrlock_counter[15]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[16] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[16]_i_1 ),
        .Q(rx_cdrlock_counter[16]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[16]_i_1 
       (.CI(\n_0_rx_cdrlock_counter_reg[12]_i_1 ),
        .CO({\n_0_rx_cdrlock_counter_reg[16]_i_1 ,\n_1_rx_cdrlock_counter_reg[16]_i_1 ,\n_2_rx_cdrlock_counter_reg[16]_i_1 ,\n_3_rx_cdrlock_counter_reg[16]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_rx_cdrlock_counter_reg[16]_i_1 ,\n_5_rx_cdrlock_counter_reg[16]_i_1 ,\n_6_rx_cdrlock_counter_reg[16]_i_1 ,\n_7_rx_cdrlock_counter_reg[16]_i_1 }),
        .S({\n_0_rx_cdrlock_counter[16]_i_2 ,\n_0_rx_cdrlock_counter[16]_i_3 ,\n_0_rx_cdrlock_counter[16]_i_4 ,\n_0_rx_cdrlock_counter[16]_i_5 }));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[17] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[16]_i_1 ),
        .Q(rx_cdrlock_counter[17]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[18] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_rx_cdrlock_counter_reg[16]_i_1 ),
        .Q(rx_cdrlock_counter[18]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[19] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_rx_cdrlock_counter_reg[16]_i_1 ),
        .Q(rx_cdrlock_counter[19]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[1] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[0]_i_1 ),
        .Q(rx_cdrlock_counter[1]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[20] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[20]_i_1 ),
        .Q(rx_cdrlock_counter[20]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[20]_i_1 
       (.CI(\n_0_rx_cdrlock_counter_reg[16]_i_1 ),
        .CO({\n_0_rx_cdrlock_counter_reg[20]_i_1 ,\n_1_rx_cdrlock_counter_reg[20]_i_1 ,\n_2_rx_cdrlock_counter_reg[20]_i_1 ,\n_3_rx_cdrlock_counter_reg[20]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_rx_cdrlock_counter_reg[20]_i_1 ,\n_5_rx_cdrlock_counter_reg[20]_i_1 ,\n_6_rx_cdrlock_counter_reg[20]_i_1 ,\n_7_rx_cdrlock_counter_reg[20]_i_1 }),
        .S({\n_0_rx_cdrlock_counter[20]_i_2 ,\n_0_rx_cdrlock_counter[20]_i_3 ,\n_0_rx_cdrlock_counter[20]_i_4 ,\n_0_rx_cdrlock_counter[20]_i_5 }));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[21] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[20]_i_1 ),
        .Q(rx_cdrlock_counter[21]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[22] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_rx_cdrlock_counter_reg[20]_i_1 ),
        .Q(rx_cdrlock_counter[22]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[23] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_rx_cdrlock_counter_reg[20]_i_1 ),
        .Q(rx_cdrlock_counter[23]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[24] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[24]_i_1 ),
        .Q(rx_cdrlock_counter[24]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[24]_i_1 
       (.CI(\n_0_rx_cdrlock_counter_reg[20]_i_1 ),
        .CO({\n_0_rx_cdrlock_counter_reg[24]_i_1 ,\n_1_rx_cdrlock_counter_reg[24]_i_1 ,\n_2_rx_cdrlock_counter_reg[24]_i_1 ,\n_3_rx_cdrlock_counter_reg[24]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_rx_cdrlock_counter_reg[24]_i_1 ,\n_5_rx_cdrlock_counter_reg[24]_i_1 ,\n_6_rx_cdrlock_counter_reg[24]_i_1 ,\n_7_rx_cdrlock_counter_reg[24]_i_1 }),
        .S({\n_0_rx_cdrlock_counter[24]_i_2 ,\n_0_rx_cdrlock_counter[24]_i_3 ,\n_0_rx_cdrlock_counter[24]_i_4 ,\n_0_rx_cdrlock_counter[24]_i_5 }));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[25] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[24]_i_1 ),
        .Q(rx_cdrlock_counter[25]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[26] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_rx_cdrlock_counter_reg[24]_i_1 ),
        .Q(rx_cdrlock_counter[26]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[27] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_rx_cdrlock_counter_reg[24]_i_1 ),
        .Q(rx_cdrlock_counter[27]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[28] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[28]_i_1 ),
        .Q(rx_cdrlock_counter[28]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[28]_i_1 
       (.CI(\n_0_rx_cdrlock_counter_reg[24]_i_1 ),
        .CO({\NLW_rx_cdrlock_counter_reg[28]_i_1_CO_UNCONNECTED [3],\n_1_rx_cdrlock_counter_reg[28]_i_1 ,\n_2_rx_cdrlock_counter_reg[28]_i_1 ,\n_3_rx_cdrlock_counter_reg[28]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_rx_cdrlock_counter_reg[28]_i_1 ,\n_5_rx_cdrlock_counter_reg[28]_i_1 ,\n_6_rx_cdrlock_counter_reg[28]_i_1 ,\n_7_rx_cdrlock_counter_reg[28]_i_1 }),
        .S({\n_0_rx_cdrlock_counter[28]_i_2 ,\n_0_rx_cdrlock_counter[28]_i_3 ,\n_0_rx_cdrlock_counter[28]_i_4 ,\n_0_rx_cdrlock_counter[28]_i_5 }));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[29] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[28]_i_1 ),
        .Q(rx_cdrlock_counter[29]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[2] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_rx_cdrlock_counter_reg[0]_i_1 ),
        .Q(rx_cdrlock_counter[2]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[30] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_rx_cdrlock_counter_reg[28]_i_1 ),
        .Q(rx_cdrlock_counter[30]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[31] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_rx_cdrlock_counter_reg[28]_i_1 ),
        .Q(rx_cdrlock_counter[31]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[3] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_rx_cdrlock_counter_reg[0]_i_1 ),
        .Q(rx_cdrlock_counter[3]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[4] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[4]_i_1 ),
        .Q(rx_cdrlock_counter[4]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[4]_i_1 
       (.CI(\n_0_rx_cdrlock_counter_reg[0]_i_1 ),
        .CO({\n_0_rx_cdrlock_counter_reg[4]_i_1 ,\n_1_rx_cdrlock_counter_reg[4]_i_1 ,\n_2_rx_cdrlock_counter_reg[4]_i_1 ,\n_3_rx_cdrlock_counter_reg[4]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_rx_cdrlock_counter_reg[4]_i_1 ,\n_5_rx_cdrlock_counter_reg[4]_i_1 ,\n_6_rx_cdrlock_counter_reg[4]_i_1 ,\n_7_rx_cdrlock_counter_reg[4]_i_1 }),
        .S({\n_0_rx_cdrlock_counter[4]_i_2 ,\n_0_rx_cdrlock_counter[4]_i_3 ,\n_0_rx_cdrlock_counter[4]_i_4 ,\n_0_rx_cdrlock_counter[4]_i_5 }));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[5] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[4]_i_1 ),
        .Q(rx_cdrlock_counter[5]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[6] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_rx_cdrlock_counter_reg[4]_i_1 ),
        .Q(rx_cdrlock_counter[6]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[7] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_rx_cdrlock_counter_reg[4]_i_1 ),
        .Q(rx_cdrlock_counter[7]),
        .R(gt_rx_reset_i));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[8] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[8]_i_1 ),
        .Q(rx_cdrlock_counter[8]),
        .R(gt_rx_reset_i));
CARRY4 \rx_cdrlock_counter_reg[8]_i_1 
       (.CI(\n_0_rx_cdrlock_counter_reg[4]_i_1 ),
        .CO({\n_0_rx_cdrlock_counter_reg[8]_i_1 ,\n_1_rx_cdrlock_counter_reg[8]_i_1 ,\n_2_rx_cdrlock_counter_reg[8]_i_1 ,\n_3_rx_cdrlock_counter_reg[8]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_rx_cdrlock_counter_reg[8]_i_1 ,\n_5_rx_cdrlock_counter_reg[8]_i_1 ,\n_6_rx_cdrlock_counter_reg[8]_i_1 ,\n_7_rx_cdrlock_counter_reg[8]_i_1 }),
        .S({\n_0_rx_cdrlock_counter[8]_i_2 ,\n_0_rx_cdrlock_counter[8]_i_3 ,\n_0_rx_cdrlock_counter[8]_i_4 ,\n_0_rx_cdrlock_counter[8]_i_5 }));
(* counter = "23" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[9] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[8]_i_1 ),
        .Q(rx_cdrlock_counter[9]),
        .R(gt_rx_reset_i));
LUT4 #(
    .INIT(16'h00BA)) 
     rx_cdrlocked_i_1
       (.I0(rx_cdrlocked),
        .I1(n_0_rx_cdrlocked_i_2),
        .I2(n_0_rx_cdrlocked_i_3),
        .I3(gt_rx_reset_i),
        .O(n_0_rx_cdrlocked_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     rx_cdrlocked_i_2
       (.I0(rx_cdrlock_counter[26]),
        .I1(rx_cdrlock_counter[28]),
        .I2(rx_cdrlock_counter[18]),
        .I3(rx_cdrlock_counter[20]),
        .I4(n_0_rx_cdrlocked_i_4),
        .I5(n_0_rx_cdrlocked_i_5),
        .O(n_0_rx_cdrlocked_i_2));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     rx_cdrlocked_i_3
       (.I0(rx_cdrlock_counter[6]),
        .I1(rx_cdrlock_counter[24]),
        .I2(rx_cdrlock_counter[11]),
        .I3(rx_cdrlock_counter[14]),
        .I4(n_0_rx_cdrlocked_i_6),
        .I5(n_0_rx_cdrlocked_i_7),
        .O(n_0_rx_cdrlocked_i_3));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
     rx_cdrlocked_i_4
       (.I0(rx_cdrlock_counter[21]),
        .I1(rx_cdrlock_counter[19]),
        .I2(rx_cdrlock_counter[0]),
        .I3(rx_cdrlock_counter[2]),
        .I4(rx_cdrlock_counter[1]),
        .I5(rx_cdrlock_counter[13]),
        .O(n_0_rx_cdrlocked_i_4));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
     rx_cdrlocked_i_5
       (.I0(rx_cdrlock_counter[23]),
        .I1(rx_cdrlock_counter[17]),
        .I2(rx_cdrlock_counter[9]),
        .I3(rx_cdrlock_counter[3]),
        .I4(rx_cdrlock_counter[7]),
        .I5(rx_cdrlock_counter[10]),
        .O(n_0_rx_cdrlocked_i_5));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     rx_cdrlocked_i_6
       (.I0(rx_cdrlock_counter[12]),
        .I1(rx_cdrlock_counter[8]),
        .I2(rx_cdrlock_counter[16]),
        .I3(rx_cdrlock_counter[22]),
        .I4(rx_cdrlock_counter[4]),
        .I5(rx_cdrlock_counter[15]),
        .O(n_0_rx_cdrlocked_i_6));
LUT6 #(
    .INIT(64'h0000000000010000)) 
     rx_cdrlocked_i_7
       (.I0(rx_cdrlock_counter[30]),
        .I1(rx_cdrlock_counter[31]),
        .I2(rx_cdrlock_counter[27]),
        .I3(rx_cdrlock_counter[29]),
        .I4(rx_cdrlock_counter[5]),
        .I5(rx_cdrlock_counter[25]),
        .O(n_0_rx_cdrlocked_i_7));
FDRE rx_cdrlocked_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_rx_cdrlocked_i_1),
        .Q(rx_cdrlocked),
        .R(\<const0> ));
FDRE rxfsm_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rxfsm_rxresetdone_r),
        .Q(rxfsm_rxresetdone_r2),
        .R(\<const0> ));
FDRE rxfsm_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rxfsm_rxresetdone_r2),
        .Q(rx_resetdone_out),
        .R(\<const0> ));
FDRE rxfsm_rxresetdone_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_0_gt0_rxresetdone_r3_reg_srl3),
        .Q(rxfsm_rxresetdone_r),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'hE)) 
     rxfsm_soft_reset_r_i_1
       (.I0(gt_reset),
        .I1(link_reset_r2),
        .O(n_0_rxfsm_soft_reset_r_i_1));
FDRE rxfsm_soft_reset_r_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_rxfsm_soft_reset_r_i_1),
        .Q(rxfsm_soft_reset_r),
        .R(\<const0> ));
FDRE txfsm_txresetdone_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_0_gt0_txresetdone_r3_reg_srl3),
        .Q(txfsm_txresetdone_r),
        .R(\<const0> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_IDLE_AND_VER_GEN
   (I10,
    gen_a_i,
    I12,
    I11,
    txver_count_r0,
    user_clk,
    gen_ver_i,
    sys_reset_out);
  output [2:0]I10;
  output gen_a_i;
  output [3:0]I12;
  output [3:0]I11;
  output txver_count_r0;
  input user_clk;
  input gen_ver_i;
  input sys_reset_out;

  wire \<const0> ;
  wire \<const1> ;
  wire D0;
  wire GND_2;
  wire [2:0]I10;
  wire [3:0]I11;
  wire [3:0]I12;
  wire VCC_2;
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
  wire p_1_in;
  wire p_2_in;
  wire [3:1]p_3_out;
  wire prev_cycle_gen_ver_r;
  wire recycle_gen_ver_c;
  wire sys_reset_out;
  wire txver_count_r0;
  wire user_clk;
  wire ver_counter_c;

FDRE DID_VER_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(ver_counter_c),
        .Q(did_ver_i),
        .R(\<const0> ));
GND GND
       (.G(\<const0> ));
GND GND_1
       (.G(GND_2));
VCC VCC
       (.P(\<const1> ));
VCC VCC_1
       (.P(VCC_2));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \down_count_r[0]_i_1 
       (.I0(p_3_out[1]),
        .I1(p_2_in),
        .O(\n_0_down_count_r[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT2 #(
    .INIT(4'h9)) 
     \down_count_r[1]_i_1 
       (.I0(p_3_out[1]),
        .I1(p_2_in),
        .O(\n_0_down_count_r[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \down_count_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_down_count_r[0]_i_1 ),
        .Q(down_count_r[0]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \down_count_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_down_count_r[1]_i_1 ),
        .Q(down_count_r[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \down_count_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(gen_k_c[3]),
        .Q(down_count_r[2]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT4 #(
    .INIT(16'hF0C2)) 
     \downcounter_r[0]_i_1 
       (.I0(down_count_r[0]),
        .I1(\n_0_downcounter_r_reg[2] ),
        .I2(\n_0_downcounter_r_reg[0] ),
        .I3(\n_0_downcounter_r_reg[1] ),
        .O(\n_0_downcounter_r[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT4 #(
    .INIT(16'hCC32)) 
     \downcounter_r[1]_i_1 
       (.I0(down_count_r[1]),
        .I1(\n_0_downcounter_r_reg[2] ),
        .I2(\n_0_downcounter_r_reg[0] ),
        .I3(\n_0_downcounter_r_reg[1] ),
        .O(\n_0_downcounter_r[1]_i_1 ));
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
        .CE(\<const1> ),
        .D(\n_0_downcounter_r[0]_i_1 ),
        .Q(\n_0_downcounter_r_reg[0] ),
        .R(sys_reset_out));
FDRE #(
    .INIT(1'b0)) 
     \downcounter_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_downcounter_r[1]_i_1 ),
        .Q(\n_0_downcounter_r_reg[1] ),
        .R(sys_reset_out));
FDRE #(
    .INIT(1'b0)) 
     \downcounter_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_downcounter_r[2]_i_1 ),
        .Q(\n_0_downcounter_r_reg[2] ),
        .R(sys_reset_out));
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_a_flop_0_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(gen_a_flop_c),
        .Q(gen_a_i),
        .R(GND_2));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT5 #(
    .INIT(32'h00010101)) 
     gen_a_flop_0_i_i_1
       (.I0(\n_0_downcounter_r_reg[1] ),
        .I1(\n_0_downcounter_r_reg[0] ),
        .I2(\n_0_downcounter_r_reg[2] ),
        .I3(gen_ver_i),
        .I4(did_ver_i),
        .O(gen_a_flop_c));
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_k_flop_0_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(D0),
        .Q(I12[3]),
        .R(GND_2));
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
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_k_flop_1_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(gen_k_c[1]),
        .Q(I12[2]),
        .R(GND_2));
LUT1 #(
    .INIT(2'h1)) 
     gen_k_flop_1_i_i_1
       (.I0(p_3_out[3]),
        .O(gen_k_c[1]));
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_k_flop_2_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(gen_k_c[2]),
        .Q(I12[1]),
        .R(GND_2));
LUT1 #(
    .INIT(2'h1)) 
     gen_k_flop_2_i_i_1
       (.I0(p_2_in),
        .O(gen_k_c[2]));
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_k_flop_3_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(gen_k_c[3]),
        .Q(I12[0]),
        .R(GND_2));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair129" *) 
   LUT1 #(
    .INIT(2'h1)) 
     gen_k_flop_3_i_i_1
       (.I0(p_3_out[1]),
        .O(gen_k_c[3]));
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_r_flop_0_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(n_0_gen_r_flop_0_i_i_1),
        .Q(I11[3]),
        .R(GND_2));
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
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_r_flop_1_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(p_3_out[3]),
        .Q(I11[2]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_r_flop_2_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(p_2_in),
        .Q(I11[1]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_r_flop_3_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(p_3_out[1]),
        .Q(I11[0]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_v_flop_1_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(recycle_gen_ver_c),
        .Q(I10[2]),
        .R(GND_2));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT2 #(
    .INIT(4'h8)) 
     gen_v_flop_1_i_i_1
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(recycle_gen_ver_c));
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_v_flop_2_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(recycle_gen_ver_c),
        .Q(I10[1]),
        .R(GND_2));
(* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_v_flop_3_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(recycle_gen_ver_c),
        .Q(I10[0]),
        .R(GND_2));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT4 #(
    .INIT(16'h55A9)) 
     \lfsr_reg[3]_i_1 
       (.I0(p_1_in),
        .I1(p_2_in),
        .I2(p_3_out[3]),
        .I3(p_3_out[1]),
        .O(\n_0_lfsr_reg[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \lfsr_reg_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_3_out[3]),
        .Q(p_1_in),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \lfsr_reg_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_2_in),
        .Q(p_3_out[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \lfsr_reg_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_3_out[1]),
        .Q(p_2_in),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \lfsr_reg_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_lfsr_reg[3]_i_1 ),
        .Q(p_3_out[1]),
        .R(\<const0> ));
FDRE prev_cycle_gen_ver_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(gen_ver_i),
        .Q(prev_cycle_gen_ver_r),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \txver_count_r_reg[6]_srl7_i_1 
       (.I0(did_ver_i),
        .I1(gen_ver_i),
        .O(txver_count_r0));
(* XILINX_LEGACY_PRIM = "SRL16" *) 
   (* box_type = "PRIMITIVE" *) 
   (* srl_name = "inst/\aurora_8b10b_0_global_logic_i/idle_and_ver_gen_i/ver_counter_i " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     ver_counter_i
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const1> ),
        .A3(\<const1> ),
        .CE(VCC_2),
        .CLK(user_clk),
        .D(insert_ver_c),
        .Q(ver_counter_c));
(* SOFT_HLUTNM = "soft_lutpair128" *) 
   LUT3 #(
    .INIT(8'h8A)) 
     ver_counter_i_i_1
       (.I0(gen_ver_i),
        .I1(did_ver_i),
        .I2(prev_cycle_gen_ver_r),
        .O(insert_ver_c));
endmodule

module aurora_8b10b_0aurora_8b10b_0_LANE_INIT_SM_4BYTE
   (O1,
    ready_r,
    O2,
    gen_spa_i,
    enable_err_detect_i,
    rx_polarity_i,
    GEN_SP,
    O3,
    O10,
    reset_lanes_i,
    user_clk,
    ready_r0,
    counter3_r0,
    counter4_r0,
    rx_realign_i,
    RXDISPERR,
    I6,
    RX_NEG,
    RXCHARISK,
    first_v_received_r,
    I7);
  output O1;
  output ready_r;
  output O2;
  output gen_spa_i;
  output enable_err_detect_i;
  output rx_polarity_i;
  output GEN_SP;
  output O3;
  output O10;
  input reset_lanes_i;
  input user_clk;
  input ready_r0;
  input counter3_r0;
  input counter4_r0;
  input rx_realign_i;
  input [1:0]RXDISPERR;
  input I6;
  input RX_NEG;
  input [1:0]RXCHARISK;
  input first_v_received_r;
  input [3:0]I7;

  wire \<const0> ;
  wire \<const1> ;
  wire ENABLE_ERR_DETECT0;
  wire GEN_SP;
  wire I6;
  wire [3:0]I7;
  wire O1;
  wire O10;
  wire O2;
  wire O3;
  wire [1:0]RXCHARISK;
  wire [1:0]RXDISPERR;
  wire RX_NEG;
  wire VCC_2;
  wire begin_r;
  wire consecutive_commas_r;
  wire consecutive_commas_r0;
  wire count_128d_done_r;
  wire count_32d_done_r;
  wire count_8d_done_r;
  wire [15:15]counter2_r;
  wire [3:3]counter3_r;
  wire counter3_r0;
  wire [15:15]counter4_r;
  wire counter4_r0;
  wire [15:15]counter5_r;
  wire counter5_r0;
  wire do_watchdog_count_r;
  wire do_watchdog_count_r0;
  wire enable_err_detect_i;
  wire first_v_received_r;
  wire gen_spa_i;
  wire inc_count_c;
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
  wire \n_0_counter2_r_reg[14]_srl15 ;
  wire \n_0_counter3_r_reg[2]_srl3 ;
  wire \n_0_counter4_r_reg[14]_srl15 ;
  wire \n_0_counter5_r_reg[14]_srl15 ;
  wire n_0_reset_count_r_i_3;
  wire n_0_rst_r_reg;
  wire n_0_rx_polarity_r_i_1;
  wire next_ack_c;
  wire next_align_c;
  wire next_begin_c;
  wire next_polarity_c;
  wire next_ready_c;
  wire next_realign_c;
  wire next_rst_c;
  wire [7:0]p_0_in;
  wire p_0_in2_in;
  wire p_1_in;
  wire polarity_r;
  wire prev_count_128d_done_r;
  wire ready_r;
  wire ready_r0;
  wire realign_r;
  wire reset_count_r;
  wire reset_count_r0;
  wire reset_lanes_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire user_clk;

(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT2 #(
    .INIT(4'hE)) 
     ENABLE_ERR_DETECT_i_1
       (.I0(gen_spa_i),
        .I1(ready_r),
        .O(ENABLE_ERR_DETECT0));
FDRE ENABLE_ERR_DETECT_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(ENABLE_ERR_DETECT0),
        .Q(enable_err_detect_i),
        .R(\<const0> ));
GND GND
       (.G(\<const0> ));
FDRE \RX_CHAR_IS_COMMA_R_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I7[0]),
        .Q(\n_0_RX_CHAR_IS_COMMA_R_reg[0] ),
        .R(\<const0> ));
FDRE \RX_CHAR_IS_COMMA_R_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I7[1]),
        .Q(p_1_in),
        .R(\<const0> ));
FDRE \RX_CHAR_IS_COMMA_R_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I7[2]),
        .Q(p_0_in2_in),
        .R(\<const0> ));
FDRE \RX_CHAR_IS_COMMA_R_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I7[3]),
        .Q(\n_0_RX_CHAR_IS_COMMA_R_reg[3] ),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
VCC VCC_1
       (.P(VCC_2));
LUT6 #(
    .INIT(64'h0444FFFF04440444)) 
     ack_r_i_1
       (.I0(counter5_r),
        .I1(gen_spa_i),
        .I2(counter3_r),
        .I3(counter2_r),
        .I4(RX_NEG),
        .I5(polarity_r),
        .O(next_ack_c));
FDRE ack_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(next_ack_c),
        .Q(gen_spa_i),
        .R(ready_r0));
LUT4 #(
    .INIT(16'hF222)) 
     align_r_i_2
       (.I0(O2),
        .I1(count_128d_done_r),
        .I2(count_8d_done_r),
        .I3(n_0_rst_r_reg),
        .O(next_align_c));
FDRE align_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(next_align_c),
        .Q(O2),
        .R(ready_r0));
LUT5 #(
    .INIT(32'hFFFFF888)) 
     begin_r_i_1
       (.I0(gen_spa_i),
        .I1(counter5_r),
        .I2(realign_r),
        .I3(rx_realign_i),
        .I4(n_0_begin_r_i_2),
        .O(next_begin_c));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT4 #(
    .INIT(16'hF888)) 
     begin_r_i_2
       (.I0(polarity_r),
        .I1(RX_NEG),
        .I2(counter4_r),
        .I3(ready_r),
        .O(n_0_begin_r_i_2));
FDSE begin_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(next_begin_c),
        .Q(begin_r),
        .S(ready_r0));
LUT5 #(
    .INIT(32'hFFFFFFFD)) 
     consecutive_commas_r_i_1
       (.I0(O2),
        .I1(\n_0_RX_CHAR_IS_COMMA_R_reg[0] ),
        .I2(p_0_in2_in),
        .I3(p_1_in),
        .I4(\n_0_RX_CHAR_IS_COMMA_R_reg[3] ),
        .O(consecutive_commas_r0));
FDRE consecutive_commas_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(consecutive_commas_r0),
        .Q(consecutive_commas_r),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'hFFFFFFFD)) 
     \counter1_r[0]_i_1 
       (.I0(O2),
        .I1(\n_0_RX_CHAR_IS_COMMA_R_reg[0] ),
        .I2(p_0_in2_in),
        .I3(p_1_in),
        .I4(\n_0_RX_CHAR_IS_COMMA_R_reg[3] ),
        .O(inc_count_c));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \counter1_r[0]_i_2 
       (.I0(count_128d_done_r),
        .I1(count_32d_done_r),
        .I2(count_8d_done_r),
        .I3(\n_0_counter1_r[0]_i_3 ),
        .I4(\n_0_counter1_r_reg[3] ),
        .I5(\n_0_counter1_r_reg[1] ),
        .O(p_0_in[7]));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
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
        .O(p_0_in[6]));
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
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \counter1_r[3]_i_1 
       (.I0(\n_0_counter1_r_reg[3] ),
        .I1(\n_0_counter1_r_reg[5] ),
        .I2(\n_0_counter1_r_reg[6] ),
        .I3(\n_0_counter1_r_reg[7] ),
        .I4(count_8d_done_r),
        .O(p_0_in[4]));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \counter1_r[4]_i_1 
       (.I0(count_8d_done_r),
        .I1(\n_0_counter1_r_reg[7] ),
        .I2(\n_0_counter1_r_reg[6] ),
        .I3(\n_0_counter1_r_reg[5] ),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \counter1_r[5]_i_1 
       (.I0(\n_0_counter1_r_reg[7] ),
        .I1(\n_0_counter1_r_reg[6] ),
        .I2(\n_0_counter1_r_reg[5] ),
        .O(p_0_in[2]));
LUT2 #(
    .INIT(4'h6)) 
     \counter1_r[6]_i_1 
       (.I0(\n_0_counter1_r_reg[7] ),
        .I1(\n_0_counter1_r_reg[6] ),
        .O(p_0_in[1]));
LUT1 #(
    .INIT(2'h1)) 
     \counter1_r[7]_i_1 
       (.I0(\n_0_counter1_r_reg[7] ),
        .O(p_0_in[0]));
(* counter = "13" *) 
   FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[0] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[7]),
        .Q(count_128d_done_r),
        .R(reset_count_r));
(* counter = "13" *) 
   FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[1] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[6]),
        .Q(\n_0_counter1_r_reg[1] ),
        .R(reset_count_r));
(* counter = "13" *) 
   FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[2] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(\n_0_counter1_r[2]_i_1 ),
        .Q(count_32d_done_r),
        .R(reset_count_r));
(* counter = "13" *) 
   FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[3] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[4]),
        .Q(\n_0_counter1_r_reg[3] ),
        .R(reset_count_r));
(* counter = "13" *) 
   FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[4] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[3]),
        .Q(count_8d_done_r),
        .R(reset_count_r));
(* counter = "13" *) 
   FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[5] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[2]),
        .Q(\n_0_counter1_r_reg[5] ),
        .R(reset_count_r));
(* counter = "13" *) 
   FDRE #(
    .INIT(1'b0)) 
     \counter1_r_reg[6] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[1]),
        .Q(\n_0_counter1_r_reg[6] ),
        .R(reset_count_r));
(* counter = "13" *) 
   FDSE #(
    .INIT(1'b1)) 
     \counter1_r_reg[7] 
       (.C(user_clk),
        .CE(inc_count_c),
        .D(p_0_in[0]),
        .Q(\n_0_counter1_r_reg[7] ),
        .S(reset_count_r));
(* srl_bus_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter2_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter2_r_reg[14]_srl15 " *) 
   SRL16E \counter2_r_reg[14]_srl15 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const1> ),
        .A3(\<const1> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(gen_spa_i),
        .Q(\n_0_counter2_r_reg[14]_srl15 ));
FDRE \counter2_r_reg[15] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_counter2_r_reg[14]_srl15 ),
        .Q(counter2_r),
        .R(\<const0> ));
(* srl_bus_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter3_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter3_r_reg[2]_srl3 " *) 
   SRL16E \counter3_r_reg[2]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(counter3_r0),
        .CLK(user_clk),
        .D(gen_spa_i),
        .Q(\n_0_counter3_r_reg[2]_srl3 ));
FDRE \counter3_r_reg[3] 
       (.C(user_clk),
        .CE(counter3_r0),
        .D(\n_0_counter3_r_reg[2]_srl3 ),
        .Q(counter3_r),
        .R(\<const0> ));
(* srl_bus_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter4_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter4_r_reg[14]_srl15 " *) 
   SRL16E \counter4_r_reg[14]_srl15 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const1> ),
        .A3(\<const1> ),
        .CE(counter4_r0),
        .CLK(user_clk),
        .D(ready_r),
        .Q(\n_0_counter4_r_reg[14]_srl15 ));
FDRE \counter4_r_reg[15] 
       (.C(user_clk),
        .CE(counter4_r0),
        .D(\n_0_counter4_r_reg[14]_srl15 ),
        .Q(counter4_r),
        .R(\<const0> ));
(* srl_bus_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter5_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter5_r_reg[14]_srl15 " *) 
   SRL16E \counter5_r_reg[14]_srl15 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const1> ),
        .A3(\<const1> ),
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
        .Q(counter5_r),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h2)) 
     do_watchdog_count_r_i_1
       (.I0(count_128d_done_r),
        .I1(prev_count_128d_done_r),
        .O(do_watchdog_count_r0));
FDRE do_watchdog_count_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(do_watchdog_count_r0),
        .Q(do_watchdog_count_r),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT2 #(
    .INIT(4'h1)) 
     gen_sp_r_i_1
       (.I0(ready_r),
        .I1(gen_spa_i),
        .O(GEN_SP));
(* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     lane_up_flop_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(ready_r),
        .Q(O1),
        .R(reset_lanes_i));
LUT5 #(
    .INIT(32'hFFFF888F)) 
     \left_align_select_r[0]_i_2 
       (.I0(RXCHARISK[1]),
        .I1(RXCHARISK[0]),
        .I2(ready_r),
        .I3(O2),
        .I4(first_v_received_r),
        .O(O10));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'h08)) 
     polarity_r_i_1
       (.I0(count_32d_done_r),
        .I1(realign_r),
        .I2(rx_realign_i),
        .O(next_polarity_c));
FDRE polarity_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(next_polarity_c),
        .Q(polarity_r),
        .R(ready_r0));
FDRE prev_count_128d_done_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(count_128d_done_r),
        .Q(prev_count_128d_done_r),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h4000FFFF40004000)) 
     ready_r_i_1
       (.I0(counter5_r),
        .I1(gen_spa_i),
        .I2(counter3_r),
        .I3(counter2_r),
        .I4(counter4_r),
        .I5(ready_r),
        .O(next_ready_c));
FDRE ready_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(next_ready_c),
        .Q(ready_r),
        .R(ready_r0));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT5 #(
    .INIT(32'hFF040404)) 
     realign_r_i_1
       (.I0(rx_realign_i),
        .I1(realign_r),
        .I2(count_32d_done_r),
        .I3(count_128d_done_r),
        .I4(O2),
        .O(next_realign_c));
FDRE realign_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(next_realign_c),
        .Q(realign_r),
        .R(ready_r0));
LUT6 #(
    .INIT(64'hFFFFFFFF55555551)) 
     reset_count_r_i_1
       (.I0(n_0_rst_r_reg),
        .I1(consecutive_commas_r),
        .I2(RXDISPERR[0]),
        .I3(RXDISPERR[1]),
        .I4(I6),
        .I5(n_0_reset_count_r_i_3),
        .O(reset_count_r0));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT4 #(
    .INIT(16'hBAEE)) 
     reset_count_r_i_3
       (.I0(reset_lanes_i),
        .I1(begin_r),
        .I2(count_8d_done_r),
        .I3(n_0_rst_r_reg),
        .O(n_0_reset_count_r_i_3));
FDRE reset_count_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(reset_count_r0),
        .Q(reset_count_r),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hBA)) 
     rst_r_i_1
       (.I0(begin_r),
        .I1(count_8d_done_r),
        .I2(n_0_rst_r_reg),
        .O(next_rst_c));
FDRE rst_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(next_rst_c),
        .Q(n_0_rst_r_reg),
        .R(ready_r0));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'h78)) 
     rx_polarity_r_i_1
       (.I0(RX_NEG),
        .I1(polarity_r),
        .I2(rx_polarity_i),
        .O(n_0_rx_polarity_r_i_1));
FDRE #(
    .INIT(1'b0)) 
     rx_polarity_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_0_rx_polarity_r_i_1),
        .Q(rx_polarity_i),
        .R(\<const0> ));
LUT1 #(
    .INIT(2'h1)) 
     \soft_err_r[0]_i_1 
       (.I0(enable_err_detect_i),
        .O(O3));
endmodule

module aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_CONTROL
   (MUX_SELECT,
    I1,
    user_clk);
  output [0:0]MUX_SELECT;
  input I1;
  input user_clk;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire [0:0]MUX_SELECT;
  wire user_clk;

GND GND
       (.G(\<const0> ));
FDRE \MUX_SELECT_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I1),
        .Q(MUX_SELECT),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_MUX
   (O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    O14,
    O15,
    O16,
    O17,
    O18,
    O19,
    O20,
    O21,
    O22,
    O23,
    O24,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    O32,
    O33,
    O34,
    O35,
    O36,
    O37,
    O38,
    O39,
    O40,
    O41,
    O42,
    O43,
    O44,
    O45,
    O46,
    O47,
    O48,
    D,
    user_clk,
    stage_2_data_r,
    MUX_SELECT,
    OUTPUT_SELECT,
    STORAGE_DATA,
    STORAGE_SELECT);
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  output O14;
  output O15;
  output O16;
  output O17;
  output O18;
  output O19;
  output O20;
  output O21;
  output O22;
  output O23;
  output O24;
  output O25;
  output O26;
  output O27;
  output O28;
  output O29;
  output O30;
  output O31;
  output O32;
  output O33;
  output O34;
  output O35;
  output O36;
  output O37;
  output O38;
  output O39;
  output O40;
  output O41;
  output O42;
  output O43;
  output O44;
  output O45;
  output O46;
  output O47;
  output O48;
  input [15:0]D;
  input user_clk;
  input [15:0]stage_2_data_r;
  input [0:0]MUX_SELECT;
  input [0:0]OUTPUT_SELECT;
  input [15:0]STORAGE_DATA;
  input [1:0]STORAGE_SELECT;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]D;
  wire [0:31]MUXED_DATA;
  wire [0:0]MUX_SELECT;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O14;
  wire O15;
  wire O16;
  wire O17;
  wire O18;
  wire O19;
  wire O2;
  wire O20;
  wire O21;
  wire O22;
  wire O23;
  wire O24;
  wire O25;
  wire O26;
  wire O27;
  wire O28;
  wire O29;
  wire O3;
  wire O30;
  wire O31;
  wire O32;
  wire O33;
  wire O34;
  wire O35;
  wire O36;
  wire O37;
  wire O38;
  wire O39;
  wire O4;
  wire O40;
  wire O41;
  wire O42;
  wire O43;
  wire O44;
  wire O45;
  wire O46;
  wire O47;
  wire O48;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]OUTPUT_SELECT;
  wire [15:0]STORAGE_DATA;
  wire [1:0]STORAGE_SELECT;
  wire [0:15]muxed_data_c;
  wire [15:0]stage_2_data_r;
  wire user_clk;

GND GND
       (.G(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[0]_i_1 
       (.I0(D[15]),
        .I1(stage_2_data_r[15]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[0]));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[10]_i_1 
       (.I0(D[5]),
        .I1(stage_2_data_r[5]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[10]));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[11]_i_1 
       (.I0(D[4]),
        .I1(stage_2_data_r[4]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[11]));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[12]_i_1 
       (.I0(D[3]),
        .I1(stage_2_data_r[3]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[12]));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[13]_i_1 
       (.I0(D[2]),
        .I1(stage_2_data_r[2]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[13]));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[14]_i_1 
       (.I0(D[1]),
        .I1(stage_2_data_r[1]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[14]));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[15]_i_1 
       (.I0(D[0]),
        .I1(stage_2_data_r[0]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[15]));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[1]_i_1 
       (.I0(D[14]),
        .I1(stage_2_data_r[14]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[1]));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[2]_i_1 
       (.I0(D[13]),
        .I1(stage_2_data_r[13]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[2]));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[3]_i_1 
       (.I0(D[12]),
        .I1(stage_2_data_r[12]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[3]));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[4]_i_1 
       (.I0(D[11]),
        .I1(stage_2_data_r[11]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[4]));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[5]_i_1 
       (.I0(D[10]),
        .I1(stage_2_data_r[10]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[5]));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[6]_i_1 
       (.I0(D[9]),
        .I1(stage_2_data_r[9]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[6]));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[7]_i_1 
       (.I0(D[8]),
        .I1(stage_2_data_r[8]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[7]));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[8]_i_1 
       (.I0(D[7]),
        .I1(stage_2_data_r[7]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[8]));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'hAC)) 
     \MUXED_DATA[9]_i_1 
       (.I0(D[6]),
        .I1(stage_2_data_r[6]),
        .I2(MUX_SELECT),
        .O(muxed_data_c[9]));
FDRE \MUXED_DATA_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[0]),
        .Q(MUXED_DATA[0]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[10] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[10]),
        .Q(MUXED_DATA[10]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[11] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[11]),
        .Q(MUXED_DATA[11]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[12] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[12]),
        .Q(MUXED_DATA[12]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[13] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[13]),
        .Q(MUXED_DATA[13]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[14] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[14]),
        .Q(MUXED_DATA[14]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[15] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[15]),
        .Q(MUXED_DATA[15]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[16] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[15]),
        .Q(MUXED_DATA[16]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[17] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[14]),
        .Q(MUXED_DATA[17]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[18] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[13]),
        .Q(MUXED_DATA[18]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[19] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[12]),
        .Q(MUXED_DATA[19]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[1]),
        .Q(MUXED_DATA[1]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[20] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[11]),
        .Q(MUXED_DATA[20]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[21] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[10]),
        .Q(MUXED_DATA[21]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[22] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[9]),
        .Q(MUXED_DATA[22]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[23] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[8]),
        .Q(MUXED_DATA[23]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[24] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[7]),
        .Q(MUXED_DATA[24]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[25] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[6]),
        .Q(MUXED_DATA[25]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[26] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[5]),
        .Q(MUXED_DATA[26]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[27] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[4]),
        .Q(MUXED_DATA[27]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[28] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(MUXED_DATA[28]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[29] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(MUXED_DATA[29]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[2]),
        .Q(MUXED_DATA[2]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[30] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(MUXED_DATA[30]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[31] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(MUXED_DATA[31]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[3]),
        .Q(MUXED_DATA[3]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[4]),
        .Q(MUXED_DATA[4]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[5]),
        .Q(MUXED_DATA[5]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[6]),
        .Q(MUXED_DATA[6]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[7]),
        .Q(MUXED_DATA[7]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[8] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[8]),
        .Q(MUXED_DATA[8]),
        .R(\<const0> ));
FDRE \MUXED_DATA_reg[9] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(muxed_data_c[9]),
        .Q(MUXED_DATA[9]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[16]_i_1 
       (.I0(MUXED_DATA[0]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[15]),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[17]_i_1 
       (.I0(MUXED_DATA[1]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[14]),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[18]_i_1 
       (.I0(MUXED_DATA[2]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[13]),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[19]_i_1 
       (.I0(MUXED_DATA[3]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[12]),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[20]_i_1 
       (.I0(MUXED_DATA[4]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[11]),
        .O(O5));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[21]_i_1 
       (.I0(MUXED_DATA[5]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[10]),
        .O(O6));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[22]_i_1 
       (.I0(MUXED_DATA[6]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[9]),
        .O(O7));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[23]_i_1 
       (.I0(MUXED_DATA[7]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[8]),
        .O(O8));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[24]_i_1 
       (.I0(MUXED_DATA[8]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[7]),
        .O(O9));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[25]_i_1 
       (.I0(MUXED_DATA[9]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[6]),
        .O(O10));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[26]_i_1 
       (.I0(MUXED_DATA[10]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[5]),
        .O(O11));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[27]_i_1 
       (.I0(MUXED_DATA[11]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[4]),
        .O(O12));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[28]_i_1 
       (.I0(MUXED_DATA[12]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[3]),
        .O(O13));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[29]_i_1 
       (.I0(MUXED_DATA[13]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[2]),
        .O(O14));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[30]_i_1 
       (.I0(MUXED_DATA[14]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[1]),
        .O(O15));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \OUTPUT_DATA[31]_i_1 
       (.I0(MUXED_DATA[15]),
        .I1(OUTPUT_SELECT),
        .I2(STORAGE_DATA[0]),
        .O(O16));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[0]_i_1 
       (.I0(MUXED_DATA[16]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[0]),
        .O(O17));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[10]_i_1 
       (.I0(MUXED_DATA[26]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[10]),
        .O(O27));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[11]_i_1 
       (.I0(MUXED_DATA[27]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[11]),
        .O(O28));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[12]_i_1 
       (.I0(MUXED_DATA[28]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[12]),
        .O(O29));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[13]_i_1 
       (.I0(MUXED_DATA[29]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[13]),
        .O(O30));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[14]_i_1 
       (.I0(MUXED_DATA[30]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[14]),
        .O(O31));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[15]_i_1 
       (.I0(MUXED_DATA[31]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[15]),
        .O(O32));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[16]_i_1 
       (.I0(MUXED_DATA[16]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[0]),
        .O(O33));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[17]_i_1 
       (.I0(MUXED_DATA[17]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[1]),
        .O(O34));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[18]_i_1 
       (.I0(MUXED_DATA[18]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[2]),
        .O(O35));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[19]_i_1 
       (.I0(MUXED_DATA[19]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[3]),
        .O(O36));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[1]_i_1 
       (.I0(MUXED_DATA[17]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[1]),
        .O(O18));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[20]_i_1 
       (.I0(MUXED_DATA[20]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[4]),
        .O(O37));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[21]_i_1 
       (.I0(MUXED_DATA[21]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[5]),
        .O(O38));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[22]_i_1 
       (.I0(MUXED_DATA[22]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[6]),
        .O(O39));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[23]_i_1 
       (.I0(MUXED_DATA[23]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[7]),
        .O(O40));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[24]_i_1 
       (.I0(MUXED_DATA[24]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[8]),
        .O(O41));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[25]_i_1 
       (.I0(MUXED_DATA[25]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[9]),
        .O(O42));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[26]_i_1 
       (.I0(MUXED_DATA[26]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[10]),
        .O(O43));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[27]_i_1 
       (.I0(MUXED_DATA[27]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[11]),
        .O(O44));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[28]_i_1 
       (.I0(MUXED_DATA[28]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[12]),
        .O(O45));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[29]_i_1 
       (.I0(MUXED_DATA[29]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[13]),
        .O(O46));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[2]_i_1 
       (.I0(MUXED_DATA[18]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[2]),
        .O(O19));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[30]_i_1 
       (.I0(MUXED_DATA[30]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[14]),
        .O(O47));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[31]_i_1 
       (.I0(MUXED_DATA[31]),
        .I1(STORAGE_SELECT[0]),
        .I2(MUXED_DATA[15]),
        .O(O48));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[3]_i_1 
       (.I0(MUXED_DATA[19]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[3]),
        .O(O20));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[4]_i_1 
       (.I0(MUXED_DATA[20]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[4]),
        .O(O21));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[5]_i_1 
       (.I0(MUXED_DATA[21]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[5]),
        .O(O22));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[6]_i_1 
       (.I0(MUXED_DATA[22]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[6]),
        .O(O23));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[7]_i_1 
       (.I0(MUXED_DATA[23]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[7]),
        .O(O24));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[8]_i_1 
       (.I0(MUXED_DATA[24]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[8]),
        .O(O25));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \STORAGE_DATA[9]_i_1 
       (.I0(MUXED_DATA[25]),
        .I1(STORAGE_SELECT[1]),
        .I2(MUXED_DATA[9]),
        .O(O26));
VCC VCC
       (.P(\<const1> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_OUTPUT_MUX
   (m_axi_rx_tdata,
    D,
    user_clk,
    I1,
    I2,
    I3,
    I4,
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
  output [0:31]m_axi_rx_tdata;
  input [15:0]D;
  input user_clk;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;

  wire \<const0> ;
  wire \<const1> ;
  wire [15:0]D;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire [0:31]m_axi_rx_tdata;
  wire user_clk;

GND GND
       (.G(\<const0> ));
FDRE \OUTPUT_DATA_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[15]),
        .Q(m_axi_rx_tdata[0]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[10] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[5]),
        .Q(m_axi_rx_tdata[10]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[11] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[4]),
        .Q(m_axi_rx_tdata[11]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[12] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(m_axi_rx_tdata[12]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[13] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(m_axi_rx_tdata[13]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[14] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(m_axi_rx_tdata[14]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[15] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(m_axi_rx_tdata[15]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[16] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I1),
        .Q(m_axi_rx_tdata[16]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[17] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I2),
        .Q(m_axi_rx_tdata[17]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[18] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I3),
        .Q(m_axi_rx_tdata[18]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[19] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I4),
        .Q(m_axi_rx_tdata[19]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[14]),
        .Q(m_axi_rx_tdata[1]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[20] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I5),
        .Q(m_axi_rx_tdata[20]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[21] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I6),
        .Q(m_axi_rx_tdata[21]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[22] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I7),
        .Q(m_axi_rx_tdata[22]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[23] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I8),
        .Q(m_axi_rx_tdata[23]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[24] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I9),
        .Q(m_axi_rx_tdata[24]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[25] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I10),
        .Q(m_axi_rx_tdata[25]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[26] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I11),
        .Q(m_axi_rx_tdata[26]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[27] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I12),
        .Q(m_axi_rx_tdata[27]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[28] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I13),
        .Q(m_axi_rx_tdata[28]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[29] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I14),
        .Q(m_axi_rx_tdata[29]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[13]),
        .Q(m_axi_rx_tdata[2]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[30] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I15),
        .Q(m_axi_rx_tdata[30]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[31] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I16),
        .Q(m_axi_rx_tdata[31]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[12]),
        .Q(m_axi_rx_tdata[3]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[11]),
        .Q(m_axi_rx_tdata[4]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[10]),
        .Q(m_axi_rx_tdata[5]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[9]),
        .Q(m_axi_rx_tdata[6]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[8]),
        .Q(m_axi_rx_tdata[7]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[8] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[7]),
        .Q(m_axi_rx_tdata[8]),
        .R(\<const0> ));
FDRE \OUTPUT_DATA_reg[9] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[6]),
        .Q(m_axi_rx_tdata[9]),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_OUTPUT_SWITCH_CONTROL
   (OUTPUT_SELECT,
    I1,
    user_clk);
  output [0:0]OUTPUT_SELECT;
  input I1;
  input user_clk;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire [0:0]OUTPUT_SELECT;
  wire user_clk;

GND GND
       (.G(\<const0> ));
FDRE \OUTPUT_SELECT_reg[9] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I1),
        .Q(OUTPUT_SELECT),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_RESET_LOGIC
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
    SS,
    O12,
    sys_reset_out,
    tx_resetdone_out,
    user_clk,
    link_reset_out,
    init_clk_in,
    reset_channel_i,
    reset,
    wait_for_lane_up_r,
    rx_resetdone_out);
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
  output [0:0]SS;
  output O12;
  output sys_reset_out;
  input tx_resetdone_out;
  input user_clk;
  input link_reset_out;
  input init_clk_in;
  input reset_channel_i;
  input reset;
  input wait_for_lane_up_r;
  input rx_resetdone_out;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]O1;
  wire [1:0]O10;
  wire [1:0]O11;
  wire O12;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [1:0]O8;
  wire [1:0]O9;
  wire [0:0]SS;
  wire gt_rxresetdone_r;
  wire gt_rxresetdone_r2;
  wire gt_rxresetdone_r3;
  wire gt_txresetdone_r;
  wire gt_txresetdone_r2;
  wire gt_txresetdone_r3;
  wire init_clk_in;
  wire link_reset_comb_r;
  wire link_reset_out;
  wire n_0_gt_rxresetdone_r2_i_1;
  wire n_0_gt_txresetdone_r2_i_1;
  wire [1:0]out;
  wire reset;
  wire reset_channel_i;
  wire rx_resetdone_out;
  wire s_out_d1_cdc_to;
  wire s_out_d1_cdc_to_0;
  wire s_out_d2;
  wire s_out_d2_1;
  wire s_out_d3;
  wire s_out_d3_2;
  wire s_out_d4;
  wire s_out_d4_3;
  wire s_out_d5;
  wire s_out_d5_4;
  wire s_out_d6;
  wire s_out_d6_5;
  wire s_out_d7;
  wire s_out_d7_6;
  wire sys_reset_out;
  wire tx_resetdone_out;
  wire tx_resetdone_sync;
  wire user_clk;
  wire wait_for_lane_up_r;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h1)) 
     gt_rxresetdone_r2_i_1
       (.I0(rx_resetdone_out),
        .O(n_0_gt_rxresetdone_r2_i_1));
FDCE gt_rxresetdone_r2_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .CLR(n_0_gt_rxresetdone_r2_i_1),
        .D(gt_rxresetdone_r),
        .Q(gt_rxresetdone_r2));
FDRE gt_rxresetdone_r3_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(gt_rxresetdone_r2),
        .Q(gt_rxresetdone_r3),
        .R(\<const0> ));
FDCE gt_rxresetdone_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .CLR(n_0_gt_rxresetdone_r2_i_1),
        .D(\<const1> ),
        .Q(gt_rxresetdone_r));
LUT1 #(
    .INIT(2'h1)) 
     gt_txresetdone_r2_i_1
       (.I0(tx_resetdone_sync),
        .O(n_0_gt_txresetdone_r2_i_1));
FDCE gt_txresetdone_r2_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .CLR(n_0_gt_txresetdone_r2_i_1),
        .D(gt_txresetdone_r),
        .Q(gt_txresetdone_r2));
FDRE gt_txresetdone_r3_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(gt_txresetdone_r2),
        .Q(gt_txresetdone_r3),
        .R(\<const0> ));
FDCE gt_txresetdone_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .CLR(n_0_gt_txresetdone_r2_i_1),
        .D(\<const1> ),
        .Q(gt_txresetdone_r));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_16 link_reset_cdc_sync
       (.O10(O10),
        .O11(O11),
        .O12(O12),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .SS(SS),
        .gt_rxresetdone_r3(gt_rxresetdone_r3),
        .gt_txresetdone_r3(gt_txresetdone_r3),
        .link_reset_comb_r(link_reset_comb_r),
        .reset(reset),
        .reset_channel_i(reset_channel_i),
        .s_out_d1_cdc_to_0(s_out_d1_cdc_to_0),
        .s_out_d2_1(s_out_d2_1),
        .s_out_d3_2(s_out_d3_2),
        .s_out_d4_3(s_out_d4_3),
        .s_out_d5_4(s_out_d5_4),
        .s_out_d6_5(s_out_d6_5),
        .s_out_d7_6(s_out_d7_6),
        .sys_reset_out(sys_reset_out),
        .user_clk(user_clk),
        .wait_for_lane_up_r(wait_for_lane_up_r));
FDRE link_reset_comb_r_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(link_reset_out),
        .Q(link_reset_comb_r),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_15 tx_resetdone_cdc_sync
       (.O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .out(out),
        .s_out_d1_cdc_to(s_out_d1_cdc_to),
        .s_out_d2(s_out_d2),
        .s_out_d3(s_out_d3),
        .s_out_d4(s_out_d4),
        .s_out_d5(s_out_d5),
        .s_out_d6(s_out_d6),
        .s_out_d7(s_out_d7),
        .tx_resetdone_out(tx_resetdone_out),
        .tx_resetdone_sync(tx_resetdone_sync),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0aurora_8b10b_0_RX_LL
   (in_frame_c,
    in_frame_r,
    frame_err,
    m_axi_rx_tkeep,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    m_axi_rx_tdata,
    I1,
    D,
    I2,
    S11_in,
    S1,
    SR,
    user_clk,
    I3,
    O19,
    O18,
    O17,
    O16,
    start_rx_i,
    I4,
    I5,
    I6);
  output [0:1]in_frame_c;
  output in_frame_r;
  output frame_err;
  output [2:0]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  output [0:31]m_axi_rx_tdata;
  input I1;
  input [1:0]D;
  input I2;
  input S11_in;
  input S1;
  input [0:0]SR;
  input user_clk;
  input I3;
  input [7:0]O19;
  input [7:0]O18;
  input [7:0]O17;
  input [7:0]O16;
  input start_rx_i;
  input [1:0]I4;
  input [1:0]I5;
  input [1:0]I6;

  wire [1:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire [1:0]I4;
  wire [1:0]I5;
  wire [1:0]I6;
  wire [7:0]O16;
  wire [7:0]O17;
  wire [7:0]O18;
  wire [7:0]O19;
  wire S1;
  wire S11_in;
  wire [0:0]SR;
  wire frame_err;
  wire [0:1]in_frame_c;
  wire in_frame_r;
  wire [0:31]m_axi_rx_tdata;
  wire [2:0]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire start_rx_i;
  wire user_clk;

aurora_8b10b_0aurora_8b10b_0_RX_LL_PDU_DATAPATH rx_ll_pdu_datapath_i
       (.D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .O16(O16),
        .O17(O17),
        .O18(O18),
        .O19(O19),
        .S1(S1),
        .S11_in(S11_in),
        .SR(SR),
        .frame_err(frame_err),
        .in_frame_c(in_frame_c),
        .in_frame_r(in_frame_r),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep(m_axi_rx_tkeep),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0aurora_8b10b_0_RX_LL_DEFRAMER
   (in_frame_c,
    in_frame_r,
    O1,
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
    Q,
    I3,
    start_rx_i,
    I4,
    I5);
  output [0:1]in_frame_c;
  output in_frame_r;
  output O1;
  output O2;
  output O3;
  output O4;
  output [1:0]O5;
  output O6;
  input I1;
  input [1:0]D;
  input I2;
  input S11_in;
  input S1;
  input [0:0]SR;
  input user_clk;
  input [1:0]Q;
  input [1:0]I3;
  input start_rx_i;
  input [1:0]I4;
  input [1:0]I5;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire I1;
  wire I2;
  wire [1:0]I3;
  wire [1:0]I4;
  wire [1:0]I5;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire [1:0]O5;
  wire O6;
  wire [1:0]Q;
  wire S1;
  wire S11_in;
  wire [0:0]SR;
  wire [0:1]after_scp_c;
  wire [0:1]in_frame_c;
  wire in_frame_r;
  wire lopt;
  wire lopt_1;
  wire n_0_stage_2_frame_err_r_i_2;
  wire [0:1]stage_1_after_scp_r;
  wire [0:1]stage_1_data_v_r;
  wire [0:1]stage_1_in_frame_r;
  wire start_rx_i;
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
        .CE(\<const1> ),
        .D(after_scp_c[0]),
        .Q(stage_1_after_scp_r[0]),
        .R(SR));
FDRE \AFTER_SCP_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(after_scp_c[1]),
        .Q(stage_1_after_scp_r[1]),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \COUNT[0]_i_1 
       (.I0(stage_1_data_v_r[1]),
        .I1(stage_1_data_v_r[0]),
        .O(O5[1]));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \COUNT[1]_i_1 
       (.I0(stage_1_data_v_r[1]),
        .I1(stage_1_data_v_r[0]),
        .O(O5[0]));
FDRE \DEFRAMED_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I4[1]),
        .Q(stage_1_data_v_r[0]),
        .R(SR));
FDRE \DEFRAMED_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I4[0]),
        .Q(stage_1_data_v_r[1]),
        .R(SR));
GND GND
       (.G(\<const0> ));
FDRE \IN_FRAME_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I5[1]),
        .Q(stage_1_in_frame_r[0]),
        .R(\<const0> ));
FDRE \IN_FRAME_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I5[0]),
        .Q(stage_1_in_frame_r[1]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \MUX_SELECT[2]_i_1 
       (.I0(stage_1_data_v_r[1]),
        .I1(stage_1_data_v_r[0]),
        .O(O4));
VCC VCC
       (.P(\<const1> ));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 data_after_start_muxcy_0_CARRY4
       (.CI(lopt_1),
        .CO({NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED[3:2],after_scp_c[1],after_scp_c[0]}),
        .CYINIT(\<const0> ),
        .DI({NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED[3:2],\<const1> ,\<const1> }),
        .O(NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED[3:2],S1,S11_in}));
GND data_after_start_muxcy_0_CARRY4_GND
       (.G(lopt_1));
(* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
   (* box_type = "PRIMITIVE" *) 
   CARRY4 in_frame_muxcy_0_CARRY4
       (.CI(lopt),
        .CO({NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED[3:2],in_frame_c[1],in_frame_c[0]}),
        .CYINIT(in_frame_r),
        .DI({NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED[3:2],D[0],D[1]}),
        .O(NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED[3:0]),
        .S({NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED[3:2],I2,I1}));
GND in_frame_muxcy_0_CARRY4_GND
       (.G(lopt));
FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(in_frame_c[1]),
        .Q(in_frame_r),
        .R(SR));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT4 #(
    .INIT(16'hF888)) 
     stage_2_end_after_start_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(Q[0]),
        .I2(stage_1_after_scp_r[0]),
        .I3(Q[1]),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT4 #(
    .INIT(16'h4F44)) 
     stage_2_end_before_start_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(Q[0]),
        .I2(stage_1_after_scp_r[0]),
        .I3(Q[1]),
        .O(O2));
LUT2 #(
    .INIT(4'h4)) 
     stage_2_frame_err_r_i_1
       (.I0(n_0_stage_2_frame_err_r_i_2),
        .I1(start_rx_i),
        .O(O6));
LUT6 #(
    .INIT(64'h0000001D1D1D001D)) 
     stage_2_frame_err_r_i_2
       (.I0(Q[0]),
        .I1(stage_1_in_frame_r[1]),
        .I2(I3[0]),
        .I3(Q[1]),
        .I4(stage_1_in_frame_r[0]),
        .I5(I3[1]),
        .O(n_0_stage_2_frame_err_r_i_2));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT4 #(
    .INIT(16'hF888)) 
     stage_2_start_with_data_r_i_1
       (.I0(stage_1_after_scp_r[1]),
        .I1(stage_1_data_v_r[1]),
        .I2(stage_1_after_scp_r[0]),
        .I3(stage_1_data_v_r[0]),
        .O(O1));
endmodule

module aurora_8b10b_0aurora_8b10b_0_RX_LL_PDU_DATAPATH
   (in_frame_c,
    in_frame_r,
    frame_err,
    m_axi_rx_tkeep,
    m_axi_rx_tvalid,
    m_axi_rx_tlast,
    m_axi_rx_tdata,
    I1,
    D,
    I2,
    S11_in,
    S1,
    SR,
    user_clk,
    I3,
    O19,
    O18,
    O17,
    O16,
    start_rx_i,
    I4,
    I5,
    I6);
  output [0:1]in_frame_c;
  output in_frame_r;
  output frame_err;
  output [2:0]m_axi_rx_tkeep;
  output m_axi_rx_tvalid;
  output m_axi_rx_tlast;
  output [0:31]m_axi_rx_tdata;
  input I1;
  input [1:0]D;
  input I2;
  input S11_in;
  input S1;
  input [0:0]SR;
  input user_clk;
  input I3;
  input [7:0]O19;
  input [7:0]O18;
  input [7:0]O17;
  input [7:0]O16;
  input start_rx_i;
  input [1:0]I4;
  input [1:0]I5;
  input [1:0]I6;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire EOF_N;
  wire FRAME_ERR_RESULT;
  wire FRAME_ERR_RESULT0;
  wire I1;
  wire I2;
  wire I3;
  wire [1:0]I4;
  wire [1:0]I5;
  wire [1:0]I6;
  wire [2:2]MUX_SELECT;
  wire [7:0]O16;
  wire [7:0]O17;
  wire [7:0]O18;
  wire [7:0]O19;
  wire [0:0]OUTPUT_SELECT;
  wire S1;
  wire S11_in;
  wire [0:0]SR;
  wire SRC_RDY_N;
  wire [16:31]STORAGE_DATA;
  wire [4:9]STORAGE_SELECT;
  wire [0:1]ce_command_c;
  wire [0:1]count_c;
  wire frame_err;
  wire [0:1]in_frame_c;
  wire in_frame_r;
  wire [0:31]m_axi_rx_tdata;
  wire [2:0]m_axi_rx_tkeep;
  wire m_axi_rx_tlast;
  wire m_axi_rx_tvalid;
  wire [16:31]muxed_data_c;
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
  wire n_0_stage_2_frame_err_r_reg;
  wire n_0_stage_3_left_align_datapath_mux_i;
  wire n_0_stage_3_storage_count_control_i;
  wire n_10_stage_3_left_align_datapath_mux_i;
  wire n_11_stage_3_left_align_datapath_mux_i;
  wire n_12_stage_3_left_align_datapath_mux_i;
  wire n_13_stage_3_left_align_datapath_mux_i;
  wire n_14_stage_3_left_align_datapath_mux_i;
  wire n_15_stage_3_left_align_datapath_mux_i;
  wire n_16_stage_3_left_align_datapath_mux_i;
  wire n_17_stage_3_left_align_datapath_mux_i;
  wire n_18_stage_3_left_align_datapath_mux_i;
  wire n_19_stage_3_left_align_datapath_mux_i;
  wire n_1_stage_3_left_align_datapath_mux_i;
  wire n_1_stage_3_storage_ce_control_i;
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
  wire n_2_stage_3_left_align_datapath_mux_i;
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
  wire n_3_stage_3_left_align_datapath_mux_i;
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
  wire n_4_stage_3_left_align_datapath_mux_i;
  wire n_5_sideband_output_i;
  wire n_5_stage_1_rx_ll_deframer_i;
  wire n_5_stage_3_left_align_datapath_mux_i;
  wire n_5_stage_3_storage_count_control_i;
  wire n_6_sideband_output_i;
  wire n_6_stage_1_rx_ll_deframer_i;
  wire n_6_stage_3_left_align_datapath_mux_i;
  wire n_6_stage_3_storage_count_control_i;
  wire n_7_stage_3_left_align_datapath_mux_i;
  wire n_7_stage_3_storage_count_control_i;
  wire n_8_stage_3_left_align_datapath_mux_i;
  wire n_9_stage_1_rx_ll_deframer_i;
  wire n_9_stage_3_left_align_datapath_mux_i;
  wire [0:15]output_data_c;
  wire overwrite_c;
  wire p_0_in0;
  wire rx_eof;
  wire [1:1]rx_rem_int;
  wire rx_src_rdy;
  wire [0:1]stage_1_ecp_r;
  wire stage_1_pad_r;
  wire [0:1]stage_1_scp_r;
  wire [0:15]stage_2_data_r;
  wire [0:1]stage_2_data_v_count_r;
  wire stage_2_end_after_start_r;
  wire stage_2_end_before_start_r;
  wire stage_2_pad_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire [0:1]stage_3_storage_count_r;
  wire start_rx_i;
  wire user_clk;

FDRE FRAME_ERR_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(FRAME_ERR_RESULT),
        .Q(frame_err),
        .R(SR));
GND GND
       (.G(\<const0> ));
FDRE RX_EOF_N_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(EOF_N),
        .Q(rx_eof),
        .R(\<const0> ));
FDRE \RX_REM_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_5_sideband_output_i),
        .Q(m_axi_rx_tkeep[1]),
        .R(\<const0> ));
FDRE \RX_REM_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_6_sideband_output_i),
        .Q(rx_rem_int),
        .R(\<const0> ));
FDSE RX_SRC_RDY_N_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(SRC_RDY_N),
        .Q(rx_src_rdy),
        .S(SR));
VCC VCC
       (.P(\<const1> ));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \m_axi_rx_tkeep[1]_INST_0 
       (.I0(m_axi_rx_tkeep[1]),
        .I1(rx_rem_int),
        .O(m_axi_rx_tkeep[2]));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \m_axi_rx_tkeep[3]_INST_0 
       (.I0(rx_rem_int),
        .I1(m_axi_rx_tkeep[1]),
        .O(m_axi_rx_tkeep[0]));
LUT1 #(
    .INIT(2'h1)) 
     m_axi_rx_tlast_INST_0
       (.I0(rx_eof),
        .O(m_axi_rx_tlast));
LUT1 #(
    .INIT(2'h1)) 
     m_axi_rx_tvalid_INST_0
       (.I0(rx_src_rdy),
        .O(m_axi_rx_tvalid));
aurora_8b10b_0aurora_8b10b_0_OUTPUT_MUX output_mux_i
       (.D({output_data_c[0],output_data_c[1],output_data_c[2],output_data_c[3],output_data_c[4],output_data_c[5],output_data_c[6],output_data_c[7],output_data_c[8],output_data_c[9],output_data_c[10],output_data_c[11],output_data_c[12],output_data_c[13],output_data_c[14],output_data_c[15]}),
        .I1(n_0_stage_3_left_align_datapath_mux_i),
        .I10(n_9_stage_3_left_align_datapath_mux_i),
        .I11(n_10_stage_3_left_align_datapath_mux_i),
        .I12(n_11_stage_3_left_align_datapath_mux_i),
        .I13(n_12_stage_3_left_align_datapath_mux_i),
        .I14(n_13_stage_3_left_align_datapath_mux_i),
        .I15(n_14_stage_3_left_align_datapath_mux_i),
        .I16(n_15_stage_3_left_align_datapath_mux_i),
        .I2(n_1_stage_3_left_align_datapath_mux_i),
        .I3(n_2_stage_3_left_align_datapath_mux_i),
        .I4(n_3_stage_3_left_align_datapath_mux_i),
        .I5(n_4_stage_3_left_align_datapath_mux_i),
        .I6(n_5_stage_3_left_align_datapath_mux_i),
        .I7(n_6_stage_3_left_align_datapath_mux_i),
        .I8(n_7_stage_3_left_align_datapath_mux_i),
        .I9(n_8_stage_3_left_align_datapath_mux_i),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_SIDEBAND_OUTPUT sideband_output_i
       (.EOF_N(EOF_N),
        .FRAME_ERR_RESULT(FRAME_ERR_RESULT),
        .FRAME_ERR_RESULT0(FRAME_ERR_RESULT0),
        .I1(n_5_stage_3_storage_count_control_i),
        .I2(n_7_stage_3_storage_count_control_i),
        .I3(n_6_stage_3_storage_count_control_i),
        .I4(n_0_stage_3_storage_count_control_i),
        .I5(n_0_stage_2_frame_err_r_reg),
        .O1({n_5_sideband_output_i,n_6_sideband_output_i}),
        .Q(stage_2_data_v_count_r[1]),
        .SRC_RDY_N(SRC_RDY_N),
        .overwrite_c(overwrite_c),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_pad_r(stage_2_pad_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .stage_3_storage_count_r(stage_3_storage_count_r[1]),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[0]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[0]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O19[7]),
        .Q(\n_0_stage_1_data_r_reg[0]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[10]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[10]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O18[5]),
        .Q(\n_0_stage_1_data_r_reg[10]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[11]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[11]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O18[4]),
        .Q(\n_0_stage_1_data_r_reg[11]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[12]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[12]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O18[3]),
        .Q(\n_0_stage_1_data_r_reg[12]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[13]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[13]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O18[2]),
        .Q(\n_0_stage_1_data_r_reg[13]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[14]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[14]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O18[1]),
        .Q(\n_0_stage_1_data_r_reg[14]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[15]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[15]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O18[0]),
        .Q(\n_0_stage_1_data_r_reg[15]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[16]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[16]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O17[7]),
        .Q(\n_0_stage_1_data_r_reg[16]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[17]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[17]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O17[6]),
        .Q(\n_0_stage_1_data_r_reg[17]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[18]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[18]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O17[5]),
        .Q(\n_0_stage_1_data_r_reg[18]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[19]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[19]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O17[4]),
        .Q(\n_0_stage_1_data_r_reg[19]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[1]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[1]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O19[6]),
        .Q(\n_0_stage_1_data_r_reg[1]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[20]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[20]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O17[3]),
        .Q(\n_0_stage_1_data_r_reg[20]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[21]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[21]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O17[2]),
        .Q(\n_0_stage_1_data_r_reg[21]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[22]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[22]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O17[1]),
        .Q(\n_0_stage_1_data_r_reg[22]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[23]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[23]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O17[0]),
        .Q(\n_0_stage_1_data_r_reg[23]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[24]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[24]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O16[7]),
        .Q(\n_0_stage_1_data_r_reg[24]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[25]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[25]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O16[6]),
        .Q(\n_0_stage_1_data_r_reg[25]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[26]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[26]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O16[5]),
        .Q(\n_0_stage_1_data_r_reg[26]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[27]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[27]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O16[4]),
        .Q(\n_0_stage_1_data_r_reg[27]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[28]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[28]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O16[3]),
        .Q(\n_0_stage_1_data_r_reg[28]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[29]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[29]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O16[2]),
        .Q(\n_0_stage_1_data_r_reg[29]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[2]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[2]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O19[5]),
        .Q(\n_0_stage_1_data_r_reg[2]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[30]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[30]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O16[1]),
        .Q(\n_0_stage_1_data_r_reg[30]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[31]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[31]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O16[0]),
        .Q(\n_0_stage_1_data_r_reg[31]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[3]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[3]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O19[4]),
        .Q(\n_0_stage_1_data_r_reg[3]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[4]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[4]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O19[3]),
        .Q(\n_0_stage_1_data_r_reg[4]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[5]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[5]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O19[2]),
        .Q(\n_0_stage_1_data_r_reg[5]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[6]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[6]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O19[1]),
        .Q(\n_0_stage_1_data_r_reg[6]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[7]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[7]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O19[0]),
        .Q(\n_0_stage_1_data_r_reg[7]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[8]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[8]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O18[7]),
        .Q(\n_0_stage_1_data_r_reg[8]_srl3 ));
(* srl_bus_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg " *) 
   (* srl_name = "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[9]_srl3 " *) 
   SRL16E \stage_1_data_r_reg[9]_srl3 
       (.A0(\<const0> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(user_clk),
        .D(O18[6]),
        .Q(\n_0_stage_1_data_r_reg[9]_srl3 ));
FDRE \stage_1_ecp_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I6[1]),
        .Q(stage_1_ecp_r[0]),
        .R(\<const0> ));
FDRE \stage_1_ecp_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I6[0]),
        .Q(stage_1_ecp_r[1]),
        .R(\<const0> ));
FDRE stage_1_pad_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I3),
        .Q(stage_1_pad_r),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_RX_LL_DEFRAMER stage_1_rx_ll_deframer_i
       (.D(D),
        .I1(I1),
        .I2(I2),
        .I3({stage_1_scp_r[0],stage_1_scp_r[1]}),
        .I4(I4),
        .I5(I5),
        .O1(n_3_stage_1_rx_ll_deframer_i),
        .O2(n_4_stage_1_rx_ll_deframer_i),
        .O3(n_5_stage_1_rx_ll_deframer_i),
        .O4(n_6_stage_1_rx_ll_deframer_i),
        .O5({count_c[0],count_c[1]}),
        .O6(n_9_stage_1_rx_ll_deframer_i),
        .Q({stage_1_ecp_r[0],stage_1_ecp_r[1]}),
        .S1(S1),
        .S11_in(S11_in),
        .SR(SR),
        .in_frame_c(in_frame_c),
        .in_frame_r(in_frame_r),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
FDRE \stage_1_scp_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(stage_1_scp_r[0]),
        .R(\<const0> ));
FDRE \stage_1_scp_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(stage_1_scp_r[1]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[0]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[0]_srl3 ),
        .Q(stage_2_data_r[0]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[10]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[10]_srl3 ),
        .Q(stage_2_data_r[10]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[11]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[11]_srl3 ),
        .Q(stage_2_data_r[11]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[12]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[12]_srl3 ),
        .Q(stage_2_data_r[12]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[13]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[13]_srl3 ),
        .Q(stage_2_data_r[13]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[14]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[14]_srl3 ),
        .Q(stage_2_data_r[14]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[15]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[15]_srl3 ),
        .Q(stage_2_data_r[15]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[16]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[16]_srl3 ),
        .Q(muxed_data_c[16]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[17]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[17]_srl3 ),
        .Q(muxed_data_c[17]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[18]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[18]_srl3 ),
        .Q(muxed_data_c[18]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[19]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[19]_srl3 ),
        .Q(muxed_data_c[19]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[1]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[1]_srl3 ),
        .Q(stage_2_data_r[1]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[20]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[20]_srl3 ),
        .Q(muxed_data_c[20]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[21]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[21]_srl3 ),
        .Q(muxed_data_c[21]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[22]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[22]_srl3 ),
        .Q(muxed_data_c[22]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[23]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[23]_srl3 ),
        .Q(muxed_data_c[23]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[24]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[24]_srl3 ),
        .Q(muxed_data_c[24]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[25]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[25]_srl3 ),
        .Q(muxed_data_c[25]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[26]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[26]_srl3 ),
        .Q(muxed_data_c[26]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[27]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[27]_srl3 ),
        .Q(muxed_data_c[27]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[28]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[28]_srl3 ),
        .Q(muxed_data_c[28]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[29]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[29]_srl3 ),
        .Q(muxed_data_c[29]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[2]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[2]_srl3 ),
        .Q(stage_2_data_r[2]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[30]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[30]_srl3 ),
        .Q(muxed_data_c[30]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[31]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[31]_srl3 ),
        .Q(muxed_data_c[31]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[3]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[3]_srl3 ),
        .Q(stage_2_data_r[3]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[4]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[4]_srl3 ),
        .Q(stage_2_data_r[4]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[5]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[5]_srl3 ),
        .Q(stage_2_data_r[5]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[6]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[6]_srl3 ),
        .Q(stage_2_data_r[6]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[7]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[7]_srl3 ),
        .Q(stage_2_data_r[7]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[8]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[8]_srl3 ),
        .Q(stage_2_data_r[8]),
        .R(\<const0> ));
FDRE \stage_2_data_r_reg[9]__0 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_stage_1_data_r_reg[9]_srl3 ),
        .Q(stage_2_data_r[9]),
        .R(\<const0> ));
FDRE stage_2_end_after_start_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_5_stage_1_rx_ll_deframer_i),
        .Q(stage_2_end_after_start_r),
        .R(SR));
FDRE stage_2_end_before_start_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_4_stage_1_rx_ll_deframer_i),
        .Q(stage_2_end_before_start_r),
        .R(SR));
FDRE stage_2_frame_err_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_9_stage_1_rx_ll_deframer_i),
        .Q(n_0_stage_2_frame_err_r_reg),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_CONTROL stage_2_left_align_control_i
       (.I1(n_6_stage_1_rx_ll_deframer_i),
        .MUX_SELECT(MUX_SELECT),
        .user_clk(user_clk));
FDRE stage_2_pad_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(stage_1_pad_r),
        .Q(stage_2_pad_r),
        .R(\<const0> ));
FDRE stage_2_start_with_data_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_3_stage_1_rx_ll_deframer_i),
        .Q(stage_2_start_with_data_r),
        .R(SR));
aurora_8b10b_0aurora_8b10b_0_VALID_DATA_COUNTER stage_2_valid_data_counter_i
       (.D({ce_command_c[0],ce_command_c[1]}),
        .I1({count_c[0],count_c[1]}),
        .Q({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .SR(SR),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .stage_3_storage_count_r(stage_3_storage_count_r),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_MUX stage_3_left_align_datapath_mux_i
       (.D({muxed_data_c[16],muxed_data_c[17],muxed_data_c[18],muxed_data_c[19],muxed_data_c[20],muxed_data_c[21],muxed_data_c[22],muxed_data_c[23],muxed_data_c[24],muxed_data_c[25],muxed_data_c[26],muxed_data_c[27],muxed_data_c[28],muxed_data_c[29],muxed_data_c[30],muxed_data_c[31]}),
        .MUX_SELECT(MUX_SELECT),
        .O1(n_0_stage_3_left_align_datapath_mux_i),
        .O10(n_9_stage_3_left_align_datapath_mux_i),
        .O11(n_10_stage_3_left_align_datapath_mux_i),
        .O12(n_11_stage_3_left_align_datapath_mux_i),
        .O13(n_12_stage_3_left_align_datapath_mux_i),
        .O14(n_13_stage_3_left_align_datapath_mux_i),
        .O15(n_14_stage_3_left_align_datapath_mux_i),
        .O16(n_15_stage_3_left_align_datapath_mux_i),
        .O17(n_16_stage_3_left_align_datapath_mux_i),
        .O18(n_17_stage_3_left_align_datapath_mux_i),
        .O19(n_18_stage_3_left_align_datapath_mux_i),
        .O2(n_1_stage_3_left_align_datapath_mux_i),
        .O20(n_19_stage_3_left_align_datapath_mux_i),
        .O21(n_20_stage_3_left_align_datapath_mux_i),
        .O22(n_21_stage_3_left_align_datapath_mux_i),
        .O23(n_22_stage_3_left_align_datapath_mux_i),
        .O24(n_23_stage_3_left_align_datapath_mux_i),
        .O25(n_24_stage_3_left_align_datapath_mux_i),
        .O26(n_25_stage_3_left_align_datapath_mux_i),
        .O27(n_26_stage_3_left_align_datapath_mux_i),
        .O28(n_27_stage_3_left_align_datapath_mux_i),
        .O29(n_28_stage_3_left_align_datapath_mux_i),
        .O3(n_2_stage_3_left_align_datapath_mux_i),
        .O30(n_29_stage_3_left_align_datapath_mux_i),
        .O31(n_30_stage_3_left_align_datapath_mux_i),
        .O32(n_31_stage_3_left_align_datapath_mux_i),
        .O33(n_32_stage_3_left_align_datapath_mux_i),
        .O34(n_33_stage_3_left_align_datapath_mux_i),
        .O35(n_34_stage_3_left_align_datapath_mux_i),
        .O36(n_35_stage_3_left_align_datapath_mux_i),
        .O37(n_36_stage_3_left_align_datapath_mux_i),
        .O38(n_37_stage_3_left_align_datapath_mux_i),
        .O39(n_38_stage_3_left_align_datapath_mux_i),
        .O4(n_3_stage_3_left_align_datapath_mux_i),
        .O40(n_39_stage_3_left_align_datapath_mux_i),
        .O41(n_40_stage_3_left_align_datapath_mux_i),
        .O42(n_41_stage_3_left_align_datapath_mux_i),
        .O43(n_42_stage_3_left_align_datapath_mux_i),
        .O44(n_43_stage_3_left_align_datapath_mux_i),
        .O45(n_44_stage_3_left_align_datapath_mux_i),
        .O46(n_45_stage_3_left_align_datapath_mux_i),
        .O47(n_46_stage_3_left_align_datapath_mux_i),
        .O48(n_47_stage_3_left_align_datapath_mux_i),
        .O5(n_4_stage_3_left_align_datapath_mux_i),
        .O6(n_5_stage_3_left_align_datapath_mux_i),
        .O7(n_6_stage_3_left_align_datapath_mux_i),
        .O8(n_7_stage_3_left_align_datapath_mux_i),
        .O9(n_8_stage_3_left_align_datapath_mux_i),
        .OUTPUT_SELECT(OUTPUT_SELECT),
        .STORAGE_DATA({STORAGE_DATA[16],STORAGE_DATA[17],STORAGE_DATA[18],STORAGE_DATA[19],STORAGE_DATA[20],STORAGE_DATA[21],STORAGE_DATA[22],STORAGE_DATA[23],STORAGE_DATA[24],STORAGE_DATA[25],STORAGE_DATA[26],STORAGE_DATA[27],STORAGE_DATA[28],STORAGE_DATA[29],STORAGE_DATA[30],STORAGE_DATA[31]}),
        .STORAGE_SELECT({STORAGE_SELECT[4],STORAGE_SELECT[9]}),
        .stage_2_data_r({stage_2_data_r[0],stage_2_data_r[1],stage_2_data_r[2],stage_2_data_r[3],stage_2_data_r[4],stage_2_data_r[5],stage_2_data_r[6],stage_2_data_r[7],stage_2_data_r[8],stage_2_data_r[9],stage_2_data_r[10],stage_2_data_r[11],stage_2_data_r[12],stage_2_data_r[13],stage_2_data_r[14],stage_2_data_r[15]}),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_OUTPUT_SWITCH_CONTROL stage_3_output_switch_control_i
       (.I1(n_3_stage_3_storage_count_control_i),
        .OUTPUT_SELECT(OUTPUT_SELECT),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_STORAGE_CE_CONTROL stage_3_storage_ce_control_i
       (.D({ce_command_c[0],ce_command_c[1]}),
        .Q({p_0_in0,n_1_stage_3_storage_ce_control_i}),
        .SR(SR),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_STORAGE_COUNT_CONTROL stage_3_storage_count_control_i
       (.FRAME_ERR_RESULT0(FRAME_ERR_RESULT0),
        .I1(n_0_stage_2_frame_err_r_reg),
        .O1(n_0_stage_3_storage_count_control_i),
        .O2(n_3_stage_3_storage_count_control_i),
        .O3(n_5_stage_3_storage_count_control_i),
        .O4(n_6_stage_3_storage_count_control_i),
        .O5(n_7_stage_3_storage_count_control_i),
        .Q({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .overwrite_c(overwrite_c),
        .stage_2_end_after_start_r(stage_2_end_after_start_r),
        .stage_2_end_before_start_r(stage_2_end_before_start_r),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .stage_3_storage_count_r(stage_3_storage_count_r),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_STORAGE_SWITCH_CONTROL stage_3_storage_switch_control_i
       (.Q({stage_2_data_v_count_r[0],stage_2_data_v_count_r[1]}),
        .STORAGE_SELECT({STORAGE_SELECT[4],STORAGE_SELECT[9]}),
        .stage_2_start_with_data_r(stage_2_start_with_data_r),
        .stage_3_end_storage_r(stage_3_end_storage_r),
        .stage_3_storage_count_r(stage_3_storage_count_r),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_STORAGE_MUX stage_4_storage_mux_i
       (.D({output_data_c[0],output_data_c[1],output_data_c[2],output_data_c[3],output_data_c[4],output_data_c[5],output_data_c[6],output_data_c[7],output_data_c[8],output_data_c[9],output_data_c[10],output_data_c[11],output_data_c[12],output_data_c[13],output_data_c[14],output_data_c[15]}),
        .I1(n_16_stage_3_left_align_datapath_mux_i),
        .I10(n_25_stage_3_left_align_datapath_mux_i),
        .I11(n_26_stage_3_left_align_datapath_mux_i),
        .I12(n_27_stage_3_left_align_datapath_mux_i),
        .I13(n_28_stage_3_left_align_datapath_mux_i),
        .I14(n_29_stage_3_left_align_datapath_mux_i),
        .I15(n_30_stage_3_left_align_datapath_mux_i),
        .I16(n_31_stage_3_left_align_datapath_mux_i),
        .I17(n_32_stage_3_left_align_datapath_mux_i),
        .I18(n_33_stage_3_left_align_datapath_mux_i),
        .I19(n_34_stage_3_left_align_datapath_mux_i),
        .I2(n_17_stage_3_left_align_datapath_mux_i),
        .I20(n_35_stage_3_left_align_datapath_mux_i),
        .I21(n_36_stage_3_left_align_datapath_mux_i),
        .I22(n_37_stage_3_left_align_datapath_mux_i),
        .I23(n_38_stage_3_left_align_datapath_mux_i),
        .I24(n_39_stage_3_left_align_datapath_mux_i),
        .I25(n_40_stage_3_left_align_datapath_mux_i),
        .I26(n_41_stage_3_left_align_datapath_mux_i),
        .I27(n_42_stage_3_left_align_datapath_mux_i),
        .I28(n_43_stage_3_left_align_datapath_mux_i),
        .I29(n_44_stage_3_left_align_datapath_mux_i),
        .I3(n_18_stage_3_left_align_datapath_mux_i),
        .I30(n_45_stage_3_left_align_datapath_mux_i),
        .I31(n_46_stage_3_left_align_datapath_mux_i),
        .I32(n_47_stage_3_left_align_datapath_mux_i),
        .I4(n_19_stage_3_left_align_datapath_mux_i),
        .I5(n_20_stage_3_left_align_datapath_mux_i),
        .I6(n_21_stage_3_left_align_datapath_mux_i),
        .I7(n_22_stage_3_left_align_datapath_mux_i),
        .I8(n_23_stage_3_left_align_datapath_mux_i),
        .I9(n_24_stage_3_left_align_datapath_mux_i),
        .Q({p_0_in0,n_1_stage_3_storage_ce_control_i}),
        .STORAGE_DATA({STORAGE_DATA[16],STORAGE_DATA[17],STORAGE_DATA[18],STORAGE_DATA[19],STORAGE_DATA[20],STORAGE_DATA[21],STORAGE_DATA[22],STORAGE_DATA[23],STORAGE_DATA[24],STORAGE_DATA[25],STORAGE_DATA[26],STORAGE_DATA[27],STORAGE_DATA[28],STORAGE_DATA[29],STORAGE_DATA[30],STORAGE_DATA[31]}),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0aurora_8b10b_0_SIDEBAND_OUTPUT
   (EOF_N,
    FRAME_ERR_RESULT,
    stage_3_end_storage_r,
    SRC_RDY_N,
    overwrite_c,
    O1,
    I1,
    user_clk,
    FRAME_ERR_RESULT0,
    I2,
    I3,
    stage_2_end_before_start_r,
    stage_2_start_with_data_r,
    I4,
    Q,
    stage_3_storage_count_r,
    stage_2_pad_r,
    I5,
    start_rx_i);
  output EOF_N;
  output FRAME_ERR_RESULT;
  output stage_3_end_storage_r;
  output SRC_RDY_N;
  output overwrite_c;
  output [1:0]O1;
  input I1;
  input user_clk;
  input FRAME_ERR_RESULT0;
  input I2;
  input I3;
  input stage_2_end_before_start_r;
  input stage_2_start_with_data_r;
  input I4;
  input [0:0]Q;
  input [0:0]stage_3_storage_count_r;
  input stage_2_pad_r;
  input I5;
  input start_rx_i;

  wire \<const0> ;
  wire \<const1> ;
  wire EOF_N;
  wire FRAME_ERR_RESULT;
  wire FRAME_ERR_RESULT0;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire [1:0]O1;
  wire [0:0]Q;
  wire SRC_RDY_N;
  wire \n_0_RX_REM[0]_i_1 ;
  wire \n_0_RX_REM[1]_i_1 ;
  wire n_0_pad_storage_r_i_1;
  wire n_0_pad_storage_r_i_2;
  wire n_0_pad_storage_r_reg;
  wire overwrite_c;
  wire stage_2_end_before_start_r;
  wire stage_2_pad_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire [0:0]stage_3_storage_count_r;
  wire start_rx_i;
  wire user_clk;

FDRE EOF_N_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I1),
        .Q(EOF_N),
        .R(\<const0> ));
FDRE FRAME_ERR_RESULT_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(FRAME_ERR_RESULT0),
        .Q(FRAME_ERR_RESULT),
        .R(\<const0> ));
GND GND
       (.G(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT4 #(
    .INIT(16'h10EF)) 
     \RX_REM[0]_i_1 
       (.I0(stage_2_start_with_data_r),
        .I1(stage_3_end_storage_r),
        .I2(Q),
        .I3(stage_3_storage_count_r),
        .O(\n_0_RX_REM[0]_i_1 ));
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
        .CE(\<const1> ),
        .D(\n_0_RX_REM[0]_i_1 ),
        .Q(O1[1]),
        .R(\<const0> ));
FDRE \RX_REM_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_RX_REM[1]_i_1 ),
        .Q(O1[0]),
        .R(\<const0> ));
FDRE SRC_RDY_N_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I3),
        .Q(SRC_RDY_N),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
FDRE end_storage_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I2),
        .Q(stage_3_end_storage_r),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'h30203000)) 
     pad_storage_r_i_1
       (.I0(n_0_pad_storage_r_i_2),
        .I1(I5),
        .I2(start_rx_i),
        .I3(stage_2_pad_r),
        .I4(n_0_pad_storage_r_reg),
        .O(n_0_pad_storage_r_i_1));
LUT4 #(
    .INIT(16'h04FF)) 
     pad_storage_r_i_2
       (.I0(stage_2_end_before_start_r),
        .I1(stage_2_start_with_data_r),
        .I2(stage_3_end_storage_r),
        .I3(I4),
        .O(n_0_pad_storage_r_i_2));
FDRE pad_storage_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_0_pad_storage_r_i_1),
        .Q(n_0_pad_storage_r_reg),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \storage_count_r[0]_i_2 
       (.I0(stage_2_start_with_data_r),
        .I1(stage_3_end_storage_r),
        .O(overwrite_c));
endmodule

module aurora_8b10b_0aurora_8b10b_0_STORAGE_CE_CONTROL
   (Q,
    SR,
    D,
    user_clk);
  output [1:0]Q;
  input [0:0]SR;
  input [1:0]D;
  input user_clk;

  wire \<const1> ;
  wire [1:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire user_clk;

FDRE \STORAGE_CE_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(Q[1]),
        .R(SR));
FDRE \STORAGE_CE_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(Q[0]),
        .R(SR));
VCC VCC
       (.P(\<const1> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_STORAGE_COUNT_CONTROL
   (O1,
    stage_3_storage_count_r,
    O2,
    FRAME_ERR_RESULT0,
    O3,
    O4,
    O5,
    I1,
    start_rx_i,
    stage_3_end_storage_r,
    stage_2_start_with_data_r,
    Q,
    stage_2_end_after_start_r,
    stage_2_end_before_start_r,
    overwrite_c,
    user_clk);
  output O1;
  output [0:1]stage_3_storage_count_r;
  output O2;
  output FRAME_ERR_RESULT0;
  output O3;
  output O4;
  output O5;
  input I1;
  input start_rx_i;
  input stage_3_end_storage_r;
  input stage_2_start_with_data_r;
  input [1:0]Q;
  input stage_2_end_after_start_r;
  input stage_2_end_before_start_r;
  input overwrite_c;
  input user_clk;

  wire \<const0> ;
  wire \<const1> ;
  wire FRAME_ERR_RESULT0;
  wire I1;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire [1:0]Q;
  wire n_0_FRAME_ERR_RESULT_i_2;
  wire n_0_FRAME_ERR_RESULT_i_3;
  wire \n_0_storage_count_r[0]_i_1 ;
  wire \n_0_storage_count_r[1]_i_1 ;
  wire overwrite_c;
  wire stage_2_end_after_start_r;
  wire stage_2_end_before_start_r;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire [0:1]stage_3_storage_count_r;
  wire start_rx_i;
  wire storage_count_r0;
  wire user_clk;

(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT5 #(
    .INIT(32'h0000777F)) 
     EOF_N_i_1
       (.I0(stage_2_start_with_data_r),
        .I1(stage_2_end_before_start_r),
        .I2(stage_3_storage_count_r[1]),
        .I3(stage_3_storage_count_r[0]),
        .I4(stage_3_end_storage_r),
        .O(O3));
LUT6 #(
    .INIT(64'hFFFECFCCCFCECFCC)) 
     FRAME_ERR_RESULT_i_1
       (.I0(n_0_FRAME_ERR_RESULT_i_2),
        .I1(I1),
        .I2(stage_2_start_with_data_r),
        .I3(stage_2_end_after_start_r),
        .I4(stage_2_end_before_start_r),
        .I5(n_0_FRAME_ERR_RESULT_i_3),
        .O(FRAME_ERR_RESULT0));
LUT4 #(
    .INIT(16'h0001)) 
     FRAME_ERR_RESULT_i_2
       (.I0(stage_3_storage_count_r[0]),
        .I1(stage_3_storage_count_r[1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(n_0_FRAME_ERR_RESULT_i_2));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT2 #(
    .INIT(4'h1)) 
     FRAME_ERR_RESULT_i_3
       (.I0(stage_3_storage_count_r[1]),
        .I1(stage_3_storage_count_r[0]),
        .O(n_0_FRAME_ERR_RESULT_i_3));
GND GND
       (.G(\<const0> ));
LUT6 #(
    .INIT(64'h0000000000000444)) 
     \OUTPUT_SELECT[9]_i_1 
       (.I0(stage_3_storage_count_r[0]),
        .I1(stage_3_storage_count_r[1]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(stage_2_start_with_data_r),
        .I5(stage_3_end_storage_r),
        .O(O2));
LUT6 #(
    .INIT(64'hFFFFFFFF5575FFFF)) 
     SRC_RDY_N_i_1
       (.I0(O1),
        .I1(stage_3_end_storage_r),
        .I2(stage_2_start_with_data_r),
        .I3(stage_2_end_before_start_r),
        .I4(start_rx_i),
        .I5(I1),
        .O(O4));
LUT6 #(
    .INIT(64'hFFFEFFFEFFFEFEEE)) 
     SRC_RDY_N_i_2
       (.I0(stage_3_end_storage_r),
        .I1(stage_2_start_with_data_r),
        .I2(stage_3_storage_count_r[0]),
        .I3(Q[1]),
        .I4(stage_3_storage_count_r[1]),
        .I5(Q[0]),
        .O(O1));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'h000000008D880000)) 
     end_storage_r_i_1
       (.I0(stage_2_start_with_data_r),
        .I1(stage_2_end_after_start_r),
        .I2(n_0_FRAME_ERR_RESULT_i_2),
        .I3(stage_2_end_before_start_r),
        .I4(start_rx_i),
        .I5(I1),
        .O(O5));
LUT6 #(
    .INIT(64'h00000000F0F07998)) 
     \storage_count_r[0]_i_1 
       (.I0(Q[0]),
        .I1(stage_3_storage_count_r[1]),
        .I2(Q[1]),
        .I3(stage_3_storage_count_r[0]),
        .I4(overwrite_c),
        .I5(storage_count_r0),
        .O(\n_0_storage_count_r[0]_i_1 ));
LUT2 #(
    .INIT(4'hB)) 
     \storage_count_r[0]_i_3 
       (.I0(I1),
        .I1(start_rx_i),
        .O(storage_count_r0));
LUT4 #(
    .INIT(16'h00C6)) 
     \storage_count_r[1]_i_1 
       (.I0(stage_3_storage_count_r[1]),
        .I1(Q[0]),
        .I2(overwrite_c),
        .I3(storage_count_r0),
        .O(\n_0_storage_count_r[1]_i_1 ));
FDRE \storage_count_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_storage_count_r[0]_i_1 ),
        .Q(stage_3_storage_count_r[0]),
        .R(\<const0> ));
FDRE \storage_count_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_storage_count_r[1]_i_1 ),
        .Q(stage_3_storage_count_r[1]),
        .R(\<const0> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_STORAGE_MUX
   (D,
    STORAGE_DATA,
    Q,
    I1,
    user_clk,
    I2,
    I3,
    I4,
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
    I16,
    I17,
    I18,
    I19,
    I20,
    I21,
    I22,
    I23,
    I24,
    I25,
    I26,
    I27,
    I28,
    I29,
    I30,
    I31,
    I32);
  output [15:0]D;
  output [15:0]STORAGE_DATA;
  input [1:0]Q;
  input I1;
  input user_clk;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input I14;
  input I15;
  input I16;
  input I17;
  input I18;
  input I19;
  input I20;
  input I21;
  input I22;
  input I23;
  input I24;
  input I25;
  input I26;
  input I27;
  input I28;
  input I29;
  input I30;
  input I31;
  input I32;

  wire \<const0> ;
  wire [15:0]D;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I19;
  wire I2;
  wire I20;
  wire I21;
  wire I22;
  wire I23;
  wire I24;
  wire I25;
  wire I26;
  wire I27;
  wire I28;
  wire I29;
  wire I3;
  wire I30;
  wire I31;
  wire I32;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire [1:0]Q;
  wire [15:0]STORAGE_DATA;
  wire user_clk;

GND GND
       (.G(\<const0> ));
FDRE \STORAGE_DATA_reg[0] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I1),
        .Q(D[15]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[10] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I11),
        .Q(D[5]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[11] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I12),
        .Q(D[4]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[12] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I13),
        .Q(D[3]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[13] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I14),
        .Q(D[2]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[14] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I15),
        .Q(D[1]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[15] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I16),
        .Q(D[0]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[16] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I17),
        .Q(STORAGE_DATA[15]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[17] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I18),
        .Q(STORAGE_DATA[14]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[18] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I19),
        .Q(STORAGE_DATA[13]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[19] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I20),
        .Q(STORAGE_DATA[12]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[1] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I2),
        .Q(D[14]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[20] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I21),
        .Q(STORAGE_DATA[11]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[21] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I22),
        .Q(STORAGE_DATA[10]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[22] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I23),
        .Q(STORAGE_DATA[9]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[23] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I24),
        .Q(STORAGE_DATA[8]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[24] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I25),
        .Q(STORAGE_DATA[7]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[25] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I26),
        .Q(STORAGE_DATA[6]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[26] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I27),
        .Q(STORAGE_DATA[5]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[27] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I28),
        .Q(STORAGE_DATA[4]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[28] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I29),
        .Q(STORAGE_DATA[3]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[29] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I30),
        .Q(STORAGE_DATA[2]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[2] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I3),
        .Q(D[13]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[30] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I31),
        .Q(STORAGE_DATA[1]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[31] 
       (.C(user_clk),
        .CE(Q[0]),
        .D(I32),
        .Q(STORAGE_DATA[0]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[3] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I4),
        .Q(D[12]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[4] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I5),
        .Q(D[11]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[5] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I6),
        .Q(D[10]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[6] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I7),
        .Q(D[9]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[7] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I8),
        .Q(D[8]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[8] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I9),
        .Q(D[7]),
        .R(\<const0> ));
FDRE \STORAGE_DATA_reg[9] 
       (.C(user_clk),
        .CE(Q[1]),
        .D(I10),
        .Q(D[6]),
        .R(\<const0> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_STORAGE_SWITCH_CONTROL
   (STORAGE_SELECT,
    stage_3_storage_count_r,
    Q,
    stage_3_end_storage_r,
    stage_2_start_with_data_r,
    user_clk);
  output [1:0]STORAGE_SELECT;
  input [0:1]stage_3_storage_count_r;
  input [1:0]Q;
  input stage_3_end_storage_r;
  input stage_2_start_with_data_r;
  input user_clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]Q;
  wire [1:0]STORAGE_SELECT;
  wire \n_0_STORAGE_SELECT[4]_i_1 ;
  wire \n_0_STORAGE_SELECT[9]_i_1 ;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire [0:1]stage_3_storage_count_r;
  wire user_clk;

GND GND
       (.G(\<const0> ));
LUT6 #(
    .INIT(64'h0000000000000040)) 
     \STORAGE_SELECT[4]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(stage_3_storage_count_r[1]),
        .I3(stage_3_storage_count_r[0]),
        .I4(stage_3_end_storage_r),
        .I5(stage_2_start_with_data_r),
        .O(\n_0_STORAGE_SELECT[4]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFFF14)) 
     \STORAGE_SELECT[9]_i_1 
       (.I0(stage_3_storage_count_r[1]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(stage_3_end_storage_r),
        .I4(stage_2_start_with_data_r),
        .O(\n_0_STORAGE_SELECT[9]_i_1 ));
FDRE \STORAGE_SELECT_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_STORAGE_SELECT[4]_i_1 ),
        .Q(STORAGE_SELECT[1]),
        .R(\<const0> ));
FDRE \STORAGE_SELECT_reg[9] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_STORAGE_SELECT[9]_i_1 ),
        .Q(STORAGE_SELECT[0]),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_SYM_DEC_4BYTE
   (RX_NEG,
    O1,
    O2,
    first_v_received_r,
    got_v_i,
    rx_cc_i,
    D,
    O9,
    counter3_r0,
    counter4_r0,
    Q,
    O11,
    O12,
    O13,
    O14,
    O15,
    O3,
    O4,
    O5,
    O6,
    S1,
    S11_in,
    user_clk,
    I2,
    I3,
    I4,
    I5,
    in_frame_c,
    gen_spa_i,
    ready_r,
    RXCHARISK,
    RXDATA,
    I1,
    I13,
    I14);
  output RX_NEG;
  output O1;
  output O2;
  output first_v_received_r;
  output got_v_i;
  output rx_cc_i;
  output [1:0]D;
  output O9;
  output counter3_r0;
  output counter4_r0;
  output [0:0]Q;
  output [7:0]O11;
  output O12;
  output [1:0]O13;
  output [1:0]O14;
  output O15;
  output [7:0]O3;
  output [7:0]O4;
  output [7:0]O5;
  output [7:0]O6;
  output S1;
  output S11_in;
  input user_clk;
  input I2;
  input I3;
  input I4;
  input I5;
  input [0:1]in_frame_c;
  input gen_spa_i;
  input ready_r;
  input [3:0]RXCHARISK;
  input [31:0]RXDATA;
  input I1;
  input [7:0]I13;
  input [7:0]I14;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire I1;
  wire [7:0]I13;
  wire [7:0]I14;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire O1;
  wire [7:0]O11;
  wire O12;
  wire [1:0]O13;
  wire [1:0]O14;
  wire O15;
  wire O2;
  wire [7:0]O3;
  wire [7:0]O4;
  wire [7:0]O5;
  wire [7:0]O6;
  wire O9;
  wire [0:0]Q;
  wire [3:0]RXCHARISK;
  wire [31:0]RXDATA;
  wire RX_CC0;
  wire RX_ECP0;
  wire RX_NEG;
  wire RX_NEG0;
  wire RX_SCP0;
  wire RX_SP0;
  wire RX_SPA0;
  wire S1;
  wire S11_in;
  wire counter3_r0;
  wire counter4_r0;
  wire [7:0]data1;
  wire [7:0]data2;
  wire first_v_received_r;
  wire gen_spa_i;
  wire got_v_c;
  wire got_v_i;
  wire [0:1]in_frame_c;
  wire n_0_RX_CC_i_2;
  wire n_0_RX_CC_i_3;
  wire \n_0_RX_ECP[1]_i_1 ;
  wire \n_0_RX_SCP[1]_i_1 ;
  wire n_0_RX_SPA_i_2;
  wire n_0_RX_SP_i_2;
  wire n_0_first_v_received_r_i_1;
  wire n_0_first_v_received_r_i_2;
  wire n_0_first_v_received_r_i_3;
  wire \n_0_rx_cc_r[2]_i_1 ;
  wire \n_0_rx_cc_r[3]_i_1 ;
  wire \n_0_rx_cc_r[4]_i_1 ;
  wire \n_0_rx_cc_r[5]_i_1 ;
  wire \n_0_rx_cc_r[6]_i_1 ;
  wire \n_0_rx_cc_r[7]_i_1 ;
  wire \n_0_rx_ecp_d_r[1]_i_1 ;
  wire \n_0_rx_ecp_d_r[3]_i_1 ;
  wire \n_0_rx_ecp_d_r[5]_i_1 ;
  wire \n_0_rx_ecp_d_r[7]_i_1 ;
  wire \n_0_rx_pad_d_r[1]_i_1 ;
  wire \n_0_rx_pad_d_r[2]_i_1 ;
  wire \n_0_rx_pad_d_r[3]_i_1 ;
  wire \n_0_rx_pe_control_r_reg[0] ;
  wire \n_0_rx_pe_control_r_reg[1] ;
  wire \n_0_rx_pe_control_r_reg[2] ;
  wire \n_0_rx_pe_control_r_reg[3] ;
  wire \n_0_rx_scp_d_r[0]_i_1 ;
  wire \n_0_rx_scp_d_r[3]_i_1 ;
  wire \n_0_rx_scp_d_r[4]_i_1 ;
  wire \n_0_rx_scp_d_r[7]_i_1 ;
  wire \n_0_rx_spa_neg_d_r[1]_i_1 ;
  wire \n_0_rx_spa_r[4]_i_1 ;
  wire \n_0_rx_spa_r[5]_i_1 ;
  wire \n_0_rx_spa_r[6]_i_1 ;
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
  wire [1:0]p_3_out;
  wire [7:0]p_8_out;
  wire [2:1]previous_cycle_control_r;
  wire ready_r;
  wire rx_cc_i;
  wire [0:7]rx_cc_r;
  wire rx_cc_r0;
  wire [0:7]rx_ecp_d_r;
  wire rx_ecp_d_r0;
  wire [0:3]rx_pad_d_r;
  wire rx_pad_d_r0;
  wire [0:1]rx_pad_striped_i;
  wire [0:1]rx_pe_data_v_striped_i;
  wire [0:7]rx_scp_d_r;
  wire rx_sp_i;
  wire [0:1]rx_sp_neg_d_r;
  wire [0:7]rx_sp_r;
  wire rx_sp_r111_in;
  wire rx_sp_r114_in;
  wire rx_spa_i;
  wire [0:1]rx_spa_neg_d_r;
  wire rx_spa_neg_d_r0;
  wire [0:7]rx_spa_r;
  wire rx_spa_r0;
  wire [0:7]rx_v_d_r;
  wire rx_v_d_r0;
  wire user_clk;
  wire [0:3]word_aligned_control_bits_r;

LUT2 #(
    .INIT(4'h8)) 
     \DEFRAMED_DATA_V[0]_i_1 
       (.I0(rx_pe_data_v_striped_i[0]),
        .I1(in_frame_c[0]),
        .O(D[1]));
LUT2 #(
    .INIT(4'h8)) 
     \DEFRAMED_DATA_V[1]_i_1 
       (.I0(rx_pe_data_v_striped_i[1]),
        .I1(in_frame_c[1]),
        .O(D[0]));
GND GND
       (.G(\<const0> ));
LUT4 #(
    .INIT(16'h8000)) 
     GOT_V_i_1
       (.I0(n_0_first_v_received_r_i_2),
        .I1(n_0_first_v_received_r_i_3),
        .I2(rx_v_d_r[7]),
        .I3(rx_v_d_r[1]),
        .O(got_v_c));
FDRE GOT_V_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(got_v_c),
        .Q(got_v_i),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_CC_i_1
       (.I0(n_0_RX_CC_i_2),
        .I1(\n_0_rx_pe_control_r_reg[2] ),
        .I2(\n_0_rx_pe_control_r_reg[3] ),
        .I3(n_0_RX_CC_i_3),
        .I4(rx_cc_r[1]),
        .I5(rx_cc_r[6]),
        .O(RX_CC0));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT2 #(
    .INIT(4'h8)) 
     RX_CC_i_2
       (.I0(\n_0_rx_pe_control_r_reg[1] ),
        .I1(\n_0_rx_pe_control_r_reg[0] ),
        .O(n_0_RX_CC_i_2));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_CC_i_3
       (.I0(rx_cc_r[0]),
        .I1(rx_cc_r[4]),
        .I2(rx_cc_r[2]),
        .I3(rx_cc_r[7]),
        .I4(rx_cc_r[5]),
        .I5(rx_cc_r[3]),
        .O(n_0_RX_CC_i_3));
FDRE RX_CC_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RX_CC0),
        .Q(rx_cc_i),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \RX_ECP[0]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[0] ),
        .I1(\n_0_rx_pe_control_r_reg[1] ),
        .I2(rx_ecp_d_r[2]),
        .I3(rx_ecp_d_r[0]),
        .I4(rx_ecp_d_r[3]),
        .I5(rx_ecp_d_r[1]),
        .O(RX_ECP0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \RX_ECP[1]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[3] ),
        .I1(\n_0_rx_pe_control_r_reg[2] ),
        .I2(rx_ecp_d_r[6]),
        .I3(rx_ecp_d_r[4]),
        .I4(rx_ecp_d_r[7]),
        .I5(rx_ecp_d_r[5]),
        .O(\n_0_RX_ECP[1]_i_1 ));
FDRE \RX_ECP_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RX_ECP0),
        .Q(O13[1]),
        .R(\<const0> ));
FDRE \RX_ECP_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_RX_ECP[1]_i_1 ),
        .Q(O13[0]),
        .R(\<const0> ));
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
        .CE(\<const1> ),
        .D(RX_NEG0),
        .Q(RX_NEG),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \RX_PAD[0]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[0] ),
        .I1(\n_0_rx_pe_control_r_reg[1] ),
        .I2(rx_pad_d_r[0]),
        .I3(rx_pad_d_r[1]),
        .O(p_3_out[1]));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \RX_PAD[1]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[2] ),
        .I1(rx_pad_d_r[2]),
        .I2(rx_pad_d_r[3]),
        .I3(\n_0_rx_pe_control_r_reg[3] ),
        .O(p_3_out[0]));
FDRE \RX_PAD_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_3_out[1]),
        .Q(rx_pad_striped_i[0]),
        .R(\<const0> ));
FDRE \RX_PAD_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_3_out[0]),
        .Q(rx_pad_striped_i[1]),
        .R(\<const0> ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \RX_PE_DATA_V[0]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[0] ),
        .O(p_1_out[1]));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \RX_PE_DATA_V[1]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[2] ),
        .O(p_1_out[0]));
FDRE \RX_PE_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_1_out[1]),
        .Q(rx_pe_data_v_striped_i[0]),
        .R(\<const0> ));
FDRE \RX_PE_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_1_out[0]),
        .Q(rx_pe_data_v_striped_i[1]),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \RX_SCP[0]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[0] ),
        .I1(\n_0_rx_pe_control_r_reg[1] ),
        .I2(rx_scp_d_r[2]),
        .I3(rx_scp_d_r[0]),
        .I4(rx_scp_d_r[3]),
        .I5(rx_scp_d_r[1]),
        .O(RX_SCP0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \RX_SCP[1]_i_1 
       (.I0(\n_0_rx_pe_control_r_reg[3] ),
        .I1(\n_0_rx_pe_control_r_reg[2] ),
        .I2(rx_scp_d_r[6]),
        .I3(rx_scp_d_r[4]),
        .I4(rx_scp_d_r[7]),
        .I5(rx_scp_d_r[5]),
        .O(\n_0_RX_SCP[1]_i_1 ));
FDRE \RX_SCP_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RX_SCP0),
        .Q(O14[1]),
        .R(\<const0> ));
FDRE \RX_SCP_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_RX_SCP[1]_i_1 ),
        .Q(O14[0]),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'h8000)) 
     RX_SPA_i_1
       (.I0(n_0_first_v_received_r_i_2),
        .I1(n_0_RX_SPA_i_2),
        .I2(rx_spa_r[7]),
        .I3(rx_spa_r[6]),
        .O(RX_SPA0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_SPA_i_2
       (.I0(rx_spa_r[0]),
        .I1(rx_spa_r[1]),
        .I2(rx_spa_r[2]),
        .I3(rx_spa_r[5]),
        .I4(rx_spa_r[4]),
        .I5(rx_spa_r[3]),
        .O(n_0_RX_SPA_i_2));
FDRE RX_SPA_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RX_SPA0),
        .Q(rx_spa_i),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'h8000)) 
     RX_SP_i_1
       (.I0(n_0_first_v_received_r_i_2),
        .I1(n_0_RX_SP_i_2),
        .I2(rx_sp_r[7]),
        .I3(rx_sp_r[6]),
        .O(RX_SP0));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     RX_SP_i_2
       (.I0(rx_sp_r[0]),
        .I1(rx_sp_r[1]),
        .I2(rx_sp_r[2]),
        .I3(rx_sp_r[5]),
        .I4(rx_sp_r[4]),
        .I5(rx_sp_r[3]),
        .O(n_0_RX_SP_i_2));
FDRE RX_SP_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RX_SP0),
        .Q(rx_sp_i),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
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
       (.I0(O14[1]),
        .O(S11_in));
LUT1 #(
    .INIT(2'h1)) 
     data_after_start_muxcy_1_i_1
       (.I0(O14[0]),
        .O(S1));
LUT6 #(
    .INIT(64'hFFFF000080000000)) 
     first_v_received_r_i_1
       (.I0(n_0_first_v_received_r_i_2),
        .I1(n_0_first_v_received_r_i_3),
        .I2(rx_v_d_r[7]),
        .I3(rx_v_d_r[1]),
        .I4(I1),
        .I5(first_v_received_r),
        .O(n_0_first_v_received_r_i_1));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     first_v_received_r_i_2
       (.I0(\n_0_rx_pe_control_r_reg[2] ),
        .I1(\n_0_rx_pe_control_r_reg[0] ),
        .I2(\n_0_rx_pe_control_r_reg[1] ),
        .I3(\n_0_rx_pe_control_r_reg[3] ),
        .O(n_0_first_v_received_r_i_2));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     first_v_received_r_i_3
       (.I0(rx_v_d_r[0]),
        .I1(rx_v_d_r[6]),
        .I2(rx_v_d_r[3]),
        .I3(rx_v_d_r[2]),
        .I4(rx_v_d_r[5]),
        .I5(rx_v_d_r[4]),
        .O(n_0_first_v_received_r_i_3));
FDRE #(
    .INIT(1'b0)) 
     first_v_received_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_0_first_v_received_r_i_1),
        .Q(first_v_received_r),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h1)) 
     in_frame_muxcy_0_i_1
       (.I0(O13[1]),
        .I1(O14[1]),
        .O(O15));
LUT2 #(
    .INIT(4'h1)) 
     in_frame_muxcy_1_i_1
       (.I0(O13[0]),
        .I1(O14[0]),
        .O(O12));
FDRE \left_align_select_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I2),
        .Q(O1),
        .R(\<const0> ));
FDRE \left_align_select_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I3),
        .Q(O2),
        .R(\<const0> ));
FDRE \previous_cycle_control_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXCHARISK[3]),
        .Q(Q),
        .R(\<const0> ));
FDRE \previous_cycle_control_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXCHARISK[2]),
        .Q(previous_cycle_control_r[1]),
        .R(\<const0> ));
FDRE \previous_cycle_control_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXCHARISK[1]),
        .Q(previous_cycle_control_r[2]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[24]),
        .Q(O11[0]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[10] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[18]),
        .Q(data2[2]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[11] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[19]),
        .Q(data2[3]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[12] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[20]),
        .Q(data2[4]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[13] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[21]),
        .Q(data2[5]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[14] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[22]),
        .Q(data2[6]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[15] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[23]),
        .Q(data2[7]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[16] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[8]),
        .Q(data1[0]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[17] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[9]),
        .Q(data1[1]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[18] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[10]),
        .Q(data1[2]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[19] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[11]),
        .Q(data1[3]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[25]),
        .Q(O11[1]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[20] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[12]),
        .Q(data1[4]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[21] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[13]),
        .Q(data1[5]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[22] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[14]),
        .Q(data1[6]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[23] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[15]),
        .Q(data1[7]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[26]),
        .Q(O11[2]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[27]),
        .Q(O11[3]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[28]),
        .Q(O11[4]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[29]),
        .Q(O11[5]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[30]),
        .Q(O11[6]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[31]),
        .Q(O11[7]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[8] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[16]),
        .Q(data2[0]),
        .R(\<const0> ));
FDRE \previous_cycle_data_r_reg[9] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(RXDATA[17]),
        .Q(data2[1]),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'h8000)) 
     \rx_cc_r[0]_i_1 
       (.I0(O6[5]),
        .I1(O6[4]),
        .I2(O6[6]),
        .I3(O6[7]),
        .O(rx_ecp_d_r0));
LUT4 #(
    .INIT(16'h4000)) 
     \rx_cc_r[1]_i_1 
       (.I0(O6[3]),
        .I1(O6[2]),
        .I2(O6[1]),
        .I3(O6[0]),
        .O(rx_cc_r0));
LUT4 #(
    .INIT(16'h8000)) 
     \rx_cc_r[2]_i_1 
       (.I0(O5[5]),
        .I1(O5[4]),
        .I2(O5[6]),
        .I3(O5[7]),
        .O(\n_0_rx_cc_r[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_cc_r[3]_i_1 
       (.I0(O5[3]),
        .I1(O5[2]),
        .I2(O5[1]),
        .I3(O5[0]),
        .O(\n_0_rx_cc_r[3]_i_1 ));
LUT4 #(
    .INIT(16'h8000)) 
     \rx_cc_r[4]_i_1 
       (.I0(O4[5]),
        .I1(O4[4]),
        .I2(O4[6]),
        .I3(O4[7]),
        .O(\n_0_rx_cc_r[4]_i_1 ));
LUT4 #(
    .INIT(16'h4000)) 
     \rx_cc_r[5]_i_1 
       (.I0(O4[3]),
        .I1(O4[2]),
        .I2(O4[1]),
        .I3(O4[0]),
        .O(\n_0_rx_cc_r[5]_i_1 ));
LUT4 #(
    .INIT(16'h8000)) 
     \rx_cc_r[6]_i_1 
       (.I0(O3[5]),
        .I1(O3[4]),
        .I2(O3[6]),
        .I3(O3[7]),
        .O(\n_0_rx_cc_r[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_cc_r[7]_i_1 
       (.I0(O3[3]),
        .I1(O3[2]),
        .I2(O3[1]),
        .I3(O3[0]),
        .O(\n_0_rx_cc_r[7]_i_1 ));
FDRE \rx_cc_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rx_ecp_d_r0),
        .Q(rx_cc_r[0]),
        .R(\<const0> ));
FDRE \rx_cc_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rx_cc_r0),
        .Q(rx_cc_r[1]),
        .R(\<const0> ));
FDRE \rx_cc_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_cc_r[2]_i_1 ),
        .Q(rx_cc_r[2]),
        .R(\<const0> ));
FDRE \rx_cc_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_cc_r[3]_i_1 ),
        .Q(rx_cc_r[3]),
        .R(\<const0> ));
FDRE \rx_cc_r_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_cc_r[4]_i_1 ),
        .Q(rx_cc_r[4]),
        .R(\<const0> ));
FDRE \rx_cc_r_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_cc_r[5]_i_1 ),
        .Q(rx_cc_r[5]),
        .R(\<const0> ));
FDRE \rx_cc_r_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_cc_r[6]_i_1 ),
        .Q(rx_cc_r[6]),
        .R(\<const0> ));
FDRE \rx_cc_r_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_cc_r[7]_i_1 ),
        .Q(rx_cc_r[7]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_ecp_d_r[1]_i_1 
       (.I0(O6[1]),
        .I1(O6[0]),
        .I2(O6[2]),
        .I3(O6[3]),
        .O(\n_0_rx_ecp_d_r[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_ecp_d_r[3]_i_1 
       (.I0(O5[0]),
        .I1(O5[1]),
        .I2(O5[2]),
        .I3(O5[3]),
        .O(\n_0_rx_ecp_d_r[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_ecp_d_r[5]_i_1 
       (.I0(O4[1]),
        .I1(O4[0]),
        .I2(O4[2]),
        .I3(O4[3]),
        .O(\n_0_rx_ecp_d_r[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_ecp_d_r[7]_i_1 
       (.I0(O3[0]),
        .I1(O3[1]),
        .I2(O3[2]),
        .I3(O3[3]),
        .O(\n_0_rx_ecp_d_r[7]_i_1 ));
FDRE \rx_ecp_d_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rx_ecp_d_r0),
        .Q(rx_ecp_d_r[0]),
        .R(\<const0> ));
FDRE \rx_ecp_d_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_ecp_d_r[1]_i_1 ),
        .Q(rx_ecp_d_r[1]),
        .R(\<const0> ));
FDRE \rx_ecp_d_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_cc_r[2]_i_1 ),
        .Q(rx_ecp_d_r[2]),
        .R(\<const0> ));
FDRE \rx_ecp_d_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_ecp_d_r[3]_i_1 ),
        .Q(rx_ecp_d_r[3]),
        .R(\<const0> ));
FDRE \rx_ecp_d_r_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_cc_r[4]_i_1 ),
        .Q(rx_ecp_d_r[4]),
        .R(\<const0> ));
FDRE \rx_ecp_d_r_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_ecp_d_r[5]_i_1 ),
        .Q(rx_ecp_d_r[5]),
        .R(\<const0> ));
FDRE \rx_ecp_d_r_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_cc_r[6]_i_1 ),
        .Q(rx_ecp_d_r[6]),
        .R(\<const0> ));
FDRE \rx_ecp_d_r_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_ecp_d_r[7]_i_1 ),
        .Q(rx_ecp_d_r[7]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \rx_pad_d_r[0]_i_1 
       (.I0(O5[6]),
        .I1(O5[7]),
        .I2(O5[4]),
        .I3(O5[5]),
        .O(rx_pad_d_r0));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_pad_d_r[1]_i_1 
       (.I0(O5[1]),
        .I1(O5[0]),
        .I2(O5[2]),
        .I3(O5[3]),
        .O(\n_0_rx_pad_d_r[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \rx_pad_d_r[2]_i_1 
       (.I0(O3[6]),
        .I1(O3[7]),
        .I2(O3[4]),
        .I3(O3[5]),
        .O(\n_0_rx_pad_d_r[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_pad_d_r[3]_i_1 
       (.I0(O3[1]),
        .I1(O3[0]),
        .I2(O3[2]),
        .I3(O3[3]),
        .O(\n_0_rx_pad_d_r[3]_i_1 ));
FDRE \rx_pad_d_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rx_pad_d_r0),
        .Q(rx_pad_d_r[0]),
        .R(\<const0> ));
FDRE \rx_pad_d_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_pad_d_r[1]_i_1 ),
        .Q(rx_pad_d_r[1]),
        .R(\<const0> ));
FDRE \rx_pad_d_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_pad_d_r[2]_i_1 ),
        .Q(rx_pad_d_r[2]),
        .R(\<const0> ));
FDRE \rx_pad_d_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_pad_d_r[3]_i_1 ),
        .Q(rx_pad_d_r[3]),
        .R(\<const0> ));
FDRE \rx_pe_control_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(word_aligned_control_bits_r[0]),
        .Q(\n_0_rx_pe_control_r_reg[0] ),
        .R(\<const0> ));
FDRE \rx_pe_control_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(word_aligned_control_bits_r[1]),
        .Q(\n_0_rx_pe_control_r_reg[1] ),
        .R(\<const0> ));
FDRE \rx_pe_control_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(word_aligned_control_bits_r[2]),
        .Q(\n_0_rx_pe_control_r_reg[2] ),
        .R(\<const0> ));
FDRE \rx_pe_control_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(word_aligned_control_bits_r[3]),
        .Q(\n_0_rx_pe_control_r_reg[3] ),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \rx_scp_d_r[0]_i_1 
       (.I0(O6[7]),
        .I1(O6[6]),
        .I2(O6[4]),
        .I3(O6[5]),
        .O(\n_0_rx_scp_d_r[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_scp_d_r[3]_i_1 
       (.I0(O5[2]),
        .I1(O5[3]),
        .I2(O5[1]),
        .I3(O5[0]),
        .O(\n_0_rx_scp_d_r[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \rx_scp_d_r[4]_i_1 
       (.I0(O4[7]),
        .I1(O4[6]),
        .I2(O4[4]),
        .I3(O4[5]),
        .O(\n_0_rx_scp_d_r[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_scp_d_r[7]_i_1 
       (.I0(O3[2]),
        .I1(O3[3]),
        .I2(O3[1]),
        .I3(O3[0]),
        .O(\n_0_rx_scp_d_r[7]_i_1 ));
FDRE \rx_scp_d_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_scp_d_r[0]_i_1 ),
        .Q(rx_scp_d_r[0]),
        .R(\<const0> ));
FDRE \rx_scp_d_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[6]),
        .Q(rx_scp_d_r[1]),
        .R(\<const0> ));
FDRE \rx_scp_d_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_cc_r[2]_i_1 ),
        .Q(rx_scp_d_r[2]),
        .R(\<const0> ));
FDRE \rx_scp_d_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_scp_d_r[3]_i_1 ),
        .Q(rx_scp_d_r[3]),
        .R(\<const0> ));
FDRE \rx_scp_d_r_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_scp_d_r[4]_i_1 ),
        .Q(rx_scp_d_r[4]),
        .R(\<const0> ));
FDRE \rx_scp_d_r_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_spa_r[5]_i_1 ),
        .Q(rx_scp_d_r[5]),
        .R(\<const0> ));
FDRE \rx_scp_d_r_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_cc_r[6]_i_1 ),
        .Q(rx_scp_d_r[6]),
        .R(\<const0> ));
FDRE \rx_scp_d_r_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_scp_d_r[7]_i_1 ),
        .Q(rx_scp_d_r[7]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_sp_neg_d_r[0]_i_1 
       (.I0(O5[6]),
        .I1(O5[7]),
        .I2(O5[5]),
        .I3(O5[4]),
        .O(rx_sp_r114_in));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \rx_sp_neg_d_r[1]_i_1 
       (.I0(O5[3]),
        .I1(O5[2]),
        .I2(O5[0]),
        .I3(O5[1]),
        .O(rx_sp_r111_in));
FDRE \rx_sp_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rx_sp_r114_in),
        .Q(rx_sp_neg_d_r[0]),
        .R(\<const0> ));
FDRE \rx_sp_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rx_sp_r111_in),
        .Q(rx_sp_neg_d_r[1]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT4 #(
    .INIT(16'h2004)) 
     \rx_sp_r[2]_i_1 
       (.I0(O5[5]),
        .I1(O5[6]),
        .I2(O5[4]),
        .I3(O5[7]),
        .O(p_8_out[5]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT4 #(
    .INIT(16'h1008)) 
     \rx_sp_r[3]_i_1 
       (.I0(O5[3]),
        .I1(O5[1]),
        .I2(O5[2]),
        .I3(O5[0]),
        .O(p_8_out[4]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT4 #(
    .INIT(16'h0810)) 
     \rx_sp_r[4]_i_1 
       (.I0(O4[7]),
        .I1(O4[5]),
        .I2(O4[6]),
        .I3(O4[4]),
        .O(p_8_out[3]));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT4 #(
    .INIT(16'h0420)) 
     \rx_sp_r[5]_i_1 
       (.I0(O4[3]),
        .I1(O4[2]),
        .I2(O4[1]),
        .I3(O4[0]),
        .O(p_8_out[2]));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT4 #(
    .INIT(16'h0810)) 
     \rx_sp_r[6]_i_1 
       (.I0(O3[7]),
        .I1(O3[5]),
        .I2(O3[6]),
        .I3(O3[4]),
        .O(p_8_out[1]));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT4 #(
    .INIT(16'h0420)) 
     \rx_sp_r[7]_i_1 
       (.I0(O3[3]),
        .I1(O3[2]),
        .I2(O3[1]),
        .I3(O3[0]),
        .O(p_8_out[0]));
FDRE \rx_sp_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[7]),
        .Q(rx_sp_r[0]),
        .R(\<const0> ));
FDRE \rx_sp_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[6]),
        .Q(rx_sp_r[1]),
        .R(\<const0> ));
FDRE \rx_sp_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[5]),
        .Q(rx_sp_r[2]),
        .R(\<const0> ));
FDRE \rx_sp_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[4]),
        .Q(rx_sp_r[3]),
        .R(\<const0> ));
FDRE \rx_sp_r_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[3]),
        .Q(rx_sp_r[4]),
        .R(\<const0> ));
FDRE \rx_sp_r_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[2]),
        .Q(rx_sp_r[5]),
        .R(\<const0> ));
FDRE \rx_sp_r_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[1]),
        .Q(rx_sp_r[6]),
        .R(\<const0> ));
FDRE \rx_sp_r_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[0]),
        .Q(rx_sp_r[7]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_spa_neg_d_r[0]_i_1 
       (.I0(O5[5]),
        .I1(O5[4]),
        .I2(O5[6]),
        .I3(O5[7]),
        .O(rx_spa_neg_d_r0));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_spa_neg_d_r[1]_i_1 
       (.I0(O5[2]),
        .I1(O5[3]),
        .I2(O5[1]),
        .I3(O5[0]),
        .O(\n_0_rx_spa_neg_d_r[1]_i_1 ));
FDRE \rx_spa_neg_d_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rx_spa_neg_d_r0),
        .Q(rx_spa_neg_d_r[0]),
        .R(\<const0> ));
FDRE \rx_spa_neg_d_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_spa_neg_d_r[1]_i_1 ),
        .Q(rx_spa_neg_d_r[1]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \rx_spa_r[2]_i_1 
       (.I0(O5[6]),
        .I1(O5[7]),
        .I2(O5[5]),
        .I3(O5[4]),
        .O(rx_spa_r0));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \rx_spa_r[4]_i_1 
       (.I0(O4[6]),
        .I1(O4[7]),
        .I2(O4[5]),
        .I3(O4[4]),
        .O(\n_0_rx_spa_r[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_spa_r[5]_i_1 
       (.I0(O4[1]),
        .I1(O4[0]),
        .I2(O4[2]),
        .I3(O4[3]),
        .O(\n_0_rx_spa_r[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \rx_spa_r[6]_i_1 
       (.I0(O3[6]),
        .I1(O3[7]),
        .I2(O3[5]),
        .I3(O3[4]),
        .O(\n_0_rx_spa_r[6]_i_1 ));
FDRE \rx_spa_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[7]),
        .Q(rx_spa_r[0]),
        .R(\<const0> ));
FDRE \rx_spa_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[6]),
        .Q(rx_spa_r[1]),
        .R(\<const0> ));
FDRE \rx_spa_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rx_spa_r0),
        .Q(rx_spa_r[2]),
        .R(\<const0> ));
FDRE \rx_spa_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_pad_d_r[1]_i_1 ),
        .Q(rx_spa_r[3]),
        .R(\<const0> ));
FDRE \rx_spa_r_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_spa_r[4]_i_1 ),
        .Q(rx_spa_r[4]),
        .R(\<const0> ));
FDRE \rx_spa_r_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_spa_r[5]_i_1 ),
        .Q(rx_spa_r[5]),
        .R(\<const0> ));
FDRE \rx_spa_r_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_spa_r[6]_i_1 ),
        .Q(rx_spa_r[6]),
        .R(\<const0> ));
FDRE \rx_spa_r_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_pad_d_r[3]_i_1 ),
        .Q(rx_spa_r[7]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_v_d_r[0]_i_1 
       (.I0(O6[6]),
        .I1(O6[7]),
        .I2(O6[5]),
        .I3(O6[4]),
        .O(p_8_out[7]));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \rx_v_d_r[1]_i_1 
       (.I0(O6[1]),
        .I1(O6[0]),
        .I2(O6[2]),
        .I3(O6[3]),
        .O(p_8_out[6]));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_v_d_r[2]_i_1 
       (.I0(O5[4]),
        .I1(O5[5]),
        .I2(O5[6]),
        .I3(O5[7]),
        .O(rx_v_d_r0));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \rx_v_d_r[3]_i_1 
       (.I0(O5[2]),
        .I1(O5[3]),
        .I2(O5[1]),
        .I3(O5[0]),
        .O(\n_0_rx_v_d_r[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_v_d_r[4]_i_1 
       (.I0(O4[4]),
        .I1(O4[5]),
        .I2(O4[6]),
        .I3(O4[7]),
        .O(\n_0_rx_v_d_r[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \rx_v_d_r[5]_i_1 
       (.I0(O4[2]),
        .I1(O4[3]),
        .I2(O4[1]),
        .I3(O4[0]),
        .O(\n_0_rx_v_d_r[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT4 #(
    .INIT(16'h4000)) 
     \rx_v_d_r[6]_i_1 
       (.I0(O3[4]),
        .I1(O3[5]),
        .I2(O3[6]),
        .I3(O3[7]),
        .O(\n_0_rx_v_d_r[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \rx_v_d_r[7]_i_1 
       (.I0(O3[2]),
        .I1(O3[3]),
        .I2(O3[1]),
        .I3(O3[0]),
        .O(\n_0_rx_v_d_r[7]_i_1 ));
FDRE \rx_v_d_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[7]),
        .Q(rx_v_d_r[0]),
        .R(\<const0> ));
FDRE \rx_v_d_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_8_out[6]),
        .Q(rx_v_d_r[1]),
        .R(\<const0> ));
FDRE \rx_v_d_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rx_v_d_r0),
        .Q(rx_v_d_r[2]),
        .R(\<const0> ));
FDRE \rx_v_d_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_v_d_r[3]_i_1 ),
        .Q(rx_v_d_r[3]),
        .R(\<const0> ));
FDRE \rx_v_d_r_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_v_d_r[4]_i_1 ),
        .Q(rx_v_d_r[4]),
        .R(\<const0> ));
FDRE \rx_v_d_r_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_v_d_r[5]_i_1 ),
        .Q(rx_v_d_r[5]),
        .R(\<const0> ));
FDRE \rx_v_d_r_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_v_d_r[6]_i_1 ),
        .Q(rx_v_d_r[6]),
        .R(\<const0> ));
FDRE \rx_v_d_r_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_rx_v_d_r[7]_i_1 ),
        .Q(rx_v_d_r[7]),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'hE)) 
     stage_1_pad_r_i_1
       (.I0(rx_pad_striped_i[0]),
        .I1(rx_pad_striped_i[1]),
        .O(O9));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_control_bits_r[0]_i_1 
       (.I0(Q),
        .I1(previous_cycle_control_r[2]),
        .I2(O2),
        .I3(previous_cycle_control_r[1]),
        .I4(O1),
        .I5(RXCHARISK[0]),
        .O(\n_0_word_aligned_control_bits_r[0]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_control_bits_r[1]_i_1 
       (.I0(RXCHARISK[0]),
        .I1(previous_cycle_control_r[1]),
        .I2(O2),
        .I3(Q),
        .I4(O1),
        .I5(RXCHARISK[1]),
        .O(\n_0_word_aligned_control_bits_r[1]_i_1 ));
FDRE \word_aligned_control_bits_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_control_bits_r[0]_i_1 ),
        .Q(word_aligned_control_bits_r[0]),
        .R(\<const0> ));
FDRE \word_aligned_control_bits_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_control_bits_r[1]_i_1 ),
        .Q(word_aligned_control_bits_r[1]),
        .R(\<const0> ));
FDRE \word_aligned_control_bits_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I5),
        .Q(word_aligned_control_bits_r[2]),
        .R(\<const0> ));
FDRE \word_aligned_control_bits_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I4),
        .Q(word_aligned_control_bits_r[3]),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[0]_i_1 
       (.I0(O11[7]),
        .I1(data2[7]),
        .I2(O1),
        .I3(data1[7]),
        .I4(O2),
        .I5(RXDATA[7]),
        .O(\n_0_word_aligned_data_r[0]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[10]_i_1 
       (.I0(RXDATA[5]),
        .I1(O11[5]),
        .I2(O1),
        .I3(data2[5]),
        .I4(O2),
        .I5(RXDATA[13]),
        .O(\n_0_word_aligned_data_r[10]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[11]_i_1 
       (.I0(RXDATA[4]),
        .I1(O11[4]),
        .I2(O1),
        .I3(data2[4]),
        .I4(O2),
        .I5(RXDATA[12]),
        .O(\n_0_word_aligned_data_r[11]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[12]_i_1 
       (.I0(RXDATA[3]),
        .I1(O11[3]),
        .I2(O1),
        .I3(data2[3]),
        .I4(O2),
        .I5(RXDATA[11]),
        .O(\n_0_word_aligned_data_r[12]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[13]_i_1 
       (.I0(RXDATA[2]),
        .I1(O11[2]),
        .I2(O1),
        .I3(data2[2]),
        .I4(O2),
        .I5(RXDATA[10]),
        .O(\n_0_word_aligned_data_r[13]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[14]_i_1 
       (.I0(RXDATA[1]),
        .I1(O11[1]),
        .I2(O1),
        .I3(data2[1]),
        .I4(O2),
        .I5(RXDATA[9]),
        .O(\n_0_word_aligned_data_r[14]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[15]_i_1 
       (.I0(RXDATA[0]),
        .I1(O11[0]),
        .I2(O1),
        .I3(data2[0]),
        .I4(O2),
        .I5(RXDATA[8]),
        .O(\n_0_word_aligned_data_r[15]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[1]_i_1 
       (.I0(O11[6]),
        .I1(data2[6]),
        .I2(O1),
        .I3(data1[6]),
        .I4(O2),
        .I5(RXDATA[6]),
        .O(\n_0_word_aligned_data_r[1]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[2]_i_1 
       (.I0(O11[5]),
        .I1(data2[5]),
        .I2(O1),
        .I3(data1[5]),
        .I4(O2),
        .I5(RXDATA[5]),
        .O(\n_0_word_aligned_data_r[2]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[3]_i_1 
       (.I0(O11[4]),
        .I1(data2[4]),
        .I2(O1),
        .I3(data1[4]),
        .I4(O2),
        .I5(RXDATA[4]),
        .O(\n_0_word_aligned_data_r[3]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[4]_i_1 
       (.I0(O11[3]),
        .I1(data2[3]),
        .I2(O1),
        .I3(data1[3]),
        .I4(O2),
        .I5(RXDATA[3]),
        .O(\n_0_word_aligned_data_r[4]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[5]_i_1 
       (.I0(O11[2]),
        .I1(data2[2]),
        .I2(O1),
        .I3(data1[2]),
        .I4(O2),
        .I5(RXDATA[2]),
        .O(\n_0_word_aligned_data_r[5]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[6]_i_1 
       (.I0(O11[1]),
        .I1(data2[1]),
        .I2(O1),
        .I3(data1[1]),
        .I4(O2),
        .I5(RXDATA[1]),
        .O(\n_0_word_aligned_data_r[6]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[7]_i_1 
       (.I0(O11[0]),
        .I1(data2[0]),
        .I2(O1),
        .I3(data1[0]),
        .I4(O2),
        .I5(RXDATA[0]),
        .O(\n_0_word_aligned_data_r[7]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[8]_i_1 
       (.I0(RXDATA[7]),
        .I1(O11[7]),
        .I2(O1),
        .I3(data2[7]),
        .I4(O2),
        .I5(RXDATA[15]),
        .O(\n_0_word_aligned_data_r[8]_i_1 ));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[9]_i_1 
       (.I0(RXDATA[6]),
        .I1(O11[6]),
        .I2(O1),
        .I3(data2[6]),
        .I4(O2),
        .I5(RXDATA[14]),
        .O(\n_0_word_aligned_data_r[9]_i_1 ));
FDRE \word_aligned_data_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[0]_i_1 ),
        .Q(O6[7]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[10] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[10]_i_1 ),
        .Q(O5[5]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[11] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[11]_i_1 ),
        .Q(O5[4]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[12] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[12]_i_1 ),
        .Q(O5[3]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[13] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[13]_i_1 ),
        .Q(O5[2]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[14] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[14]_i_1 ),
        .Q(O5[1]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[15] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[15]_i_1 ),
        .Q(O5[0]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[16] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I14[7]),
        .Q(O4[7]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[17] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I14[6]),
        .Q(O4[6]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[18] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I14[5]),
        .Q(O4[5]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[19] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I14[4]),
        .Q(O4[4]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[1]_i_1 ),
        .Q(O6[6]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[20] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I14[3]),
        .Q(O4[3]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[21] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I14[2]),
        .Q(O4[2]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[22] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I14[1]),
        .Q(O4[1]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[23] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I14[0]),
        .Q(O4[0]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[24] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I13[7]),
        .Q(O3[7]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[25] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I13[6]),
        .Q(O3[6]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[26] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I13[5]),
        .Q(O3[5]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[27] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I13[4]),
        .Q(O3[4]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[28] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I13[3]),
        .Q(O3[3]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[29] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I13[2]),
        .Q(O3[2]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[2]_i_1 ),
        .Q(O6[5]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[30] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I13[1]),
        .Q(O3[1]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[31] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I13[0]),
        .Q(O3[0]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[3]_i_1 ),
        .Q(O6[4]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[4]_i_1 ),
        .Q(O6[3]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[5]_i_1 ),
        .Q(O6[2]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[6]_i_1 ),
        .Q(O6[1]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[7]_i_1 ),
        .Q(O6[0]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[8] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[8]_i_1 ),
        .Q(O5[7]),
        .R(\<const0> ));
FDRE \word_aligned_data_r_reg[9] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_word_aligned_data_r[9]_i_1 ),
        .Q(O5[6]),
        .R(\<const0> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_SYM_GEN_4BYTE
   (TXCHARISK,
    TXDATA,
    gen_spa_i,
    user_clk,
    GEN_SP,
    gen_cc_i,
    I1,
    gen_scp_i,
    gen_a_i,
    I8,
    I9,
    I10,
    I11,
    I12,
    I19);
  output [3:0]TXCHARISK;
  output [31:0]TXDATA;
  input gen_spa_i;
  input user_clk;
  input GEN_SP;
  input gen_cc_i;
  input I1;
  input gen_scp_i;
  input gen_a_i;
  input [1:0]I8;
  input [1:0]I9;
  input [2:0]I10;
  input [3:0]I11;
  input [3:0]I12;
  input [31:0]I19;

  wire \<const0> ;
  wire \<const1> ;
  wire GEN_SP;
  wire I1;
  wire [2:0]I10;
  wire [3:0]I11;
  wire [3:0]I12;
  wire [31:0]I19;
  wire [1:0]I8;
  wire [1:0]I9;
  wire [3:0]TXCHARISK;
  wire [31:0]TXDATA;
  wire TX_DATA1;
  wire TX_DATA10_out;
  wire TX_DATA110_out;
  wire TX_DATA112_out;
  wire TX_DATA122_out;
  wire TX_DATA15_out;
  wire TX_DATA17_out;
  wire gen_a_i;
  wire gen_a_r;
  wire gen_cc_i;
  wire gen_cc_r;
  wire gen_scp_i;
  wire gen_sp_r;
  wire gen_spa_i;
  wire gen_spa_r;
  wire \n_0_TX_CHAR_IS_K[0]_i_1 ;
  wire \n_0_TX_CHAR_IS_K[1]_i_1 ;
  wire \n_0_TX_CHAR_IS_K[2]_i_1 ;
  wire \n_0_TX_CHAR_IS_K[3]_i_1 ;
  wire \n_0_TX_DATA[0]_i_1 ;
  wire \n_0_TX_DATA[10]_i_1 ;
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
  wire \n_0_TX_DATA[15]_i_5 ;
  wire \n_0_TX_DATA[15]_i_6 ;
  wire \n_0_TX_DATA[16]_i_1 ;
  wire \n_0_TX_DATA[17]_i_1 ;
  wire \n_0_TX_DATA[17]_i_2 ;
  wire \n_0_TX_DATA[18]_i_1 ;
  wire \n_0_TX_DATA[18]_i_2 ;
  wire \n_0_TX_DATA[19]_i_1 ;
  wire \n_0_TX_DATA[1]_i_2 ;
  wire \n_0_TX_DATA[20]_i_1 ;
  wire \n_0_TX_DATA[21]_i_1 ;
  wire \n_0_TX_DATA[21]_i_2 ;
  wire \n_0_TX_DATA[22]_i_1 ;
  wire \n_0_TX_DATA[22]_i_2 ;
  wire \n_0_TX_DATA[23]_i_1 ;
  wire \n_0_TX_DATA[23]_i_2 ;
  wire \n_0_TX_DATA[23]_i_3 ;
  wire \n_0_TX_DATA[23]_i_4 ;
  wire \n_0_TX_DATA[23]_i_5 ;
  wire \n_0_TX_DATA[23]_i_6 ;
  wire \n_0_TX_DATA[23]_i_7 ;
  wire \n_0_TX_DATA[24]_i_1 ;
  wire \n_0_TX_DATA[25]_i_1 ;
  wire \n_0_TX_DATA[26]_i_1 ;
  wire \n_0_TX_DATA[27]_i_1 ;
  wire \n_0_TX_DATA[28]_i_1 ;
  wire \n_0_TX_DATA[29]_i_1 ;
  wire \n_0_TX_DATA[29]_i_2 ;
  wire \n_0_TX_DATA[30]_i_1 ;
  wire \n_0_TX_DATA[30]_i_3 ;
  wire \n_0_TX_DATA[31]_i_1 ;
  wire \n_0_TX_DATA[31]_i_2 ;
  wire \n_0_TX_DATA[31]_i_3 ;
  wire \n_0_TX_DATA[31]_i_4 ;
  wire \n_0_TX_DATA[31]_i_5 ;
  wire \n_0_TX_DATA[31]_i_6 ;
  wire \n_0_TX_DATA[5]_i_2 ;
  wire \n_0_TX_DATA[6]_i_2 ;
  wire \n_0_TX_DATA[7]_i_1 ;
  wire \n_0_TX_DATA[7]_i_3 ;
  wire \n_0_TX_DATA[7]_i_4 ;
  wire \n_0_TX_DATA[7]_i_5 ;
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
  wire [7:1]p_1_in;
  wire p_1_in10_in;
  wire p_1_in13_in;
  wire p_1_in1_in;
  wire p_1_in5_in;
  wire p_1_in_0;
  wire [0:31]tx_pe_data_r;
  wire user_clk;

GND GND
       (.G(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT5 #(
    .INIT(32'h00000051)) 
     \TX_CHAR_IS_K[0]_i_1 
       (.I0(p_1_in_0),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(\n_0_gen_pad_r_reg[1] ),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .O(\n_0_TX_CHAR_IS_K[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \TX_CHAR_IS_K[1]_i_1 
       (.I0(p_1_in1_in),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(gen_spa_r),
        .I3(gen_sp_r),
        .O(\n_0_TX_CHAR_IS_K[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT5 #(
    .INIT(32'h00000051)) 
     \TX_CHAR_IS_K[2]_i_1 
       (.I0(p_1_in5_in),
        .I1(p_1_in10_in),
        .I2(p_0_in15_in),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .O(\n_0_TX_CHAR_IS_K[2]_i_1 ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \TX_CHAR_IS_K[3]_i_1 
       (.I0(p_1_in10_in),
        .O(\n_0_TX_CHAR_IS_K[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \TX_CHAR_IS_K_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_TX_CHAR_IS_K[0]_i_1 ),
        .Q(TXCHARISK[3]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \TX_CHAR_IS_K_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_TX_CHAR_IS_K[1]_i_1 ),
        .Q(TXCHARISK[2]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \TX_CHAR_IS_K_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_TX_CHAR_IS_K[2]_i_1 ),
        .Q(TXCHARISK[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \TX_CHAR_IS_K_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(\n_0_TX_CHAR_IS_K[3]_i_1 ),
        .Q(TXCHARISK[0]),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'h00730040)) 
     \TX_DATA[0]_i_1 
       (.I0(\n_0_gen_pad_r_reg[1] ),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(tx_pe_data_r[31]),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .I4(gen_cc_r),
        .O(\n_0_TX_DATA[0]_i_1 ));
LUT5 #(
    .INIT(32'hEFEFEFEA)) 
     \TX_DATA[10]_i_1 
       (.I0(\n_0_gen_ecp_r_reg[1] ),
        .I1(tx_pe_data_r[21]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(\n_0_TX_DATA[18]_i_2 ),
        .I4(\n_0_TX_DATA[12]_i_2 ),
        .O(\n_0_TX_DATA[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT4 #(
    .INIT(16'hFBAB)) 
     \TX_DATA[11]_i_1 
       (.I0(\n_0_gen_ecp_r_reg[1] ),
        .I1(gen_cc_r),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(tx_pe_data_r[20]),
        .O(\n_0_TX_DATA[11]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT5 #(
    .INIT(32'hEFEFEFEA)) 
     \TX_DATA[12]_i_1 
       (.I0(\n_0_gen_ecp_r_reg[1] ),
        .I1(tx_pe_data_r[19]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(\n_0_TX_DATA[12]_i_2 ),
        .I4(gen_cc_r),
        .O(\n_0_TX_DATA[12]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000030002)) 
     \TX_DATA[12]_i_2 
       (.I0(p_0_in),
        .I1(\n_0_TX_DATA[31]_i_6 ),
        .I2(\n_0_TX_DATA[15]_i_6 ),
        .I3(p_1_in1_in),
        .I4(p_0_in6_in),
        .I5(\n_0_tx_pe_data_v_r_reg[1] ),
        .O(\n_0_TX_DATA[12]_i_2 ));
LUT6 #(
    .INIT(64'hEFEAEFEAEFEAEFEF)) 
     \TX_DATA[13]_i_1 
       (.I0(\n_0_gen_ecp_r_reg[1] ),
        .I1(tx_pe_data_r[18]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(\n_0_TX_DATA[13]_i_2 ),
        .I4(gen_sp_r),
        .I5(TX_DATA15_out),
        .O(\n_0_TX_DATA[13]_i_1 ));
LUT6 #(
    .INIT(64'hF0F0F0F0F0F1F0F0)) 
     \TX_DATA[13]_i_2 
       (.I0(\n_0_TX_DATA[31]_i_6 ),
        .I1(\n_0_gen_ecp_r_reg[1] ),
        .I2(gen_cc_r),
        .I3(p_1_in1_in),
        .I4(p_0_in6_in),
        .I5(\n_0_tx_pe_data_v_r_reg[1] ),
        .O(\n_0_TX_DATA[13]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \TX_DATA[13]_i_3 
       (.I0(\n_0_tx_pe_data_v_r_reg[1] ),
        .I1(p_0_in),
        .I2(p_1_in1_in),
        .I3(gen_cc_r),
        .I4(\n_0_gen_ecp_r_reg[1] ),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(TX_DATA15_out));
LUT6 #(
    .INIT(64'hFFF2FFF2FFFFFF22)) 
     \TX_DATA[14]_i_1 
       (.I0(\n_0_TX_DATA[14]_i_2 ),
        .I1(\n_0_TX_DATA[15]_i_3 ),
        .I2(tx_pe_data_r[17]),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .I4(gen_cc_r),
        .I5(\n_0_tx_pe_data_v_r_reg[1] ),
        .O(\n_0_TX_DATA[14]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \TX_DATA[14]_i_2 
       (.I0(gen_sp_r),
        .I1(gen_spa_r),
        .O(\n_0_TX_DATA[14]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \TX_DATA[15]_i_1 
       (.I0(\n_0_TX_DATA[15]_i_3 ),
        .I1(gen_spa_r),
        .I2(gen_sp_r),
        .I3(gen_cc_r),
        .I4(p_1_in1_in),
        .I5(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[15]_i_1 ));
LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFEA)) 
     \TX_DATA[15]_i_2 
       (.I0(\n_0_gen_ecp_r_reg[1] ),
        .I1(tx_pe_data_r[16]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(TX_DATA17_out),
        .I4(gen_cc_r),
        .I5(\n_0_TX_DATA[15]_i_5 ),
        .O(\n_0_TX_DATA[15]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00030002)) 
     \TX_DATA[15]_i_3 
       (.I0(p_0_in6_in),
        .I1(p_1_in1_in),
        .I2(\n_0_TX_DATA[15]_i_6 ),
        .I3(\n_0_TX_DATA[31]_i_6 ),
        .I4(p_0_in),
        .I5(\n_0_tx_pe_data_v_r_reg[1] ),
        .O(\n_0_TX_DATA[15]_i_3 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \TX_DATA[15]_i_4 
       (.I0(\n_0_tx_pe_data_v_r_reg[1] ),
        .I1(p_0_in6_in),
        .I2(p_1_in1_in),
        .I3(gen_cc_r),
        .I4(\n_0_gen_ecp_r_reg[1] ),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(TX_DATA17_out));
LUT6 #(
    .INIT(64'h00000000FFFFFEFF)) 
     \TX_DATA[15]_i_5 
       (.I0(\n_0_gen_ecp_r_reg[1] ),
        .I1(gen_cc_r),
        .I2(p_1_in1_in),
        .I3(p_0_in),
        .I4(\n_0_tx_pe_data_v_r_reg[1] ),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(\n_0_TX_DATA[15]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \TX_DATA[15]_i_6 
       (.I0(gen_cc_r),
        .I1(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[15]_i_6 ));
LUT5 #(
    .INIT(32'hBFAFBAAA)) 
     \TX_DATA[16]_i_1 
       (.I0(p_1_in13_in),
        .I1(p_0_in15_in),
        .I2(p_1_in10_in),
        .I3(tx_pe_data_r[15]),
        .I4(gen_cc_r),
        .O(\n_0_TX_DATA[16]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT5 #(
    .INIT(32'hBBBBABAA)) 
     \TX_DATA[17]_i_1 
       (.I0(\n_0_TX_DATA[17]_i_2 ),
        .I1(p_1_in10_in),
        .I2(\n_0_TX_DATA[23]_i_3 ),
        .I3(gen_sp_r),
        .I4(gen_cc_r),
        .O(\n_0_TX_DATA[17]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT4 #(
    .INIT(16'hFF20)) 
     \TX_DATA[17]_i_2 
       (.I0(p_1_in10_in),
        .I1(p_0_in15_in),
        .I2(tx_pe_data_r[14]),
        .I3(p_1_in13_in),
        .O(\n_0_TX_DATA[17]_i_2 ));
LUT6 #(
    .INIT(64'h00000000EFEFEFE0)) 
     \TX_DATA[18]_i_1 
       (.I0(tx_pe_data_r[13]),
        .I1(p_0_in15_in),
        .I2(p_1_in10_in),
        .I3(\n_0_TX_DATA[23]_i_3 ),
        .I4(\n_0_TX_DATA[18]_i_2 ),
        .I5(p_1_in13_in),
        .O(\n_0_TX_DATA[18]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT3 #(
    .INIT(8'hF4)) 
     \TX_DATA[18]_i_2 
       (.I0(gen_sp_r),
        .I1(gen_spa_r),
        .I2(gen_cc_r),
        .O(\n_0_TX_DATA[18]_i_2 ));
LUT5 #(
    .INIT(32'hFAEAFFEF)) 
     \TX_DATA[19]_i_1 
       (.I0(p_1_in13_in),
        .I1(tx_pe_data_r[12]),
        .I2(p_1_in10_in),
        .I3(p_0_in15_in),
        .I4(gen_cc_r),
        .O(\n_0_TX_DATA[19]_i_1 ));
LUT5 #(
    .INIT(32'hBBBBABAA)) 
     \TX_DATA[1]_i_1 
       (.I0(\n_0_TX_DATA[1]_i_2 ),
        .I1(\n_0_tx_pe_data_v_r_reg[1] ),
        .I2(\n_0_TX_DATA[7]_i_3 ),
        .I3(gen_sp_r),
        .I4(gen_cc_r),
        .O(p_1_in[1]));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT4 #(
    .INIT(16'hFF20)) 
     \TX_DATA[1]_i_2 
       (.I0(\n_0_tx_pe_data_v_r_reg[1] ),
        .I1(\n_0_gen_pad_r_reg[1] ),
        .I2(tx_pe_data_r[30]),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[1]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFEEFFF0FFEE)) 
     \TX_DATA[20]_i_1 
       (.I0(gen_cc_r),
        .I1(\n_0_TX_DATA[23]_i_3 ),
        .I2(tx_pe_data_r[11]),
        .I3(p_1_in13_in),
        .I4(p_1_in10_in),
        .I5(p_0_in15_in),
        .O(\n_0_TX_DATA[20]_i_1 ));
LUT6 #(
    .INIT(64'hDDDCDDDCDDDCDDDD)) 
     \TX_DATA[21]_i_1 
       (.I0(p_1_in10_in),
        .I1(\n_0_TX_DATA[21]_i_2 ),
        .I2(TX_DATA112_out),
        .I3(gen_cc_r),
        .I4(gen_sp_r),
        .I5(TX_DATA110_out),
        .O(\n_0_TX_DATA[21]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT4 #(
    .INIT(16'hFF20)) 
     \TX_DATA[21]_i_2 
       (.I0(p_1_in10_in),
        .I1(p_0_in15_in),
        .I2(tx_pe_data_r[10]),
        .I3(p_1_in13_in),
        .O(\n_0_TX_DATA[21]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \TX_DATA[21]_i_3 
       (.I0(p_1_in13_in),
        .I1(p_0_in11_in),
        .I2(p_1_in5_in),
        .I3(gen_cc_r),
        .I4(p_1_in10_in),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(TX_DATA112_out));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \TX_DATA[21]_i_4 
       (.I0(p_1_in13_in),
        .I1(p_0_in8_in),
        .I2(p_1_in5_in),
        .I3(gen_cc_r),
        .I4(p_1_in10_in),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(TX_DATA110_out));
LUT6 #(
    .INIT(64'hDDDDDDDDCDCCCDCD)) 
     \TX_DATA[22]_i_1 
       (.I0(p_1_in10_in),
        .I1(\n_0_TX_DATA[22]_i_2 ),
        .I2(\n_0_TX_DATA[23]_i_3 ),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(\n_0_TX_DATA[22]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT4 #(
    .INIT(16'hFF20)) 
     \TX_DATA[22]_i_2 
       (.I0(p_1_in10_in),
        .I1(p_0_in15_in),
        .I2(tx_pe_data_r[9]),
        .I3(p_1_in13_in),
        .O(\n_0_TX_DATA[22]_i_2 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \TX_DATA[23]_i_1 
       (.I0(p_1_in10_in),
        .I1(p_1_in13_in),
        .I2(p_1_in5_in),
        .I3(\n_0_TX_DATA[23]_i_3 ),
        .I4(\n_0_TX_DATA[23]_i_4 ),
        .O(\n_0_TX_DATA[23]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFEEFFF0FFEE)) 
     \TX_DATA[23]_i_2 
       (.I0(\n_0_TX_DATA[23]_i_5 ),
        .I1(\n_0_TX_DATA[23]_i_6 ),
        .I2(tx_pe_data_r[8]),
        .I3(p_1_in13_in),
        .I4(p_1_in10_in),
        .I5(p_0_in15_in),
        .O(\n_0_TX_DATA[23]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000030002)) 
     \TX_DATA[23]_i_3 
       (.I0(p_0_in11_in),
        .I1(\n_0_TX_DATA[31]_i_6 ),
        .I2(\n_0_TX_DATA[23]_i_7 ),
        .I3(p_1_in5_in),
        .I4(p_0_in8_in),
        .I5(p_1_in13_in),
        .O(\n_0_TX_DATA[23]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \TX_DATA[23]_i_4 
       (.I0(gen_spa_r),
        .I1(gen_sp_r),
        .I2(gen_cc_r),
        .O(\n_0_TX_DATA[23]_i_4 ));
LUT6 #(
    .INIT(64'h00000000FFFFFEFF)) 
     \TX_DATA[23]_i_5 
       (.I0(p_1_in10_in),
        .I1(gen_cc_r),
        .I2(p_1_in5_in),
        .I3(p_0_in8_in),
        .I4(p_1_in13_in),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(\n_0_TX_DATA[23]_i_5 ));
LUT6 #(
    .INIT(64'hF0F0F0F0F0F1F0F0)) 
     \TX_DATA[23]_i_6 
       (.I0(\n_0_TX_DATA[31]_i_6 ),
        .I1(p_1_in10_in),
        .I2(gen_cc_r),
        .I3(p_1_in5_in),
        .I4(p_0_in11_in),
        .I5(p_1_in13_in),
        .O(\n_0_TX_DATA[23]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \TX_DATA[23]_i_7 
       (.I0(gen_cc_r),
        .I1(p_1_in10_in),
        .O(\n_0_TX_DATA[23]_i_7 ));
LUT4 #(
    .INIT(16'h00B8)) 
     \TX_DATA[24]_i_1 
       (.I0(tx_pe_data_r[7]),
        .I1(p_1_in10_in),
        .I2(gen_cc_r),
        .I3(p_1_in13_in),
        .O(\n_0_TX_DATA[24]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT4 #(
    .INIT(16'h00E2)) 
     \TX_DATA[25]_i_1 
       (.I0(gen_cc_r),
        .I1(p_1_in10_in),
        .I2(tx_pe_data_r[6]),
        .I3(p_1_in13_in),
        .O(\n_0_TX_DATA[25]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT4 #(
    .INIT(16'hEFEA)) 
     \TX_DATA[26]_i_1 
       (.I0(p_1_in13_in),
        .I1(tx_pe_data_r[5]),
        .I2(p_1_in10_in),
        .I3(\n_0_TX_DATA[31]_i_3 ),
        .O(\n_0_TX_DATA[26]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT4 #(
    .INIT(16'hFBAB)) 
     \TX_DATA[27]_i_1 
       (.I0(p_1_in13_in),
        .I1(gen_cc_r),
        .I2(p_1_in10_in),
        .I3(tx_pe_data_r[4]),
        .O(\n_0_TX_DATA[27]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT4 #(
    .INIT(16'hEFEA)) 
     \TX_DATA[28]_i_1 
       (.I0(p_1_in13_in),
        .I1(tx_pe_data_r[3]),
        .I2(p_1_in10_in),
        .I3(\n_0_TX_DATA[31]_i_3 ),
        .O(\n_0_TX_DATA[28]_i_1 ));
LUT6 #(
    .INIT(64'h00000000FFFE00FE)) 
     \TX_DATA[29]_i_1 
       (.I0(gen_cc_r),
        .I1(TX_DATA122_out),
        .I2(\n_0_TX_DATA[29]_i_2 ),
        .I3(p_1_in10_in),
        .I4(tx_pe_data_r[2]),
        .I5(p_1_in13_in),
        .O(\n_0_TX_DATA[29]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
     \TX_DATA[29]_i_2 
       (.I0(p_0_in20_in),
        .I1(p_0_in17_in),
        .I2(gen_cc_r),
        .I3(p_1_in10_in),
        .I4(p_1_in13_in),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(\n_0_TX_DATA[29]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFEEF0EE)) 
     \TX_DATA[2]_i_1 
       (.I0(\n_0_TX_DATA[7]_i_3 ),
        .I1(\n_0_TX_DATA[18]_i_2 ),
        .I2(tx_pe_data_r[29]),
        .I3(\n_0_tx_pe_data_v_r_reg[1] ),
        .I4(\n_0_gen_pad_r_reg[1] ),
        .I5(\n_0_gen_ecp_r_reg[1] ),
        .O(p_1_in[2]));
LUT6 #(
    .INIT(64'hEFEFEFEFEFEFEFEA)) 
     \TX_DATA[30]_i_1 
       (.I0(p_1_in13_in),
        .I1(tx_pe_data_r[1]),
        .I2(p_1_in10_in),
        .I3(TX_DATA122_out),
        .I4(gen_cc_r),
        .I5(\n_0_TX_DATA[30]_i_3 ),
        .O(\n_0_TX_DATA[30]_i_1 ));
LUT6 #(
    .INIT(64'h0000000100000000)) 
     \TX_DATA[30]_i_2 
       (.I0(gen_sp_r),
        .I1(gen_spa_r),
        .I2(p_1_in13_in),
        .I3(p_1_in10_in),
        .I4(gen_cc_r),
        .I5(gen_a_r),
        .O(TX_DATA122_out));
LUT6 #(
    .INIT(64'h00000000FFFFFFF1)) 
     \TX_DATA[30]_i_3 
       (.I0(p_0_in20_in),
        .I1(p_0_in17_in),
        .I2(gen_cc_r),
        .I3(p_1_in10_in),
        .I4(p_1_in13_in),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(\n_0_TX_DATA[30]_i_3 ));
LUT3 #(
    .INIT(8'hFE)) 
     \TX_DATA[31]_i_1 
       (.I0(\n_0_TX_DATA[31]_i_3 ),
        .I1(p_1_in13_in),
        .I2(p_1_in10_in),
        .O(\n_0_TX_DATA[31]_i_1 ));
LUT4 #(
    .INIT(16'h00EA)) 
     \TX_DATA[31]_i_2 
       (.I0(\n_0_TX_DATA[31]_i_4 ),
        .I1(tx_pe_data_r[0]),
        .I2(p_1_in10_in),
        .I3(p_1_in13_in),
        .O(\n_0_TX_DATA[31]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAA8)) 
     \TX_DATA[31]_i_3 
       (.I0(\n_0_TX_DATA[31]_i_5 ),
        .I1(p_0_in20_in),
        .I2(gen_a_r),
        .I3(p_0_in17_in),
        .I4(gen_cc_r),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(\n_0_TX_DATA[31]_i_3 ));
LUT6 #(
    .INIT(64'h00000000FF2FFF3F)) 
     \TX_DATA[31]_i_4 
       (.I0(p_0_in20_in),
        .I1(gen_a_r),
        .I2(\n_0_TX_DATA[31]_i_5 ),
        .I3(gen_cc_r),
        .I4(p_0_in17_in),
        .I5(p_1_in10_in),
        .O(\n_0_TX_DATA[31]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \TX_DATA[31]_i_5 
       (.I0(gen_cc_r),
        .I1(p_1_in10_in),
        .I2(p_1_in13_in),
        .I3(gen_spa_r),
        .I4(gen_sp_r),
        .O(\n_0_TX_DATA[31]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \TX_DATA[31]_i_6 
       (.I0(gen_sp_r),
        .I1(gen_spa_r),
        .O(\n_0_TX_DATA[31]_i_6 ));
LUT5 #(
    .INIT(32'hFAEAFFEF)) 
     \TX_DATA[3]_i_1 
       (.I0(\n_0_gen_ecp_r_reg[1] ),
        .I1(tx_pe_data_r[28]),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(\n_0_gen_pad_r_reg[1] ),
        .I4(gen_cc_r),
        .O(p_1_in[3]));
LUT6 #(
    .INIT(64'hFFFFFFEEFFF0FFEE)) 
     \TX_DATA[4]_i_1 
       (.I0(gen_cc_r),
        .I1(\n_0_TX_DATA[7]_i_3 ),
        .I2(tx_pe_data_r[27]),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .I4(\n_0_tx_pe_data_v_r_reg[1] ),
        .I5(\n_0_gen_pad_r_reg[1] ),
        .O(p_1_in[4]));
LUT6 #(
    .INIT(64'hDDDCDDDCDDDCDDDD)) 
     \TX_DATA[5]_i_1 
       (.I0(\n_0_tx_pe_data_v_r_reg[1] ),
        .I1(\n_0_TX_DATA[5]_i_2 ),
        .I2(TX_DATA10_out),
        .I3(gen_cc_r),
        .I4(gen_sp_r),
        .I5(TX_DATA1),
        .O(p_1_in[5]));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT4 #(
    .INIT(16'hFF20)) 
     \TX_DATA[5]_i_2 
       (.I0(\n_0_tx_pe_data_v_r_reg[1] ),
        .I1(\n_0_gen_pad_r_reg[1] ),
        .I2(tx_pe_data_r[26]),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[5]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \TX_DATA[5]_i_3 
       (.I0(\n_0_tx_pe_data_v_r_reg[1] ),
        .I1(\n_0_gen_k_r_reg[3] ),
        .I2(p_1_in_0),
        .I3(gen_cc_r),
        .I4(\n_0_gen_ecp_r_reg[1] ),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(TX_DATA10_out));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \TX_DATA[5]_i_4 
       (.I0(\n_0_tx_pe_data_v_r_reg[1] ),
        .I1(\n_0_gen_r_r_reg[3] ),
        .I2(p_1_in_0),
        .I3(gen_cc_r),
        .I4(\n_0_gen_ecp_r_reg[1] ),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(TX_DATA1));
LUT6 #(
    .INIT(64'hDDDDDDDDCDCCCDCD)) 
     \TX_DATA[6]_i_1 
       (.I0(\n_0_tx_pe_data_v_r_reg[1] ),
        .I1(\n_0_TX_DATA[6]_i_2 ),
        .I2(\n_0_TX_DATA[7]_i_3 ),
        .I3(gen_sp_r),
        .I4(gen_spa_r),
        .I5(gen_cc_r),
        .O(p_1_in[6]));
LUT4 #(
    .INIT(16'hFF20)) 
     \TX_DATA[6]_i_2 
       (.I0(\n_0_tx_pe_data_v_r_reg[1] ),
        .I1(\n_0_gen_pad_r_reg[1] ),
        .I2(tx_pe_data_r[25]),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[6]_i_2 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \TX_DATA[7]_i_1 
       (.I0(\n_0_tx_pe_data_v_r_reg[1] ),
        .I1(\n_0_gen_ecp_r_reg[1] ),
        .I2(p_1_in_0),
        .I3(\n_0_TX_DATA[7]_i_3 ),
        .I4(\n_0_TX_DATA[23]_i_4 ),
        .O(\n_0_TX_DATA[7]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFEEFFF0FFEE)) 
     \TX_DATA[7]_i_2 
       (.I0(\n_0_TX_DATA[7]_i_4 ),
        .I1(\n_0_TX_DATA[7]_i_5 ),
        .I2(tx_pe_data_r[24]),
        .I3(\n_0_gen_ecp_r_reg[1] ),
        .I4(\n_0_tx_pe_data_v_r_reg[1] ),
        .I5(\n_0_gen_pad_r_reg[1] ),
        .O(p_1_in[7]));
LUT6 #(
    .INIT(64'h0000000000030002)) 
     \TX_DATA[7]_i_3 
       (.I0(\n_0_gen_k_r_reg[3] ),
        .I1(\n_0_TX_DATA[31]_i_6 ),
        .I2(\n_0_TX_DATA[15]_i_6 ),
        .I3(p_1_in_0),
        .I4(\n_0_gen_r_r_reg[3] ),
        .I5(\n_0_tx_pe_data_v_r_reg[1] ),
        .O(\n_0_TX_DATA[7]_i_3 ));
LUT6 #(
    .INIT(64'h00000000FFFFFEFF)) 
     \TX_DATA[7]_i_4 
       (.I0(\n_0_gen_ecp_r_reg[1] ),
        .I1(gen_cc_r),
        .I2(p_1_in_0),
        .I3(\n_0_gen_r_r_reg[3] ),
        .I4(\n_0_tx_pe_data_v_r_reg[1] ),
        .I5(\n_0_TX_DATA[31]_i_6 ),
        .O(\n_0_TX_DATA[7]_i_4 ));
LUT6 #(
    .INIT(64'hF0F0F0F0F0F1F0F0)) 
     \TX_DATA[7]_i_5 
       (.I0(\n_0_TX_DATA[31]_i_6 ),
        .I1(\n_0_gen_ecp_r_reg[1] ),
        .I2(gen_cc_r),
        .I3(p_1_in_0),
        .I4(\n_0_gen_k_r_reg[3] ),
        .I5(\n_0_tx_pe_data_v_r_reg[1] ),
        .O(\n_0_TX_DATA[7]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT4 #(
    .INIT(16'hFEAE)) 
     \TX_DATA[8]_i_1 
       (.I0(\n_0_gen_ecp_r_reg[1] ),
        .I1(gen_cc_r),
        .I2(\n_0_tx_pe_data_v_r_reg[1] ),
        .I3(tx_pe_data_r[23]),
        .O(\n_0_TX_DATA[8]_i_1 ));
LUT6 #(
    .INIT(64'h00000000F2FFF222)) 
     \TX_DATA[9]_i_1 
       (.I0(gen_sp_r),
        .I1(\n_0_TX_DATA[15]_i_3 ),
        .I2(tx_pe_data_r[22]),
        .I3(\n_0_tx_pe_data_v_r_reg[1] ),
        .I4(gen_cc_r),
        .I5(\n_0_gen_ecp_r_reg[1] ),
        .O(\n_0_TX_DATA[9]_i_1 ));
FDRE \TX_DATA_reg[0] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(\n_0_TX_DATA[0]_i_1 ),
        .Q(TXDATA[24]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[10] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[10]_i_1 ),
        .Q(TXDATA[18]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[11] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[11]_i_1 ),
        .Q(TXDATA[19]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[12] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[12]_i_1 ),
        .Q(TXDATA[20]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[13] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[13]_i_1 ),
        .Q(TXDATA[21]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[14] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[14]_i_1 ),
        .Q(TXDATA[22]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[15] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[15]_i_2 ),
        .Q(TXDATA[23]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[16] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[16]_i_1 ),
        .Q(TXDATA[8]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[17] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[17]_i_1 ),
        .Q(TXDATA[9]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[18] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[18]_i_1 ),
        .Q(TXDATA[10]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[19] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[19]_i_1 ),
        .Q(TXDATA[11]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[1] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(p_1_in[1]),
        .Q(TXDATA[25]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[20] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[20]_i_1 ),
        .Q(TXDATA[12]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[21] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[21]_i_1 ),
        .Q(TXDATA[13]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[22] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[22]_i_1 ),
        .Q(TXDATA[14]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[23] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[23]_i_1 ),
        .D(\n_0_TX_DATA[23]_i_2 ),
        .Q(TXDATA[15]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[24] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[24]_i_1 ),
        .Q(TXDATA[0]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[25] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[25]_i_1 ),
        .Q(TXDATA[1]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[26] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[26]_i_1 ),
        .Q(TXDATA[2]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[27] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[27]_i_1 ),
        .Q(TXDATA[3]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[28] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[28]_i_1 ),
        .Q(TXDATA[4]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[29] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[29]_i_1 ),
        .Q(TXDATA[5]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[2] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(p_1_in[2]),
        .Q(TXDATA[26]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[30] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[30]_i_1 ),
        .Q(TXDATA[6]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[31] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[31]_i_1 ),
        .D(\n_0_TX_DATA[31]_i_2 ),
        .Q(TXDATA[7]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[3] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(p_1_in[3]),
        .Q(TXDATA[27]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[4] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(p_1_in[4]),
        .Q(TXDATA[28]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[5] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(p_1_in[5]),
        .Q(TXDATA[29]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[6] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(p_1_in[6]),
        .Q(TXDATA[30]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[7] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[7]_i_1 ),
        .D(p_1_in[7]),
        .Q(TXDATA[31]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[8] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[8]_i_1 ),
        .Q(TXDATA[16]),
        .R(\<const0> ));
FDRE \TX_DATA_reg[9] 
       (.C(user_clk),
        .CE(\n_0_TX_DATA[15]_i_1 ),
        .D(\n_0_TX_DATA[9]_i_1 ),
        .Q(TXDATA[17]),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
FDRE gen_a_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(gen_a_i),
        .Q(gen_a_r),
        .R(\<const0> ));
FDRE gen_cc_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(gen_cc_i),
        .Q(gen_cc_r),
        .R(\<const0> ));
FDRE \gen_ecp_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I1),
        .Q(\n_0_gen_ecp_r_reg[1] ),
        .R(\<const0> ));
FDRE \gen_k_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I12[3]),
        .Q(p_0_in20_in),
        .R(\<const0> ));
FDRE \gen_k_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I12[2]),
        .Q(p_0_in11_in),
        .R(\<const0> ));
FDRE \gen_k_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I12[1]),
        .Q(p_0_in6_in),
        .R(\<const0> ));
FDRE \gen_k_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I12[0]),
        .Q(\n_0_gen_k_r_reg[3] ),
        .R(\<const0> ));
FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I8[1]),
        .Q(p_0_in15_in),
        .R(\<const0> ));
FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I8[0]),
        .Q(\n_0_gen_pad_r_reg[1] ),
        .R(\<const0> ));
FDRE \gen_r_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I11[3]),
        .Q(p_0_in17_in),
        .R(\<const0> ));
FDRE \gen_r_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I11[2]),
        .Q(p_0_in8_in),
        .R(\<const0> ));
FDRE \gen_r_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I11[1]),
        .Q(p_0_in),
        .R(\<const0> ));
FDRE \gen_r_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I11[0]),
        .Q(\n_0_gen_r_r_reg[3] ),
        .R(\<const0> ));
FDRE \gen_scp_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(gen_scp_i),
        .Q(p_1_in13_in),
        .R(\<const0> ));
FDRE gen_sp_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(GEN_SP),
        .Q(gen_sp_r),
        .R(\<const0> ));
FDRE gen_spa_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(gen_spa_i),
        .Q(gen_spa_r),
        .R(\<const0> ));
FDRE \gen_v_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I10[2]),
        .Q(p_1_in5_in),
        .R(\<const0> ));
FDRE \gen_v_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I10[1]),
        .Q(p_1_in1_in),
        .R(\<const0> ));
FDRE \gen_v_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I10[0]),
        .Q(p_1_in_0),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[31]),
        .Q(tx_pe_data_r[0]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[21]),
        .Q(tx_pe_data_r[10]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[20]),
        .Q(tx_pe_data_r[11]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[19]),
        .Q(tx_pe_data_r[12]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[18]),
        .Q(tx_pe_data_r[13]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[17]),
        .Q(tx_pe_data_r[14]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[16]),
        .Q(tx_pe_data_r[15]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[15]),
        .Q(tx_pe_data_r[16]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[14]),
        .Q(tx_pe_data_r[17]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[13]),
        .Q(tx_pe_data_r[18]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[12]),
        .Q(tx_pe_data_r[19]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[30]),
        .Q(tx_pe_data_r[1]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[11]),
        .Q(tx_pe_data_r[20]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[10]),
        .Q(tx_pe_data_r[21]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[9]),
        .Q(tx_pe_data_r[22]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[8]),
        .Q(tx_pe_data_r[23]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[7]),
        .Q(tx_pe_data_r[24]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[6]),
        .Q(tx_pe_data_r[25]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[5]),
        .Q(tx_pe_data_r[26]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[4]),
        .Q(tx_pe_data_r[27]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[3]),
        .Q(tx_pe_data_r[28]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[2]),
        .Q(tx_pe_data_r[29]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[29]),
        .Q(tx_pe_data_r[2]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[1]),
        .Q(tx_pe_data_r[30]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[0]),
        .Q(tx_pe_data_r[31]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[28]),
        .Q(tx_pe_data_r[3]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[27]),
        .Q(tx_pe_data_r[4]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[26]),
        .Q(tx_pe_data_r[5]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[25]),
        .Q(tx_pe_data_r[6]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[24]),
        .Q(tx_pe_data_r[7]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[23]),
        .Q(tx_pe_data_r[8]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I19[22]),
        .Q(tx_pe_data_r[9]),
        .R(\<const0> ));
FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I9[1]),
        .Q(p_1_in10_in),
        .R(\<const0> ));
FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I9[0]),
        .Q(\n_0_tx_pe_data_v_r_reg[1] ),
        .R(\<const0> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_TX_LL
   (gen_cc_i,
    tx_dst_rdy,
    gen_scp_i,
    O1,
    s_axi_tx_tready,
    D,
    O2,
    Q,
    reset_i,
    user_clk,
    do_cc,
    s_axi_tx_tvalid,
    s_axi_tx_tlast,
    I1,
    I2,
    s_axi_tx_tkeep,
    I3,
    s_axi_tx_tdata);
  output gen_cc_i;
  output tx_dst_rdy;
  output gen_scp_i;
  output O1;
  output s_axi_tx_tready;
  output [1:0]D;
  output [1:0]O2;
  output [31:0]Q;
  input reset_i;
  input user_clk;
  input do_cc;
  input s_axi_tx_tvalid;
  input s_axi_tx_tlast;
  input I1;
  input I2;
  input [0:3]s_axi_tx_tkeep;
  input I3;
  input [0:31]s_axi_tx_tdata;

  wire [1:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire O1;
  wire [1:0]O2;
  wire [31:0]Q;
  wire do_cc;
  wire do_cc_r;
  wire gen_cc_i;
  wire gen_scp_i;
  wire n_0_tx_ll_datapath_i;
  wire n_10_tx_ll_control_i;
  wire n_7_tx_ll_control_i;
  wire p_0_in;
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

aurora_8b10b_0aurora_8b10b_0_TX_LL_CONTROL tx_ll_control_i
       (.I1(I1),
        .I2(I2),
        .I3(n_0_tx_ll_datapath_i),
        .I4(n_7_tx_ll_control_i),
        .I5(I3),
        .O1(tx_dst_rdy),
        .O2(O1),
        .O3(n_10_tx_ll_control_i),
        .do_cc(do_cc),
        .do_cc_r(do_cc_r),
        .gen_cc_i(gen_cc_i),
        .gen_scp_i(gen_scp_i),
        .p_0_in(p_0_in),
        .reset_i(reset_i),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .storage_pad_r0(storage_pad_r0),
        .storage_v_r0(storage_v_r0),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_TX_LL_DATAPATH tx_ll_datapath_i
       (.D(D),
        .I1(n_10_tx_ll_control_i),
        .I2(tx_dst_rdy),
        .I3(I2),
        .I4(n_7_tx_ll_control_i),
        .O1(n_0_tx_ll_datapath_i),
        .O2(O2),
        .Q(Q),
        .do_cc_r(do_cc_r),
        .p_0_in(p_0_in),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .storage_pad_r0(storage_pad_r0),
        .storage_v_r0(storage_v_r0),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0aurora_8b10b_0_TX_LL_CONTROL
   (gen_cc_i,
    do_cc_r,
    p_0_in,
    O1,
    gen_scp_i,
    O2,
    s_axi_tx_tready,
    I4,
    storage_pad_r0,
    storage_v_r0,
    O3,
    reset_i,
    user_clk,
    do_cc,
    s_axi_tx_tvalid,
    s_axi_tx_tlast,
    I1,
    I2,
    s_axi_tx_tkeep,
    I3,
    I5);
  output gen_cc_i;
  output do_cc_r;
  output p_0_in;
  output O1;
  output gen_scp_i;
  output O2;
  output s_axi_tx_tready;
  output [0:0]I4;
  output storage_pad_r0;
  output storage_v_r0;
  output O3;
  input reset_i;
  input user_clk;
  input do_cc;
  input s_axi_tx_tvalid;
  input s_axi_tx_tlast;
  input I1;
  input I2;
  input [0:3]s_axi_tx_tkeep;
  input I3;
  input I5;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire I3;
  wire [0:0]I4;
  wire I5;
  wire O1;
  wire O2;
  wire O3;
  wire VCC_2;
  wire data_r;
  wire data_to_eof_1_r;
  wire data_to_eof_2_r;
  wire do_cc;
  wire do_cc_r;
  wire gen_cc_i;
  wire gen_scp_i;
  wire idle_r;
  wire n_0_GEN_ECP_i_1;
  wire n_0_GEN_SCP_i_1;
  wire n_0_sof_to_data_r_i_1;
  wire n_0_storage_pad_r_i_2;
  wire next_data_c;
  wire next_data_to_eof_1_c;
  wire next_idle_c;
  wire next_sof_to_eof_1_c;
  wire p_0_in;
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

(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'h54)) 
     GEN_ECP_i_1
       (.I0(do_cc_r),
        .I1(data_to_eof_2_r),
        .I2(sof_to_eof_2_r),
        .O(n_0_GEN_ECP_i_1));
FDRE GEN_ECP_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_0_GEN_ECP_i_1),
        .Q(O2),
        .R(reset_i));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'h54)) 
     GEN_SCP_i_1
       (.I0(do_cc_r),
        .I1(sof_to_data_r),
        .I2(sof_to_eof_1_r),
        .O(n_0_GEN_SCP_i_1));
FDRE GEN_SCP_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_0_GEN_SCP_i_1),
        .Q(gen_scp_i),
        .R(reset_i));
GND GND
       (.G(\<const0> ));
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
        .CE(\<const1> ),
        .D(tx_dst_rdy_n_c),
        .Q(O1),
        .S(reset_i));
VCC VCC
       (.P(\<const1> ));
VCC VCC_1
       (.P(VCC_2));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hBFBFBF00)) 
     data_r_i_1
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .I2(s_axi_tx_tlast),
        .I3(sof_to_data_r),
        .I4(data_r),
        .O(next_data_c));
FDRE data_r_reg
       (.C(user_clk),
        .CE(p_0_in),
        .D(next_data_c),
        .Q(data_r),
        .R(reset_i));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h40404000)) 
     data_to_eof_1_r_i_1
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .I2(s_axi_tx_tlast),
        .I3(sof_to_data_r),
        .I4(data_r),
        .O(next_data_to_eof_1_c));
FDRE data_to_eof_1_r_reg
       (.C(user_clk),
        .CE(p_0_in),
        .D(next_data_to_eof_1_c),
        .Q(data_to_eof_1_r),
        .R(reset_i));
FDRE data_to_eof_2_r_reg
       (.C(user_clk),
        .CE(p_0_in),
        .D(data_to_eof_1_r),
        .Q(data_to_eof_2_r),
        .R(reset_i));
FDRE do_cc_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(do_cc),
        .Q(do_cc_r),
        .R(\<const0> ));
(* XILINX_LEGACY_PRIM = "FDR" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     gen_cc_flop_0_i
       (.C(user_clk),
        .CE(VCC_2),
        .D(do_cc_r),
        .Q(gen_cc_i),
        .R(reset_i));
LUT6 #(
    .INIT(64'h0000000200020220)) 
     \gen_pad_r[1]_i_1 
       (.I0(s_axi_tx_tlast),
        .I1(n_0_storage_pad_r_i_2),
        .I2(s_axi_tx_tkeep[2]),
        .I3(s_axi_tx_tkeep[1]),
        .I4(s_axi_tx_tkeep[0]),
        .I5(s_axi_tx_tkeep[3]),
        .O(I4));
LUT6 #(
    .INIT(64'hFBFBFBFBFBFBFB00)) 
     idle_r_i_1
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .I2(I2),
        .I3(idle_r),
        .I4(sof_to_eof_2_r),
        .I5(data_to_eof_2_r),
        .O(next_idle_c));
FDSE idle_r_reg
       (.C(user_clk),
        .CE(p_0_in),
        .D(next_idle_c),
        .Q(idle_r),
        .S(reset_i));
LUT6 #(
    .INIT(64'hA2AAA2AA00000200)) 
     in_frame_r_i_1
       (.I0(I5),
        .I1(s_axi_tx_tlast),
        .I2(O1),
        .I3(s_axi_tx_tvalid),
        .I4(I2),
        .I5(I3),
        .O(O3));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT1 #(
    .INIT(2'h1)) 
     s_axi_tx_tready_INST_0
       (.I0(O1),
        .O(s_axi_tx_tready));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h00005554)) 
     sof_to_data_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(data_to_eof_2_r),
        .I2(sof_to_eof_2_r),
        .I3(idle_r),
        .I4(I1),
        .O(n_0_sof_to_data_r_i_1));
FDRE sof_to_data_r_reg
       (.C(user_clk),
        .CE(p_0_in),
        .D(n_0_sof_to_data_r_i_1),
        .Q(sof_to_data_r),
        .R(reset_i));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'h0000AAA8)) 
     sof_to_eof_1_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(data_to_eof_2_r),
        .I2(sof_to_eof_2_r),
        .I3(idle_r),
        .I4(I1),
        .O(next_sof_to_eof_1_c));
FDRE sof_to_eof_1_r_reg
       (.C(user_clk),
        .CE(p_0_in),
        .D(next_sof_to_eof_1_c),
        .Q(sof_to_eof_1_r),
        .R(reset_i));
FDRE sof_to_eof_2_r_reg
       (.C(user_clk),
        .CE(p_0_in),
        .D(sof_to_eof_1_r),
        .Q(sof_to_eof_2_r),
        .R(reset_i));
LUT6 #(
    .INIT(64'h0220200020000000)) 
     storage_pad_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(n_0_storage_pad_r_i_2),
        .I2(s_axi_tx_tkeep[2]),
        .I3(s_axi_tx_tkeep[1]),
        .I4(s_axi_tx_tkeep[0]),
        .I5(s_axi_tx_tkeep[3]),
        .O(storage_pad_r0));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'hCFEF)) 
     storage_pad_r_i_2
       (.I0(I2),
        .I1(O1),
        .I2(s_axi_tx_tvalid),
        .I3(I3),
        .O(n_0_storage_pad_r_i_2));
LUT6 #(
    .INIT(64'h00000000FDD5D557)) 
     storage_v_r_i_1
       (.I0(s_axi_tx_tlast),
        .I1(s_axi_tx_tkeep[3]),
        .I2(s_axi_tx_tkeep[0]),
        .I3(s_axi_tx_tkeep[1]),
        .I4(s_axi_tx_tkeep[2]),
        .I5(n_0_storage_pad_r_i_2),
        .O(storage_v_r0));
LUT1 #(
    .INIT(2'h1)) 
     \tx_pe_data_v_r[0]_i_1 
       (.I0(do_cc_r),
        .O(p_0_in));
endmodule

module aurora_8b10b_0aurora_8b10b_0_TX_LL_DATAPATH
   (O1,
    D,
    O2,
    Q,
    p_0_in,
    storage_pad_r0,
    user_clk,
    storage_v_r0,
    I1,
    s_axi_tx_tvalid,
    I2,
    I3,
    do_cc_r,
    I4,
    s_axi_tx_tdata);
  output O1;
  output [1:0]D;
  output [1:0]O2;
  output [31:0]Q;
  input p_0_in;
  input storage_pad_r0;
  input user_clk;
  input storage_v_r0;
  input I1;
  input s_axi_tx_tvalid;
  input I2;
  input I3;
  input do_cc_r;
  input [0:0]I4;
  input [0:31]s_axi_tx_tdata;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire [0:0]I4;
  wire O1;
  wire [1:0]O2;
  wire [31:0]Q;
  wire do_cc_r;
  wire [0:1]gen_pad_r;
  wire p_0_in;
  wire [31:16]p_1_in;
  wire [0:0]p_1_out;
  wire [0:31]s_axi_tx_tdata;
  wire s_axi_tx_tvalid;
  wire storage_pad_r;
  wire storage_pad_r0;
  wire storage_v_r;
  wire storage_v_r0;
  wire [0:31]tx_pe_data_r;
  wire [0:1]tx_pe_data_v_r;
  wire user_clk;

FDRE \GEN_PAD_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(gen_pad_r[0]),
        .Q(O2[1]),
        .R(do_cc_r));
FDRE \GEN_PAD_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(gen_pad_r[1]),
        .Q(O2[0]),
        .R(do_cc_r));
GND GND
       (.G(\<const0> ));
FDRE \TX_PE_DATA_V_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_v_r[0]),
        .Q(D[1]),
        .R(do_cc_r));
FDRE \TX_PE_DATA_V_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_v_r[1]),
        .Q(D[0]),
        .R(do_cc_r));
FDRE \TX_PE_DATA_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[0]),
        .Q(Q[31]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[10] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[10]),
        .Q(Q[21]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[11] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[11]),
        .Q(Q[20]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[12] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[12]),
        .Q(Q[19]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[13] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[13]),
        .Q(Q[18]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[14] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[14]),
        .Q(Q[17]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[15] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[15]),
        .Q(Q[16]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[16] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[16]),
        .Q(Q[15]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[17] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[17]),
        .Q(Q[14]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[18] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[18]),
        .Q(Q[13]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[19] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[19]),
        .Q(Q[12]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[1]),
        .Q(Q[30]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[20] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[20]),
        .Q(Q[11]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[21] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[21]),
        .Q(Q[10]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[22] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[22]),
        .Q(Q[9]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[23] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[23]),
        .Q(Q[8]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[24] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[24]),
        .Q(Q[7]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[25] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[25]),
        .Q(Q[6]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[26] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[26]),
        .Q(Q[5]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[27] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[27]),
        .Q(Q[4]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[28] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[28]),
        .Q(Q[3]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[29] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[29]),
        .Q(Q[2]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[2]),
        .Q(Q[29]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[30] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[30]),
        .Q(Q[1]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[31] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[31]),
        .Q(Q[0]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[3]),
        .Q(Q[28]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[4]),
        .Q(Q[27]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[5] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[5]),
        .Q(Q[26]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[6] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[6]),
        .Q(Q[25]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[7] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[7]),
        .Q(Q[24]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[8] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[8]),
        .Q(Q[23]),
        .R(\<const0> ));
FDRE \TX_PE_DATA_reg[9] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_pe_data_r[9]),
        .Q(Q[22]),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
FDRE \gen_pad_r_reg[0] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(storage_pad_r),
        .Q(gen_pad_r[0]),
        .R(\<const0> ));
FDRE \gen_pad_r_reg[1] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(I4),
        .Q(gen_pad_r[1]),
        .R(\<const0> ));
FDRE in_frame_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I1),
        .Q(O1),
        .R(\<const0> ));
FDRE storage_pad_r_reg
       (.C(user_clk),
        .CE(p_0_in),
        .D(storage_pad_r0),
        .Q(storage_pad_r),
        .R(\<const0> ));
FDRE \storage_r_reg[0] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[16]),
        .Q(p_1_in[31]),
        .R(\<const0> ));
FDRE \storage_r_reg[10] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[26]),
        .Q(p_1_in[21]),
        .R(\<const0> ));
FDRE \storage_r_reg[11] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[27]),
        .Q(p_1_in[20]),
        .R(\<const0> ));
FDRE \storage_r_reg[12] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[28]),
        .Q(p_1_in[19]),
        .R(\<const0> ));
FDRE \storage_r_reg[13] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[29]),
        .Q(p_1_in[18]),
        .R(\<const0> ));
FDRE \storage_r_reg[14] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[30]),
        .Q(p_1_in[17]),
        .R(\<const0> ));
FDRE \storage_r_reg[15] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[31]),
        .Q(p_1_in[16]),
        .R(\<const0> ));
FDRE \storage_r_reg[1] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[17]),
        .Q(p_1_in[30]),
        .R(\<const0> ));
FDRE \storage_r_reg[2] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[18]),
        .Q(p_1_in[29]),
        .R(\<const0> ));
FDRE \storage_r_reg[3] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[19]),
        .Q(p_1_in[28]),
        .R(\<const0> ));
FDRE \storage_r_reg[4] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[20]),
        .Q(p_1_in[27]),
        .R(\<const0> ));
FDRE \storage_r_reg[5] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[21]),
        .Q(p_1_in[26]),
        .R(\<const0> ));
FDRE \storage_r_reg[6] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[22]),
        .Q(p_1_in[25]),
        .R(\<const0> ));
FDRE \storage_r_reg[7] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[23]),
        .Q(p_1_in[24]),
        .R(\<const0> ));
FDRE \storage_r_reg[8] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[24]),
        .Q(p_1_in[23]),
        .R(\<const0> ));
FDRE \storage_r_reg[9] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[25]),
        .Q(p_1_in[22]),
        .R(\<const0> ));
FDRE storage_v_r_reg
       (.C(user_clk),
        .CE(p_0_in),
        .D(storage_v_r0),
        .Q(storage_v_r),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[0] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[31]),
        .Q(tx_pe_data_r[0]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[10] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[21]),
        .Q(tx_pe_data_r[10]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[11] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[20]),
        .Q(tx_pe_data_r[11]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[12] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[19]),
        .Q(tx_pe_data_r[12]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[13] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[18]),
        .Q(tx_pe_data_r[13]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[14] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[17]),
        .Q(tx_pe_data_r[14]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[15] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[16]),
        .Q(tx_pe_data_r[15]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[16] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[0]),
        .Q(tx_pe_data_r[16]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[17] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[1]),
        .Q(tx_pe_data_r[17]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[18] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[2]),
        .Q(tx_pe_data_r[18]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[19] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[3]),
        .Q(tx_pe_data_r[19]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[1] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[30]),
        .Q(tx_pe_data_r[1]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[20] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[4]),
        .Q(tx_pe_data_r[20]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[21] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[5]),
        .Q(tx_pe_data_r[21]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[22] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[6]),
        .Q(tx_pe_data_r[22]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[23] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[7]),
        .Q(tx_pe_data_r[23]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[24] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[8]),
        .Q(tx_pe_data_r[24]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[25] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[9]),
        .Q(tx_pe_data_r[25]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[26] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[10]),
        .Q(tx_pe_data_r[26]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[27] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[11]),
        .Q(tx_pe_data_r[27]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[28] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[12]),
        .Q(tx_pe_data_r[28]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[29] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[13]),
        .Q(tx_pe_data_r[29]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[2] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[29]),
        .Q(tx_pe_data_r[2]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[30] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[14]),
        .Q(tx_pe_data_r[30]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[31] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(s_axi_tx_tdata[15]),
        .Q(tx_pe_data_r[31]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[3] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[28]),
        .Q(tx_pe_data_r[3]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[4] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[27]),
        .Q(tx_pe_data_r[4]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[5] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[26]),
        .Q(tx_pe_data_r[5]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[6] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[25]),
        .Q(tx_pe_data_r[6]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[7] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[24]),
        .Q(tx_pe_data_r[7]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[8] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[23]),
        .Q(tx_pe_data_r[8]),
        .R(\<const0> ));
FDRE \tx_pe_data_r_reg[9] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_in[22]),
        .Q(tx_pe_data_r[9]),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'h080C)) 
     \tx_pe_data_v_r[1]_i_1 
       (.I0(O1),
        .I1(s_axi_tx_tvalid),
        .I2(I2),
        .I3(I3),
        .O(p_1_out));
FDRE \tx_pe_data_v_r_reg[0] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(storage_v_r),
        .Q(tx_pe_data_v_r[0]),
        .R(\<const0> ));
FDRE \tx_pe_data_v_r_reg[1] 
       (.C(user_clk),
        .CE(p_0_in),
        .D(p_1_out),
        .Q(tx_pe_data_v_r[1]),
        .R(\<const0> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_VALID_DATA_COUNTER
   (D,
    Q,
    stage_3_storage_count_r,
    stage_2_start_with_data_r,
    stage_3_end_storage_r,
    SR,
    I1,
    user_clk);
  output [1:0]D;
  output [1:0]Q;
  input [0:1]stage_3_storage_count_r;
  input stage_2_start_with_data_r;
  input stage_3_end_storage_r;
  input [0:0]SR;
  input [1:0]I1;
  input user_clk;

  wire \<const1> ;
  wire [1:0]D;
  wire [1:0]I1;
  wire [1:0]Q;
  wire [0:0]SR;
  wire stage_2_start_with_data_r;
  wire stage_3_end_storage_r;
  wire [0:1]stage_3_storage_count_r;
  wire user_clk;

FDRE \COUNT_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I1[1]),
        .Q(Q[1]),
        .R(SR));
FDRE \COUNT_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I1[0]),
        .Q(Q[0]),
        .R(SR));
LUT6 #(
    .INIT(64'hFFFFFFFCFFFEFFFF)) 
     \STORAGE_CE[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(stage_2_start_with_data_r),
        .I3(stage_3_end_storage_r),
        .I4(stage_3_storage_count_r[0]),
        .I5(stage_3_storage_count_r[1]),
        .O(D[1]));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
     \STORAGE_CE[1]_i_1 
       (.I0(Q[0]),
        .I1(stage_3_storage_count_r[1]),
        .I2(Q[1]),
        .I3(stage_2_start_with_data_r),
        .I4(stage_3_end_storage_r),
        .I5(stage_3_storage_count_r[0]),
        .O(D[0]));
VCC VCC
       (.P(\<const1> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_cdc_sync
   (cc_sync,
    s_out_d1_cdc_to,
    s_out_d2,
    s_out_d3,
    s_out_d4,
    s_out_d5,
    s_out_d6,
    s_out_d7,
    out,
    O2,
    O3,
    O4,
    O5,
    O6,
    rx_cc_extend_r2,
    init_clk_in);
  output cc_sync;
  output s_out_d1_cdc_to;
  output s_out_d2;
  output s_out_d3;
  output s_out_d4;
  output s_out_d5;
  output s_out_d6;
  output s_out_d7;
  output [1:0]out;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output [1:0]O6;
  input rx_cc_extend_r2;
  input init_clk_in;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire cc_sync;
  wire init_clk_in;
  wire [1:0]out;
  wire rx_cc_extend_r2;
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

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(s_level_out_d3),
        .O(cc_sync));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O2[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O2[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O3[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O3[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O4[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O4[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O5[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O5[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O6[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(\<const0> ),
        .O(O6[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d2));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d3));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d4));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d5));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d6));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(s_out_d7));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(out[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(out[0]));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(rx_cc_extend_r2),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_0
   (O1,
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
    O2,
    rx_fsm_reset_done_int,
    user_clk,
    I1,
    out,
    I2);
  output O1;
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
  output O2;
  input rx_fsm_reset_done_int;
  input user_clk;
  input I1;
  input [0:0]out;
  input I2;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire [1:0]O48;
  wire [1:0]O49;
  wire [1:0]O50;
  wire [1:0]O51;
  wire [1:0]O52;
  wire [1:0]O53;
  wire [0:0]out;
  wire rx_fsm_reset_done_int;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_49;
  wire s_out_d2_50;
  wire s_out_d3_51;
  wire s_out_d4_52;
  wire s_out_d5_53;
  wire s_out_d6_54;
  wire s_out_d7_55;
  wire user_clk;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_49));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_50));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O49[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O50[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O50[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O51[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O51[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O52[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O52[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O53[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O53[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_51));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_52));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_53));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_54));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_55));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O48[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O48[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O49[1]));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rx_fsm_reset_done_int),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(O1),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(O1),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'h00FB)) 
     \wait_bypass_count[0]_i_2__0 
       (.I0(I1),
        .I1(out),
        .I2(I2),
        .I3(O1),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_1
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
    O1,
    O2,
    I1,
    user_clk,
    I2,
    out,
    I3,
    I4,
    I5);
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
  output O1;
  output O2;
  input I1;
  input user_clk;
  input I2;
  input [0:0]out;
  input I3;
  input I4;
  input I5;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire O1;
  wire O2;
  wire [1:0]O42;
  wire [1:0]O43;
  wire [1:0]O44;
  wire [1:0]O45;
  wire [1:0]O46;
  wire [1:0]O47;
  wire [0:0]out;
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

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_42));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_43));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O43[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O44[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O44[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O45[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O45[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O46[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O46[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O47[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O47[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_44));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_45));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_46));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_47));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_48));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O42[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O42[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O43[1]));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(I1),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'hFF000000FF000400)) 
     time_out_wait_bypass_i_1__0
       (.I0(I2),
        .I1(out),
        .I2(I3),
        .I3(s_level_out_d4),
        .I4(I4),
        .I5(I5),
        .O(O2));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1__0 
       (.I0(s_level_out_d4),
        .O(O1));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_10
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
    clear,
    O6,
    run_phase_alignment_int,
    user_clk,
    I1,
    I2,
    I3,
    time_out_wait_bypass,
    I4);
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
  output clear;
  output O6;
  input run_phase_alignment_int;
  input user_clk;
  input I1;
  input I2;
  input I3;
  input time_out_wait_bypass;
  input I4;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire [1:0]O1;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire O6;
  wire clear;
  wire [1:0]out;
  wire run_phase_alignment_int;
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
  wire time_out_wait_bypass;
  wire user_clk;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O1[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O2[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O2[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O3[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O3[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O4[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O4[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O5[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O5[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(out[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(out[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O1[1]));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(run_phase_alignment_int),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'hFF000000FF000100)) 
     time_out_wait_bypass_i_1
       (.I0(I1),
        .I1(I2),
        .I2(I3),
        .I3(s_level_out_d4),
        .I4(time_out_wait_bypass),
        .I5(I4),
        .O(O6));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1 
       (.I0(s_level_out_d4),
        .O(clear));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_11
   (s_out_d1_cdc_to_35,
    s_out_d2_36,
    s_out_d3_37,
    s_out_d4_38,
    s_out_d5_39,
    s_out_d6_40,
    s_out_d7_41,
    O38,
    O39,
    O40,
    O41,
    O42,
    O43,
    O24,
    init_clk_in);
  output s_out_d1_cdc_to_35;
  output s_out_d2_36;
  output s_out_d3_37;
  output s_out_d4_38;
  output s_out_d5_39;
  output s_out_d6_40;
  output s_out_d7_41;
  output [1:0]O38;
  output [1:0]O39;
  output [1:0]O40;
  output [1:0]O41;
  output [1:0]O42;
  output [1:0]O43;
  input O24;
  input init_clk_in;

  wire \<const0> ;
  wire \<const1> ;
  wire O24;
  wire [1:0]O38;
  wire [1:0]O39;
  wire [1:0]O40;
  wire [1:0]O41;
  wire [1:0]O42;
  wire [1:0]O43;
  wire init_clk_in;
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

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_35));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_36));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O39[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O40[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O40[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O41[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O41[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O42[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O42[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O43[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O43[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_37));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_38));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_39));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_40));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_41));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O38[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O38[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O39[1]));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(O24),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_12
   (O24,
    s_out_d1_cdc_to_21,
    s_out_d2_22,
    s_out_d3_23,
    s_out_d4_24,
    s_out_d5_25,
    s_out_d6_26,
    s_out_d7_27,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    SR,
    O1,
    init_clk_in,
    mmcm_lock_reclocked,
    Q,
    I1);
  output O24;
  output s_out_d1_cdc_to_21;
  output s_out_d2_22;
  output s_out_d3_23;
  output s_out_d4_24;
  output s_out_d5_25;
  output s_out_d6_26;
  output s_out_d7_27;
  output [1:0]O25;
  output [1:0]O26;
  output [1:0]O27;
  output [1:0]O28;
  output [1:0]O29;
  output [1:0]O30;
  output [0:0]SR;
  output O1;
  input init_clk_in;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input I1;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire O1;
  wire O24;
  wire [1:0]O25;
  wire [1:0]O26;
  wire [1:0]O27;
  wire [1:0]O28;
  wire [1:0]O29;
  wire [1:0]O30;
  wire [1:0]Q;
  wire [0:0]SR;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
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

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_21));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_22));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O26[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O27[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O27[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O28[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O28[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O29[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O29[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O30[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O30[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_23));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_24));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_25));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_26));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_27));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O25[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O25[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O26[1]));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1 
       (.I0(s_level_out_d3),
        .O(SR));
LUT5 #(
    .INIT(32'hA8888888)) 
     mmcm_lock_reclocked_i_1
       (.I0(s_level_out_d3),
        .I1(mmcm_lock_reclocked),
        .I2(Q[0]),
        .I3(I1),
        .I4(Q[1]),
        .O(O1));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\<const1> ),
        .Q(O24),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(O24),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_13
   (s_out_d1_cdc_to_7,
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
    D,
    time_out_wait_bypass,
    init_clk_in,
    I1,
    I2,
    I3,
    I4,
    I5);
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
  output [1:0]D;
  input time_out_wait_bypass;
  input init_clk_in;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire [1:0]O12;
  wire [1:0]O13;
  wire [1:0]O14;
  wire [1:0]O15;
  wire [1:0]O16;
  wire [1:0]O17;
  wire init_clk_in;
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
  wire time_out_wait_bypass;

LUT6 #(
    .INIT(64'hFFC0F0C00FA000A0)) 
     \FSM_onehot_tx_state[1]_i_1 
       (.I0(s_level_out_d4),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .O(D[0]));
LUT4 #(
    .INIT(16'h0100)) 
     \FSM_onehot_tx_state[6]_i_1 
       (.I0(s_level_out_d4),
        .I1(I3),
        .I2(I5),
        .I3(I2),
        .O(D[1]));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_7));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_8));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O13[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O14[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O14[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O15[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O15[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O16[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O16[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O17[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O17[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_9));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_10));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_11));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_12));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_13));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O12[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O12[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O13[1]));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(time_out_wait_bypass),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_14
   (O1,
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
    O2,
    tx_resetdone_out,
    user_clk,
    I1,
    I2,
    I3);
  output O1;
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
  output O2;
  input tx_resetdone_out;
  input user_clk;
  input I1;
  input I2;
  input I3;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire I3;
  wire O1;
  wire [1:0]O10;
  wire [1:0]O11;
  wire O2;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [1:0]O8;
  wire [1:0]O9;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_0;
  wire s_out_d2_1;
  wire s_out_d3_2;
  wire s_out_d4_3;
  wire s_out_d5_4;
  wire s_out_d6_5;
  wire s_out_d7_6;
  wire tx_resetdone_out;
  wire user_clk;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_0));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_1));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O7[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O8[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O8[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O9[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O9[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O10[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O10[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O11[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O11[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_2));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_3));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_4));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_5));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_6));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O6[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O6[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O7[1]));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_resetdone_out),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(O1),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(O1),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'h00FE)) 
     \wait_bypass_count[0]_i_2 
       (.I0(I1),
        .I1(I2),
        .I2(I3),
        .I3(O1),
        .O(O2));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_15
   (tx_resetdone_sync,
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
    tx_resetdone_out,
    user_clk);
  output tx_resetdone_sync;
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
  input tx_resetdone_out;
  input user_clk;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]O1;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [1:0]out;
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
  wire tx_resetdone_out;
  wire tx_resetdone_sync;
  wire user_clk;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(s_level_out_d3),
        .O(tx_resetdone_sync));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O1[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O1[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O2[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O2[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O3[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O3[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O4[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O4[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O5[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(\<const0> ),
        .O(O5[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d2));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d3));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d4));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d5));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d6));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(s_out_d7));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(out[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(out[0]));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(tx_resetdone_out),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_16
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
    SS,
    O12,
    sys_reset_out,
    link_reset_comb_r,
    user_clk,
    reset_channel_i,
    reset,
    gt_rxresetdone_r3,
    gt_txresetdone_r3,
    wait_for_lane_up_r);
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
  output [0:0]SS;
  output O12;
  output sys_reset_out;
  input link_reset_comb_r;
  input user_clk;
  input reset_channel_i;
  input reset;
  input gt_rxresetdone_r3;
  input gt_txresetdone_r3;
  input wait_for_lane_up_r;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]O10;
  wire [1:0]O11;
  wire O12;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [1:0]O8;
  wire [1:0]O9;
  wire [0:0]SS;
  wire gt_rxresetdone_r3;
  wire gt_txresetdone_r3;
  wire link_reset_comb_r;
  wire reset;
  wire reset_channel_i;
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
  wire sys_reset_out;
  wire user_clk;
  wire wait_for_lane_up_r;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_0));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_1));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O7[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O8[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O8[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O9[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O9[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O10[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O10[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O11[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O11[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_2));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_3));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_4));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_5));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_6));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O6[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O6[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O7[1]));
LUT6 #(
    .INIT(64'hEFFFFFFFEFFFEFFF)) 
     reset_lanes_flop_i_i_2
       (.I0(reset),
        .I1(s_level_out_d3),
        .I2(gt_rxresetdone_r3),
        .I3(gt_txresetdone_r3),
        .I4(wait_for_lane_up_r),
        .I5(reset_channel_i),
        .O(O12));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(link_reset_comb_r),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'hFFF7)) 
     sys_reset_out_INST_0
       (.I0(gt_txresetdone_r3),
        .I1(gt_rxresetdone_r3),
        .I2(s_level_out_d3),
        .I3(reset),
        .O(sys_reset_out));
LUT5 #(
    .INIT(32'hFEFFFFFF)) 
     verify_r_i_1
       (.I0(reset_channel_i),
        .I1(reset),
        .I2(s_level_out_d3),
        .I3(gt_rxresetdone_r3),
        .I4(gt_txresetdone_r3),
        .O(SS));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_2
   (s_out_d1_cdc_to_91,
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
    I1,
    init_clk_in);
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
  input I1;
  input init_clk_in;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire [1:0]O84;
  wire [1:0]O85;
  wire [1:0]O86;
  wire [1:0]O87;
  wire [1:0]O88;
  wire [1:0]O89;
  wire init_clk_in;
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

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_91));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_92));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O85[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O86[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O86[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O87[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O87[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O88[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O88[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O89[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O89[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_93));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_94));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_95));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_96));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_97));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O84[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O84[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O85[1]));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(I1),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_3
   (rxresetdone_s3,
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
    O1,
    rxfsm_rxresetdone_r,
    init_clk_in,
    gt0_pllrefclklost_i,
    I1,
    I2,
    I3,
    Q,
    time_out_2ms,
    I4);
  output rxresetdone_s3;
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
  input rxfsm_rxresetdone_r;
  input init_clk_in;
  input gt0_pllrefclklost_i;
  input I1;
  input I2;
  input I3;
  input [0:0]Q;
  input time_out_2ms;
  input I4;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire O1;
  wire [1:0]O60;
  wire [1:0]O61;
  wire [1:0]O62;
  wire [1:0]O63;
  wire [1:0]O64;
  wire [1:0]O65;
  wire [0:0]Q;
  wire gt0_pllrefclklost_i;
  wire init_clk_in;
  wire \n_0_FSM_onehot_rx_state[8]_i_14 ;
  wire rxfsm_rxresetdone_r;
  wire rxresetdone_s3;
  wire s_level_out_d1_cdc_to;
  wire s_level_out_d2;
  wire s_level_out_d3;
  wire s_level_out_d5;
  wire s_level_out_d6;
  wire s_out_d1_cdc_to_63;
  wire s_out_d2_64;
  wire s_out_d3_65;
  wire s_out_d4_66;
  wire s_out_d5_67;
  wire s_out_d6_68;
  wire s_out_d7_69;
  wire time_out_2ms;

LUT3 #(
    .INIT(8'h0D)) 
     \FSM_onehot_rx_state[8]_i_14 
       (.I0(time_out_2ms),
        .I1(I4),
        .I2(rxresetdone_s3),
        .O(\n_0_FSM_onehot_rx_state[8]_i_14 ));
LUT6 #(
    .INIT(64'hFFFFFFFF00050003)) 
     \FSM_onehot_rx_state[8]_i_6 
       (.I0(\n_0_FSM_onehot_rx_state[8]_i_14 ),
        .I1(gt0_pllrefclklost_i),
        .I2(I1),
        .I3(I2),
        .I4(I3),
        .I5(Q),
        .O(O1));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_63));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_64));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O61[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O62[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O62[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O63[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O63[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O64[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O64[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O65[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O65[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_65));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_66));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_67));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_68));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_69));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O60[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O60[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O61[1]));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(rxfsm_rxresetdone_r),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(rxresetdone_s3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(rxresetdone_s3),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_4
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
    E,
    D,
    O1,
    O2,
    O3,
    rxfsm_data_valid_r,
    init_clk_in,
    I1,
    I2,
    I3,
    I4,
    Q,
    I5,
    I6,
    I7,
    rx_cdrlocked,
    rx_state_reg,
    time_out_100us,
    I8,
    time_out_1us,
    I9,
    I10,
    I11,
    I12,
    I13,
    rx_fsm_reset_done_int,
    I14,
    adapt_count_reset,
    rxresetdone_s3);
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
  output [0:0]E;
  output [0:0]D;
  output O1;
  output O2;
  output O3;
  input rxfsm_data_valid_r;
  input init_clk_in;
  input I1;
  input I2;
  input I3;
  input I4;
  input [6:0]Q;
  input I5;
  input I6;
  input I7;
  input rx_cdrlocked;
  input [0:0]rx_state_reg;
  input time_out_100us;
  input I8;
  input time_out_1us;
  input I9;
  input I10;
  input I11;
  input I12;
  input I13;
  input rx_fsm_reset_done_int;
  input I14;
  input adapt_count_reset;
  input rxresetdone_s3;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]D;
  wire [0:0]E;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O2;
  wire O3;
  wire [1:0]O72;
  wire [1:0]O73;
  wire [1:0]O74;
  wire [1:0]O75;
  wire [1:0]O76;
  wire [1:0]O77;
  wire [6:0]Q;
  wire adapt_count_reset;
  wire init_clk_in;
  wire \n_0_FSM_onehot_rx_state[8]_i_5 ;
  wire \n_0_FSM_onehot_rx_state[8]_i_8 ;
  wire n_0_reset_time_out_i_4;
  wire n_0_reset_time_out_i_5;
  wire n_0_rx_fsm_reset_done_int_i_3;
  wire n_0_rx_fsm_reset_done_int_i_4;
  wire rx_cdrlocked;
  wire rx_fsm_reset_done_int;
  wire [0:0]rx_state_reg;
  wire rxfsm_data_valid_r;
  wire rxresetdone_s3;
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
  wire time_out_100us;
  wire time_out_1us;

LUT3 #(
    .INIT(8'h04)) 
     \FSM_onehot_rx_state[8]_i_13 
       (.I0(I8),
        .I1(time_out_100us),
        .I2(s_level_out_d3),
        .O(O1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFD0)) 
     \FSM_onehot_rx_state[8]_i_2 
       (.I0(\n_0_FSM_onehot_rx_state[8]_i_5 ),
        .I1(I1),
        .I2(I2),
        .I3(\n_0_FSM_onehot_rx_state[8]_i_8 ),
        .I4(I3),
        .I5(I4),
        .O(E));
LUT6 #(
    .INIT(64'h0000000002000000)) 
     \FSM_onehot_rx_state[8]_i_3 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[6]),
        .I3(I9),
        .I4(I10),
        .I5(O1),
        .O(D));
LUT6 #(
    .INIT(64'h57575757F7F757F7)) 
     \FSM_onehot_rx_state[8]_i_5 
       (.I0(I7),
        .I1(rx_cdrlocked),
        .I2(rx_state_reg),
        .I3(time_out_100us),
        .I4(I8),
        .I5(s_level_out_d3),
        .O(\n_0_FSM_onehot_rx_state[8]_i_5 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAA8AAAA)) 
     \FSM_onehot_rx_state[8]_i_8 
       (.I0(Q[6]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(I5),
        .I4(s_level_out_d3),
        .I5(I6),
        .O(\n_0_FSM_onehot_rx_state[8]_i_8 ));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_77));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_78));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O73[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O74[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O74[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O75[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O75[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O76[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O76[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O77[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O77[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_79));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_80));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_81));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_82));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_83));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O72[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O72[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O73[1]));
LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEE2)) 
     reset_time_out_i_1__0
       (.I0(I8),
        .I1(I11),
        .I2(I12),
        .I3(n_0_reset_time_out_i_4),
        .I4(n_0_reset_time_out_i_5),
        .I5(I13),
        .O(O2));
LUT5 #(
    .INIT(32'h00010101)) 
     reset_time_out_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rx_state_reg),
        .I3(s_level_out_d3),
        .I4(Q[6]),
        .O(n_0_reset_time_out_i_4));
LUT6 #(
    .INIT(64'hEEE222E200000000)) 
     reset_time_out_i_5
       (.I0(rx_cdrlocked),
        .I1(rx_state_reg),
        .I2(s_level_out_d3),
        .I3(adapt_count_reset),
        .I4(rxresetdone_s3),
        .I5(I2),
        .O(n_0_reset_time_out_i_5));
LUT5 #(
    .INIT(32'h0000BA8A)) 
     rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int),
        .I1(I14),
        .I2(n_0_rx_fsm_reset_done_int_i_3),
        .I3(n_0_rx_fsm_reset_done_int_i_4),
        .I4(I13),
        .O(O3));
LUT6 #(
    .INIT(64'h300C300C383C380C)) 
     rx_fsm_reset_done_int_i_3
       (.I0(time_out_1us),
        .I1(Q[6]),
        .I2(rx_state_reg),
        .I3(s_level_out_d3),
        .I4(time_out_100us),
        .I5(I8),
        .O(n_0_rx_fsm_reset_done_int_i_3));
LUT4 #(
    .INIT(16'h0800)) 
     rx_fsm_reset_done_int_i_4
       (.I0(s_level_out_d3),
        .I1(Q[6]),
        .I2(I8),
        .I3(time_out_1us),
        .O(n_0_rx_fsm_reset_done_int_i_4));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(rxfsm_data_valid_r),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_5
   (s_out_d1_cdc_to_56,
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
    D,
    I1,
    init_clk_in,
    I2,
    Q,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8);
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
  output [1:0]D;
  input I1;
  input init_clk_in;
  input I2;
  input [5:0]Q;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire [1:0]O54;
  wire [1:0]O55;
  wire [1:0]O56;
  wire [1:0]O57;
  wire [1:0]O58;
  wire [1:0]O59;
  wire [5:0]Q;
  wire init_clk_in;
  wire \n_0_FSM_onehot_rx_state[1]_i_3 ;
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

LUT6 #(
    .INIT(64'h000000000000AAFE)) 
     \FSM_onehot_rx_state[1]_i_1 
       (.I0(I2),
        .I1(\n_0_FSM_onehot_rx_state[1]_i_3 ),
        .I2(Q[1]),
        .I3(I3),
        .I4(Q[5]),
        .I5(Q[0]),
        .O(D[0]));
LUT6 #(
    .INIT(64'h0300343403000404)) 
     \FSM_onehot_rx_state[1]_i_3 
       (.I0(I7),
        .I1(Q[2]),
        .I2(Q[4]),
        .I3(s_level_out_d4),
        .I4(Q[3]),
        .I5(I8),
        .O(\n_0_FSM_onehot_rx_state[1]_i_3 ));
LUT6 #(
    .INIT(64'h0001101000000000)) 
     \FSM_onehot_rx_state[7]_i_1 
       (.I0(I4),
        .I1(I5),
        .I2(Q[5]),
        .I3(s_level_out_d4),
        .I4(Q[3]),
        .I5(I6),
        .O(D[1]));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_56));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_57));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O55[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O56[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O56[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O57[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O57[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O58[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O58[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O59[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O59[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_58));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_59));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_60));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_61));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_62));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O54[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O54[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O55[1]));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(I1),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_6
   (s_out_d1_cdc_to_70,
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
    SR,
    O1,
    I1,
    init_clk_in,
    mmcm_lock_reclocked,
    Q,
    I2);
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
  output [0:0]SR;
  output O1;
  input I1;
  input init_clk_in;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input I2;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire O1;
  wire [1:0]O66;
  wire [1:0]O67;
  wire [1:0]O68;
  wire [1:0]O69;
  wire [1:0]O70;
  wire [1:0]O71;
  wire [1:0]Q;
  wire [0:0]SR;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
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

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_70));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_71));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O67[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O68[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O68[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O69[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O69[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O70[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O70[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O71[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O71[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_72));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_73));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_74));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_75));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_76));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O66[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O66[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O67[1]));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1__0 
       (.I0(s_level_out_d3),
        .O(SR));
LUT5 #(
    .INIT(32'hA8888888)) 
     mmcm_lock_reclocked_i_1__0
       (.I0(s_level_out_d3),
        .I1(mmcm_lock_reclocked),
        .I2(Q[0]),
        .I3(I2),
        .I4(Q[1]),
        .O(O1));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(I1),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_7
   (s_out_d1_cdc_to_84,
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
    O1,
    O2,
    O3,
    I2,
    init_clk_in,
    adapt_count_reset,
    I1,
    mmcm_lock_reclocked,
    rx_state_reg,
    I3,
    time_out_2ms,
    recclk_mon_count_reset,
    I4,
    I5);
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
  output O1;
  output O2;
  output O3;
  input I2;
  input init_clk_in;
  input adapt_count_reset;
  input I1;
  input mmcm_lock_reclocked;
  input [0:0]rx_state_reg;
  input I3;
  input time_out_2ms;
  input recclk_mon_count_reset;
  input I4;
  input I5;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire O1;
  wire O2;
  wire O3;
  wire [1:0]O78;
  wire [1:0]O79;
  wire [1:0]O80;
  wire [1:0]O81;
  wire [1:0]O82;
  wire [1:0]O83;
  wire adapt_count_reset;
  wire init_clk_in;
  wire mmcm_lock_reclocked;
  wire recclk_mon_count_reset;
  wire [0:0]rx_state_reg;
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
  wire time_out_2ms;

LUT5 #(
    .INIT(32'h000000FE)) 
     \FSM_onehot_rx_state[8]_i_9 
       (.I0(time_out_2ms),
        .I1(s_level_out_d3),
        .I2(rx_state_reg),
        .I3(I1),
        .I4(adapt_count_reset),
        .O(O2));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'hFFFFFFFFE8AAEAAA)) 
     adapt_count_reset_i_1
       (.I0(recclk_mon_count_reset),
        .I1(adapt_count_reset),
        .I2(I1),
        .I3(I4),
        .I4(s_level_out_d3),
        .I5(I5),
        .O(O3));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_84));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_85));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O79[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O80[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O80[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O81[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O81[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O82[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O82[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O83[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O83[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_86));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_87));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_88));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_89));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_90));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O78[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O78[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O79[1]));
LUT6 #(
    .INIT(64'h050504040F050404)) 
     reset_time_out_i_3__0
       (.I0(adapt_count_reset),
        .I1(s_level_out_d3),
        .I2(I1),
        .I3(mmcm_lock_reclocked),
        .I4(rx_state_reg),
        .I5(I3),
        .O(O1));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(I2),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_8
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
    O1,
    E,
    txfsm_txresetdone_r,
    init_clk_in,
    cplllock_sync,
    I1,
    mmcm_lock_reclocked,
    I2,
    I3,
    I4,
    init_wait_done,
    time_out_2ms,
    reset_time_out,
    time_out_500us);
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
  output O1;
  output [0:0]E;
  input txfsm_txresetdone_r;
  input init_clk_in;
  input cplllock_sync;
  input I1;
  input mmcm_lock_reclocked;
  input I2;
  input I3;
  input I4;
  input init_wait_done;
  input time_out_2ms;
  input reset_time_out;
  input time_out_500us;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]E;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire O1;
  wire [1:0]O18;
  wire [1:0]O19;
  wire [1:0]O20;
  wire [1:0]O21;
  wire [1:0]O22;
  wire [1:0]O23;
  wire cplllock_sync;
  wire init_clk_in;
  wire init_wait_done;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_onehot_tx_state[7]_i_5 ;
  wire \n_0_FSM_onehot_tx_state[7]_i_9 ;
  wire reset_time_out;
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
  wire time_out_2ms;
  wire time_out_500us;
  wire txfsm_txresetdone_r;

LUT6 #(
    .INIT(64'hAFC0AFC0AFC0A0C0)) 
     \FSM_onehot_tx_state[7]_i_5 
       (.I0(init_wait_done),
        .I1(\n_0_FSM_onehot_tx_state[7]_i_9 ),
        .I2(I1),
        .I3(I3),
        .I4(time_out_2ms),
        .I5(cplllock_sync),
        .O(\n_0_FSM_onehot_tx_state[7]_i_5 ));
LUT3 #(
    .INIT(8'hBA)) 
     \FSM_onehot_tx_state[7]_i_9 
       (.I0(s_level_out_d4),
        .I1(reset_time_out),
        .I2(time_out_500us),
        .O(\n_0_FSM_onehot_tx_state[7]_i_9 ));
MUXF7 \FSM_onehot_tx_state_reg[7]_i_2 
       (.I0(I4),
        .I1(\n_0_FSM_onehot_tx_state[7]_i_5 ),
        .O(E),
        .S(I2));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_14));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d2_15));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O19[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O20[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O20[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O21[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O21[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O22[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O22[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O23[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O23[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d3_16));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d4_17));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d5_18));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d6_19));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d7_20));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(O18[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O18[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O19[1]));
LUT6 #(
    .INIT(64'hFCFC0F00AFAF0F0F)) 
     reset_time_out_i_3
       (.I0(s_level_out_d4),
        .I1(cplllock_sync),
        .I2(I1),
        .I3(mmcm_lock_reclocked),
        .I4(I2),
        .I5(I3),
        .O(O1));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(txfsm_txresetdone_r),
        .Q(s_level_out_d1_cdc_to),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d1_cdc_to),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "aurora_8b10b_0_cdc_sync" *) 
module aurora_8b10b_0aurora_8b10b_0_cdc_sync_9
   (O31,
    cplllock_sync,
    s_out_d1_cdc_to_28,
    s_out_d2_29,
    s_out_d3_30,
    s_out_d4_31,
    s_out_d5_32,
    s_out_d6_33,
    s_out_d7_34,
    O32,
    O33,
    O34,
    O35,
    O36,
    O37,
    O1,
    tx_lock,
    init_clk_in,
    Q,
    I1,
    I2,
    reset_time_out,
    I3,
    I4);
  output O31;
  output cplllock_sync;
  output s_out_d1_cdc_to_28;
  output s_out_d2_29;
  output s_out_d3_30;
  output s_out_d4_31;
  output s_out_d5_32;
  output s_out_d6_33;
  output s_out_d7_34;
  output [1:0]O32;
  output [1:0]O33;
  output [1:0]O34;
  output [1:0]O35;
  output [1:0]O36;
  output [1:0]O37;
  output O1;
  input tx_lock;
  input init_clk_in;
  input [2:0]Q;
  input I1;
  input I2;
  input reset_time_out;
  input I3;
  input I4;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire O1;
  wire O31;
  wire [1:0]O32;
  wire [1:0]O33;
  wire [1:0]O34;
  wire [1:0]O35;
  wire [1:0]O36;
  wire [1:0]O37;
  wire [2:0]Q;
  wire cplllock_sync;
  wire init_clk_in;
  wire n_0_reset_time_out_i_2;
  wire reset_time_out;
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
  wire tx_lock;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h2)) 
     i_0
       (.I0(s_level_out_d3),
        .O(cplllock_sync));
LUT1 #(
    .INIT(2'h2)) 
     i_1
       (.I0(\<const0> ),
        .O(s_out_d1_cdc_to_28));
LUT1 #(
    .INIT(2'h2)) 
     i_10
       (.I0(\<const0> ),
        .O(O33[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_11
       (.I0(\<const0> ),
        .O(O33[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_12
       (.I0(\<const0> ),
        .O(O34[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_13
       (.I0(\<const0> ),
        .O(O34[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_14
       (.I0(\<const0> ),
        .O(O35[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_15
       (.I0(\<const0> ),
        .O(O35[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_16
       (.I0(\<const0> ),
        .O(O36[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_17
       (.I0(\<const0> ),
        .O(O36[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_18
       (.I0(\<const0> ),
        .O(O37[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_19
       (.I0(\<const0> ),
        .O(O37[0]));
LUT1 #(
    .INIT(2'h2)) 
     i_2
       (.I0(\<const0> ),
        .O(s_out_d2_29));
LUT1 #(
    .INIT(2'h2)) 
     i_3
       (.I0(\<const0> ),
        .O(s_out_d3_30));
LUT1 #(
    .INIT(2'h2)) 
     i_4
       (.I0(\<const0> ),
        .O(s_out_d4_31));
LUT1 #(
    .INIT(2'h2)) 
     i_5
       (.I0(\<const0> ),
        .O(s_out_d5_32));
LUT1 #(
    .INIT(2'h2)) 
     i_6
       (.I0(\<const0> ),
        .O(s_out_d6_33));
LUT1 #(
    .INIT(2'h2)) 
     i_7
       (.I0(\<const0> ),
        .O(s_out_d7_34));
LUT1 #(
    .INIT(2'h2)) 
     i_8
       (.I0(\<const0> ),
        .O(O32[1]));
LUT1 #(
    .INIT(2'h2)) 
     i_9
       (.I0(\<const0> ),
        .O(O32[0]));
LUT4 #(
    .INIT(16'h00E2)) 
     reset_time_out_i_1
       (.I0(reset_time_out),
        .I1(n_0_reset_time_out_i_2),
        .I2(I3),
        .I3(I4),
        .O(O1));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFF0101)) 
     reset_time_out_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(s_level_out_d3),
        .I4(I1),
        .I5(I2),
        .O(n_0_reset_time_out_i_2));
(* ASYNC_REG *) 
   FDRE s_level_out_d1_cdc_to_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(tx_lock),
        .Q(O31),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d2_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(O31),
        .Q(s_level_out_d2),
        .R(\<const0> ));
(* ASYNC_REG *) 
   FDRE s_level_out_d3_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d2),
        .Q(s_level_out_d3),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d4_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d3),
        .Q(s_level_out_d4),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d5_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d4),
        .Q(s_level_out_d5),
        .R(\<const0> ));
(* ASYNC_REG *) 
   (* keep = "yes" *) 
   FDRE s_level_out_d6_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(s_level_out_d5),
        .Q(s_level_out_d6),
        .R(\<const0> ));
endmodule

(* core_generation_info = "aurora_8b10b_0,aurora_8b10b_v10_1,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ1,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=1,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=45000,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=90000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}" *) (* SIM_GTRESET_SPEEDUP = "FALSE" *) 
module aurora_8b10b_0aurora_8b10b_0_core
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
    hard_err,
    soft_err,
    frame_err,
    channel_up,
    lane_up,
    warn_cc,
    do_cc,
    user_clk,
    sync_clk,
    reset,
    power_down,
    loopback,
    gt_reset,
    init_clk_in,
    pll_not_locked,
    tx_resetdone_out,
    rx_resetdone_out,
    link_reset_out,
    drpclk_in,
    drpaddr_in,
    drpdi_in,
    drpdo_out,
    drpen_in,
    drprdy_out,
    drpwe_in,
    tx_out_clk,
    gt0_qplllock_in,
    gt0_qpllrefclklost_in,
    gt0_qpllreset_out,
    gt_qpllclk_quad2_in,
    gt_qpllrefclk_quad2_in,
    sys_reset_out,
    tx_lock);
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
  output hard_err;
  output soft_err;
  output frame_err;
  output channel_up;
  output lane_up;
  input warn_cc;
  input do_cc;
  input user_clk;
  input sync_clk;
  input reset;
  input power_down;
  input [2:0]loopback;
  input gt_reset;
  input init_clk_in;
  input pll_not_locked;
  output tx_resetdone_out;
  output rx_resetdone_out;
  output link_reset_out;
  input drpclk_in;
  input [8:0]drpaddr_in;
  input [15:0]drpdi_in;
  output [15:0]drpdo_out;
  input drpen_in;
  output drprdy_out;
  input drpwe_in;
  output tx_out_clk;
  input gt0_qplllock_in;
  input gt0_qpllrefclklost_in;
  output gt0_qpllreset_out;
  input gt_qpllclk_quad2_in;
  input gt_qpllrefclk_quad2_in;
  output sys_reset_out;
  output tx_lock;

  wire \<const0> ;
  wire \<const1> ;
  wire \aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0 ;
  wire [1:0]\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d6 ;
  wire \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d1_cdc_to ;
  wire \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d2 ;
  wire \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d3 ;
  wire \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d4 ;
  wire \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d5 ;
  wire \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d6 ;
  wire \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d7 ;
  wire [0:0]\aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r ;
  wire \channel_init_sm_i/wait_for_lane_up_r ;
  wire \channel_init_sm_i/wait_for_lane_up_r0 ;
  wire channel_up;
  wire do_cc;
  wire [8:0]drpaddr_in;
  wire drpclk_in;
  wire [15:0]drpdi_in;
  wire [15:0]drpdo_out;
  wire drpen_in;
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire frame_err;
  wire gen_a_i;
  wire gen_cc_i;
  wire [0:3]gen_k_i;
  wire [0:1]gen_pad_i;
  wire [0:3]gen_r_i;
  wire gen_scp_i;
  wire [1:3]gen_v_i;
  wire got_v_i;
  wire gt0_qplllock_in;
  wire gt0_qpllrefclklost_in;
  wire gt_qpllclk_quad2_in;
  wire gt_qpllrefclk_quad2_in;
  wire gt_refclk1;
  wire gt_reset;
  wire [1:0]\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d2 ;
  wire \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d3 ;
  wire \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d4 ;
  wire \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d5 ;
  wire \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d6 ;
  wire \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d2 ;
  wire \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d3 ;
  wire \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d4 ;
  wire \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d5 ;
  wire \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d6 ;
  wire \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d2 ;
  wire \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d3 ;
  wire \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d4 ;
  wire \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d5 ;
  wire \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d6 ;
  wire \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d2 ;
  wire \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d3 ;
  wire \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d4 ;
  wire \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d5 ;
  wire \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d6 ;
  wire \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d2 ;
  wire \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d3 ;
  wire \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d4 ;
  wire \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d5 ;
  wire \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d6 ;
  wire \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d2 ;
  wire \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d3 ;
  wire \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d4 ;
  wire \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d5 ;
  wire \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d6 ;
  wire \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d2 ;
  wire \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d3 ;
  wire \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d4 ;
  wire \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d5 ;
  wire \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d6 ;
  wire \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d2 ;
  wire \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d3 ;
  wire \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d4 ;
  wire \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d5 ;
  wire \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d6 ;
  wire \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d2 ;
  wire \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d3 ;
  wire \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d4 ;
  wire \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d5 ;
  wire \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d6 ;
  wire \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d2 ;
  wire \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d3 ;
  wire \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d4 ;
  wire \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d5 ;
  wire \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d6 ;
  wire \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d2 ;
  wire \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d3 ;
  wire \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d4 ;
  wire \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d5 ;
  wire \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d6 ;
  wire \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d2 ;
  wire \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d3 ;
  wire \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d4 ;
  wire \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d5 ;
  wire \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d6 ;
  wire \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d2 ;
  wire \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d3 ;
  wire \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d4 ;
  wire \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d5 ;
  wire \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d6 ;
  wire \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d2 ;
  wire \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d3 ;
  wire \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d4 ;
  wire \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d5 ;
  wire \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d6 ;
  wire \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d7 ;
  wire [1:0]\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d6 ;
  wire \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d1_cdc_to ;
  wire \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d2 ;
  wire \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d3 ;
  wire \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d4 ;
  wire \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d5 ;
  wire \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d6 ;
  wire \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d7 ;
  wire hard_err;
  wire hard_err_i;
  wire init_clk_in;
  wire lane_up;
  wire [1:0]\link_reset_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\link_reset_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\link_reset_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\link_reset_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\link_reset_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\link_reset_cdc_sync/s_level_out_bus_d6 ;
  wire \link_reset_cdc_sync/s_out_d1_cdc_to ;
  wire \link_reset_cdc_sync/s_out_d2 ;
  wire \link_reset_cdc_sync/s_out_d3 ;
  wire \link_reset_cdc_sync/s_out_d4 ;
  wire \link_reset_cdc_sync/s_out_d5 ;
  wire \link_reset_cdc_sync/s_out_d6 ;
  wire \link_reset_cdc_sync/s_out_d7 ;
  wire link_reset_out;
  wire [2:0]loopback;
  wire [0:31]m_axi_rx_tdata;
  wire [1:3]\^m_axi_rx_tkeep ;
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
  wire n_111_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_112_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_113_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_1_axi_to_ll_pdu_i;
  wire n_20_aurora_8b10b_0_global_logic_i;
  wire n_21_aurora_8b10b_0_global_logic_i;
  wire n_25_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_26_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_30_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_31_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_32_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_34_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_351_gt_wrapper_i;
  wire n_352_gt_wrapper_i;
  wire n_354_gt_wrapper_i;
  wire n_355_gt_wrapper_i;
  wire n_356_gt_wrapper_i;
  wire n_357_gt_wrapper_i;
  wire n_358_gt_wrapper_i;
  wire n_359_gt_wrapper_i;
  wire n_360_gt_wrapper_i;
  wire n_361_gt_wrapper_i;
  wire n_362_gt_wrapper_i;
  wire n_363_gt_wrapper_i;
  wire n_364_gt_wrapper_i;
  wire n_365_gt_wrapper_i;
  wire n_366_gt_wrapper_i;
  wire n_367_gt_wrapper_i;
  wire n_368_gt_wrapper_i;
  wire n_369_gt_wrapper_i;
  wire n_36_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_370_gt_wrapper_i;
  wire n_371_gt_wrapper_i;
  wire n_372_gt_wrapper_i;
  wire n_373_gt_wrapper_i;
  wire n_374_gt_wrapper_i;
  wire n_375_gt_wrapper_i;
  wire n_376_gt_wrapper_i;
  wire n_37_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_38_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_39_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_39_core_reset_logic_i;
  wire n_3_aurora_8b10b_0_tx_ll_i;
  wire n_40_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_41_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_42_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_43_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_44_aurora_8b10b_0_aurora_lane_4byte_0_i;
  wire n_49_aurora_8b10b_0_aurora_lane_4byte_0_i;
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
  wire pll_not_locked;
  wire power_down;
  wire reset;
  wire reset_channel_i;
  wire reset_lanes_i;
  wire [3:0]rx_char_is_comma_i;
  wire [3:0]rx_char_is_k_i;
  wire [31:0]rx_data_i;
  wire [1:0]rx_disp_err_i;
  wire [0:1]rx_ecp_striped_i;
  wire \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S1 ;
  wire \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S11_in ;
  wire [0:1]\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_c ;
  wire \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_r ;
  wire rx_ll_rst;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rx_resetdone_out;
  wire [0:1]rx_scp_striped_i;
  wire rxfsm_data_valid_r;
  wire rxn;
  wire rxp;
  wire [0:31]s_axi_tx_tdata;
  wire [0:3]s_axi_tx_tkeep;
  wire s_axi_tx_tlast;
  wire s_axi_tx_tready;
  wire s_axi_tx_tvalid;
  wire soft_err;
  wire [0:1]soft_err_i;
  wire start_rx_i;
  wire sync_clk;
  wire sys_reset_out;
  wire [3:0]tx_char_is_k_i;
  wire [31:0]tx_data_i;
  wire tx_dst_rdy;
  wire \tx_ll_control_i/reset_i ;
  wire tx_lock;
  wire tx_out_clk;
  wire [0:31]tx_pe_data_i;
  wire [0:1]tx_pe_data_v_i;
  wire [1:0]\tx_resetdone_cdc_sync/s_level_out_bus_d1_cdc_to ;
  wire [1:0]\tx_resetdone_cdc_sync/s_level_out_bus_d2 ;
  wire [1:0]\tx_resetdone_cdc_sync/s_level_out_bus_d3 ;
  wire [1:0]\tx_resetdone_cdc_sync/s_level_out_bus_d4 ;
  wire [1:0]\tx_resetdone_cdc_sync/s_level_out_bus_d5 ;
  wire [1:0]\tx_resetdone_cdc_sync/s_level_out_bus_d6 ;
  wire \tx_resetdone_cdc_sync/s_out_d1_cdc_to ;
  wire \tx_resetdone_cdc_sync/s_out_d2 ;
  wire \tx_resetdone_cdc_sync/s_out_d3 ;
  wire \tx_resetdone_cdc_sync/s_out_d4 ;
  wire \tx_resetdone_cdc_sync/s_out_d5 ;
  wire \tx_resetdone_cdc_sync/s_out_d6 ;
  wire \tx_resetdone_cdc_sync/s_out_d7 ;
  wire tx_resetdone_out;
  wire txn;
  wire txp;
  wire user_clk;
  wire warn_cc;

  assign gt0_qpllreset_out = \<const0> ;
  assign m_axi_rx_tkeep[0] = \<const1> ;
  assign m_axi_rx_tkeep[1:3] = \^m_axi_rx_tkeep [1:3];
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
aurora_8b10b_0aurora_8b10b_0_AURORA_LANE_4BYTE aurora_8b10b_0_aurora_lane_4byte_0_i
       (.D({n_30_aurora_8b10b_0_aurora_lane_4byte_0_i,n_31_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .I1(n_3_aurora_8b10b_0_tx_ll_i),
        .I10({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .I11({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .I12({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .I13({n_362_gt_wrapper_i,n_363_gt_wrapper_i,n_364_gt_wrapper_i,n_365_gt_wrapper_i,n_366_gt_wrapper_i,n_367_gt_wrapper_i,n_368_gt_wrapper_i,n_369_gt_wrapper_i}),
        .I14({n_354_gt_wrapper_i,n_355_gt_wrapper_i,n_356_gt_wrapper_i,n_357_gt_wrapper_i,n_358_gt_wrapper_i,n_359_gt_wrapper_i,n_360_gt_wrapper_i,n_361_gt_wrapper_i}),
        .I15(n_370_gt_wrapper_i),
        .I16(n_371_gt_wrapper_i),
        .I17(n_372_gt_wrapper_i),
        .I18(n_373_gt_wrapper_i),
        .I19({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15],tx_pe_data_i[16],tx_pe_data_i[17],tx_pe_data_i[18],tx_pe_data_i[19],tx_pe_data_i[20],tx_pe_data_i[21],tx_pe_data_i[22],tx_pe_data_i[23],tx_pe_data_i[24],tx_pe_data_i[25],tx_pe_data_i[26],tx_pe_data_i[27],tx_pe_data_i[28],tx_pe_data_i[29],tx_pe_data_i[30],tx_pe_data_i[31]}),
        .I2(n_375_gt_wrapper_i),
        .I3(n_376_gt_wrapper_i),
        .I4(n_351_gt_wrapper_i),
        .I5(n_352_gt_wrapper_i),
        .I6(n_374_gt_wrapper_i),
        .I7(rx_char_is_comma_i),
        .I8({gen_pad_i[0],gen_pad_i[1]}),
        .I9({tx_pe_data_v_i[0],tx_pe_data_v_i[1]}),
        .O1(lane_up),
        .O10(n_34_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .O11({n_36_aurora_8b10b_0_aurora_lane_4byte_0_i,n_37_aurora_8b10b_0_aurora_lane_4byte_0_i,n_38_aurora_8b10b_0_aurora_lane_4byte_0_i,n_39_aurora_8b10b_0_aurora_lane_4byte_0_i,n_40_aurora_8b10b_0_aurora_lane_4byte_0_i,n_41_aurora_8b10b_0_aurora_lane_4byte_0_i,n_42_aurora_8b10b_0_aurora_lane_4byte_0_i,n_43_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O12(n_44_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .O13({rx_ecp_striped_i[0],rx_ecp_striped_i[1]}),
        .O14({rx_scp_striped_i[0],rx_scp_striped_i[1]}),
        .O15(n_49_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .O16({n_82_aurora_8b10b_0_aurora_lane_4byte_0_i,n_83_aurora_8b10b_0_aurora_lane_4byte_0_i,n_84_aurora_8b10b_0_aurora_lane_4byte_0_i,n_85_aurora_8b10b_0_aurora_lane_4byte_0_i,n_86_aurora_8b10b_0_aurora_lane_4byte_0_i,n_87_aurora_8b10b_0_aurora_lane_4byte_0_i,n_88_aurora_8b10b_0_aurora_lane_4byte_0_i,n_89_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O17({n_90_aurora_8b10b_0_aurora_lane_4byte_0_i,n_91_aurora_8b10b_0_aurora_lane_4byte_0_i,n_92_aurora_8b10b_0_aurora_lane_4byte_0_i,n_93_aurora_8b10b_0_aurora_lane_4byte_0_i,n_94_aurora_8b10b_0_aurora_lane_4byte_0_i,n_95_aurora_8b10b_0_aurora_lane_4byte_0_i,n_96_aurora_8b10b_0_aurora_lane_4byte_0_i,n_97_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O18({n_98_aurora_8b10b_0_aurora_lane_4byte_0_i,n_99_aurora_8b10b_0_aurora_lane_4byte_0_i,n_100_aurora_8b10b_0_aurora_lane_4byte_0_i,n_101_aurora_8b10b_0_aurora_lane_4byte_0_i,n_102_aurora_8b10b_0_aurora_lane_4byte_0_i,n_103_aurora_8b10b_0_aurora_lane_4byte_0_i,n_104_aurora_8b10b_0_aurora_lane_4byte_0_i,n_105_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O19({n_106_aurora_8b10b_0_aurora_lane_4byte_0_i,n_107_aurora_8b10b_0_aurora_lane_4byte_0_i,n_108_aurora_8b10b_0_aurora_lane_4byte_0_i,n_109_aurora_8b10b_0_aurora_lane_4byte_0_i,n_110_aurora_8b10b_0_aurora_lane_4byte_0_i,n_111_aurora_8b10b_0_aurora_lane_4byte_0_i,n_112_aurora_8b10b_0_aurora_lane_4byte_0_i,n_113_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O2(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d2 ),
        .O20({soft_err_i[0],soft_err_i[1]}),
        .O3(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d3 ),
        .O4(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d4 ),
        .O5(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d5 ),
        .O6(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d6 ),
        .O7(n_25_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .O8(n_26_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .O9(n_32_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .Q(\aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r ),
        .RXCHARISK(rx_char_is_k_i),
        .RXDATA(rx_data_i),
        .RXDISPERR(rx_disp_err_i),
        .S1(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S1 ),
        .S11_in(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S11_in ),
        .TXCHARISK(tx_char_is_k_i),
        .TXDATA(tx_data_i),
        .ena_comma_align_i(ena_comma_align_i),
        .gen_a_i(gen_a_i),
        .gen_cc_i(gen_cc_i),
        .gen_scp_i(gen_scp_i),
        .got_v_i(got_v_i),
        .hard_err_gt0(\aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0 ),
        .hard_err_i(hard_err_i),
        .in_frame_c(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_c ),
        .init_clk_in(init_clk_in),
        .link_reset_out(link_reset_out),
        .out(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .reset_lanes_i(reset_lanes_i),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .s_out_d1_cdc_to(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d2(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d2 ),
        .s_out_d3(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d3 ),
        .s_out_d4(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d4 ),
        .s_out_d5(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d5 ),
        .s_out_d6(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d6 ),
        .s_out_d7(\aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d7 ),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_GLOBAL_LOGIC aurora_8b10b_0_global_logic_i
       (.D({soft_err_i[0],soft_err_i[1]}),
        .I1(n_39_core_reset_logic_i),
        .I10({gen_v_i[1],gen_v_i[2],gen_v_i[3]}),
        .I11({gen_r_i[0],gen_r_i[1],gen_r_i[2],gen_r_i[3]}),
        .I12({gen_k_i[0],gen_k_i[1],gen_k_i[2],gen_k_i[3]}),
        .I5({n_20_aurora_8b10b_0_global_logic_i,n_21_aurora_8b10b_0_global_logic_i}),
        .O1(channel_up),
        .SR(rx_ll_rst),
        .SS(\channel_init_sm_i/wait_for_lane_up_r0 ),
        .gen_a_i(gen_a_i),
        .got_v_i(got_v_i),
        .hard_err(hard_err),
        .hard_err_i(hard_err_i),
        .in_frame_c(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_c [0]),
        .in_frame_r(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_r ),
        .lane_up(lane_up),
        .power_down(power_down),
        .reset_channel_i(reset_channel_i),
        .reset_i(\tx_ll_control_i/reset_i ),
        .reset_lanes_i(reset_lanes_i),
        .soft_err(soft_err),
        .start_rx_i(start_rx_i),
        .sys_reset_out(sys_reset_out),
        .user_clk(user_clk),
        .wait_for_lane_up_r(\channel_init_sm_i/wait_for_lane_up_r ));
aurora_8b10b_0aurora_8b10b_0_RX_LL aurora_8b10b_0_rx_ll_i
       (.D({rx_scp_striped_i[0],rx_scp_striped_i[1]}),
        .I1(n_49_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .I2(n_44_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .I3(n_32_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .I4({n_30_aurora_8b10b_0_aurora_lane_4byte_0_i,n_31_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .I5({n_20_aurora_8b10b_0_global_logic_i,n_21_aurora_8b10b_0_global_logic_i}),
        .I6({rx_ecp_striped_i[0],rx_ecp_striped_i[1]}),
        .O16({n_82_aurora_8b10b_0_aurora_lane_4byte_0_i,n_83_aurora_8b10b_0_aurora_lane_4byte_0_i,n_84_aurora_8b10b_0_aurora_lane_4byte_0_i,n_85_aurora_8b10b_0_aurora_lane_4byte_0_i,n_86_aurora_8b10b_0_aurora_lane_4byte_0_i,n_87_aurora_8b10b_0_aurora_lane_4byte_0_i,n_88_aurora_8b10b_0_aurora_lane_4byte_0_i,n_89_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O17({n_90_aurora_8b10b_0_aurora_lane_4byte_0_i,n_91_aurora_8b10b_0_aurora_lane_4byte_0_i,n_92_aurora_8b10b_0_aurora_lane_4byte_0_i,n_93_aurora_8b10b_0_aurora_lane_4byte_0_i,n_94_aurora_8b10b_0_aurora_lane_4byte_0_i,n_95_aurora_8b10b_0_aurora_lane_4byte_0_i,n_96_aurora_8b10b_0_aurora_lane_4byte_0_i,n_97_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O18({n_98_aurora_8b10b_0_aurora_lane_4byte_0_i,n_99_aurora_8b10b_0_aurora_lane_4byte_0_i,n_100_aurora_8b10b_0_aurora_lane_4byte_0_i,n_101_aurora_8b10b_0_aurora_lane_4byte_0_i,n_102_aurora_8b10b_0_aurora_lane_4byte_0_i,n_103_aurora_8b10b_0_aurora_lane_4byte_0_i,n_104_aurora_8b10b_0_aurora_lane_4byte_0_i,n_105_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .O19({n_106_aurora_8b10b_0_aurora_lane_4byte_0_i,n_107_aurora_8b10b_0_aurora_lane_4byte_0_i,n_108_aurora_8b10b_0_aurora_lane_4byte_0_i,n_109_aurora_8b10b_0_aurora_lane_4byte_0_i,n_110_aurora_8b10b_0_aurora_lane_4byte_0_i,n_111_aurora_8b10b_0_aurora_lane_4byte_0_i,n_112_aurora_8b10b_0_aurora_lane_4byte_0_i,n_113_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .S1(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S1 ),
        .S11_in(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S11_in ),
        .SR(rx_ll_rst),
        .frame_err(frame_err),
        .in_frame_c(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_c ),
        .in_frame_r(\rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_r ),
        .m_axi_rx_tdata(m_axi_rx_tdata),
        .m_axi_rx_tkeep({\^m_axi_rx_tkeep [1],\^m_axi_rx_tkeep [2],\^m_axi_rx_tkeep [3]}),
        .m_axi_rx_tlast(m_axi_rx_tlast),
        .m_axi_rx_tvalid(m_axi_rx_tvalid),
        .start_rx_i(start_rx_i),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_TX_LL aurora_8b10b_0_tx_ll_i
       (.D({tx_pe_data_v_i[0],tx_pe_data_v_i[1]}),
        .I1(n_1_axi_to_ll_pdu_i),
        .I2(n_0_axi_to_ll_pdu_i),
        .I3(channel_up),
        .O1(n_3_aurora_8b10b_0_tx_ll_i),
        .O2({gen_pad_i[0],gen_pad_i[1]}),
        .Q({tx_pe_data_i[0],tx_pe_data_i[1],tx_pe_data_i[2],tx_pe_data_i[3],tx_pe_data_i[4],tx_pe_data_i[5],tx_pe_data_i[6],tx_pe_data_i[7],tx_pe_data_i[8],tx_pe_data_i[9],tx_pe_data_i[10],tx_pe_data_i[11],tx_pe_data_i[12],tx_pe_data_i[13],tx_pe_data_i[14],tx_pe_data_i[15],tx_pe_data_i[16],tx_pe_data_i[17],tx_pe_data_i[18],tx_pe_data_i[19],tx_pe_data_i[20],tx_pe_data_i[21],tx_pe_data_i[22],tx_pe_data_i[23],tx_pe_data_i[24],tx_pe_data_i[25],tx_pe_data_i[26],tx_pe_data_i[27],tx_pe_data_i[28],tx_pe_data_i[29],tx_pe_data_i[30],tx_pe_data_i[31]}),
        .do_cc(do_cc),
        .gen_cc_i(gen_cc_i),
        .gen_scp_i(gen_scp_i),
        .reset_i(\tx_ll_control_i/reset_i ),
        .s_axi_tx_tdata(s_axi_tx_tdata),
        .s_axi_tx_tkeep(s_axi_tx_tkeep),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tready(s_axi_tx_tready),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_AXI_TO_LL axi_to_ll_pdu_i
       (.I1(channel_up),
        .O1(n_0_axi_to_ll_pdu_i),
        .O2(n_1_axi_to_ll_pdu_i),
        .s_axi_tx_tlast(s_axi_tx_tlast),
        .s_axi_tx_tvalid(s_axi_tx_tvalid),
        .sys_reset_out(sys_reset_out),
        .tx_dst_rdy(tx_dst_rdy),
        .user_clk(user_clk));
aurora_8b10b_0aurora_8b10b_0_RESET_LOGIC core_reset_logic_i
       (.O1(\tx_resetdone_cdc_sync/s_level_out_bus_d2 ),
        .O10(\link_reset_cdc_sync/s_level_out_bus_d5 ),
        .O11(\link_reset_cdc_sync/s_level_out_bus_d6 ),
        .O12(n_39_core_reset_logic_i),
        .O2(\tx_resetdone_cdc_sync/s_level_out_bus_d3 ),
        .O3(\tx_resetdone_cdc_sync/s_level_out_bus_d4 ),
        .O4(\tx_resetdone_cdc_sync/s_level_out_bus_d5 ),
        .O5(\tx_resetdone_cdc_sync/s_level_out_bus_d6 ),
        .O6(\link_reset_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O7(\link_reset_cdc_sync/s_level_out_bus_d2 ),
        .O8(\link_reset_cdc_sync/s_level_out_bus_d3 ),
        .O9(\link_reset_cdc_sync/s_level_out_bus_d4 ),
        .SS(\channel_init_sm_i/wait_for_lane_up_r0 ),
        .init_clk_in(init_clk_in),
        .link_reset_out(link_reset_out),
        .out(\tx_resetdone_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .reset(reset),
        .reset_channel_i(reset_channel_i),
        .rx_resetdone_out(rx_resetdone_out),
        .s_out_d1_cdc_to(\tx_resetdone_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_0(\link_reset_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d2(\tx_resetdone_cdc_sync/s_out_d2 ),
        .s_out_d2_1(\link_reset_cdc_sync/s_out_d2 ),
        .s_out_d3(\tx_resetdone_cdc_sync/s_out_d3 ),
        .s_out_d3_2(\link_reset_cdc_sync/s_out_d3 ),
        .s_out_d4(\tx_resetdone_cdc_sync/s_out_d4 ),
        .s_out_d4_3(\link_reset_cdc_sync/s_out_d4 ),
        .s_out_d5(\tx_resetdone_cdc_sync/s_out_d5 ),
        .s_out_d5_4(\link_reset_cdc_sync/s_out_d5 ),
        .s_out_d6(\tx_resetdone_cdc_sync/s_out_d6 ),
        .s_out_d6_5(\link_reset_cdc_sync/s_out_d6 ),
        .s_out_d7(\tx_resetdone_cdc_sync/s_out_d7 ),
        .s_out_d7_6(\link_reset_cdc_sync/s_out_d7 ),
        .sys_reset_out(sys_reset_out),
        .tx_resetdone_out(tx_resetdone_out),
        .user_clk(user_clk),
        .wait_for_lane_up_r(\channel_init_sm_i/wait_for_lane_up_r ));
aurora_8b10b_0aurora_8b10b_0_GT_WRAPPER gt_wrapper_i
       (.D(rx_char_is_comma_i),
        .I1(n_26_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .I2(n_25_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .I3({n_36_aurora_8b10b_0_aurora_lane_4byte_0_i,n_37_aurora_8b10b_0_aurora_lane_4byte_0_i,n_38_aurora_8b10b_0_aurora_lane_4byte_0_i,n_39_aurora_8b10b_0_aurora_lane_4byte_0_i,n_40_aurora_8b10b_0_aurora_lane_4byte_0_i,n_41_aurora_8b10b_0_aurora_lane_4byte_0_i,n_42_aurora_8b10b_0_aurora_lane_4byte_0_i,n_43_aurora_8b10b_0_aurora_lane_4byte_0_i}),
        .I4(n_34_aurora_8b10b_0_aurora_lane_4byte_0_i),
        .O1(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ),
        .O10(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ),
        .O100(n_376_gt_wrapper_i),
        .O11(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ),
        .O12(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O13(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ),
        .O14(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ),
        .O15(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ),
        .O16(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ),
        .O17(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ),
        .O18(\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O19(\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d2 ),
        .O2(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ),
        .O20(\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d3 ),
        .O21(\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d4 ),
        .O22(\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d5 ),
        .O23(\gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d6 ),
        .O24(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O25(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ),
        .O26(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ),
        .O27(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ),
        .O28(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ),
        .O29(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ),
        .O3(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ),
        .O30(\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O31(\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d2 ),
        .O32(\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d3 ),
        .O33(\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d4 ),
        .O34(\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d5 ),
        .O35(\gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d6 ),
        .O36(\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O37(\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d2 ),
        .O38(\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d3 ),
        .O39(\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d4 ),
        .O4(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ),
        .O40(\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d5 ),
        .O41(\gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d6 ),
        .O42(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O43(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d2 ),
        .O44(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d3 ),
        .O45(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d4 ),
        .O46(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d5 ),
        .O47(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ),
        .O48(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O49(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ),
        .O5(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d6 ),
        .O50(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ),
        .O51(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ),
        .O52(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5 ),
        .O53(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6 ),
        .O54(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O55(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d2 ),
        .O56(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d3 ),
        .O57(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d4 ),
        .O58(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d5 ),
        .O59(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d6 ),
        .O6(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O60(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O61(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d2 ),
        .O62(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d3 ),
        .O63(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d4 ),
        .O64(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d5 ),
        .O65(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d6 ),
        .O66(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O67(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2 ),
        .O68(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3 ),
        .O69(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4 ),
        .O7(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2 ),
        .O70(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5 ),
        .O71(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6 ),
        .O72(\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O73(\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d2 ),
        .O74(\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d3 ),
        .O75(\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d4 ),
        .O76(\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d5 ),
        .O77(\gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d6 ),
        .O78(\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O79(\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d2 ),
        .O8(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3 ),
        .O80(\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d3 ),
        .O81(\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d4 ),
        .O82(\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d5 ),
        .O83(\gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d6 ),
        .O84(\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .O85(\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d2 ),
        .O86(\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d3 ),
        .O87(\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d4 ),
        .O88(\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d5 ),
        .O89(\gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d6 ),
        .O9(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4 ),
        .O90(n_351_gt_wrapper_i),
        .O91(n_352_gt_wrapper_i),
        .O92({n_354_gt_wrapper_i,n_355_gt_wrapper_i,n_356_gt_wrapper_i,n_357_gt_wrapper_i,n_358_gt_wrapper_i,n_359_gt_wrapper_i,n_360_gt_wrapper_i,n_361_gt_wrapper_i}),
        .O93({n_362_gt_wrapper_i,n_363_gt_wrapper_i,n_364_gt_wrapper_i,n_365_gt_wrapper_i,n_366_gt_wrapper_i,n_367_gt_wrapper_i,n_368_gt_wrapper_i,n_369_gt_wrapper_i}),
        .O94(n_370_gt_wrapper_i),
        .O95(n_371_gt_wrapper_i),
        .O96(n_372_gt_wrapper_i),
        .O97(n_373_gt_wrapper_i),
        .O98(n_374_gt_wrapper_i),
        .O99(n_375_gt_wrapper_i),
        .Q(\aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r ),
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
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt_qpllclk_quad2_in(gt_qpllclk_quad2_in),
        .gt_qpllrefclk_quad2_in(gt_qpllrefclk_quad2_in),
        .gt_refclk1(gt_refclk1),
        .gt_reset(gt_reset),
        .hard_err_gt0(\aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0 ),
        .init_clk_in(init_clk_in),
        .link_reset_out(link_reset_out),
        .loopback(loopback),
        .out(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to ),
        .power_down(power_down),
        .rx_polarity_i(rx_polarity_i),
        .rx_realign_i(rx_realign_i),
        .rx_resetdone_out(rx_resetdone_out),
        .rxfsm_data_valid_r(rxfsm_data_valid_r),
        .rxn(rxn),
        .rxp(rxp),
        .s_out_d1_cdc_to(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_0(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_14(\gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_21(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_28(\gt_txresetfsm_i/cplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_35(\gt_txresetfsm_i/qplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_42(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_49(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_56(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_63(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_7(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_70(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_77(\gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_84(\gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d1_cdc_to_91(\gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d1_cdc_to ),
        .s_out_d2(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d2 ),
        .s_out_d2_1(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d2 ),
        .s_out_d2_15(\gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d2 ),
        .s_out_d2_22(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d2 ),
        .s_out_d2_29(\gt_txresetfsm_i/cplllock_cdc_sync/s_out_d2 ),
        .s_out_d2_36(\gt_txresetfsm_i/qplllock_cdc_sync/s_out_d2 ),
        .s_out_d2_43(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d2 ),
        .s_out_d2_50(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d2 ),
        .s_out_d2_57(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d2 ),
        .s_out_d2_64(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d2 ),
        .s_out_d2_71(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d2 ),
        .s_out_d2_78(\gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d2 ),
        .s_out_d2_8(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d2 ),
        .s_out_d2_85(\gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d2 ),
        .s_out_d2_92(\gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d2 ),
        .s_out_d3(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d3 ),
        .s_out_d3_16(\gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d3 ),
        .s_out_d3_2(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d3 ),
        .s_out_d3_23(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d3 ),
        .s_out_d3_30(\gt_txresetfsm_i/cplllock_cdc_sync/s_out_d3 ),
        .s_out_d3_37(\gt_txresetfsm_i/qplllock_cdc_sync/s_out_d3 ),
        .s_out_d3_44(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d3 ),
        .s_out_d3_51(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d3 ),
        .s_out_d3_58(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d3 ),
        .s_out_d3_65(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d3 ),
        .s_out_d3_72(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d3 ),
        .s_out_d3_79(\gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d3 ),
        .s_out_d3_86(\gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d3 ),
        .s_out_d3_9(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d3 ),
        .s_out_d3_93(\gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d3 ),
        .s_out_d4(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d4 ),
        .s_out_d4_10(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d4 ),
        .s_out_d4_17(\gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d4 ),
        .s_out_d4_24(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d4 ),
        .s_out_d4_3(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d4 ),
        .s_out_d4_31(\gt_txresetfsm_i/cplllock_cdc_sync/s_out_d4 ),
        .s_out_d4_38(\gt_txresetfsm_i/qplllock_cdc_sync/s_out_d4 ),
        .s_out_d4_45(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d4 ),
        .s_out_d4_52(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d4 ),
        .s_out_d4_59(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d4 ),
        .s_out_d4_66(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d4 ),
        .s_out_d4_73(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d4 ),
        .s_out_d4_80(\gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d4 ),
        .s_out_d4_87(\gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d4 ),
        .s_out_d4_94(\gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d4 ),
        .s_out_d5(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d5 ),
        .s_out_d5_11(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d5 ),
        .s_out_d5_18(\gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d5 ),
        .s_out_d5_25(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d5 ),
        .s_out_d5_32(\gt_txresetfsm_i/cplllock_cdc_sync/s_out_d5 ),
        .s_out_d5_39(\gt_txresetfsm_i/qplllock_cdc_sync/s_out_d5 ),
        .s_out_d5_4(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d5 ),
        .s_out_d5_46(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d5 ),
        .s_out_d5_53(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d5 ),
        .s_out_d5_60(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d5 ),
        .s_out_d5_67(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d5 ),
        .s_out_d5_74(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d5 ),
        .s_out_d5_81(\gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d5 ),
        .s_out_d5_88(\gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d5 ),
        .s_out_d5_95(\gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d5 ),
        .s_out_d6(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d6 ),
        .s_out_d6_12(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d6 ),
        .s_out_d6_19(\gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d6 ),
        .s_out_d6_26(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d6 ),
        .s_out_d6_33(\gt_txresetfsm_i/cplllock_cdc_sync/s_out_d6 ),
        .s_out_d6_40(\gt_txresetfsm_i/qplllock_cdc_sync/s_out_d6 ),
        .s_out_d6_47(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d6 ),
        .s_out_d6_5(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d6 ),
        .s_out_d6_54(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d6 ),
        .s_out_d6_61(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d6 ),
        .s_out_d6_68(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d6 ),
        .s_out_d6_75(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d6 ),
        .s_out_d6_82(\gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d6 ),
        .s_out_d6_89(\gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d6 ),
        .s_out_d6_96(\gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d6 ),
        .s_out_d7(\gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d7 ),
        .s_out_d7_13(\gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d7 ),
        .s_out_d7_20(\gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d7 ),
        .s_out_d7_27(\gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d7 ),
        .s_out_d7_34(\gt_txresetfsm_i/cplllock_cdc_sync/s_out_d7 ),
        .s_out_d7_41(\gt_txresetfsm_i/qplllock_cdc_sync/s_out_d7 ),
        .s_out_d7_48(\gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d7 ),
        .s_out_d7_55(\gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d7 ),
        .s_out_d7_6(\gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d7 ),
        .s_out_d7_62(\gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d7 ),
        .s_out_d7_69(\gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d7 ),
        .s_out_d7_76(\gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d7 ),
        .s_out_d7_83(\gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d7 ),
        .s_out_d7_90(\gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d7 ),
        .s_out_d7_97(\gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d7 ),
        .sync_clk(sync_clk),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .tx_resetdone_out(tx_resetdone_out),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
FDRE rxfsm_data_valid_r_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(lane_up),
        .Q(rxfsm_data_valid_r),
        .R(\<const0> ));
endmodule

module aurora_8b10b_0aurora_8b10b_0_gt
   (tx_lock,
    gt0_pllrefclklost_i,
    drprdy_out,
    txn,
    txp,
    rx_realign_i,
    O1,
    tx_out_clk,
    O2,
    drpdo_out,
    RXDATA,
    D,
    RXCHARISK,
    RXDISPERR,
    O90,
    O91,
    hard_err_gt0,
    O92,
    O93,
    O94,
    O95,
    O96,
    O97,
    O98,
    O99,
    O100,
    init_clk_in,
    cpll_reset_i,
    drpclk_in,
    drpen_in,
    drpwe_in,
    gt_refclk1,
    gt_rx_reset_i,
    gt_tx_reset_i,
    rxn,
    rxp,
    gt_qpllclk_quad2_in,
    gt_qpllrefclk_quad2_in,
    gt_rxdfelfhold_i,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    power_down,
    gt_txuserrdy_i,
    drpdi_in,
    loopback,
    TXDATA,
    TXCHARISK,
    drpaddr_in,
    I1,
    I2,
    Q,
    I3,
    I4);
  output tx_lock;
  output gt0_pllrefclklost_i;
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output O1;
  output tx_out_clk;
  output O2;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]D;
  output [3:0]RXCHARISK;
  output [1:0]RXDISPERR;
  output O90;
  output O91;
  output hard_err_gt0;
  output [7:0]O92;
  output [7:0]O93;
  output O94;
  output O95;
  output O96;
  output O97;
  output O98;
  output O99;
  output O100;
  input init_clk_in;
  input cpll_reset_i;
  input drpclk_in;
  input drpen_in;
  input drpwe_in;
  input gt_refclk1;
  input gt_rx_reset_i;
  input gt_tx_reset_i;
  input rxn;
  input rxp;
  input gt_qpllclk_quad2_in;
  input gt_qpllrefclk_quad2_in;
  input gt_rxdfelfhold_i;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input gt_txuserrdy_i;
  input [15:0]drpdi_in;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input [8:0]drpaddr_in;
  input I1;
  input I2;
  input [0:0]Q;
  input [7:0]I3;
  input I4;

  wire \<const0> ;
  wire \<const1> ;
  wire [3:0]D;
  wire I1;
  wire I2;
  wire [7:0]I3;
  wire I4;
  wire O1;
  wire O100;
  wire O2;
  wire O90;
  wire O91;
  wire [7:0]O92;
  wire [7:0]O93;
  wire O94;
  wire O95;
  wire O96;
  wire O97;
  wire O98;
  wire O99;
  wire [0:0]Q;
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
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire gt0_pllrefclklost_i;
  wire gt_qpllclk_quad2_in;
  wire gt_qpllrefclk_quad2_in;
  wire gt_refclk1;
  wire gt_rx_reset_i;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire hard_err_gt0;
  wire init_clk_in;
  wire [2:0]loopback;
  wire n_0_gtxe2_i;
  wire n_11_gtxe2_i;
  wire n_16_gtxe2_i;
  wire n_170_gtxe2_i;
  wire n_171_gtxe2_i;
  wire n_172_gtxe2_i;
  wire n_173_gtxe2_i;
  wire n_174_gtxe2_i;
  wire n_175_gtxe2_i;
  wire n_176_gtxe2_i;
  wire n_177_gtxe2_i;
  wire n_178_gtxe2_i;
  wire n_179_gtxe2_i;
  wire n_180_gtxe2_i;
  wire n_181_gtxe2_i;
  wire n_182_gtxe2_i;
  wire n_183_gtxe2_i;
  wire n_184_gtxe2_i;
  wire n_23_gtxe2_i;
  wire n_27_gtxe2_i;
  wire n_38_gtxe2_i;
  wire n_39_gtxe2_i;
  wire n_4_gtxe2_i;
  wire n_78_gtxe2_i;
  wire n_79_gtxe2_i;
  wire n_81_gtxe2_i;
  wire n_83_gtxe2_i;
  wire n_84_gtxe2_i;
  wire n_9_gtxe2_i;
  wire power_down;
  wire rx_buf_err_i;
  wire [3:2]rx_disp_err_i;
  wire [3:0]rx_not_in_table_i;
  wire rx_polarity_i;
  wire rx_realign_i;
  wire rxn;
  wire rxp;
  wire sync_clk;
  wire tx_buf_err_i;
  wire tx_lock;
  wire tx_out_clk;
  wire txn;
  wire txp;
  wire user_clk;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:4]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'hFFFFFAFB10114010)) 
     \aurora_8b10b_0_sym_dec_4byte_i/left_align_select_r[0]_i_1 
       (.I0(I4),
        .I1(RXCHARISK[0]),
        .I2(RXCHARISK[2]),
        .I3(RXCHARISK[1]),
        .I4(RXCHARISK[3]),
        .I5(I2),
        .O(O99));
LUT6 #(
    .INIT(64'hFFFFBFEB10110500)) 
     \aurora_8b10b_0_sym_dec_4byte_i/left_align_select_r[1]_i_1 
       (.I0(I4),
        .I1(RXCHARISK[0]),
        .I2(RXCHARISK[2]),
        .I3(RXCHARISK[1]),
        .I4(RXCHARISK[3]),
        .I5(I1),
        .O(O100));
(* box_type = "PRIMITIVE" *) 
   GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
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
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(5),
    .CPLL_FBDIV_45(5),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
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
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h00018480),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
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
    .RXCDR_CFG(72'h03000023FF20400020),
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
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(1),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(4),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(40),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0954),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b1111),
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
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(1),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(4),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(40),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
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
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
     gtxe2_i
       (.CFGRESET(\<const0> ),
        .CLKRSVD({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .CPLLFBCLKLOST(n_0_gtxe2_i),
        .CPLLLOCK(tx_lock),
        .CPLLLOCKDETCLK(init_clk_in),
        .CPLLLOCKEN(\<const1> ),
        .CPLLPD(\<const0> ),
        .CPLLREFCLKLOST(gt0_pllrefclklost_i),
        .CPLLREFCLKSEL({\<const0> ,\<const0> ,\<const1> }),
        .CPLLRESET(cpll_reset_i),
        .DMONITOROUT({n_177_gtxe2_i,n_178_gtxe2_i,n_179_gtxe2_i,n_180_gtxe2_i,n_181_gtxe2_i,n_182_gtxe2_i,n_183_gtxe2_i,n_184_gtxe2_i}),
        .DRPADDR(drpaddr_in),
        .DRPCLK(drpclk_in),
        .DRPDI(drpdi_in),
        .DRPDO(drpdo_out),
        .DRPEN(drpen_in),
        .DRPRDY(drprdy_out),
        .DRPWE(drpwe_in),
        .EYESCANDATAERROR(n_4_gtxe2_i),
        .EYESCANMODE(\<const0> ),
        .EYESCANRESET(\<const0> ),
        .EYESCANTRIGGER(\<const0> ),
        .GTGREFCLK(\<const0> ),
        .GTNORTHREFCLK0(\<const0> ),
        .GTNORTHREFCLK1(\<const0> ),
        .GTREFCLK0(gt_refclk1),
        .GTREFCLK1(\<const0> ),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(\<const0> ),
        .GTRSVD({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .GTRXRESET(gt_rx_reset_i),
        .GTSOUTHREFCLK0(\<const0> ),
        .GTSOUTHREFCLK1(\<const0> ),
        .GTTXRESET(gt_tx_reset_i),
        .GTXRXN(rxn),
        .GTXRXP(rxp),
        .GTXTXN(txn),
        .GTXTXP(txp),
        .LOOPBACK(loopback),
        .PCSRSVDIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .PCSRSVDIN2({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .PMARSVDIN2({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .QPLLCLK(gt_qpllclk_quad2_in),
        .QPLLREFCLK(gt_qpllrefclk_quad2_in),
        .RESETOVRD(\<const0> ),
        .RX8B10BEN(\<const1> ),
        .RXBUFRESET(\<const0> ),
        .RXBUFSTATUS({rx_buf_err_i,n_83_gtxe2_i,n_84_gtxe2_i}),
        .RXBYTEISALIGNED(n_9_gtxe2_i),
        .RXBYTEREALIGN(rx_realign_i),
        .RXCDRFREQRESET(\<const0> ),
        .RXCDRHOLD(\<const0> ),
        .RXCDRLOCK(n_11_gtxe2_i),
        .RXCDROVRDEN(\<const0> ),
        .RXCDRRESET(\<const0> ),
        .RXCDRRESETRSV(\<const0> ),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:4],D}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:4],RXCHARISK}),
        .RXCHBONDEN(\<const0> ),
        .RXCHBONDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RXCHBONDLEVEL({\<const0> ,\<const0> ,\<const0> }),
        .RXCHBONDMASTER(\<const0> ),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(\<const0> ),
        .RXCLKCORCNT({n_78_gtxe2_i,n_79_gtxe2_i}),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(n_16_gtxe2_i),
        .RXCOMMADETEN(\<const1> ),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],RXDATA}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(\<const0> ),
        .RXDFEAGCHOLD(gt_rxdfelfhold_i),
        .RXDFEAGCOVRDEN(\<const0> ),
        .RXDFECM1EN(\<const0> ),
        .RXDFELFHOLD(gt_rxdfelfhold_i),
        .RXDFELFOVRDEN(\<const1> ),
        .RXDFELPMRESET(\<const0> ),
        .RXDFETAP2HOLD(\<const0> ),
        .RXDFETAP2OVRDEN(\<const0> ),
        .RXDFETAP3HOLD(\<const0> ),
        .RXDFETAP3OVRDEN(\<const0> ),
        .RXDFETAP4HOLD(\<const0> ),
        .RXDFETAP4OVRDEN(\<const0> ),
        .RXDFETAP5HOLD(\<const0> ),
        .RXDFETAP5OVRDEN(\<const0> ),
        .RXDFEUTHOLD(\<const0> ),
        .RXDFEUTOVRDEN(\<const0> ),
        .RXDFEVPHOLD(\<const0> ),
        .RXDFEVPOVRDEN(\<const0> ),
        .RXDFEVSEN(\<const0> ),
        .RXDFEXYDEN(\<const1> ),
        .RXDFEXYDHOLD(\<const0> ),
        .RXDFEXYDOVRDEN(\<const0> ),
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:4],rx_disp_err_i,RXDISPERR}),
        .RXDLYBYPASS(\<const1> ),
        .RXDLYEN(\<const0> ),
        .RXDLYOVRDEN(\<const0> ),
        .RXDLYSRESET(\<const0> ),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({\<const1> ,\<const1> }),
        .RXGEARBOXSLIP(\<const0> ),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(\<const0> ),
        .RXLPMHFHOLD(\<const0> ),
        .RXLPMHFOVRDEN(\<const0> ),
        .RXLPMLFHOLD(\<const0> ),
        .RXLPMLFKLOVRDEN(\<const0> ),
        .RXMCOMMAALIGNEN(ena_comma_align_i),
        .RXMONITOROUT({n_170_gtxe2_i,n_171_gtxe2_i,n_172_gtxe2_i,n_173_gtxe2_i,n_174_gtxe2_i,n_175_gtxe2_i,n_176_gtxe2_i}),
        .RXMONITORSEL({\<const0> ,\<const0> }),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:4],rx_not_in_table_i}),
        .RXOOBRESET(\<const0> ),
        .RXOSHOLD(\<const0> ),
        .RXOSOVRDEN(\<const0> ),
        .RXOUTCLK(n_23_gtxe2_i),
        .RXOUTCLKFABRIC(NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({\<const0> ,\<const1> ,\<const0> }),
        .RXPCOMMAALIGNEN(ena_comma_align_i),
        .RXPCSRESET(\<const0> ),
        .RXPD({power_down,power_down}),
        .RXPHALIGN(\<const0> ),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(\<const0> ),
        .RXPHDLYPD(\<const0> ),
        .RXPHDLYRESET(\<const0> ),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(\<const0> ),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(\<const0> ),
        .RXPOLARITY(rx_polarity_i),
        .RXPRBSCNTRESET(\<const0> ),
        .RXPRBSERR(n_27_gtxe2_i),
        .RXPRBSSEL({\<const0> ,\<const0> ,\<const0> }),
        .RXQPIEN(\<const0> ),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({\<const0> ,\<const0> ,\<const0> }),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(O1),
        .RXSLIDE(\<const0> ),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({\<const0> ,\<const0> }),
        .RXUSERRDY(gt_rxuserrdy_i),
        .RXUSRCLK(sync_clk),
        .RXUSRCLK2(user_clk),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(\<const0> ),
        .TSTIN({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .TX8B10BEN(\<const1> ),
        .TXBUFDIFFCTRL({\<const1> ,\<const0> ,\<const0> }),
        .TXBUFSTATUS({tx_buf_err_i,n_81_gtxe2_i}),
        .TXCHARDISPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .TXCHARDISPVAL({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .TXCHARISK({\<const0> ,\<const0> ,\<const0> ,\<const0> ,TXCHARISK}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(\<const0> ),
        .TXCOMSAS(\<const0> ),
        .TXCOMWAKE(\<const0> ),
        .TXDATA({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,TXDATA}),
        .TXDEEMPH(\<const0> ),
        .TXDETECTRX(\<const0> ),
        .TXDIFFCTRL({\<const1> ,\<const0> ,\<const0> ,\<const0> }),
        .TXDIFFPD(\<const0> ),
        .TXDLYBYPASS(\<const1> ),
        .TXDLYEN(\<const0> ),
        .TXDLYHOLD(\<const0> ),
        .TXDLYOVRDEN(\<const0> ),
        .TXDLYSRESET(\<const0> ),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(\<const0> ),
        .TXELECIDLE(power_down),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({\<const0> ,\<const0> ,\<const0> }),
        .TXINHIBIT(\<const0> ),
        .TXMAINCURSOR({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .TXMARGIN({\<const0> ,\<const0> ,\<const0> }),
        .TXOUTCLK(tx_out_clk),
        .TXOUTCLKFABRIC(n_38_gtxe2_i),
        .TXOUTCLKPCS(n_39_gtxe2_i),
        .TXOUTCLKSEL({\<const0> ,\<const1> ,\<const0> }),
        .TXPCSRESET(\<const0> ),
        .TXPD({power_down,power_down}),
        .TXPDELECIDLEMODE(\<const0> ),
        .TXPHALIGN(\<const0> ),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(\<const0> ),
        .TXPHDLYPD(\<const0> ),
        .TXPHDLYRESET(\<const0> ),
        .TXPHDLYTSTCLK(\<const0> ),
        .TXPHINIT(\<const0> ),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(\<const0> ),
        .TXPISOPD(\<const0> ),
        .TXPMARESET(\<const0> ),
        .TXPOLARITY(\<const0> ),
        .TXPOSTCURSOR({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .TXPOSTCURSORINV(\<const0> ),
        .TXPRBSFORCEERR(\<const0> ),
        .TXPRBSSEL({\<const0> ,\<const0> ,\<const0> }),
        .TXPRECURSOR({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .TXPRECURSORINV(\<const0> ),
        .TXQPIBIASEN(\<const0> ),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(\<const0> ),
        .TXQPIWEAKPUP(\<const0> ),
        .TXRATE({\<const0> ,\<const0> ,\<const0> }),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(O2),
        .TXSEQUENCE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .TXSTARTSEQ(\<const0> ),
        .TXSWING(\<const0> ),
        .TXSYSCLKSEL({\<const0> ,\<const0> }),
        .TXUSERRDY(gt_txuserrdy_i),
        .TXUSRCLK(sync_clk),
        .TXUSRCLK2(user_clk));
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
        .O(O98));
LUT2 #(
    .INIT(4'hE)) 
     \soft_err_r[0]_i_2 
       (.I0(RXDISPERR[0]),
        .I1(rx_not_in_table_i[0]),
        .O(O94));
LUT2 #(
    .INIT(4'hE)) 
     \soft_err_r[1]_i_1 
       (.I0(RXDISPERR[1]),
        .I1(rx_not_in_table_i[1]),
        .O(O95));
LUT2 #(
    .INIT(4'hE)) 
     \soft_err_r[2]_i_1 
       (.I0(rx_disp_err_i[2]),
        .I1(rx_not_in_table_i[2]),
        .O(O96));
LUT2 #(
    .INIT(4'hE)) 
     \soft_err_r[3]_i_1 
       (.I0(rx_not_in_table_i[3]),
        .I1(rx_disp_err_i[3]),
        .O(O97));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_control_bits_r[2]_i_1 
       (.I0(RXCHARISK[1]),
        .I1(Q),
        .I2(I1),
        .I3(RXCHARISK[0]),
        .I4(I2),
        .I5(RXCHARISK[2]),
        .O(O91));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_control_bits_r[3]_i_1 
       (.I0(RXCHARISK[2]),
        .I1(RXCHARISK[0]),
        .I2(I1),
        .I3(RXCHARISK[1]),
        .I4(I2),
        .I5(RXCHARISK[3]),
        .O(O90));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[16]_i_1 
       (.I0(RXDATA[15]),
        .I1(RXDATA[7]),
        .I2(I2),
        .I3(I3[7]),
        .I4(I1),
        .I5(RXDATA[23]),
        .O(O92[7]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[17]_i_1 
       (.I0(RXDATA[14]),
        .I1(RXDATA[6]),
        .I2(I2),
        .I3(I3[6]),
        .I4(I1),
        .I5(RXDATA[22]),
        .O(O92[6]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[18]_i_1 
       (.I0(RXDATA[13]),
        .I1(RXDATA[5]),
        .I2(I2),
        .I3(I3[5]),
        .I4(I1),
        .I5(RXDATA[21]),
        .O(O92[5]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[19]_i_1 
       (.I0(RXDATA[12]),
        .I1(RXDATA[4]),
        .I2(I2),
        .I3(I3[4]),
        .I4(I1),
        .I5(RXDATA[20]),
        .O(O92[4]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[20]_i_1 
       (.I0(RXDATA[11]),
        .I1(RXDATA[3]),
        .I2(I2),
        .I3(I3[3]),
        .I4(I1),
        .I5(RXDATA[19]),
        .O(O92[3]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[21]_i_1 
       (.I0(RXDATA[10]),
        .I1(RXDATA[2]),
        .I2(I2),
        .I3(I3[2]),
        .I4(I1),
        .I5(RXDATA[18]),
        .O(O92[2]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[22]_i_1 
       (.I0(RXDATA[9]),
        .I1(RXDATA[1]),
        .I2(I2),
        .I3(I3[1]),
        .I4(I1),
        .I5(RXDATA[17]),
        .O(O92[1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[23]_i_1 
       (.I0(RXDATA[8]),
        .I1(RXDATA[0]),
        .I2(I2),
        .I3(I3[0]),
        .I4(I1),
        .I5(RXDATA[16]),
        .O(O92[0]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[24]_i_1 
       (.I0(RXDATA[23]),
        .I1(RXDATA[15]),
        .I2(I2),
        .I3(RXDATA[7]),
        .I4(I1),
        .I5(RXDATA[31]),
        .O(O93[7]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[25]_i_1 
       (.I0(RXDATA[22]),
        .I1(RXDATA[14]),
        .I2(I2),
        .I3(RXDATA[6]),
        .I4(I1),
        .I5(RXDATA[30]),
        .O(O93[6]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[26]_i_1 
       (.I0(RXDATA[21]),
        .I1(RXDATA[13]),
        .I2(I2),
        .I3(RXDATA[5]),
        .I4(I1),
        .I5(RXDATA[29]),
        .O(O93[5]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[27]_i_1 
       (.I0(RXDATA[20]),
        .I1(RXDATA[12]),
        .I2(I2),
        .I3(RXDATA[4]),
        .I4(I1),
        .I5(RXDATA[28]),
        .O(O93[4]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[28]_i_1 
       (.I0(RXDATA[19]),
        .I1(RXDATA[11]),
        .I2(I2),
        .I3(RXDATA[3]),
        .I4(I1),
        .I5(RXDATA[27]),
        .O(O93[3]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[29]_i_1 
       (.I0(RXDATA[18]),
        .I1(RXDATA[10]),
        .I2(I2),
        .I3(RXDATA[2]),
        .I4(I1),
        .I5(RXDATA[26]),
        .O(O93[2]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[30]_i_1 
       (.I0(RXDATA[17]),
        .I1(RXDATA[9]),
        .I2(I2),
        .I3(RXDATA[1]),
        .I4(I1),
        .I5(RXDATA[25]),
        .O(O93[1]));
LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
     \word_aligned_data_r[31]_i_1 
       (.I0(RXDATA[16]),
        .I1(RXDATA[8]),
        .I2(I2),
        .I3(RXDATA[0]),
        .I4(I1),
        .I5(RXDATA[24]),
        .O(O93[0]));
endmodule

module aurora_8b10b_0aurora_8b10b_0_hotplug
   (s_out_d1_cdc_to,
    s_out_d2,
    s_out_d3,
    s_out_d4,
    s_out_d5,
    s_out_d6,
    s_out_d7,
    out,
    O2,
    O3,
    O4,
    O5,
    O6,
    link_reset_out,
    init_clk_in,
    user_clk,
    reset_lanes_i,
    rx_cc_i);
  output s_out_d1_cdc_to;
  output s_out_d2;
  output s_out_d3;
  output s_out_d4;
  output s_out_d5;
  output s_out_d6;
  output s_out_d7;
  output [1:0]out;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output [1:0]O6;
  output link_reset_out;
  input init_clk_in;
  input user_clk;
  input reset_lanes_i;
  input rx_cc_i;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
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
  wire n_0_link_reset_0_i_6;
  wire n_0_rx_cc_extend_r2_i_1;
  wire \n_0_rx_cc_extend_r_reg[0] ;
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
  wire [1:0]out;
  wire [3:0]p_0_in;
  wire reset_lanes_i;
  wire rx_cc_extend_r2;
  wire rx_cc_i;
  wire s_out_d1_cdc_to;
  wire s_out_d2;
  wire s_out_d3;
  wire s_out_d4;
  wire s_out_d5;
  wire s_out_d6;
  wire s_out_d7;
  wire user_clk;
  wire [3:1]\NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
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
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[0] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[0]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\n_0_count_for_reset_r_reg[0]_i_1 ,\n_1_count_for_reset_r_reg[0]_i_1 ,\n_2_count_for_reset_r_reg[0]_i_1 ,\n_3_count_for_reset_r_reg[0]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_count_for_reset_r_reg[0]_i_1 ,\n_5_count_for_reset_r_reg[0]_i_1 ,\n_6_count_for_reset_r_reg[0]_i_1 ,\n_7_count_for_reset_r_reg[0]_i_1 }),
        .S({\n_0_count_for_reset_r[0]_i_2 ,\n_0_count_for_reset_r[0]_i_3 ,\n_0_count_for_reset_r[0]_i_4 ,\n_0_count_for_reset_r[0]_i_5 }));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[10] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[10]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[11] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[11]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[12] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[12]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[12]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[8]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[12]_i_1 ,\n_1_count_for_reset_r_reg[12]_i_1 ,\n_2_count_for_reset_r_reg[12]_i_1 ,\n_3_count_for_reset_r_reg[12]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_count_for_reset_r_reg[12]_i_1 ,\n_5_count_for_reset_r_reg[12]_i_1 ,\n_6_count_for_reset_r_reg[12]_i_1 ,\n_7_count_for_reset_r_reg[12]_i_1 }),
        .S({\n_0_count_for_reset_r[12]_i_2 ,\n_0_count_for_reset_r[12]_i_3 ,\n_0_count_for_reset_r[12]_i_4 ,\n_0_count_for_reset_r[12]_i_5 }));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[13] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[13]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[14] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[14]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[15] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_count_for_reset_r_reg[12]_i_1 ),
        .Q(count_for_reset_r_reg[15]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[16] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[16]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[16]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[12]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[16]_i_1 ,\n_1_count_for_reset_r_reg[16]_i_1 ,\n_2_count_for_reset_r_reg[16]_i_1 ,\n_3_count_for_reset_r_reg[16]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_count_for_reset_r_reg[16]_i_1 ,\n_5_count_for_reset_r_reg[16]_i_1 ,\n_6_count_for_reset_r_reg[16]_i_1 ,\n_7_count_for_reset_r_reg[16]_i_1 }),
        .S({\n_0_count_for_reset_r[16]_i_2 ,\n_0_count_for_reset_r[16]_i_3 ,\n_0_count_for_reset_r[16]_i_4 ,\n_0_count_for_reset_r[16]_i_5 }));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[17] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[17]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[18] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[18]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[19] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_count_for_reset_r_reg[16]_i_1 ),
        .Q(count_for_reset_r_reg[19]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[1] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[1]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[20] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[20]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[20]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[16]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[20]_i_1 ,\n_1_count_for_reset_r_reg[20]_i_1 ,\n_2_count_for_reset_r_reg[20]_i_1 ,\n_3_count_for_reset_r_reg[20]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_count_for_reset_r_reg[20]_i_1 ,\n_5_count_for_reset_r_reg[20]_i_1 ,\n_6_count_for_reset_r_reg[20]_i_1 ,\n_7_count_for_reset_r_reg[20]_i_1 }),
        .S({\n_0_count_for_reset_r[20]_i_2 ,\n_0_count_for_reset_r[20]_i_3 ,\n_0_count_for_reset_r[20]_i_4 ,\n_0_count_for_reset_r[20]_i_5 }));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[21] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[21]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[22] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[22]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[23] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_count_for_reset_r_reg[20]_i_1 ),
        .Q(count_for_reset_r_reg[23]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[24] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_count_for_reset_r_reg[24]_i_1 ),
        .Q(count_for_reset_r_reg[24]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[24]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[20]_i_1 ),
        .CO({\NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED [3:1],\n_3_count_for_reset_r_reg[24]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED [3:2],\n_6_count_for_reset_r_reg[24]_i_1 ,\n_7_count_for_reset_r_reg[24]_i_1 }),
        .S({\<const0> ,\<const0> ,\n_0_count_for_reset_r[24]_i_2 ,\n_0_count_for_reset_r[24]_i_3 }));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[25] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_count_for_reset_r_reg[24]_i_1 ),
        .Q(count_for_reset_r_reg[25]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[2] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[2]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[3] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_count_for_reset_r_reg[0]_i_1 ),
        .Q(count_for_reset_r_reg[3]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[4] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[4]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[4]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[0]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[4]_i_1 ,\n_1_count_for_reset_r_reg[4]_i_1 ,\n_2_count_for_reset_r_reg[4]_i_1 ,\n_3_count_for_reset_r_reg[4]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_count_for_reset_r_reg[4]_i_1 ,\n_5_count_for_reset_r_reg[4]_i_1 ,\n_6_count_for_reset_r_reg[4]_i_1 ,\n_7_count_for_reset_r_reg[4]_i_1 }),
        .S({\n_0_count_for_reset_r[4]_i_2 ,\n_0_count_for_reset_r[4]_i_3 ,\n_0_count_for_reset_r[4]_i_4 ,\n_0_count_for_reset_r[4]_i_5 }));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[5] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[5]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[6] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_5_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[6]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[7] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_4_count_for_reset_r_reg[4]_i_1 ),
        .Q(count_for_reset_r_reg[7]),
        .R(cc_sync));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[8] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_7_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[8]),
        .R(cc_sync));
CARRY4 \count_for_reset_r_reg[8]_i_1 
       (.CI(\n_0_count_for_reset_r_reg[4]_i_1 ),
        .CO({\n_0_count_for_reset_r_reg[8]_i_1 ,\n_1_count_for_reset_r_reg[8]_i_1 ,\n_2_count_for_reset_r_reg[8]_i_1 ,\n_3_count_for_reset_r_reg[8]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_count_for_reset_r_reg[8]_i_1 ,\n_5_count_for_reset_r_reg[8]_i_1 ,\n_6_count_for_reset_r_reg[8]_i_1 ,\n_7_count_for_reset_r_reg[8]_i_1 }),
        .S({\n_0_count_for_reset_r[8]_i_2 ,\n_0_count_for_reset_r[8]_i_3 ,\n_0_count_for_reset_r[8]_i_4 ,\n_0_count_for_reset_r[8]_i_5 }));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \count_for_reset_r_reg[9] 
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(\n_6_count_for_reset_r_reg[8]_i_1 ),
        .Q(count_for_reset_r_reg[9]),
        .R(cc_sync));
LUT6 #(
    .INIT(64'h9D00000000000000)) 
     link_reset_0_i_1
       (.I0(n_0_link_reset_0_i_2),
        .I1(count_for_reset_r_reg[3]),
        .I2(count_for_reset_r_reg[0]),
        .I3(n_0_link_reset_0_i_3),
        .I4(n_0_link_reset_0_i_4),
        .I5(n_0_link_reset_0_i_5),
        .O(n_0_link_reset_0_i_1));
LUT2 #(
    .INIT(4'h7)) 
     link_reset_0_i_2
       (.I0(count_for_reset_r_reg[2]),
        .I1(count_for_reset_r_reg[1]),
        .O(n_0_link_reset_0_i_2));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     link_reset_0_i_3
       (.I0(count_for_reset_r_reg[10]),
        .I1(count_for_reset_r_reg[15]),
        .I2(count_for_reset_r_reg[17]),
        .I3(count_for_reset_r_reg[20]),
        .I4(count_for_reset_r_reg[16]),
        .I5(count_for_reset_r_reg[6]),
        .O(n_0_link_reset_0_i_3));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     link_reset_0_i_4
       (.I0(count_for_reset_r_reg[8]),
        .I1(count_for_reset_r_reg[7]),
        .I2(count_for_reset_r_reg[13]),
        .I3(count_for_reset_r_reg[21]),
        .I4(count_for_reset_r_reg[12]),
        .I5(count_for_reset_r_reg[23]),
        .O(n_0_link_reset_0_i_4));
LUT5 #(
    .INIT(32'h80000000)) 
     link_reset_0_i_5
       (.I0(count_for_reset_r_reg[4]),
        .I1(count_for_reset_r_reg[22]),
        .I2(count_for_reset_r_reg[5]),
        .I3(count_for_reset_r_reg[19]),
        .I4(n_0_link_reset_0_i_6),
        .O(n_0_link_reset_0_i_5));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     link_reset_0_i_6
       (.I0(count_for_reset_r_reg[11]),
        .I1(count_for_reset_r_reg[14]),
        .I2(count_for_reset_r_reg[9]),
        .I3(count_for_reset_r_reg[25]),
        .I4(count_for_reset_r_reg[24]),
        .I5(count_for_reset_r_reg[18]),
        .O(n_0_link_reset_0_i_6));
FDRE link_reset_0_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_link_reset_0_i_1),
        .Q(link_reset_0),
        .R(\<const0> ));
FDRE link_reset_r_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(link_reset_0),
        .Q(link_reset_out),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync rx_cc_cdc_sync
       (.O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .cc_sync(cc_sync),
        .init_clk_in(init_clk_in),
        .out(out),
        .rx_cc_extend_r2(rx_cc_extend_r2),
        .s_out_d1_cdc_to(s_out_d1_cdc_to),
        .s_out_d2(s_out_d2),
        .s_out_d3(s_out_d3),
        .s_out_d4(s_out_d4),
        .s_out_d5(s_out_d5),
        .s_out_d6(s_out_d6),
        .s_out_d7(s_out_d7));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     rx_cc_extend_r2_i_1
       (.I0(p_0_in[3]),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(\n_0_rx_cc_extend_r_reg[0] ),
        .I4(p_0_in[0]),
        .O(n_0_rx_cc_extend_r2_i_1));
FDRE rx_cc_extend_r2_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_0_rx_cc_extend_r2_i_1),
        .Q(rx_cc_extend_r2),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[0] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_0_in[0]),
        .Q(\n_0_rx_cc_extend_r_reg[0] ),
        .R(reset_lanes_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[1] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_0_in[1]),
        .Q(p_0_in[0]),
        .R(reset_lanes_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[2] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_0_in[2]),
        .Q(p_0_in[1]),
        .R(reset_lanes_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[3] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(p_0_in[3]),
        .Q(p_0_in[2]),
        .R(reset_lanes_i));
FDRE #(
    .INIT(1'b0)) 
     \rx_cc_extend_r_reg[4] 
       (.C(user_clk),
        .CE(\<const1> ),
        .D(rx_cc_i),
        .Q(p_0_in[3]),
        .R(reset_lanes_i));
endmodule

module aurora_8b10b_0aurora_8b10b_0_multi_gt
   (tx_lock,
    gt0_pllrefclklost_i,
    drprdy_out,
    txn,
    txp,
    rx_realign_i,
    O1,
    tx_out_clk,
    O2,
    drpdo_out,
    RXDATA,
    D,
    RXCHARISK,
    RXDISPERR,
    O90,
    O91,
    hard_err_gt0,
    O92,
    O93,
    O94,
    O95,
    O96,
    O97,
    O98,
    O99,
    O100,
    init_clk_in,
    cpll_reset_i,
    drpclk_in,
    drpen_in,
    drpwe_in,
    gt_refclk1,
    gt_rx_reset_i,
    gt_tx_reset_i,
    rxn,
    rxp,
    gt_qpllclk_quad2_in,
    gt_qpllrefclk_quad2_in,
    gt_rxdfelfhold_i,
    ena_comma_align_i,
    rx_polarity_i,
    gt_rxuserrdy_i,
    sync_clk,
    user_clk,
    power_down,
    gt_txuserrdy_i,
    drpdi_in,
    loopback,
    TXDATA,
    TXCHARISK,
    drpaddr_in,
    I1,
    I2,
    Q,
    I3,
    I4);
  output tx_lock;
  output gt0_pllrefclklost_i;
  output drprdy_out;
  output txn;
  output txp;
  output rx_realign_i;
  output O1;
  output tx_out_clk;
  output O2;
  output [15:0]drpdo_out;
  output [31:0]RXDATA;
  output [3:0]D;
  output [3:0]RXCHARISK;
  output [1:0]RXDISPERR;
  output O90;
  output O91;
  output hard_err_gt0;
  output [7:0]O92;
  output [7:0]O93;
  output O94;
  output O95;
  output O96;
  output O97;
  output O98;
  output O99;
  output O100;
  input init_clk_in;
  input cpll_reset_i;
  input drpclk_in;
  input drpen_in;
  input drpwe_in;
  input gt_refclk1;
  input gt_rx_reset_i;
  input gt_tx_reset_i;
  input rxn;
  input rxp;
  input gt_qpllclk_quad2_in;
  input gt_qpllrefclk_quad2_in;
  input gt_rxdfelfhold_i;
  input ena_comma_align_i;
  input rx_polarity_i;
  input gt_rxuserrdy_i;
  input sync_clk;
  input user_clk;
  input power_down;
  input gt_txuserrdy_i;
  input [15:0]drpdi_in;
  input [2:0]loopback;
  input [31:0]TXDATA;
  input [3:0]TXCHARISK;
  input [8:0]drpaddr_in;
  input I1;
  input I2;
  input [0:0]Q;
  input [7:0]I3;
  input I4;

  wire [3:0]D;
  wire I1;
  wire I2;
  wire [7:0]I3;
  wire I4;
  wire O1;
  wire O100;
  wire O2;
  wire O90;
  wire O91;
  wire [7:0]O92;
  wire [7:0]O93;
  wire O94;
  wire O95;
  wire O96;
  wire O97;
  wire O98;
  wire O99;
  wire [0:0]Q;
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
  wire drprdy_out;
  wire drpwe_in;
  wire ena_comma_align_i;
  wire gt0_pllrefclklost_i;
  wire gt_qpllclk_quad2_in;
  wire gt_qpllrefclk_quad2_in;
  wire gt_refclk1;
  wire gt_rx_reset_i;
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
  wire sync_clk;
  wire tx_lock;
  wire tx_out_clk;
  wire txn;
  wire txp;
  wire user_clk;

aurora_8b10b_0aurora_8b10b_0_gt gt0_aurora_8b10b_0_i
       (.D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .O1(O1),
        .O100(O100),
        .O2(O2),
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
        .Q(Q),
        .RXCHARISK(RXCHARISK),
        .RXDATA(RXDATA),
        .RXDISPERR(RXDISPERR),
        .TXCHARISK(TXCHARISK),
        .TXDATA(TXDATA),
        .cpll_reset_i(cpll_reset_i),
        .drpaddr_in(drpaddr_in),
        .drpclk_in(drpclk_in),
        .drpdi_in(drpdi_in),
        .drpdo_out(drpdo_out),
        .drpen_in(drpen_in),
        .drprdy_out(drprdy_out),
        .drpwe_in(drpwe_in),
        .ena_comma_align_i(ena_comma_align_i),
        .gt0_pllrefclklost_i(gt0_pllrefclklost_i),
        .gt_qpllclk_quad2_in(gt_qpllclk_quad2_in),
        .gt_qpllrefclk_quad2_in(gt_qpllrefclk_quad2_in),
        .gt_refclk1(gt_refclk1),
        .gt_rx_reset_i(gt_rx_reset_i),
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
        .sync_clk(sync_clk),
        .tx_lock(tx_lock),
        .tx_out_clk(tx_out_clk),
        .txn(txn),
        .txp(txp),
        .user_clk(user_clk));
endmodule

module aurora_8b10b_0aurora_8b10b_0_rx_startup_fsm
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
    gt_rxuserrdy_i,
    gt_rxdfelfhold_i,
    GTRXRESET,
    I1,
    I2,
    user_clk,
    init_clk_in,
    rxfsm_rxresetdone_r,
    rxfsm_data_valid_r,
    gt0_pllrefclklost_i,
    rx_cdrlocked,
    rxfsm_soft_reset_r,
    gt_txuserrdy_i);
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
  output gt_rxuserrdy_i;
  output gt_rxdfelfhold_i;
  output GTRXRESET;
  input I1;
  input I2;
  input user_clk;
  input init_clk_in;
  input rxfsm_rxresetdone_r;
  input rxfsm_data_valid_r;
  input gt0_pllrefclklost_i;
  input rx_cdrlocked;
  input rxfsm_soft_reset_r;
  input gt_txuserrdy_i;

  wire \<const0> ;
  wire \<const1> ;
  wire GTRXRESET;
  wire I1;
  wire I2;
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
  wire [31:0]adapt_count_reg;
  wire adapt_count_reset;
  wire gt0_pllrefclklost_i;
  wire gt_rxdfelfhold_i;
  wire gt_rxuserrdy_i;
  wire gt_txuserrdy_i;
  wire init_clk_in;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire \n_0_FSM_onehot_rx_state[1]_i_2 ;
  wire \n_0_FSM_onehot_rx_state[1]_i_4 ;
  wire \n_0_FSM_onehot_rx_state[1]_i_5 ;
  wire \n_0_FSM_onehot_rx_state[1]_i_6 ;
  wire \n_0_FSM_onehot_rx_state[2]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[2]_i_2 ;
  wire \n_0_FSM_onehot_rx_state[2]_i_3 ;
  wire \n_0_FSM_onehot_rx_state[3]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[3]_i_2 ;
  wire \n_0_FSM_onehot_rx_state[4]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[5]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[6]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[6]_i_2 ;
  wire \n_0_FSM_onehot_rx_state[7]_i_2 ;
  wire \n_0_FSM_onehot_rx_state[7]_i_3 ;
  wire \n_0_FSM_onehot_rx_state[8]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[8]_i_10 ;
  wire \n_0_FSM_onehot_rx_state[8]_i_11 ;
  wire \n_0_FSM_onehot_rx_state[8]_i_12 ;
  wire \n_0_FSM_onehot_rx_state[8]_i_15 ;
  wire \n_0_FSM_onehot_rx_state[8]_i_16 ;
  wire \n_0_FSM_onehot_rx_state[8]_i_7 ;
  wire \n_0_FSM_onehot_rx_state_reg[0] ;
  wire \n_0_FSM_onehot_rx_state_reg[1] ;
  wire \n_0_FSM_onehot_rx_state_reg[2] ;
  wire \n_0_FSM_onehot_rx_state_reg[3] ;
  wire \n_0_FSM_onehot_rx_state_reg[4] ;
  wire \n_0_FSM_onehot_rx_state_reg[5] ;
  wire \n_0_FSM_onehot_rx_state_reg[6] ;
  wire \n_0_FSM_onehot_rx_state_reg[7] ;
  wire \n_0_FSM_onehot_rx_state_reg[8] ;
  wire n_0_GTRXRESET_i_1;
  wire n_0_GTRXRESET_i_2;
  wire n_0_GTRXRESET_i_3;
  wire n_0_RXDFEAGCHOLD_i_1;
  wire n_0_RXDFEAGCHOLD_i_2;
  wire n_0_RXUSERRDY_i_1;
  wire n_0_RXUSERRDY_i_2;
  wire \n_0_adapt_count[0]_i_1 ;
  wire \n_0_adapt_count[0]_i_3 ;
  wire \n_0_adapt_count[0]_i_4 ;
  wire \n_0_adapt_count[0]_i_5 ;
  wire \n_0_adapt_count[0]_i_6 ;
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
  wire n_0_adapt_count_reset_i_3;
  wire n_0_check_tlock_max_i_1;
  wire n_0_check_tlock_max_i_2;
  wire n_0_check_tlock_max_reg;
  wire \n_0_init_wait_count[7]_i_1__0 ;
  wire \n_0_init_wait_count[7]_i_3__0 ;
  wire \n_0_init_wait_count[7]_i_4__0 ;
  wire n_0_init_wait_done_i_1__0;
  wire \n_0_mmcm_lock_count[7]_i_2__0 ;
  wire \n_0_mmcm_lock_count[7]_i_3__0 ;
  wire \n_0_mmcm_lock_count[9]_i_2__0 ;
  wire n_0_mmcm_lock_reclocked_i_2__0;
  wire n_0_reset_time_out_i_2__0;
  wire n_0_reset_time_out_i_6;
  wire n_0_reset_time_out_i_7;
  wire n_0_reset_time_out_reg;
  wire n_0_run_phase_alignment_int_i_1__0;
  wire n_0_run_phase_alignment_int_i_2;
  wire n_0_run_phase_alignment_int_reg;
  wire n_0_rx_fsm_reset_done_int_cdc_sync;
  wire n_0_rx_fsm_reset_done_int_i_2;
  wire n_0_time_out_100us_i_1;
  wire n_0_time_out_100us_i_2;
  wire n_0_time_out_100us_i_3;
  wire n_0_time_out_100us_i_4;
  wire n_0_time_out_100us_i_5;
  wire n_0_time_out_100us_i_6;
  wire n_0_time_out_1us_i_1;
  wire n_0_time_out_1us_i_2;
  wire n_0_time_out_1us_i_3;
  wire n_0_time_out_1us_i_4;
  wire n_0_time_out_1us_i_5;
  wire n_0_time_out_1us_i_6;
  wire n_0_time_out_2ms_i_1;
  wire n_0_time_out_2ms_i_2__0;
  wire n_0_time_out_2ms_i_3;
  wire n_0_time_out_2ms_i_4;
  wire n_0_time_out_2ms_i_5;
  wire n_0_time_out_adapt_i_1;
  wire n_0_time_out_adapt_i_2;
  wire n_0_time_out_adapt_i_3;
  wire n_0_time_out_adapt_i_4;
  wire n_0_time_out_adapt_i_5;
  wire n_0_time_out_adapt_i_6;
  wire n_0_time_out_adapt_i_7;
  wire n_0_time_out_adapt_i_8;
  wire \n_0_time_out_counter[0]_i_1 ;
  wire \n_0_time_out_counter[0]_i_3__0 ;
  wire \n_0_time_out_counter[0]_i_4__0 ;
  wire \n_0_time_out_counter[0]_i_5__0 ;
  wire \n_0_time_out_counter[0]_i_6__0 ;
  wire \n_0_time_out_counter[12]_i_2__0 ;
  wire \n_0_time_out_counter[12]_i_3__0 ;
  wire \n_0_time_out_counter[12]_i_4__0 ;
  wire \n_0_time_out_counter[12]_i_5__0 ;
  wire \n_0_time_out_counter[16]_i_2__0 ;
  wire \n_0_time_out_counter[16]_i_3__0 ;
  wire \n_0_time_out_counter[16]_i_4__0 ;
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
  wire n_0_time_out_wait_bypass_i_2__0;
  wire n_0_time_out_wait_bypass_i_3__0;
  wire n_0_time_out_wait_bypass_reg;
  wire n_0_time_tlock_max_i_1;
  wire n_0_time_tlock_max_i_3;
  wire n_0_time_tlock_max_i_4__0;
  wire n_0_time_tlock_max_i_5;
  wire \n_0_wait_bypass_count[0]_i_4__0 ;
  wire \n_0_wait_bypass_count[0]_i_5__0 ;
  wire \n_0_wait_bypass_count[0]_i_6__0 ;
  wire \n_0_wait_bypass_count[0]_i_7__0 ;
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
  wire n_19_cplllock_cdc_sync;
  wire n_19_data_valid_cdc_sync;
  wire n_19_mmcm_lock_reclocked_cdc_sync;
  wire n_19_run_phase_alignment_int_cdc_sync;
  wire n_19_time_out_wait_bypass_cdc_sync;
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
  wire n_20_cplllock_cdc_sync;
  wire n_20_data_valid_cdc_sync;
  wire n_20_mmcm_lock_reclocked_cdc_sync;
  wire n_20_run_phase_alignment_int_cdc_sync;
  wire n_20_rx_fsm_reset_done_int_cdc_sync;
  wire n_20_rxresetdone_cdc_sync;
  wire n_20_time_out_wait_bypass_cdc_sync;
  wire n_21_cplllock_cdc_sync;
  wire n_21_data_valid_cdc_sync;
  wire n_22_data_valid_cdc_sync;
  wire n_23_data_valid_cdc_sync;
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
  wire [7:0]p_0_in__0;
  wire [9:0]p_0_in__2;
  wire recclk_mon_count_reset;
  wire rx_cdrlocked;
  wire rx_fsm_reset_done_int;
  wire [2:2]rx_state_reg;
  wire rxfsm_data_valid_r;
  wire rxfsm_rxresetdone_r;
  wire rxfsm_soft_reset_r;
  wire rxresetdone_s3;
  wire s_out_d1_cdc_to_42;
  wire s_out_d1_cdc_to_49;
  wire s_out_d1_cdc_to_56;
  wire s_out_d1_cdc_to_63;
  wire s_out_d1_cdc_to_70;
  wire s_out_d1_cdc_to_77;
  wire s_out_d1_cdc_to_84;
  wire s_out_d1_cdc_to_91;
  wire s_out_d2_43;
  wire s_out_d2_50;
  wire s_out_d2_57;
  wire s_out_d2_64;
  wire s_out_d2_71;
  wire s_out_d2_78;
  wire s_out_d2_85;
  wire s_out_d2_92;
  wire s_out_d3_44;
  wire s_out_d3_51;
  wire s_out_d3_58;
  wire s_out_d3_65;
  wire s_out_d3_72;
  wire s_out_d3_79;
  wire s_out_d3_86;
  wire s_out_d3_93;
  wire s_out_d4_45;
  wire s_out_d4_52;
  wire s_out_d4_59;
  wire s_out_d4_66;
  wire s_out_d4_73;
  wire s_out_d4_80;
  wire s_out_d4_87;
  wire s_out_d4_94;
  wire s_out_d5_46;
  wire s_out_d5_53;
  wire s_out_d5_60;
  wire s_out_d5_67;
  wire s_out_d5_74;
  wire s_out_d5_81;
  wire s_out_d5_88;
  wire s_out_d5_95;
  wire s_out_d6_47;
  wire s_out_d6_54;
  wire s_out_d6_61;
  wire s_out_d6_68;
  wire s_out_d6_75;
  wire s_out_d6_82;
  wire s_out_d6_89;
  wire s_out_d6_96;
  wire s_out_d7_48;
  wire s_out_d7_55;
  wire s_out_d7_62;
  wire s_out_d7_69;
  wire s_out_d7_76;
  wire s_out_d7_83;
  wire s_out_d7_90;
  wire s_out_d7_97;
  wire time_out_100us;
  wire time_out_1us;
  wire time_out_2ms;
  wire time_out_adapt;
  wire [18:0]time_out_counter_reg;
  wire time_tlock_max;
  wire time_tlock_max0;
  wire user_clk;
  wire [12:0]wait_bypass_count_reg;
  wire [3:3]\NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'h5530550055005500)) 
     \FSM_onehot_rx_state[1]_i_2 
       (.I0(\n_0_FSM_onehot_rx_state[1]_i_5 ),
        .I1(\n_0_FSM_onehot_rx_state[2]_i_2 ),
        .I2(time_out_2ms),
        .I3(\n_0_FSM_onehot_rx_state_reg[0] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I5(\n_0_FSM_onehot_rx_state[8]_i_12 ),
        .O(\n_0_FSM_onehot_rx_state[1]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEF00)) 
     \FSM_onehot_rx_state[1]_i_4 
       (.I0(\n_0_FSM_onehot_rx_state[2]_i_2 ),
        .I1(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I2(\n_0_FSM_onehot_rx_state[8]_i_16 ),
        .I3(\n_0_FSM_onehot_rx_state_reg[4] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I5(\n_0_FSM_onehot_rx_state[7]_i_3 ),
        .O(\n_0_FSM_onehot_rx_state[1]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_rx_state[1]_i_5 
       (.I0(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[4] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I5(\n_0_FSM_onehot_rx_state_reg[3] ),
        .O(\n_0_FSM_onehot_rx_state[1]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \FSM_onehot_rx_state[1]_i_6 
       (.I0(n_0_reset_time_out_reg),
        .I1(time_out_2ms),
        .O(\n_0_FSM_onehot_rx_state[1]_i_6 ));
LUT6 #(
    .INIT(64'h0000000100000000)) 
     \FSM_onehot_rx_state[2]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[2]_i_2 ),
        .I1(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I2(\n_0_FSM_onehot_rx_state[7]_i_3 ),
        .I3(\n_0_FSM_onehot_rx_state[2]_i_3 ),
        .I4(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I5(\n_0_FSM_onehot_rx_state_reg[1] ),
        .O(\n_0_FSM_onehot_rx_state[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_rx_state[2]_i_2 
       (.I0(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[6] ),
        .O(\n_0_FSM_onehot_rx_state[2]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_rx_state[2]_i_3 
       (.I0(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[4] ),
        .O(\n_0_FSM_onehot_rx_state[2]_i_3 ));
LUT6 #(
    .INIT(64'h0004000000000000)) 
     \FSM_onehot_rx_state[3]_i_1 
       (.I0(time_out_2ms),
        .I1(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[1] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[0] ),
        .I4(\n_0_FSM_onehot_rx_state[8]_i_12 ),
        .I5(\n_0_FSM_onehot_rx_state[3]_i_2 ),
        .O(\n_0_FSM_onehot_rx_state[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \FSM_onehot_rx_state[3]_i_2 
       (.I0(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[7] ),
        .O(\n_0_FSM_onehot_rx_state[3]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT4 #(
    .INIT(16'h0008)) 
     \FSM_onehot_rx_state[4]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[6]_i_2 ),
        .I1(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[4] ),
        .O(\n_0_FSM_onehot_rx_state[4]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000008A00)) 
     \FSM_onehot_rx_state[5]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[6]_i_2 ),
        .I1(n_0_reset_time_out_reg),
        .I2(time_tlock_max),
        .I3(\n_0_FSM_onehot_rx_state_reg[4] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I5(\n_0_FSM_onehot_rx_state_reg[5] ),
        .O(\n_0_FSM_onehot_rx_state[5]_i_1 ));
LUT6 #(
    .INIT(64'h000000000000A200)) 
     \FSM_onehot_rx_state[6]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[6]_i_2 ),
        .I1(time_out_2ms),
        .I2(n_0_reset_time_out_reg),
        .I3(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I5(\n_0_FSM_onehot_rx_state_reg[4] ),
        .O(\n_0_FSM_onehot_rx_state[6]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_rx_state[6]_i_2 
       (.I0(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[0] ),
        .I5(\n_0_FSM_onehot_rx_state_reg[1] ),
        .O(\n_0_FSM_onehot_rx_state[6]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_rx_state[7]_i_2 
       (.I0(\n_0_FSM_onehot_rx_state_reg[1] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[7] ),
        .O(\n_0_FSM_onehot_rx_state[7]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_rx_state[7]_i_3 
       (.I0(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[0] ),
        .O(\n_0_FSM_onehot_rx_state[7]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFEAAAAAAAA)) 
     \FSM_onehot_rx_state[8]_i_1 
       (.I0(rxfsm_soft_reset_r),
        .I1(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I4(rx_state_reg),
        .I5(gt0_pllrefclklost_i),
        .O(\n_0_FSM_onehot_rx_state[8]_i_1 ));
LUT6 #(
    .INIT(64'h000000000000EEE2)) 
     \FSM_onehot_rx_state[8]_i_10 
       (.I0(init_wait_done),
        .I1(rx_state_reg),
        .I2(\n_0_FSM_onehot_rx_state[8]_i_16 ),
        .I3(mmcm_lock_reclocked),
        .I4(n_0_RXUSERRDY_i_2),
        .I5(\n_0_FSM_onehot_rx_state[8]_i_7 ),
        .O(\n_0_FSM_onehot_rx_state[8]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \FSM_onehot_rx_state[8]_i_11 
       (.I0(\n_0_FSM_onehot_rx_state_reg[1] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[0] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[2] ),
        .O(\n_0_FSM_onehot_rx_state[8]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \FSM_onehot_rx_state[8]_i_12 
       (.I0(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[4] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[3] ),
        .O(\n_0_FSM_onehot_rx_state[8]_i_12 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_rx_state[8]_i_15 
       (.I0(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[4] ),
        .O(\n_0_FSM_onehot_rx_state[8]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FSM_onehot_rx_state[8]_i_16 
       (.I0(time_tlock_max),
        .I1(n_0_reset_time_out_reg),
        .O(\n_0_FSM_onehot_rx_state[8]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_rx_state[8]_i_4 
       (.I0(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[4] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[5] ),
        .O(rx_state_reg));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_rx_state[8]_i_7 
       (.I0(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[1] ),
        .O(\n_0_FSM_onehot_rx_state[8]_i_7 ));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_rx_state_reg[0] 
       (.C(init_clk_in),
        .CE(n_19_data_valid_cdc_sync),
        .D(\<const0> ),
        .Q(\n_0_FSM_onehot_rx_state_reg[0] ),
        .S(\n_0_FSM_onehot_rx_state[8]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[1] 
       (.C(init_clk_in),
        .CE(n_19_data_valid_cdc_sync),
        .D(n_20_time_out_wait_bypass_cdc_sync),
        .Q(\n_0_FSM_onehot_rx_state_reg[1] ),
        .R(\n_0_FSM_onehot_rx_state[8]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[2] 
       (.C(init_clk_in),
        .CE(n_19_data_valid_cdc_sync),
        .D(\n_0_FSM_onehot_rx_state[2]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[2] ),
        .R(\n_0_FSM_onehot_rx_state[8]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[3] 
       (.C(init_clk_in),
        .CE(n_19_data_valid_cdc_sync),
        .D(\n_0_FSM_onehot_rx_state[3]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[3] ),
        .R(\n_0_FSM_onehot_rx_state[8]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[4] 
       (.C(init_clk_in),
        .CE(n_19_data_valid_cdc_sync),
        .D(\n_0_FSM_onehot_rx_state[4]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[4] ),
        .R(\n_0_FSM_onehot_rx_state[8]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[5] 
       (.C(init_clk_in),
        .CE(n_19_data_valid_cdc_sync),
        .D(\n_0_FSM_onehot_rx_state[5]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[5] ),
        .R(\n_0_FSM_onehot_rx_state[8]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[6] 
       (.C(init_clk_in),
        .CE(n_19_data_valid_cdc_sync),
        .D(\n_0_FSM_onehot_rx_state[6]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[6] ),
        .R(\n_0_FSM_onehot_rx_state[8]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[7] 
       (.C(init_clk_in),
        .CE(n_19_data_valid_cdc_sync),
        .D(n_19_time_out_wait_bypass_cdc_sync),
        .Q(\n_0_FSM_onehot_rx_state_reg[7] ),
        .R(\n_0_FSM_onehot_rx_state[8]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[8] 
       (.C(init_clk_in),
        .CE(n_19_data_valid_cdc_sync),
        .D(n_20_data_valid_cdc_sync),
        .Q(\n_0_FSM_onehot_rx_state_reg[8] ),
        .R(\n_0_FSM_onehot_rx_state[8]_i_1 ));
GND GND
       (.G(\<const0> ));
LUT6 #(
    .INIT(64'h000000002AEA2A2A)) 
     GTRXRESET_i_1
       (.I0(GTRXRESET),
        .I1(\n_0_FSM_onehot_rx_state[8]_i_7 ),
        .I2(n_0_adapt_count_reset_i_3),
        .I3(n_0_GTRXRESET_i_2),
        .I4(n_0_GTRXRESET_i_3),
        .I5(\n_0_FSM_onehot_rx_state[8]_i_1 ),
        .O(n_0_GTRXRESET_i_1));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT2 #(
    .INIT(4'hE)) 
     GTRXRESET_i_2
       (.I0(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[2] ),
        .O(n_0_GTRXRESET_i_2));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT2 #(
    .INIT(4'h1)) 
     GTRXRESET_i_3
       (.I0(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[6] ),
        .O(n_0_GTRXRESET_i_3));
FDRE #(
    .INIT(1'b0)) 
     GTRXRESET_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_GTRXRESET_i_1),
        .Q(GTRXRESET),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000AAAABAAA)) 
     RXDFEAGCHOLD_i_1
       (.I0(gt_rxdfelfhold_i),
        .I1(n_0_RXDFEAGCHOLD_i_2),
        .I2(time_out_adapt),
        .I3(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I4(rx_state_reg),
        .I5(\n_0_FSM_onehot_rx_state[8]_i_1 ),
        .O(n_0_RXDFEAGCHOLD_i_1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     RXDFEAGCHOLD_i_2
       (.I0(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[1] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I5(\n_0_FSM_onehot_rx_state_reg[5] ),
        .O(n_0_RXDFEAGCHOLD_i_2));
FDRE #(
    .INIT(1'b0)) 
     RXDFEAGCHOLD_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_RXDFEAGCHOLD_i_1),
        .Q(gt_rxdfelfhold_i),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000BAAA8A8A)) 
     RXUSERRDY_i_1
       (.I0(gt_rxuserrdy_i),
        .I1(n_0_RXUSERRDY_i_2),
        .I2(\n_0_FSM_onehot_rx_state[8]_i_7 ),
        .I3(gt_txuserrdy_i),
        .I4(rx_state_reg),
        .I5(\n_0_FSM_onehot_rx_state[8]_i_1 ),
        .O(n_0_RXUSERRDY_i_1));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     RXUSERRDY_i_2
       (.I0(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[6] ),
        .O(n_0_RXUSERRDY_i_2));
FDRE #(
    .INIT(1'b0)) 
     RXUSERRDY_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_RXUSERRDY_i_1),
        .Q(gt_rxuserrdy_i),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h1)) 
     \adapt_count[0]_i_1 
       (.I0(n_0_time_out_adapt_i_2),
        .O(\n_0_adapt_count[0]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[0]_i_3 
       (.I0(adapt_count_reg[3]),
        .O(\n_0_adapt_count[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[0]_i_4 
       (.I0(adapt_count_reg[2]),
        .O(\n_0_adapt_count[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_count[0]_i_5 
       (.I0(adapt_count_reg[1]),
        .O(\n_0_adapt_count[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \adapt_count[0]_i_6 
       (.I0(adapt_count_reg[0]),
        .O(\n_0_adapt_count[0]_i_6 ));
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
(* counter = "21" *) 
   FDRE \adapt_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[0]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\n_0_adapt_count_reg[0]_i_2 ,\n_1_adapt_count_reg[0]_i_2 ,\n_2_adapt_count_reg[0]_i_2 ,\n_3_adapt_count_reg[0]_i_2 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_adapt_count_reg[0]_i_2 ,\n_5_adapt_count_reg[0]_i_2 ,\n_6_adapt_count_reg[0]_i_2 ,\n_7_adapt_count_reg[0]_i_2 }),
        .S({\n_0_adapt_count[0]_i_3 ,\n_0_adapt_count[0]_i_4 ,\n_0_adapt_count[0]_i_5 ,\n_0_adapt_count[0]_i_6 }));
(* counter = "21" *) 
   FDRE \adapt_count_reg[10] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[10]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[11] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[11]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[12] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[12]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[12]_i_1 
       (.CI(\n_0_adapt_count_reg[8]_i_1 ),
        .CO({\n_0_adapt_count_reg[12]_i_1 ,\n_1_adapt_count_reg[12]_i_1 ,\n_2_adapt_count_reg[12]_i_1 ,\n_3_adapt_count_reg[12]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_adapt_count_reg[12]_i_1 ,\n_5_adapt_count_reg[12]_i_1 ,\n_6_adapt_count_reg[12]_i_1 ,\n_7_adapt_count_reg[12]_i_1 }),
        .S({\n_0_adapt_count[12]_i_2 ,\n_0_adapt_count[12]_i_3 ,\n_0_adapt_count[12]_i_4 ,\n_0_adapt_count[12]_i_5 }));
(* counter = "21" *) 
   FDRE \adapt_count_reg[13] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[13]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[14] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[14]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[15] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[12]_i_1 ),
        .Q(adapt_count_reg[15]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[16] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[16]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[16]_i_1 
       (.CI(\n_0_adapt_count_reg[12]_i_1 ),
        .CO({\n_0_adapt_count_reg[16]_i_1 ,\n_1_adapt_count_reg[16]_i_1 ,\n_2_adapt_count_reg[16]_i_1 ,\n_3_adapt_count_reg[16]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_adapt_count_reg[16]_i_1 ,\n_5_adapt_count_reg[16]_i_1 ,\n_6_adapt_count_reg[16]_i_1 ,\n_7_adapt_count_reg[16]_i_1 }),
        .S({\n_0_adapt_count[16]_i_2 ,\n_0_adapt_count[16]_i_3 ,\n_0_adapt_count[16]_i_4 ,\n_0_adapt_count[16]_i_5 }));
(* counter = "21" *) 
   FDRE \adapt_count_reg[17] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[17]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[18] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[18]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[19] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[16]_i_1 ),
        .Q(adapt_count_reg[19]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[1]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[20] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[20]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[20]_i_1 
       (.CI(\n_0_adapt_count_reg[16]_i_1 ),
        .CO({\n_0_adapt_count_reg[20]_i_1 ,\n_1_adapt_count_reg[20]_i_1 ,\n_2_adapt_count_reg[20]_i_1 ,\n_3_adapt_count_reg[20]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_adapt_count_reg[20]_i_1 ,\n_5_adapt_count_reg[20]_i_1 ,\n_6_adapt_count_reg[20]_i_1 ,\n_7_adapt_count_reg[20]_i_1 }),
        .S({\n_0_adapt_count[20]_i_2 ,\n_0_adapt_count[20]_i_3 ,\n_0_adapt_count[20]_i_4 ,\n_0_adapt_count[20]_i_5 }));
(* counter = "21" *) 
   FDRE \adapt_count_reg[21] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[21]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[22] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[22]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[23] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[20]_i_1 ),
        .Q(adapt_count_reg[23]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[24] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[24]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[24]_i_1 
       (.CI(\n_0_adapt_count_reg[20]_i_1 ),
        .CO({\n_0_adapt_count_reg[24]_i_1 ,\n_1_adapt_count_reg[24]_i_1 ,\n_2_adapt_count_reg[24]_i_1 ,\n_3_adapt_count_reg[24]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_adapt_count_reg[24]_i_1 ,\n_5_adapt_count_reg[24]_i_1 ,\n_6_adapt_count_reg[24]_i_1 ,\n_7_adapt_count_reg[24]_i_1 }),
        .S({\n_0_adapt_count[24]_i_2 ,\n_0_adapt_count[24]_i_3 ,\n_0_adapt_count[24]_i_4 ,\n_0_adapt_count[24]_i_5 }));
(* counter = "21" *) 
   FDRE \adapt_count_reg[25] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[25]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[26] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[26]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[27] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[24]_i_1 ),
        .Q(adapt_count_reg[27]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[28] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[28]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[28]_i_1 
       (.CI(\n_0_adapt_count_reg[24]_i_1 ),
        .CO({\NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED [3],\n_1_adapt_count_reg[28]_i_1 ,\n_2_adapt_count_reg[28]_i_1 ,\n_3_adapt_count_reg[28]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_adapt_count_reg[28]_i_1 ,\n_5_adapt_count_reg[28]_i_1 ,\n_6_adapt_count_reg[28]_i_1 ,\n_7_adapt_count_reg[28]_i_1 }),
        .S({\n_0_adapt_count[28]_i_2 ,\n_0_adapt_count[28]_i_3 ,\n_0_adapt_count[28]_i_4 ,\n_0_adapt_count[28]_i_5 }));
(* counter = "21" *) 
   FDRE \adapt_count_reg[29] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[29]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[2]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[30] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[30]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[31] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[28]_i_1 ),
        .Q(adapt_count_reg[31]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[0]_i_2 ),
        .Q(adapt_count_reg[3]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[4]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[4]_i_1 
       (.CI(\n_0_adapt_count_reg[0]_i_2 ),
        .CO({\n_0_adapt_count_reg[4]_i_1 ,\n_1_adapt_count_reg[4]_i_1 ,\n_2_adapt_count_reg[4]_i_1 ,\n_3_adapt_count_reg[4]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_adapt_count_reg[4]_i_1 ,\n_5_adapt_count_reg[4]_i_1 ,\n_6_adapt_count_reg[4]_i_1 ,\n_7_adapt_count_reg[4]_i_1 }),
        .S({\n_0_adapt_count[4]_i_2 ,\n_0_adapt_count[4]_i_3 ,\n_0_adapt_count[4]_i_4 ,\n_0_adapt_count[4]_i_5 }));
(* counter = "21" *) 
   FDRE \adapt_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[5]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_5_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[6]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_4_adapt_count_reg[4]_i_1 ),
        .Q(adapt_count_reg[7]),
        .R(recclk_mon_count_reset));
(* counter = "21" *) 
   FDRE \adapt_count_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_7_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[8]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_count_reg[8]_i_1 
       (.CI(\n_0_adapt_count_reg[4]_i_1 ),
        .CO({\n_0_adapt_count_reg[8]_i_1 ,\n_1_adapt_count_reg[8]_i_1 ,\n_2_adapt_count_reg[8]_i_1 ,\n_3_adapt_count_reg[8]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_adapt_count_reg[8]_i_1 ,\n_5_adapt_count_reg[8]_i_1 ,\n_6_adapt_count_reg[8]_i_1 ,\n_7_adapt_count_reg[8]_i_1 }),
        .S({\n_0_adapt_count[8]_i_2 ,\n_0_adapt_count[8]_i_3 ,\n_0_adapt_count[8]_i_4 ,\n_0_adapt_count[8]_i_5 }));
(* counter = "21" *) 
   FDRE \adapt_count_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_adapt_count[0]_i_1 ),
        .D(\n_6_adapt_count_reg[8]_i_1 ),
        .Q(adapt_count_reg[9]),
        .R(recclk_mon_count_reset));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     adapt_count_reset_i_2
       (.I0(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[3] ),
        .O(adapt_count_reset));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     adapt_count_reset_i_3
       (.I0(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[4] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[6] ),
        .O(n_0_adapt_count_reset_i_3));
FDRE #(
    .INIT(1'b0)) 
     adapt_count_reset_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_21_cplllock_cdc_sync),
        .Q(recclk_mon_count_reset),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000AAA8ABAA)) 
     check_tlock_max_i_1
       (.I0(n_0_check_tlock_max_reg),
        .I1(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I2(n_0_check_tlock_max_i_2),
        .I3(rx_state_reg),
        .I4(\n_0_FSM_onehot_rx_state[8]_i_7 ),
        .I5(\n_0_FSM_onehot_rx_state[8]_i_1 ),
        .O(n_0_check_tlock_max_i_1));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     check_tlock_max_i_2
       (.I0(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[3] ),
        .O(n_0_check_tlock_max_i_2));
FDRE #(
    .INIT(1'b0)) 
     check_tlock_max_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_check_tlock_max_i_1),
        .Q(n_0_check_tlock_max_reg),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_7 cplllock_cdc_sync
       (.I1(\n_0_FSM_onehot_rx_state[8]_i_7 ),
        .I2(I2),
        .I3(n_0_check_tlock_max_i_2),
        .I4(n_0_adapt_count_reset_i_3),
        .I5(\n_0_FSM_onehot_rx_state[8]_i_1 ),
        .O1(n_19_cplllock_cdc_sync),
        .O2(n_20_cplllock_cdc_sync),
        .O3(n_21_cplllock_cdc_sync),
        .O78(O78),
        .O79(O79),
        .O80(O80),
        .O81(O81),
        .O82(O82),
        .O83(O83),
        .adapt_count_reset(adapt_count_reset),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .recclk_mon_count_reset(recclk_mon_count_reset),
        .rx_state_reg(rx_state_reg),
        .s_out_d1_cdc_to_84(s_out_d1_cdc_to_84),
        .s_out_d2_85(s_out_d2_85),
        .s_out_d3_86(s_out_d3_86),
        .s_out_d4_87(s_out_d4_87),
        .s_out_d5_88(s_out_d5_88),
        .s_out_d6_89(s_out_d6_89),
        .s_out_d7_90(s_out_d7_90),
        .time_out_2ms(time_out_2ms));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_4 data_valid_cdc_sync
       (.D(n_20_data_valid_cdc_sync),
        .E(n_19_data_valid_cdc_sync),
        .I1(n_20_rxresetdone_cdc_sync),
        .I10(\n_0_FSM_onehot_rx_state[8]_i_12 ),
        .I11(n_0_reset_time_out_i_2__0),
        .I12(n_19_cplllock_cdc_sync),
        .I13(\n_0_FSM_onehot_rx_state[8]_i_1 ),
        .I14(n_0_rx_fsm_reset_done_int_i_2),
        .I2(\n_0_FSM_onehot_rx_state[8]_i_7 ),
        .I3(n_20_cplllock_cdc_sync),
        .I4(\n_0_FSM_onehot_rx_state[8]_i_10 ),
        .I5(\n_0_FSM_onehot_rx_state[2]_i_2 ),
        .I6(n_0_GTRXRESET_i_2),
        .I7(n_0_check_tlock_max_i_2),
        .I8(n_0_reset_time_out_reg),
        .I9(\n_0_FSM_onehot_rx_state[8]_i_11 ),
        .O1(n_21_data_valid_cdc_sync),
        .O2(n_22_data_valid_cdc_sync),
        .O3(n_23_data_valid_cdc_sync),
        .O72(O72),
        .O73(O73),
        .O74(O74),
        .O75(O75),
        .O76(O76),
        .O77(O77),
        .Q({\n_0_FSM_onehot_rx_state_reg[8] ,\n_0_FSM_onehot_rx_state_reg[7] ,\n_0_FSM_onehot_rx_state_reg[6] ,\n_0_FSM_onehot_rx_state_reg[5] ,\n_0_FSM_onehot_rx_state_reg[4] ,\n_0_FSM_onehot_rx_state_reg[3] ,\n_0_FSM_onehot_rx_state_reg[2] }),
        .adapt_count_reset(adapt_count_reset),
        .init_clk_in(init_clk_in),
        .rx_cdrlocked(rx_cdrlocked),
        .rx_fsm_reset_done_int(rx_fsm_reset_done_int),
        .rx_state_reg(rx_state_reg),
        .rxfsm_data_valid_r(rxfsm_data_valid_r),
        .rxresetdone_s3(rxresetdone_s3),
        .s_out_d1_cdc_to_77(s_out_d1_cdc_to_77),
        .s_out_d2_78(s_out_d2_78),
        .s_out_d3_79(s_out_d3_79),
        .s_out_d4_80(s_out_d4_80),
        .s_out_d5_81(s_out_d5_81),
        .s_out_d6_82(s_out_d6_82),
        .s_out_d7_83(s_out_d7_83),
        .time_out_100us(time_out_100us),
        .time_out_1us(time_out_1us));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in__0[0]));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in__0[1]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in__0[2]));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .O(p_0_in__0[3]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[3]),
        .I4(init_wait_count_reg__0[4]),
        .O(p_0_in__0[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[3]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in__0[5]));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg__0[6]),
        .I1(\n_0_init_wait_count[7]_i_4__0 ),
        .I2(init_wait_count_reg__0[5]),
        .O(p_0_in__0[6]));
LUT3 #(
    .INIT(8'h7F)) 
     \init_wait_count[7]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .I2(\n_0_init_wait_count[7]_i_3__0 ),
        .O(\n_0_init_wait_count[7]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[7]_i_2__0 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\n_0_init_wait_count[7]_i_4__0 ),
        .I3(init_wait_count_reg__0[6]),
        .O(p_0_in__0[7]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[5]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[3]),
        .I5(init_wait_count_reg__0[7]),
        .O(\n_0_init_wait_count[7]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \init_wait_count[7]_i_4__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[2]),
        .O(\n_0_init_wait_count[7]_i_4__0 ));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .D(p_0_in__0[0]),
        .Q(init_wait_count_reg__0[0]),
        .R(\<const0> ));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .D(p_0_in__0[1]),
        .Q(init_wait_count_reg__0[1]),
        .R(\<const0> ));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .D(p_0_in__0[2]),
        .Q(init_wait_count_reg__0[2]),
        .R(\<const0> ));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .D(p_0_in__0[3]),
        .Q(init_wait_count_reg__0[3]),
        .R(\<const0> ));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .D(p_0_in__0[4]),
        .Q(init_wait_count_reg__0[4]),
        .R(\<const0> ));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .D(p_0_in__0[5]),
        .Q(init_wait_count_reg__0[5]),
        .R(\<const0> ));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .D(p_0_in__0[6]),
        .Q(init_wait_count_reg__0[6]),
        .R(\<const0> ));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1__0 ),
        .D(p_0_in__0[7]),
        .Q(init_wait_count_reg__0[7]),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'hEAAA)) 
     init_wait_done_i_1__0
       (.I0(init_wait_done),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(\n_0_init_wait_count[7]_i_3__0 ),
        .O(n_0_init_wait_done_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_init_wait_done_i_1__0),
        .Q(init_wait_done),
        .R(\<const0> ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__2[0]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__2[1]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__2[2]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__2[3]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
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
LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\n_0_mmcm_lock_count[7]_i_2__0 ),
        .I2(mmcm_lock_count_reg__0[3]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[5]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__2[6]));
LUT6 #(
    .INIT(64'hAAA6AAAAAAAAAAAA)) 
     \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[7]_i_2__0 ),
        .I3(\n_0_mmcm_lock_count[7]_i_3__0 ),
        .I4(mmcm_lock_count_reg__0[4]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__2[7]));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT2 #(
    .INIT(4'h7)) 
     \mmcm_lock_count[7]_i_2__0 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .O(\n_0_mmcm_lock_count[7]_i_2__0 ));
LUT2 #(
    .INIT(4'h7)) 
     \mmcm_lock_count[7]_i_3__0 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[3]),
        .O(\n_0_mmcm_lock_count[7]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[8]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(n_0_mmcm_lock_reclocked_i_2__0),
        .O(p_0_in__2[8]));
LUT3 #(
    .INIT(8'h7F)) 
     \mmcm_lock_count[9]_i_2__0 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(n_0_mmcm_lock_reclocked_i_2__0),
        .I2(mmcm_lock_count_reg__0[8]),
        .O(\n_0_mmcm_lock_count[9]_i_2__0 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[9]_i_3__0 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(n_0_mmcm_lock_reclocked_i_2__0),
        .I2(mmcm_lock_count_reg__0[8]),
        .O(p_0_in__2[9]));
(* counter = "25" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(n_19_mmcm_lock_reclocked_cdc_sync));
(* counter = "25" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(n_19_mmcm_lock_reclocked_cdc_sync));
(* counter = "25" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(n_19_mmcm_lock_reclocked_cdc_sync));
(* counter = "25" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(n_19_mmcm_lock_reclocked_cdc_sync));
(* counter = "25" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(n_19_mmcm_lock_reclocked_cdc_sync));
(* counter = "25" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(n_19_mmcm_lock_reclocked_cdc_sync));
(* counter = "25" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(n_19_mmcm_lock_reclocked_cdc_sync));
(* counter = "25" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(n_19_mmcm_lock_reclocked_cdc_sync));
(* counter = "25" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(n_19_mmcm_lock_reclocked_cdc_sync));
(* counter = "25" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[9]),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(n_19_mmcm_lock_reclocked_cdc_sync));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_6 mmcm_lock_reclocked_cdc_sync
       (.I1(I1),
        .I2(n_0_mmcm_lock_reclocked_i_2__0),
        .O1(n_20_mmcm_lock_reclocked_cdc_sync),
        .O66(O66),
        .O67(O67),
        .O68(O68),
        .O69(O69),
        .O70(O70),
        .O71(O71),
        .Q(mmcm_lock_count_reg__0[9:8]),
        .SR(n_19_mmcm_lock_reclocked_cdc_sync),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .s_out_d1_cdc_to_70(s_out_d1_cdc_to_70),
        .s_out_d2_71(s_out_d2_71),
        .s_out_d3_72(s_out_d3_72),
        .s_out_d4_73(s_out_d4_73),
        .s_out_d5_74(s_out_d5_74),
        .s_out_d6_75(s_out_d6_75),
        .s_out_d7_76(s_out_d7_76));
LUT6 #(
    .INIT(64'h0000008000000000)) 
     mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(mmcm_lock_count_reg__0[4]),
        .I3(\n_0_mmcm_lock_count[7]_i_3__0 ),
        .I4(\n_0_mmcm_lock_count[7]_i_2__0 ),
        .I5(mmcm_lock_count_reg__0[6]),
        .O(n_0_mmcm_lock_reclocked_i_2__0));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_20_mmcm_lock_reclocked_cdc_sync),
        .Q(mmcm_lock_reclocked),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_2 qplllock_cdc_sync
       (.I1(I1),
        .O84(O84),
        .O85(O85),
        .O86(O86),
        .O87(O87),
        .O88(O88),
        .O89(O89),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_91(s_out_d1_cdc_to_91),
        .s_out_d2_92(s_out_d2_92),
        .s_out_d3_93(s_out_d3_93),
        .s_out_d4_94(s_out_d4_94),
        .s_out_d5_95(s_out_d5_95),
        .s_out_d6_96(s_out_d6_96),
        .s_out_d7_97(s_out_d7_97));
LUT6 #(
    .INIT(64'h0000FFFF00FFE2E2)) 
     reset_time_out_i_2__0
       (.I0(n_0_reset_time_out_i_6),
        .I1(adapt_count_reset),
        .I2(n_0_reset_time_out_i_7),
        .I3(n_0_RXDFEAGCHOLD_i_2),
        .I4(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I5(rx_state_reg),
        .O(n_0_reset_time_out_i_2__0));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT5 #(
    .INIT(32'hAAAAAAAB)) 
     reset_time_out_i_6
       (.I0(rx_cdrlocked),
        .I1(\n_0_FSM_onehot_rx_state_reg[1] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[5] ),
        .O(n_0_reset_time_out_i_6));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'h0000FFFE)) 
     reset_time_out_i_7
       (.I0(\n_0_FSM_onehot_rx_state_reg[1] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I4(gt0_pllrefclklost_i),
        .O(n_0_reset_time_out_i_7));
FDRE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_22_data_valid_cdc_sync),
        .Q(n_0_reset_time_out_reg),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_1 run_phase_alignment_int_cdc_sync
       (.I1(n_0_run_phase_alignment_int_reg),
        .I2(n_0_time_out_wait_bypass_i_2__0),
        .I3(n_0_time_out_wait_bypass_i_3__0),
        .I4(n_0_time_out_wait_bypass_reg),
        .I5(n_0_rx_fsm_reset_done_int_cdc_sync),
        .O1(n_19_run_phase_alignment_int_cdc_sync),
        .O2(n_20_run_phase_alignment_int_cdc_sync),
        .O42(O42),
        .O43(O43),
        .O44(O44),
        .O45(O45),
        .O46(O46),
        .O47(O47),
        .out(wait_bypass_count_reg[8]),
        .s_out_d1_cdc_to_42(s_out_d1_cdc_to_42),
        .s_out_d2_43(s_out_d2_43),
        .s_out_d3_44(s_out_d3_44),
        .s_out_d4_45(s_out_d4_45),
        .s_out_d5_46(s_out_d5_46),
        .s_out_d6_47(s_out_d6_47),
        .s_out_d7_48(s_out_d7_48),
        .user_clk(user_clk));
LUT4 #(
    .INIT(16'h00E2)) 
     run_phase_alignment_int_i_1__0
       (.I0(n_0_run_phase_alignment_int_reg),
        .I1(n_0_run_phase_alignment_int_i_2),
        .I2(rx_state_reg),
        .I3(\n_0_FSM_onehot_rx_state[8]_i_1 ),
        .O(n_0_run_phase_alignment_int_i_1__0));
LUT6 #(
    .INIT(64'h000000000101ABA8)) 
     run_phase_alignment_int_i_2
       (.I0(rx_state_reg),
        .I1(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I3(\n_0_FSM_onehot_rx_state[2]_i_2 ),
        .I4(\n_0_FSM_onehot_rx_state[8]_i_7 ),
        .I5(\n_0_FSM_onehot_rx_state_reg[8] ),
        .O(n_0_run_phase_alignment_int_i_2));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_run_phase_alignment_int_i_1__0),
        .Q(n_0_run_phase_alignment_int_reg),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_0 rx_fsm_reset_done_int_cdc_sync
       (.I1(n_0_time_out_wait_bypass_i_2__0),
        .I2(n_0_time_out_wait_bypass_i_3__0),
        .O1(n_0_rx_fsm_reset_done_int_cdc_sync),
        .O2(n_20_rx_fsm_reset_done_int_cdc_sync),
        .O48(O48),
        .O49(O49),
        .O50(O50),
        .O51(O51),
        .O52(O52),
        .O53(O53),
        .out(wait_bypass_count_reg[8]),
        .rx_fsm_reset_done_int(rx_fsm_reset_done_int),
        .s_out_d1_cdc_to_49(s_out_d1_cdc_to_49),
        .s_out_d2_50(s_out_d2_50),
        .s_out_d3_51(s_out_d3_51),
        .s_out_d4_52(s_out_d4_52),
        .s_out_d5_53(s_out_d5_53),
        .s_out_d6_54(s_out_d6_54),
        .s_out_d7_55(s_out_d7_55),
        .user_clk(user_clk));
LUT6 #(
    .INIT(64'h777777777777777E)) 
     rx_fsm_reset_done_int_i_2
       (.I0(rx_state_reg),
        .I1(\n_0_FSM_onehot_rx_state[8]_i_7 ),
        .I2(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I5(\n_0_FSM_onehot_rx_state_reg[3] ),
        .O(n_0_rx_fsm_reset_done_int_i_2));
FDRE #(
    .INIT(1'b0)) 
     rx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_23_data_valid_cdc_sync),
        .Q(rx_fsm_reset_done_int),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_3 rxresetdone_cdc_sync
       (.I1(n_0_GTRXRESET_i_2),
        .I2(\n_0_FSM_onehot_rx_state[2]_i_2 ),
        .I3(\n_0_FSM_onehot_rx_state[8]_i_15 ),
        .I4(n_0_reset_time_out_reg),
        .O1(n_20_rxresetdone_cdc_sync),
        .O60(O60),
        .O61(O61),
        .O62(O62),
        .O63(O63),
        .O64(O64),
        .O65(O65),
        .Q(\n_0_FSM_onehot_rx_state_reg[8] ),
        .gt0_pllrefclklost_i(gt0_pllrefclklost_i),
        .init_clk_in(init_clk_in),
        .rxfsm_rxresetdone_r(rxfsm_rxresetdone_r),
        .rxresetdone_s3(rxresetdone_s3),
        .s_out_d1_cdc_to_63(s_out_d1_cdc_to_63),
        .s_out_d2_64(s_out_d2_64),
        .s_out_d3_65(s_out_d3_65),
        .s_out_d4_66(s_out_d4_66),
        .s_out_d5_67(s_out_d5_67),
        .s_out_d6_68(s_out_d6_68),
        .s_out_d7_69(s_out_d7_69),
        .time_out_2ms(time_out_2ms));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     time_out_100us_i_1
       (.I0(time_out_100us),
        .I1(n_0_time_out_100us_i_2),
        .I2(n_0_reset_time_out_reg),
        .O(n_0_time_out_100us_i_1));
LUT6 #(
    .INIT(64'h0000800000000000)) 
     time_out_100us_i_2
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(n_0_time_out_100us_i_3),
        .I3(n_0_time_out_100us_i_4),
        .I4(n_0_time_out_100us_i_5),
        .I5(n_0_time_out_100us_i_6),
        .O(n_0_time_out_100us_i_2));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     time_out_100us_i_3
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[18]),
        .O(n_0_time_out_100us_i_3));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT4 #(
    .INIT(16'h0800)) 
     time_out_100us_i_4
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[7]),
        .O(n_0_time_out_100us_i_4));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     time_out_100us_i_5
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[10]),
        .O(n_0_time_out_100us_i_5));
LUT4 #(
    .INIT(16'h0001)) 
     time_out_100us_i_6
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[5]),
        .O(n_0_time_out_100us_i_6));
FDRE #(
    .INIT(1'b0)) 
     time_out_100us_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_time_out_100us_i_1),
        .Q(time_out_100us),
        .R(\<const0> ));
LUT3 #(
    .INIT(8'h0E)) 
     time_out_1us_i_1
       (.I0(time_out_1us),
        .I1(n_0_time_out_1us_i_2),
        .I2(n_0_reset_time_out_reg),
        .O(n_0_time_out_1us_i_1));
LUT6 #(
    .INIT(64'h0000000010000000)) 
     time_out_1us_i_2
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[3]),
        .I2(n_0_time_out_1us_i_3),
        .I3(n_0_time_out_1us_i_4),
        .I4(n_0_time_out_1us_i_5),
        .I5(n_0_time_out_1us_i_6),
        .O(n_0_time_out_1us_i_2));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     time_out_1us_i_3
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[18]),
        .O(n_0_time_out_1us_i_3));
LUT6 #(
    .INIT(64'h0000000000040000)) 
     time_out_1us_i_4
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[4]),
        .I5(time_out_counter_reg[11]),
        .O(n_0_time_out_1us_i_4));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'h04)) 
     time_out_1us_i_5
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[8]),
        .O(n_0_time_out_1us_i_5));
LUT2 #(
    .INIT(4'hE)) 
     time_out_1us_i_6
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[9]),
        .O(n_0_time_out_1us_i_6));
FDRE #(
    .INIT(1'b0)) 
     time_out_1us_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_time_out_1us_i_1),
        .Q(time_out_1us),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000AAABAAAA)) 
     time_out_2ms_i_1
       (.I0(time_out_2ms),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[10]),
        .I3(n_0_time_out_2ms_i_2__0),
        .I4(n_0_time_out_2ms_i_3),
        .I5(n_0_reset_time_out_reg),
        .O(n_0_time_out_2ms_i_1));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT2 #(
    .INIT(4'hE)) 
     time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[3]),
        .O(n_0_time_out_2ms_i_2__0));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     time_out_2ms_i_3
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[15]),
        .I4(n_0_time_out_2ms_i_4),
        .I5(n_0_time_out_2ms_i_5),
        .O(n_0_time_out_2ms_i_3));
LUT6 #(
    .INIT(64'h0080000000000000)) 
     time_out_2ms_i_4
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[4]),
        .I5(time_out_counter_reg[11]),
        .O(n_0_time_out_2ms_i_4));
LUT5 #(
    .INIT(32'h00000800)) 
     time_out_2ms_i_5
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[18]),
        .O(n_0_time_out_2ms_i_5));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_time_out_2ms_i_1),
        .Q(time_out_2ms),
        .R(\<const0> ));
LUT3 #(
    .INIT(8'h0E)) 
     time_out_adapt_i_1
       (.I0(time_out_adapt),
        .I1(n_0_time_out_adapt_i_2),
        .I2(recclk_mon_count_reset),
        .O(n_0_time_out_adapt_i_1));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     time_out_adapt_i_2
       (.I0(n_0_time_out_adapt_i_3),
        .I1(n_0_time_out_adapt_i_4),
        .I2(n_0_time_out_adapt_i_5),
        .I3(n_0_time_out_adapt_i_6),
        .I4(n_0_time_out_adapt_i_7),
        .I5(n_0_time_out_adapt_i_8),
        .O(n_0_time_out_adapt_i_2));
LUT6 #(
    .INIT(64'h0040000000000000)) 
     time_out_adapt_i_3
       (.I0(adapt_count_reg[12]),
        .I1(adapt_count_reg[5]),
        .I2(adapt_count_reg[1]),
        .I3(adapt_count_reg[19]),
        .I4(adapt_count_reg[2]),
        .I5(adapt_count_reg[10]),
        .O(n_0_time_out_adapt_i_3));
LUT2 #(
    .INIT(4'h1)) 
     time_out_adapt_i_4
       (.I0(adapt_count_reg[31]),
        .I1(adapt_count_reg[15]),
        .O(n_0_time_out_adapt_i_4));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     time_out_adapt_i_5
       (.I0(adapt_count_reg[30]),
        .I1(adapt_count_reg[27]),
        .I2(adapt_count_reg[6]),
        .I3(adapt_count_reg[17]),
        .I4(adapt_count_reg[13]),
        .I5(adapt_count_reg[23]),
        .O(n_0_time_out_adapt_i_5));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     time_out_adapt_i_6
       (.I0(adapt_count_reg[22]),
        .I1(adapt_count_reg[25]),
        .I2(adapt_count_reg[7]),
        .I3(adapt_count_reg[14]),
        .I4(adapt_count_reg[3]),
        .I5(adapt_count_reg[4]),
        .O(n_0_time_out_adapt_i_6));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     time_out_adapt_i_7
       (.I0(adapt_count_reg[16]),
        .I1(adapt_count_reg[9]),
        .I2(adapt_count_reg[18]),
        .I3(adapt_count_reg[11]),
        .I4(adapt_count_reg[0]),
        .I5(adapt_count_reg[28]),
        .O(n_0_time_out_adapt_i_7));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     time_out_adapt_i_8
       (.I0(adapt_count_reg[26]),
        .I1(adapt_count_reg[8]),
        .I2(adapt_count_reg[29]),
        .I3(adapt_count_reg[21]),
        .I4(adapt_count_reg[24]),
        .I5(adapt_count_reg[20]),
        .O(n_0_time_out_adapt_i_8));
FDRE time_out_adapt_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_time_out_adapt_i_1),
        .Q(time_out_adapt),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'hFFFEFFFF)) 
     \time_out_counter[0]_i_1 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[0]),
        .I4(n_0_time_out_2ms_i_3),
        .O(\n_0_time_out_counter[0]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_3__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_5__0 
       (.I0(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[0]),
        .O(\n_0_time_out_counter[0]_i_6__0 ));
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
     \time_out_counter[16]_i_4__0 
       (.I0(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[16]_i_4__0 ));
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
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_7_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[0]),
        .R(n_0_reset_time_out_reg));
CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(\<const0> ),
        .CO({\n_0_time_out_counter_reg[0]_i_2__0 ,\n_1_time_out_counter_reg[0]_i_2__0 ,\n_2_time_out_counter_reg[0]_i_2__0 ,\n_3_time_out_counter_reg[0]_i_2__0 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_time_out_counter_reg[0]_i_2__0 ,\n_5_time_out_counter_reg[0]_i_2__0 ,\n_6_time_out_counter_reg[0]_i_2__0 ,\n_7_time_out_counter_reg[0]_i_2__0 }),
        .S({\n_0_time_out_counter[0]_i_3__0 ,\n_0_time_out_counter[0]_i_4__0 ,\n_0_time_out_counter[0]_i_5__0 ,\n_0_time_out_counter[0]_i_6__0 }));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[10]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[11]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
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
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_time_out_counter_reg[12]_i_1__0 ,\n_5_time_out_counter_reg[12]_i_1__0 ,\n_6_time_out_counter_reg[12]_i_1__0 ,\n_7_time_out_counter_reg[12]_i_1__0 }),
        .S({\n_0_time_out_counter[12]_i_2__0 ,\n_0_time_out_counter[12]_i_3__0 ,\n_0_time_out_counter[12]_i_4__0 ,\n_0_time_out_counter[12]_i_5__0 }));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[13]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[14]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[15]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
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
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3],\n_5_time_out_counter_reg[16]_i_1__0 ,\n_6_time_out_counter_reg[16]_i_1__0 ,\n_7_time_out_counter_reg[16]_i_1__0 }),
        .S({\<const0> ,\n_0_time_out_counter[16]_i_2__0 ,\n_0_time_out_counter[16]_i_3__0 ,\n_0_time_out_counter[16]_i_4__0 }));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[17]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[18] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[18]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[1]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[2]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[3]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
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
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_time_out_counter_reg[4]_i_1__0 ,\n_5_time_out_counter_reg[4]_i_1__0 ,\n_6_time_out_counter_reg[4]_i_1__0 ,\n_7_time_out_counter_reg[4]_i_1__0 }),
        .S({\n_0_time_out_counter[4]_i_2__0 ,\n_0_time_out_counter[4]_i_3__0 ,\n_0_time_out_counter[4]_i_4__0 ,\n_0_time_out_counter[4]_i_5__0 }));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[5]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[6]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[7]),
        .R(n_0_reset_time_out_reg));
(* counter = "19" *) 
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
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_time_out_counter_reg[8]_i_1__0 ,\n_5_time_out_counter_reg[8]_i_1__0 ,\n_6_time_out_counter_reg[8]_i_1__0 ,\n_7_time_out_counter_reg[8]_i_1__0 }),
        .S({\n_0_time_out_counter[8]_i_2__0 ,\n_0_time_out_counter[8]_i_3__0 ,\n_0_time_out_counter[8]_i_4__0 ,\n_0_time_out_counter[8]_i_5__0 }));
(* counter = "19" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[9]),
        .R(n_0_reset_time_out_reg));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_5 time_out_wait_bypass_cdc_sync
       (.D({n_19_time_out_wait_bypass_cdc_sync,n_20_time_out_wait_bypass_cdc_sync}),
        .I1(n_0_time_out_wait_bypass_reg),
        .I2(\n_0_FSM_onehot_rx_state[1]_i_2 ),
        .I3(\n_0_FSM_onehot_rx_state[1]_i_4 ),
        .I4(\n_0_FSM_onehot_rx_state[7]_i_2 ),
        .I5(\n_0_FSM_onehot_rx_state[7]_i_3 ),
        .I6(\n_0_FSM_onehot_rx_state[8]_i_12 ),
        .I7(\n_0_FSM_onehot_rx_state[1]_i_6 ),
        .I8(n_21_data_valid_cdc_sync),
        .O54(O54),
        .O55(O55),
        .O56(O56),
        .O57(O57),
        .O58(O58),
        .O59(O59),
        .Q({\n_0_FSM_onehot_rx_state_reg[8] ,\n_0_FSM_onehot_rx_state_reg[7] ,\n_0_FSM_onehot_rx_state_reg[6] ,\n_0_FSM_onehot_rx_state_reg[5] ,\n_0_FSM_onehot_rx_state_reg[4] ,\n_0_FSM_onehot_rx_state_reg[1] }),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_56(s_out_d1_cdc_to_56),
        .s_out_d2_57(s_out_d2_57),
        .s_out_d3_58(s_out_d3_58),
        .s_out_d4_59(s_out_d4_59),
        .s_out_d5_60(s_out_d5_60),
        .s_out_d6_61(s_out_d6_61),
        .s_out_d7_62(s_out_d7_62));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
     time_out_wait_bypass_i_2__0
       (.I0(wait_bypass_count_reg[1]),
        .I1(wait_bypass_count_reg[5]),
        .I2(wait_bypass_count_reg[7]),
        .I3(wait_bypass_count_reg[0]),
        .I4(wait_bypass_count_reg[10]),
        .I5(wait_bypass_count_reg[4]),
        .O(n_0_time_out_wait_bypass_i_2__0));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
     time_out_wait_bypass_i_3__0
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[11]),
        .I5(wait_bypass_count_reg[6]),
        .O(n_0_time_out_wait_bypass_i_3__0));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_20_run_phase_alignment_int_cdc_sync),
        .Q(n_0_time_out_wait_bypass_reg),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     time_tlock_max_i_1
       (.I0(time_tlock_max),
        .I1(time_tlock_max0),
        .I2(n_0_reset_time_out_reg),
        .O(n_0_time_tlock_max_i_1));
LUT5 #(
    .INIT(32'h00A8AAAA)) 
     time_tlock_max_i_2
       (.I0(n_0_check_tlock_max_reg),
        .I1(n_0_time_tlock_max_i_3),
        .I2(n_0_time_tlock_max_i_4__0),
        .I3(n_0_time_tlock_max_i_5),
        .I4(n_0_time_out_100us_i_3),
        .O(time_tlock_max0));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT4 #(
    .INIT(16'hAAA8)) 
     time_tlock_max_i_3
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[0]),
        .O(n_0_time_tlock_max_i_3));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     time_tlock_max_i_4__0
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[4]),
        .O(n_0_time_tlock_max_i_4__0));
LUT6 #(
    .INIT(64'h5557575757575757)) 
     time_tlock_max_i_5
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[8]),
        .I5(time_out_counter_reg[9]),
        .O(n_0_time_tlock_max_i_5));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_time_tlock_max_i_1),
        .Q(time_tlock_max),
        .R(\<const0> ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_4__0 
       (.I0(wait_bypass_count_reg[3]),
        .O(\n_0_wait_bypass_count[0]_i_4__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_5__0 
       (.I0(wait_bypass_count_reg[2]),
        .O(\n_0_wait_bypass_count[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_6__0 
       (.I0(wait_bypass_count_reg[1]),
        .O(\n_0_wait_bypass_count[0]_i_6__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_7__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_7__0 ));
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
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[0]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(\<const0> ),
        .CO({\n_0_wait_bypass_count_reg[0]_i_3__0 ,\n_1_wait_bypass_count_reg[0]_i_3__0 ,\n_2_wait_bypass_count_reg[0]_i_3__0 ,\n_3_wait_bypass_count_reg[0]_i_3__0 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_wait_bypass_count_reg[0]_i_3__0 ,\n_5_wait_bypass_count_reg[0]_i_3__0 ,\n_6_wait_bypass_count_reg[0]_i_3__0 ,\n_7_wait_bypass_count_reg[0]_i_3__0 }),
        .S({\n_0_wait_bypass_count[0]_i_4__0 ,\n_0_wait_bypass_count[0]_i_5__0 ,\n_0_wait_bypass_count[0]_i_6__0 ,\n_0_wait_bypass_count[0]_i_7__0 }));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[10]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[11]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[12]_i_1__0 ),
        .Q(wait_bypass_count_reg[12]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[8]_i_1__0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\n_7_wait_bypass_count_reg[12]_i_1__0 }),
        .S({\<const0> ,\<const0> ,\<const0> ,\n_0_wait_bypass_count[12]_i_2__0 }));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[1]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[2]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[3]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[4]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[0]_i_3__0 ),
        .CO({\n_0_wait_bypass_count_reg[4]_i_1__0 ,\n_1_wait_bypass_count_reg[4]_i_1__0 ,\n_2_wait_bypass_count_reg[4]_i_1__0 ,\n_3_wait_bypass_count_reg[4]_i_1__0 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wait_bypass_count_reg[4]_i_1__0 ,\n_5_wait_bypass_count_reg[4]_i_1__0 ,\n_6_wait_bypass_count_reg[4]_i_1__0 ,\n_7_wait_bypass_count_reg[4]_i_1__0 }),
        .S({\n_0_wait_bypass_count[4]_i_2__0 ,\n_0_wait_bypass_count[4]_i_3__0 ,\n_0_wait_bypass_count[4]_i_4__0 ,\n_0_wait_bypass_count[4]_i_5__0 }));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[5]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[6]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[7]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[8]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[4]_i_1__0 ),
        .CO({\n_0_wait_bypass_count_reg[8]_i_1__0 ,\n_1_wait_bypass_count_reg[8]_i_1__0 ,\n_2_wait_bypass_count_reg[8]_i_1__0 ,\n_3_wait_bypass_count_reg[8]_i_1__0 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wait_bypass_count_reg[8]_i_1__0 ,\n_5_wait_bypass_count_reg[8]_i_1__0 ,\n_6_wait_bypass_count_reg[8]_i_1__0 ,\n_7_wait_bypass_count_reg[8]_i_1__0 }),
        .S({\n_0_wait_bypass_count[8]_i_2__0 ,\n_0_wait_bypass_count[8]_i_3__0 ,\n_0_wait_bypass_count[8]_i_4__0 ,\n_0_wait_bypass_count[8]_i_5__0 }));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(n_20_rx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[9]),
        .R(n_19_run_phase_alignment_int_cdc_sync));
endmodule

module aurora_8b10b_0aurora_8b10b_0_tx_startup_fsm
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
    O24,
    s_out_d1_cdc_to_21,
    s_out_d2_22,
    s_out_d3_23,
    s_out_d4_24,
    s_out_d5_25,
    s_out_d6_26,
    s_out_d7_27,
    O25,
    O26,
    O27,
    O28,
    O29,
    O30,
    O31,
    s_out_d1_cdc_to_28,
    s_out_d2_29,
    s_out_d3_30,
    s_out_d4_31,
    s_out_d5_32,
    s_out_d6_33,
    s_out_d7_34,
    O32,
    O33,
    O34,
    O35,
    O36,
    O37,
    s_out_d1_cdc_to_35,
    s_out_d2_36,
    s_out_d3_37,
    s_out_d4_38,
    s_out_d5_39,
    s_out_d6_40,
    s_out_d7_41,
    O38,
    O39,
    O40,
    O41,
    O42,
    O43,
    tx_resetdone_out,
    gt_tx_reset_i,
    cpll_reset_i,
    gt_txuserrdy_i,
    user_clk,
    init_clk_in,
    txfsm_txresetdone_r,
    tx_lock,
    gt_reset,
    gt0_pllrefclklost_i);
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
  output O24;
  output s_out_d1_cdc_to_21;
  output s_out_d2_22;
  output s_out_d3_23;
  output s_out_d4_24;
  output s_out_d5_25;
  output s_out_d6_26;
  output s_out_d7_27;
  output [1:0]O25;
  output [1:0]O26;
  output [1:0]O27;
  output [1:0]O28;
  output [1:0]O29;
  output [1:0]O30;
  output O31;
  output s_out_d1_cdc_to_28;
  output s_out_d2_29;
  output s_out_d3_30;
  output s_out_d4_31;
  output s_out_d5_32;
  output s_out_d6_33;
  output s_out_d7_34;
  output [1:0]O32;
  output [1:0]O33;
  output [1:0]O34;
  output [1:0]O35;
  output [1:0]O36;
  output [1:0]O37;
  output s_out_d1_cdc_to_35;
  output s_out_d2_36;
  output s_out_d3_37;
  output s_out_d4_38;
  output s_out_d5_39;
  output s_out_d6_40;
  output s_out_d7_41;
  output [1:0]O38;
  output [1:0]O39;
  output [1:0]O40;
  output [1:0]O41;
  output [1:0]O42;
  output [1:0]O43;
  output tx_resetdone_out;
  output gt_tx_reset_i;
  output cpll_reset_i;
  output gt_txuserrdy_i;
  input user_clk;
  input init_clk_in;
  input txfsm_txresetdone_r;
  input tx_lock;
  input gt_reset;
  input gt0_pllrefclklost_i;

  wire \<const0> ;
  wire \<const1> ;
  wire [1:0]O1;
  wire [1:0]O10;
  wire [1:0]O11;
  wire [1:0]O12;
  wire [1:0]O13;
  wire [1:0]O14;
  wire [1:0]O15;
  wire [1:0]O16;
  wire [1:0]O17;
  wire [1:0]O18;
  wire [1:0]O19;
  wire [1:0]O2;
  wire [1:0]O20;
  wire [1:0]O21;
  wire [1:0]O22;
  wire [1:0]O23;
  wire O24;
  wire [1:0]O25;
  wire [1:0]O26;
  wire [1:0]O27;
  wire [1:0]O28;
  wire [1:0]O29;
  wire [1:0]O3;
  wire [1:0]O30;
  wire O31;
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
  wire [1:0]O5;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [1:0]O8;
  wire [1:0]O9;
  wire clear;
  wire cpll_reset_i;
  wire cplllock_sync;
  wire gt0_pllrefclklost_i;
  wire gt_reset;
  wire gt_tx_reset_i;
  wire gt_txuserrdy_i;
  wire init_clk_in;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire n_0_CPLL_RESET_i_1;
  wire \n_0_FSM_onehot_tx_state[1]_i_2 ;
  wire \n_0_FSM_onehot_tx_state[1]_i_3 ;
  wire \n_0_FSM_onehot_tx_state[1]_i_4 ;
  wire \n_0_FSM_onehot_tx_state[1]_i_5 ;
  wire \n_0_FSM_onehot_tx_state[2]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[3]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[4]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[5]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[6]_i_2 ;
  wire \n_0_FSM_onehot_tx_state[7]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[7]_i_10 ;
  wire \n_0_FSM_onehot_tx_state[7]_i_11 ;
  wire \n_0_FSM_onehot_tx_state[7]_i_3 ;
  wire \n_0_FSM_onehot_tx_state[7]_i_4 ;
  wire \n_0_FSM_onehot_tx_state[7]_i_6 ;
  wire \n_0_FSM_onehot_tx_state[7]_i_7 ;
  wire \n_0_FSM_onehot_tx_state[7]_i_8 ;
  wire \n_0_FSM_onehot_tx_state_reg[0] ;
  wire \n_0_FSM_onehot_tx_state_reg[1] ;
  wire \n_0_FSM_onehot_tx_state_reg[2] ;
  wire \n_0_FSM_onehot_tx_state_reg[3] ;
  wire \n_0_FSM_onehot_tx_state_reg[4] ;
  wire \n_0_FSM_onehot_tx_state_reg[5] ;
  wire \n_0_FSM_onehot_tx_state_reg[6] ;
  wire \n_0_FSM_onehot_tx_state_reg[7] ;
  wire n_0_GTTXRESET_i_1;
  wire n_0_GTTXRESET_i_2;
  wire n_0_TXUSERRDY_i_1;
  wire \n_0_init_wait_count[7]_i_1 ;
  wire \n_0_init_wait_count[7]_i_3 ;
  wire \n_0_init_wait_count[7]_i_4 ;
  wire n_0_init_wait_done_i_1;
  wire \n_0_mmcm_lock_count[7]_i_2 ;
  wire \n_0_mmcm_lock_count[7]_i_3 ;
  wire n_0_mmcm_lock_reclocked_i_2;
  wire n_0_pll_reset_asserted_i_1;
  wire n_0_run_phase_alignment_int_i_1;
  wire n_0_time_out_2ms_i_1;
  wire n_0_time_out_2ms_i_2;
  wire n_0_time_out_500us_i_1;
  wire n_0_time_out_500us_i_2;
  wire n_0_time_out_500us_i_3;
  wire n_0_time_out_500us_i_4;
  wire n_0_time_out_500us_i_5;
  wire \n_0_time_out_counter[0]_i_10 ;
  wire \n_0_time_out_counter[0]_i_1__0 ;
  wire \n_0_time_out_counter[0]_i_3 ;
  wire \n_0_time_out_counter[0]_i_4 ;
  wire \n_0_time_out_counter[0]_i_5 ;
  wire \n_0_time_out_counter[0]_i_6 ;
  wire \n_0_time_out_counter[0]_i_7 ;
  wire \n_0_time_out_counter[0]_i_8 ;
  wire \n_0_time_out_counter[0]_i_9 ;
  wire \n_0_time_out_counter[12]_i_2 ;
  wire \n_0_time_out_counter[12]_i_3 ;
  wire \n_0_time_out_counter[12]_i_4 ;
  wire \n_0_time_out_counter[12]_i_5 ;
  wire \n_0_time_out_counter[16]_i_2 ;
  wire \n_0_time_out_counter[16]_i_3 ;
  wire \n_0_time_out_counter[16]_i_4 ;
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
  wire n_0_time_out_wait_bypass_i_2;
  wire n_0_time_out_wait_bypass_i_3;
  wire n_0_time_out_wait_bypass_i_4;
  wire n_0_time_tlock_max_i_1;
  wire n_0_time_tlock_max_i_2__0;
  wire n_0_time_tlock_max_i_3__0;
  wire n_0_time_tlock_max_i_4;
  wire n_0_tx_fsm_reset_done_int_cdc_sync;
  wire n_0_tx_fsm_reset_done_int_i_1;
  wire n_0_tx_fsm_reset_done_int_i_2;
  wire n_0_tx_fsm_reset_done_int_i_3;
  wire n_0_tx_fsm_reset_done_int_i_4;
  wire \n_0_wait_bypass_count[0]_i_4 ;
  wire \n_0_wait_bypass_count[0]_i_5 ;
  wire \n_0_wait_bypass_count[0]_i_6 ;
  wire \n_0_wait_bypass_count[0]_i_7 ;
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
  wire n_19_time_out_wait_bypass_cdc_sync;
  wire n_19_txresetdone_cdc_sync;
  wire \n_1_time_out_counter_reg[0]_i_2 ;
  wire \n_1_time_out_counter_reg[12]_i_1 ;
  wire \n_1_time_out_counter_reg[4]_i_1 ;
  wire \n_1_time_out_counter_reg[8]_i_1 ;
  wire \n_1_wait_bypass_count_reg[0]_i_3 ;
  wire \n_1_wait_bypass_count_reg[12]_i_1 ;
  wire \n_1_wait_bypass_count_reg[4]_i_1 ;
  wire \n_1_wait_bypass_count_reg[8]_i_1 ;
  wire n_20_mmcm_lock_reclocked_cdc_sync;
  wire n_20_run_phase_alignment_int_cdc_sync;
  wire n_20_time_out_wait_bypass_cdc_sync;
  wire n_20_tx_fsm_reset_done_int_cdc_sync;
  wire n_20_txresetdone_cdc_sync;
  wire n_21_cplllock_cdc_sync;
  wire n_21_mmcm_lock_reclocked_cdc_sync;
  wire \n_2_time_out_counter_reg[0]_i_2 ;
  wire \n_2_time_out_counter_reg[12]_i_1 ;
  wire \n_2_time_out_counter_reg[16]_i_1 ;
  wire \n_2_time_out_counter_reg[4]_i_1 ;
  wire \n_2_time_out_counter_reg[8]_i_1 ;
  wire \n_2_wait_bypass_count_reg[0]_i_3 ;
  wire \n_2_wait_bypass_count_reg[12]_i_1 ;
  wire \n_2_wait_bypass_count_reg[4]_i_1 ;
  wire \n_2_wait_bypass_count_reg[8]_i_1 ;
  wire \n_3_time_out_counter_reg[0]_i_2 ;
  wire \n_3_time_out_counter_reg[12]_i_1 ;
  wire \n_3_time_out_counter_reg[16]_i_1 ;
  wire \n_3_time_out_counter_reg[4]_i_1 ;
  wire \n_3_time_out_counter_reg[8]_i_1 ;
  wire \n_3_wait_bypass_count_reg[0]_i_3 ;
  wire \n_3_wait_bypass_count_reg[12]_i_1 ;
  wire \n_3_wait_bypass_count_reg[4]_i_1 ;
  wire \n_3_wait_bypass_count_reg[8]_i_1 ;
  wire \n_4_time_out_counter_reg[0]_i_2 ;
  wire \n_4_time_out_counter_reg[12]_i_1 ;
  wire \n_4_time_out_counter_reg[4]_i_1 ;
  wire \n_4_time_out_counter_reg[8]_i_1 ;
  wire \n_4_wait_bypass_count_reg[0]_i_3 ;
  wire \n_4_wait_bypass_count_reg[12]_i_1 ;
  wire \n_4_wait_bypass_count_reg[4]_i_1 ;
  wire \n_4_wait_bypass_count_reg[8]_i_1 ;
  wire \n_5_time_out_counter_reg[0]_i_2 ;
  wire \n_5_time_out_counter_reg[12]_i_1 ;
  wire \n_5_time_out_counter_reg[16]_i_1 ;
  wire \n_5_time_out_counter_reg[4]_i_1 ;
  wire \n_5_time_out_counter_reg[8]_i_1 ;
  wire \n_5_wait_bypass_count_reg[0]_i_3 ;
  wire \n_5_wait_bypass_count_reg[12]_i_1 ;
  wire \n_5_wait_bypass_count_reg[4]_i_1 ;
  wire \n_5_wait_bypass_count_reg[8]_i_1 ;
  wire \n_6_time_out_counter_reg[0]_i_2 ;
  wire \n_6_time_out_counter_reg[12]_i_1 ;
  wire \n_6_time_out_counter_reg[16]_i_1 ;
  wire \n_6_time_out_counter_reg[4]_i_1 ;
  wire \n_6_time_out_counter_reg[8]_i_1 ;
  wire \n_6_wait_bypass_count_reg[0]_i_3 ;
  wire \n_6_wait_bypass_count_reg[12]_i_1 ;
  wire \n_6_wait_bypass_count_reg[4]_i_1 ;
  wire \n_6_wait_bypass_count_reg[8]_i_1 ;
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
  wire [1:0]out;
  wire [7:0]p_0_in;
  wire [9:0]p_0_in__1;
  wire pll_reset_asserted;
  wire reset_time_out;
  wire run_phase_alignment_int;
  wire s_out_d1_cdc_to;
  wire s_out_d1_cdc_to_0;
  wire s_out_d1_cdc_to_14;
  wire s_out_d1_cdc_to_21;
  wire s_out_d1_cdc_to_28;
  wire s_out_d1_cdc_to_35;
  wire s_out_d1_cdc_to_7;
  wire s_out_d2;
  wire s_out_d2_1;
  wire s_out_d2_15;
  wire s_out_d2_22;
  wire s_out_d2_29;
  wire s_out_d2_36;
  wire s_out_d2_8;
  wire s_out_d3;
  wire s_out_d3_16;
  wire s_out_d3_2;
  wire s_out_d3_23;
  wire s_out_d3_30;
  wire s_out_d3_37;
  wire s_out_d3_9;
  wire s_out_d4;
  wire s_out_d4_10;
  wire s_out_d4_17;
  wire s_out_d4_24;
  wire s_out_d4_3;
  wire s_out_d4_31;
  wire s_out_d4_38;
  wire s_out_d5;
  wire s_out_d5_11;
  wire s_out_d5_18;
  wire s_out_d5_25;
  wire s_out_d5_32;
  wire s_out_d5_39;
  wire s_out_d5_4;
  wire s_out_d6;
  wire s_out_d6_12;
  wire s_out_d6_19;
  wire s_out_d6_26;
  wire s_out_d6_33;
  wire s_out_d6_40;
  wire s_out_d6_5;
  wire s_out_d7;
  wire s_out_d7_13;
  wire s_out_d7_20;
  wire s_out_d7_27;
  wire s_out_d7_34;
  wire s_out_d7_41;
  wire s_out_d7_6;
  wire sel;
  wire time_out_2ms;
  wire time_out_500us;
  wire [18:0]time_out_counter_reg;
  wire time_out_wait_bypass;
  wire time_tlock_max;
  wire tx_lock;
  wire tx_resetdone_out;
  wire txfsm_txresetdone_r;
  wire user_clk;
  wire [16:0]wait_bypass_count_reg;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'h00000000AA2AAAEA)) 
     CPLL_RESET_i_1
       (.I0(cpll_reset_i),
        .I1(n_0_tx_fsm_reset_done_int_i_4),
        .I2(n_0_tx_fsm_reset_done_int_i_3),
        .I3(n_0_tx_fsm_reset_done_int_i_2),
        .I4(pll_reset_asserted),
        .I5(\n_0_FSM_onehot_tx_state[7]_i_1 ),
        .O(n_0_CPLL_RESET_i_1));
FDRE #(
    .INIT(1'b0)) 
     CPLL_RESET_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_CPLL_RESET_i_1),
        .Q(cpll_reset_i),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FSM_onehot_tx_state[1]_i_2 
       (.I0(time_out_500us),
        .I1(reset_time_out),
        .O(\n_0_FSM_onehot_tx_state[1]_i_2 ));
LUT6 #(
    .INIT(64'h8A8A8A8A8ABA8A8A)) 
     \FSM_onehot_tx_state[1]_i_3 
       (.I0(time_out_2ms),
        .I1(\n_0_FSM_onehot_tx_state[1]_i_4 ),
        .I2(\n_0_FSM_onehot_tx_state[1]_i_5 ),
        .I3(mmcm_lock_reclocked),
        .I4(time_tlock_max),
        .I5(reset_time_out),
        .O(\n_0_FSM_onehot_tx_state[1]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
     \FSM_onehot_tx_state[1]_i_4 
       (.I0(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[1] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[0] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I5(\n_0_FSM_onehot_tx_state_reg[7] ),
        .O(\n_0_FSM_onehot_tx_state[1]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'h00030302)) 
     \FSM_onehot_tx_state[1]_i_5 
       (.I0(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[4] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[6] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[1] ),
        .O(\n_0_FSM_onehot_tx_state[1]_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \FSM_onehot_tx_state[2]_i_1 
       (.I0(\n_0_FSM_onehot_tx_state[6]_i_2 ),
        .I1(\n_0_FSM_onehot_tx_state[7]_i_6 ),
        .I2(\n_0_FSM_onehot_tx_state[7]_i_7 ),
        .O(\n_0_FSM_onehot_tx_state[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \FSM_onehot_tx_state[3]_i_1 
       (.I0(time_out_2ms),
        .I1(\n_0_FSM_onehot_tx_state[6]_i_2 ),
        .I2(\n_0_FSM_onehot_tx_state[7]_i_6 ),
        .I3(\n_0_FSM_onehot_tx_state[7]_i_7 ),
        .O(\n_0_FSM_onehot_tx_state[3]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000FB0000)) 
     \FSM_onehot_tx_state[4]_i_1 
       (.I0(mmcm_lock_reclocked),
        .I1(time_tlock_max),
        .I2(reset_time_out),
        .I3(\n_0_FSM_onehot_tx_state[6]_i_2 ),
        .I4(\n_0_FSM_onehot_tx_state[7]_i_6 ),
        .I5(\n_0_FSM_onehot_tx_state[7]_i_7 ),
        .O(\n_0_FSM_onehot_tx_state[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'h0D000000)) 
     \FSM_onehot_tx_state[5]_i_1 
       (.I0(time_out_500us),
        .I1(reset_time_out),
        .I2(\n_0_FSM_onehot_tx_state[7]_i_6 ),
        .I3(\n_0_FSM_onehot_tx_state[6]_i_2 ),
        .I4(\n_0_FSM_onehot_tx_state[7]_i_7 ),
        .O(\n_0_FSM_onehot_tx_state[5]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFEB)) 
     \FSM_onehot_tx_state[6]_i_2 
       (.I0(\n_0_FSM_onehot_tx_state[7]_i_10 ),
        .I1(\n_0_FSM_onehot_tx_state_reg[1] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[6] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[4] ),
        .I5(\n_0_FSM_onehot_tx_state_reg[3] ),
        .O(\n_0_FSM_onehot_tx_state[6]_i_2 ));
LUT6 #(
    .INIT(64'hEEEEEEEAEEEEEEEE)) 
     \FSM_onehot_tx_state[7]_i_1 
       (.I0(gt_reset),
        .I1(gt0_pllrefclklost_i),
        .I2(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[6] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I5(n_0_tx_fsm_reset_done_int_i_3),
        .O(\n_0_FSM_onehot_tx_state[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_tx_state[7]_i_10 
       (.I0(\n_0_FSM_onehot_tx_state_reg[7] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[0] ),
        .O(\n_0_FSM_onehot_tx_state[7]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \FSM_onehot_tx_state[7]_i_11 
       (.I0(\n_0_FSM_onehot_tx_state_reg[0] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[7] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[4] ),
        .O(\n_0_FSM_onehot_tx_state[7]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_tx_state[7]_i_3 
       (.I0(\n_0_FSM_onehot_tx_state[7]_i_6 ),
        .I1(\n_0_FSM_onehot_tx_state[7]_i_7 ),
        .O(\n_0_FSM_onehot_tx_state[7]_i_3 ));
LUT6 #(
    .INIT(64'h0DFD0D0DFFFFFFFF)) 
     \FSM_onehot_tx_state[7]_i_4 
       (.I0(\n_0_FSM_onehot_tx_state[7]_i_8 ),
        .I1(mmcm_lock_reclocked),
        .I2(n_0_tx_fsm_reset_done_int_i_4),
        .I3(gt0_pllrefclklost_i),
        .I4(pll_reset_asserted),
        .I5(n_0_tx_fsm_reset_done_int_i_3),
        .O(\n_0_FSM_onehot_tx_state[7]_i_4 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEEF)) 
     \FSM_onehot_tx_state[7]_i_6 
       (.I0(\n_0_FSM_onehot_tx_state_reg[1] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[4] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[6] ),
        .I5(\n_0_FSM_onehot_tx_state[7]_i_10 ),
        .O(\n_0_FSM_onehot_tx_state[7]_i_6 ));
LUT6 #(
    .INIT(64'hFFFEFEFDFFFFFFFF)) 
     \FSM_onehot_tx_state[7]_i_7 
       (.I0(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[1] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[6] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I5(\n_0_FSM_onehot_tx_state[7]_i_11 ),
        .O(\n_0_FSM_onehot_tx_state[7]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \FSM_onehot_tx_state[7]_i_8 
       (.I0(reset_time_out),
        .I1(time_tlock_max),
        .O(\n_0_FSM_onehot_tx_state[7]_i_8 ));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_tx_state_reg[0] 
       (.C(init_clk_in),
        .CE(n_20_txresetdone_cdc_sync),
        .D(\<const0> ),
        .Q(\n_0_FSM_onehot_tx_state_reg[0] ),
        .S(\n_0_FSM_onehot_tx_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[1] 
       (.C(init_clk_in),
        .CE(n_20_txresetdone_cdc_sync),
        .D(n_20_time_out_wait_bypass_cdc_sync),
        .Q(\n_0_FSM_onehot_tx_state_reg[1] ),
        .R(\n_0_FSM_onehot_tx_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[2] 
       (.C(init_clk_in),
        .CE(n_20_txresetdone_cdc_sync),
        .D(\n_0_FSM_onehot_tx_state[2]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[2] ),
        .R(\n_0_FSM_onehot_tx_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[3] 
       (.C(init_clk_in),
        .CE(n_20_txresetdone_cdc_sync),
        .D(\n_0_FSM_onehot_tx_state[3]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[3] ),
        .R(\n_0_FSM_onehot_tx_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[4] 
       (.C(init_clk_in),
        .CE(n_20_txresetdone_cdc_sync),
        .D(\n_0_FSM_onehot_tx_state[4]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[4] ),
        .R(\n_0_FSM_onehot_tx_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[5] 
       (.C(init_clk_in),
        .CE(n_20_txresetdone_cdc_sync),
        .D(\n_0_FSM_onehot_tx_state[5]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[5] ),
        .R(\n_0_FSM_onehot_tx_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[6] 
       (.C(init_clk_in),
        .CE(n_20_txresetdone_cdc_sync),
        .D(n_19_time_out_wait_bypass_cdc_sync),
        .Q(\n_0_FSM_onehot_tx_state_reg[6] ),
        .R(\n_0_FSM_onehot_tx_state[7]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[7] 
       (.C(init_clk_in),
        .CE(n_20_txresetdone_cdc_sync),
        .D(\n_0_FSM_onehot_tx_state[7]_i_3 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[7] ),
        .R(\n_0_FSM_onehot_tx_state[7]_i_1 ));
GND GND
       (.G(\<const0> ));
LUT6 #(
    .INIT(64'h000000008A8A8ABA)) 
     GTTXRESET_i_1
       (.I0(gt_tx_reset_i),
        .I1(n_0_tx_fsm_reset_done_int_i_2),
        .I2(n_0_tx_fsm_reset_done_int_i_3),
        .I3(n_0_GTTXRESET_i_2),
        .I4(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I5(\n_0_FSM_onehot_tx_state[7]_i_1 ),
        .O(n_0_GTTXRESET_i_1));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'hE)) 
     GTTXRESET_i_2
       (.I0(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[6] ),
        .O(n_0_GTTXRESET_i_2));
FDRE #(
    .INIT(1'b0)) 
     GTTXRESET_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_GTTXRESET_i_1),
        .Q(gt_tx_reset_i),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h0000000080008EAA)) 
     TXUSERRDY_i_1
       (.I0(gt_txuserrdy_i),
        .I1(n_0_tx_fsm_reset_done_int_i_2),
        .I2(n_0_tx_fsm_reset_done_int_i_3),
        .I3(n_0_tx_fsm_reset_done_int_i_4),
        .I4(gt0_pllrefclklost_i),
        .I5(gt_reset),
        .O(n_0_TXUSERRDY_i_1));
FDRE #(
    .INIT(1'b0)) 
     TXUSERRDY_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_TXUSERRDY_i_1),
        .Q(gt_txuserrdy_i),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_9 cplllock_cdc_sync
       (.I1(n_0_tx_fsm_reset_done_int_i_4),
        .I2(n_0_tx_fsm_reset_done_int_i_3),
        .I3(n_19_txresetdone_cdc_sync),
        .I4(\n_0_FSM_onehot_tx_state[7]_i_1 ),
        .O1(n_21_cplllock_cdc_sync),
        .O31(O31),
        .O32(O32),
        .O33(O33),
        .O34(O34),
        .O35(O35),
        .O36(O36),
        .O37(O37),
        .Q({\n_0_FSM_onehot_tx_state_reg[5] ,\n_0_FSM_onehot_tx_state_reg[3] ,\n_0_FSM_onehot_tx_state_reg[1] }),
        .cplllock_sync(cplllock_sync),
        .init_clk_in(init_clk_in),
        .reset_time_out(reset_time_out),
        .s_out_d1_cdc_to_28(s_out_d1_cdc_to_28),
        .s_out_d2_29(s_out_d2_29),
        .s_out_d3_30(s_out_d3_30),
        .s_out_d4_31(s_out_d4_31),
        .s_out_d5_32(s_out_d5_32),
        .s_out_d6_33(s_out_d6_33),
        .s_out_d7_34(s_out_d7_34),
        .tx_lock(tx_lock));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
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
(* SOFT_HLUTNM = "soft_lutpair10" *) 
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
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .I2(\n_0_init_wait_count[7]_i_3 ),
        .O(\n_0_init_wait_count[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[7]_i_2 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\n_0_init_wait_count[7]_i_4 ),
        .I3(init_wait_count_reg__0[6]),
        .O(p_0_in[7]));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[5]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[3]),
        .I5(init_wait_count_reg__0[7]),
        .O(\n_0_init_wait_count[7]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[2]),
        .O(\n_0_init_wait_count[7]_i_4 ));
(* counter = "17" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]),
        .R(\<const0> ));
(* counter = "17" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]),
        .R(\<const0> ));
(* counter = "17" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]),
        .R(\<const0> ));
(* counter = "17" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]),
        .R(\<const0> ));
(* counter = "17" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]),
        .R(\<const0> ));
(* counter = "17" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]),
        .R(\<const0> ));
(* counter = "17" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]),
        .R(\<const0> ));
(* counter = "17" *) 
   FDRE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_init_wait_count[7]_i_1 ),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg__0[7]),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'hEAAA)) 
     init_wait_done_i_1
       (.I0(init_wait_done),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .I3(\n_0_init_wait_count[7]_i_3 ),
        .O(n_0_init_wait_done_i_1));
FDRE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_init_wait_done_i_1),
        .Q(init_wait_done),
        .R(\<const0> ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__1[0]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__1[1]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__1[2]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__1[3]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__1[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__1[5]));
LUT6 #(
    .INIT(64'h9AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\n_0_mmcm_lock_count[7]_i_2 ),
        .I2(mmcm_lock_count_reg__0[3]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[5]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__1[6]));
LUT6 #(
    .INIT(64'hAAA6AAAAAAAAAAAA)) 
     \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[7]_i_2 ),
        .I3(\n_0_mmcm_lock_count[7]_i_3 ),
        .I4(mmcm_lock_count_reg__0[4]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__1[7]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT2 #(
    .INIT(4'h7)) 
     \mmcm_lock_count[7]_i_2 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .O(\n_0_mmcm_lock_count[7]_i_2 ));
LUT2 #(
    .INIT(4'h7)) 
     \mmcm_lock_count[7]_i_3 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[3]),
        .O(\n_0_mmcm_lock_count[7]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[8]_i_1 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(n_0_mmcm_lock_reclocked_i_2),
        .O(p_0_in__1[8]));
LUT3 #(
    .INIT(8'h7F)) 
     \mmcm_lock_count[9]_i_2 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(n_0_mmcm_lock_reclocked_i_2),
        .I2(mmcm_lock_count_reg__0[8]),
        .O(sel));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(n_0_mmcm_lock_reclocked_i_2),
        .I2(mmcm_lock_count_reg__0[8]),
        .O(p_0_in__1[9]));
(* counter = "24" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(init_clk_in),
        .CE(sel),
        .D(p_0_in__1[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(n_20_mmcm_lock_reclocked_cdc_sync));
(* counter = "24" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(init_clk_in),
        .CE(sel),
        .D(p_0_in__1[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(n_20_mmcm_lock_reclocked_cdc_sync));
(* counter = "24" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(init_clk_in),
        .CE(sel),
        .D(p_0_in__1[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(n_20_mmcm_lock_reclocked_cdc_sync));
(* counter = "24" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(init_clk_in),
        .CE(sel),
        .D(p_0_in__1[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(n_20_mmcm_lock_reclocked_cdc_sync));
(* counter = "24" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(init_clk_in),
        .CE(sel),
        .D(p_0_in__1[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(n_20_mmcm_lock_reclocked_cdc_sync));
(* counter = "24" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(init_clk_in),
        .CE(sel),
        .D(p_0_in__1[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(n_20_mmcm_lock_reclocked_cdc_sync));
(* counter = "24" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(init_clk_in),
        .CE(sel),
        .D(p_0_in__1[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(n_20_mmcm_lock_reclocked_cdc_sync));
(* counter = "24" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(init_clk_in),
        .CE(sel),
        .D(p_0_in__1[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(n_20_mmcm_lock_reclocked_cdc_sync));
(* counter = "24" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(init_clk_in),
        .CE(sel),
        .D(p_0_in__1[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(n_20_mmcm_lock_reclocked_cdc_sync));
(* counter = "24" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(init_clk_in),
        .CE(sel),
        .D(p_0_in__1[9]),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(n_20_mmcm_lock_reclocked_cdc_sync));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_12 mmcm_lock_reclocked_cdc_sync
       (.I1(n_0_mmcm_lock_reclocked_i_2),
        .O1(n_21_mmcm_lock_reclocked_cdc_sync),
        .O24(O24),
        .O25(O25),
        .O26(O26),
        .O27(O27),
        .O28(O28),
        .O29(O29),
        .O30(O30),
        .Q(mmcm_lock_count_reg__0[9:8]),
        .SR(n_20_mmcm_lock_reclocked_cdc_sync),
        .init_clk_in(init_clk_in),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .s_out_d1_cdc_to_21(s_out_d1_cdc_to_21),
        .s_out_d2_22(s_out_d2_22),
        .s_out_d3_23(s_out_d3_23),
        .s_out_d4_24(s_out_d4_24),
        .s_out_d5_25(s_out_d5_25),
        .s_out_d6_26(s_out_d6_26),
        .s_out_d7_27(s_out_d7_27));
LUT6 #(
    .INIT(64'h0000008000000000)) 
     mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(mmcm_lock_count_reg__0[4]),
        .I3(\n_0_mmcm_lock_count[7]_i_3 ),
        .I4(\n_0_mmcm_lock_count[7]_i_2 ),
        .I5(mmcm_lock_count_reg__0[6]),
        .O(n_0_mmcm_lock_reclocked_i_2));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_21_mmcm_lock_reclocked_cdc_sync),
        .Q(mmcm_lock_reclocked),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000D000DC4C)) 
     pll_reset_asserted_i_1
       (.I0(n_0_tx_fsm_reset_done_int_i_2),
        .I1(pll_reset_asserted),
        .I2(n_0_tx_fsm_reset_done_int_i_3),
        .I3(n_0_tx_fsm_reset_done_int_i_4),
        .I4(gt0_pllrefclklost_i),
        .I5(gt_reset),
        .O(n_0_pll_reset_asserted_i_1));
FDRE #(
    .INIT(1'b0)) 
     pll_reset_asserted_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_pll_reset_asserted_i_1),
        .Q(pll_reset_asserted),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_11 qplllock_cdc_sync
       (.O24(O24),
        .O38(O38),
        .O39(O39),
        .O40(O40),
        .O41(O41),
        .O42(O42),
        .O43(O43),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_35(s_out_d1_cdc_to_35),
        .s_out_d2_36(s_out_d2_36),
        .s_out_d3_37(s_out_d3_37),
        .s_out_d4_38(s_out_d4_38),
        .s_out_d5_39(s_out_d5_39),
        .s_out_d6_40(s_out_d6_40),
        .s_out_d7_41(s_out_d7_41));
FDRE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_21_cplllock_cdc_sync),
        .Q(reset_time_out),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_10 run_phase_alignment_int_cdc_sync
       (.I1(n_0_time_out_wait_bypass_i_2),
        .I2(n_0_time_out_wait_bypass_i_3),
        .I3(n_0_time_out_wait_bypass_i_4),
        .I4(n_0_tx_fsm_reset_done_int_cdc_sync),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(n_20_run_phase_alignment_int_cdc_sync),
        .clear(clear),
        .out(out),
        .run_phase_alignment_int(run_phase_alignment_int),
        .s_out_d1_cdc_to(s_out_d1_cdc_to),
        .s_out_d2(s_out_d2),
        .s_out_d3(s_out_d3),
        .s_out_d4(s_out_d4),
        .s_out_d5(s_out_d5),
        .s_out_d6(s_out_d6),
        .s_out_d7(s_out_d7),
        .time_out_wait_bypass(time_out_wait_bypass),
        .user_clk(user_clk));
LUT6 #(
    .INIT(64'h0000000080008BAA)) 
     run_phase_alignment_int_i_1
       (.I0(run_phase_alignment_int),
        .I1(n_0_tx_fsm_reset_done_int_i_2),
        .I2(n_0_tx_fsm_reset_done_int_i_3),
        .I3(n_0_tx_fsm_reset_done_int_i_4),
        .I4(gt0_pllrefclklost_i),
        .I5(gt_reset),
        .O(n_0_run_phase_alignment_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_run_phase_alignment_int_i_1),
        .Q(run_phase_alignment_int),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     time_out_2ms_i_1
       (.I0(time_out_2ms),
        .I1(n_0_time_out_2ms_i_2),
        .I2(reset_time_out),
        .O(n_0_time_out_2ms_i_1));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     time_out_2ms_i_2
       (.I0(\n_0_time_out_counter[0]_i_5 ),
        .I1(\n_0_time_out_counter[0]_i_4 ),
        .I2(\n_0_time_out_counter[0]_i_3 ),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[6]),
        .I5(n_0_time_out_500us_i_3),
        .O(n_0_time_out_2ms_i_2));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_time_out_2ms_i_1),
        .Q(time_out_2ms),
        .R(\<const0> ));
LUT3 #(
    .INIT(8'h0E)) 
     time_out_500us_i_1
       (.I0(time_out_500us),
        .I1(n_0_time_out_500us_i_2),
        .I2(reset_time_out),
        .O(n_0_time_out_500us_i_1));
LUT5 #(
    .INIT(32'h10000000)) 
     time_out_500us_i_2
       (.I0(n_0_time_out_500us_i_3),
        .I1(n_0_time_out_500us_i_4),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[7]),
        .I4(n_0_time_out_500us_i_5),
        .O(n_0_time_out_500us_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     time_out_500us_i_3
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[1]),
        .I5(time_out_counter_reg[2]),
        .O(n_0_time_out_500us_i_3));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
     time_out_500us_i_4
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[4]),
        .I5(time_out_counter_reg[0]),
        .O(n_0_time_out_500us_i_4));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h00000800)) 
     time_out_500us_i_5
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[6]),
        .O(n_0_time_out_500us_i_5));
FDRE #(
    .INIT(1'b0)) 
     time_out_500us_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_time_out_500us_i_1),
        .Q(time_out_500us),
        .R(\<const0> ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_10 
       (.I0(time_out_counter_reg[0]),
        .O(\n_0_time_out_counter[0]_i_10 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
     \time_out_counter[0]_i_1__0 
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[3]),
        .I2(\n_0_time_out_counter[0]_i_3 ),
        .I3(\n_0_time_out_counter[0]_i_4 ),
        .I4(\n_0_time_out_counter[0]_i_5 ),
        .I5(\n_0_time_out_counter[0]_i_6 ),
        .O(\n_0_time_out_counter[0]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[13]),
        .O(\n_0_time_out_counter[0]_i_3 ));
LUT4 #(
    .INIT(16'h7FFF)) 
     \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[0]_i_4 ));
LUT5 #(
    .INIT(32'h00100000)) 
     \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[10]),
        .O(\n_0_time_out_counter[0]_i_5 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[18]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[1]),
        .I5(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_8 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_8 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_9 
       (.I0(time_out_counter_reg[1]),
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
       (.I0(time_out_counter_reg[18]),
        .O(\n_0_time_out_counter[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_3 
       (.I0(time_out_counter_reg[17]),
        .O(\n_0_time_out_counter[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[16]_i_4 
       (.I0(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[16]_i_4 ));
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
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[0] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_7_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\n_0_time_out_counter_reg[0]_i_2 ,\n_1_time_out_counter_reg[0]_i_2 ,\n_2_time_out_counter_reg[0]_i_2 ,\n_3_time_out_counter_reg[0]_i_2 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_time_out_counter_reg[0]_i_2 ,\n_5_time_out_counter_reg[0]_i_2 ,\n_6_time_out_counter_reg[0]_i_2 ,\n_7_time_out_counter_reg[0]_i_2 }),
        .S({\n_0_time_out_counter[0]_i_7 ,\n_0_time_out_counter[0]_i_8 ,\n_0_time_out_counter[0]_i_9 ,\n_0_time_out_counter[0]_i_10 }));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
(* counter = "16" *) 
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
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_time_out_counter_reg[12]_i_1 ,\n_5_time_out_counter_reg[12]_i_1 ,\n_6_time_out_counter_reg[12]_i_1 ,\n_7_time_out_counter_reg[12]_i_1 }),
        .S({\n_0_time_out_counter[12]_i_2 ,\n_0_time_out_counter[12]_i_3 ,\n_0_time_out_counter[12]_i_4 ,\n_0_time_out_counter[12]_i_5 }));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[13] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
(* counter = "16" *) 
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
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:2],\n_2_time_out_counter_reg[16]_i_1 ,\n_3_time_out_counter_reg[16]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3],\n_5_time_out_counter_reg[16]_i_1 ,\n_6_time_out_counter_reg[16]_i_1 ,\n_7_time_out_counter_reg[16]_i_1 }),
        .S({\<const0> ,\n_0_time_out_counter[16]_i_2 ,\n_0_time_out_counter[16]_i_3 ,\n_0_time_out_counter[16]_i_4 }));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[18] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
(* counter = "16" *) 
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
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_time_out_counter_reg[4]_i_1 ,\n_5_time_out_counter_reg[4]_i_1 ,\n_6_time_out_counter_reg[4]_i_1 ,\n_7_time_out_counter_reg[4]_i_1 }),
        .S({\n_0_time_out_counter[4]_i_2 ,\n_0_time_out_counter[4]_i_3 ,\n_0_time_out_counter[4]_i_4 ,\n_0_time_out_counter[4]_i_5 }));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[5] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
(* counter = "16" *) 
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
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_time_out_counter_reg[8]_i_1 ,\n_5_time_out_counter_reg[8]_i_1 ,\n_6_time_out_counter_reg[8]_i_1 ,\n_7_time_out_counter_reg[8]_i_1 }),
        .S({\n_0_time_out_counter[8]_i_2 ,\n_0_time_out_counter[8]_i_3 ,\n_0_time_out_counter[8]_i_4 ,\n_0_time_out_counter[8]_i_5 }));
(* counter = "16" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[9] 
       (.C(init_clk_in),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_13 time_out_wait_bypass_cdc_sync
       (.D({n_19_time_out_wait_bypass_cdc_sync,n_20_time_out_wait_bypass_cdc_sync}),
        .I1(\n_0_FSM_onehot_tx_state[1]_i_2 ),
        .I2(\n_0_FSM_onehot_tx_state[7]_i_7 ),
        .I3(\n_0_FSM_onehot_tx_state[7]_i_6 ),
        .I4(\n_0_FSM_onehot_tx_state[1]_i_3 ),
        .I5(\n_0_FSM_onehot_tx_state[6]_i_2 ),
        .O12(O12),
        .O13(O13),
        .O14(O14),
        .O15(O15),
        .O16(O16),
        .O17(O17),
        .init_clk_in(init_clk_in),
        .s_out_d1_cdc_to_7(s_out_d1_cdc_to_7),
        .s_out_d2_8(s_out_d2_8),
        .s_out_d3_9(s_out_d3_9),
        .s_out_d4_10(s_out_d4_10),
        .s_out_d5_11(s_out_d5_11),
        .s_out_d6_12(s_out_d6_12),
        .s_out_d7_13(s_out_d7_13),
        .time_out_wait_bypass(time_out_wait_bypass));
LUT5 #(
    .INIT(32'hF7FFFFFF)) 
     time_out_wait_bypass_i_2
       (.I0(wait_bypass_count_reg[1]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[12]),
        .I3(wait_bypass_count_reg[13]),
        .I4(wait_bypass_count_reg[16]),
        .O(n_0_time_out_wait_bypass_i_2));
LUT6 #(
    .INIT(64'hFFFFDFFFFFFFFFFF)) 
     time_out_wait_bypass_i_3
       (.I0(wait_bypass_count_reg[8]),
        .I1(wait_bypass_count_reg[9]),
        .I2(wait_bypass_count_reg[2]),
        .I3(wait_bypass_count_reg[0]),
        .I4(wait_bypass_count_reg[14]),
        .I5(wait_bypass_count_reg[10]),
        .O(n_0_time_out_wait_bypass_i_3));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
     time_out_wait_bypass_i_4
       (.I0(wait_bypass_count_reg[15]),
        .I1(wait_bypass_count_reg[7]),
        .I2(wait_bypass_count_reg[5]),
        .I3(wait_bypass_count_reg[3]),
        .I4(wait_bypass_count_reg[4]),
        .I5(wait_bypass_count_reg[6]),
        .O(n_0_time_out_wait_bypass_i_4));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(user_clk),
        .CE(\<const1> ),
        .D(n_20_run_phase_alignment_int_cdc_sync),
        .Q(time_out_wait_bypass),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     time_tlock_max_i_1
       (.I0(time_tlock_max),
        .I1(n_0_time_tlock_max_i_2__0),
        .I2(reset_time_out),
        .O(n_0_time_tlock_max_i_1));
LUT6 #(
    .INIT(64'h0000000002000000)) 
     time_tlock_max_i_2__0
       (.I0(n_0_time_tlock_max_i_3__0),
        .I1(n_0_time_tlock_max_i_4),
        .I2(n_0_time_out_500us_i_4),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[8]),
        .I5(\n_0_time_out_counter[0]_i_3 ),
        .O(n_0_time_tlock_max_i_2__0));
LUT5 #(
    .INIT(32'h00001000)) 
     time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[5]),
        .O(n_0_time_tlock_max_i_3__0));
LUT4 #(
    .INIT(16'hFFFE)) 
     time_tlock_max_i_4
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[18]),
        .O(n_0_time_tlock_max_i_4));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_time_tlock_max_i_1),
        .Q(time_tlock_max),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_14 tx_fsm_reset_done_int_cdc_sync
       (.I1(n_0_time_out_wait_bypass_i_2),
        .I2(n_0_time_out_wait_bypass_i_3),
        .I3(n_0_time_out_wait_bypass_i_4),
        .O1(n_0_tx_fsm_reset_done_int_cdc_sync),
        .O10(O10),
        .O11(O11),
        .O2(n_20_tx_fsm_reset_done_int_cdc_sync),
        .O6(O6),
        .O7(O7),
        .O8(O8),
        .O9(O9),
        .s_out_d1_cdc_to_0(s_out_d1_cdc_to_0),
        .s_out_d2_1(s_out_d2_1),
        .s_out_d3_2(s_out_d3_2),
        .s_out_d4_3(s_out_d4_3),
        .s_out_d5_4(s_out_d5_4),
        .s_out_d6_5(s_out_d6_5),
        .s_out_d7_6(s_out_d7_6),
        .tx_resetdone_out(tx_resetdone_out),
        .user_clk(user_clk));
LUT6 #(
    .INIT(64'h00000000A000AAAE)) 
     tx_fsm_reset_done_int_i_1
       (.I0(tx_resetdone_out),
        .I1(n_0_tx_fsm_reset_done_int_i_2),
        .I2(n_0_tx_fsm_reset_done_int_i_3),
        .I3(n_0_tx_fsm_reset_done_int_i_4),
        .I4(gt0_pllrefclklost_i),
        .I5(gt_reset),
        .O(n_0_tx_fsm_reset_done_int_i_1));
LUT3 #(
    .INIT(8'h01)) 
     tx_fsm_reset_done_int_i_2
       (.I0(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[1] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[5] ),
        .O(n_0_tx_fsm_reset_done_int_i_2));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'h01)) 
     tx_fsm_reset_done_int_i_3
       (.I0(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[6] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[4] ),
        .O(n_0_tx_fsm_reset_done_int_i_3));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h01)) 
     tx_fsm_reset_done_int_i_4
       (.I0(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[6] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[2] ),
        .O(n_0_tx_fsm_reset_done_int_i_4));
FDRE #(
    .INIT(1'b0)) 
     tx_fsm_reset_done_int_reg
       (.C(init_clk_in),
        .CE(\<const1> ),
        .D(n_0_tx_fsm_reset_done_int_i_1),
        .Q(tx_resetdone_out),
        .R(\<const0> ));
aurora_8b10b_0aurora_8b10b_0_cdc_sync_8 txresetdone_cdc_sync
       (.E(n_20_txresetdone_cdc_sync),
        .I1(n_0_tx_fsm_reset_done_int_i_4),
        .I2(n_0_tx_fsm_reset_done_int_i_2),
        .I3(n_0_tx_fsm_reset_done_int_i_3),
        .I4(\n_0_FSM_onehot_tx_state[7]_i_4 ),
        .O1(n_19_txresetdone_cdc_sync),
        .O18(O18),
        .O19(O19),
        .O20(O20),
        .O21(O21),
        .O22(O22),
        .O23(O23),
        .cplllock_sync(cplllock_sync),
        .init_clk_in(init_clk_in),
        .init_wait_done(init_wait_done),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out(reset_time_out),
        .s_out_d1_cdc_to_14(s_out_d1_cdc_to_14),
        .s_out_d2_15(s_out_d2_15),
        .s_out_d3_16(s_out_d3_16),
        .s_out_d4_17(s_out_d4_17),
        .s_out_d5_18(s_out_d5_18),
        .s_out_d6_19(s_out_d6_19),
        .s_out_d7_20(s_out_d7_20),
        .time_out_2ms(time_out_2ms),
        .time_out_500us(time_out_500us),
        .txfsm_txresetdone_r(txfsm_txresetdone_r));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_4 
       (.I0(wait_bypass_count_reg[3]),
        .O(\n_0_wait_bypass_count[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[2]),
        .O(\n_0_wait_bypass_count[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[1]),
        .O(\n_0_wait_bypass_count[0]_i_6 ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[0]),
        .O(\n_0_wait_bypass_count[0]_i_7 ));
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
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[0] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\n_0_wait_bypass_count_reg[0]_i_3 ,\n_1_wait_bypass_count_reg[0]_i_3 ,\n_2_wait_bypass_count_reg[0]_i_3 ,\n_3_wait_bypass_count_reg[0]_i_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_wait_bypass_count_reg[0]_i_3 ,\n_5_wait_bypass_count_reg[0]_i_3 ,\n_6_wait_bypass_count_reg[0]_i_3 ,\n_7_wait_bypass_count_reg[0]_i_3 }),
        .S({\n_0_wait_bypass_count[0]_i_4 ,\n_0_wait_bypass_count[0]_i_5 ,\n_0_wait_bypass_count[0]_i_6 ,\n_0_wait_bypass_count[0]_i_7 }));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[10] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[11] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[12] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[8]_i_1 ),
        .CO({\n_0_wait_bypass_count_reg[12]_i_1 ,\n_1_wait_bypass_count_reg[12]_i_1 ,\n_2_wait_bypass_count_reg[12]_i_1 ,\n_3_wait_bypass_count_reg[12]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wait_bypass_count_reg[12]_i_1 ,\n_5_wait_bypass_count_reg[12]_i_1 ,\n_6_wait_bypass_count_reg[12]_i_1 ,\n_7_wait_bypass_count_reg[12]_i_1 }),
        .S({\n_0_wait_bypass_count[12]_i_2 ,\n_0_wait_bypass_count[12]_i_3 ,\n_0_wait_bypass_count[12]_i_4 ,\n_0_wait_bypass_count[12]_i_5 }));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[13] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[13]),
        .R(clear));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[14] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[14]),
        .R(clear));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[15] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[15]),
        .R(clear));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[16] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[16]_i_1 ),
        .Q(wait_bypass_count_reg[16]),
        .R(clear));
CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[12]_i_1 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\n_7_wait_bypass_count_reg[16]_i_1 }),
        .S({\<const0> ,\<const0> ,\<const0> ,\n_0_wait_bypass_count[16]_i_2 }));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[1] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[2] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[3] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[4] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[0]_i_3 ),
        .CO({\n_0_wait_bypass_count_reg[4]_i_1 ,\n_1_wait_bypass_count_reg[4]_i_1 ,\n_2_wait_bypass_count_reg[4]_i_1 ,\n_3_wait_bypass_count_reg[4]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wait_bypass_count_reg[4]_i_1 ,\n_5_wait_bypass_count_reg[4]_i_1 ,\n_6_wait_bypass_count_reg[4]_i_1 ,\n_7_wait_bypass_count_reg[4]_i_1 }),
        .S({\n_0_wait_bypass_count[4]_i_2 ,\n_0_wait_bypass_count[4]_i_3 ,\n_0_wait_bypass_count[4]_i_4 ,\n_0_wait_bypass_count[4]_i_5 }));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[5] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[6] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_5_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[7] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_4_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[8] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_7_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[4]_i_1 ),
        .CO({\n_0_wait_bypass_count_reg[8]_i_1 ,\n_1_wait_bypass_count_reg[8]_i_1 ,\n_2_wait_bypass_count_reg[8]_i_1 ,\n_3_wait_bypass_count_reg[8]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wait_bypass_count_reg[8]_i_1 ,\n_5_wait_bypass_count_reg[8]_i_1 ,\n_6_wait_bypass_count_reg[8]_i_1 ,\n_7_wait_bypass_count_reg[8]_i_1 }),
        .S({\n_0_wait_bypass_count[8]_i_2 ,\n_0_wait_bypass_count[8]_i_3 ,\n_0_wait_bypass_count[8]_i_4 ,\n_0_wait_bypass_count[8]_i_5 }));
(* counter = "18" *) 
   FDRE #(
    .INIT(1'b0)) 
     \wait_bypass_count_reg[9] 
       (.C(user_clk),
        .CE(n_20_tx_fsm_reset_done_int_cdc_sync),
        .D(\n_6_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[9]),
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
