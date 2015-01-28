// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Fri Jul 18 14:05:35 2014
// Host        : PC210 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_funcsim.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* downgradeipidentifiedwarnings = "yes" *) (* core_generation_info = "gig_ethernet_pcs_pma_0,gig_ethernet_pcs_pma_v14_1,{x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gig_ethernet_pcs_pma,x_ipVersion=14.1,x_ipLanguage=VHDL,c_family=kintex7,c_component_name=gig_ethernet_pcs_pma_0,c_is_sgmii=false,c_use_transceiver=true,c_use_tbi=false,c_use_lvds=false,c_has_an=false,c_has_mdio=false,c_sgmii_phy_mode=false,c_dynamic_switching=false,c_transceiver_mode=A,c_sgmii_fabric_buffer=true,c_1588=0,C_PHYADDR=1}" *) (* x_core_info = "gig_ethernet_pcs_pma_0_support,Vivado 2013.4" *) 
(* NotValidForBitStream *)
module gig_ethernet_pcs_pma_0
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    pma_reset_out,
    mmcm_locked_out,
    independent_clock_bufg,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    status_vector,
    reset,
    gt0_txpmareset_in,
    gt0_txpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxpcsreset_in,
    gt0_rxbufreset_in,
    gt0_rxpmaresetdone_out,
    gt0_rxbufstatus_out,
    gt0_txbufstatus_out,
    gt0_dmonitorout_out,
    gt0_drpaddr_in,
    gt0_drpclk_in,
    gt0_drpdi_in,
    gt0_drpdo_out,
    gt0_drpen_in,
    gt0_drprdy_out,
    gt0_drpwe_in,
    gt0_rxchariscomma_out,
    gt0_rxcharisk_out,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_txpolarity_in,
    gt0_txdiffctrl_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_rxpolarity_in,
    gt0_rxdfelpmreset_in,
    gt0_rxdfeagcovrden_in,
    gt0_rxlpmen_in,
    gt0_txprbssel_in,
    gt0_txprbsforceerr_in,
    gt0_rxprbscntreset_in,
    gt0_rxprbserr_out,
    gt0_rxprbssel_in,
    gt0_loopback_in,
    gt0_txresetdone_out,
    gt0_rxresetdone_out,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gt0_eyescanreset_in,
    gt0_eyescandataerror_out,
    gt0_eyescantrigger_in,
    gt0_rxcdrhold_in,
    gt0_rxmonitorout_out,
    gt0_rxmonitorsel_in,
    signal_detect,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  output pma_reset_out;
  output mmcm_locked_out;
  input independent_clock_bufg;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output [15:0]status_vector;
  input reset;
  input gt0_txpmareset_in;
  input gt0_txpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxpcsreset_in;
  input gt0_rxbufreset_in;
  output gt0_rxpmaresetdone_out;
  output [2:0]gt0_rxbufstatus_out;
  output [1:0]gt0_txbufstatus_out;
  output [16:0]gt0_dmonitorout_out;
  input [8:0]gt0_drpaddr_in;
  input gt0_drpclk_in;
  input [15:0]gt0_drpdi_in;
  output [15:0]gt0_drpdo_out;
  input gt0_drpen_in;
  output gt0_drprdy_out;
  input gt0_drpwe_in;
  output [1:0]gt0_rxchariscomma_out;
  output [1:0]gt0_rxcharisk_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  input gt0_txpolarity_in;
  input [3:0]gt0_txdiffctrl_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input gt0_rxpolarity_in;
  input gt0_rxdfelpmreset_in;
  input gt0_rxdfeagcovrden_in;
  input gt0_rxlpmen_in;
  input [2:0]gt0_txprbssel_in;
  input gt0_txprbsforceerr_in;
  input gt0_rxprbscntreset_in;
  output gt0_rxprbserr_out;
  input [2:0]gt0_rxprbssel_in;
  input [2:0]gt0_loopback_in;
  output gt0_txresetdone_out;
  output gt0_rxresetdone_out;
  output [1:0]gt0_rxdisperr_out;
  output [1:0]gt0_rxnotintable_out;
  input gt0_eyescanreset_in;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_rxcdrhold_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  input signal_detect;
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;

  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire [16:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire [2:0]gt0_loopback_in;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcdrhold_in;
  wire [1:0]gt0_rxchariscomma_out;
  wire [1:0]gt0_rxcharisk_out;
  wire gt0_rxcommadet_out;
  wire gt0_rxdfeagcovrden_in;
  wire gt0_rxdfelpmreset_in;
  wire [1:0]gt0_rxdisperr_out;
  wire gt0_rxlpmen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire [1:0]gt0_rxnotintable_out;
  wire gt0_rxpcsreset_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpmaresetdone_out;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire gt0_rxresetdone_out;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txpcsreset_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gt0_txresetdone_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire rxuserclk2_out;
  wire rxuserclk_out;
  wire signal_detect;
  wire [15:0]status_vector;
  wire txn;
  wire txp;
  wire userclk2_out;
  wire userclk_out;

(* downgradeipidentifiedwarnings = "yes" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_support U0
       (.configuration_vector(configuration_vector),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxcdrhold_in(gt0_rxcdrhold_in),
        .gt0_rxchariscomma_out(gt0_rxchariscomma_out),
        .gt0_rxcharisk_out(gt0_rxcharisk_out),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdfeagcovrden_in(gt0_rxdfeagcovrden_in),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxdisperr_out(gt0_rxdisperr_out),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxnotintable_out(gt0_rxnotintable_out),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpmaresetdone_out(gt0_rxpmaresetdone_out),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(mmcm_locked_out),
        .pma_reset_out(pma_reset_out),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .rxuserclk2_out(rxuserclk2_out),
        .rxuserclk_out(rxuserclk_out),
        .signal_detect(signal_detect),
        .status_vector(status_vector),
        .txn(txn),
        .txp(txp),
        .userclk2_out(userclk2_out),
        .userclk_out(userclk_out));
endmodule

module gig_ethernet_pcs_pma_0GPCS_PMA_GEN
   (SS,
    O1,
    gmii_rx_er,
    status_vector,
    txchardispmode,
    txcharisk,
    gmii_rx_dv,
    txchardispval,
    O2,
    O3,
    O4,
    encommaalign,
    gmii_rxd,
    D,
    I1,
    gmii_tx_en,
    gmii_tx_er,
    I2,
    txbuferr,
    rxbuferr,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gmii_txd,
    gt0_rxcharisk_out,
    gt0_rxchariscomma_out,
    toggle,
    I3,
    signal_detect,
    configuration_vector,
    I4);
  output [0:0]SS;
  output O1;
  output gmii_rx_er;
  output [6:0]status_vector;
  output txchardispmode;
  output txcharisk;
  output gmii_rx_dv;
  output txchardispval;
  output O2;
  output O3;
  output O4;
  output encommaalign;
  output [7:0]gmii_rxd;
  output [7:0]D;
  input I1;
  input gmii_tx_en;
  input gmii_tx_er;
  input I2;
  input txbuferr;
  input rxbuferr;
  input [0:0]gt0_rxdisperr_out;
  input [0:0]gt0_rxnotintable_out;
  input [7:0]gmii_txd;
  input [0:0]gt0_rxcharisk_out;
  input [0:0]gt0_rxchariscomma_out;
  input toggle;
  input [7:0]I3;
  input signal_detect;
  input [2:0]configuration_vector;
  input [1:0]I4;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]D;
  wire D_0;
  wire I1;
  wire I2;
  wire [7:0]I3;
  wire I350_in;
  wire [1:0]I4;
  wire LOOPBACK_INT;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire Q;
  wire RESET_INT;
  wire RESET_INT_PIPE;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RXNOTINTABLE_SRL;
  wire SIGNAL_DETECT_MOD;
  wire SRESET;
  wire SRESET_PIPE;
  wire [0:0]SS;
  wire SYNC_STATUS_REG0;
  wire TXBUFERR_INT;
  wire VCC_2;
  wire [2:0]configuration_vector;
  wire encommaalign;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire [0:0]gt0_rxchariscomma_out;
  wire [0:0]gt0_rxcharisk_out;
  wire [0:0]gt0_rxdisperr_out;
  wire [0:0]gt0_rxnotintable_out;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[10]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[11]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[12]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[13]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_10 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_11 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_12 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_13 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_14 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_16 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_17 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_18 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_19 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_2 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_20 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_21 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_22 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_23 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_24 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_26 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_27 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_28 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_29 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_31 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_32 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_33 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_34 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_35 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_36 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_37 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_7 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_8 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_9 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[1]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[2]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[3]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[4]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[5]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[6]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[7]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[8]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[9]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[10]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[11]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[12]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[13]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_10 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_11 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_12 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_13 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_14 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_16 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_17 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_18 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_19 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_2 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_20 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_21 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_22 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_23 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_24 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_26 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_27 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_28 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_29 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_31 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_32 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_33 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_34 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_35 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_36 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_37 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_7 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_8 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_9 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[1]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[2]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[3]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[4]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[5]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[6]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[7]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[8]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[9]_i_1 ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8] ;
  wire \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ;
  wire \n_0_MGT_RESET.SRESET_i_1 ;
  wire \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1 ;
  wire \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1 ;
  wire \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1 ;
  wire n_0_STATUS_VECTOR_0_PRE_reg;
  wire n_0_TRANSMITTER;
  wire \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_1 ;
  wire \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2 ;
  wire \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3 ;
  wire \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_4 ;
  wire \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_5 ;
  wire \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6 ;
  wire \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_1 ;
  wire \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2 ;
  wire \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3 ;
  wire \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_4 ;
  wire \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_5 ;
  wire \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6 ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT[1]_i_1 ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[0]_i_1 ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[1]_i_1 ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1 ;
  wire \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ;
  wire n_10_TRANSMITTER;
  wire n_11_TRANSMITTER;
  wire n_12_TRANSMITTER;
  wire n_13_TRANSMITTER;
  wire n_14_TRANSMITTER;
  wire n_15_TRANSMITTER;
  wire n_16_TRANSMITTER;
  wire n_17_TRANSMITTER;
  wire n_18_TRANSMITTER;
  wire n_19_TRANSMITTER;
  wire n_1_TRANSMITTER;
  wire n_20_TRANSMITTER;
  wire n_21_TRANSMITTER;
  wire n_2_TRANSMITTER;
  wire n_3_SYNCHRONISATION;
  wire n_3_TRANSMITTER;
  wire n_4_TRANSMITTER;
  wire n_5_TRANSMITTER;
  wire n_6_TRANSMITTER;
  wire n_7_TRANSMITTER;
  wire n_8_TRANSMITTER;
  wire n_9_TRANSMITTER;
  wire p_0_in;
  wire p_0_out;
  wire p_1_out;
  wire p_55_in;
  wire rxbuferr;
  wire signal_detect;
  wire [6:0]status_vector;
  wire toggle;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;

(* XILINX_LEGACY_PRIM = "SRL16" *) 
   (* box_type = "PRIMITIVE" *) 
   (* srl_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/DELAY_RXDISPERR " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     DELAY_RXDISPERR
       (.A0(\<const0> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(VCC_2),
        .CLK(I1),
        .D(D_0),
        .Q(Q));
(* XILINX_LEGACY_PRIM = "SRL16" *) 
   (* box_type = "PRIMITIVE" *) 
   (* srl_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/DELAY_RXNOTINTABLE " *) 
   SRL16E #(
    .INIT(16'h0000)) 
     DELAY_RXNOTINTABLE
       (.A0(\<const0> ),
        .A1(\<const0> ),
        .A2(\<const1> ),
        .A3(\<const0> ),
        .CE(VCC_2),
        .CLK(I1),
        .D(RXNOTINTABLE_INT),
        .Q(RXNOTINTABLE_SRL));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT4 #(
    .INIT(16'h0200)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[10]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[11]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[11]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT4 #(
    .INIT(16'h2000)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[12]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[12]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT4 #(
    .INIT(16'h0020)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[13]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[13]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_1 
       (.I0(RESET_INT),
        .I1(p_0_in),
        .O(p_0_out));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_10 
       (.I0(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3 ),
        .I1(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6 ),
        .I2(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_11 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_11 ));
LUT6 #(
    .INIT(64'h04040404040404FF)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_12 
       (.I0(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_27 ),
        .I2(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_28 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_29 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_12 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE8)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_13 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_31 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_29 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_14 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_28 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair119" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_16 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .I5(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_17 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_32 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_17 ));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT5 #(
    .INIT(32'h00000116)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_18 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_18 ));
LUT6 #(
    .INIT(64'h0000000000020200)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_19 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_33 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_19 ));
(* SOFT_HLUTNM = "soft_lutpair106" *) 
   LUT4 #(
    .INIT(16'hA800)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_2 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair96" *) 
   LUT5 #(
    .INIT(32'h00000004)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_20 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_20 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_21 
       (.I0(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_21 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_22 
       (.I0(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_34 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_22 ));
LUT6 #(
    .INIT(64'h000100010001000F)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_23 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_35 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_36 ),
        .I3(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_37 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_23 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_24 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] ),
        .I2(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_34 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_24 ));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25 ));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_26 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_26 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_27 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_27 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_28 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_28 ));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_29 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_29 ));
LUT6 #(
    .INIT(64'hEEFEEEFEEEEEAAAA)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_7 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_8 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_9 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_10 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair125" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30 ));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_31 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_31 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_32 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_32 ));
(* SOFT_HLUTNM = "soft_lutpair124" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_33 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_33 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_34 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_34 ));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_35 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_35 ));
(* SOFT_HLUTNM = "soft_lutpair111" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_36 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_36 ));
(* SOFT_HLUTNM = "soft_lutpair97" *) 
   LUT5 #(
    .INIT(32'hFFFEFEEE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_37 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_37 ));
LUT6 #(
    .INIT(64'hFFFFFFFFBAAABA00)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_11 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_12 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_13 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_14 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_16 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ));
LUT6 #(
    .INIT(64'hF0F01010F0F01000)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_17 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_18 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_19 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_20 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ));
LUT6 #(
    .INIT(64'hF666FFFFF666F666)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_21 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_22 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_23 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_24 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_7 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_7 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFEE)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_8 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_26 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_8 ));
LUT6 #(
    .INIT(64'h0000000100000003)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_9 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .I1(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_26 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[1]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair99" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[2]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[3]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair100" *) 
   LUT4 #(
    .INIT(16'h0008)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[4]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[5]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair101" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[6]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair103" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[7]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair104" *) 
   LUT4 #(
    .INIT(16'h0080)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[8]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair102" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[9]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[9]_i_1 ));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0] ),
        .S(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[10]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[11]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[12]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[13]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_2 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[1]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[2]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[3]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[4]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[5]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[6]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[7]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[8]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8] ),
        .R(p_0_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[9]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .R(p_0_out));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT4 #(
    .INIT(16'h0200)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[10]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[11]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[11]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair116" *) 
   LUT4 #(
    .INIT(16'h2000)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[12]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[12]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT4 #(
    .INIT(16'h0020)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[13]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[13]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_1 
       (.I0(RESET_INT),
        .I1(TXBUFERR_INT),
        .O(p_1_out));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_10 
       (.I0(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3 ),
        .I1(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6 ),
        .I2(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_11 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_11 ));
LUT6 #(
    .INIT(64'h04040404040404FF)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_12 
       (.I0(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_27 ),
        .I2(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_28 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_29 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_12 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFE8)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_13 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_31 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_29 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_14 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_28 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair126" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_16 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .I5(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_17 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_32 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_17 ));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT5 #(
    .INIT(32'h00000116)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_18 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_18 ));
LUT6 #(
    .INIT(64'h0000000000020200)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_19 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_33 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_19 ));
(* SOFT_HLUTNM = "soft_lutpair112" *) 
   LUT4 #(
    .INIT(16'hA800)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_2 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair93" *) 
   LUT5 #(
    .INIT(32'h00000004)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_20 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_20 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_21 
       (.I0(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_21 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_22 
       (.I0(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_34 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_22 ));
LUT6 #(
    .INIT(64'h000100010001000F)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_23 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_35 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_36 ),
        .I3(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_37 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_23 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_24 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] ),
        .I2(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_34 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_24 ));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25 ));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_26 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_26 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_27 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_27 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_28 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_28 ));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_29 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_29 ));
LUT6 #(
    .INIT(64'hEEFEEEFEEEEEAAAA)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_7 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_8 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_9 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_10 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair123" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30 ));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_31 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_31 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_32 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_32 ));
(* SOFT_HLUTNM = "soft_lutpair122" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_33 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_33 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_34 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_34 ));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_35 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_35 ));
(* SOFT_HLUTNM = "soft_lutpair108" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_36 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_36 ));
(* SOFT_HLUTNM = "soft_lutpair98" *) 
   LUT5 #(
    .INIT(32'hFFFEFEEE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_37 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_37 ));
LUT6 #(
    .INIT(64'hFFFFFFFFBAAABA00)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_11 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_12 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_13 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_14 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_16 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ));
LUT6 #(
    .INIT(64'hF0F01010F0F01000)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_17 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_18 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_19 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_20 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ));
LUT6 #(
    .INIT(64'hF666FFFFF666F666)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_21 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_22 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_23 ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_24 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_7 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_7 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFFEE)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_8 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_26 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_8 ));
LUT6 #(
    .INIT(64'h0000000100000003)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_9 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .I1(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_26 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_9 ));
(* SOFT_HLUTNM = "soft_lutpair109" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[1]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[2]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[3]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT4 #(
    .INIT(16'h0008)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[4]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair115" *) 
   LUT4 #(
    .INIT(16'h0010)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[5]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair118" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[6]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT4 #(
    .INIT(16'h0040)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[7]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[7]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair117" *) 
   LUT4 #(
    .INIT(16'h0080)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[8]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair113" *) 
   LUT4 #(
    .INIT(16'h0100)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[9]_i_1 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6 ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4 ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3 ),
        .O(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[9]_i_1 ));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\<const0> ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0] ),
        .S(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[10]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[11]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[12]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[13]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_2 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[1]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[2]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[3]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[4]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[5]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[6]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[7]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[8]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8] ),
        .R(p_1_out));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[9]_i_1 ),
        .Q(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .R(p_1_out));
GND GND
       (.G(\<const0> ));
(* ASYNC_REG *) 
   FDPE #(
    .INIT(1'b0)) 
     \MGT_RESET.RESET_INT_PIPE_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(I2),
        .Q(RESET_INT_PIPE));
(* ASYNC_REG *) 
   FDPE #(
    .INIT(1'b0)) 
     \MGT_RESET.RESET_INT_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(RESET_INT_PIPE),
        .PRE(I2),
        .Q(RESET_INT));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \MGT_RESET.SRESET_PIPE_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(RESET_INT),
        .Q(SRESET_PIPE),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'hE)) 
     \MGT_RESET.SRESET_i_1 
       (.I0(SRESET_PIPE),
        .I1(RESET_INT),
        .O(\n_0_MGT_RESET.SRESET_i_1 ));
(* ASYNC_REG *) 
   FDRE #(
    .INIT(1'b0)) 
     \MGT_RESET.SRESET_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_MGT_RESET.SRESET_i_1 ),
        .Q(SRESET),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h2)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1 
       (.I0(configuration_vector[0]),
        .I1(SRESET),
        .O(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1 
       (.I0(configuration_vector[1]),
        .I1(SRESET),
        .O(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair127" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1 
       (.I0(configuration_vector[2]),
        .I1(SRESET),
        .O(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1 ),
        .Q(LOOPBACK_INT),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1 ),
        .Q(O3),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1 ),
        .Q(O2),
        .R(\<const0> ));
gig_ethernet_pcs_pma_0RX__parameterized0 RECEIVER
       (.D_0(D_0),
        .I1(I1),
        .I2(O1),
        .I3(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I350_in(I350_in),
        .I4(n_3_SYNCHRONISATION),
        .I5(O3),
        .I6(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] ),
        .I7(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] ),
        .Q({\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] ,\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] }),
        .RXEVEN(RXEVEN),
        .RXNOTINTABLE_INT(RXNOTINTABLE_INT),
        .SR(O2),
        .SYNC_STATUS_REG0(SYNC_STATUS_REG0),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .p_0_in(p_0_in),
        .p_55_in(p_55_in),
        .status_vector(status_vector[4:2]));
FDRE #(
    .INIT(1'b0)) 
     RXDISPERR_REG_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(Q),
        .Q(status_vector[5]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     RXNOTINTABLE_REG_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(RXNOTINTABLE_SRL),
        .Q(status_vector[6]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     STATUS_VECTOR_0_PRE_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(p_55_in),
        .Q(n_0_STATUS_VECTOR_0_PRE_reg),
        .R(\<const0> ));
FDRE \STATUS_VECTOR_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_STATUS_VECTOR_0_PRE_reg),
        .Q(status_vector[0]),
        .R(\<const0> ));
FDRE \STATUS_VECTOR_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_STATUS_VECTOR_0_PRE_reg),
        .Q(status_vector[1]),
        .R(\<const0> ));
gig_ethernet_pcs_pma_0SYNCHRONISE SYNCHRONISATION
       (.D_0(D_0),
        .I1(I1),
        .I2(O1),
        .I3(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .I350_in(I350_in),
        .I4(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ),
        .LOOPBACK_INT(LOOPBACK_INT),
        .O1(n_3_SYNCHRONISATION),
        .RXEVEN(RXEVEN),
        .RXNOTINTABLE_INT(RXNOTINTABLE_INT),
        .SIGNAL_DETECT_MOD(SIGNAL_DETECT_MOD),
        .SYNC_STATUS_REG0(SYNC_STATUS_REG0),
        .encommaalign(encommaalign),
        .p_0_in(p_0_in),
        .p_55_in(p_55_in));
gig_ethernet_pcs_pma_0sync_block__parameterized0 SYNC_SIGNAL_DETECT
       (.I1(O3),
        .I2(I1),
        .SIGNAL_DETECT_MOD(SIGNAL_DETECT_MOD),
        .signal_detect(signal_detect));
gig_ethernet_pcs_pma_0TX__parameterized0 TRANSMITTER
       (.D({n_3_TRANSMITTER,n_4_TRANSMITTER,n_5_TRANSMITTER,n_6_TRANSMITTER}),
        .I1(I1),
        .I2(SS),
        .I3(I3),
        .LOOPBACK_INT(LOOPBACK_INT),
        .O1(n_0_TRANSMITTER),
        .O10({n_13_TRANSMITTER,n_14_TRANSMITTER,n_15_TRANSMITTER,n_16_TRANSMITTER,n_17_TRANSMITTER,n_18_TRANSMITTER,n_19_TRANSMITTER,n_20_TRANSMITTER}),
        .O11(n_21_TRANSMITTER),
        .O2(n_1_TRANSMITTER),
        .O3(n_2_TRANSMITTER),
        .O4(n_7_TRANSMITTER),
        .O5(n_8_TRANSMITTER),
        .O6(n_9_TRANSMITTER),
        .O7(n_10_TRANSMITTER),
        .O8(n_11_TRANSMITTER),
        .O9(n_12_TRANSMITTER),
        .SR(O2),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_rxchariscomma_out(gt0_rxchariscomma_out),
        .gt0_rxcharisk_out(gt0_rxcharisk_out));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0001)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_i_1 
       (.I0(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4] ),
        .I3(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3 ),
        .I4(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_4 ),
        .I5(p_0_out),
        .O(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_i_2 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13] ),
        .O(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair95" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_i_3 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5] ),
        .O(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3 ));
LUT6 #(
    .INIT(64'h00000A0A00000A0B)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_i_4 
       (.I0(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9] ),
        .I2(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6 ),
        .I3(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8] ),
        .O(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair105" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_i_5 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2] ),
        .O(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair110" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_i_6 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11] ),
        .O(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.MGT_RX_RESET_INT_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_1 ),
        .Q(O1),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFF0001)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_i_1 
       (.I0(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4] ),
        .I3(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3 ),
        .I4(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_4 ),
        .I5(p_1_out),
        .O(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_i_2 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13] ),
        .O(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair94" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_i_3 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5] ),
        .O(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3 ));
LUT6 #(
    .INIT(64'h00000A0A00000A0B)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_i_4 
       (.I0(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_5 ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9] ),
        .I2(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6 ),
        .I3(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2 ),
        .I4(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14] ),
        .I5(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8] ),
        .O(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair114" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_i_5 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6] ),
        .I2(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3] ),
        .I3(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2] ),
        .O(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_5 ));
(* SOFT_HLUTNM = "soft_lutpair107" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_i_6 
       (.I0(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10] ),
        .I1(\n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11] ),
        .O(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.MGT_TX_RESET_INT_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_1 ),
        .Q(SS),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT[1]_i_1 
       (.I0(rxbuferr),
        .I1(LOOPBACK_INT),
        .I2(O1),
        .O(\n_0_USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT[1]_i_1 ),
        .Q(p_0_in),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_12_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_11_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg ),
        .R(O1));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[0]_i_1 
       (.I0(I4[0]),
        .I1(LOOPBACK_INT),
        .I2(O1),
        .O(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[0]_i_1 ));
LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[1]_i_1 
       (.I0(I4[1]),
        .I1(LOOPBACK_INT),
        .I2(O1),
        .O(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[1]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[0]_i_1 ),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[1]_i_1 ),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1] ),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_20_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_19_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_18_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_17_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_16_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_15_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_14_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6] ),
        .R(O1));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_13_TRANSMITTER),
        .Q(\n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7] ),
        .R(O1));
(* SOFT_HLUTNM = "soft_lutpair120" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1 
       (.I0(gt0_rxdisperr_out),
        .I1(LOOPBACK_INT),
        .I2(O1),
        .O(\n_0_USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXDISPERR_INT_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1 ),
        .Q(D_0),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair121" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 
       (.I0(gt0_rxnotintable_out),
        .I1(LOOPBACK_INT),
        .I2(O1),
        .O(\n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1 ),
        .Q(RXNOTINTABLE_INT),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     \USE_ROCKET_IO.TXBUFERR_INT_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(txbuferr),
        .Q(TXBUFERR_INT),
        .R(SS));
FDRE \USE_ROCKET_IO.TXCHARDISPMODE_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_1_TRANSMITTER),
        .Q(txchardispmode),
        .R(SS));
FDRE \USE_ROCKET_IO.TXCHARDISPVAL_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_TRANSMITTER),
        .Q(txchardispval),
        .R(\<const0> ));
FDRE \USE_ROCKET_IO.TXCHARISK_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_10_TRANSMITTER),
        .Q(txcharisk),
        .R(SS));
FDRE \USE_ROCKET_IO.TXDATA_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_6_TRANSMITTER),
        .Q(D[0]),
        .R(\<const0> ));
FDRE \USE_ROCKET_IO.TXDATA_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_5_TRANSMITTER),
        .Q(D[1]),
        .R(\<const0> ));
FDSE \USE_ROCKET_IO.TXDATA_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_9_TRANSMITTER),
        .Q(D[2]),
        .S(n_21_TRANSMITTER));
FDSE \USE_ROCKET_IO.TXDATA_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_8_TRANSMITTER),
        .Q(D[3]),
        .S(n_21_TRANSMITTER));
FDRE \USE_ROCKET_IO.TXDATA_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_4_TRANSMITTER),
        .Q(D[4]),
        .R(\<const0> ));
FDSE \USE_ROCKET_IO.TXDATA_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_7_TRANSMITTER),
        .Q(D[5]),
        .S(n_21_TRANSMITTER));
FDRE \USE_ROCKET_IO.TXDATA_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_3_TRANSMITTER),
        .Q(D[6]),
        .R(\<const0> ));
FDSE \USE_ROCKET_IO.TXDATA_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_2_TRANSMITTER),
        .Q(D[7]),
        .S(n_21_TRANSMITTER));
VCC VCC
       (.P(\<const1> ));
VCC VCC_1
       (.P(VCC_2));
LUT2 #(
    .INIT(4'hB)) 
     \txchardispmode_double[1]_i_1 
       (.I0(SS),
        .I1(toggle),
        .O(O4));
endmodule

(* ORIG_REF_NAME = "RX" *) 
module gig_ethernet_pcs_pma_0RX__parameterized0
   (gmii_rx_er,
    status_vector,
    gmii_rx_dv,
    I350_in,
    gmii_rxd,
    I1,
    I2,
    SYNC_STATUS_REG0,
    I3,
    Q,
    p_55_in,
    RXEVEN,
    D_0,
    RXNOTINTABLE_INT,
    I4,
    SR,
    I5,
    I6,
    I7,
    p_0_in);
  output gmii_rx_er;
  output [2:0]status_vector;
  output gmii_rx_dv;
  output I350_in;
  output [7:0]gmii_rxd;
  input I1;
  input I2;
  input SYNC_STATUS_REG0;
  input I3;
  input [7:0]Q;
  input p_55_in;
  input RXEVEN;
  input D_0;
  input RXNOTINTABLE_INT;
  input I4;
  input [0:0]SR;
  input I5;
  input I6;
  input I7;
  input p_0_in;

  wire \<const0> ;
  wire \<const1> ;
  wire C;
  wire C0;
  wire CARRIER_DETECT;
  wire CGBAD;
  wire CGBAD_REG1;
  wire CGBAD_REG2;
  wire CGBAD_REG3;
  wire C_HDR_REMOVED;
  wire C_HDR_REMOVED_REG;
  wire C_REG1;
  wire C_REG2;
  wire C_REG3;
  wire D0p0;
  wire D0p0_REG;
  wire D_0;
  wire EOP;
  wire EOP0;
  wire EOP_REG1;
  wire EOP_REG10;
  wire EXTEND0;
  wire EXTEND_ERR;
  wire EXTEND_ERR0;
  wire EXTEND_REG1;
  wire EXTEND_REG2;
  wire EXTEND_REG3;
  wire EXT_ILLEGAL_K;
  wire EXT_ILLEGAL_K0;
  wire EXT_ILLEGAL_K_REG1;
  wire EXT_ILLEGAL_K_REG2;
  wire FALSE_CARRIER;
  wire FALSE_CARRIER0;
  wire FALSE_CARRIER_REG1;
  wire FALSE_CARRIER_REG2;
  wire FALSE_CARRIER_REG3;
  wire FALSE_DATA;
  wire FALSE_DATA0;
  wire FALSE_K;
  wire FALSE_K0;
  wire FALSE_NIT;
  wire FALSE_NIT0;
  wire FROM_IDLE_D;
  wire FROM_IDLE_D0;
  wire FROM_RX_CX;
  wire FROM_RX_CX0;
  wire FROM_RX_K;
  wire FROM_RX_K0;
  wire I;
  wire I0;
  wire I1;
  wire I2;
  wire I3;
  wire I350_in;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire ILLEGAL_K;
  wire ILLEGAL_K0;
  wire ILLEGAL_K_REG1;
  wire ILLEGAL_K_REG2;
  wire K23p7;
  wire K28p5;
  wire K28p5_REG1;
  wire K28p5_REG2;
  wire K29p7;
  wire [7:0]Q;
  wire R;
  wire RUDI_C0;
  wire RUDI_I0;
  wire RXCHARISK_REG1;
  wire [7:0]RXDATA_REG5;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire RX_CONFIG_VALID_INT;
  wire RX_CONFIG_VALID_INT0;
  wire RX_DATA_ERROR;
  wire RX_DATA_ERROR0;
  wire RX_DV0;
  wire RX_ER0;
  wire RX_INVALID0;
  wire R_REG1;
  wire S;
  wire S0;
  wire S2;
  wire SOP;
  wire SOP0;
  wire SOP_REG1;
  wire SOP_REG2;
  wire SOP_REG3;
  wire [0:0]SR;
  wire SYNC_STATUS_REG;
  wire SYNC_STATUS_REG0;
  wire T;
  wire T_REG1;
  wire T_REG2;
  wire WAIT_FOR_K;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire n_0_C_i_3;
  wire n_0_C_i_4;
  wire n_0_D0p0_REG_i_2;
  wire n_0_EOP_i_2;
  wire n_0_EXTEND_i_1;
  wire n_0_EXTEND_reg;
  wire n_0_FALSE_CARRIER_i_1;
  wire n_0_FALSE_DATA_i_2;
  wire n_0_FALSE_DATA_i_3;
  wire n_0_FALSE_DATA_i_4;
  wire n_0_FALSE_K_i_2;
  wire n_0_FALSE_NIT_i_2;
  wire n_0_FALSE_NIT_i_3;
  wire n_0_FALSE_NIT_i_4;
  wire n_0_FALSE_NIT_i_5;
  wire n_0_FALSE_NIT_i_6;
  wire n_0_FALSE_NIT_i_7;
  wire n_0_FROM_RX_CX_i_2;
  wire \n_0_IDLE_REG_reg[0] ;
  wire \n_0_IDLE_REG_reg[2] ;
  wire n_0_I_REG_reg;
  wire n_0_RECEIVE_i_1;
  wire n_0_RECEIVE_reg;
  wire \n_0_RXDATA_REG4_reg[0]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[1]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[2]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[3]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[4]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[5]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[6]_srl4 ;
  wire \n_0_RXDATA_REG4_reg[7]_srl4 ;
  wire \n_0_RXD[0]_i_1 ;
  wire \n_0_RXD[1]_i_1 ;
  wire \n_0_RXD[2]_i_1 ;
  wire \n_0_RXD[3]_i_1 ;
  wire \n_0_RXD[4]_i_1 ;
  wire \n_0_RXD[5]_i_1 ;
  wire \n_0_RXD[6]_i_1 ;
  wire \n_0_RXD[7]_i_1 ;
  wire n_0_RX_CONFIG_VALID_INT_i_2;
  wire \n_0_RX_CONFIG_VALID_REG_reg[0] ;
  wire \n_0_RX_CONFIG_VALID_REG_reg[3] ;
  wire n_0_RX_DATA_ERROR_i_2;
  wire n_0_RX_DATA_ERROR_i_3;
  wire n_0_RX_DATA_ERROR_i_4;
  wire n_0_RX_DV_i_1;
  wire n_0_RX_ER_i_2;
  wire n_0_RX_INVALID_i_1;
  wire n_0_S_i_2;
  wire n_0_WAIT_FOR_K_i_1;
  wire p_0_in;
  wire p_0_in1_in;
  wire p_0_in2_in;
  wire p_1_in;
  wire p_52_in;
  wire p_55_in;
  wire p_62_in;
  wire [2:0]status_vector;

FDRE CGBAD_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(CGBAD),
        .Q(CGBAD_REG1),
        .R(\<const0> ));
FDRE CGBAD_REG2_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(CGBAD_REG1),
        .Q(CGBAD_REG2),
        .R(\<const0> ));
FDRE CGBAD_REG3_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(CGBAD_REG2),
        .Q(CGBAD_REG3),
        .R(I2));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     CGBAD_i_1
       (.I0(RXNOTINTABLE_INT),
        .I1(D_0),
        .I2(p_0_in),
        .O(S2));
FDRE CGBAD_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(S2),
        .Q(CGBAD),
        .R(I2));
LUT3 #(
    .INIT(8'h20)) 
     C_HDR_REMOVED_REG_i_1
       (.I0(I6),
        .I1(I7),
        .I2(C_REG2),
        .O(C_HDR_REMOVED));
FDRE C_HDR_REMOVED_REG_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(C_HDR_REMOVED),
        .Q(C_HDR_REMOVED_REG),
        .R(\<const0> ));
FDRE C_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(C),
        .Q(C_REG1),
        .R(\<const0> ));
FDRE C_REG2_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(C_REG1),
        .Q(C_REG2),
        .R(\<const0> ));
FDRE C_REG3_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(C_REG2),
        .Q(C_REG3),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h8)) 
     C_i_1
       (.I0(I350_in),
        .I1(K28p5_REG1),
        .O(C0));
LUT6 #(
    .INIT(64'h0000083000000800)) 
     C_i_2
       (.I0(n_0_C_i_3),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(n_0_C_i_4),
        .O(I350_in));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT5 #(
    .INIT(32'h00400000)) 
     C_i_3
       (.I0(Q[6]),
        .I1(Q[5]),
        .I2(Q[7]),
        .I3(I3),
        .I4(Q[4]),
        .O(n_0_C_i_3));
(* SOFT_HLUTNM = "soft_lutpair73" *) 
   LUT5 #(
    .INIT(32'h00000004)) 
     C_i_4
       (.I0(Q[7]),
        .I1(Q[6]),
        .I2(Q[5]),
        .I3(Q[4]),
        .I4(I3),
        .O(n_0_C_i_4));
FDRE C_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(C0),
        .Q(C),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     D0p0_REG_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(n_0_D0p0_REG_i_2),
        .I3(Q[7]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(D0p0));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     D0p0_REG_i_2
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[5]),
        .I3(I3),
        .O(n_0_D0p0_REG_i_2));
FDRE D0p0_REG_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(D0p0),
        .Q(D0p0_REG),
        .R(\<const0> ));
LUT3 #(
    .INIT(8'hF8)) 
     EOP_REG1_i_1
       (.I0(n_0_EXTEND_reg),
        .I1(EXTEND_REG1),
        .I2(EOP),
        .O(EOP_REG10));
FDRE EOP_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(EOP_REG10),
        .Q(EOP_REG1),
        .R(I2));
LUT6 #(
    .INIT(64'hFFFFFFFFF8888888)) 
     EOP_i_1
       (.I0(n_0_I_REG_reg),
        .I1(K28p5_REG1),
        .I2(D0p0_REG),
        .I3(C_REG1),
        .I4(RXEVEN),
        .I5(n_0_EOP_i_2),
        .O(EOP0));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT5 #(
    .INIT(32'h88808080)) 
     EOP_i_2
       (.I0(T_REG2),
        .I1(R_REG1),
        .I2(R),
        .I3(K28p5_REG1),
        .I4(RXEVEN),
        .O(n_0_EOP_i_2));
FDRE EOP_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(EOP0),
        .Q(EOP),
        .R(I2));
LUT3 #(
    .INIT(8'hF8)) 
     EXTEND_ERR_i_1
       (.I0(EXTEND_REG3),
        .I1(CGBAD_REG3),
        .I2(EXT_ILLEGAL_K_REG2),
        .O(EXTEND_ERR0));
FDRE EXTEND_ERR_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(EXTEND_ERR0),
        .Q(EXTEND_ERR),
        .R(SYNC_STATUS_REG0));
FDRE EXTEND_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_EXTEND_reg),
        .Q(EXTEND_REG1),
        .R(\<const0> ));
FDRE EXTEND_REG2_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(EXTEND_REG1),
        .Q(EXTEND_REG2),
        .R(\<const0> ));
FDRE EXTEND_REG3_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(EXTEND_REG2),
        .Q(EXTEND_REG3),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h0F0F00070F0F0000)) 
     EXTEND_i_1
       (.I0(RXEVEN),
        .I1(K28p5_REG1),
        .I2(SYNC_STATUS_REG0),
        .I3(S),
        .I4(EXTEND0),
        .I5(n_0_EXTEND_reg),
        .O(n_0_EXTEND_i_1));
LUT3 #(
    .INIT(8'h80)) 
     EXTEND_i_2
       (.I0(R_REG1),
        .I1(R),
        .I2(n_0_RECEIVE_reg),
        .O(EXTEND0));
FDRE EXTEND_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_EXTEND_i_1),
        .Q(n_0_EXTEND_reg),
        .R(\<const0> ));
FDRE EXT_ILLEGAL_K_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(EXT_ILLEGAL_K),
        .Q(EXT_ILLEGAL_K_REG1),
        .R(SYNC_STATUS_REG0));
FDRE EXT_ILLEGAL_K_REG2_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(EXT_ILLEGAL_K_REG1),
        .Q(EXT_ILLEGAL_K_REG2),
        .R(SYNC_STATUS_REG0));
LUT5 #(
    .INIT(32'h00040404)) 
     EXT_ILLEGAL_K_i_1
       (.I0(S),
        .I1(EXTEND_REG1),
        .I2(R),
        .I3(K28p5_REG1),
        .I4(RXEVEN),
        .O(EXT_ILLEGAL_K0));
FDRE EXT_ILLEGAL_K_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(EXT_ILLEGAL_K0),
        .Q(EXT_ILLEGAL_K),
        .R(SYNC_STATUS_REG0));
FDRE FALSE_CARRIER_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(FALSE_CARRIER),
        .Q(FALSE_CARRIER_REG1),
        .R(\<const0> ));
FDRE FALSE_CARRIER_REG2_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(FALSE_CARRIER_REG1),
        .Q(FALSE_CARRIER_REG2),
        .R(\<const0> ));
FDRE FALSE_CARRIER_REG3_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(FALSE_CARRIER_REG2),
        .Q(FALSE_CARRIER_REG3),
        .R(SYNC_STATUS_REG0));
LUT6 #(
    .INIT(64'h4444044444440000)) 
     FALSE_CARRIER_i_1
       (.I0(I2),
        .I1(p_55_in),
        .I2(K28p5_REG1),
        .I3(RXEVEN),
        .I4(FALSE_CARRIER0),
        .I5(FALSE_CARRIER),
        .O(n_0_FALSE_CARRIER_i_1));
LUT5 #(
    .INIT(32'h00200000)) 
     FALSE_CARRIER_i_2
       (.I0(p_55_in),
        .I1(K28p5_REG1),
        .I2(n_0_I_REG_reg),
        .I3(S),
        .I4(CARRIER_DETECT),
        .O(FALSE_CARRIER0));
FDRE FALSE_CARRIER_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_FALSE_CARRIER_i_1),
        .Q(FALSE_CARRIER),
        .R(\<const0> ));
LUT3 #(
    .INIT(8'h10)) 
     FALSE_DATA_i_1
       (.I0(I3),
        .I1(RXNOTINTABLE_INT),
        .I2(n_0_FALSE_DATA_i_2),
        .O(FALSE_DATA0));
LUT6 #(
    .INIT(64'hFF10101070707070)) 
     FALSE_DATA_i_2
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(n_0_FALSE_DATA_i_3),
        .I3(n_0_FALSE_DATA_i_4),
        .I4(p_52_in),
        .I5(Q[2]),
        .O(n_0_FALSE_DATA_i_2));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT5 #(
    .INIT(32'h00000800)) 
     FALSE_DATA_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[7]),
        .I3(Q[6]),
        .I4(Q[5]),
        .O(n_0_FALSE_DATA_i_3));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT4 #(
    .INIT(16'h100E)) 
     FALSE_DATA_i_4
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(n_0_FALSE_DATA_i_4));
(* SOFT_HLUTNM = "soft_lutpair70" *) 
   LUT3 #(
    .INIT(8'h08)) 
     FALSE_DATA_i_5
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(p_52_in));
FDRE FALSE_DATA_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(FALSE_DATA0),
        .Q(FALSE_DATA),
        .R(I2));
LUT6 #(
    .INIT(64'h0400000400000000)) 
     FALSE_K_i_1
       (.I0(RXNOTINTABLE_INT),
        .I1(I3),
        .I2(n_0_FALSE_K_i_2),
        .I3(Q[5]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(FALSE_K0));
(* SOFT_HLUTNM = "soft_lutpair75" *) 
   LUT5 #(
    .INIT(32'hFDFFFFFF)) 
     FALSE_K_i_2
       (.I0(Q[4]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .O(n_0_FALSE_K_i_2));
FDRE FALSE_K_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(FALSE_K0),
        .Q(FALSE_K),
        .R(I2));
LUT6 #(
    .INIT(64'hA8A8AAA8AAA8A8A8)) 
     FALSE_NIT_i_1
       (.I0(RXNOTINTABLE_INT),
        .I1(n_0_FALSE_NIT_i_2),
        .I2(n_0_FALSE_NIT_i_3),
        .I3(n_0_FALSE_NIT_i_4),
        .I4(D_0),
        .I5(Q[7]),
        .O(FALSE_NIT0));
LUT6 #(
    .INIT(64'h6000000000000000)) 
     FALSE_NIT_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(n_0_D0p0_REG_i_2),
        .I3(n_0_FALSE_NIT_i_5),
        .I4(Q[7]),
        .I5(D_0),
        .O(n_0_FALSE_NIT_i_2));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT5 #(
    .INIT(32'h08800000)) 
     FALSE_NIT_i_3
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(n_0_FALSE_NIT_i_6),
        .O(n_0_FALSE_NIT_i_3));
LUT6 #(
    .INIT(64'h4400000344000000)) 
     FALSE_NIT_i_4
       (.I0(n_0_FALSE_K_i_2),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[5]),
        .I4(I3),
        .I5(n_0_FALSE_NIT_i_7),
        .O(n_0_FALSE_NIT_i_4));
LUT2 #(
    .INIT(4'h1)) 
     FALSE_NIT_i_5
       (.I0(Q[3]),
        .I1(Q[2]),
        .O(n_0_FALSE_NIT_i_5));
LUT6 #(
    .INIT(64'h0000000000800000)) 
     FALSE_NIT_i_6
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(I3),
        .I3(D_0),
        .I4(Q[4]),
        .I5(Q[7]),
        .O(n_0_FALSE_NIT_i_6));
(* SOFT_HLUTNM = "soft_lutpair71" *) 
   LUT4 #(
    .INIT(16'h1000)) 
     FALSE_NIT_i_7
       (.I0(Q[2]),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(n_0_FALSE_NIT_i_7));
FDRE FALSE_NIT_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(FALSE_NIT0),
        .Q(FALSE_NIT),
        .R(I2));
LUT4 #(
    .INIT(16'h0004)) 
     FROM_IDLE_D_i_1
       (.I0(WAIT_FOR_K),
        .I1(n_0_I_REG_reg),
        .I2(K28p5_REG1),
        .I3(p_55_in),
        .O(FROM_IDLE_D0));
FDRE FROM_IDLE_D_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(FROM_IDLE_D0),
        .Q(FROM_IDLE_D),
        .R(SYNC_STATUS_REG0));
LUT5 #(
    .INIT(32'hEECEEEEE)) 
     FROM_RX_CX_i_1
       (.I0(C_REG3),
        .I1(n_0_FROM_RX_CX_i_2),
        .I2(K28p5_REG1),
        .I3(CGBAD),
        .I4(RXEVEN),
        .O(FROM_RX_CX0));
LUT4 #(
    .INIT(16'hEEE0)) 
     FROM_RX_CX_i_2
       (.I0(C_REG2),
        .I1(C_REG1),
        .I2(CGBAD),
        .I3(RXCHARISK_REG1),
        .O(n_0_FROM_RX_CX_i_2));
FDRE FROM_RX_CX_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(FROM_RX_CX0),
        .Q(FROM_RX_CX),
        .R(SYNC_STATUS_REG0));
LUT4 #(
    .INIT(16'h4440)) 
     FROM_RX_K_i_1
       (.I0(p_55_in),
        .I1(K28p5_REG2),
        .I2(RXCHARISK_REG1),
        .I3(CGBAD),
        .O(FROM_RX_K0));
FDRE FROM_RX_K_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(FROM_RX_K0),
        .Q(FROM_RX_K),
        .R(SYNC_STATUS_REG0));
GND GND
       (.G(\<const0> ));
FDRE \IDLE_REG_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_I_REG_reg),
        .Q(\n_0_IDLE_REG_reg[0] ),
        .R(I2));
FDRE \IDLE_REG_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_IDLE_REG_reg[0] ),
        .Q(p_0_in1_in),
        .R(I2));
FDRE \IDLE_REG_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(p_0_in1_in),
        .Q(\n_0_IDLE_REG_reg[2] ),
        .R(I2));
FDRE ILLEGAL_K_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(ILLEGAL_K),
        .Q(ILLEGAL_K_REG1),
        .R(SYNC_STATUS_REG0));
FDRE ILLEGAL_K_REG2_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(ILLEGAL_K_REG1),
        .Q(ILLEGAL_K_REG2),
        .R(SYNC_STATUS_REG0));
LUT4 #(
    .INIT(16'h0004)) 
     ILLEGAL_K_i_1
       (.I0(R),
        .I1(RXCHARISK_REG1),
        .I2(K28p5_REG1),
        .I3(T),
        .O(ILLEGAL_K0));
FDRE ILLEGAL_K_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(ILLEGAL_K0),
        .Q(ILLEGAL_K),
        .R(SYNC_STATUS_REG0));
FDRE I_REG_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(I),
        .Q(n_0_I_REG_reg),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h0F0F000F02020000)) 
     I_i_1
       (.I0(n_0_I_REG_reg),
        .I1(CARRIER_DETECT),
        .I2(I4),
        .I3(I3),
        .I4(p_55_in),
        .I5(K28p5_REG1),
        .O(I0));
LUT3 #(
    .INIT(8'h01)) 
     I_i_2
       (.I0(FALSE_K),
        .I1(FALSE_DATA),
        .I2(FALSE_NIT),
        .O(CARRIER_DETECT));
FDRE I_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(I0),
        .Q(I),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'h00000080)) 
     K28p5_REG1_i_1
       (.I0(I3),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[6]),
        .I4(n_0_FALSE_K_i_2),
        .O(K28p5));
FDRE K28p5_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(K28p5),
        .Q(K28p5_REG1),
        .R(\<const0> ));
FDRE K28p5_REG2_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(K28p5_REG1),
        .Q(K28p5_REG2),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'h44044400)) 
     RECEIVE_i_1
       (.I0(I2),
        .I1(p_55_in),
        .I2(EOP),
        .I3(SOP_REG2),
        .I4(n_0_RECEIVE_reg),
        .O(n_0_RECEIVE_i_1));
FDRE RECEIVE_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_RECEIVE_i_1),
        .Q(n_0_RECEIVE_reg),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'hFFFE)) 
     RUDI_C_i_1
       (.I0(p_1_in),
        .I1(\n_0_RX_CONFIG_VALID_REG_reg[0] ),
        .I2(\n_0_RX_CONFIG_VALID_REG_reg[3] ),
        .I3(p_0_in2_in),
        .O(RUDI_C0));
FDRE RUDI_C_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(RUDI_C0),
        .Q(status_vector[0]),
        .R(I2));
LUT2 #(
    .INIT(4'hE)) 
     RUDI_I_i_1
       (.I0(\n_0_IDLE_REG_reg[2] ),
        .I1(p_0_in1_in),
        .O(RUDI_I0));
FDRE RUDI_I_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(RUDI_I0),
        .Q(status_vector[1]),
        .R(I2));
FDRE RXCHARISK_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(I3),
        .Q(RXCHARISK_REG1),
        .R(\<const0> ));
(* srl_bus_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[0]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[0]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(I1),
        .D(Q[0]),
        .Q(\n_0_RXDATA_REG4_reg[0]_srl4 ));
(* srl_bus_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[1]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[1]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(I1),
        .D(Q[1]),
        .Q(\n_0_RXDATA_REG4_reg[1]_srl4 ));
(* srl_bus_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[2]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[2]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(I1),
        .D(Q[2]),
        .Q(\n_0_RXDATA_REG4_reg[2]_srl4 ));
(* srl_bus_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[3]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[3]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(I1),
        .D(Q[3]),
        .Q(\n_0_RXDATA_REG4_reg[3]_srl4 ));
(* srl_bus_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[4]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[4]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(I1),
        .D(Q[4]),
        .Q(\n_0_RXDATA_REG4_reg[4]_srl4 ));
(* srl_bus_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[5]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[5]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(I1),
        .D(Q[5]),
        .Q(\n_0_RXDATA_REG4_reg[5]_srl4 ));
(* srl_bus_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[6]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[6]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(I1),
        .D(Q[6]),
        .Q(\n_0_RXDATA_REG4_reg[6]_srl4 ));
(* srl_bus_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg " *) 
   (* srl_name = "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[7]_srl4 " *) 
   SRL16E \RXDATA_REG4_reg[7]_srl4 
       (.A0(\<const1> ),
        .A1(\<const1> ),
        .A2(\<const0> ),
        .A3(\<const0> ),
        .CE(\<const1> ),
        .CLK(I1),
        .D(Q[7]),
        .Q(\n_0_RXDATA_REG4_reg[7]_srl4 ));
FDRE \RXDATA_REG5_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXDATA_REG4_reg[0]_srl4 ),
        .Q(RXDATA_REG5[0]),
        .R(\<const0> ));
FDRE \RXDATA_REG5_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXDATA_REG4_reg[1]_srl4 ),
        .Q(RXDATA_REG5[1]),
        .R(\<const0> ));
FDRE \RXDATA_REG5_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXDATA_REG4_reg[2]_srl4 ),
        .Q(RXDATA_REG5[2]),
        .R(\<const0> ));
FDRE \RXDATA_REG5_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXDATA_REG4_reg[3]_srl4 ),
        .Q(RXDATA_REG5[3]),
        .R(\<const0> ));
FDRE \RXDATA_REG5_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXDATA_REG4_reg[4]_srl4 ),
        .Q(RXDATA_REG5[4]),
        .R(\<const0> ));
FDRE \RXDATA_REG5_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXDATA_REG4_reg[5]_srl4 ),
        .Q(RXDATA_REG5[5]),
        .R(\<const0> ));
FDRE \RXDATA_REG5_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXDATA_REG4_reg[6]_srl4 ),
        .Q(RXDATA_REG5[6]),
        .R(\<const0> ));
FDRE \RXDATA_REG5_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXDATA_REG4_reg[7]_srl4 ),
        .Q(RXDATA_REG5[7]),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'hAFAE)) 
     \RXD[0]_i_1 
       (.I0(SOP_REG3),
        .I1(EXTEND_REG1),
        .I2(FALSE_CARRIER_REG3),
        .I3(RXDATA_REG5[0]),
        .O(\n_0_RXD[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT4 #(
    .INIT(16'h00FE)) 
     \RXD[1]_i_1 
       (.I0(RXDATA_REG5[1]),
        .I1(EXTEND_REG1),
        .I2(FALSE_CARRIER_REG3),
        .I3(SOP_REG3),
        .O(\n_0_RXD[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \RXD[2]_i_1 
       (.I0(SOP_REG3),
        .I1(EXTEND_REG1),
        .I2(FALSE_CARRIER_REG3),
        .I3(RXDATA_REG5[2]),
        .O(\n_0_RXD[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT4 #(
    .INIT(16'h00FE)) 
     \RXD[3]_i_1 
       (.I0(RXDATA_REG5[3]),
        .I1(EXTEND_REG1),
        .I2(FALSE_CARRIER_REG3),
        .I3(SOP_REG3),
        .O(\n_0_RXD[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT5 #(
    .INIT(32'hAFAEAAAE)) 
     \RXD[4]_i_1 
       (.I0(SOP_REG3),
        .I1(RXDATA_REG5[4]),
        .I2(FALSE_CARRIER_REG3),
        .I3(EXTEND_REG1),
        .I4(EXTEND_ERR),
        .O(\n_0_RXD[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair79" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     \RXD[5]_i_1 
       (.I0(RXDATA_REG5[5]),
        .I1(SOP_REG3),
        .I2(EXTEND_REG1),
        .I3(FALSE_CARRIER_REG3),
        .O(\n_0_RXD[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair77" *) 
   LUT4 #(
    .INIT(16'hFF10)) 
     \RXD[6]_i_1 
       (.I0(EXTEND_REG1),
        .I1(FALSE_CARRIER_REG3),
        .I2(RXDATA_REG5[6]),
        .I3(SOP_REG3),
        .O(\n_0_RXD[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair78" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     \RXD[7]_i_1 
       (.I0(RXDATA_REG5[7]),
        .I1(SOP_REG3),
        .I2(EXTEND_REG1),
        .I3(FALSE_CARRIER_REG3),
        .O(\n_0_RXD[7]_i_1 ));
FDRE \RXD_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXD[0]_i_1 ),
        .Q(gmii_rxd[0]),
        .R(SR));
FDRE \RXD_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXD[1]_i_1 ),
        .Q(gmii_rxd[1]),
        .R(SR));
FDRE \RXD_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXD[2]_i_1 ),
        .Q(gmii_rxd[2]),
        .R(SR));
FDRE \RXD_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXD[3]_i_1 ),
        .Q(gmii_rxd[3]),
        .R(SR));
FDRE \RXD_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXD[4]_i_1 ),
        .Q(gmii_rxd[4]),
        .R(SR));
FDRE \RXD_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXD[5]_i_1 ),
        .Q(gmii_rxd[5]),
        .R(SR));
FDRE \RXD_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXD[6]_i_1 ),
        .Q(gmii_rxd[6]),
        .R(SR));
FDRE \RXD_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RXD[7]_i_1 ),
        .Q(gmii_rxd[7]),
        .R(SR));
LUT5 #(
    .INIT(32'h00000100)) 
     RX_CONFIG_VALID_INT_i_1
       (.I0(CGBAD),
        .I1(RXCHARISK_REG1),
        .I2(I3),
        .I3(p_55_in),
        .I4(n_0_RX_CONFIG_VALID_INT_i_2),
        .O(RX_CONFIG_VALID_INT0));
(* SOFT_HLUTNM = "soft_lutpair76" *) 
   LUT5 #(
    .INIT(32'hFFFFFFF1)) 
     RX_CONFIG_VALID_INT_i_2
       (.I0(C_REG1),
        .I1(C_HDR_REMOVED_REG),
        .I2(p_0_in),
        .I3(D_0),
        .I4(RXNOTINTABLE_INT),
        .O(n_0_RX_CONFIG_VALID_INT_i_2));
FDRE RX_CONFIG_VALID_INT_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(RX_CONFIG_VALID_INT0),
        .Q(RX_CONFIG_VALID_INT),
        .R(I2));
FDRE \RX_CONFIG_VALID_REG_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(RX_CONFIG_VALID_INT),
        .Q(\n_0_RX_CONFIG_VALID_REG_reg[0] ),
        .R(I2));
FDRE \RX_CONFIG_VALID_REG_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_RX_CONFIG_VALID_REG_reg[0] ),
        .Q(p_0_in2_in),
        .R(I2));
FDRE \RX_CONFIG_VALID_REG_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(p_0_in2_in),
        .Q(p_1_in),
        .R(I2));
FDRE \RX_CONFIG_VALID_REG_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(p_1_in),
        .Q(\n_0_RX_CONFIG_VALID_REG_reg[3] ),
        .R(I2));
LUT6 #(
    .INIT(64'h8880888088888880)) 
     RX_DATA_ERROR_i_1
       (.I0(n_0_RECEIVE_reg),
        .I1(n_0_RX_DATA_ERROR_i_2),
        .I2(n_0_RX_DATA_ERROR_i_3),
        .I3(n_0_RX_DATA_ERROR_i_4),
        .I4(R),
        .I5(T_REG1),
        .O(RX_DATA_ERROR0));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFB)) 
     RX_DATA_ERROR_i_2
       (.I0(n_0_I_REG_reg),
        .I1(R_REG1),
        .I2(C_REG1),
        .I3(CGBAD_REG3),
        .I4(n_0_RX_DATA_ERROR_i_3),
        .I5(ILLEGAL_K_REG2),
        .O(n_0_RX_DATA_ERROR_i_2));
(* SOFT_HLUTNM = "soft_lutpair72" *) 
   LUT4 #(
    .INIT(16'h0222)) 
     RX_DATA_ERROR_i_3
       (.I0(T_REG2),
        .I1(R),
        .I2(K28p5_REG1),
        .I3(RXEVEN),
        .O(n_0_RX_DATA_ERROR_i_3));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     RX_DATA_ERROR_i_4
       (.I0(CGBAD_REG3),
        .I1(ILLEGAL_K_REG2),
        .I2(K28p5_REG1),
        .I3(n_0_I_REG_reg),
        .I4(C_REG1),
        .I5(T_REG2),
        .O(n_0_RX_DATA_ERROR_i_4));
FDRE RX_DATA_ERROR_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(RX_DATA_ERROR0),
        .Q(RX_DATA_ERROR),
        .R(SYNC_STATUS_REG0));
LUT6 #(
    .INIT(64'h00FF000E00FF0000)) 
     RX_DV_i_1
       (.I0(p_55_in),
        .I1(n_0_RECEIVE_reg),
        .I2(EOP_REG1),
        .I3(I2),
        .I4(RX_DV0),
        .I5(gmii_rx_dv),
        .O(n_0_RX_DV_i_1));
LUT4 #(
    .INIT(16'h0400)) 
     RX_DV_i_2
       (.I0(SR),
        .I1(SOP_REG3),
        .I2(I5),
        .I3(p_55_in),
        .O(RX_DV0));
FDRE #(
    .INIT(1'b0)) 
     RX_DV_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_RX_DV_i_1),
        .Q(gmii_rx_dv),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h1110111011100010)) 
     RX_ER_i_1
       (.I0(SR),
        .I1(I5),
        .I2(n_0_RECEIVE_reg),
        .I3(p_55_in),
        .I4(RX_DATA_ERROR),
        .I5(n_0_RX_ER_i_2),
        .O(RX_ER0));
(* SOFT_HLUTNM = "soft_lutpair74" *) 
   LUT2 #(
    .INIT(4'hE)) 
     RX_ER_i_2
       (.I0(EXTEND_REG1),
        .I1(FALSE_CARRIER_REG3),
        .O(n_0_RX_ER_i_2));
FDRE #(
    .INIT(1'b0)) 
     RX_ER_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(RX_ER0),
        .Q(gmii_rx_er),
        .R(I2));
LUT5 #(
    .INIT(32'h44044400)) 
     RX_INVALID_i_1
       (.I0(I2),
        .I1(p_55_in),
        .I2(K28p5_REG1),
        .I3(RX_INVALID0),
        .I4(status_vector[2]),
        .O(n_0_RX_INVALID_i_1));
LUT4 #(
    .INIT(16'hF5F4)) 
     RX_INVALID_i_2
       (.I0(p_55_in),
        .I1(FROM_RX_K),
        .I2(FROM_RX_CX),
        .I3(FROM_IDLE_D),
        .O(RX_INVALID0));
FDRE RX_INVALID_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_RX_INVALID_i_1),
        .Q(status_vector[2]),
        .R(\<const0> ));
FDRE R_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(R),
        .Q(R_REG1),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h2000000000000000)) 
     R_i_1
       (.I0(I3),
        .I1(Q[3]),
        .I2(p_62_in),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(K23p7));
(* SOFT_HLUTNM = "soft_lutpair80" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     R_i_2
       (.I0(Q[4]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(Q[6]),
        .O(p_62_in));
FDRE R_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(K23p7),
        .Q(R),
        .R(\<const0> ));
FDRE SOP_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(SOP),
        .Q(SOP_REG1),
        .R(\<const0> ));
FDRE SOP_REG2_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(SOP_REG1),
        .Q(SOP_REG2),
        .R(\<const0> ));
FDRE SOP_REG3_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(SOP_REG2),
        .Q(SOP_REG3),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'h40404000)) 
     SOP_i_1
       (.I0(WAIT_FOR_K),
        .I1(p_55_in),
        .I2(S),
        .I3(n_0_EXTEND_reg),
        .I4(n_0_I_REG_reg),
        .O(SOP0));
FDRE SOP_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(SOP0),
        .Q(SOP),
        .R(I2));
FDRE SYNC_STATUS_REG_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(\<const1> ),
        .Q(SYNC_STATUS_REG),
        .R(SYNC_STATUS_REG0));
LUT6 #(
    .INIT(64'h0400000000000000)) 
     S_i_1
       (.I0(S2),
        .I1(n_0_S_i_2),
        .I2(Q[2]),
        .I3(I3),
        .I4(Q[3]),
        .I5(p_62_in),
        .O(S0));
LUT2 #(
    .INIT(4'h8)) 
     S_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(n_0_S_i_2));
FDRE S_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(S0),
        .Q(S),
        .R(\<const0> ));
FDRE T_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(T),
        .Q(T_REG1),
        .R(\<const0> ));
FDRE T_REG2_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(T_REG1),
        .Q(T_REG2),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h2000000000000000)) 
     T_i_1
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(p_62_in),
        .I3(I3),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(K29p7));
FDRE T_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(K29p7),
        .Q(T),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'h0444444400004444)) 
     WAIT_FOR_K_i_1
       (.I0(I2),
        .I1(p_55_in),
        .I2(K28p5_REG1),
        .I3(RXEVEN),
        .I4(SYNC_STATUS_REG),
        .I5(WAIT_FOR_K),
        .O(n_0_WAIT_FOR_K_i_1));
FDRE WAIT_FOR_K_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_WAIT_FOR_K_i_1),
        .Q(WAIT_FOR_K),
        .R(\<const0> ));
endmodule

module gig_ethernet_pcs_pma_0SYNCHRONISE
   (RXEVEN,
    p_55_in,
    SYNC_STATUS_REG0,
    O1,
    encommaalign,
    SIGNAL_DETECT_MOD,
    I1,
    I2,
    I3,
    I4,
    LOOPBACK_INT,
    D_0,
    RXNOTINTABLE_INT,
    p_0_in,
    I350_in);
  output RXEVEN;
  output p_55_in;
  output SYNC_STATUS_REG0;
  output O1;
  output encommaalign;
  input SIGNAL_DETECT_MOD;
  input I1;
  input I2;
  input I3;
  input I4;
  input LOOPBACK_INT;
  input D_0;
  input RXNOTINTABLE_INT;
  input p_0_in;
  input I350_in;

  wire \<const0> ;
  wire \<const1> ;
  wire CGBAD;
  wire D_0;
  wire [1:0]GOOD_CGS;
  wire I1;
  wire I2;
  wire I3;
  wire I350_in;
  wire I4;
  wire LOOPBACK_INT;
  wire O1;
  wire RXEVEN;
  wire RXNOTINTABLE_INT;
  wire SIGNAL_DETECT_MOD;
  wire SIGNAL_DETECT_REG;
  wire [3:0]STATE_reg;
  wire SYNC_STATUS0;
  wire SYNC_STATUS_REG0;
  wire encommaalign;
  wire n_0_ENCOMMAALIGN_i_1;
  wire n_0_EVEN_i_1;
  wire \n_0_FSM_onehot_STATE[0]_i_1 ;
  wire \n_0_FSM_onehot_STATE[0]_i_10 ;
  wire \n_0_FSM_onehot_STATE[0]_i_11 ;
  wire \n_0_FSM_onehot_STATE[0]_i_12 ;
  wire \n_0_FSM_onehot_STATE[0]_i_13 ;
  wire \n_0_FSM_onehot_STATE[0]_i_14 ;
  wire \n_0_FSM_onehot_STATE[0]_i_15 ;
  wire \n_0_FSM_onehot_STATE[0]_i_2 ;
  wire \n_0_FSM_onehot_STATE[0]_i_3 ;
  wire \n_0_FSM_onehot_STATE[0]_i_4 ;
  wire \n_0_FSM_onehot_STATE[0]_i_5 ;
  wire \n_0_FSM_onehot_STATE[0]_i_6 ;
  wire \n_0_FSM_onehot_STATE[0]_i_7 ;
  wire \n_0_FSM_onehot_STATE[0]_i_8 ;
  wire \n_0_FSM_onehot_STATE[0]_i_9 ;
  wire \n_0_FSM_onehot_STATE[10]_i_1 ;
  wire \n_0_FSM_onehot_STATE[11]_i_1 ;
  wire \n_0_FSM_onehot_STATE[12]_i_1 ;
  wire \n_0_FSM_onehot_STATE[12]_i_10 ;
  wire \n_0_FSM_onehot_STATE[12]_i_11 ;
  wire \n_0_FSM_onehot_STATE[12]_i_12 ;
  wire \n_0_FSM_onehot_STATE[12]_i_13 ;
  wire \n_0_FSM_onehot_STATE[12]_i_14 ;
  wire \n_0_FSM_onehot_STATE[12]_i_15 ;
  wire \n_0_FSM_onehot_STATE[12]_i_16 ;
  wire \n_0_FSM_onehot_STATE[12]_i_17 ;
  wire \n_0_FSM_onehot_STATE[12]_i_18 ;
  wire \n_0_FSM_onehot_STATE[12]_i_19 ;
  wire \n_0_FSM_onehot_STATE[12]_i_2 ;
  wire \n_0_FSM_onehot_STATE[12]_i_20 ;
  wire \n_0_FSM_onehot_STATE[12]_i_21 ;
  wire \n_0_FSM_onehot_STATE[12]_i_22 ;
  wire \n_0_FSM_onehot_STATE[12]_i_3 ;
  wire \n_0_FSM_onehot_STATE[12]_i_4 ;
  wire \n_0_FSM_onehot_STATE[12]_i_5 ;
  wire \n_0_FSM_onehot_STATE[12]_i_7 ;
  wire \n_0_FSM_onehot_STATE[12]_i_8 ;
  wire \n_0_FSM_onehot_STATE[12]_i_9 ;
  wire \n_0_FSM_onehot_STATE[1]_i_1 ;
  wire \n_0_FSM_onehot_STATE[2]_i_1 ;
  wire \n_0_FSM_onehot_STATE[2]_i_2 ;
  wire \n_0_FSM_onehot_STATE[3]_i_1 ;
  wire \n_0_FSM_onehot_STATE[4]_i_1 ;
  wire \n_0_FSM_onehot_STATE[4]_i_2 ;
  wire \n_0_FSM_onehot_STATE[5]_i_1 ;
  wire \n_0_FSM_onehot_STATE[6]_i_2 ;
  wire \n_0_FSM_onehot_STATE[6]_i_3 ;
  wire \n_0_FSM_onehot_STATE[7]_i_1 ;
  wire \n_0_FSM_onehot_STATE[8]_i_1 ;
  wire \n_0_FSM_onehot_STATE[9]_i_1 ;
  wire \n_0_FSM_onehot_STATE_reg[0] ;
  wire \n_0_FSM_onehot_STATE_reg[10] ;
  wire \n_0_FSM_onehot_STATE_reg[11] ;
  wire \n_0_FSM_onehot_STATE_reg[12] ;
  wire \n_0_FSM_onehot_STATE_reg[1] ;
  wire \n_0_FSM_onehot_STATE_reg[2] ;
  wire \n_0_FSM_onehot_STATE_reg[3] ;
  wire \n_0_FSM_onehot_STATE_reg[4] ;
  wire \n_0_FSM_onehot_STATE_reg[5] ;
  wire \n_0_FSM_onehot_STATE_reg[6] ;
  wire \n_0_FSM_onehot_STATE_reg[6]_i_1 ;
  wire \n_0_FSM_onehot_STATE_reg[7] ;
  wire \n_0_FSM_onehot_STATE_reg[8] ;
  wire \n_0_FSM_onehot_STATE_reg[9] ;
  wire \n_0_GOOD_CGS[0]_i_1 ;
  wire \n_0_GOOD_CGS[1]_i_1 ;
  wire \n_0_GOOD_CGS[1]_i_2 ;
  wire n_0_SYNC_STATUS_i_1;
  wire n_0_SYNC_STATUS_i_2;
  wire p_0_in;
  wire p_55_in;

(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     ENCOMMAALIGN_i_1
       (.I0(encommaalign),
        .I1(n_0_SYNC_STATUS_i_2),
        .I2(SYNC_STATUS0),
        .O(n_0_ENCOMMAALIGN_i_1));
FDRE ENCOMMAALIGN_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_ENCOMMAALIGN_i_1),
        .Q(encommaalign),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT3 #(
    .INIT(8'h4F)) 
     EVEN_i_1
       (.I0(p_55_in),
        .I1(I4),
        .I2(RXEVEN),
        .O(n_0_EVEN_i_1));
FDRE EVEN_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_EVEN_i_1),
        .Q(RXEVEN),
        .R(I2));
LUT6 #(
    .INIT(64'hFFFFFE540000FE54)) 
     \FSM_onehot_STATE[0]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I1(\n_0_FSM_onehot_STATE[0]_i_2 ),
        .I2(\n_0_FSM_onehot_STATE[0]_i_3 ),
        .I3(\n_0_FSM_onehot_STATE[0]_i_4 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .I5(\n_0_FSM_onehot_STATE[0]_i_5 ),
        .O(\n_0_FSM_onehot_STATE[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \FSM_onehot_STATE[0]_i_10 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_20 ),
        .I1(\n_0_FSM_onehot_STATE_reg[0] ),
        .I2(\n_0_FSM_onehot_STATE_reg[1] ),
        .O(\n_0_FSM_onehot_STATE[0]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT5 #(
    .INIT(32'hF0FFFDFF)) 
     \FSM_onehot_STATE[0]_i_11 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_19 ),
        .I1(\n_0_FSM_onehot_STATE_reg[1] ),
        .I2(\n_0_FSM_onehot_STATE_reg[0] ),
        .I3(\n_0_FSM_onehot_STATE[12]_i_20 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_18 ),
        .O(\n_0_FSM_onehot_STATE[0]_i_11 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_STATE[0]_i_12 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_11 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_12 ),
        .I2(\n_0_FSM_onehot_STATE_reg[12] ),
        .I3(\n_0_FSM_onehot_STATE_reg[1] ),
        .I4(\n_0_FSM_onehot_STATE_reg[0] ),
        .I5(\n_0_FSM_onehot_STATE_reg[2] ),
        .O(\n_0_FSM_onehot_STATE[0]_i_12 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \FSM_onehot_STATE[0]_i_13 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_9 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_11 ),
        .I2(\n_0_FSM_onehot_STATE[12]_i_12 ),
        .I3(\n_0_FSM_onehot_STATE_reg[12] ),
        .I4(\n_0_FSM_onehot_STATE_reg[1] ),
        .I5(\n_0_FSM_onehot_STATE_reg[0] ),
        .O(\n_0_FSM_onehot_STATE[0]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \FSM_onehot_STATE[0]_i_14 
       (.I0(\n_0_FSM_onehot_STATE_reg[5] ),
        .I1(\n_0_FSM_onehot_STATE_reg[4] ),
        .I2(\n_0_FSM_onehot_STATE_reg[9] ),
        .I3(\n_0_FSM_onehot_STATE_reg[8] ),
        .O(\n_0_FSM_onehot_STATE[0]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_STATE[0]_i_15 
       (.I0(\n_0_FSM_onehot_STATE_reg[9] ),
        .I1(\n_0_FSM_onehot_STATE_reg[11] ),
        .O(\n_0_FSM_onehot_STATE[0]_i_15 ));
LUT3 #(
    .INIT(8'hA8)) 
     \FSM_onehot_STATE[0]_i_2 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I1(CGBAD),
        .I2(I3),
        .O(\n_0_FSM_onehot_STATE[0]_i_2 ));
LUT6 #(
    .INIT(64'h000000AB00AB00AB)) 
     \FSM_onehot_STATE[0]_i_3 
       (.I0(\n_0_FSM_onehot_STATE[0]_i_6 ),
        .I1(\n_0_FSM_onehot_STATE[0]_i_7 ),
        .I2(\n_0_FSM_onehot_STATE[0]_i_8 ),
        .I3(\n_0_FSM_onehot_STATE[0]_i_9 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_19 ),
        .I5(\n_0_FSM_onehot_STATE[0]_i_10 ),
        .O(\n_0_FSM_onehot_STATE[0]_i_3 ));
LUT6 #(
    .INIT(64'h000000003F3F1500)) 
     \FSM_onehot_STATE[0]_i_4 
       (.I0(\n_0_FSM_onehot_STATE[0]_i_11 ),
        .I1(\n_0_FSM_onehot_STATE[0]_i_12 ),
        .I2(\n_0_FSM_onehot_STATE[12]_i_10 ),
        .I3(I3),
        .I4(CGBAD),
        .I5(\n_0_FSM_onehot_STATE[0]_i_13 ),
        .O(\n_0_FSM_onehot_STATE[0]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT4 #(
    .INIT(16'hF080)) 
     \FSM_onehot_STATE[0]_i_5 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I2(CGBAD),
        .I3(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .O(\n_0_FSM_onehot_STATE[0]_i_5 ));
LUT6 #(
    .INIT(64'hC0C0400000000000)) 
     \FSM_onehot_STATE[0]_i_6 
       (.I0(\n_0_FSM_onehot_STATE_reg[2] ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_13 ),
        .I2(\n_0_FSM_onehot_STATE[0]_i_14 ),
        .I3(\n_0_FSM_onehot_STATE[12]_i_10 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_9 ),
        .I5(CGBAD),
        .O(\n_0_FSM_onehot_STATE[0]_i_6 ));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     \FSM_onehot_STATE[0]_i_7 
       (.I0(\n_0_FSM_onehot_STATE_reg[2] ),
        .I1(\n_0_FSM_onehot_STATE_reg[0] ),
        .I2(\n_0_FSM_onehot_STATE_reg[1] ),
        .I3(\n_0_FSM_onehot_STATE_reg[12] ),
        .I4(\n_0_FSM_onehot_STATE[0]_i_14 ),
        .I5(\n_0_FSM_onehot_STATE[12]_i_10 ),
        .O(\n_0_FSM_onehot_STATE[0]_i_7 ));
LUT6 #(
    .INIT(64'hFFFFFFFF01000000)) 
     \FSM_onehot_STATE[0]_i_8 
       (.I0(\n_0_FSM_onehot_STATE_reg[0] ),
        .I1(\n_0_FSM_onehot_STATE_reg[1] ),
        .I2(\n_0_FSM_onehot_STATE_reg[12] ),
        .I3(\n_0_FSM_onehot_STATE[0]_i_14 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_9 ),
        .I5(I4),
        .O(\n_0_FSM_onehot_STATE[0]_i_8 ));
LUT6 #(
    .INIT(64'h0000000000100000)) 
     \FSM_onehot_STATE[0]_i_9 
       (.I0(\n_0_FSM_onehot_STATE[0]_i_15 ),
        .I1(\n_0_FSM_onehot_STATE_reg[7] ),
        .I2(\n_0_FSM_onehot_STATE_reg[1] ),
        .I3(\n_0_FSM_onehot_STATE[12]_i_21 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_20 ),
        .I5(\n_0_FSM_onehot_STATE_reg[0] ),
        .O(\n_0_FSM_onehot_STATE[0]_i_9 ));
LUT6 #(
    .INIT(64'h0000000000222000)) 
     \FSM_onehot_STATE[10]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I2(\n_0_FSM_onehot_STATE[12]_i_7 ),
        .I3(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I5(CGBAD),
        .O(\n_0_FSM_onehot_STATE[10]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair81" *) 
   LUT5 #(
    .INIT(32'h02200000)) 
     \FSM_onehot_STATE[11]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I2(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I3(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I4(CGBAD),
        .O(\n_0_FSM_onehot_STATE[11]_i_1 ));
LUT3 #(
    .INIT(8'hF1)) 
     \FSM_onehot_STATE[12]_i_1 
       (.I0(LOOPBACK_INT),
        .I1(SIGNAL_DETECT_REG),
        .I2(I2),
        .O(\n_0_FSM_onehot_STATE[12]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT5 #(
    .INIT(32'h00010116)) 
     \FSM_onehot_STATE[12]_i_10 
       (.I0(\n_0_FSM_onehot_STATE_reg[11] ),
        .I1(\n_0_FSM_onehot_STATE_reg[10] ),
        .I2(\n_0_FSM_onehot_STATE_reg[7] ),
        .I3(\n_0_FSM_onehot_STATE_reg[6] ),
        .I4(\n_0_FSM_onehot_STATE_reg[3] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair88" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_STATE[12]_i_11 
       (.I0(\n_0_FSM_onehot_STATE_reg[4] ),
        .I1(\n_0_FSM_onehot_STATE_reg[5] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_STATE[12]_i_12 
       (.I0(\n_0_FSM_onehot_STATE_reg[8] ),
        .I1(\n_0_FSM_onehot_STATE_reg[9] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_12 ));
LUT3 #(
    .INIT(8'h01)) 
     \FSM_onehot_STATE[12]_i_13 
       (.I0(\n_0_FSM_onehot_STATE_reg[12] ),
        .I1(\n_0_FSM_onehot_STATE_reg[1] ),
        .I2(\n_0_FSM_onehot_STATE_reg[0] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_13 ));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT5 #(
    .INIT(32'h00010116)) 
     \FSM_onehot_STATE[12]_i_14 
       (.I0(\n_0_FSM_onehot_STATE_reg[4] ),
        .I1(\n_0_FSM_onehot_STATE_reg[5] ),
        .I2(\n_0_FSM_onehot_STATE_reg[12] ),
        .I3(\n_0_FSM_onehot_STATE_reg[6] ),
        .I4(\n_0_FSM_onehot_STATE_reg[7] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair89" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \FSM_onehot_STATE[12]_i_15 
       (.I0(\n_0_FSM_onehot_STATE_reg[1] ),
        .I1(\n_0_FSM_onehot_STATE_reg[2] ),
        .I2(\n_0_FSM_onehot_STATE_reg[3] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_15 ));
(* SOFT_HLUTNM = "soft_lutpair85" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_STATE[12]_i_16 
       (.I0(\n_0_FSM_onehot_STATE_reg[10] ),
        .I1(\n_0_FSM_onehot_STATE_reg[11] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_16 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_STATE[12]_i_17 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_21 ),
        .I1(\n_0_FSM_onehot_STATE_reg[0] ),
        .I2(\n_0_FSM_onehot_STATE[12]_i_22 ),
        .I3(\n_0_FSM_onehot_STATE_reg[1] ),
        .I4(\n_0_FSM_onehot_STATE_reg[4] ),
        .I5(\n_0_FSM_onehot_STATE_reg[2] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_17 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \FSM_onehot_STATE[12]_i_18 
       (.I0(\n_0_FSM_onehot_STATE_reg[3] ),
        .I1(\n_0_FSM_onehot_STATE_reg[5] ),
        .I2(\n_0_FSM_onehot_STATE_reg[1] ),
        .I3(\n_0_FSM_onehot_STATE_reg[7] ),
        .I4(\n_0_FSM_onehot_STATE_reg[9] ),
        .I5(\n_0_FSM_onehot_STATE_reg[11] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_18 ));
(* SOFT_HLUTNM = "soft_lutpair82" *) 
   LUT5 #(
    .INIT(32'h00010116)) 
     \FSM_onehot_STATE[12]_i_19 
       (.I0(\n_0_FSM_onehot_STATE_reg[7] ),
        .I1(\n_0_FSM_onehot_STATE_reg[11] ),
        .I2(\n_0_FSM_onehot_STATE_reg[9] ),
        .I3(\n_0_FSM_onehot_STATE_reg[5] ),
        .I4(\n_0_FSM_onehot_STATE_reg[3] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_19 ));
LUT6 #(
    .INIT(64'h00E0002000C00000)) 
     \FSM_onehot_STATE[12]_i_2 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I2(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .I3(CGBAD),
        .I4(\n_0_FSM_onehot_STATE[12]_i_7 ),
        .I5(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .O(\n_0_FSM_onehot_STATE[12]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_STATE[12]_i_20 
       (.I0(\n_0_FSM_onehot_STATE_reg[10] ),
        .I1(\n_0_FSM_onehot_STATE_reg[8] ),
        .I2(\n_0_FSM_onehot_STATE_reg[6] ),
        .I3(\n_0_FSM_onehot_STATE_reg[12] ),
        .I4(\n_0_FSM_onehot_STATE_reg[2] ),
        .I5(\n_0_FSM_onehot_STATE_reg[4] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_20 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_STATE[12]_i_21 
       (.I0(\n_0_FSM_onehot_STATE_reg[3] ),
        .I1(\n_0_FSM_onehot_STATE_reg[5] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_21 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_STATE[12]_i_22 
       (.I0(\n_0_FSM_onehot_STATE_reg[6] ),
        .I1(\n_0_FSM_onehot_STATE_reg[7] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_22 ));
LUT6 #(
    .INIT(64'h000A0000000E0000)) 
     \FSM_onehot_STATE[12]_i_3 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_9 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_10 ),
        .I2(\n_0_FSM_onehot_STATE[12]_i_11 ),
        .I3(\n_0_FSM_onehot_STATE[12]_i_12 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_13 ),
        .I5(\n_0_FSM_onehot_STATE_reg[2] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_3 ));
LUT6 #(
    .INIT(64'h0000000000000008)) 
     \FSM_onehot_STATE[12]_i_4 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_14 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_15 ),
        .I2(\n_0_FSM_onehot_STATE_reg[0] ),
        .I3(\n_0_FSM_onehot_STATE[12]_i_16 ),
        .I4(\n_0_FSM_onehot_STATE_reg[9] ),
        .I5(\n_0_FSM_onehot_STATE_reg[8] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_4 ));
LUT6 #(
    .INIT(64'h0001011600000000)) 
     \FSM_onehot_STATE[12]_i_5 
       (.I0(\n_0_FSM_onehot_STATE_reg[8] ),
        .I1(\n_0_FSM_onehot_STATE_reg[9] ),
        .I2(\n_0_FSM_onehot_STATE_reg[12] ),
        .I3(\n_0_FSM_onehot_STATE_reg[10] ),
        .I4(\n_0_FSM_onehot_STATE_reg[11] ),
        .I5(\n_0_FSM_onehot_STATE[12]_i_17 ),
        .O(\n_0_FSM_onehot_STATE[12]_i_5 ));
LUT5 #(
    .INIT(32'hFFFFFFEA)) 
     \FSM_onehot_STATE[12]_i_6 
       (.I0(D_0),
        .I1(I4),
        .I2(RXEVEN),
        .I3(RXNOTINTABLE_INT),
        .I4(p_0_in),
        .O(CGBAD));
LUT2 #(
    .INIT(4'hB)) 
     \FSM_onehot_STATE[12]_i_7 
       (.I0(GOOD_CGS[0]),
        .I1(GOOD_CGS[1]),
        .O(\n_0_FSM_onehot_STATE[12]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair84" *) 
   LUT5 #(
    .INIT(32'h00A000E0)) 
     \FSM_onehot_STATE[12]_i_8 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_18 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_19 ),
        .I2(\n_0_FSM_onehot_STATE[12]_i_20 ),
        .I3(\n_0_FSM_onehot_STATE_reg[0] ),
        .I4(\n_0_FSM_onehot_STATE_reg[1] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_8 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \FSM_onehot_STATE[12]_i_9 
       (.I0(\n_0_FSM_onehot_STATE_reg[2] ),
        .I1(\n_0_FSM_onehot_STATE_reg[6] ),
        .I2(\n_0_FSM_onehot_STATE_reg[3] ),
        .I3(\n_0_FSM_onehot_STATE_reg[7] ),
        .I4(\n_0_FSM_onehot_STATE_reg[10] ),
        .I5(\n_0_FSM_onehot_STATE_reg[11] ),
        .O(\n_0_FSM_onehot_STATE[12]_i_9 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \FSM_onehot_STATE[1]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I2(I4),
        .I3(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .O(\n_0_FSM_onehot_STATE[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FSM_onehot_STATE[2]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[2]_i_2 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .O(\n_0_FSM_onehot_STATE[2]_i_1 ));
LUT6 #(
    .INIT(64'h000000000101000C)) 
     \FSM_onehot_STATE[2]_i_2 
       (.I0(I4),
        .I1(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I2(CGBAD),
        .I3(I3),
        .I4(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I5(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .O(\n_0_FSM_onehot_STATE[2]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000200)) 
     \FSM_onehot_STATE[3]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I2(CGBAD),
        .I3(I4),
        .I4(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I5(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .O(\n_0_FSM_onehot_STATE[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair92" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FSM_onehot_STATE[4]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[4]_i_2 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .O(\n_0_FSM_onehot_STATE[4]_i_1 ));
LUT6 #(
    .INIT(64'h0000110000030000)) 
     \FSM_onehot_STATE[4]_i_2 
       (.I0(I3),
        .I1(CGBAD),
        .I2(I4),
        .I3(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I5(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .O(\n_0_FSM_onehot_STATE[4]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000200)) 
     \FSM_onehot_STATE[5]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I2(CGBAD),
        .I3(I4),
        .I4(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I5(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .O(\n_0_FSM_onehot_STATE[5]_i_1 ));
LUT5 #(
    .INIT(32'h11000200)) 
     \FSM_onehot_STATE[6]_i_2 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I1(CGBAD),
        .I2(I3),
        .I3(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .O(\n_0_FSM_onehot_STATE[6]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000100)) 
     \FSM_onehot_STATE[6]_i_3 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I1(CGBAD),
        .I2(GOOD_CGS[0]),
        .I3(GOOD_CGS[1]),
        .I4(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I5(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .O(\n_0_FSM_onehot_STATE[6]_i_3 ));
LUT6 #(
    .INIT(64'h0000300000000400)) 
     \FSM_onehot_STATE[7]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_7 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .I2(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I3(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I4(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .I5(CGBAD),
        .O(\n_0_FSM_onehot_STATE[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000300000000008)) 
     \FSM_onehot_STATE[8]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_7 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .I2(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I3(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I4(CGBAD),
        .I5(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .O(\n_0_FSM_onehot_STATE[8]_i_1 ));
LUT6 #(
    .INIT(64'h30004040000C4040)) 
     \FSM_onehot_STATE[9]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[12]_i_7 ),
        .I1(\n_0_FSM_onehot_STATE[12]_i_5 ),
        .I2(\n_0_FSM_onehot_STATE[12]_i_4 ),
        .I3(\n_0_FSM_onehot_STATE[12]_i_3 ),
        .I4(CGBAD),
        .I5(\n_0_FSM_onehot_STATE[12]_i_8 ),
        .O(\n_0_FSM_onehot_STATE[9]_i_1 ));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_STATE_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[0]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[0] ),
        .S(\n_0_FSM_onehot_STATE[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[10] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[10]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[10] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[11] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[11]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[11] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[12] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[12]_i_2 ),
        .Q(\n_0_FSM_onehot_STATE_reg[12] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[1]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[1] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[2]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[2] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[3]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[3] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[4]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[4] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[5]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[5] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE_reg[6]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[6] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
MUXF7 \FSM_onehot_STATE_reg[6]_i_1 
       (.I0(\n_0_FSM_onehot_STATE[6]_i_2 ),
        .I1(\n_0_FSM_onehot_STATE[6]_i_3 ),
        .O(\n_0_FSM_onehot_STATE_reg[6]_i_1 ),
        .S(\n_0_FSM_onehot_STATE[12]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[7]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[7] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[8] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[8]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[8] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_STATE_reg[9] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_FSM_onehot_STATE[9]_i_1 ),
        .Q(\n_0_FSM_onehot_STATE_reg[9] ),
        .R(\n_0_FSM_onehot_STATE[12]_i_1 ));
GND GND
       (.G(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT3 #(
    .INIT(8'h09)) 
     \GOOD_CGS[0]_i_1 
       (.I0(GOOD_CGS[0]),
        .I1(CGBAD),
        .I2(\n_0_GOOD_CGS[1]_i_2 ),
        .O(\n_0_GOOD_CGS[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair87" *) 
   LUT4 #(
    .INIT(16'h009A)) 
     \GOOD_CGS[1]_i_1 
       (.I0(GOOD_CGS[1]),
        .I1(CGBAD),
        .I2(GOOD_CGS[0]),
        .I3(\n_0_GOOD_CGS[1]_i_2 ),
        .O(\n_0_GOOD_CGS[1]_i_1 ));
LUT5 #(
    .INIT(32'hAEFAAAAA)) 
     \GOOD_CGS[1]_i_2 
       (.I0(I2),
        .I1(STATE_reg[1]),
        .I2(STATE_reg[3]),
        .I3(STATE_reg[2]),
        .I4(STATE_reg[0]),
        .O(\n_0_GOOD_CGS[1]_i_2 ));
FDRE \GOOD_CGS_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_GOOD_CGS[0]_i_1 ),
        .Q(GOOD_CGS[0]),
        .R(\<const0> ));
FDRE \GOOD_CGS_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_GOOD_CGS[1]_i_1 ),
        .Q(GOOD_CGS[1]),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'hB)) 
     I_i_3
       (.I0(I350_in),
        .I1(RXEVEN),
        .O(O1));
FDRE SIGNAL_DETECT_REG_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(SIGNAL_DETECT_MOD),
        .Q(SIGNAL_DETECT_REG),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair90" *) 
   LUT2 #(
    .INIT(4'hB)) 
     SYNC_STATUS_REG_i_1
       (.I0(I2),
        .I1(p_55_in),
        .O(SYNC_STATUS_REG0));
(* SOFT_HLUTNM = "soft_lutpair91" *) 
   LUT3 #(
    .INIT(8'hF4)) 
     SYNC_STATUS_i_1
       (.I0(n_0_SYNC_STATUS_i_2),
        .I1(p_55_in),
        .I2(SYNC_STATUS0),
        .O(n_0_SYNC_STATUS_i_1));
LUT5 #(
    .INIT(32'h20000083)) 
     SYNC_STATUS_i_2
       (.I0(CGBAD),
        .I1(STATE_reg[2]),
        .I2(STATE_reg[3]),
        .I3(STATE_reg[1]),
        .I4(STATE_reg[0]),
        .O(n_0_SYNC_STATUS_i_2));
LUT6 #(
    .INIT(64'h0000000001000000)) 
     SYNC_STATUS_i_3
       (.I0(STATE_reg[1]),
        .I1(I3),
        .I2(CGBAD),
        .I3(STATE_reg[0]),
        .I4(STATE_reg[2]),
        .I5(STATE_reg[3]),
        .O(SYNC_STATUS0));
(* SOFT_HLUTNM = "soft_lutpair83" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     SYNC_STATUS_i_4
       (.I0(\n_0_FSM_onehot_STATE_reg[6] ),
        .I1(\n_0_FSM_onehot_STATE_reg[7] ),
        .I2(\n_0_FSM_onehot_STATE_reg[12] ),
        .I3(\n_0_FSM_onehot_STATE_reg[5] ),
        .I4(\n_0_FSM_onehot_STATE_reg[4] ),
        .O(STATE_reg[2]));
(* SOFT_HLUTNM = "soft_lutpair86" *) 
   LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     SYNC_STATUS_i_5
       (.I0(\n_0_FSM_onehot_STATE_reg[10] ),
        .I1(\n_0_FSM_onehot_STATE_reg[11] ),
        .I2(\n_0_FSM_onehot_STATE_reg[12] ),
        .I3(\n_0_FSM_onehot_STATE_reg[9] ),
        .I4(\n_0_FSM_onehot_STATE_reg[8] ),
        .O(STATE_reg[3]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     SYNC_STATUS_i_6
       (.I0(\n_0_FSM_onehot_STATE_reg[2] ),
        .I1(\n_0_FSM_onehot_STATE_reg[3] ),
        .I2(\n_0_FSM_onehot_STATE_reg[10] ),
        .I3(\n_0_FSM_onehot_STATE_reg[11] ),
        .I4(\n_0_FSM_onehot_STATE_reg[6] ),
        .I5(\n_0_FSM_onehot_STATE_reg[7] ),
        .O(STATE_reg[1]));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     SYNC_STATUS_i_7
       (.I0(\n_0_FSM_onehot_STATE_reg[7] ),
        .I1(\n_0_FSM_onehot_STATE_reg[1] ),
        .I2(\n_0_FSM_onehot_STATE_reg[9] ),
        .I3(\n_0_FSM_onehot_STATE_reg[11] ),
        .I4(\n_0_FSM_onehot_STATE_reg[3] ),
        .I5(\n_0_FSM_onehot_STATE_reg[5] ),
        .O(STATE_reg[0]));
FDRE #(
    .INIT(1'b0)) 
     SYNC_STATUS_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_SYNC_STATUS_i_1),
        .Q(p_55_in),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
endmodule

(* ORIG_REF_NAME = "TX" *) 
module gig_ethernet_pcs_pma_0TX__parameterized0
   (O1,
    O2,
    O3,
    D,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    gmii_tx_en,
    I1,
    I2,
    gmii_tx_er,
    SR,
    LOOPBACK_INT,
    gmii_txd,
    gt0_rxcharisk_out,
    gt0_rxchariscomma_out,
    I3);
  output O1;
  output O2;
  output O3;
  output [3:0]D;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output [7:0]O10;
  output O11;
  input gmii_tx_en;
  input I1;
  input I2;
  input gmii_tx_er;
  input [0:0]SR;
  input LOOPBACK_INT;
  input [7:0]gmii_txd;
  input [0:0]gt0_rxcharisk_out;
  input [0:0]gt0_rxchariscomma_out;
  input [7:0]I3;

  wire \<const0> ;
  wire \<const1> ;
  wire CODE_GRPISK;
  wire CODE_GRPISK_0;
  wire CONFIG_K28p5;
  wire CONFIG_K28p5_1;
  wire [3:0]D;
  wire DISP5;
  wire DISPARITY;
  wire I1;
  wire I2;
  wire [7:0]I3;
  wire K28p5;
  wire LOOPBACK_INT;
  wire O1;
  wire [7:0]O10;
  wire O11;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire S;
  wire S0;
  wire [0:0]SR;
  wire T;
  wire T0;
  wire TRIGGER_S;
  wire TRIGGER_S0;
  wire TRIGGER_T;
  wire TXCHARDISPMODE_INT;
  wire TXCHARDISPVAL;
  wire TXCHARISK_INT;
  wire [7:0]TXDATA;
  wire [7:0]TXD_REG1;
  wire TX_EN_REG1;
  wire TX_ER_REG1;
  wire TX_EVEN;
  wire XMIT_CONFIG_INT;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire [0:0]gt0_rxchariscomma_out;
  wire [0:0]gt0_rxcharisk_out;
  wire n_0_C1_OR_C2_i_1;
  wire n_0_C1_OR_C2_reg;
  wire n_0_CODE_GRPISK_i_1;
  wire \n_0_CODE_GRP[0]_i_1 ;
  wire \n_0_CODE_GRP[0]_i_2 ;
  wire \n_0_CODE_GRP[1]_i_1 ;
  wire \n_0_CODE_GRP[1]_i_2 ;
  wire \n_0_CODE_GRP[2]_i_1 ;
  wire \n_0_CODE_GRP[2]_i_2 ;
  wire \n_0_CODE_GRP[3]_i_1 ;
  wire \n_0_CODE_GRP[3]_i_2 ;
  wire \n_0_CODE_GRP[4]_i_1 ;
  wire \n_0_CODE_GRP[5]_i_1 ;
  wire \n_0_CODE_GRP[6]_i_1 ;
  wire \n_0_CODE_GRP[6]_i_2 ;
  wire \n_0_CODE_GRP[7]_i_1 ;
  wire \n_0_CODE_GRP_CNT_reg[1] ;
  wire \n_0_CODE_GRP_reg[0] ;
  wire \n_0_CONFIG_DATA[0]_i_1 ;
  wire \n_0_CONFIG_DATA[1]_i_1 ;
  wire \n_0_CONFIG_DATA[3]_i_1 ;
  wire \n_0_CONFIG_DATA[6]_i_1 ;
  wire \n_0_CONFIG_DATA[7]_i_1 ;
  wire \n_0_CONFIG_DATA_reg[0] ;
  wire \n_0_CONFIG_DATA_reg[1] ;
  wire \n_0_CONFIG_DATA_reg[2] ;
  wire \n_0_CONFIG_DATA_reg[3] ;
  wire \n_0_CONFIG_DATA_reg[4] ;
  wire \n_0_CONFIG_DATA_reg[5] ;
  wire \n_0_CONFIG_DATA_reg[6] ;
  wire \n_0_CONFIG_DATA_reg[7] ;
  wire n_0_INSERT_IDLE_i_1;
  wire n_0_INSERT_IDLE_i_2;
  wire n_0_INSERT_IDLE_reg;
  wire n_0_K28p5_i_1;
  wire \n_0_NO_QSGMII_DATA.TXCHARISK_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[0]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[1]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[2]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[3]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[4]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[5]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[6]_i_1 ;
  wire \n_0_NO_QSGMII_DATA.TXDATA[7]_i_1 ;
  wire \n_0_NO_QSGMII_DISP.DISPARITY_i_1 ;
  wire n_0_R_i_1__0;
  wire n_0_R_reg;
  wire n_0_SYNC_DISPARITY_i_1;
  wire n_0_SYNC_DISPARITY_reg;
  wire n_0_TX_PACKET_i_1;
  wire n_0_TX_PACKET_reg;
  wire n_0_V_i_1;
  wire n_0_V_i_2;
  wire n_0_V_i_3;
  wire n_0_V_i_4;
  wire n_0_V_reg;
  wire n_0_XMIT_CONFIG_INT_i_1;
  wire n_0_XMIT_DATA_INT_i_1;
  wire n_0_XMIT_DATA_INT_reg;
  wire p_0_in;
  wire p_0_in18_in;
  wire p_0_in37_in;
  wire p_10_out;
  wire p_12_out;
  wire p_1_in;
  wire p_1_in1_in;
  wire p_1_in36_in;
  wire p_35_in;
  wire p_3_out;
  wire p_49_in;
  wire [1:0]plusOp;

(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT5 #(
    .INIT(32'h00006A2A)) 
     C1_OR_C2_i_1
       (.I0(n_0_C1_OR_C2_reg),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(TX_EVEN),
        .I3(XMIT_CONFIG_INT),
        .I4(I2),
        .O(n_0_C1_OR_C2_i_1));
FDRE C1_OR_C2_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_C1_OR_C2_i_1),
        .Q(n_0_C1_OR_C2_reg),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'h30FF3055)) 
     CODE_GRPISK_i_1
       (.I0(n_0_TX_PACKET_reg),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(TX_EVEN),
        .I3(XMIT_CONFIG_INT),
        .I4(CODE_GRPISK_0),
        .O(n_0_CODE_GRPISK_i_1));
FDRE CODE_GRPISK_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_CODE_GRPISK_i_1),
        .Q(CODE_GRPISK),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'hAAAAAAAA0C0C000C)) 
     \CODE_GRP[0]_i_1 
       (.I0(\n_0_CONFIG_DATA_reg[0] ),
        .I1(\n_0_CODE_GRP[0]_i_2 ),
        .I2(SR),
        .I3(n_0_V_reg),
        .I4(S),
        .I5(XMIT_CONFIG_INT),
        .O(\n_0_CODE_GRP[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT5 #(
    .INIT(32'hFFFEFEFE)) 
     \CODE_GRP[0]_i_2 
       (.I0(T),
        .I1(S),
        .I2(n_0_R_reg),
        .I3(n_0_TX_PACKET_reg),
        .I4(TXD_REG1[0]),
        .O(\n_0_CODE_GRP[0]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT4 #(
    .INIT(16'hA0AC)) 
     \CODE_GRP[1]_i_1 
       (.I0(\n_0_CONFIG_DATA_reg[1] ),
        .I1(\n_0_CODE_GRP[1]_i_2 ),
        .I2(XMIT_CONFIG_INT),
        .I3(SR),
        .O(\n_0_CODE_GRP[1]_i_1 ));
LUT6 #(
    .INIT(64'hFCFFFCFEFCFEFCFE)) 
     \CODE_GRP[1]_i_2 
       (.I0(n_0_R_reg),
        .I1(S),
        .I2(n_0_V_reg),
        .I3(T),
        .I4(n_0_TX_PACKET_reg),
        .I5(TXD_REG1[1]),
        .O(\n_0_CODE_GRP[1]_i_2 ));
LUT5 #(
    .INIT(32'hFFF100F1)) 
     \CODE_GRP[2]_i_1 
       (.I0(S),
        .I1(\n_0_CODE_GRP[2]_i_2 ),
        .I2(SR),
        .I3(XMIT_CONFIG_INT),
        .I4(\n_0_CONFIG_DATA_reg[2] ),
        .O(\n_0_CODE_GRP[2]_i_1 ));
LUT5 #(
    .INIT(32'h00010000)) 
     \CODE_GRP[2]_i_2 
       (.I0(T),
        .I1(n_0_V_reg),
        .I2(n_0_R_reg),
        .I3(TXD_REG1[2]),
        .I4(n_0_TX_PACKET_reg),
        .O(\n_0_CODE_GRP[2]_i_2 ));
LUT6 #(
    .INIT(64'hBBB8BBB8BBB8BBBB)) 
     \CODE_GRP[3]_i_1 
       (.I0(\n_0_CONFIG_DATA_reg[3] ),
        .I1(XMIT_CONFIG_INT),
        .I2(\n_0_CODE_GRP[3]_i_2 ),
        .I3(SR),
        .I4(n_0_R_reg),
        .I5(n_0_TX_PACKET_reg),
        .O(\n_0_CODE_GRP[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT5 #(
    .INIT(32'hFEFFFEFE)) 
     \CODE_GRP[3]_i_2 
       (.I0(T),
        .I1(S),
        .I2(n_0_V_reg),
        .I3(n_0_R_reg),
        .I4(TXD_REG1[3]),
        .O(\n_0_CODE_GRP[3]_i_2 ));
LUT5 #(
    .INIT(32'hBBBBB8BB)) 
     \CODE_GRP[4]_i_1 
       (.I0(\n_0_CONFIG_DATA_reg[4] ),
        .I1(XMIT_CONFIG_INT),
        .I2(TXD_REG1[4]),
        .I3(n_0_TX_PACKET_reg),
        .I4(CODE_GRPISK_0),
        .O(\n_0_CODE_GRP[4]_i_1 ));
LUT5 #(
    .INIT(32'hBBBBB8BB)) 
     \CODE_GRP[5]_i_1 
       (.I0(\n_0_CONFIG_DATA_reg[5] ),
        .I1(XMIT_CONFIG_INT),
        .I2(TXD_REG1[5]),
        .I3(n_0_TX_PACKET_reg),
        .I4(CODE_GRPISK_0),
        .O(\n_0_CODE_GRP[5]_i_1 ));
LUT6 #(
    .INIT(64'hAAAA0000AAAAFFC0)) 
     \CODE_GRP[6]_i_1 
       (.I0(\n_0_CONFIG_DATA_reg[6] ),
        .I1(n_0_TX_PACKET_reg),
        .I2(TXD_REG1[6]),
        .I3(\n_0_CODE_GRP[6]_i_2 ),
        .I4(XMIT_CONFIG_INT),
        .I5(SR),
        .O(\n_0_CODE_GRP[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair48" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \CODE_GRP[6]_i_2 
       (.I0(n_0_R_reg),
        .I1(n_0_V_reg),
        .I2(S),
        .I3(T),
        .O(\n_0_CODE_GRP[6]_i_2 ));
LUT5 #(
    .INIT(32'hBBBBB8BB)) 
     \CODE_GRP[7]_i_1 
       (.I0(\n_0_CONFIG_DATA_reg[7] ),
        .I1(XMIT_CONFIG_INT),
        .I2(TXD_REG1[7]),
        .I3(n_0_TX_PACKET_reg),
        .I4(CODE_GRPISK_0),
        .O(\n_0_CODE_GRP[7]_i_1 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \CODE_GRP[7]_i_2 
       (.I0(T),
        .I1(S),
        .I2(n_0_V_reg),
        .I3(n_0_R_reg),
        .I4(SR),
        .O(CODE_GRPISK_0));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \CODE_GRP_CNT[0]_i_1 
       (.I0(TX_EVEN),
        .O(plusOp[0]));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \CODE_GRP_CNT[1]_i_1 
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .O(plusOp[1]));
FDSE \CODE_GRP_CNT_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(plusOp[0]),
        .Q(TX_EVEN),
        .S(I2));
FDSE \CODE_GRP_CNT_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(plusOp[1]),
        .Q(\n_0_CODE_GRP_CNT_reg[1] ),
        .S(I2));
FDRE \CODE_GRP_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CODE_GRP[0]_i_1 ),
        .Q(\n_0_CODE_GRP_reg[0] ),
        .R(\<const0> ));
FDRE \CODE_GRP_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CODE_GRP[1]_i_1 ),
        .Q(p_1_in),
        .R(\<const0> ));
FDRE \CODE_GRP_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CODE_GRP[2]_i_1 ),
        .Q(p_0_in18_in),
        .R(\<const0> ));
FDRE \CODE_GRP_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CODE_GRP[3]_i_1 ),
        .Q(p_0_in),
        .R(\<const0> ));
FDRE \CODE_GRP_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CODE_GRP[4]_i_1 ),
        .Q(p_1_in1_in),
        .R(\<const0> ));
FDRE \CODE_GRP_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CODE_GRP[5]_i_1 ),
        .Q(p_1_in36_in),
        .R(\<const0> ));
FDRE \CODE_GRP_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CODE_GRP[6]_i_1 ),
        .Q(p_35_in),
        .R(\<const0> ));
FDRE \CODE_GRP_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CODE_GRP[7]_i_1 ),
        .Q(p_0_in37_in),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \CONFIG_DATA[0]_i_1 
       (.I0(\n_0_CODE_GRP_CNT_reg[1] ),
        .I1(TX_EVEN),
        .I2(n_0_C1_OR_C2_reg),
        .O(\n_0_CONFIG_DATA[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair58" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \CONFIG_DATA[1]_i_1 
       (.I0(TX_EVEN),
        .I1(n_0_C1_OR_C2_reg),
        .I2(\n_0_CODE_GRP_CNT_reg[1] ),
        .O(\n_0_CONFIG_DATA[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \CONFIG_DATA[3]_i_1 
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .O(\n_0_CONFIG_DATA[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair68" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \CONFIG_DATA[6]_i_1 
       (.I0(TX_EVEN),
        .I1(n_0_C1_OR_C2_reg),
        .I2(\n_0_CODE_GRP_CNT_reg[1] ),
        .O(\n_0_CONFIG_DATA[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair46" *) 
   LUT3 #(
    .INIT(8'h07)) 
     \CONFIG_DATA[7]_i_1 
       (.I0(TX_EVEN),
        .I1(n_0_C1_OR_C2_reg),
        .I2(\n_0_CODE_GRP_CNT_reg[1] ),
        .O(\n_0_CONFIG_DATA[7]_i_1 ));
FDRE \CONFIG_DATA_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CONFIG_DATA[0]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[0] ),
        .R(I2));
FDRE \CONFIG_DATA_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CONFIG_DATA[1]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[1] ),
        .R(I2));
FDRE \CONFIG_DATA_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CONFIG_DATA[7]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[2] ),
        .R(I2));
FDRE \CONFIG_DATA_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CONFIG_DATA[3]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[3] ),
        .R(I2));
FDRE \CONFIG_DATA_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CONFIG_DATA[7]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[4] ),
        .R(I2));
FDRE \CONFIG_DATA_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CONFIG_DATA[7]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[5] ),
        .R(I2));
FDRE \CONFIG_DATA_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CONFIG_DATA[6]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[6] ),
        .R(I2));
FDRE \CONFIG_DATA_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_CONFIG_DATA[7]_i_1 ),
        .Q(\n_0_CONFIG_DATA_reg[7] ),
        .R(I2));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT2 #(
    .INIT(4'h1)) 
     CONFIG_K28p5_i_1
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .O(CONFIG_K28p5_1));
FDRE CONFIG_K28p5_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(CONFIG_K28p5_1),
        .Q(CONFIG_K28p5),
        .R(I2));
GND GND
       (.G(\<const0> ));
LUT6 #(
    .INIT(64'h00000000AAAAAAAB)) 
     INSERT_IDLE_i_1
       (.I0(SR),
        .I1(n_0_INSERT_IDLE_i_2),
        .I2(n_0_V_reg),
        .I3(n_0_R_reg),
        .I4(n_0_TX_PACKET_reg),
        .I5(XMIT_CONFIG_INT),
        .O(n_0_INSERT_IDLE_i_1));
(* SOFT_HLUTNM = "soft_lutpair49" *) 
   LUT2 #(
    .INIT(4'hE)) 
     INSERT_IDLE_i_2
       (.I0(T),
        .I1(S),
        .O(n_0_INSERT_IDLE_i_2));
FDRE INSERT_IDLE_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_INSERT_IDLE_i_1),
        .Q(n_0_INSERT_IDLE_reg),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair54" *) 
   LUT2 #(
    .INIT(4'h8)) 
     K28p5_i_1
       (.I0(XMIT_CONFIG_INT),
        .I1(CONFIG_K28p5),
        .O(n_0_K28p5_i_1));
FDRE K28p5_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_K28p5_i_1),
        .Q(K28p5),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair69" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \NO_QSGMII_CHAR.TXCHARDISPMODE_i_1 
       (.I0(n_0_SYNC_DISPARITY_reg),
        .I1(TX_EVEN),
        .O(p_12_out));
FDSE \NO_QSGMII_CHAR.TXCHARDISPMODE_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(p_12_out),
        .Q(TXCHARDISPMODE_INT),
        .S(I2));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'h08)) 
     \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1 
       (.I0(DISPARITY),
        .I1(n_0_SYNC_DISPARITY_reg),
        .I2(TX_EVEN),
        .O(p_10_out));
FDRE \NO_QSGMII_CHAR.TXCHARDISPVAL_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(p_10_out),
        .Q(TXCHARDISPVAL),
        .R(I2));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT4 #(
    .INIT(16'h0222)) 
     \NO_QSGMII_DATA.TXCHARISK_i_1 
       (.I0(CODE_GRPISK),
        .I1(I2),
        .I2(TX_EVEN),
        .I3(n_0_INSERT_IDLE_reg),
        .O(\n_0_NO_QSGMII_DATA.TXCHARISK_i_1 ));
FDRE \NO_QSGMII_DATA.TXCHARISK_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_QSGMII_DATA.TXCHARISK_i_1 ),
        .Q(TXCHARISK_INT),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'h00BF0080)) 
     \NO_QSGMII_DATA.TXDATA[0]_i_1 
       (.I0(DISPARITY),
        .I1(n_0_INSERT_IDLE_reg),
        .I2(TX_EVEN),
        .I3(I2),
        .I4(\n_0_CODE_GRP_reg[0] ),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT4 #(
    .INIT(16'h0222)) 
     \NO_QSGMII_DATA.TXDATA[1]_i_1 
       (.I0(p_1_in),
        .I1(I2),
        .I2(TX_EVEN),
        .I3(n_0_INSERT_IDLE_reg),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[1]_i_1 ));
LUT5 #(
    .INIT(32'h00BF0080)) 
     \NO_QSGMII_DATA.TXDATA[2]_i_1 
       (.I0(DISPARITY),
        .I1(n_0_INSERT_IDLE_reg),
        .I2(TX_EVEN),
        .I3(I2),
        .I4(p_0_in18_in),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair51" *) 
   LUT4 #(
    .INIT(16'h0222)) 
     \NO_QSGMII_DATA.TXDATA[3]_i_1 
       (.I0(p_0_in),
        .I1(I2),
        .I2(TX_EVEN),
        .I3(n_0_INSERT_IDLE_reg),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[3]_i_1 ));
LUT5 #(
    .INIT(32'h007F0040)) 
     \NO_QSGMII_DATA.TXDATA[4]_i_1 
       (.I0(DISPARITY),
        .I1(n_0_INSERT_IDLE_reg),
        .I2(TX_EVEN),
        .I3(I2),
        .I4(p_1_in1_in),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair50" *) 
   LUT4 #(
    .INIT(16'h0222)) 
     \NO_QSGMII_DATA.TXDATA[5]_i_1 
       (.I0(p_1_in36_in),
        .I1(I2),
        .I2(TX_EVEN),
        .I3(n_0_INSERT_IDLE_reg),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT4 #(
    .INIT(16'h3222)) 
     \NO_QSGMII_DATA.TXDATA[6]_i_1 
       (.I0(p_35_in),
        .I1(I2),
        .I2(TX_EVEN),
        .I3(n_0_INSERT_IDLE_reg),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[6]_i_1 ));
LUT5 #(
    .INIT(32'h00BF0080)) 
     \NO_QSGMII_DATA.TXDATA[7]_i_1 
       (.I0(DISPARITY),
        .I1(n_0_INSERT_IDLE_reg),
        .I2(TX_EVEN),
        .I3(I2),
        .I4(p_0_in37_in),
        .O(\n_0_NO_QSGMII_DATA.TXDATA[7]_i_1 ));
FDRE \NO_QSGMII_DATA.TXDATA_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[0]_i_1 ),
        .Q(TXDATA[0]),
        .R(\<const0> ));
FDRE \NO_QSGMII_DATA.TXDATA_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[1]_i_1 ),
        .Q(TXDATA[1]),
        .R(\<const0> ));
FDRE \NO_QSGMII_DATA.TXDATA_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[2]_i_1 ),
        .Q(TXDATA[2]),
        .R(\<const0> ));
FDRE \NO_QSGMII_DATA.TXDATA_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[3]_i_1 ),
        .Q(TXDATA[3]),
        .R(\<const0> ));
FDRE \NO_QSGMII_DATA.TXDATA_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[4]_i_1 ),
        .Q(TXDATA[4]),
        .R(\<const0> ));
FDRE \NO_QSGMII_DATA.TXDATA_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[5]_i_1 ),
        .Q(TXDATA[5]),
        .R(\<const0> ));
FDRE \NO_QSGMII_DATA.TXDATA_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[6]_i_1 ),
        .Q(TXDATA[6]),
        .R(\<const0> ));
FDRE \NO_QSGMII_DATA.TXDATA_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_QSGMII_DATA.TXDATA[7]_i_1 ),
        .Q(TXDATA[7]),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'hFFFF152A)) 
     \NO_QSGMII_DISP.DISPARITY_i_1 
       (.I0(DISPARITY),
        .I1(TX_EVEN),
        .I2(n_0_INSERT_IDLE_reg),
        .I3(p_3_out),
        .I4(I2),
        .O(\n_0_NO_QSGMII_DISP.DISPARITY_i_1 ));
LUT5 #(
    .INIT(32'hFFFF6AA5)) 
     \NO_QSGMII_DISP.DISPARITY_i_2 
       (.I0(DISP5),
        .I1(p_0_in37_in),
        .I2(p_35_in),
        .I3(p_1_in36_in),
        .I4(K28p5),
        .O(p_3_out));
LUT5 #(
    .INIT(32'hE9818117)) 
     \NO_QSGMII_DISP.DISPARITY_i_3 
       (.I0(p_0_in18_in),
        .I1(p_1_in),
        .I2(\n_0_CODE_GRP_reg[0] ),
        .I3(p_1_in1_in),
        .I4(p_0_in),
        .O(DISP5));
FDRE \NO_QSGMII_DISP.DISPARITY_reg 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_NO_QSGMII_DISP.DISPARITY_i_1 ),
        .Q(DISPARITY),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h0B0B0B0A0A0A0A0A)) 
     R_i_1__0
       (.I0(T),
        .I1(S),
        .I2(I2),
        .I3(TX_EVEN),
        .I4(TX_ER_REG1),
        .I5(n_0_R_reg),
        .O(n_0_R_i_1__0));
FDRE R_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_R_i_1__0),
        .Q(n_0_R_reg),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h2F2F2F2F2020202F)) 
     SYNC_DISPARITY_i_1
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(XMIT_CONFIG_INT),
        .I3(n_0_TX_PACKET_reg),
        .I4(\n_0_CODE_GRP[6]_i_2 ),
        .I5(SR),
        .O(n_0_SYNC_DISPARITY_i_1));
FDRE SYNC_DISPARITY_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_SYNC_DISPARITY_i_1),
        .Q(n_0_SYNC_DISPARITY_reg),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'hAA00AA00AAA2AA00)) 
     S_i_1__0
       (.I0(n_0_XMIT_DATA_INT_reg),
        .I1(TX_EVEN),
        .I2(TX_ER_REG1),
        .I3(TRIGGER_S),
        .I4(gmii_tx_en),
        .I5(TX_EN_REG1),
        .O(S0));
FDRE S_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(S0),
        .Q(S),
        .R(I2));
(* SOFT_HLUTNM = "soft_lutpair55" *) 
   LUT4 #(
    .INIT(16'h0400)) 
     TRIGGER_S_i_1
       (.I0(TX_ER_REG1),
        .I1(gmii_tx_en),
        .I2(TX_EN_REG1),
        .I3(TX_EVEN),
        .O(TRIGGER_S0));
FDRE TRIGGER_S_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(TRIGGER_S0),
        .Q(TRIGGER_S),
        .R(I2));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT2 #(
    .INIT(4'h2)) 
     TRIGGER_T_i_1
       (.I0(TX_EN_REG1),
        .I1(gmii_tx_en),
        .O(p_49_in));
FDRE TRIGGER_T_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(p_49_in),
        .Q(TRIGGER_T),
        .R(I2));
FDRE \TXD_REG1_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(gmii_txd[0]),
        .Q(TXD_REG1[0]),
        .R(\<const0> ));
FDRE \TXD_REG1_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(gmii_txd[1]),
        .Q(TXD_REG1[1]),
        .R(\<const0> ));
FDRE \TXD_REG1_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(gmii_txd[2]),
        .Q(TXD_REG1[2]),
        .R(\<const0> ));
FDRE \TXD_REG1_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(gmii_txd[3]),
        .Q(TXD_REG1[3]),
        .R(\<const0> ));
FDRE \TXD_REG1_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(gmii_txd[4]),
        .Q(TXD_REG1[4]),
        .R(\<const0> ));
FDRE \TXD_REG1_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(gmii_txd[5]),
        .Q(TXD_REG1[5]),
        .R(\<const0> ));
FDRE \TXD_REG1_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(gmii_txd[6]),
        .Q(TXD_REG1[6]),
        .R(\<const0> ));
FDRE \TXD_REG1_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(gmii_txd[7]),
        .Q(TXD_REG1[7]),
        .R(\<const0> ));
FDRE TX_EN_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(gmii_tx_en),
        .Q(TX_EN_REG1),
        .R(\<const0> ));
FDRE TX_ER_REG1_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(gmii_tx_er),
        .Q(TX_ER_REG1),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'h0B0A)) 
     TX_PACKET_i_1
       (.I0(S),
        .I1(T),
        .I2(I2),
        .I3(n_0_TX_PACKET_reg),
        .O(n_0_TX_PACKET_i_1));
FDRE TX_PACKET_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_TX_PACKET_i_1),
        .Q(n_0_TX_PACKET_reg),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'hFFFF222022202220)) 
     T_i_1__0
       (.I0(TX_EN_REG1),
        .I1(gmii_tx_en),
        .I2(S),
        .I3(n_0_TX_PACKET_reg),
        .I4(TRIGGER_T),
        .I5(n_0_V_reg),
        .O(T0));
FDRE T_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(T0),
        .Q(T),
        .R(I2));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_i_1 
       (.I0(TXCHARISK_INT),
        .I1(LOOPBACK_INT),
        .I2(gt0_rxchariscomma_out),
        .O(O9));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_i_1 
       (.I0(TXCHARISK_INT),
        .I1(LOOPBACK_INT),
        .I2(gt0_rxcharisk_out),
        .O(O8));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[0]_i_1 
       (.I0(TXDATA[0]),
        .I1(LOOPBACK_INT),
        .I2(I3[0]),
        .O(O10[0]));
LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[1]_i_1 
       (.I0(TXDATA[1]),
        .I1(LOOPBACK_INT),
        .I2(I3[1]),
        .O(O10[1]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[2]_i_1 
       (.I0(TXDATA[2]),
        .I1(LOOPBACK_INT),
        .I2(I3[2]),
        .O(O10[2]));
(* SOFT_HLUTNM = "soft_lutpair67" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[3]_i_1 
       (.I0(TXDATA[3]),
        .I1(LOOPBACK_INT),
        .I2(I3[3]),
        .O(O10[3]));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[4]_i_1 
       (.I0(TXDATA[4]),
        .I1(LOOPBACK_INT),
        .I2(I3[4]),
        .O(O10[4]));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[5]_i_1 
       (.I0(TXDATA[5]),
        .I1(LOOPBACK_INT),
        .I2(I3[5]),
        .O(O10[5]));
(* SOFT_HLUTNM = "soft_lutpair65" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[6]_i_1 
       (.I0(TXDATA[6]),
        .I1(LOOPBACK_INT),
        .I2(I3[6]),
        .O(O10[6]));
(* SOFT_HLUTNM = "soft_lutpair63" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.NO_1588.RXDATA_INT[7]_i_1 
       (.I0(TXDATA[7]),
        .I1(LOOPBACK_INT),
        .I2(I3[7]),
        .O(O10[7]));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.TXCHARDISPMODE_i_1 
       (.I0(TX_EVEN),
        .I1(LOOPBACK_INT),
        .I2(TXCHARDISPMODE_INT),
        .O(O2));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXCHARDISPVAL_i_1 
       (.I0(TXCHARDISPVAL),
        .I1(I2),
        .I2(LOOPBACK_INT),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair62" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \USE_ROCKET_IO.TXCHARISK_i_1 
       (.I0(TX_EVEN),
        .I1(LOOPBACK_INT),
        .I2(TXCHARISK_INT),
        .O(O7));
(* SOFT_HLUTNM = "soft_lutpair61" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[0]_i_1 
       (.I0(TXDATA[0]),
        .I1(I2),
        .I2(LOOPBACK_INT),
        .O(D[0]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[1]_i_1 
       (.I0(TXDATA[1]),
        .I1(I2),
        .I2(LOOPBACK_INT),
        .O(D[1]));
(* SOFT_HLUTNM = "soft_lutpair60" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[2]_i_1 
       (.I0(TXDATA[2]),
        .I1(I2),
        .I2(LOOPBACK_INT),
        .O(O6));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[3]_i_1 
       (.I0(TXDATA[3]),
        .I1(I2),
        .I2(LOOPBACK_INT),
        .O(O5));
(* SOFT_HLUTNM = "soft_lutpair64" *) 
   LUT3 #(
    .INIT(8'h32)) 
     \USE_ROCKET_IO.TXDATA[4]_i_1 
       (.I0(TXDATA[4]),
        .I1(I2),
        .I2(LOOPBACK_INT),
        .O(D[2]));
(* SOFT_HLUTNM = "soft_lutpair59" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[5]_i_1 
       (.I0(TXDATA[5]),
        .I1(I2),
        .I2(LOOPBACK_INT),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair53" *) 
   LUT4 #(
    .INIT(16'h0704)) 
     \USE_ROCKET_IO.TXDATA[6]_i_1 
       (.I0(TX_EVEN),
        .I1(LOOPBACK_INT),
        .I2(I2),
        .I3(TXDATA[6]),
        .O(D[3]));
(* SOFT_HLUTNM = "soft_lutpair52" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \USE_ROCKET_IO.TXDATA[7]_i_1 
       (.I0(I2),
        .I1(LOOPBACK_INT),
        .I2(TX_EVEN),
        .O(O11));
(* SOFT_HLUTNM = "soft_lutpair57" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \USE_ROCKET_IO.TXDATA[7]_i_2 
       (.I0(TXDATA[7]),
        .I1(I2),
        .I2(LOOPBACK_INT),
        .O(O3));
VCC VCC
       (.P(\<const1> ));
LUT5 #(
    .INIT(32'h00F80088)) 
     V_i_1
       (.I0(n_0_V_i_2),
        .I1(n_0_XMIT_DATA_INT_reg),
        .I2(S),
        .I3(I2),
        .I4(n_0_V_reg),
        .O(n_0_V_i_1));
LUT6 #(
    .INIT(64'hAAAAAAAAFFBFAAAA)) 
     V_i_2
       (.I0(n_0_V_i_3),
        .I1(gmii_txd[0]),
        .I2(gmii_txd[1]),
        .I3(n_0_V_i_4),
        .I4(gmii_tx_er),
        .I5(gmii_tx_en),
        .O(n_0_V_i_2));
(* SOFT_HLUTNM = "soft_lutpair47" *) 
   LUT5 #(
    .INIT(32'h8F808080)) 
     V_i_3
       (.I0(gmii_tx_en),
        .I1(gmii_tx_er),
        .I2(n_0_TX_PACKET_reg),
        .I3(TX_EN_REG1),
        .I4(TX_ER_REG1),
        .O(n_0_V_i_3));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
     V_i_4
       (.I0(gmii_txd[2]),
        .I1(gmii_txd[3]),
        .I2(gmii_txd[7]),
        .I3(gmii_txd[6]),
        .I4(gmii_txd[4]),
        .I5(gmii_txd[5]),
        .O(n_0_V_i_4));
FDRE V_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_V_i_1),
        .Q(n_0_V_reg),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair66" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     XMIT_CONFIG_INT_i_1
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(XMIT_CONFIG_INT),
        .O(n_0_XMIT_CONFIG_INT_i_1));
FDSE XMIT_CONFIG_INT_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_XMIT_CONFIG_INT_i_1),
        .Q(XMIT_CONFIG_INT),
        .S(I2));
(* SOFT_HLUTNM = "soft_lutpair56" *) 
   LUT3 #(
    .INIT(8'hF1)) 
     XMIT_DATA_INT_i_1
       (.I0(TX_EVEN),
        .I1(\n_0_CODE_GRP_CNT_reg[1] ),
        .I2(n_0_XMIT_DATA_INT_reg),
        .O(n_0_XMIT_DATA_INT_i_1));
FDRE XMIT_DATA_INT_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_XMIT_DATA_INT_i_1),
        .Q(n_0_XMIT_DATA_INT_reg),
        .R(I2));
endmodule

module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD
   (resetdone,
    gt0_drprdy_out,
    gt0_eyescandataerror_out,
    txn,
    txp,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxprbserr_out,
    txoutclk,
    gt0_drpdo_out,
    D,
    gt0_txbufstatus_out,
    gt0_rxbufstatus_out,
    O1,
    gt0_rxmonitorout_out,
    gt0_dmonitorout_out,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    independent_clock_bufg,
    gt0_drpclk_in,
    gt0_drpen_in,
    gt0_drpwe_in,
    gt0_eyescanreset_in,
    gt0_eyescantrigger_in,
    gtrefclk_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gt0_rxbufreset_in,
    gt0_rxdfeagcovrden_in,
    gt0_rxdfelpmreset_in,
    gt0_rxlpmen_in,
    gt0_rxmcommaalignen_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxpolarity_in,
    gt0_rxprbscntreset_in,
    CLK,
    TXPD,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txpolarity_in,
    gt0_txprbsforceerr_in,
    gt0_drpdi_in,
    gt0_rxmonitorsel_in,
    RXPD,
    gt0_loopback_in,
    gt0_rxprbssel_in,
    gt0_txprbssel_in,
    gt0_txdiffctrl_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    Q,
    I1,
    I2,
    I3,
    gt0_drpaddr_in,
    mmcm_locked_out,
    data_out,
    I4,
    reset_out0_in,
    reset_out);
  output resetdone;
  output gt0_drprdy_out;
  output gt0_eyescandataerror_out;
  output txn;
  output txp;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output gt0_rxprbserr_out;
  output txoutclk;
  output [15:0]gt0_drpdo_out;
  output [1:0]D;
  output [1:0]gt0_txbufstatus_out;
  output [2:0]gt0_rxbufstatus_out;
  output [15:0]O1;
  output [6:0]gt0_rxmonitorout_out;
  output [7:0]gt0_dmonitorout_out;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output O6;
  output O7;
  input independent_clock_bufg;
  input gt0_drpclk_in;
  input gt0_drpen_in;
  input gt0_drpwe_in;
  input gt0_eyescanreset_in;
  input gt0_eyescantrigger_in;
  input gtrefclk_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input gt0_rxbufreset_in;
  input gt0_rxdfeagcovrden_in;
  input gt0_rxdfelpmreset_in;
  input gt0_rxlpmen_in;
  input gt0_rxmcommaalignen_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxpolarity_in;
  input gt0_rxprbscntreset_in;
  input CLK;
  input [0:0]TXPD;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  input gt0_txpolarity_in;
  input gt0_txprbsforceerr_in;
  input [15:0]gt0_drpdi_in;
  input [1:0]gt0_rxmonitorsel_in;
  input [0:0]RXPD;
  input [2:0]gt0_loopback_in;
  input [2:0]gt0_rxprbssel_in;
  input [2:0]gt0_txprbssel_in;
  input [3:0]gt0_txdiffctrl_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input [15:0]Q;
  input [1:0]I1;
  input [1:0]I2;
  input [1:0]I3;
  input [8:0]gt0_drpaddr_in;
  input mmcm_locked_out;
  input data_out;
  input [0:0]I4;
  input reset_out0_in;
  input reset_out;

  wire CLK;
  wire [1:0]D;
  wire [1:0]I1;
  wire [1:0]I2;
  wire [1:0]I3;
  wire [0:0]I4;
  wire [15:0]O1;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire O6;
  wire O7;
  wire [15:0]Q;
  wire [0:0]RXPD;
  wire [0:0]TXPD;
  wire data_out;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire [2:0]gt0_loopback_in;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcommadet_out;
  wire gt0_rxdfeagcovrden_in;
  wire gt0_rxdfelpmreset_in;
  wire gt0_rxlpmen_in;
  wire gt0_rxmcommaalignen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire gt0_rxpcsreset_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txpcsreset_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire reset_out;
  wire reset_out0_in;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;

gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_init__parameterized0 U0
       (.CLK(CLK),
        .D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .Q(Q),
        .RXPD(RXPD),
        .TXPD(TXPD),
        .data_out(data_out),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdfeagcovrden_in(gt0_rxdfeagcovrden_in),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(mmcm_locked_out),
        .reset_out(reset_out),
        .reset_out0_in(reset_out0_in),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_GTWIZARD_GT" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_GT__parameterized0
   (resetdone,
    CPLLREFCLKLOST,
    gt0_drprdy_out,
    gt0_eyescandataerror_out,
    txn,
    txp,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxprbserr_out,
    O1,
    txoutclk,
    O2,
    gt0_drpdo_out,
    D,
    gt0_txbufstatus_out,
    gt0_rxbufstatus_out,
    O3,
    gt0_rxmonitorout_out,
    gt0_dmonitorout_out,
    O4,
    O5,
    O6,
    O7,
    independent_clock_bufg,
    CPLL_RESET,
    gt0_drpclk_in,
    gt0_drpen_in,
    gt0_drpwe_in,
    gt0_eyescanreset_in,
    gt0_eyescantrigger_in,
    gtrefclk_out,
    gt0_gtrxreset_in1_out,
    gt0_gttxreset_in0_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gt0_rxbufreset_in,
    RXDFELFHOLD,
    gt0_rxdfeagcovrden_in,
    gt0_rxdfelpmreset_in,
    gt0_rxlpmen_in,
    gt0_rxmcommaalignen_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxpolarity_in,
    gt0_rxprbscntreset_in,
    RXUSERRDY,
    CLK,
    TXPD,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txpolarity_in,
    gt0_txprbsforceerr_in,
    TXUSERRDY,
    gt0_drpdi_in,
    gt0_rxmonitorsel_in,
    RXPD,
    gt0_loopback_in,
    gt0_rxprbssel_in,
    gt0_txprbssel_in,
    gt0_txdiffctrl_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    Q,
    I1,
    I2,
    I3,
    gt0_drpaddr_in);
  output resetdone;
  output CPLLREFCLKLOST;
  output gt0_drprdy_out;
  output gt0_eyescandataerror_out;
  output txn;
  output txp;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output gt0_rxprbserr_out;
  output O1;
  output txoutclk;
  output O2;
  output [15:0]gt0_drpdo_out;
  output [1:0]D;
  output [1:0]gt0_txbufstatus_out;
  output [2:0]gt0_rxbufstatus_out;
  output [15:0]O3;
  output [6:0]gt0_rxmonitorout_out;
  output [7:0]gt0_dmonitorout_out;
  output [1:0]O4;
  output [1:0]O5;
  output [1:0]O6;
  output [1:0]O7;
  input independent_clock_bufg;
  input CPLL_RESET;
  input gt0_drpclk_in;
  input gt0_drpen_in;
  input gt0_drpwe_in;
  input gt0_eyescanreset_in;
  input gt0_eyescantrigger_in;
  input gtrefclk_out;
  input gt0_gtrxreset_in1_out;
  input gt0_gttxreset_in0_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input gt0_rxbufreset_in;
  input RXDFELFHOLD;
  input gt0_rxdfeagcovrden_in;
  input gt0_rxdfelpmreset_in;
  input gt0_rxlpmen_in;
  input gt0_rxmcommaalignen_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxpolarity_in;
  input gt0_rxprbscntreset_in;
  input RXUSERRDY;
  input CLK;
  input [0:0]TXPD;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  input gt0_txpolarity_in;
  input gt0_txprbsforceerr_in;
  input TXUSERRDY;
  input [15:0]gt0_drpdi_in;
  input [1:0]gt0_rxmonitorsel_in;
  input [0:0]RXPD;
  input [2:0]gt0_loopback_in;
  input [2:0]gt0_rxprbssel_in;
  input [2:0]gt0_txprbssel_in;
  input [3:0]gt0_txdiffctrl_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input [15:0]Q;
  input [1:0]I1;
  input [1:0]I2;
  input [1:0]I3;
  input [8:0]gt0_drpaddr_in;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire CPLLREFCLKLOST;
  wire CPLL_RESET;
  wire [1:0]D;
  wire [1:0]I1;
  wire [1:0]I2;
  wire [1:0]I3;
  wire O1;
  wire O2;
  wire [15:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [15:0]Q;
  wire RXDFELFHOLD;
  wire [0:0]RXPD;
  wire RXUSERRDY;
  wire [0:0]TXPD;
  wire TXUSERRDY;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire gt0_gtrxreset_in1_out;
  wire gt0_gttxreset_in0_out;
  wire [2:0]gt0_loopback_in;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcommadet_out;
  wire gt0_rxdfeagcovrden_in;
  wire gt0_rxdfelpmreset_in;
  wire gt0_rxlpmen_in;
  wire gt0_rxmcommaalignen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire gt0_rxpcsreset_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txpcsreset_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire n_0_gtxe2_i;
  wire n_11_gtxe2_i;
  wire n_38_gtxe2_i;
  wire n_39_gtxe2_i;
  wire resetdone;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
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
  wire [7:2]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [63:16]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:2]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* box_type = "PRIMITIVE" *) 
   GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b0001111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(36),
    .CLK_COR_MIN_LAT(33),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0110111100),
    .CLK_COR_SEQ_1_2(10'b0001010000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0110111100),
    .CLK_COR_SEQ_2_2(10'b0010110101),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("TRUE"),
    .CLK_COR_SEQ_LEN(2),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
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
    .RXBUF_THRESH_UNDFLW(8),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h03000023FF40080020),
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
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b1),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(5),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(20),
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
    .RX_INT_DATAWIDTH(0),
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
    .SIM_RESET_SPEEDUP("TRUE"),
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
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(5),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(0),
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
        .CPLLLOCK(resetdone),
        .CPLLLOCKDETCLK(independent_clock_bufg),
        .CPLLLOCKEN(\<const1> ),
        .CPLLPD(\<const0> ),
        .CPLLREFCLKLOST(CPLLREFCLKLOST),
        .CPLLREFCLKSEL({\<const0> ,\<const0> ,\<const1> }),
        .CPLLRESET(CPLL_RESET),
        .DMONITOROUT(gt0_dmonitorout_out),
        .DRPADDR(gt0_drpaddr_in),
        .DRPCLK(gt0_drpclk_in),
        .DRPDI(gt0_drpdi_in),
        .DRPDO(gt0_drpdo_out),
        .DRPEN(gt0_drpen_in),
        .DRPRDY(gt0_drprdy_out),
        .DRPWE(gt0_drpwe_in),
        .EYESCANDATAERROR(gt0_eyescandataerror_out),
        .EYESCANMODE(\<const0> ),
        .EYESCANRESET(gt0_eyescanreset_in),
        .EYESCANTRIGGER(gt0_eyescantrigger_in),
        .GTGREFCLK(\<const0> ),
        .GTNORTHREFCLK0(\<const0> ),
        .GTNORTHREFCLK1(\<const0> ),
        .GTREFCLK0(gtrefclk_out),
        .GTREFCLK1(\<const0> ),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(\<const0> ),
        .GTRSVD({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .GTRXRESET(gt0_gtrxreset_in1_out),
        .GTSOUTHREFCLK0(\<const0> ),
        .GTSOUTHREFCLK1(\<const0> ),
        .GTTXRESET(gt0_gttxreset_in0_out),
        .GTXRXN(rxn),
        .GTXRXP(rxp),
        .GTXTXN(txn),
        .GTXTXP(txp),
        .LOOPBACK(gt0_loopback_in),
        .PCSRSVDIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .PCSRSVDIN2({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .PMARSVDIN2({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .QPLLCLK(gt0_qplloutclk_out),
        .QPLLREFCLK(gt0_qplloutrefclk_out),
        .RESETOVRD(\<const0> ),
        .RX8B10BEN(\<const1> ),
        .RXBUFRESET(gt0_rxbufreset_in),
        .RXBUFSTATUS(gt0_rxbufstatus_out),
        .RXBYTEISALIGNED(gt0_rxbyteisaligned_out),
        .RXBYTEREALIGN(gt0_rxbyterealign_out),
        .RXCDRFREQRESET(\<const0> ),
        .RXCDRHOLD(\<const0> ),
        .RXCDRLOCK(n_11_gtxe2_i),
        .RXCDROVRDEN(\<const0> ),
        .RXCDRRESET(\<const0> ),
        .RXCDRRESETRSV(\<const0> ),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA({NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:2],O4}),
        .RXCHARISK({NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:2],O5}),
        .RXCHBONDEN(\<const0> ),
        .RXCHBONDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .RXCHBONDLEVEL({\<const0> ,\<const0> ,\<const0> }),
        .RXCHBONDMASTER(\<const0> ),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(\<const0> ),
        .RXCLKCORCNT(D),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(gt0_rxcommadet_out),
        .RXCOMMADETEN(\<const1> ),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:16],O3}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(\<const0> ),
        .RXDFEAGCHOLD(RXDFELFHOLD),
        .RXDFEAGCOVRDEN(gt0_rxdfeagcovrden_in),
        .RXDFECM1EN(\<const0> ),
        .RXDFELFHOLD(RXDFELFHOLD),
        .RXDFELFOVRDEN(\<const1> ),
        .RXDFELPMRESET(gt0_rxdfelpmreset_in),
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
        .RXDISPERR({NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:2],O6}),
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
        .RXLPMEN(gt0_rxlpmen_in),
        .RXLPMHFHOLD(\<const0> ),
        .RXLPMHFOVRDEN(\<const0> ),
        .RXLPMLFHOLD(\<const0> ),
        .RXLPMLFKLOVRDEN(\<const0> ),
        .RXMCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXMONITOROUT(gt0_rxmonitorout_out),
        .RXMONITORSEL(gt0_rxmonitorsel_in),
        .RXNOTINTABLE({NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:2],O7}),
        .RXOOBRESET(\<const0> ),
        .RXOSHOLD(\<const0> ),
        .RXOSOVRDEN(\<const0> ),
        .RXOUTCLK(rxoutclk),
        .RXOUTCLKFABRIC(NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({\<const0> ,\<const1> ,\<const0> }),
        .RXPCOMMAALIGNEN(gt0_rxmcommaalignen_in),
        .RXPCSRESET(gt0_rxpcsreset_in),
        .RXPD({RXPD,RXPD}),
        .RXPHALIGN(\<const0> ),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(\<const0> ),
        .RXPHDLYPD(\<const0> ),
        .RXPHDLYRESET(\<const0> ),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(\<const0> ),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(gt0_rxpmareset_in),
        .RXPOLARITY(gt0_rxpolarity_in),
        .RXPRBSCNTRESET(gt0_rxprbscntreset_in),
        .RXPRBSERR(gt0_rxprbserr_out),
        .RXPRBSSEL(gt0_rxprbssel_in),
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
        .RXUSERRDY(RXUSERRDY),
        .RXUSRCLK(CLK),
        .RXUSRCLK2(CLK),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(\<const0> ),
        .TSTIN({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .TX8B10BEN(\<const1> ),
        .TXBUFDIFFCTRL({\<const1> ,\<const0> ,\<const0> }),
        .TXBUFSTATUS(gt0_txbufstatus_out),
        .TXCHARDISPMODE({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,I1}),
        .TXCHARDISPVAL({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,I2}),
        .TXCHARISK({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,I3}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(\<const0> ),
        .TXCOMSAS(\<const0> ),
        .TXCOMWAKE(\<const0> ),
        .TXDATA({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,Q}),
        .TXDEEMPH(\<const0> ),
        .TXDETECTRX(\<const0> ),
        .TXDIFFCTRL(gt0_txdiffctrl_in),
        .TXDIFFPD(\<const0> ),
        .TXDLYBYPASS(\<const1> ),
        .TXDLYEN(\<const0> ),
        .TXDLYHOLD(\<const0> ),
        .TXDLYOVRDEN(\<const0> ),
        .TXDLYSRESET(\<const0> ),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(\<const0> ),
        .TXELECIDLE(TXPD),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({\<const0> ,\<const0> ,\<const0> }),
        .TXINHIBIT(\<const0> ),
        .TXMAINCURSOR({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .TXMARGIN({\<const0> ,\<const0> ,\<const0> }),
        .TXOUTCLK(txoutclk),
        .TXOUTCLKFABRIC(n_38_gtxe2_i),
        .TXOUTCLKPCS(n_39_gtxe2_i),
        .TXOUTCLKSEL({\<const1> ,\<const0> ,\<const0> }),
        .TXPCSRESET(gt0_txpcsreset_in),
        .TXPD({TXPD,TXPD}),
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
        .TXPMARESET(gt0_txpmareset_in),
        .TXPOLARITY(gt0_txpolarity_in),
        .TXPOSTCURSOR(gt0_txpostcursor_in),
        .TXPOSTCURSORINV(\<const0> ),
        .TXPRBSFORCEERR(gt0_txprbsforceerr_in),
        .TXPRBSSEL(gt0_txprbssel_in),
        .TXPRECURSOR(gt0_txprecursor_in),
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
        .TXUSERRDY(TXUSERRDY),
        .TXUSRCLK(CLK),
        .TXUSRCLK2(CLK));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_GTWIZARD_init" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_init__parameterized0
   (resetdone,
    gt0_drprdy_out,
    gt0_eyescandataerror_out,
    txn,
    txp,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxprbserr_out,
    txoutclk,
    gt0_drpdo_out,
    D,
    gt0_txbufstatus_out,
    gt0_rxbufstatus_out,
    O1,
    gt0_rxmonitorout_out,
    gt0_dmonitorout_out,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    independent_clock_bufg,
    gt0_drpclk_in,
    gt0_drpen_in,
    gt0_drpwe_in,
    gt0_eyescanreset_in,
    gt0_eyescantrigger_in,
    gtrefclk_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gt0_rxbufreset_in,
    gt0_rxdfeagcovrden_in,
    gt0_rxdfelpmreset_in,
    gt0_rxlpmen_in,
    gt0_rxmcommaalignen_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxpolarity_in,
    gt0_rxprbscntreset_in,
    CLK,
    TXPD,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txpolarity_in,
    gt0_txprbsforceerr_in,
    gt0_drpdi_in,
    gt0_rxmonitorsel_in,
    RXPD,
    gt0_loopback_in,
    gt0_rxprbssel_in,
    gt0_txprbssel_in,
    gt0_txdiffctrl_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    Q,
    I1,
    I2,
    I3,
    gt0_drpaddr_in,
    mmcm_locked_out,
    data_out,
    I4,
    reset_out0_in,
    reset_out);
  output resetdone;
  output gt0_drprdy_out;
  output gt0_eyescandataerror_out;
  output txn;
  output txp;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output gt0_rxprbserr_out;
  output txoutclk;
  output [15:0]gt0_drpdo_out;
  output [1:0]D;
  output [1:0]gt0_txbufstatus_out;
  output [2:0]gt0_rxbufstatus_out;
  output [15:0]O1;
  output [6:0]gt0_rxmonitorout_out;
  output [7:0]gt0_dmonitorout_out;
  output [1:0]O2;
  output [1:0]O3;
  output [1:0]O4;
  output [1:0]O5;
  output O6;
  output O7;
  input independent_clock_bufg;
  input gt0_drpclk_in;
  input gt0_drpen_in;
  input gt0_drpwe_in;
  input gt0_eyescanreset_in;
  input gt0_eyescantrigger_in;
  input gtrefclk_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input gt0_rxbufreset_in;
  input gt0_rxdfeagcovrden_in;
  input gt0_rxdfelpmreset_in;
  input gt0_rxlpmen_in;
  input gt0_rxmcommaalignen_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxpolarity_in;
  input gt0_rxprbscntreset_in;
  input CLK;
  input [0:0]TXPD;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  input gt0_txpolarity_in;
  input gt0_txprbsforceerr_in;
  input [15:0]gt0_drpdi_in;
  input [1:0]gt0_rxmonitorsel_in;
  input [0:0]RXPD;
  input [2:0]gt0_loopback_in;
  input [2:0]gt0_rxprbssel_in;
  input [2:0]gt0_txprbssel_in;
  input [3:0]gt0_txdiffctrl_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input [15:0]Q;
  input [1:0]I1;
  input [1:0]I2;
  input [1:0]I3;
  input [8:0]gt0_drpaddr_in;
  input mmcm_locked_out;
  input data_out;
  input [0:0]I4;
  input reset_out0_in;
  input reset_out;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire CPLLREFCLKLOST;
  wire CPLL_RESET;
  wire [1:0]D;
  wire [1:0]I1;
  wire [1:0]I2;
  wire [1:0]I3;
  wire [0:0]I4;
  wire [15:0]O1;
  wire [1:0]O2;
  wire [1:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire O6;
  wire O7;
  wire [15:0]Q;
  wire RXDFELFHOLD;
  wire [0:0]RXPD;
  wire RXUSERRDY;
  wire [0:0]TXPD;
  wire TXUSERRDY;
  wire data_out;
  wire data_out_0;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire gt0_gtrxreset_in1_out;
  wire gt0_gttxreset_in0_out;
  wire [2:0]gt0_loopback_in;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcommadet_out;
  wire gt0_rxdfeagcovrden_in;
  wire gt0_rxdfelpmreset_in;
  wire gt0_rxlpmen_in;
  wire gt0_rxmcommaalignen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire gt0_rxpcsreset_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txpcsreset_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire \n_0_rx_cdrlock_counter[0]_i_2 ;
  wire \n_0_rx_cdrlock_counter[0]_i_3 ;
  wire \n_0_rx_cdrlock_counter[0]_i_4 ;
  wire \n_0_rx_cdrlock_counter[0]_i_5 ;
  wire \n_0_rx_cdrlock_counter[0]_i_6 ;
  wire \n_0_rx_cdrlock_counter[12]_i_2 ;
  wire \n_0_rx_cdrlock_counter[12]_i_3 ;
  wire \n_0_rx_cdrlock_counter[4]_i_2 ;
  wire \n_0_rx_cdrlock_counter[4]_i_3 ;
  wire \n_0_rx_cdrlock_counter[4]_i_4 ;
  wire \n_0_rx_cdrlock_counter[4]_i_5 ;
  wire \n_0_rx_cdrlock_counter[8]_i_2 ;
  wire \n_0_rx_cdrlock_counter[8]_i_3 ;
  wire \n_0_rx_cdrlock_counter[8]_i_4 ;
  wire \n_0_rx_cdrlock_counter[8]_i_5 ;
  wire \n_0_rx_cdrlock_counter_reg[0] ;
  wire \n_0_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_0_rx_cdrlock_counter_reg[10] ;
  wire \n_0_rx_cdrlock_counter_reg[11] ;
  wire \n_0_rx_cdrlock_counter_reg[12] ;
  wire \n_0_rx_cdrlock_counter_reg[13] ;
  wire \n_0_rx_cdrlock_counter_reg[1] ;
  wire \n_0_rx_cdrlock_counter_reg[2] ;
  wire \n_0_rx_cdrlock_counter_reg[3] ;
  wire \n_0_rx_cdrlock_counter_reg[4] ;
  wire \n_0_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_0_rx_cdrlock_counter_reg[5] ;
  wire \n_0_rx_cdrlock_counter_reg[6] ;
  wire \n_0_rx_cdrlock_counter_reg[7] ;
  wire \n_0_rx_cdrlock_counter_reg[8] ;
  wire \n_0_rx_cdrlock_counter_reg[8]_i_1 ;
  wire \n_0_rx_cdrlock_counter_reg[9] ;
  wire n_0_rx_cdrlocked_i_1;
  wire n_0_rx_cdrlocked_i_2;
  wire n_0_rx_cdrlocked_i_3;
  wire n_10_gtwizard_i;
  wire n_12_gtwizard_i;
  wire \n_1_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_1_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_1_rx_cdrlock_counter_reg[8]_i_1 ;
  wire \n_2_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_2_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_2_rx_cdrlock_counter_reg[8]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[12]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_3_rx_cdrlock_counter_reg[8]_i_1 ;
  wire \n_4_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_4_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_4_rx_cdrlock_counter_reg[8]_i_1 ;
  wire \n_5_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_5_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_5_rx_cdrlock_counter_reg[8]_i_1 ;
  wire \n_6_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_6_rx_cdrlock_counter_reg[12]_i_1 ;
  wire \n_6_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_6_rx_cdrlock_counter_reg[8]_i_1 ;
  wire \n_7_rx_cdrlock_counter_reg[0]_i_1 ;
  wire \n_7_rx_cdrlock_counter_reg[12]_i_1 ;
  wire \n_7_rx_cdrlock_counter_reg[4]_i_1 ;
  wire \n_7_rx_cdrlock_counter_reg[8]_i_1 ;
  wire reset_out;
  wire reset_out0_in;
  wire resetdone;
  wire rx_cdrlocked;
  wire rxn;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;
  wire [3:1]\NLW_rx_cdrlock_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_rx_cdrlock_counter_reg[12]_i_1_O_UNCONNECTED ;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_RX_STARTUP_FSM__parameterized0 gt0_rxresetfsm_i
       (.CLK(CLK),
        .CPLLREFCLKLOST(CPLLREFCLKLOST),
        .I1(n_10_gtwizard_i),
        .I4(I4),
        .O1(O7),
        .RXDFELFHOLD(RXDFELFHOLD),
        .RXUSERRDY(RXUSERRDY),
        .data_out(data_out),
        .gt0_gtrxreset_in1_out(gt0_gtrxreset_in1_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(mmcm_locked_out),
        .reset_out0_in(reset_out0_in),
        .resetdone(resetdone),
        .rx_cdrlocked(rx_cdrlocked));
gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_TX_STARTUP_FSM__parameterized0 gt0_txresetfsm_i
       (.CLK(CLK),
        .CPLLREFCLKLOST(CPLLREFCLKLOST),
        .CPLL_RESET(CPLL_RESET),
        .I1(n_12_gtwizard_i),
        .I4(I4),
        .O1(O6),
        .TXUSERRDY(TXUSERRDY),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(mmcm_locked_out),
        .reset_out(reset_out),
        .resetdone(resetdone));
gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt__parameterized0 gtwizard_i
       (.CLK(CLK),
        .CPLLREFCLKLOST(CPLLREFCLKLOST),
        .CPLL_RESET(CPLL_RESET),
        .D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .O1(n_10_gtwizard_i),
        .O2(n_12_gtwizard_i),
        .O3(O1),
        .O4(O2),
        .O5(O3),
        .O6(O4),
        .O7(O5),
        .Q(Q),
        .RXDFELFHOLD(RXDFELFHOLD),
        .RXPD(RXPD),
        .RXUSERRDY(RXUSERRDY),
        .TXPD(TXPD),
        .TXUSERRDY(TXUSERRDY),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_gtrxreset_in1_out(gt0_gtrxreset_in1_out),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdfeagcovrden_in(gt0_rxdfeagcovrden_in),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
LUT4 #(
    .INIT(16'hFDFF)) 
     \rx_cdrlock_counter[0]_i_2 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .O(\n_0_rx_cdrlock_counter[0]_i_2 ));
LUT5 #(
    .INIT(32'hFDFF0000)) 
     \rx_cdrlock_counter[0]_i_3 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[3] ),
        .O(\n_0_rx_cdrlock_counter[0]_i_3 ));
LUT5 #(
    .INIT(32'hFDFF0000)) 
     \rx_cdrlock_counter[0]_i_4 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[2] ),
        .O(\n_0_rx_cdrlock_counter[0]_i_4 ));
LUT5 #(
    .INIT(32'hFDFF0000)) 
     \rx_cdrlock_counter[0]_i_5 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[1] ),
        .O(\n_0_rx_cdrlock_counter[0]_i_5 ));
LUT5 #(
    .INIT(32'h0000FDFF)) 
     \rx_cdrlock_counter[0]_i_6 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[0] ),
        .O(\n_0_rx_cdrlock_counter[0]_i_6 ));
LUT5 #(
    .INIT(32'hFFFF0200)) 
     \rx_cdrlock_counter[12]_i_2 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[13] ),
        .O(\n_0_rx_cdrlock_counter[12]_i_2 ));
LUT5 #(
    .INIT(32'hFDFF0000)) 
     \rx_cdrlock_counter[12]_i_3 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[12] ),
        .O(\n_0_rx_cdrlock_counter[12]_i_3 ));
LUT5 #(
    .INIT(32'hFDFF0000)) 
     \rx_cdrlock_counter[4]_i_2 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[7] ),
        .O(\n_0_rx_cdrlock_counter[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[4]_i_3 
       (.I0(\n_0_rx_cdrlock_counter_reg[6] ),
        .O(\n_0_rx_cdrlock_counter[4]_i_3 ));
LUT5 #(
    .INIT(32'hFDFF0000)) 
     \rx_cdrlock_counter[4]_i_4 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[5] ),
        .O(\n_0_rx_cdrlock_counter[4]_i_4 ));
LUT5 #(
    .INIT(32'hFFFF0200)) 
     \rx_cdrlock_counter[4]_i_5 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[4] ),
        .O(\n_0_rx_cdrlock_counter[4]_i_5 ));
LUT5 #(
    .INIT(32'hFDFF0000)) 
     \rx_cdrlock_counter[8]_i_2 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[11] ),
        .O(\n_0_rx_cdrlock_counter[8]_i_2 ));
LUT5 #(
    .INIT(32'hFFFF0200)) 
     \rx_cdrlock_counter[8]_i_3 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[10] ),
        .O(\n_0_rx_cdrlock_counter[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \rx_cdrlock_counter[8]_i_4 
       (.I0(\n_0_rx_cdrlock_counter_reg[9] ),
        .O(\n_0_rx_cdrlock_counter[8]_i_4 ));
LUT5 #(
    .INIT(32'hFFFF0200)) 
     \rx_cdrlock_counter[8]_i_5 
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(\n_0_rx_cdrlock_counter_reg[8] ),
        .O(\n_0_rx_cdrlock_counter[8]_i_5 ));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[0]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[0] ),
        .R(data_out_0));
CARRY4 \rx_cdrlock_counter_reg[0]_i_1 
       (.CI(\<const0> ),
        .CO({\n_0_rx_cdrlock_counter_reg[0]_i_1 ,\n_1_rx_cdrlock_counter_reg[0]_i_1 ,\n_2_rx_cdrlock_counter_reg[0]_i_1 ,\n_3_rx_cdrlock_counter_reg[0]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\n_0_rx_cdrlock_counter[0]_i_2 }),
        .O({\n_4_rx_cdrlock_counter_reg[0]_i_1 ,\n_5_rx_cdrlock_counter_reg[0]_i_1 ,\n_6_rx_cdrlock_counter_reg[0]_i_1 ,\n_7_rx_cdrlock_counter_reg[0]_i_1 }),
        .S({\n_0_rx_cdrlock_counter[0]_i_3 ,\n_0_rx_cdrlock_counter[0]_i_4 ,\n_0_rx_cdrlock_counter[0]_i_5 ,\n_0_rx_cdrlock_counter[0]_i_6 }));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_5_rx_cdrlock_counter_reg[8]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[10] ),
        .R(data_out_0));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_4_rx_cdrlock_counter_reg[8]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[11] ),
        .R(data_out_0));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[12] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[12]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[12] ),
        .R(data_out_0));
CARRY4 \rx_cdrlock_counter_reg[12]_i_1 
       (.CI(\n_0_rx_cdrlock_counter_reg[8]_i_1 ),
        .CO({\NLW_rx_cdrlock_counter_reg[12]_i_1_CO_UNCONNECTED [3:1],\n_3_rx_cdrlock_counter_reg[12]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\NLW_rx_cdrlock_counter_reg[12]_i_1_O_UNCONNECTED [3:2],\n_6_rx_cdrlock_counter_reg[12]_i_1 ,\n_7_rx_cdrlock_counter_reg[12]_i_1 }),
        .S({\<const0> ,\<const0> ,\n_0_rx_cdrlock_counter[12]_i_2 ,\n_0_rx_cdrlock_counter[12]_i_3 }));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[12]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[13] ),
        .R(data_out_0));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[0]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[1] ),
        .R(data_out_0));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_5_rx_cdrlock_counter_reg[0]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[2] ),
        .R(data_out_0));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_4_rx_cdrlock_counter_reg[0]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[3] ),
        .R(data_out_0));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[4]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[4] ),
        .R(data_out_0));
CARRY4 \rx_cdrlock_counter_reg[4]_i_1 
       (.CI(\n_0_rx_cdrlock_counter_reg[0]_i_1 ),
        .CO({\n_0_rx_cdrlock_counter_reg[4]_i_1 ,\n_1_rx_cdrlock_counter_reg[4]_i_1 ,\n_2_rx_cdrlock_counter_reg[4]_i_1 ,\n_3_rx_cdrlock_counter_reg[4]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_rx_cdrlock_counter_reg[4]_i_1 ,\n_5_rx_cdrlock_counter_reg[4]_i_1 ,\n_6_rx_cdrlock_counter_reg[4]_i_1 ,\n_7_rx_cdrlock_counter_reg[4]_i_1 }),
        .S({\n_0_rx_cdrlock_counter[4]_i_2 ,\n_0_rx_cdrlock_counter[4]_i_3 ,\n_0_rx_cdrlock_counter[4]_i_4 ,\n_0_rx_cdrlock_counter[4]_i_5 }));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[4]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[5] ),
        .R(data_out_0));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_5_rx_cdrlock_counter_reg[4]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[6] ),
        .R(data_out_0));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_4_rx_cdrlock_counter_reg[4]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[7] ),
        .R(data_out_0));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_7_rx_cdrlock_counter_reg[8]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[8] ),
        .R(data_out_0));
CARRY4 \rx_cdrlock_counter_reg[8]_i_1 
       (.CI(\n_0_rx_cdrlock_counter_reg[4]_i_1 ),
        .CO({\n_0_rx_cdrlock_counter_reg[8]_i_1 ,\n_1_rx_cdrlock_counter_reg[8]_i_1 ,\n_2_rx_cdrlock_counter_reg[8]_i_1 ,\n_3_rx_cdrlock_counter_reg[8]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_rx_cdrlock_counter_reg[8]_i_1 ,\n_5_rx_cdrlock_counter_reg[8]_i_1 ,\n_6_rx_cdrlock_counter_reg[8]_i_1 ,\n_7_rx_cdrlock_counter_reg[8]_i_1 }),
        .S({\n_0_rx_cdrlock_counter[8]_i_2 ,\n_0_rx_cdrlock_counter[8]_i_3 ,\n_0_rx_cdrlock_counter[8]_i_4 ,\n_0_rx_cdrlock_counter[8]_i_5 }));
(* counter = "20" *) 
   FDRE #(
    .INIT(1'b0)) 
     \rx_cdrlock_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_6_rx_cdrlock_counter_reg[8]_i_1 ),
        .Q(\n_0_rx_cdrlock_counter_reg[9] ),
        .R(data_out_0));
LUT6 #(
    .INIT(64'h00000000FFFF0200)) 
     rx_cdrlocked_i_1
       (.I0(n_0_rx_cdrlocked_i_2),
        .I1(n_0_rx_cdrlocked_i_3),
        .I2(\n_0_rx_cdrlock_counter_reg[6] ),
        .I3(\n_0_rx_cdrlock_counter_reg[9] ),
        .I4(rx_cdrlocked),
        .I5(data_out_0),
        .O(n_0_rx_cdrlocked_i_1));
LUT6 #(
    .INIT(64'h0004000000000000)) 
     rx_cdrlocked_i_2
       (.I0(\n_0_rx_cdrlock_counter_reg[3] ),
        .I1(\n_0_rx_cdrlock_counter_reg[10] ),
        .I2(\n_0_rx_cdrlock_counter_reg[5] ),
        .I3(\n_0_rx_cdrlock_counter_reg[11] ),
        .I4(\n_0_rx_cdrlock_counter_reg[13] ),
        .I5(\n_0_rx_cdrlock_counter_reg[8] ),
        .O(n_0_rx_cdrlocked_i_2));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
     rx_cdrlocked_i_3
       (.I0(\n_0_rx_cdrlock_counter_reg[0] ),
        .I1(\n_0_rx_cdrlock_counter_reg[1] ),
        .I2(\n_0_rx_cdrlock_counter_reg[7] ),
        .I3(\n_0_rx_cdrlock_counter_reg[2] ),
        .I4(\n_0_rx_cdrlock_counter_reg[12] ),
        .I5(\n_0_rx_cdrlock_counter_reg[4] ),
        .O(n_0_rx_cdrlocked_i_3));
FDRE rx_cdrlocked_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_rx_cdrlocked_i_1),
        .Q(rx_cdrlocked),
        .R(\<const0> ));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__32 sync_block_gtrxreset
       (.clk(independent_clock_bufg),
        .data_in(gt0_gtrxreset_in1_out),
        .data_out(data_out_0));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt__parameterized0
   (resetdone,
    CPLLREFCLKLOST,
    gt0_drprdy_out,
    gt0_eyescandataerror_out,
    txn,
    txp,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxprbserr_out,
    O1,
    txoutclk,
    O2,
    gt0_drpdo_out,
    D,
    gt0_txbufstatus_out,
    gt0_rxbufstatus_out,
    O3,
    gt0_rxmonitorout_out,
    gt0_dmonitorout_out,
    O4,
    O5,
    O6,
    O7,
    independent_clock_bufg,
    CPLL_RESET,
    gt0_drpclk_in,
    gt0_drpen_in,
    gt0_drpwe_in,
    gt0_eyescanreset_in,
    gt0_eyescantrigger_in,
    gtrefclk_out,
    gt0_gtrxreset_in1_out,
    gt0_gttxreset_in0_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gt0_rxbufreset_in,
    RXDFELFHOLD,
    gt0_rxdfeagcovrden_in,
    gt0_rxdfelpmreset_in,
    gt0_rxlpmen_in,
    gt0_rxmcommaalignen_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxpolarity_in,
    gt0_rxprbscntreset_in,
    RXUSERRDY,
    CLK,
    TXPD,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txpolarity_in,
    gt0_txprbsforceerr_in,
    TXUSERRDY,
    gt0_drpdi_in,
    gt0_rxmonitorsel_in,
    RXPD,
    gt0_loopback_in,
    gt0_rxprbssel_in,
    gt0_txprbssel_in,
    gt0_txdiffctrl_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    Q,
    I1,
    I2,
    I3,
    gt0_drpaddr_in);
  output resetdone;
  output CPLLREFCLKLOST;
  output gt0_drprdy_out;
  output gt0_eyescandataerror_out;
  output txn;
  output txp;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output gt0_rxprbserr_out;
  output O1;
  output txoutclk;
  output O2;
  output [15:0]gt0_drpdo_out;
  output [1:0]D;
  output [1:0]gt0_txbufstatus_out;
  output [2:0]gt0_rxbufstatus_out;
  output [15:0]O3;
  output [6:0]gt0_rxmonitorout_out;
  output [7:0]gt0_dmonitorout_out;
  output [1:0]O4;
  output [1:0]O5;
  output [1:0]O6;
  output [1:0]O7;
  input independent_clock_bufg;
  input CPLL_RESET;
  input gt0_drpclk_in;
  input gt0_drpen_in;
  input gt0_drpwe_in;
  input gt0_eyescanreset_in;
  input gt0_eyescantrigger_in;
  input gtrefclk_out;
  input gt0_gtrxreset_in1_out;
  input gt0_gttxreset_in0_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input gt0_rxbufreset_in;
  input RXDFELFHOLD;
  input gt0_rxdfeagcovrden_in;
  input gt0_rxdfelpmreset_in;
  input gt0_rxlpmen_in;
  input gt0_rxmcommaalignen_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxpolarity_in;
  input gt0_rxprbscntreset_in;
  input RXUSERRDY;
  input CLK;
  input [0:0]TXPD;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  input gt0_txpolarity_in;
  input gt0_txprbsforceerr_in;
  input TXUSERRDY;
  input [15:0]gt0_drpdi_in;
  input [1:0]gt0_rxmonitorsel_in;
  input [0:0]RXPD;
  input [2:0]gt0_loopback_in;
  input [2:0]gt0_rxprbssel_in;
  input [2:0]gt0_txprbssel_in;
  input [3:0]gt0_txdiffctrl_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input [15:0]Q;
  input [1:0]I1;
  input [1:0]I2;
  input [1:0]I3;
  input [8:0]gt0_drpaddr_in;

  wire CLK;
  wire CPLLREFCLKLOST;
  wire CPLL_RESET;
  wire [1:0]D;
  wire [1:0]I1;
  wire [1:0]I2;
  wire [1:0]I3;
  wire O1;
  wire O2;
  wire [15:0]O3;
  wire [1:0]O4;
  wire [1:0]O5;
  wire [1:0]O6;
  wire [1:0]O7;
  wire [15:0]Q;
  wire RXDFELFHOLD;
  wire [0:0]RXPD;
  wire RXUSERRDY;
  wire [0:0]TXPD;
  wire TXUSERRDY;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire gt0_gtrxreset_in1_out;
  wire gt0_gttxreset_in0_out;
  wire [2:0]gt0_loopback_in;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcommadet_out;
  wire gt0_rxdfeagcovrden_in;
  wire gt0_rxdfelpmreset_in;
  wire gt0_rxlpmen_in;
  wire gt0_rxmcommaalignen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire gt0_rxpcsreset_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txpcsreset_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire txn;
  wire txoutclk;
  wire txp;

gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_GT__parameterized0 gt0_GTWIZARD_i
       (.CLK(CLK),
        .CPLLREFCLKLOST(CPLLREFCLKLOST),
        .CPLL_RESET(CPLL_RESET),
        .D(D),
        .I1(I1),
        .I2(I2),
        .I3(I3),
        .O1(O1),
        .O2(O2),
        .O3(O3),
        .O4(O4),
        .O5(O5),
        .O6(O6),
        .O7(O7),
        .Q(Q),
        .RXDFELFHOLD(RXDFELFHOLD),
        .RXPD(RXPD),
        .RXUSERRDY(RXUSERRDY),
        .TXPD(TXPD),
        .TXUSERRDY(TXUSERRDY),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_gtrxreset_in1_out(gt0_gtrxreset_in1_out),
        .gt0_gttxreset_in0_out(gt0_gttxreset_in0_out),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdfeagcovrden_in(gt0_rxdfeagcovrden_in),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_RX_STARTUP_FSM" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_RX_STARTUP_FSM__parameterized0
   (O1,
    RXUSERRDY,
    RXDFELFHOLD,
    gt0_gtrxreset_in1_out,
    CLK,
    independent_clock_bufg,
    I1,
    mmcm_locked_out,
    data_out,
    resetdone,
    CPLLREFCLKLOST,
    I4,
    reset_out0_in,
    rx_cdrlocked);
  output O1;
  output RXUSERRDY;
  output RXDFELFHOLD;
  output gt0_gtrxreset_in1_out;
  input CLK;
  input independent_clock_bufg;
  input I1;
  input mmcm_locked_out;
  input data_out;
  input resetdone;
  input CPLLREFCLKLOST;
  input [0:0]I4;
  input reset_out0_in;
  input rx_cdrlocked;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire CPLLREFCLKLOST;
  wire GTRXRESET;
  wire I1;
  wire [0:0]I4;
  wire O1;
  wire RXDFELFHOLD;
  wire RXUSERRDY;
  wire adapt_count_reset;
  wire [22:0]\adapt_wait_hw.adapt_count_reg ;
  wire cplllock_sync;
  wire data_out;
  wire data_out_0;
  wire data_valid_sync;
  wire gt0_gtrxreset_in1_out;
  wire independent_clock_bufg;
  wire [6:0]init_wait_count_reg__0;
  wire init_wait_done;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_locked_out;
  wire \n_0_FSM_onehot_rx_state[10]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_10 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_11 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_12 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_13 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_14 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_15 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_16 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_2 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_3 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_4 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_5 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_6 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_7 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_8 ;
  wire \n_0_FSM_onehot_rx_state[10]_i_9 ;
  wire \n_0_FSM_onehot_rx_state[1]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[1]_i_2 ;
  wire \n_0_FSM_onehot_rx_state[1]_i_3 ;
  wire \n_0_FSM_onehot_rx_state[1]_i_4 ;
  wire \n_0_FSM_onehot_rx_state[2]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[3]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[4]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[5]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[6]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[7]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[8]_i_1 ;
  wire \n_0_FSM_onehot_rx_state[8]_i_2 ;
  wire \n_0_FSM_onehot_rx_state[8]_i_3 ;
  wire \n_0_FSM_onehot_rx_state[9]_i_1 ;
  wire \n_0_FSM_onehot_rx_state_reg[0] ;
  wire \n_0_FSM_onehot_rx_state_reg[10] ;
  wire \n_0_FSM_onehot_rx_state_reg[1] ;
  wire \n_0_FSM_onehot_rx_state_reg[2] ;
  wire \n_0_FSM_onehot_rx_state_reg[3] ;
  wire \n_0_FSM_onehot_rx_state_reg[4] ;
  wire \n_0_FSM_onehot_rx_state_reg[5] ;
  wire \n_0_FSM_onehot_rx_state_reg[6] ;
  wire \n_0_FSM_onehot_rx_state_reg[7] ;
  wire \n_0_FSM_onehot_rx_state_reg[8] ;
  wire \n_0_FSM_onehot_rx_state_reg[9] ;
  wire n_0_RXDFEAGCHOLD_i_1;
  wire n_0_RXDFEAGCHOLD_i_2;
  wire n_0_RXUSERRDY_i_1;
  wire n_0_adapt_count_reset_i_1;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_1 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_5 ;
  wire \n_0_adapt_wait_hw.adapt_count[0]_i_6 ;
  wire \n_0_adapt_wait_hw.adapt_count[12]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count[12]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[12]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[12]_i_5 ;
  wire \n_0_adapt_wait_hw.adapt_count[16]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count[16]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[16]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[16]_i_5 ;
  wire \n_0_adapt_wait_hw.adapt_count[20]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count[20]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[20]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[4]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count[4]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[4]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[4]_i_5 ;
  wire \n_0_adapt_wait_hw.adapt_count[8]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count[8]_i_3 ;
  wire \n_0_adapt_wait_hw.adapt_count[8]_i_4 ;
  wire \n_0_adapt_wait_hw.adapt_count[8]_i_5 ;
  wire \n_0_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_0_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_0_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_0_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_0_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_0_adapt_wait_hw.time_out_adapt_i_1 ;
  wire \n_0_adapt_wait_hw.time_out_adapt_i_2 ;
  wire \n_0_adapt_wait_hw.time_out_adapt_i_3 ;
  wire \n_0_adapt_wait_hw.time_out_adapt_i_4 ;
  wire \n_0_adapt_wait_hw.time_out_adapt_i_5 ;
  wire n_0_check_tlock_max_i_1;
  wire n_0_check_tlock_max_i_2;
  wire n_0_check_tlock_max_i_3;
  wire n_0_check_tlock_max_reg;
  wire n_0_gtrxreset_i_i_1;
  wire \n_0_init_wait_count[6]_i_1__0 ;
  wire \n_0_init_wait_count[6]_i_3__0 ;
  wire \n_0_init_wait_count[6]_i_4__0 ;
  wire n_0_init_wait_done_i_1__0;
  wire \n_0_mmcm_lock_count[9]_i_1__0 ;
  wire \n_0_mmcm_lock_count[9]_i_2__0 ;
  wire \n_0_mmcm_lock_count[9]_i_4__0 ;
  wire \n_0_mmcm_lock_count[9]_i_5__0 ;
  wire n_0_mmcm_lock_reclocked_i_1__0;
  wire n_0_reset_time_out_i_1__0;
  wire n_0_reset_time_out_i_2__0;
  wire n_0_reset_time_out_i_3;
  wire n_0_reset_time_out_i_4__0;
  wire n_0_reset_time_out_i_5;
  wire n_0_reset_time_out_reg;
  wire n_0_run_phase_alignment_int_i_1__0;
  wire n_0_run_phase_alignment_int_reg;
  wire n_0_run_phase_alignment_int_s3_reg;
  wire n_0_rx_fsm_reset_done_int_i_1;
  wire n_0_rx_fsm_reset_done_int_i_2;
  wire n_0_rx_fsm_reset_done_int_i_3;
  wire n_0_rx_fsm_reset_done_int_i_4;
  wire n_0_time_out_1us_i_1;
  wire n_0_time_out_1us_i_2;
  wire n_0_time_out_1us_i_3;
  wire n_0_time_out_1us_i_4;
  wire n_0_time_out_2ms_i_1;
  wire n_0_time_out_2ms_i_2;
  wire n_0_time_out_2ms_i_3;
  wire \n_0_time_out_counter[0]_i_1 ;
  wire \n_0_time_out_counter[0]_i_10 ;
  wire \n_0_time_out_counter[0]_i_3 ;
  wire \n_0_time_out_counter[0]_i_4__0 ;
  wire \n_0_time_out_counter[0]_i_5 ;
  wire \n_0_time_out_counter[0]_i_6__0 ;
  wire \n_0_time_out_counter[0]_i_7__0 ;
  wire \n_0_time_out_counter[0]_i_8__0 ;
  wire \n_0_time_out_counter[0]_i_9__0 ;
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
  wire n_0_time_out_wait_bypass_i_1__0;
  wire n_0_time_out_wait_bypass_i_2__0;
  wire n_0_time_out_wait_bypass_i_3__0;
  wire n_0_time_out_wait_bypass_reg;
  wire n_0_time_tlock_max_i_1;
  wire n_0_time_tlock_max_i_10;
  wire n_0_time_tlock_max_i_3__0;
  wire n_0_time_tlock_max_i_4;
  wire n_0_time_tlock_max_i_5;
  wire n_0_time_tlock_max_i_6;
  wire n_0_time_tlock_max_i_7;
  wire n_0_time_tlock_max_i_8;
  wire n_0_time_tlock_max_i_9;
  wire \n_0_wait_bypass_count[0]_i_1__0 ;
  wire \n_0_wait_bypass_count[0]_i_2__0 ;
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
  wire \n_0_wait_time_cnt[1]_i_1__0 ;
  wire \n_0_wait_time_cnt[4]_i_1__0 ;
  wire \n_0_wait_time_cnt[6]_i_1__0 ;
  wire \n_0_wait_time_cnt[6]_i_2__0 ;
  wire \n_0_wait_time_cnt[6]_i_5__0 ;
  wire \n_0_wait_time_cnt[6]_i_6__0 ;
  wire \n_1_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_1_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_1_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_1_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_1_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_1_time_out_counter_reg[0]_i_2__0 ;
  wire \n_1_time_out_counter_reg[12]_i_1__0 ;
  wire \n_1_time_out_counter_reg[4]_i_1__0 ;
  wire \n_1_time_out_counter_reg[8]_i_1__0 ;
  wire n_1_time_tlock_max_reg_i_2;
  wire \n_1_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_1_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_1_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[20]_i_1 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_2_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_2_time_out_counter_reg[0]_i_2__0 ;
  wire \n_2_time_out_counter_reg[12]_i_1__0 ;
  wire \n_2_time_out_counter_reg[16]_i_1__0 ;
  wire \n_2_time_out_counter_reg[4]_i_1__0 ;
  wire \n_2_time_out_counter_reg[8]_i_1__0 ;
  wire n_2_time_tlock_max_reg_i_2;
  wire \n_2_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_2_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_2_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[20]_i_1 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_3_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_3_time_out_counter_reg[0]_i_2__0 ;
  wire \n_3_time_out_counter_reg[12]_i_1__0 ;
  wire \n_3_time_out_counter_reg[16]_i_1__0 ;
  wire \n_3_time_out_counter_reg[4]_i_1__0 ;
  wire \n_3_time_out_counter_reg[8]_i_1__0 ;
  wire n_3_time_tlock_max_reg_i_2;
  wire \n_3_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_3_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_3_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_4_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_4_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_4_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_4_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_4_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_4_time_out_counter_reg[0]_i_2__0 ;
  wire \n_4_time_out_counter_reg[12]_i_1__0 ;
  wire \n_4_time_out_counter_reg[4]_i_1__0 ;
  wire \n_4_time_out_counter_reg[8]_i_1__0 ;
  wire \n_4_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_4_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_4_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[20]_i_1 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_5_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_5_time_out_counter_reg[0]_i_2__0 ;
  wire \n_5_time_out_counter_reg[12]_i_1__0 ;
  wire \n_5_time_out_counter_reg[16]_i_1__0 ;
  wire \n_5_time_out_counter_reg[4]_i_1__0 ;
  wire \n_5_time_out_counter_reg[8]_i_1__0 ;
  wire \n_5_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_5_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_5_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[20]_i_1 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_6_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_6_time_out_counter_reg[0]_i_2__0 ;
  wire \n_6_time_out_counter_reg[12]_i_1__0 ;
  wire \n_6_time_out_counter_reg[16]_i_1__0 ;
  wire \n_6_time_out_counter_reg[4]_i_1__0 ;
  wire \n_6_time_out_counter_reg[8]_i_1__0 ;
  wire \n_6_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_6_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_6_wait_bypass_count_reg[8]_i_1__0 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[0]_i_2 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[12]_i_1 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[16]_i_1 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[20]_i_1 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[4]_i_1 ;
  wire \n_7_adapt_wait_hw.adapt_count_reg[8]_i_1 ;
  wire \n_7_time_out_counter_reg[0]_i_2__0 ;
  wire \n_7_time_out_counter_reg[12]_i_1__0 ;
  wire \n_7_time_out_counter_reg[16]_i_1__0 ;
  wire \n_7_time_out_counter_reg[4]_i_1__0 ;
  wire \n_7_time_out_counter_reg[8]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[0]_i_3__0 ;
  wire \n_7_wait_bypass_count_reg[12]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[4]_i_1__0 ;
  wire \n_7_wait_bypass_count_reg[8]_i_1__0 ;
  wire [6:0]p_0_in__0;
  wire [9:0]p_0_in__2;
  wire recclk_mon_count_reset;
  wire reset_out0_in;
  wire resetdone;
  wire rx_cdrlocked;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire time_out_1us;
  wire time_out_2ms;
  wire time_out_adapt;
  wire [18:0]time_out_counter_reg;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max1;
  wire [12:0]wait_bypass_count_reg;
  wire [6:0]wait_time_cnt0__0;
  wire [6:0]wait_time_cnt_reg__0;
  wire [3:2]\NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_O_UNCONNECTED ;
  wire NLW_sync_cpllrefclklost_data_out_UNCONNECTED;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:0]NLW_time_tlock_max_reg_i_2_O_UNCONNECTED;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;

LUT5 #(
    .INIT(32'hFFFFFE0E)) 
     \FSM_onehot_rx_state[10]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[10]_i_3 ),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_4 ),
        .I2(\n_0_FSM_onehot_rx_state[10]_i_5 ),
        .I3(\n_0_FSM_onehot_rx_state[10]_i_6 ),
        .I4(\n_0_FSM_onehot_rx_state[10]_i_7 ),
        .O(\n_0_FSM_onehot_rx_state[10]_i_1 ));
LUT6 #(
    .INIT(64'h0000000001160000)) 
     \FSM_onehot_rx_state[10]_i_10 
       (.I0(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[4] ),
        .I4(n_0_check_tlock_max_i_2),
        .I5(\n_0_FSM_onehot_rx_state[10]_i_13 ),
        .O(\n_0_FSM_onehot_rx_state[10]_i_10 ));
LUT5 #(
    .INIT(32'h00010000)) 
     \FSM_onehot_rx_state[10]_i_11 
       (.I0(\n_0_FSM_onehot_rx_state_reg[0] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I2(\n_0_FSM_onehot_rx_state[10]_i_15 ),
        .I3(\n_0_FSM_onehot_rx_state[10]_i_5 ),
        .I4(\n_0_FSM_onehot_rx_state[10]_i_16 ),
        .O(\n_0_FSM_onehot_rx_state[10]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'h45)) 
     \FSM_onehot_rx_state[10]_i_12 
       (.I0(rxresetdone_s3),
        .I1(n_0_reset_time_out_reg),
        .I2(time_out_2ms),
        .O(\n_0_FSM_onehot_rx_state[10]_i_12 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_rx_state[10]_i_13 
       (.I0(\n_0_FSM_onehot_rx_state_reg[1] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[0] ),
        .O(\n_0_FSM_onehot_rx_state[10]_i_13 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_rx_state[10]_i_14 
       (.I0(\n_0_FSM_onehot_rx_state_reg[0] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[1] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[4] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I5(\n_0_FSM_onehot_rx_state_reg[9] ),
        .O(\n_0_FSM_onehot_rx_state[10]_i_14 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'hFFFEFEE8)) 
     \FSM_onehot_rx_state[10]_i_15 
       (.I0(\n_0_FSM_onehot_rx_state_reg[1] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[9] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[5] ),
        .O(\n_0_FSM_onehot_rx_state[10]_i_15 ));
LUT4 #(
    .INIT(16'h0001)) 
     \FSM_onehot_rx_state[10]_i_16 
       (.I0(\n_0_FSM_onehot_rx_state_reg[4] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[10] ),
        .O(\n_0_FSM_onehot_rx_state[10]_i_16 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h0800)) 
     \FSM_onehot_rx_state[10]_i_2 
       (.I0(\n_0_FSM_onehot_rx_state[10]_i_8 ),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_9 ),
        .I2(\n_0_FSM_onehot_rx_state[10]_i_10 ),
        .I3(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .O(\n_0_FSM_onehot_rx_state[10]_i_2 ));
LUT6 #(
    .INIT(64'hF2FFF20000FF00FF)) 
     \FSM_onehot_rx_state[10]_i_3 
       (.I0(time_tlock_max),
        .I1(n_0_reset_time_out_reg),
        .I2(mmcm_lock_reclocked),
        .I3(n_0_check_tlock_max_i_2),
        .I4(data_valid_sync),
        .I5(adapt_count_reset),
        .O(\n_0_FSM_onehot_rx_state[10]_i_3 ));
LUT6 #(
    .INIT(64'hF0E0F0E0000000FF)) 
     \FSM_onehot_rx_state[10]_i_4 
       (.I0(time_out_2ms),
        .I1(cplllock_sync),
        .I2(n_0_check_tlock_max_i_2),
        .I3(adapt_count_reset),
        .I4(\n_0_FSM_onehot_rx_state[10]_i_12 ),
        .I5(n_0_check_tlock_max_i_3),
        .O(\n_0_FSM_onehot_rx_state[10]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \FSM_onehot_rx_state[10]_i_5 
       (.I0(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[9] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[1] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[3] ),
        .O(\n_0_FSM_onehot_rx_state[10]_i_5 ));
LUT6 #(
    .INIT(64'h40F040F04FF040F0)) 
     \FSM_onehot_rx_state[10]_i_6 
       (.I0(n_0_check_tlock_max_i_3),
        .I1(rx_cdrlocked),
        .I2(adapt_count_reset),
        .I3(n_0_check_tlock_max_i_2),
        .I4(\n_0_wait_time_cnt[6]_i_6__0 ),
        .I5(wait_time_cnt_reg__0[6]),
        .O(\n_0_FSM_onehot_rx_state[10]_i_6 ));
LUT5 #(
    .INIT(32'h80833333)) 
     \FSM_onehot_rx_state[10]_i_7 
       (.I0(init_wait_done),
        .I1(n_0_check_tlock_max_i_2),
        .I2(adapt_count_reset),
        .I3(data_valid_sync),
        .I4(n_0_check_tlock_max_i_3),
        .O(\n_0_FSM_onehot_rx_state[10]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT5 #(
    .INIT(32'h00000228)) 
     \FSM_onehot_rx_state[10]_i_8 
       (.I0(n_0_check_tlock_max_i_3),
        .I1(\n_0_FSM_onehot_rx_state_reg[10] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[9] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I4(\n_0_FSM_onehot_rx_state[10]_i_13 ),
        .O(\n_0_FSM_onehot_rx_state[10]_i_8 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFEE9)) 
     \FSM_onehot_rx_state[10]_i_9 
       (.I0(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[10] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I4(\n_0_FSM_onehot_rx_state[10]_i_14 ),
        .I5(\n_0_FSM_onehot_rx_state_reg[2] ),
        .O(\n_0_FSM_onehot_rx_state[10]_i_9 ));
LUT6 #(
    .INIT(64'h5555D5800000D580)) 
     \FSM_onehot_rx_state[1]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[10]_i_8 ),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_9 ),
        .I2(\n_0_FSM_onehot_rx_state[1]_i_2 ),
        .I3(\n_0_FSM_onehot_rx_state[1]_i_3 ),
        .I4(\n_0_FSM_onehot_rx_state[10]_i_10 ),
        .I5(\n_0_FSM_onehot_rx_state[1]_i_4 ),
        .O(\n_0_FSM_onehot_rx_state[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FSM_onehot_rx_state[1]_i_2 
       (.I0(time_out_wait_bypass_s3),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .O(\n_0_FSM_onehot_rx_state[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'h62)) 
     \FSM_onehot_rx_state[1]_i_3 
       (.I0(\n_0_FSM_onehot_rx_state[10]_i_9 ),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .I2(time_out_2ms),
        .O(\n_0_FSM_onehot_rx_state[1]_i_3 ));
LUT5 #(
    .INIT(32'h00B00080)) 
     \FSM_onehot_rx_state[1]_i_4 
       (.I0(time_out_2ms),
        .I1(\n_0_FSM_onehot_rx_state[8]_i_3 ),
        .I2(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .I3(n_0_reset_time_out_reg),
        .I4(time_tlock_max),
        .O(\n_0_FSM_onehot_rx_state[1]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'h0020)) 
     \FSM_onehot_rx_state[2]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .I1(\n_0_FSM_onehot_rx_state[8]_i_3 ),
        .I2(\n_0_FSM_onehot_rx_state[8]_i_2 ),
        .I3(\n_0_FSM_onehot_rx_state[10]_i_8 ),
        .O(\n_0_FSM_onehot_rx_state[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'h0020)) 
     \FSM_onehot_rx_state[3]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[8]_i_3 ),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .I2(\n_0_FSM_onehot_rx_state[8]_i_2 ),
        .I3(\n_0_FSM_onehot_rx_state[10]_i_8 ),
        .O(\n_0_FSM_onehot_rx_state[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'h00002000)) 
     \FSM_onehot_rx_state[4]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[8]_i_3 ),
        .I1(time_out_2ms),
        .I2(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .I3(\n_0_FSM_onehot_rx_state[8]_i_2 ),
        .I4(\n_0_FSM_onehot_rx_state[10]_i_8 ),
        .O(\n_0_FSM_onehot_rx_state[4]_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \FSM_onehot_rx_state[5]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[8]_i_2 ),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .I2(\n_0_FSM_onehot_rx_state[8]_i_3 ),
        .I3(\n_0_FSM_onehot_rx_state[10]_i_8 ),
        .O(\n_0_FSM_onehot_rx_state[5]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000005100)) 
     \FSM_onehot_rx_state[6]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[8]_i_2 ),
        .I1(time_tlock_max),
        .I2(n_0_reset_time_out_reg),
        .I3(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .I4(\n_0_FSM_onehot_rx_state[8]_i_3 ),
        .I5(\n_0_FSM_onehot_rx_state[10]_i_8 ),
        .O(\n_0_FSM_onehot_rx_state[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \FSM_onehot_rx_state[7]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[8]_i_2 ),
        .I1(\n_0_FSM_onehot_rx_state[8]_i_3 ),
        .I2(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .I3(\n_0_FSM_onehot_rx_state[10]_i_8 ),
        .O(\n_0_FSM_onehot_rx_state[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000000044040000)) 
     \FSM_onehot_rx_state[8]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[8]_i_2 ),
        .I1(\n_0_FSM_onehot_rx_state[8]_i_3 ),
        .I2(time_out_2ms),
        .I3(n_0_reset_time_out_reg),
        .I4(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .I5(\n_0_FSM_onehot_rx_state[10]_i_8 ),
        .O(\n_0_FSM_onehot_rx_state[8]_i_1 ));
LUT3 #(
    .INIT(8'h45)) 
     \FSM_onehot_rx_state[8]_i_2 
       (.I0(\n_0_FSM_onehot_rx_state[10]_i_10 ),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_9 ),
        .I2(\n_0_FSM_onehot_rx_state[10]_i_8 ),
        .O(\n_0_FSM_onehot_rx_state[8]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000010116)) 
     \FSM_onehot_rx_state[8]_i_3 
       (.I0(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[10] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[2] ),
        .I5(\n_0_FSM_onehot_rx_state[10]_i_14 ),
        .O(\n_0_FSM_onehot_rx_state[8]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'hAAAA222A)) 
     \FSM_onehot_rx_state[9]_i_1 
       (.I0(\n_0_FSM_onehot_rx_state[10]_i_8 ),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_9 ),
        .I2(\n_0_FSM_onehot_rx_state[10]_i_11 ),
        .I3(time_out_wait_bypass_s3),
        .I4(\n_0_FSM_onehot_rx_state[10]_i_10 ),
        .O(\n_0_FSM_onehot_rx_state[9]_i_1 ));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_rx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_rx_state[10]_i_1 ),
        .D(\<const0> ),
        .Q(\n_0_FSM_onehot_rx_state_reg[0] ),
        .S(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_rx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_rx_state[10]_i_2 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[10] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_rx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_rx_state[1]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[1] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_rx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_rx_state[2]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[2] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_rx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_rx_state[3]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[3] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_rx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_rx_state[4]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[4] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_rx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_rx_state[5]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[5] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_rx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_rx_state[6]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[6] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_rx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_rx_state[7]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[7] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_rx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_rx_state[8]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[8] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_rx_state_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_rx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_rx_state[9]_i_1 ),
        .Q(\n_0_FSM_onehot_rx_state_reg[9] ),
        .R(I4));
GND GND
       (.G(\<const0> ));
LUT6 #(
    .INIT(64'h00000000BAAAAAAA)) 
     RXDFEAGCHOLD_i_1
       (.I0(RXDFELFHOLD),
        .I1(adapt_count_reset),
        .I2(n_0_check_tlock_max_i_3),
        .I3(time_out_adapt),
        .I4(n_0_RXDFEAGCHOLD_i_2),
        .I5(I4),
        .O(n_0_RXDFEAGCHOLD_i_1));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     RXDFEAGCHOLD_i_2
       (.I0(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[1] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[9] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I5(n_0_check_tlock_max_i_2),
        .O(n_0_RXDFEAGCHOLD_i_2));
FDRE RXDFEAGCHOLD_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_RXDFEAGCHOLD_i_1),
        .Q(RXDFELFHOLD),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000AAAA2BAA)) 
     RXUSERRDY_i_1
       (.I0(RXUSERRDY),
        .I1(adapt_count_reset),
        .I2(n_0_check_tlock_max_i_3),
        .I3(n_0_check_tlock_max_i_2),
        .I4(\n_0_FSM_onehot_rx_state[10]_i_5 ),
        .I5(I4),
        .O(n_0_RXUSERRDY_i_1));
FDRE #(
    .INIT(1'b0)) 
     RXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_RXUSERRDY_i_1),
        .Q(RXUSERRDY),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'hFFFFFFFFBABA8AAA)) 
     adapt_count_reset_i_1
       (.I0(recclk_mon_count_reset),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_5 ),
        .I2(n_0_reset_time_out_i_4__0),
        .I3(cplllock_sync),
        .I4(adapt_count_reset),
        .I5(I4),
        .O(n_0_adapt_count_reset_i_1));
FDRE #(
    .INIT(1'b0)) 
     adapt_count_reset_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_adapt_count_reset_i_1),
        .Q(recclk_mon_count_reset),
        .R(\<const0> ));
LUT4 #(
    .INIT(16'h7FFF)) 
     \adapt_wait_hw.adapt_count[0]_i_1 
       (.I0(\n_0_adapt_wait_hw.time_out_adapt_i_2 ),
        .I1(\n_0_adapt_wait_hw.time_out_adapt_i_3 ),
        .I2(\n_0_adapt_wait_hw.time_out_adapt_i_4 ),
        .I3(\n_0_adapt_wait_hw.time_out_adapt_i_5 ),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[0]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [3]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[0]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [2]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[0]_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [1]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_5 ));
LUT1 #(
    .INIT(2'h1)) 
     \adapt_wait_hw.adapt_count[0]_i_6 
       (.I0(\adapt_wait_hw.adapt_count_reg [0]),
        .O(\n_0_adapt_wait_hw.adapt_count[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[12]_i_2 
       (.I0(\adapt_wait_hw.adapt_count_reg [15]),
        .O(\n_0_adapt_wait_hw.adapt_count[12]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[12]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [14]),
        .O(\n_0_adapt_wait_hw.adapt_count[12]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[12]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [13]),
        .O(\n_0_adapt_wait_hw.adapt_count[12]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[12]_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [12]),
        .O(\n_0_adapt_wait_hw.adapt_count[12]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[16]_i_2 
       (.I0(\adapt_wait_hw.adapt_count_reg [19]),
        .O(\n_0_adapt_wait_hw.adapt_count[16]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[16]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [18]),
        .O(\n_0_adapt_wait_hw.adapt_count[16]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[16]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [17]),
        .O(\n_0_adapt_wait_hw.adapt_count[16]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[16]_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [16]),
        .O(\n_0_adapt_wait_hw.adapt_count[16]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[20]_i_2 
       (.I0(\adapt_wait_hw.adapt_count_reg [22]),
        .O(\n_0_adapt_wait_hw.adapt_count[20]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[20]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [21]),
        .O(\n_0_adapt_wait_hw.adapt_count[20]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[20]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [20]),
        .O(\n_0_adapt_wait_hw.adapt_count[20]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[4]_i_2 
       (.I0(\adapt_wait_hw.adapt_count_reg [7]),
        .O(\n_0_adapt_wait_hw.adapt_count[4]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[4]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [6]),
        .O(\n_0_adapt_wait_hw.adapt_count[4]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[4]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [5]),
        .O(\n_0_adapt_wait_hw.adapt_count[4]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[4]_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [4]),
        .O(\n_0_adapt_wait_hw.adapt_count[4]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[8]_i_2 
       (.I0(\adapt_wait_hw.adapt_count_reg [11]),
        .O(\n_0_adapt_wait_hw.adapt_count[8]_i_2 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[8]_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [10]),
        .O(\n_0_adapt_wait_hw.adapt_count[8]_i_3 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[8]_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [9]),
        .O(\n_0_adapt_wait_hw.adapt_count[8]_i_4 ));
LUT1 #(
    .INIT(2'h2)) 
     \adapt_wait_hw.adapt_count[8]_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [8]),
        .O(\n_0_adapt_wait_hw.adapt_count[8]_i_5 ));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[0]_i_2 ),
        .Q(\adapt_wait_hw.adapt_count_reg [0]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[0]_i_2 
       (.CI(\<const0> ),
        .CO({\n_0_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_1_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_2_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_3_adapt_wait_hw.adapt_count_reg[0]_i_2 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_5_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_6_adapt_wait_hw.adapt_count_reg[0]_i_2 ,\n_7_adapt_wait_hw.adapt_count_reg[0]_i_2 }),
        .S({\n_0_adapt_wait_hw.adapt_count[0]_i_3 ,\n_0_adapt_wait_hw.adapt_count[0]_i_4 ,\n_0_adapt_wait_hw.adapt_count[0]_i_5 ,\n_0_adapt_wait_hw.adapt_count[0]_i_6 }));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[8]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [10]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_4_adapt_wait_hw.adapt_count_reg[8]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [11]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[12] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[12]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [12]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[12]_i_1 
       (.CI(\n_0_adapt_wait_hw.adapt_count_reg[8]_i_1 ),
        .CO({\n_0_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_1_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_2_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_3_adapt_wait_hw.adapt_count_reg[12]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_5_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_6_adapt_wait_hw.adapt_count_reg[12]_i_1 ,\n_7_adapt_wait_hw.adapt_count_reg[12]_i_1 }),
        .S({\n_0_adapt_wait_hw.adapt_count[12]_i_2 ,\n_0_adapt_wait_hw.adapt_count[12]_i_3 ,\n_0_adapt_wait_hw.adapt_count[12]_i_4 ,\n_0_adapt_wait_hw.adapt_count[12]_i_5 }));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[13] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[12]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [13]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[12]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [14]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_4_adapt_wait_hw.adapt_count_reg[12]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [15]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[16] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[16]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [16]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[16]_i_1 
       (.CI(\n_0_adapt_wait_hw.adapt_count_reg[12]_i_1 ),
        .CO({\n_0_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_1_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_2_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_3_adapt_wait_hw.adapt_count_reg[16]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_5_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_6_adapt_wait_hw.adapt_count_reg[16]_i_1 ,\n_7_adapt_wait_hw.adapt_count_reg[16]_i_1 }),
        .S({\n_0_adapt_wait_hw.adapt_count[16]_i_2 ,\n_0_adapt_wait_hw.adapt_count[16]_i_3 ,\n_0_adapt_wait_hw.adapt_count[16]_i_4 ,\n_0_adapt_wait_hw.adapt_count[16]_i_5 }));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[17] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[16]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [17]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[18] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[16]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [18]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[19] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_4_adapt_wait_hw.adapt_count_reg[16]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [19]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[0]_i_2 ),
        .Q(\adapt_wait_hw.adapt_count_reg [1]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[20] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[20]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [20]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[20]_i_1 
       (.CI(\n_0_adapt_wait_hw.adapt_count_reg[16]_i_1 ),
        .CO({\NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_CO_UNCONNECTED [3:2],\n_2_adapt_wait_hw.adapt_count_reg[20]_i_1 ,\n_3_adapt_wait_hw.adapt_count_reg[20]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_O_UNCONNECTED [3],\n_5_adapt_wait_hw.adapt_count_reg[20]_i_1 ,\n_6_adapt_wait_hw.adapt_count_reg[20]_i_1 ,\n_7_adapt_wait_hw.adapt_count_reg[20]_i_1 }),
        .S({\<const0> ,\n_0_adapt_wait_hw.adapt_count[20]_i_2 ,\n_0_adapt_wait_hw.adapt_count[20]_i_3 ,\n_0_adapt_wait_hw.adapt_count[20]_i_4 }));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[21] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[20]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [21]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[22] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[20]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [22]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[0]_i_2 ),
        .Q(\adapt_wait_hw.adapt_count_reg [2]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_4_adapt_wait_hw.adapt_count_reg[0]_i_2 ),
        .Q(\adapt_wait_hw.adapt_count_reg [3]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[4]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [4]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[4]_i_1 
       (.CI(\n_0_adapt_wait_hw.adapt_count_reg[0]_i_2 ),
        .CO({\n_0_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_1_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_2_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_3_adapt_wait_hw.adapt_count_reg[4]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_5_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_6_adapt_wait_hw.adapt_count_reg[4]_i_1 ,\n_7_adapt_wait_hw.adapt_count_reg[4]_i_1 }),
        .S({\n_0_adapt_wait_hw.adapt_count[4]_i_2 ,\n_0_adapt_wait_hw.adapt_count[4]_i_3 ,\n_0_adapt_wait_hw.adapt_count[4]_i_4 ,\n_0_adapt_wait_hw.adapt_count[4]_i_5 }));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[4]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [5]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_5_adapt_wait_hw.adapt_count_reg[4]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [6]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_4_adapt_wait_hw.adapt_count_reg[4]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [7]),
        .R(recclk_mon_count_reset));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_7_adapt_wait_hw.adapt_count_reg[8]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [8]),
        .R(recclk_mon_count_reset));
CARRY4 \adapt_wait_hw.adapt_count_reg[8]_i_1 
       (.CI(\n_0_adapt_wait_hw.adapt_count_reg[4]_i_1 ),
        .CO({\n_0_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_1_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_2_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_3_adapt_wait_hw.adapt_count_reg[8]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_5_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_6_adapt_wait_hw.adapt_count_reg[8]_i_1 ,\n_7_adapt_wait_hw.adapt_count_reg[8]_i_1 }),
        .S({\n_0_adapt_wait_hw.adapt_count[8]_i_2 ,\n_0_adapt_wait_hw.adapt_count[8]_i_3 ,\n_0_adapt_wait_hw.adapt_count[8]_i_4 ,\n_0_adapt_wait_hw.adapt_count[8]_i_5 }));
(* counter = "18" *) 
   FDRE \adapt_wait_hw.adapt_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_adapt_wait_hw.adapt_count[0]_i_1 ),
        .D(\n_6_adapt_wait_hw.adapt_count_reg[8]_i_1 ),
        .Q(\adapt_wait_hw.adapt_count_reg [9]),
        .R(recclk_mon_count_reset));
LUT6 #(
    .INIT(64'h00000000FFFF8000)) 
     \adapt_wait_hw.time_out_adapt_i_1 
       (.I0(\n_0_adapt_wait_hw.time_out_adapt_i_2 ),
        .I1(\n_0_adapt_wait_hw.time_out_adapt_i_3 ),
        .I2(\n_0_adapt_wait_hw.time_out_adapt_i_4 ),
        .I3(\n_0_adapt_wait_hw.time_out_adapt_i_5 ),
        .I4(time_out_adapt),
        .I5(recclk_mon_count_reset),
        .O(\n_0_adapt_wait_hw.time_out_adapt_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000040)) 
     \adapt_wait_hw.time_out_adapt_i_2 
       (.I0(\adapt_wait_hw.adapt_count_reg [6]),
        .I1(\adapt_wait_hw.adapt_count_reg [9]),
        .I2(\adapt_wait_hw.adapt_count_reg [5]),
        .I3(\adapt_wait_hw.adapt_count_reg [12]),
        .I4(\adapt_wait_hw.adapt_count_reg [19]),
        .I5(\adapt_wait_hw.adapt_count_reg [8]),
        .O(\n_0_adapt_wait_hw.time_out_adapt_i_2 ));
LUT5 #(
    .INIT(32'h00000080)) 
     \adapt_wait_hw.time_out_adapt_i_3 
       (.I0(\adapt_wait_hw.adapt_count_reg [0]),
        .I1(\adapt_wait_hw.adapt_count_reg [4]),
        .I2(\adapt_wait_hw.adapt_count_reg [15]),
        .I3(\adapt_wait_hw.adapt_count_reg [7]),
        .I4(\adapt_wait_hw.adapt_count_reg [16]),
        .O(\n_0_adapt_wait_hw.time_out_adapt_i_3 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \adapt_wait_hw.time_out_adapt_i_4 
       (.I0(\adapt_wait_hw.adapt_count_reg [3]),
        .I1(\adapt_wait_hw.adapt_count_reg [11]),
        .I2(\adapt_wait_hw.adapt_count_reg [2]),
        .I3(\adapt_wait_hw.adapt_count_reg [20]),
        .I4(\adapt_wait_hw.adapt_count_reg [14]),
        .I5(\adapt_wait_hw.adapt_count_reg [21]),
        .O(\n_0_adapt_wait_hw.time_out_adapt_i_4 ));
LUT6 #(
    .INIT(64'h0000000000004000)) 
     \adapt_wait_hw.time_out_adapt_i_5 
       (.I0(\adapt_wait_hw.adapt_count_reg [10]),
        .I1(\adapt_wait_hw.adapt_count_reg [1]),
        .I2(\adapt_wait_hw.adapt_count_reg [22]),
        .I3(\adapt_wait_hw.adapt_count_reg [13]),
        .I4(\adapt_wait_hw.adapt_count_reg [18]),
        .I5(\adapt_wait_hw.adapt_count_reg [17]),
        .O(\n_0_adapt_wait_hw.time_out_adapt_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \adapt_wait_hw.time_out_adapt_reg 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\n_0_adapt_wait_hw.time_out_adapt_i_1 ),
        .Q(time_out_adapt),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000A2AAAEAA)) 
     check_tlock_max_i_1
       (.I0(n_0_check_tlock_max_reg),
        .I1(n_0_check_tlock_max_i_2),
        .I2(\n_0_FSM_onehot_rx_state[10]_i_5 ),
        .I3(adapt_count_reset),
        .I4(n_0_check_tlock_max_i_3),
        .I5(I4),
        .O(n_0_check_tlock_max_i_1));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'h01)) 
     check_tlock_max_i_2
       (.I0(\n_0_FSM_onehot_rx_state_reg[10] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[9] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[8] ),
        .O(n_0_check_tlock_max_i_2));
LUT4 #(
    .INIT(16'h0001)) 
     check_tlock_max_i_3
       (.I0(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[5] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[4] ),
        .O(n_0_check_tlock_max_i_3));
FDRE #(
    .INIT(1'b0)) 
     check_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_check_tlock_max_i_1),
        .Q(n_0_check_tlock_max_reg),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000AE2AAAAA)) 
     gtrxreset_i_i_1
       (.I0(GTRXRESET),
        .I1(adapt_count_reset),
        .I2(\n_0_FSM_onehot_rx_state[10]_i_5 ),
        .I3(n_0_check_tlock_max_i_3),
        .I4(n_0_check_tlock_max_i_2),
        .I5(I4),
        .O(n_0_gtrxreset_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     gtrxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_gtrxreset_i_i_1),
        .Q(GTRXRESET),
        .R(\<const0> ));
LUT3 #(
    .INIT(8'hEA)) 
     gtxe2_i_i_1
       (.I0(GTRXRESET),
        .I1(O1),
        .I2(reset_out0_in),
        .O(gt0_gtrxreset_in1_out));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in__0[0]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .O(p_0_in__0[1]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in__0[2]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .O(p_0_in__0[3]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in__0[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[2]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in__0[5]));
LUT2 #(
    .INIT(4'h7)) 
     \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg__0[5]),
        .I1(\n_0_init_wait_count[6]_i_3__0 ),
        .O(\n_0_init_wait_count[6]_i_1__0 ));
LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[6]_i_2__0 
       (.I0(init_wait_count_reg__0[6]),
        .I1(\n_0_init_wait_count[6]_i_4__0 ),
        .I2(init_wait_count_reg__0[5]),
        .O(p_0_in__0[6]));
LUT6 #(
    .INIT(64'h0000000000800000)) 
     \init_wait_count[6]_i_3__0 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[2]),
        .I5(init_wait_count_reg__0[0]),
        .O(\n_0_init_wait_count[6]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \init_wait_count[6]_i_4__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[3]),
        .O(\n_0_init_wait_count[6]_i_4__0 ));
(* counter = "17" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(I4),
        .D(p_0_in__0[0]),
        .Q(init_wait_count_reg__0[0]));
(* counter = "17" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(I4),
        .D(p_0_in__0[1]),
        .Q(init_wait_count_reg__0[1]));
(* counter = "17" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(I4),
        .D(p_0_in__0[2]),
        .Q(init_wait_count_reg__0[2]));
(* counter = "17" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(I4),
        .D(p_0_in__0[3]),
        .Q(init_wait_count_reg__0[3]));
(* counter = "17" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(I4),
        .D(p_0_in__0[4]),
        .Q(init_wait_count_reg__0[4]));
(* counter = "17" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(I4),
        .D(p_0_in__0[5]),
        .Q(init_wait_count_reg__0[5]));
(* counter = "17" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1__0 ),
        .CLR(I4),
        .D(p_0_in__0[6]),
        .Q(init_wait_count_reg__0[6]));
LUT3 #(
    .INIT(8'hF8)) 
     init_wait_done_i_1__0
       (.I0(init_wait_count_reg__0[5]),
        .I1(\n_0_init_wait_count[6]_i_3__0 ),
        .I2(init_wait_done),
        .O(n_0_init_wait_done_i_1__0));
FDCE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .CLR(I4),
        .D(n_0_init_wait_done_i_1__0),
        .Q(init_wait_done));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__2[0]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__2[1]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__2[2]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__2[3]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__2[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__2[5]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\n_0_mmcm_lock_count[9]_i_5__0 ),
        .O(p_0_in__2[6]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_5__0 ),
        .O(p_0_in__2[7]));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[8]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(\n_0_mmcm_lock_count[9]_i_5__0 ),
        .I3(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__2[8]));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1__0 
       (.I0(mmcm_lock_i),
        .O(\n_0_mmcm_lock_count[9]_i_1__0 ));
LUT6 #(
    .INIT(64'h2FFFFFFFFFFFFFFF)) 
     \mmcm_lock_count[9]_i_2__0 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(\n_0_mmcm_lock_count[9]_i_4__0 ),
        .I3(mmcm_lock_count_reg__0[7]),
        .I4(mmcm_lock_count_reg__0[8]),
        .I5(mmcm_lock_count_reg__0[9]),
        .O(\n_0_mmcm_lock_count[9]_i_2__0 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[9]_i_3__0 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(mmcm_lock_count_reg__0[8]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(\n_0_mmcm_lock_count[9]_i_5__0 ),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(p_0_in__2[9]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \mmcm_lock_count[9]_i_4__0 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(mmcm_lock_count_reg__0[6]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(\n_0_mmcm_lock_count[9]_i_4__0 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \mmcm_lock_count[9]_i_5__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\n_0_mmcm_lock_count[9]_i_5__0 ));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(\n_0_mmcm_lock_count[9]_i_1__0 ));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(\n_0_mmcm_lock_count[9]_i_1__0 ));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(\n_0_mmcm_lock_count[9]_i_1__0 ));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(\n_0_mmcm_lock_count[9]_i_1__0 ));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(\n_0_mmcm_lock_count[9]_i_1__0 ));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(\n_0_mmcm_lock_count[9]_i_1__0 ));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(\n_0_mmcm_lock_count[9]_i_1__0 ));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(\n_0_mmcm_lock_count[9]_i_1__0 ));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(\n_0_mmcm_lock_count[9]_i_1__0 ));
(* counter = "22" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .D(p_0_in__2[9]),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(\n_0_mmcm_lock_count[9]_i_1__0 ));
LUT3 #(
    .INIT(8'hA2)) 
     mmcm_lock_reclocked_i_1__0
       (.I0(mmcm_lock_i),
        .I1(\n_0_mmcm_lock_count[9]_i_2__0 ),
        .I2(mmcm_lock_reclocked),
        .O(n_0_mmcm_lock_reclocked_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_mmcm_lock_reclocked_i_1__0),
        .Q(mmcm_lock_reclocked),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'hFFFFFFFFEEE2E2E2)) 
     reset_time_out_i_1__0
       (.I0(n_0_reset_time_out_reg),
        .I1(n_0_reset_time_out_i_2__0),
        .I2(n_0_reset_time_out_i_3),
        .I3(cplllock_sync),
        .I4(n_0_reset_time_out_i_4__0),
        .I5(I4),
        .O(n_0_reset_time_out_i_1__0));
LUT5 #(
    .INIT(32'h4A0AFAF0)) 
     reset_time_out_i_2__0
       (.I0(n_0_check_tlock_max_i_3),
        .I1(rx_cdrlocked),
        .I2(n_0_check_tlock_max_i_2),
        .I3(adapt_count_reset),
        .I4(\n_0_FSM_onehot_rx_state[10]_i_5 ),
        .O(n_0_reset_time_out_i_2__0));
LUT6 #(
    .INIT(64'hCBC88B88CBC8BBBB)) 
     reset_time_out_i_3
       (.I0(n_0_reset_time_out_i_5),
        .I1(adapt_count_reset),
        .I2(n_0_check_tlock_max_i_3),
        .I3(rxresetdone_s3),
        .I4(n_0_check_tlock_max_i_2),
        .I5(data_valid_sync),
        .O(n_0_reset_time_out_i_3));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'h0002)) 
     reset_time_out_i_4__0
       (.I0(n_0_check_tlock_max_i_3),
        .I1(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[9] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[10] ),
        .O(n_0_reset_time_out_i_4__0));
LUT5 #(
    .INIT(32'hFCBBFC88)) 
     reset_time_out_i_5
       (.I0(rx_cdrlocked),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_5 ),
        .I2(data_valid_sync),
        .I3(n_0_check_tlock_max_i_3),
        .I4(mmcm_lock_reclocked),
        .O(n_0_reset_time_out_i_5));
FDRE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_reset_time_out_i_1__0),
        .Q(n_0_reset_time_out_reg),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000B2AAAAAA)) 
     run_phase_alignment_int_i_1__0
       (.I0(n_0_run_phase_alignment_int_reg),
        .I1(n_0_check_tlock_max_i_2),
        .I2(\n_0_FSM_onehot_rx_state[10]_i_5 ),
        .I3(adapt_count_reset),
        .I4(n_0_check_tlock_max_i_3),
        .I5(I4),
        .O(n_0_run_phase_alignment_int_i_1__0));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_run_phase_alignment_int_i_1__0),
        .Q(n_0_run_phase_alignment_int_reg),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_s3_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(data_out_0),
        .Q(n_0_run_phase_alignment_int_s3_reg),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h2)) 
     rx_fsm_reset_done_int_i_1
       (.I0(n_0_rx_fsm_reset_done_int_i_2),
        .I1(I4),
        .O(n_0_rx_fsm_reset_done_int_i_1));
LUT6 #(
    .INIT(64'hFF5FF5FF00008000)) 
     rx_fsm_reset_done_int_i_2
       (.I0(n_0_rx_fsm_reset_done_int_i_3),
        .I1(n_0_rx_fsm_reset_done_int_i_4),
        .I2(data_valid_sync),
        .I3(\n_0_FSM_onehot_rx_state[10]_i_5 ),
        .I4(adapt_count_reset),
        .I5(O1),
        .O(n_0_rx_fsm_reset_done_int_i_2));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'hAAA8)) 
     rx_fsm_reset_done_int_i_3
       (.I0(n_0_check_tlock_max_i_3),
        .I1(\n_0_FSM_onehot_rx_state_reg[8] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[9] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[10] ),
        .O(n_0_rx_fsm_reset_done_int_i_3));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'h2)) 
     rx_fsm_reset_done_int_i_4
       (.I0(time_out_1us),
        .I1(n_0_reset_time_out_reg),
        .O(n_0_rx_fsm_reset_done_int_i_4));
FDRE #(
    .INIT(1'b0)) 
     rx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_rx_fsm_reset_done_int_i_1),
        .Q(O1),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     rx_fsm_reset_done_int_s3_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     rxresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(\<const0> ));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__26 sync_RXRESETDONE
       (.clk(independent_clock_bufg),
        .data_in(I1),
        .data_out(rxresetdone_s2));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__30 sync_cplllock
       (.clk(independent_clock_bufg),
        .data_in(resetdone),
        .data_out(cplllock_sync));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__31 sync_cpllrefclklost
       (.clk(independent_clock_bufg),
        .data_in(CPLLREFCLKLOST),
        .data_out(NLW_sync_cpllrefclklost_data_out_UNCONNECTED));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__29 sync_data_valid
       (.clk(independent_clock_bufg),
        .data_in(data_out),
        .data_out(data_valid_sync));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__28 sync_mmcm_lock_reclocked
       (.clk(independent_clock_bufg),
        .data_in(mmcm_locked_out),
        .data_out(mmcm_lock_i));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__24 sync_run_phase_alignment_int
       (.clk(CLK),
        .data_in(n_0_run_phase_alignment_int_reg),
        .data_out(data_out_0));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__27 sync_time_out_wait_bypass
       (.clk(independent_clock_bufg),
        .data_in(n_0_time_out_wait_bypass_reg),
        .data_out(time_out_wait_bypass_s2));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__25 sync_tx_fsm_reset_done_int
       (.clk(CLK),
        .data_in(O1),
        .data_out(rx_fsm_reset_done_int_s2));
LUT3 #(
    .INIT(8'h0E)) 
     time_out_1us_i_1
       (.I0(time_out_1us),
        .I1(n_0_time_out_1us_i_2),
        .I2(n_0_reset_time_out_reg),
        .O(n_0_time_out_1us_i_1));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     time_out_1us_i_2
       (.I0(n_0_time_out_1us_i_3),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[0]),
        .I3(n_0_time_out_2ms_i_3),
        .I4(time_out_counter_reg[2]),
        .I5(time_out_counter_reg[1]),
        .O(n_0_time_out_1us_i_2));
LUT6 #(
    .INIT(64'h0000001000000000)) 
     time_out_1us_i_3
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[9]),
        .I4(time_out_counter_reg[17]),
        .I5(n_0_time_out_1us_i_4),
        .O(n_0_time_out_1us_i_3));
LUT6 #(
    .INIT(64'h0000000000001000)) 
     time_out_1us_i_4
       (.I0(time_out_counter_reg[8]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[10]),
        .I5(time_out_counter_reg[18]),
        .O(n_0_time_out_1us_i_4));
FDRE #(
    .INIT(1'b0)) 
     time_out_1us_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_time_out_1us_i_1),
        .Q(time_out_1us),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     time_out_2ms_i_1
       (.I0(time_out_2ms),
        .I1(n_0_time_out_2ms_i_2),
        .I2(n_0_reset_time_out_reg),
        .O(n_0_time_out_2ms_i_1));
LUT5 #(
    .INIT(32'h00000080)) 
     time_out_2ms_i_2
       (.I0(\n_0_time_out_counter[0]_i_3 ),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[18]),
        .I3(n_0_time_out_2ms_i_3),
        .I4(\n_0_time_out_counter[0]_i_5 ),
        .O(n_0_time_out_2ms_i_2));
LUT4 #(
    .INIT(16'hFFFE)) 
     time_out_2ms_i_3
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[14]),
        .O(n_0_time_out_2ms_i_3));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_time_out_2ms_i_1),
        .Q(time_out_2ms),
        .R(\<const0> ));
LUT3 #(
    .INIT(8'hFD)) 
     \time_out_counter[0]_i_1 
       (.I0(\n_0_time_out_counter[0]_i_3 ),
        .I1(\n_0_time_out_counter[0]_i_4__0 ),
        .I2(\n_0_time_out_counter[0]_i_5 ),
        .O(\n_0_time_out_counter[0]_i_1 ));
LUT2 #(
    .INIT(4'hE)) 
     \time_out_counter[0]_i_10 
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_10 ));
LUT6 #(
    .INIT(64'h0000080000000000)) 
     \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[11]),
        .I2(\n_0_time_out_counter[0]_i_10 ),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[6]),
        .I5(time_out_counter_reg[12]),
        .O(\n_0_time_out_counter[0]_i_3 ));
LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
     \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[18]),
        .I5(time_out_counter_reg[7]),
        .O(\n_0_time_out_counter[0]_i_4__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[10]),
        .I4(time_out_counter_reg[3]),
        .I5(time_out_counter_reg[4]),
        .O(\n_0_time_out_counter[0]_i_5 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_6__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_7__0 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_7__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_8__0 
       (.I0(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_8__0 ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_9__0 
       (.I0(time_out_counter_reg[0]),
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
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
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
        .S({\n_0_time_out_counter[0]_i_6__0 ,\n_0_time_out_counter[0]_i_7__0 ,\n_0_time_out_counter[0]_i_8__0 ,\n_0_time_out_counter[0]_i_9__0 }));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[10]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[11]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
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
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[13]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[14]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[12]_i_1__0 ),
        .Q(time_out_counter_reg[15]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
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
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[17]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[16]_i_1__0 ),
        .Q(time_out_counter_reg[18]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[1]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[2]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[0]_i_2__0 ),
        .Q(time_out_counter_reg[3]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
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
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[5]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_5_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[6]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_4_time_out_counter_reg[4]_i_1__0 ),
        .Q(time_out_counter_reg[7]),
        .R(n_0_reset_time_out_reg));
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
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
(* counter = "15" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1 ),
        .D(\n_6_time_out_counter_reg[8]_i_1__0 ),
        .Q(time_out_counter_reg[9]),
        .R(n_0_reset_time_out_reg));
LUT6 #(
    .INIT(64'hFFFF000001000000)) 
     time_out_wait_bypass_i_1__0
       (.I0(n_0_time_out_wait_bypass_i_2__0),
        .I1(n_0_time_out_wait_bypass_i_3__0),
        .I2(rx_fsm_reset_done_int_s3),
        .I3(wait_bypass_count_reg[7]),
        .I4(n_0_run_phase_alignment_int_s3_reg),
        .I5(n_0_time_out_wait_bypass_reg),
        .O(n_0_time_out_wait_bypass_i_1__0));
LUT6 #(
    .INIT(64'hFFFFFEFFFFFFFFFF)) 
     time_out_wait_bypass_i_2__0
       (.I0(wait_bypass_count_reg[5]),
        .I1(wait_bypass_count_reg[4]),
        .I2(wait_bypass_count_reg[10]),
        .I3(wait_bypass_count_reg[9]),
        .I4(wait_bypass_count_reg[6]),
        .I5(wait_bypass_count_reg[8]),
        .O(n_0_time_out_wait_bypass_i_2__0));
LUT6 #(
    .INIT(64'hFDFFFFFFFFFFFFFF)) 
     time_out_wait_bypass_i_3__0
       (.I0(wait_bypass_count_reg[12]),
        .I1(wait_bypass_count_reg[11]),
        .I2(wait_bypass_count_reg[3]),
        .I3(wait_bypass_count_reg[2]),
        .I4(wait_bypass_count_reg[0]),
        .I5(wait_bypass_count_reg[1]),
        .O(n_0_time_out_wait_bypass_i_3__0));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(n_0_time_out_wait_bypass_i_1__0),
        .Q(n_0_time_out_wait_bypass_reg),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'h00EA)) 
     time_tlock_max_i_1
       (.I0(time_tlock_max),
        .I1(time_tlock_max1),
        .I2(n_0_check_tlock_max_reg),
        .I3(n_0_reset_time_out_reg),
        .O(n_0_time_tlock_max_i_1));
LUT5 #(
    .INIT(32'h00000001)) 
     time_tlock_max_i_10
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[1]),
        .O(n_0_time_tlock_max_i_10));
LUT4 #(
    .INIT(16'hFFFE)) 
     time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[18]),
        .O(n_0_time_tlock_max_i_3__0));
LUT3 #(
    .INIT(8'hA8)) 
     time_tlock_max_i_4
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[12]),
        .O(n_0_time_tlock_max_i_4));
LUT4 #(
    .INIT(16'hAAA8)) 
     time_tlock_max_i_5
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[6]),
        .O(n_0_time_tlock_max_i_5));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     time_tlock_max_i_6
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_counter_reg[3]),
        .O(n_0_time_tlock_max_i_6));
LUT4 #(
    .INIT(16'h0001)) 
     time_tlock_max_i_7
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[18]),
        .O(n_0_time_tlock_max_i_7));
LUT5 #(
    .INIT(32'h00400000)) 
     time_tlock_max_i_8
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[11]),
        .O(n_0_time_tlock_max_i_8));
LUT5 #(
    .INIT(32'h00000040)) 
     time_tlock_max_i_9
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[9]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[6]),
        .O(n_0_time_tlock_max_i_9));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_time_tlock_max_i_1),
        .Q(time_tlock_max),
        .R(\<const0> ));
CARRY4 time_tlock_max_reg_i_2
       (.CI(\<const0> ),
        .CO({time_tlock_max1,n_1_time_tlock_max_reg_i_2,n_2_time_tlock_max_reg_i_2,n_3_time_tlock_max_reg_i_2}),
        .CYINIT(\<const0> ),
        .DI({n_0_time_tlock_max_i_3__0,n_0_time_tlock_max_i_4,n_0_time_tlock_max_i_5,n_0_time_tlock_max_i_6}),
        .O(NLW_time_tlock_max_reg_i_2_O_UNCONNECTED[3:0]),
        .S({n_0_time_tlock_max_i_7,n_0_time_tlock_max_i_8,n_0_time_tlock_max_i_9,n_0_time_tlock_max_i_10}));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1__0 
       (.I0(n_0_run_phase_alignment_int_s3_reg),
        .O(\n_0_wait_bypass_count[0]_i_1__0 ));
LUT4 #(
    .INIT(16'h00EF)) 
     \wait_bypass_count[0]_i_2__0 
       (.I0(n_0_time_out_wait_bypass_i_2__0),
        .I1(n_0_time_out_wait_bypass_i_3__0),
        .I2(wait_bypass_count_reg[7]),
        .I3(rx_fsm_reset_done_int_s3),
        .O(\n_0_wait_bypass_count[0]_i_2__0 ));
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
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[0] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(\<const0> ),
        .CO({\n_0_wait_bypass_count_reg[0]_i_3__0 ,\n_1_wait_bypass_count_reg[0]_i_3__0 ,\n_2_wait_bypass_count_reg[0]_i_3__0 ,\n_3_wait_bypass_count_reg[0]_i_3__0 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_wait_bypass_count_reg[0]_i_3__0 ,\n_5_wait_bypass_count_reg[0]_i_3__0 ,\n_6_wait_bypass_count_reg[0]_i_3__0 ,\n_7_wait_bypass_count_reg[0]_i_3__0 }),
        .S({\n_0_wait_bypass_count[0]_i_4__0 ,\n_0_wait_bypass_count[0]_i_5__0 ,\n_0_wait_bypass_count[0]_i_6__0 ,\n_0_wait_bypass_count[0]_i_7__0 }));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[10] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_5_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[11] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_4_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[12] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[12]_i_1__0 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[8]_i_1__0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\n_7_wait_bypass_count_reg[12]_i_1__0 }),
        .S({\<const0> ,\<const0> ,\<const0> ,\n_0_wait_bypass_count[12]_i_2__0 }));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[1] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_6_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[2] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_5_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[3] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_4_wait_bypass_count_reg[0]_i_3__0 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[4] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[0]_i_3__0 ),
        .CO({\n_0_wait_bypass_count_reg[4]_i_1__0 ,\n_1_wait_bypass_count_reg[4]_i_1__0 ,\n_2_wait_bypass_count_reg[4]_i_1__0 ,\n_3_wait_bypass_count_reg[4]_i_1__0 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wait_bypass_count_reg[4]_i_1__0 ,\n_5_wait_bypass_count_reg[4]_i_1__0 ,\n_6_wait_bypass_count_reg[4]_i_1__0 ,\n_7_wait_bypass_count_reg[4]_i_1__0 }),
        .S({\n_0_wait_bypass_count[4]_i_2__0 ,\n_0_wait_bypass_count[4]_i_3__0 ,\n_0_wait_bypass_count[4]_i_4__0 ,\n_0_wait_bypass_count[4]_i_5__0 }));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[5] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_6_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[6] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_5_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[7] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_4_wait_bypass_count_reg[4]_i_1__0 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[8] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_7_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\n_0_wait_bypass_count_reg[4]_i_1__0 ),
        .CO({\n_0_wait_bypass_count_reg[8]_i_1__0 ,\n_1_wait_bypass_count_reg[8]_i_1__0 ,\n_2_wait_bypass_count_reg[8]_i_1__0 ,\n_3_wait_bypass_count_reg[8]_i_1__0 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wait_bypass_count_reg[8]_i_1__0 ,\n_5_wait_bypass_count_reg[8]_i_1__0 ,\n_6_wait_bypass_count_reg[8]_i_1__0 ,\n_7_wait_bypass_count_reg[8]_i_1__0 }),
        .S({\n_0_wait_bypass_count[8]_i_2__0 ,\n_0_wait_bypass_count[8]_i_3__0 ,\n_0_wait_bypass_count[8]_i_4__0 ,\n_0_wait_bypass_count[8]_i_5__0 }));
(* counter = "19" *) 
   FDRE \wait_bypass_count_reg[9] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2__0 ),
        .D(\n_6_wait_bypass_count_reg[8]_i_1__0 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\n_0_wait_bypass_count[0]_i_1__0 ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_1__0 
       (.I0(wait_time_cnt_reg__0[0]),
        .O(wait_time_cnt0__0[0]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT2 #(
    .INIT(4'h9)) 
     \wait_time_cnt[1]_i_1__0 
       (.I0(wait_time_cnt_reg__0[0]),
        .I1(wait_time_cnt_reg__0[1]),
        .O(\n_0_wait_time_cnt[1]_i_1__0 ));
LUT3 #(
    .INIT(8'hA9)) 
     \wait_time_cnt[2]_i_1__0 
       (.I0(wait_time_cnt_reg__0[2]),
        .I1(wait_time_cnt_reg__0[1]),
        .I2(wait_time_cnt_reg__0[0]),
        .O(wait_time_cnt0__0[2]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'hAAA9)) 
     \wait_time_cnt[3]_i_1__0 
       (.I0(wait_time_cnt_reg__0[3]),
        .I1(wait_time_cnt_reg__0[2]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[1]),
        .O(wait_time_cnt0__0[3]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'hAAAAAAA9)) 
     \wait_time_cnt[4]_i_1__0 
       (.I0(wait_time_cnt_reg__0[4]),
        .I1(wait_time_cnt_reg__0[1]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[2]),
        .I4(wait_time_cnt_reg__0[3]),
        .O(\n_0_wait_time_cnt[4]_i_1__0 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
     \wait_time_cnt[5]_i_1__0 
       (.I0(wait_time_cnt_reg__0[5]),
        .I1(wait_time_cnt_reg__0[3]),
        .I2(wait_time_cnt_reg__0[2]),
        .I3(wait_time_cnt_reg__0[0]),
        .I4(wait_time_cnt_reg__0[1]),
        .I5(wait_time_cnt_reg__0[4]),
        .O(wait_time_cnt0__0[5]));
LUT5 #(
    .INIT(32'h00000002)) 
     \wait_time_cnt[6]_i_1__0 
       (.I0(adapt_count_reset),
        .I1(\n_0_FSM_onehot_rx_state[10]_i_5 ),
        .I2(\n_0_FSM_onehot_rx_state_reg[10] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[9] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[8] ),
        .O(\n_0_wait_time_cnt[6]_i_1__0 ));
LUT2 #(
    .INIT(4'hB)) 
     \wait_time_cnt[6]_i_2__0 
       (.I0(wait_time_cnt_reg__0[6]),
        .I1(\n_0_wait_time_cnt[6]_i_5__0 ),
        .O(\n_0_wait_time_cnt[6]_i_2__0 ));
LUT2 #(
    .INIT(4'h6)) 
     \wait_time_cnt[6]_i_3__0 
       (.I0(wait_time_cnt_reg__0[6]),
        .I1(\n_0_wait_time_cnt[6]_i_6__0 ),
        .O(wait_time_cnt0__0[6]));
LUT5 #(
    .INIT(32'h00000001)) 
     \wait_time_cnt[6]_i_4__0 
       (.I0(\n_0_FSM_onehot_rx_state_reg[3] ),
        .I1(\n_0_FSM_onehot_rx_state_reg[7] ),
        .I2(\n_0_FSM_onehot_rx_state_reg[6] ),
        .I3(\n_0_FSM_onehot_rx_state_reg[10] ),
        .I4(\n_0_FSM_onehot_rx_state_reg[2] ),
        .O(adapt_count_reset));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \wait_time_cnt[6]_i_5__0 
       (.I0(wait_time_cnt_reg__0[1]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[2]),
        .I3(wait_time_cnt_reg__0[3]),
        .I4(wait_time_cnt_reg__0[4]),
        .I5(wait_time_cnt_reg__0[5]),
        .O(\n_0_wait_time_cnt[6]_i_5__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \wait_time_cnt[6]_i_6__0 
       (.I0(wait_time_cnt_reg__0[3]),
        .I1(wait_time_cnt_reg__0[2]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[1]),
        .I4(wait_time_cnt_reg__0[4]),
        .I5(wait_time_cnt_reg__0[5]),
        .O(\n_0_wait_time_cnt[6]_i_6__0 ));
(* counter = "16" *) 
   FDRE \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(wait_time_cnt0__0[0]),
        .Q(wait_time_cnt_reg__0[0]),
        .R(\n_0_wait_time_cnt[6]_i_1__0 ));
(* counter = "16" *) 
   FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(\n_0_wait_time_cnt[1]_i_1__0 ),
        .Q(wait_time_cnt_reg__0[1]),
        .R(\n_0_wait_time_cnt[6]_i_1__0 ));
(* counter = "16" *) 
   FDSE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(wait_time_cnt0__0[2]),
        .Q(wait_time_cnt_reg__0[2]),
        .S(\n_0_wait_time_cnt[6]_i_1__0 ));
(* counter = "16" *) 
   FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(wait_time_cnt0__0[3]),
        .Q(wait_time_cnt_reg__0[3]),
        .R(\n_0_wait_time_cnt[6]_i_1__0 ));
(* counter = "16" *) 
   FDRE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(\n_0_wait_time_cnt[4]_i_1__0 ),
        .Q(wait_time_cnt_reg__0[4]),
        .R(\n_0_wait_time_cnt[6]_i_1__0 ));
(* counter = "16" *) 
   FDSE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(wait_time_cnt0__0[5]),
        .Q(wait_time_cnt_reg__0[5]),
        .S(\n_0_wait_time_cnt[6]_i_1__0 ));
(* counter = "16" *) 
   FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2__0 ),
        .D(wait_time_cnt0__0[6]),
        .Q(wait_time_cnt_reg__0[6]),
        .S(\n_0_wait_time_cnt[6]_i_1__0 ));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_TX_STARTUP_FSM" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_TX_STARTUP_FSM__parameterized0
   (O1,
    CPLL_RESET,
    TXUSERRDY,
    gt0_gttxreset_in0_out,
    CLK,
    independent_clock_bufg,
    I1,
    mmcm_locked_out,
    resetdone,
    CPLLREFCLKLOST,
    I4,
    reset_out);
  output O1;
  output CPLL_RESET;
  output TXUSERRDY;
  output gt0_gttxreset_in0_out;
  input CLK;
  input independent_clock_bufg;
  input I1;
  input mmcm_locked_out;
  input resetdone;
  input CPLLREFCLKLOST;
  input [0:0]I4;
  input reset_out;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire CPLLREFCLKLOST;
  wire CPLL_RESET;
  wire GTTXRESET;
  wire I1;
  wire [0:0]I4;
  wire O1;
  wire TXUSERRDY;
  wire clear;
  wire cplllock_sync;
  wire data_out;
  wire gt0_gttxreset_in0_out;
  wire independent_clock_bufg;
  wire [6:0]init_wait_count_reg__0;
  wire init_wait_done;
  wire [9:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_locked_out;
  wire n_0_CPLL_RESET_i_1;
  wire \n_0_FSM_onehot_tx_state[10]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_10 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_11 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_12 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_13 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_14 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_15 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_2 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_4 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_5 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_6 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_7 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_8 ;
  wire \n_0_FSM_onehot_tx_state[10]_i_9 ;
  wire \n_0_FSM_onehot_tx_state[1]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[1]_i_2 ;
  wire \n_0_FSM_onehot_tx_state[1]_i_3 ;
  wire \n_0_FSM_onehot_tx_state[2]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[3]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[4]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[5]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[6]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[7]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[8]_i_1 ;
  wire \n_0_FSM_onehot_tx_state[8]_i_3 ;
  wire \n_0_FSM_onehot_tx_state[8]_i_4 ;
  wire \n_0_FSM_onehot_tx_state[8]_i_5 ;
  wire \n_0_FSM_onehot_tx_state[8]_i_6 ;
  wire \n_0_FSM_onehot_tx_state[8]_i_7 ;
  wire \n_0_FSM_onehot_tx_state[9]_i_1 ;
  wire \n_0_FSM_onehot_tx_state_reg[0] ;
  wire \n_0_FSM_onehot_tx_state_reg[10] ;
  wire \n_0_FSM_onehot_tx_state_reg[10]_i_3 ;
  wire \n_0_FSM_onehot_tx_state_reg[1] ;
  wire \n_0_FSM_onehot_tx_state_reg[2] ;
  wire \n_0_FSM_onehot_tx_state_reg[3] ;
  wire \n_0_FSM_onehot_tx_state_reg[4] ;
  wire \n_0_FSM_onehot_tx_state_reg[5] ;
  wire \n_0_FSM_onehot_tx_state_reg[6] ;
  wire \n_0_FSM_onehot_tx_state_reg[7] ;
  wire \n_0_FSM_onehot_tx_state_reg[8] ;
  wire \n_0_FSM_onehot_tx_state_reg[9] ;
  wire n_0_TXUSERRDY_i_1;
  wire n_0_gttxreset_i_i_1;
  wire \n_0_init_wait_count[6]_i_1 ;
  wire \n_0_init_wait_count[6]_i_3 ;
  wire \n_0_init_wait_count[6]_i_4 ;
  wire n_0_init_wait_done_i_1;
  wire \n_0_mmcm_lock_count[9]_i_1 ;
  wire \n_0_mmcm_lock_count[9]_i_2 ;
  wire \n_0_mmcm_lock_count[9]_i_4 ;
  wire \n_0_mmcm_lock_count[9]_i_5 ;
  wire n_0_mmcm_lock_reclocked_i_1;
  wire n_0_pll_reset_asserted_i_1;
  wire n_0_pll_reset_asserted_i_2;
  wire n_0_reset_time_out_i_1;
  wire n_0_reset_time_out_i_2;
  wire n_0_reset_time_out_i_3__0;
  wire n_0_reset_time_out_i_4;
  wire n_0_run_phase_alignment_int_i_1;
  wire n_0_run_phase_alignment_int_reg;
  wire n_0_time_out_2ms_i_1;
  wire n_0_time_out_2ms_i_2__0;
  wire n_0_time_out_2ms_i_3__0;
  wire n_0_time_out_2ms_i_4;
  wire n_0_time_out_500us_i_1;
  wire n_0_time_out_500us_i_2;
  wire n_0_time_out_500us_i_3;
  wire n_0_time_out_500us_i_4;
  wire n_0_time_out_500us_i_5;
  wire n_0_time_out_500us_i_6;
  wire \n_0_time_out_counter[0]_i_10__0 ;
  wire \n_0_time_out_counter[0]_i_1__0 ;
  wire \n_0_time_out_counter[0]_i_3__0 ;
  wire \n_0_time_out_counter[0]_i_4 ;
  wire \n_0_time_out_counter[0]_i_5__0 ;
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
  wire n_0_time_out_wait_bypass_i_1;
  wire n_0_time_out_wait_bypass_i_2;
  wire n_0_time_out_wait_bypass_i_3;
  wire n_0_time_out_wait_bypass_i_4;
  wire n_0_time_out_wait_bypass_reg;
  wire n_0_time_tlock_max_i_1;
  wire n_0_time_tlock_max_i_2;
  wire n_0_time_tlock_max_i_3;
  wire n_0_time_tlock_max_i_4__0;
  wire n_0_tx_fsm_reset_done_int_i_1;
  wire n_0_tx_fsm_reset_done_int_i_2;
  wire n_0_tx_fsm_reset_done_int_i_3;
  wire \n_0_wait_bypass_count[0]_i_1 ;
  wire \n_0_wait_bypass_count[0]_i_2 ;
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
  wire \n_0_wait_time_cnt[1]_i_1 ;
  wire \n_0_wait_time_cnt[6]_i_2 ;
  wire \n_0_wait_time_cnt[6]_i_4 ;
  wire \n_0_wait_time_cnt[6]_i_5 ;
  wire \n_0_wait_time_cnt[6]_i_6 ;
  wire \n_0_wait_time_cnt[6]_i_7 ;
  wire \n_1_time_out_counter_reg[0]_i_2 ;
  wire \n_1_time_out_counter_reg[12]_i_1 ;
  wire \n_1_time_out_counter_reg[4]_i_1 ;
  wire \n_1_time_out_counter_reg[8]_i_1 ;
  wire \n_1_wait_bypass_count_reg[0]_i_3 ;
  wire \n_1_wait_bypass_count_reg[12]_i_1 ;
  wire \n_1_wait_bypass_count_reg[4]_i_1 ;
  wire \n_1_wait_bypass_count_reg[8]_i_1 ;
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
  wire [6:0]p_0_in;
  wire [9:0]p_0_in__1;
  wire pll_reset_asserted;
  wire reset_out;
  wire reset_time_out;
  wire resetdone;
  wire run_phase_alignment_int_s3;
  wire time_out_2ms;
  wire time_out_500us;
  wire [18:0]time_out_counter_reg;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire tx_fsm_reset_done_int_s2;
  wire tx_fsm_reset_done_int_s3;
  wire tx_state12_out;
  wire tx_state13_out;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire [16:0]wait_bypass_count_reg;
  wire [6:0]wait_time_cnt0;
  wire [6:0]wait_time_cnt_reg__0;
  wire NLW_sync_cpllrefclklost_data_out_UNCONNECTED;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED ;

LUT6 #(
    .INIT(64'h00000000A2AAAEAA)) 
     CPLL_RESET_i_1
       (.I0(CPLL_RESET),
        .I1(\n_0_FSM_onehot_tx_state[10]_i_5 ),
        .I2(n_0_tx_fsm_reset_done_int_i_3),
        .I3(n_0_tx_fsm_reset_done_int_i_2),
        .I4(pll_reset_asserted),
        .I5(I4),
        .O(n_0_CPLL_RESET_i_1));
FDRE #(
    .INIT(1'b0)) 
     CPLL_RESET_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_CPLL_RESET_i_1),
        .Q(CPLL_RESET),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'hEEE2EEFF22E2EEFF)) 
     \FSM_onehot_tx_state[10]_i_1 
       (.I0(\n_0_FSM_onehot_tx_state_reg[10]_i_3 ),
        .I1(n_0_tx_fsm_reset_done_int_i_3),
        .I2(\n_0_FSM_onehot_tx_state[10]_i_4 ),
        .I3(n_0_tx_fsm_reset_done_int_i_2),
        .I4(\n_0_FSM_onehot_tx_state[10]_i_5 ),
        .I5(init_wait_done),
        .O(\n_0_FSM_onehot_tx_state[10]_i_1 ));
LUT6 #(
    .INIT(64'h0EFE0E0E00000000)) 
     \FSM_onehot_tx_state[10]_i_10 
       (.I0(\n_0_FSM_onehot_tx_state[10]_i_15 ),
        .I1(mmcm_lock_reclocked),
        .I2(\n_0_wait_time_cnt[6]_i_4 ),
        .I3(cplllock_sync),
        .I4(pll_reset_asserted),
        .I5(\n_0_FSM_onehot_tx_state[10]_i_5 ),
        .O(\n_0_FSM_onehot_tx_state[10]_i_10 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_tx_state[10]_i_11 
       (.I0(\n_0_FSM_onehot_tx_state_reg[0] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[10] ),
        .O(\n_0_FSM_onehot_tx_state[10]_i_11 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_tx_state[10]_i_12 
       (.I0(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[3] ),
        .O(\n_0_FSM_onehot_tx_state[10]_i_12 ));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_tx_state[10]_i_13 
       (.I0(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[4] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[1] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[0] ),
        .O(\n_0_FSM_onehot_tx_state[10]_i_13 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFD)) 
     \FSM_onehot_tx_state[10]_i_14 
       (.I0(\n_0_FSM_onehot_tx_state[10]_i_5 ),
        .I1(\n_0_FSM_onehot_tx_state_reg[10] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[0] ),
        .I5(\n_0_FSM_onehot_tx_state_reg[1] ),
        .O(\n_0_FSM_onehot_tx_state[10]_i_14 ));
LUT2 #(
    .INIT(4'h2)) 
     \FSM_onehot_tx_state[10]_i_15 
       (.I0(time_tlock_max),
        .I1(reset_time_out),
        .O(\n_0_FSM_onehot_tx_state[10]_i_15 ));
LUT3 #(
    .INIT(8'hA8)) 
     \FSM_onehot_tx_state[10]_i_2 
       (.I0(\n_0_FSM_onehot_tx_state[10]_i_6 ),
        .I1(\n_0_FSM_onehot_tx_state[10]_i_7 ),
        .I2(\n_0_FSM_onehot_tx_state[10]_i_8 ),
        .O(\n_0_FSM_onehot_tx_state[10]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FSM_onehot_tx_state[10]_i_4 
       (.I0(\n_0_wait_time_cnt[6]_i_7 ),
        .I1(wait_time_cnt_reg__0[6]),
        .O(\n_0_FSM_onehot_tx_state[10]_i_4 ));
LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_tx_state[10]_i_5 
       (.I0(\n_0_FSM_onehot_tx_state_reg[8] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[9] ),
        .O(\n_0_FSM_onehot_tx_state[10]_i_5 ));
LUT6 #(
    .INIT(64'h0000008000800000)) 
     \FSM_onehot_tx_state[10]_i_6 
       (.I0(\n_0_FSM_onehot_tx_state[10]_i_11 ),
        .I1(\n_0_wait_time_cnt[6]_i_4 ),
        .I2(\n_0_FSM_onehot_tx_state[10]_i_12 ),
        .I3(\n_0_FSM_onehot_tx_state_reg[1] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[8] ),
        .I5(\n_0_FSM_onehot_tx_state_reg[9] ),
        .O(\n_0_FSM_onehot_tx_state[10]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000202000)) 
     \FSM_onehot_tx_state[10]_i_7 
       (.I0(\n_0_FSM_onehot_tx_state[8]_i_3 ),
        .I1(\n_0_FSM_onehot_tx_state[10]_i_13 ),
        .I2(\n_0_wait_time_cnt[6]_i_5 ),
        .I3(\n_0_FSM_onehot_tx_state_reg[8] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[9] ),
        .I5(\n_0_FSM_onehot_tx_state_reg[10] ),
        .O(\n_0_FSM_onehot_tx_state[10]_i_7 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT5 #(
    .INIT(32'h00000116)) 
     \FSM_onehot_tx_state[10]_i_8 
       (.I0(\n_0_FSM_onehot_tx_state_reg[7] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[6] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[4] ),
        .I4(\n_0_FSM_onehot_tx_state[10]_i_14 ),
        .O(\n_0_FSM_onehot_tx_state[10]_i_8 ));
LUT6 #(
    .INIT(64'hFFFFF2F2FF00F2F2)) 
     \FSM_onehot_tx_state[10]_i_9 
       (.I0(time_out_500us),
        .I1(reset_time_out),
        .I2(txresetdone_s3),
        .I3(time_out_2ms),
        .I4(\n_0_wait_time_cnt[6]_i_4 ),
        .I5(cplllock_sync),
        .O(\n_0_FSM_onehot_tx_state[10]_i_9 ));
LUT6 #(
    .INIT(64'h303030BB30303088)) 
     \FSM_onehot_tx_state[1]_i_1 
       (.I0(time_out_wait_bypass_s3),
        .I1(\n_0_FSM_onehot_tx_state[10]_i_6 ),
        .I2(\n_0_FSM_onehot_tx_state[1]_i_2 ),
        .I3(\n_0_FSM_onehot_tx_state[10]_i_8 ),
        .I4(\n_0_FSM_onehot_tx_state[10]_i_7 ),
        .I5(\n_0_FSM_onehot_tx_state[1]_i_3 ),
        .O(\n_0_FSM_onehot_tx_state[1]_i_1 ));
LUT6 #(
    .INIT(64'h00004F0000004000)) 
     \FSM_onehot_tx_state[1]_i_2 
       (.I0(mmcm_lock_reclocked),
        .I1(time_tlock_max),
        .I2(\n_0_FSM_onehot_tx_state[8]_i_4 ),
        .I3(\n_0_FSM_onehot_tx_state[8]_i_3 ),
        .I4(reset_time_out),
        .I5(time_out_500us),
        .O(\n_0_FSM_onehot_tx_state[1]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'h62)) 
     \FSM_onehot_tx_state[1]_i_3 
       (.I0(\n_0_FSM_onehot_tx_state[8]_i_4 ),
        .I1(\n_0_FSM_onehot_tx_state[8]_i_3 ),
        .I2(time_out_2ms),
        .O(\n_0_FSM_onehot_tx_state[1]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT5 #(
    .INIT(32'h00001000)) 
     \FSM_onehot_tx_state[2]_i_1 
       (.I0(\n_0_FSM_onehot_tx_state[10]_i_8 ),
        .I1(\n_0_FSM_onehot_tx_state[10]_i_7 ),
        .I2(\n_0_FSM_onehot_tx_state[8]_i_4 ),
        .I3(\n_0_FSM_onehot_tx_state[8]_i_3 ),
        .I4(\n_0_FSM_onehot_tx_state[10]_i_6 ),
        .O(\n_0_FSM_onehot_tx_state[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     \FSM_onehot_tx_state[3]_i_1 
       (.I0(\n_0_FSM_onehot_tx_state[10]_i_8 ),
        .I1(\n_0_FSM_onehot_tx_state[10]_i_7 ),
        .I2(\n_0_FSM_onehot_tx_state[8]_i_4 ),
        .I3(\n_0_FSM_onehot_tx_state[8]_i_3 ),
        .I4(\n_0_FSM_onehot_tx_state[10]_i_6 ),
        .O(\n_0_FSM_onehot_tx_state[3]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000100)) 
     \FSM_onehot_tx_state[4]_i_1 
       (.I0(\n_0_FSM_onehot_tx_state[10]_i_8 ),
        .I1(\n_0_FSM_onehot_tx_state[10]_i_7 ),
        .I2(time_out_2ms),
        .I3(\n_0_FSM_onehot_tx_state[8]_i_3 ),
        .I4(\n_0_FSM_onehot_tx_state[8]_i_4 ),
        .I5(\n_0_FSM_onehot_tx_state[10]_i_6 ),
        .O(\n_0_FSM_onehot_tx_state[4]_i_1 ));
LUT5 #(
    .INIT(32'h00002220)) 
     \FSM_onehot_tx_state[5]_i_1 
       (.I0(\n_0_FSM_onehot_tx_state[8]_i_4 ),
        .I1(\n_0_FSM_onehot_tx_state[8]_i_3 ),
        .I2(\n_0_FSM_onehot_tx_state[10]_i_8 ),
        .I3(\n_0_FSM_onehot_tx_state[10]_i_7 ),
        .I4(\n_0_FSM_onehot_tx_state[10]_i_6 ),
        .O(\n_0_FSM_onehot_tx_state[5]_i_1 ));
LUT6 #(
    .INIT(64'h0000000020202000)) 
     \FSM_onehot_tx_state[6]_i_1 
       (.I0(\n_0_FSM_onehot_tx_state[8]_i_4 ),
        .I1(tx_state13_out),
        .I2(\n_0_FSM_onehot_tx_state[8]_i_3 ),
        .I3(\n_0_FSM_onehot_tx_state[10]_i_8 ),
        .I4(\n_0_FSM_onehot_tx_state[10]_i_7 ),
        .I5(\n_0_FSM_onehot_tx_state[10]_i_6 ),
        .O(\n_0_FSM_onehot_tx_state[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'h04)) 
     \FSM_onehot_tx_state[6]_i_2 
       (.I0(reset_time_out),
        .I1(time_tlock_max),
        .I2(mmcm_lock_reclocked),
        .O(tx_state13_out));
LUT5 #(
    .INIT(32'h00001110)) 
     \FSM_onehot_tx_state[7]_i_1 
       (.I0(\n_0_FSM_onehot_tx_state[8]_i_4 ),
        .I1(\n_0_FSM_onehot_tx_state[8]_i_3 ),
        .I2(\n_0_FSM_onehot_tx_state[10]_i_8 ),
        .I3(\n_0_FSM_onehot_tx_state[10]_i_7 ),
        .I4(\n_0_FSM_onehot_tx_state[10]_i_6 ),
        .O(\n_0_FSM_onehot_tx_state[7]_i_1 ));
LUT6 #(
    .INIT(64'h0000000004040400)) 
     \FSM_onehot_tx_state[8]_i_1 
       (.I0(tx_state12_out),
        .I1(\n_0_FSM_onehot_tx_state[8]_i_3 ),
        .I2(\n_0_FSM_onehot_tx_state[8]_i_4 ),
        .I3(\n_0_FSM_onehot_tx_state[10]_i_8 ),
        .I4(\n_0_FSM_onehot_tx_state[10]_i_7 ),
        .I5(\n_0_FSM_onehot_tx_state[10]_i_6 ),
        .O(\n_0_FSM_onehot_tx_state[8]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT2 #(
    .INIT(4'h2)) 
     \FSM_onehot_tx_state[8]_i_2 
       (.I0(time_out_500us),
        .I1(reset_time_out),
        .O(tx_state12_out));
LUT5 #(
    .INIT(32'h00100000)) 
     \FSM_onehot_tx_state[8]_i_3 
       (.I0(\n_0_FSM_onehot_tx_state_reg[0] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[10] ),
        .I2(\n_0_FSM_onehot_tx_state[8]_i_5 ),
        .I3(n_0_tx_fsm_reset_done_int_i_3),
        .I4(\n_0_FSM_onehot_tx_state[8]_i_6 ),
        .O(\n_0_FSM_onehot_tx_state[8]_i_3 ));
LUT6 #(
    .INIT(64'hFFFFFFFEFFFEFEEF)) 
     \FSM_onehot_tx_state[8]_i_4 
       (.I0(\n_0_FSM_onehot_tx_state[8]_i_7 ),
        .I1(\n_0_FSM_onehot_tx_state[10]_i_13 ),
        .I2(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[7] ),
        .I5(\n_0_FSM_onehot_tx_state_reg[6] ),
        .O(\n_0_FSM_onehot_tx_state[8]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT5 #(
    .INIT(32'h00010117)) 
     \FSM_onehot_tx_state[8]_i_5 
       (.I0(\n_0_FSM_onehot_tx_state_reg[1] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[9] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[7] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[3] ),
        .O(\n_0_FSM_onehot_tx_state[8]_i_5 ));
LUT4 #(
    .INIT(16'h0001)) 
     \FSM_onehot_tx_state[8]_i_6 
       (.I0(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[8] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[4] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[6] ),
        .O(\n_0_FSM_onehot_tx_state[8]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT3 #(
    .INIT(8'hFE)) 
     \FSM_onehot_tx_state[8]_i_7 
       (.I0(\n_0_FSM_onehot_tx_state_reg[10] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[9] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[8] ),
        .O(\n_0_FSM_onehot_tx_state[8]_i_7 ));
LUT4 #(
    .INIT(16'h0002)) 
     \FSM_onehot_tx_state[9]_i_1 
       (.I0(\n_0_FSM_onehot_tx_state[10]_i_6 ),
        .I1(time_out_wait_bypass_s3),
        .I2(\n_0_FSM_onehot_tx_state[10]_i_8 ),
        .I3(\n_0_FSM_onehot_tx_state[10]_i_7 ),
        .O(\n_0_FSM_onehot_tx_state[9]_i_1 ));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_tx_state_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_tx_state[10]_i_1 ),
        .D(\<const0> ),
        .Q(\n_0_FSM_onehot_tx_state_reg[0] ),
        .S(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_tx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_tx_state[10]_i_2 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[10] ),
        .R(I4));
MUXF7 \FSM_onehot_tx_state_reg[10]_i_3 
       (.I0(\n_0_FSM_onehot_tx_state[10]_i_9 ),
        .I1(\n_0_FSM_onehot_tx_state[10]_i_10 ),
        .O(\n_0_FSM_onehot_tx_state_reg[10]_i_3 ),
        .S(\n_0_wait_time_cnt[6]_i_5 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_tx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_tx_state[1]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[1] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_tx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_tx_state[2]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[2] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_tx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_tx_state[3]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[3] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_tx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_tx_state[4]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[4] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_tx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_tx_state[5]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[5] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_tx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_tx_state[6]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[6] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_tx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_tx_state[7]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[7] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_tx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_tx_state[8]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[8] ),
        .R(I4));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_tx_state_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_FSM_onehot_tx_state[10]_i_1 ),
        .D(\n_0_FSM_onehot_tx_state[9]_i_1 ),
        .Q(\n_0_FSM_onehot_tx_state_reg[9] ),
        .R(I4));
GND GND
       (.G(\<const0> ));
LUT6 #(
    .INIT(64'h00000000AAAA2BAA)) 
     TXUSERRDY_i_1
       (.I0(TXUSERRDY),
        .I1(\n_0_wait_time_cnt[6]_i_5 ),
        .I2(\n_0_wait_time_cnt[6]_i_4 ),
        .I3(\n_0_FSM_onehot_tx_state[10]_i_5 ),
        .I4(n_0_tx_fsm_reset_done_int_i_3),
        .I5(I4),
        .O(n_0_TXUSERRDY_i_1));
FDRE #(
    .INIT(1'b0)) 
     TXUSERRDY_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_TXUSERRDY_i_1),
        .Q(TXUSERRDY),
        .R(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'h000000008EAAAAAA)) 
     gttxreset_i_i_1
       (.I0(GTTXRESET),
        .I1(\n_0_wait_time_cnt[6]_i_4 ),
        .I2(n_0_tx_fsm_reset_done_int_i_3),
        .I3(\n_0_wait_time_cnt[6]_i_5 ),
        .I4(\n_0_FSM_onehot_tx_state[10]_i_5 ),
        .I5(I4),
        .O(n_0_gttxreset_i_i_1));
FDRE #(
    .INIT(1'b0)) 
     gttxreset_i_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_gttxreset_i_i_1),
        .Q(GTTXRESET),
        .R(\<const0> ));
LUT3 #(
    .INIT(8'hEA)) 
     gtxe2_i_i_2
       (.I0(GTTXRESET),
        .I1(O1),
        .I2(reset_out),
        .O(gt0_gttxreset_in0_out));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
(* SOFT_HLUTNM = "soft_lutpair37" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair29" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[2]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
LUT2 #(
    .INIT(4'h7)) 
     \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg__0[5]),
        .I1(\n_0_init_wait_count[6]_i_3 ),
        .O(\n_0_init_wait_count[6]_i_1 ));
LUT3 #(
    .INIT(8'h6A)) 
     \init_wait_count[6]_i_2 
       (.I0(init_wait_count_reg__0[6]),
        .I1(\n_0_init_wait_count[6]_i_4 ),
        .I2(init_wait_count_reg__0[5]),
        .O(p_0_in[6]));
LUT6 #(
    .INIT(64'h0000000000800000)) 
     \init_wait_count[6]_i_3 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[1]),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[2]),
        .I5(init_wait_count_reg__0[0]),
        .O(\n_0_init_wait_count[6]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT5 #(
    .INIT(32'h80000000)) 
     \init_wait_count[6]_i_4 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .I4(init_wait_count_reg__0[3]),
        .O(\n_0_init_wait_count[6]_i_4 ));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(I4),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(I4),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(I4),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(I4),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(I4),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(I4),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
(* counter = "11" *) 
   FDCE #(
    .INIT(1'b0)) 
     \init_wait_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_init_wait_count[6]_i_1 ),
        .CLR(I4),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
LUT3 #(
    .INIT(8'hF8)) 
     init_wait_done_i_1
       (.I0(init_wait_count_reg__0[5]),
        .I1(\n_0_init_wait_count[6]_i_3 ),
        .I2(init_wait_done),
        .O(n_0_init_wait_done_i_1));
FDCE #(
    .INIT(1'b0)) 
     init_wait_done_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .CLR(I4),
        .D(n_0_init_wait_done_i_1),
        .Q(init_wait_done));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__1[0]));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__1[1]));
(* SOFT_HLUTNM = "soft_lutpair35" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__1[2]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__1[3]));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[1]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[2]),
        .O(p_0_in__1[4]));
LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
     \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__1[5]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(\n_0_mmcm_lock_count[9]_i_5 ),
        .O(p_0_in__1[6]));
(* SOFT_HLUTNM = "soft_lutpair36" *) 
   LUT3 #(
    .INIT(8'h6A)) 
     \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[6]),
        .I2(\n_0_mmcm_lock_count[9]_i_5 ),
        .O(p_0_in__1[7]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'h6AAA)) 
     \mmcm_lock_count[8]_i_1 
       (.I0(mmcm_lock_count_reg__0[8]),
        .I1(mmcm_lock_count_reg__0[7]),
        .I2(\n_0_mmcm_lock_count[9]_i_5 ),
        .I3(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__1[8]));
LUT1 #(
    .INIT(2'h1)) 
     \mmcm_lock_count[9]_i_1 
       (.I0(mmcm_lock_i),
        .O(\n_0_mmcm_lock_count[9]_i_1 ));
LUT6 #(
    .INIT(64'h2FFFFFFFFFFFFFFF)) 
     \mmcm_lock_count[9]_i_2 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(\n_0_mmcm_lock_count[9]_i_4 ),
        .I3(mmcm_lock_count_reg__0[7]),
        .I4(mmcm_lock_count_reg__0[8]),
        .I5(mmcm_lock_count_reg__0[9]),
        .O(\n_0_mmcm_lock_count[9]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'h6AAAAAAA)) 
     \mmcm_lock_count[9]_i_3 
       (.I0(mmcm_lock_count_reg__0[9]),
        .I1(mmcm_lock_count_reg__0[8]),
        .I2(mmcm_lock_count_reg__0[6]),
        .I3(\n_0_mmcm_lock_count[9]_i_5 ),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(p_0_in__1[9]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \mmcm_lock_count[9]_i_4 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[5]),
        .I3(mmcm_lock_count_reg__0[6]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(\n_0_mmcm_lock_count[9]_i_4 ));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \mmcm_lock_count[9]_i_5 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .I4(mmcm_lock_count_reg__0[3]),
        .I5(mmcm_lock_count_reg__0[5]),
        .O(\n_0_mmcm_lock_count[9]_i_5 ));
(* counter = "21" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__1[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(\n_0_mmcm_lock_count[9]_i_1 ));
(* counter = "21" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__1[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(\n_0_mmcm_lock_count[9]_i_1 ));
(* counter = "21" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__1[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(\n_0_mmcm_lock_count[9]_i_1 ));
(* counter = "21" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__1[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(\n_0_mmcm_lock_count[9]_i_1 ));
(* counter = "21" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__1[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(\n_0_mmcm_lock_count[9]_i_1 ));
(* counter = "21" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__1[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(\n_0_mmcm_lock_count[9]_i_1 ));
(* counter = "21" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__1[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(\n_0_mmcm_lock_count[9]_i_1 ));
(* counter = "21" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__1[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(\n_0_mmcm_lock_count[9]_i_1 ));
(* counter = "21" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[8] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__1[8]),
        .Q(mmcm_lock_count_reg__0[8]),
        .R(\n_0_mmcm_lock_count[9]_i_1 ));
(* counter = "21" *) 
   FDRE #(
    .INIT(1'b0)) 
     \mmcm_lock_count_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_mmcm_lock_count[9]_i_2 ),
        .D(p_0_in__1[9]),
        .Q(mmcm_lock_count_reg__0[9]),
        .R(\n_0_mmcm_lock_count[9]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair31" *) 
   LUT3 #(
    .INIT(8'hA2)) 
     mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_i),
        .I1(\n_0_mmcm_lock_count[9]_i_2 ),
        .I2(mmcm_lock_reclocked),
        .O(n_0_mmcm_lock_reclocked_i_1));
FDRE #(
    .INIT(1'b0)) 
     mmcm_lock_reclocked_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_mmcm_lock_reclocked_i_1),
        .Q(mmcm_lock_reclocked),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000AABAAA8A)) 
     pll_reset_asserted_i_1
       (.I0(pll_reset_asserted),
        .I1(n_0_pll_reset_asserted_i_2),
        .I2(\n_0_wait_time_cnt[6]_i_4 ),
        .I3(n_0_tx_fsm_reset_done_int_i_3),
        .I4(\n_0_wait_time_cnt[6]_i_5 ),
        .I5(I4),
        .O(n_0_pll_reset_asserted_i_1));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT5 #(
    .INIT(32'hFFFFFF02)) 
     pll_reset_asserted_i_2
       (.I0(pll_reset_asserted),
        .I1(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[9] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[8] ),
        .O(n_0_pll_reset_asserted_i_2));
FDRE #(
    .INIT(1'b0)) 
     pll_reset_asserted_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_pll_reset_asserted_i_1),
        .Q(pll_reset_asserted),
        .R(\<const0> ));
LUT5 #(
    .INIT(32'h0000EEE2)) 
     reset_time_out_i_1
       (.I0(reset_time_out),
        .I1(n_0_reset_time_out_i_2),
        .I2(n_0_reset_time_out_i_3__0),
        .I3(n_0_reset_time_out_i_4),
        .I4(I4),
        .O(n_0_reset_time_out_i_1));
LUT6 #(
    .INIT(64'h8888CCCCFFCFCCCC)) 
     reset_time_out_i_2
       (.I0(init_wait_done),
        .I1(n_0_tx_fsm_reset_done_int_i_2),
        .I2(\n_0_wait_time_cnt[6]_i_4 ),
        .I3(cplllock_sync),
        .I4(\n_0_FSM_onehot_tx_state[10]_i_5 ),
        .I5(n_0_tx_fsm_reset_done_int_i_3),
        .O(n_0_reset_time_out_i_2));
(* SOFT_HLUTNM = "soft_lutpair27" *) 
   LUT4 #(
    .INIT(16'h3338)) 
     reset_time_out_i_3__0
       (.I0(init_wait_done),
        .I1(n_0_tx_fsm_reset_done_int_i_3),
        .I2(\n_0_FSM_onehot_tx_state_reg[9] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[8] ),
        .O(n_0_reset_time_out_i_3__0));
LUT5 #(
    .INIT(32'h30BB3088)) 
     reset_time_out_i_4
       (.I0(mmcm_lock_reclocked),
        .I1(\n_0_wait_time_cnt[6]_i_5 ),
        .I2(cplllock_sync),
        .I3(\n_0_wait_time_cnt[6]_i_4 ),
        .I4(txresetdone_s3),
        .O(n_0_reset_time_out_i_4));
FDRE #(
    .INIT(1'b0)) 
     reset_time_out_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_reset_time_out_i_1),
        .Q(reset_time_out),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000EEE8AAAA)) 
     run_phase_alignment_int_i_1
       (.I0(n_0_run_phase_alignment_int_reg),
        .I1(n_0_tx_fsm_reset_done_int_i_3),
        .I2(\n_0_FSM_onehot_tx_state_reg[9] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[8] ),
        .I4(n_0_tx_fsm_reset_done_int_i_2),
        .I5(I4),
        .O(n_0_run_phase_alignment_int_i_1));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_run_phase_alignment_int_i_1),
        .Q(n_0_run_phase_alignment_int_reg),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     run_phase_alignment_int_s3_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(data_out),
        .Q(run_phase_alignment_int_s3),
        .R(\<const0> ));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__19 sync_TXRESETDONE
       (.clk(independent_clock_bufg),
        .data_in(I1),
        .data_out(txresetdone_s2));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__22 sync_cplllock
       (.clk(independent_clock_bufg),
        .data_in(resetdone),
        .data_out(cplllock_sync));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__23 sync_cpllrefclklost
       (.clk(independent_clock_bufg),
        .data_in(CPLLREFCLKLOST),
        .data_out(NLW_sync_cpllrefclklost_data_out_UNCONNECTED));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__21 sync_mmcm_lock_reclocked
       (.clk(independent_clock_bufg),
        .data_in(mmcm_locked_out),
        .data_out(mmcm_lock_i));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__17 sync_run_phase_alignment_int
       (.clk(CLK),
        .data_in(n_0_run_phase_alignment_int_reg),
        .data_out(data_out));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__20 sync_time_out_wait_bypass
       (.clk(independent_clock_bufg),
        .data_in(n_0_time_out_wait_bypass_reg),
        .data_out(time_out_wait_bypass_s2));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__18 sync_tx_fsm_reset_done_int
       (.clk(CLK),
        .data_in(O1),
        .data_out(tx_fsm_reset_done_int_s2));
(* SOFT_HLUTNM = "soft_lutpair32" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     time_out_2ms_i_1
       (.I0(time_out_2ms),
        .I1(n_0_time_out_2ms_i_2__0),
        .I2(reset_time_out),
        .O(n_0_time_out_2ms_i_1));
LUT6 #(
    .INIT(64'h0000000000000080)) 
     time_out_2ms_i_2__0
       (.I0(\n_0_time_out_counter[0]_i_5__0 ),
        .I1(n_0_time_out_2ms_i_3__0),
        .I2(time_out_counter_reg[9]),
        .I3(time_out_counter_reg[1]),
        .I4(time_out_counter_reg[2]),
        .I5(n_0_time_out_2ms_i_4),
        .O(n_0_time_out_2ms_i_2__0));
LUT5 #(
    .INIT(32'h00000001)) 
     time_out_2ms_i_3__0
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[14]),
        .O(n_0_time_out_2ms_i_3__0));
LUT3 #(
    .INIT(8'hFB)) 
     time_out_2ms_i_4
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[15]),
        .O(n_0_time_out_2ms_i_4));
FDRE #(
    .INIT(1'b0)) 
     time_out_2ms_reg
       (.C(independent_clock_bufg),
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
    .INIT(32'h00000008)) 
     time_out_500us_i_2
       (.I0(n_0_time_out_500us_i_3),
        .I1(n_0_time_out_500us_i_4),
        .I2(n_0_time_out_500us_i_5),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[14]),
        .O(n_0_time_out_500us_i_2));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'h02)) 
     time_out_500us_i_3
       (.I0(n_0_time_out_500us_i_6),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[1]),
        .O(n_0_time_out_500us_i_3));
LUT6 #(
    .INIT(64'h0000000000000080)) 
     time_out_500us_i_4
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[4]),
        .I5(time_out_counter_reg[0]),
        .O(n_0_time_out_500us_i_4));
LUT3 #(
    .INIT(8'hFB)) 
     time_out_500us_i_5
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[8]),
        .O(n_0_time_out_500us_i_5));
LUT6 #(
    .INIT(64'h0000000000040000)) 
     time_out_500us_i_6
       (.I0(time_out_counter_reg[18]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[9]),
        .I5(time_out_counter_reg[17]),
        .O(n_0_time_out_500us_i_6));
FDRE #(
    .INIT(1'b0)) 
     time_out_500us_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_time_out_500us_i_1),
        .Q(time_out_500us),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h0000000000008000)) 
     \time_out_counter[0]_i_10__0 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[18]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[6]),
        .I5(time_out_counter_reg[5]),
        .O(\n_0_time_out_counter[0]_i_10__0 ));
LUT5 #(
    .INIT(32'hFFFDFFFF)) 
     \time_out_counter[0]_i_1__0 
       (.I0(time_out_counter_reg[11]),
        .I1(time_out_counter_reg[15]),
        .I2(\n_0_time_out_counter[0]_i_3__0 ),
        .I3(\n_0_time_out_counter[0]_i_4 ),
        .I4(\n_0_time_out_counter[0]_i_5__0 ),
        .O(\n_0_time_out_counter[0]_i_1__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[8]),
        .I5(time_out_counter_reg[16]),
        .O(\n_0_time_out_counter[0]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair30" *) 
   LUT3 #(
    .INIT(8'hEF)) 
     \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[9]),
        .O(\n_0_time_out_counter[0]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT3 #(
    .INIT(8'h02)) 
     \time_out_counter[0]_i_5__0 
       (.I0(\n_0_time_out_counter[0]_i_10__0 ),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[0]),
        .O(\n_0_time_out_counter[0]_i_5__0 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[3]),
        .O(\n_0_time_out_counter[0]_i_6 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[2]),
        .O(\n_0_time_out_counter[0]_i_7 ));
LUT1 #(
    .INIT(2'h2)) 
     \time_out_counter[0]_i_8 
       (.I0(time_out_counter_reg[1]),
        .O(\n_0_time_out_counter[0]_i_8 ));
LUT1 #(
    .INIT(2'h1)) 
     \time_out_counter[0]_i_9 
       (.I0(time_out_counter_reg[0]),
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
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[0] 
       (.C(independent_clock_bufg),
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
        .S({\n_0_time_out_counter[0]_i_6 ,\n_0_time_out_counter[0]_i_7 ,\n_0_time_out_counter[0]_i_8 ,\n_0_time_out_counter[0]_i_9 }));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[10] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[11] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[12] 
       (.C(independent_clock_bufg),
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
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[13] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[14] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[15] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[12]_i_1 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[16] 
       (.C(independent_clock_bufg),
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
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[17] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[18] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[16]_i_1 ),
        .Q(time_out_counter_reg[18]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[0]_i_2 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[4] 
       (.C(independent_clock_bufg),
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
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_5_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[7] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_4_time_out_counter_reg[4]_i_1 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[8] 
       (.C(independent_clock_bufg),
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
(* counter = "12" *) 
   FDRE #(
    .INIT(1'b0)) 
     \time_out_counter_reg[9] 
       (.C(independent_clock_bufg),
        .CE(\n_0_time_out_counter[0]_i_1__0 ),
        .D(\n_6_time_out_counter_reg[8]_i_1 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
LUT6 #(
    .INIT(64'hFFFF000000010000)) 
     time_out_wait_bypass_i_1
       (.I0(n_0_time_out_wait_bypass_i_2),
        .I1(n_0_time_out_wait_bypass_i_3),
        .I2(n_0_time_out_wait_bypass_i_4),
        .I3(tx_fsm_reset_done_int_s3),
        .I4(run_phase_alignment_int_s3),
        .I5(n_0_time_out_wait_bypass_reg),
        .O(n_0_time_out_wait_bypass_i_1));
LUT5 #(
    .INIT(32'hBFFFFFFF)) 
     time_out_wait_bypass_i_2
       (.I0(wait_bypass_count_reg[15]),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[2]),
        .I3(wait_bypass_count_reg[16]),
        .I4(wait_bypass_count_reg[0]),
        .O(n_0_time_out_wait_bypass_i_2));
LUT6 #(
    .INIT(64'hFFFFFDFFFFFFFFFF)) 
     time_out_wait_bypass_i_3
       (.I0(wait_bypass_count_reg[9]),
        .I1(wait_bypass_count_reg[10]),
        .I2(wait_bypass_count_reg[13]),
        .I3(wait_bypass_count_reg[14]),
        .I4(wait_bypass_count_reg[11]),
        .I5(wait_bypass_count_reg[12]),
        .O(n_0_time_out_wait_bypass_i_3));
LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
     time_out_wait_bypass_i_4
       (.I0(wait_bypass_count_reg[4]),
        .I1(wait_bypass_count_reg[3]),
        .I2(wait_bypass_count_reg[8]),
        .I3(wait_bypass_count_reg[7]),
        .I4(wait_bypass_count_reg[5]),
        .I5(wait_bypass_count_reg[6]),
        .O(n_0_time_out_wait_bypass_i_4));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(n_0_time_out_wait_bypass_i_1),
        .Q(n_0_time_out_wait_bypass_reg),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     time_out_wait_bypass_s3_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT3 #(
    .INIT(8'h0E)) 
     time_tlock_max_i_1
       (.I0(time_tlock_max),
        .I1(n_0_time_tlock_max_i_2),
        .I2(reset_time_out),
        .O(n_0_time_tlock_max_i_1));
LUT6 #(
    .INIT(64'h0000002000000000)) 
     time_tlock_max_i_2
       (.I0(n_0_time_out_500us_i_3),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[13]),
        .I4(n_0_time_tlock_max_i_3),
        .I5(n_0_time_tlock_max_i_4__0),
        .O(n_0_time_tlock_max_i_2));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT2 #(
    .INIT(4'hE)) 
     time_tlock_max_i_3
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[4]),
        .O(n_0_time_tlock_max_i_3));
LUT6 #(
    .INIT(64'h0000000000040000)) 
     time_tlock_max_i_4__0
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[8]),
        .I4(time_out_counter_reg[5]),
        .I5(time_out_counter_reg[12]),
        .O(n_0_time_tlock_max_i_4__0));
FDRE #(
    .INIT(1'b0)) 
     time_tlock_max_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_time_tlock_max_i_1),
        .Q(time_tlock_max),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000AAAAEEEA)) 
     tx_fsm_reset_done_int_i_1
       (.I0(O1),
        .I1(n_0_tx_fsm_reset_done_int_i_2),
        .I2(\n_0_FSM_onehot_tx_state_reg[8] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[9] ),
        .I4(n_0_tx_fsm_reset_done_int_i_3),
        .I5(I4),
        .O(n_0_tx_fsm_reset_done_int_i_1));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     tx_fsm_reset_done_int_i_2
       (.I0(\n_0_FSM_onehot_tx_state_reg[6] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[7] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I5(\n_0_FSM_onehot_tx_state_reg[4] ),
        .O(n_0_tx_fsm_reset_done_int_i_2));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT5 #(
    .INIT(32'h00000001)) 
     tx_fsm_reset_done_int_i_3
       (.I0(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[7] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[9] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I4(\n_0_FSM_onehot_tx_state_reg[1] ),
        .O(n_0_tx_fsm_reset_done_int_i_3));
FDRE #(
    .INIT(1'b0)) 
     tx_fsm_reset_done_int_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(n_0_tx_fsm_reset_done_int_i_1),
        .Q(O1),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     tx_fsm_reset_done_int_s3_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(tx_fsm_reset_done_int_s2),
        .Q(tx_fsm_reset_done_int_s3),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     txresetdone_s3_reg
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(\<const0> ));
LUT1 #(
    .INIT(2'h1)) 
     \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3),
        .O(\n_0_wait_bypass_count[0]_i_1 ));
LUT4 #(
    .INIT(16'h00FE)) 
     \wait_bypass_count[0]_i_2 
       (.I0(n_0_time_out_wait_bypass_i_2),
        .I1(n_0_time_out_wait_bypass_i_3),
        .I2(n_0_time_out_wait_bypass_i_4),
        .I3(tx_fsm_reset_done_int_s3),
        .O(\n_0_wait_bypass_count[0]_i_2 ));
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
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[0] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(\<const0> ),
        .CO({\n_0_wait_bypass_count_reg[0]_i_3 ,\n_1_wait_bypass_count_reg[0]_i_3 ,\n_2_wait_bypass_count_reg[0]_i_3 ,\n_3_wait_bypass_count_reg[0]_i_3 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const1> }),
        .O({\n_4_wait_bypass_count_reg[0]_i_3 ,\n_5_wait_bypass_count_reg[0]_i_3 ,\n_6_wait_bypass_count_reg[0]_i_3 ,\n_7_wait_bypass_count_reg[0]_i_3 }),
        .S({\n_0_wait_bypass_count[0]_i_4 ,\n_0_wait_bypass_count[0]_i_5 ,\n_0_wait_bypass_count[0]_i_6 ,\n_0_wait_bypass_count[0]_i_7 }));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[10] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[11] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[12] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[8]_i_1 ),
        .CO({\n_0_wait_bypass_count_reg[12]_i_1 ,\n_1_wait_bypass_count_reg[12]_i_1 ,\n_2_wait_bypass_count_reg[12]_i_1 ,\n_3_wait_bypass_count_reg[12]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wait_bypass_count_reg[12]_i_1 ,\n_5_wait_bypass_count_reg[12]_i_1 ,\n_6_wait_bypass_count_reg[12]_i_1 ,\n_7_wait_bypass_count_reg[12]_i_1 }),
        .S({\n_0_wait_bypass_count[12]_i_2 ,\n_0_wait_bypass_count[12]_i_3 ,\n_0_wait_bypass_count[12]_i_4 ,\n_0_wait_bypass_count[12]_i_5 }));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[13] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[13]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[14] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[14]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[15] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[12]_i_1 ),
        .Q(wait_bypass_count_reg[15]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[16] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[16]_i_1 ),
        .Q(wait_bypass_count_reg[16]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
CARRY4 \wait_bypass_count_reg[16]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[12]_i_1 ),
        .CO(\NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED [3:1],\n_7_wait_bypass_count_reg[16]_i_1 }),
        .S({\<const0> ,\<const0> ,\<const0> ,\n_0_wait_bypass_count[16]_i_2 }));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[1] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[2] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[3] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[0]_i_3 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[4] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[0]_i_3 ),
        .CO({\n_0_wait_bypass_count_reg[4]_i_1 ,\n_1_wait_bypass_count_reg[4]_i_1 ,\n_2_wait_bypass_count_reg[4]_i_1 ,\n_3_wait_bypass_count_reg[4]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wait_bypass_count_reg[4]_i_1 ,\n_5_wait_bypass_count_reg[4]_i_1 ,\n_6_wait_bypass_count_reg[4]_i_1 ,\n_7_wait_bypass_count_reg[4]_i_1 }),
        .S({\n_0_wait_bypass_count[4]_i_2 ,\n_0_wait_bypass_count[4]_i_3 ,\n_0_wait_bypass_count[4]_i_4 ,\n_0_wait_bypass_count[4]_i_5 }));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[5] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[6] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_5_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[7] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_4_wait_bypass_count_reg[4]_i_1 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[8] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_7_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\n_0_wait_bypass_count_reg[4]_i_1 ),
        .CO({\n_0_wait_bypass_count_reg[8]_i_1 ,\n_1_wait_bypass_count_reg[8]_i_1 ,\n_2_wait_bypass_count_reg[8]_i_1 ,\n_3_wait_bypass_count_reg[8]_i_1 }),
        .CYINIT(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .O({\n_4_wait_bypass_count_reg[8]_i_1 ,\n_5_wait_bypass_count_reg[8]_i_1 ,\n_6_wait_bypass_count_reg[8]_i_1 ,\n_7_wait_bypass_count_reg[8]_i_1 }),
        .S({\n_0_wait_bypass_count[8]_i_2 ,\n_0_wait_bypass_count[8]_i_3 ,\n_0_wait_bypass_count[8]_i_4 ,\n_0_wait_bypass_count[8]_i_5 }));
(* counter = "14" *) 
   FDRE \wait_bypass_count_reg[9] 
       (.C(CLK),
        .CE(\n_0_wait_bypass_count[0]_i_2 ),
        .D(\n_6_wait_bypass_count_reg[8]_i_1 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\n_0_wait_bypass_count[0]_i_1 ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \wait_time_cnt[0]_i_1 
       (.I0(wait_time_cnt_reg__0[0]),
        .O(wait_time_cnt0[0]));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT2 #(
    .INIT(4'h9)) 
     \wait_time_cnt[1]_i_1 
       (.I0(wait_time_cnt_reg__0[0]),
        .I1(wait_time_cnt_reg__0[1]),
        .O(\n_0_wait_time_cnt[1]_i_1 ));
LUT3 #(
    .INIT(8'hA9)) 
     \wait_time_cnt[2]_i_1 
       (.I0(wait_time_cnt_reg__0[2]),
        .I1(wait_time_cnt_reg__0[1]),
        .I2(wait_time_cnt_reg__0[0]),
        .O(wait_time_cnt0[2]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT4 #(
    .INIT(16'hAAA9)) 
     \wait_time_cnt[3]_i_1 
       (.I0(wait_time_cnt_reg__0[3]),
        .I1(wait_time_cnt_reg__0[2]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[1]),
        .O(wait_time_cnt0[3]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT5 #(
    .INIT(32'hAAAAAAA9)) 
     \wait_time_cnt[4]_i_1 
       (.I0(wait_time_cnt_reg__0[4]),
        .I1(wait_time_cnt_reg__0[3]),
        .I2(wait_time_cnt_reg__0[1]),
        .I3(wait_time_cnt_reg__0[0]),
        .I4(wait_time_cnt_reg__0[2]),
        .O(wait_time_cnt0[4]));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
     \wait_time_cnt[5]_i_1 
       (.I0(wait_time_cnt_reg__0[5]),
        .I1(wait_time_cnt_reg__0[4]),
        .I2(wait_time_cnt_reg__0[2]),
        .I3(wait_time_cnt_reg__0[0]),
        .I4(wait_time_cnt_reg__0[1]),
        .I5(wait_time_cnt_reg__0[3]),
        .O(wait_time_cnt0[5]));
LUT5 #(
    .INIT(32'h01010100)) 
     \wait_time_cnt[6]_i_1 
       (.I0(n_0_tx_fsm_reset_done_int_i_3),
        .I1(\n_0_FSM_onehot_tx_state_reg[8] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[9] ),
        .I3(\n_0_wait_time_cnt[6]_i_4 ),
        .I4(\n_0_wait_time_cnt[6]_i_5 ),
        .O(clear));
LUT2 #(
    .INIT(4'hB)) 
     \wait_time_cnt[6]_i_2 
       (.I0(wait_time_cnt_reg__0[6]),
        .I1(\n_0_wait_time_cnt[6]_i_6 ),
        .O(\n_0_wait_time_cnt[6]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair38" *) 
   LUT2 #(
    .INIT(4'h6)) 
     \wait_time_cnt[6]_i_3 
       (.I0(wait_time_cnt_reg__0[6]),
        .I1(\n_0_wait_time_cnt[6]_i_7 ),
        .O(wait_time_cnt0[6]));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT4 #(
    .INIT(16'h0001)) 
     \wait_time_cnt[6]_i_4 
       (.I0(\n_0_FSM_onehot_tx_state_reg[7] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[6] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[5] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[4] ),
        .O(\n_0_wait_time_cnt[6]_i_4 ));
LUT4 #(
    .INIT(16'h0001)) 
     \wait_time_cnt[6]_i_5 
       (.I0(\n_0_FSM_onehot_tx_state_reg[3] ),
        .I1(\n_0_FSM_onehot_tx_state_reg[2] ),
        .I2(\n_0_FSM_onehot_tx_state_reg[7] ),
        .I3(\n_0_FSM_onehot_tx_state_reg[6] ),
        .O(\n_0_wait_time_cnt[6]_i_5 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \wait_time_cnt[6]_i_6 
       (.I0(wait_time_cnt_reg__0[1]),
        .I1(wait_time_cnt_reg__0[0]),
        .I2(wait_time_cnt_reg__0[2]),
        .I3(wait_time_cnt_reg__0[3]),
        .I4(wait_time_cnt_reg__0[4]),
        .I5(wait_time_cnt_reg__0[5]),
        .O(\n_0_wait_time_cnt[6]_i_6 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \wait_time_cnt[6]_i_7 
       (.I0(wait_time_cnt_reg__0[4]),
        .I1(wait_time_cnt_reg__0[2]),
        .I2(wait_time_cnt_reg__0[0]),
        .I3(wait_time_cnt_reg__0[1]),
        .I4(wait_time_cnt_reg__0[3]),
        .I5(wait_time_cnt_reg__0[5]),
        .O(\n_0_wait_time_cnt[6]_i_7 ));
(* counter = "13" *) 
   FDRE \wait_time_cnt_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(wait_time_cnt0[0]),
        .Q(wait_time_cnt_reg__0[0]),
        .R(clear));
(* counter = "13" *) 
   FDRE \wait_time_cnt_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(\n_0_wait_time_cnt[1]_i_1 ),
        .Q(wait_time_cnt_reg__0[1]),
        .R(clear));
(* counter = "13" *) 
   FDSE \wait_time_cnt_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(wait_time_cnt0[2]),
        .Q(wait_time_cnt_reg__0[2]),
        .S(clear));
(* counter = "13" *) 
   FDRE \wait_time_cnt_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(wait_time_cnt0[3]),
        .Q(wait_time_cnt_reg__0[3]),
        .R(clear));
(* counter = "13" *) 
   FDRE \wait_time_cnt_reg[4] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(wait_time_cnt0[4]),
        .Q(wait_time_cnt_reg__0[4]),
        .R(clear));
(* counter = "13" *) 
   FDSE \wait_time_cnt_reg[5] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(wait_time_cnt0[5]),
        .Q(wait_time_cnt_reg__0[5]),
        .S(clear));
(* counter = "13" *) 
   FDSE \wait_time_cnt_reg[6] 
       (.C(independent_clock_bufg),
        .CE(\n_0_wait_time_cnt[6]_i_2 ),
        .D(wait_time_cnt0[6]),
        .Q(wait_time_cnt_reg__0[6]),
        .S(clear));
endmodule

module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_block
   (resetdone,
    gt0_drprdy_out,
    gt0_eyescandataerror_out,
    txn,
    txp,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxprbserr_out,
    txoutclk,
    gt0_drpdo_out,
    gt0_txbufstatus_out,
    gt0_rxbufstatus_out,
    gt0_rxmonitorout_out,
    gt0_dmonitorout_out,
    gt0_txresetdone_out,
    gt0_rxresetdone_out,
    gmii_rx_er,
    status_vector,
    gt0_rxnotintable_out,
    gt0_rxdisperr_out,
    gt0_rxchariscomma_out,
    gt0_rxcharisk_out,
    gmii_rx_dv,
    O1,
    gmii_rxd,
    I1,
    CLK,
    independent_clock_bufg,
    gt0_drpclk_in,
    gt0_drpen_in,
    gt0_drpwe_in,
    gt0_eyescanreset_in,
    gt0_eyescantrigger_in,
    gtrefclk_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gt0_rxbufreset_in,
    gt0_rxdfeagcovrden_in,
    gt0_rxdfelpmreset_in,
    gt0_rxlpmen_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxpolarity_in,
    gt0_rxprbscntreset_in,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txpolarity_in,
    gt0_txprbsforceerr_in,
    gt0_drpdi_in,
    gt0_rxmonitorsel_in,
    gt0_loopback_in,
    gt0_rxprbssel_in,
    gt0_txprbssel_in,
    gt0_txdiffctrl_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_drpaddr_in,
    mmcm_locked_out,
    gmii_tx_en,
    gmii_tx_er,
    I2,
    Q,
    gmii_txd,
    signal_detect,
    configuration_vector);
  output resetdone;
  output gt0_drprdy_out;
  output gt0_eyescandataerror_out;
  output txn;
  output txp;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output gt0_rxprbserr_out;
  output txoutclk;
  output [15:0]gt0_drpdo_out;
  output [1:0]gt0_txbufstatus_out;
  output [2:0]gt0_rxbufstatus_out;
  output [6:0]gt0_rxmonitorout_out;
  output [7:0]gt0_dmonitorout_out;
  output gt0_txresetdone_out;
  output gt0_rxresetdone_out;
  output gmii_rx_er;
  output [6:0]status_vector;
  output [0:0]gt0_rxnotintable_out;
  output [0:0]gt0_rxdisperr_out;
  output [0:0]gt0_rxchariscomma_out;
  output [0:0]gt0_rxcharisk_out;
  output gmii_rx_dv;
  output O1;
  output [7:0]gmii_rxd;
  input I1;
  input CLK;
  input independent_clock_bufg;
  input gt0_drpclk_in;
  input gt0_drpen_in;
  input gt0_drpwe_in;
  input gt0_eyescanreset_in;
  input gt0_eyescantrigger_in;
  input gtrefclk_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input gt0_rxbufreset_in;
  input gt0_rxdfeagcovrden_in;
  input gt0_rxdfelpmreset_in;
  input gt0_rxlpmen_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxpolarity_in;
  input gt0_rxprbscntreset_in;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  input gt0_txpolarity_in;
  input gt0_txprbsforceerr_in;
  input [15:0]gt0_drpdi_in;
  input [1:0]gt0_rxmonitorsel_in;
  input [2:0]gt0_loopback_in;
  input [2:0]gt0_rxprbssel_in;
  input [2:0]gt0_txprbssel_in;
  input [3:0]gt0_txdiffctrl_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input [8:0]gt0_drpaddr_in;
  input mmcm_locked_out;
  input gmii_tx_en;
  input gmii_tx_er;
  input I2;
  input [0:0]Q;
  input [7:0]gmii_txd;
  input signal_detect;
  input [2:0]configuration_vector;

  wire CLK;
  wire I1;
  wire I2;
  wire O1;
  wire [0:0]Q;
  wire [2:0]configuration_vector;
  wire encommaalign;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire [2:0]gt0_loopback_in;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire [0:0]gt0_rxchariscomma_out;
  wire [0:0]gt0_rxcharisk_out;
  wire gt0_rxcommadet_out;
  wire gt0_rxdfeagcovrden_in;
  wire gt0_rxdfelpmreset_in;
  wire [0:0]gt0_rxdisperr_out;
  wire gt0_rxlpmen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire [0:0]gt0_rxnotintable_out;
  wire gt0_rxpcsreset_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire gt0_rxresetdone_out;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txpcsreset_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gt0_txresetdone_out;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire n_16_gig_ethernet_pcs_pma_0_core;
  wire n_26_gig_ethernet_pcs_pma_0_core;
  wire n_27_gig_ethernet_pcs_pma_0_core;
  wire n_28_gig_ethernet_pcs_pma_0_core;
  wire n_29_gig_ethernet_pcs_pma_0_core;
  wire n_30_gig_ethernet_pcs_pma_0_core;
  wire n_31_gig_ethernet_pcs_pma_0_core;
  wire n_32_gig_ethernet_pcs_pma_0_core;
  wire n_33_gig_ethernet_pcs_pma_0_core;
  wire powerdown;
  wire resetdone;
  wire rxbuferr;
  wire [1:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire rxn;
  wire rxp;
  wire rxreset;
  wire signal_detect;
  wire [6:0]status_vector;
  wire toggle;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txreset;

gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_v14_1__parameterized0 gig_ethernet_pcs_pma_0_core
       (.D({n_26_gig_ethernet_pcs_pma_0_core,n_27_gig_ethernet_pcs_pma_0_core,n_28_gig_ethernet_pcs_pma_0_core,n_29_gig_ethernet_pcs_pma_0_core,n_30_gig_ethernet_pcs_pma_0_core,n_31_gig_ethernet_pcs_pma_0_core,n_32_gig_ethernet_pcs_pma_0_core,n_33_gig_ethernet_pcs_pma_0_core}),
        .I1(I1),
        .I2(I2),
        .O1(n_16_gig_ethernet_pcs_pma_0_core),
        .O3(rxdata),
        .O4(rxclkcorcnt),
        .SR(O1),
        .configuration_vector(configuration_vector),
        .encommaalign(encommaalign),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_rxchariscomma_out(gt0_rxchariscomma_out),
        .gt0_rxcharisk_out(gt0_rxcharisk_out),
        .gt0_rxdisperr_out(gt0_rxdisperr_out),
        .gt0_rxnotintable_out(gt0_rxnotintable_out),
        .powerdown(powerdown),
        .rxbuferr(rxbuferr),
        .rxreset(rxreset),
        .signal_detect(signal_detect),
        .status_vector(status_vector),
        .toggle(toggle),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txreset(txreset));
gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_transceiver transceiver_inst
       (.CLK(CLK),
        .D({n_26_gig_ethernet_pcs_pma_0_core,n_27_gig_ethernet_pcs_pma_0_core,n_28_gig_ethernet_pcs_pma_0_core,n_29_gig_ethernet_pcs_pma_0_core,n_30_gig_ethernet_pcs_pma_0_core,n_31_gig_ethernet_pcs_pma_0_core,n_32_gig_ethernet_pcs_pma_0_core,n_33_gig_ethernet_pcs_pma_0_core}),
        .I1(I1),
        .I2(n_16_gig_ethernet_pcs_pma_0_core),
        .O1(gt0_txresetdone_out),
        .O2(gt0_rxresetdone_out),
        .O3(rxdata),
        .O4(rxclkcorcnt),
        .Q(Q),
        .encommaalign(encommaalign),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxchariscomma_out(gt0_rxchariscomma_out),
        .gt0_rxcharisk_out(gt0_rxcharisk_out),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdfeagcovrden_in(gt0_rxdfeagcovrden_in),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxdisperr_out(gt0_rxdisperr_out),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxnotintable_out(gt0_rxnotintable_out),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(mmcm_locked_out),
        .powerdown(powerdown),
        .resetdone(resetdone),
        .rxbuferr(rxbuferr),
        .rxn(rxn),
        .rxp(rxp),
        .rxreset(rxreset),
        .status_vector(status_vector[1]),
        .toggle(toggle),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp),
        .txreset(txreset));
endmodule

module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_clocking
   (AS,
    mmcm_locked,
    O1,
    gtrefclk_out,
    rxuserclk2,
    userclk2,
    reset,
    gtrefclk_p,
    gtrefclk_n,
    txoutclk);
  output [0:0]AS;
  output mmcm_locked;
  output O1;
  output gtrefclk_out;
  output rxuserclk2;
  output userclk2;
  input reset;
  input gtrefclk_p;
  input gtrefclk_n;
  input txoutclk;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]AS;
  wire O1;
  wire clkfbout;
  wire clkout0;
  wire clkout1;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire mmcm_locked;
  wire reset;
  wire rxuserclk2;
  wire txoutclk;
  wire txoutclk_bufg;
  wire userclk2;
  wire NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED;
  wire NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED;
  wire NLW_mmcm_adv_inst_DRDY_UNCONNECTED;
  wire NLW_mmcm_adv_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_mmcm_adv_inst_DO_UNCONNECTED;

GND GND
       (.G(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \MGT_RESET.RESET_INT_i_1 
       (.I0(reset),
        .I1(mmcm_locked),
        .O(O1));
VCC VCC
       (.P(\<const1> ));
(* box_type = "PRIMITIVE" *) 
   BUFG bufg_txoutclk
       (.I(txoutclk),
        .O(txoutclk_bufg));
(* box_type = "PRIMITIVE" *) 
   BUFG bufg_userclk
       (.I(clkout1),
        .O(rxuserclk2));
(* box_type = "PRIMITIVE" *) 
   BUFG bufg_userclk2
       (.I(clkout0),
        .O(userclk2));
(* box_type = "PRIMITIVE" *) 
   IBUFDS_GTE2 #(
    .CLKCM_CFG("TRUE"),
    .CLKRCV_TRST("TRUE"),
    .CLKSWING_CFG(2'b11)) 
     ibufds_gtrefclk
       (.CEB(\<const0> ),
        .I(gtrefclk_p),
        .IB(gtrefclk_n),
        .O(gtrefclk_out),
        .ODIV2(NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED));
(* box_type = "PRIMITIVE" *) 
   MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(16.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(16.000000),
    .CLKIN2_PERIOD(0.000000),
    .CLKOUT0_DIVIDE_F(8.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(16),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .IS_CLKINSEL_INVERTED(1'b0),
    .IS_PSEN_INVERTED(1'b0),
    .IS_PSINCDEC_INVERTED(1'b0),
    .IS_PWRDWN_INVERTED(1'b0),
    .IS_RST_INVERTED(1'b0),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.000000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
     mmcm_adv_inst
       (.CLKFBIN(clkfbout),
        .CLKFBOUT(clkfbout),
        .CLKFBOUTB(NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(txoutclk_bufg),
        .CLKIN2(\<const0> ),
        .CLKINSEL(\<const1> ),
        .CLKINSTOPPED(NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(clkout0),
        .CLKOUT0B(NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(clkout1),
        .CLKOUT1B(NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED),
        .DADDR({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DCLK(\<const0> ),
        .DEN(\<const0> ),
        .DI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DO(NLW_mmcm_adv_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_mmcm_adv_inst_DRDY_UNCONNECTED),
        .DWE(\<const0> ),
        .LOCKED(mmcm_locked),
        .PSCLK(\<const0> ),
        .PSDONE(NLW_mmcm_adv_inst_PSDONE_UNCONNECTED),
        .PSEN(\<const0> ),
        .PSINCDEC(\<const0> ),
        .PWRDWN(\<const0> ),
        .RST(reset));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \pma_reset_pipe[3]_i_1 
       (.I0(reset),
        .I1(mmcm_locked),
        .O(AS));
endmodule

module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_gt_common
   (gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gtrefclk_out,
    independent_clock_bufg,
    Q);
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;
  input gtrefclk_out;
  input independent_clock_bufg;
  input [0:0]Q;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]Q;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire n_2_gtxe2_common_0_i;
  wire n_5_gtxe2_common_0_i;
  wire NLW_gtxe2_common_0_i_DRPRDY_UNCONNECTED;
  wire NLW_gtxe2_common_0_i_QPLLFBCLKLOST_UNCONNECTED;
  wire NLW_gtxe2_common_0_i_REFCLKOUTMONITOR_UNCONNECTED;
  wire [15:0]NLW_gtxe2_common_0_i_DRPDO_UNCONNECTED;
  wire [7:0]NLW_gtxe2_common_0_i_QPLLDMONITOR_UNCONNECTED;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* box_type = "PRIMITIVE" *) 
   GTXE2_COMMON #(
    .BIAS_CFG(64'h0000040000001000),
    .COMMON_CFG(32'h00000000),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_QPLLLOCKDETCLK_INVERTED(1'b0),
    .QPLL_CFG(27'h06801C1),
    .QPLL_CLKOUT_CFG(4'b0000),
    .QPLL_COARSE_FREQ_OVRD(6'b010000),
    .QPLL_COARSE_FREQ_OVRD_EN(1'b0),
    .QPLL_CP(10'b0000011111),
    .QPLL_CP_MONITOR_EN(1'b0),
    .QPLL_DMONITOR_SEL(1'b0),
    .QPLL_FBDIV(10'b0000100000),
    .QPLL_FBDIV_MONITOR_EN(1'b0),
    .QPLL_FBDIV_RATIO(1'b1),
    .QPLL_INIT_CFG(24'h000006),
    .QPLL_LOCK_CFG(16'h21E8),
    .QPLL_LPF(4'b1111),
    .QPLL_REFCLK_DIV(1),
    .SIM_QPLLREFCLK_SEL(3'b001),
    .SIM_RESET_SPEEDUP("FALSE"),
    .SIM_VERSION("4.0")) 
     gtxe2_common_0_i
       (.BGBYPASSB(\<const1> ),
        .BGMONITORENB(\<const1> ),
        .BGPDB(\<const1> ),
        .BGRCALOVRD({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DRPADDR({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DRPCLK(\<const0> ),
        .DRPDI({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .DRPDO(NLW_gtxe2_common_0_i_DRPDO_UNCONNECTED[15:0]),
        .DRPEN(\<const0> ),
        .DRPRDY(NLW_gtxe2_common_0_i_DRPRDY_UNCONNECTED),
        .DRPWE(\<const0> ),
        .GTGREFCLK(\<const0> ),
        .GTNORTHREFCLK0(\<const0> ),
        .GTNORTHREFCLK1(\<const0> ),
        .GTREFCLK0(gtrefclk_out),
        .GTREFCLK1(\<const0> ),
        .GTSOUTHREFCLK0(\<const0> ),
        .GTSOUTHREFCLK1(\<const0> ),
        .PMARSVD({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .QPLLDMONITOR(NLW_gtxe2_common_0_i_QPLLDMONITOR_UNCONNECTED[7:0]),
        .QPLLFBCLKLOST(NLW_gtxe2_common_0_i_QPLLFBCLKLOST_UNCONNECTED),
        .QPLLLOCK(n_2_gtxe2_common_0_i),
        .QPLLLOCKDETCLK(independent_clock_bufg),
        .QPLLLOCKEN(\<const1> ),
        .QPLLOUTCLK(gt0_qplloutclk_out),
        .QPLLOUTREFCLK(gt0_qplloutrefclk_out),
        .QPLLOUTRESET(\<const0> ),
        .QPLLPD(\<const1> ),
        .QPLLREFCLKLOST(n_5_gtxe2_common_0_i),
        .QPLLREFCLKSEL({\<const0> ,\<const0> ,\<const1> }),
        .QPLLRESET(Q),
        .QPLLRSVD1({\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> ,\<const0> }),
        .QPLLRSVD2({\<const1> ,\<const1> ,\<const1> ,\<const1> ,\<const1> }),
        .RCALENB(\<const1> ),
        .REFCLKOUTMONITOR(NLW_gtxe2_common_0_i_REFCLKOUTMONITOR_UNCONNECTED));
endmodule

(* INITIALISE = "2'b11" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync
   (reset_in,
    clk,
    reset_out);
  input reset_in;
  input clk;
  output reset_out;

  wire \<const0> ;
  wire VCC_1;
  wire clk;
  wire reset_in;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync1
       (.C(clk),
        .CE(VCC_1),
        .D(\<const0> ),
        .PRE(reset_in),
        .Q(reset_sync_reg1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync2
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg1),
        .PRE(reset_in),
        .Q(reset_sync_reg2));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync3
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg2),
        .PRE(reset_in),
        .Q(reset_sync_reg3));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync4
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg3),
        .PRE(reset_in),
        .Q(reset_sync_reg4));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync5
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg4),
        .PRE(reset_in),
        .Q(reset_sync_reg5));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync6
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg5),
        .PRE(\<const0> ),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) (* INITIALISE = "2'b11" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__3
   (reset_in,
    clk,
    reset_out);
  input reset_in;
  input clk;
  output reset_out;

  wire \<const0> ;
  wire VCC_1;
  wire clk;
  wire reset_in;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync1
       (.C(clk),
        .CE(VCC_1),
        .D(\<const0> ),
        .PRE(reset_in),
        .Q(reset_sync_reg1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync2
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg1),
        .PRE(reset_in),
        .Q(reset_sync_reg2));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync3
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg2),
        .PRE(reset_in),
        .Q(reset_sync_reg3));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync4
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg3),
        .PRE(reset_in),
        .Q(reset_sync_reg4));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync5
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg4),
        .PRE(reset_in),
        .Q(reset_sync_reg5));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync6
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg5),
        .PRE(\<const0> ),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_reset_sync" *) (* INITIALISE = "2'b11" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__4
   (reset_in,
    clk,
    reset_out);
  input reset_in;
  input clk;
  output reset_out;

  wire \<const0> ;
  wire VCC_1;
  wire clk;
  wire reset_in;
  wire reset_out;
  wire reset_sync_reg1;
  wire reset_sync_reg2;
  wire reset_sync_reg3;
  wire reset_sync_reg4;
  wire reset_sync_reg5;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync1
       (.C(clk),
        .CE(VCC_1),
        .D(\<const0> ),
        .PRE(reset_in),
        .Q(reset_sync_reg1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync2
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg1),
        .PRE(reset_in),
        .Q(reset_sync_reg2));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync3
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg2),
        .PRE(reset_in),
        .Q(reset_sync_reg3));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync4
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg3),
        .PRE(reset_in),
        .Q(reset_sync_reg4));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync5
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg4),
        .PRE(reset_in),
        .Q(reset_sync_reg5));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FDP" *) 
   (* box_type = "PRIMITIVE" *) 
   FDPE #(
    .INIT(1'b1)) 
     reset_sync6
       (.C(clk),
        .CE(VCC_1),
        .D(reset_sync_reg5),
        .PRE(\<const0> ),
        .Q(reset_out));
endmodule

module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_resets
   (Q,
    independent_clock_bufg,
    AS);
  output [0:0]Q;
  input independent_clock_bufg;
  input [0:0]AS;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]AS;
  wire [0:0]Q;
  wire independent_clock_bufg;
  wire [2:0]pma_reset_pipe;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* ASYNC_REG *) 
   FDPE \pma_reset_pipe_reg[0] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(\<const0> ),
        .PRE(AS),
        .Q(pma_reset_pipe[0]));
(* ASYNC_REG *) 
   FDPE \pma_reset_pipe_reg[1] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(pma_reset_pipe[0]),
        .PRE(AS),
        .Q(pma_reset_pipe[1]));
(* ASYNC_REG *) 
   FDPE \pma_reset_pipe_reg[2] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(pma_reset_pipe[1]),
        .PRE(AS),
        .Q(pma_reset_pipe[2]));
(* ASYNC_REG *) 
   FDPE \pma_reset_pipe_reg[3] 
       (.C(independent_clock_bufg),
        .CE(\<const1> ),
        .D(pma_reset_pipe[2]),
        .PRE(AS),
        .Q(Q));
endmodule

(* downgradeipidentifiedwarnings = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_support
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    txp,
    txn,
    rxp,
    rxn,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    pma_reset_out,
    mmcm_locked_out,
    resetdone,
    independent_clock_bufg,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    status_vector,
    reset,
    gt0_drpaddr_in,
    gt0_drpclk_in,
    gt0_drpdi_in,
    gt0_drpdo_out,
    gt0_drpen_in,
    gt0_drprdy_out,
    gt0_drpwe_in,
    gt0_txpmareset_in,
    gt0_txpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxpcsreset_in,
    gt0_rxbufreset_in,
    gt0_rxpmaresetdone_out,
    gt0_rxbufstatus_out,
    gt0_txbufstatus_out,
    gt0_dmonitorout_out,
    gt0_rxchariscomma_out,
    gt0_rxcharisk_out,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_txpolarity_in,
    gt0_txdiffctrl_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_rxpolarity_in,
    gt0_rxdfelpmreset_in,
    gt0_rxlpmen_in,
    gt0_txprbssel_in,
    gt0_txprbsforceerr_in,
    gt0_rxprbscntreset_in,
    gt0_rxprbserr_out,
    gt0_rxprbssel_in,
    gt0_loopback_in,
    gt0_txresetdone_out,
    gt0_rxresetdone_out,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gt0_eyescanreset_in,
    gt0_eyescandataerror_out,
    gt0_eyescantrigger_in,
    gt0_rxcdrhold_in,
    gt0_rxdfeagcovrden_in,
    gt0_rxmonitorout_out,
    gt0_rxmonitorsel_in,
    signal_detect,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  output pma_reset_out;
  output mmcm_locked_out;
  output resetdone;
  input independent_clock_bufg;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output [15:0]status_vector;
  input reset;
  input [8:0]gt0_drpaddr_in;
  input gt0_drpclk_in;
  input [15:0]gt0_drpdi_in;
  output [15:0]gt0_drpdo_out;
  input gt0_drpen_in;
  output gt0_drprdy_out;
  input gt0_drpwe_in;
  input gt0_txpmareset_in;
  input gt0_txpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxpcsreset_in;
  input gt0_rxbufreset_in;
  output gt0_rxpmaresetdone_out;
  output [2:0]gt0_rxbufstatus_out;
  output [1:0]gt0_txbufstatus_out;
  output [16:0]gt0_dmonitorout_out;
  output [1:0]gt0_rxchariscomma_out;
  output [1:0]gt0_rxcharisk_out;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  input gt0_txpolarity_in;
  input [3:0]gt0_txdiffctrl_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input gt0_rxpolarity_in;
  input gt0_rxdfelpmreset_in;
  input gt0_rxlpmen_in;
  input [2:0]gt0_txprbssel_in;
  input gt0_txprbsforceerr_in;
  input gt0_rxprbscntreset_in;
  output gt0_rxprbserr_out;
  input [2:0]gt0_rxprbssel_in;
  input [2:0]gt0_loopback_in;
  output gt0_txresetdone_out;
  output gt0_rxresetdone_out;
  output [1:0]gt0_rxdisperr_out;
  output [1:0]gt0_rxnotintable_out;
  input gt0_eyescanreset_in;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_rxcdrhold_in;
  input gt0_rxdfeagcovrden_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  input signal_detect;
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;

  wire \<const0> ;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire [7:0]\^gt0_dmonitorout_out ;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire [2:0]gt0_loopback_in;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire gt0_rxcdrhold_in;
  wire [0:0]\^gt0_rxchariscomma_out ;
  wire [0:0]\^gt0_rxcharisk_out ;
  wire gt0_rxcommadet_out;
  wire gt0_rxdfeagcovrden_in;
  wire gt0_rxdfelpmreset_in;
  wire [0:0]\^gt0_rxdisperr_out ;
  wire gt0_rxlpmen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire [0:0]\^gt0_rxnotintable_out ;
  wire gt0_rxpcsreset_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire gt0_rxresetdone_out;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txpcsreset_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gt0_txresetdone_out;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire n_0_core_clocking_i;
  wire n_2_core_clocking_i;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire rxuserclk2_out;
  wire signal_detect;
  wire [6:0]\^status_vector ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk2_out;

  assign gt0_dmonitorout_out[16] = \<const0> ;
  assign gt0_dmonitorout_out[15] = \<const0> ;
  assign gt0_dmonitorout_out[14] = \<const0> ;
  assign gt0_dmonitorout_out[13] = \<const0> ;
  assign gt0_dmonitorout_out[12] = \<const0> ;
  assign gt0_dmonitorout_out[11] = \<const0> ;
  assign gt0_dmonitorout_out[10] = \<const0> ;
  assign gt0_dmonitorout_out[9] = \<const0> ;
  assign gt0_dmonitorout_out[8] = \<const0> ;
  assign gt0_dmonitorout_out[7:0] = \^gt0_dmonitorout_out [7:0];
  assign gt0_rxchariscomma_out[1] = \<const0> ;
  assign gt0_rxchariscomma_out[0] = \^gt0_rxchariscomma_out [0];
  assign gt0_rxcharisk_out[1] = \<const0> ;
  assign gt0_rxcharisk_out[0] = \^gt0_rxcharisk_out [0];
  assign gt0_rxdisperr_out[1] = \<const0> ;
  assign gt0_rxdisperr_out[0] = \^gt0_rxdisperr_out [0];
  assign gt0_rxnotintable_out[1] = \<const0> ;
  assign gt0_rxnotintable_out[0] = \^gt0_rxnotintable_out [0];
  assign gt0_rxpmaresetdone_out = \<const0> ;
  assign rxuserclk_out = rxuserclk2_out;
  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  assign userclk_out = rxuserclk2_out;
GND GND
       (.G(\<const0> ));
gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_clocking core_clocking_i
       (.AS(n_0_core_clocking_i),
        .O1(n_2_core_clocking_i),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .mmcm_locked(mmcm_locked_out),
        .reset(reset),
        .rxuserclk2(rxuserclk2_out),
        .txoutclk(txoutclk),
        .userclk2(userclk2_out));
gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_gt_common core_gt_common_i
       (.Q(pma_reset_out),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg));
gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_resets core_resets_i
       (.AS(n_0_core_clocking_i),
        .Q(pma_reset_out),
        .independent_clock_bufg(independent_clock_bufg));
gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_block pcs_pma_block_i
       (.CLK(rxuserclk2_out),
        .I1(userclk2_out),
        .I2(n_2_core_clocking_i),
        .O1(gmii_isolate),
        .Q(pma_reset_out),
        .configuration_vector(configuration_vector[3:1]),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_dmonitorout_out(\^gt0_dmonitorout_out ),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxchariscomma_out(\^gt0_rxchariscomma_out ),
        .gt0_rxcharisk_out(\^gt0_rxcharisk_out ),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdfeagcovrden_in(gt0_rxdfeagcovrden_in),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxdisperr_out(\^gt0_rxdisperr_out ),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxnotintable_out(\^gt0_rxnotintable_out ),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(mmcm_locked_out),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .signal_detect(signal_detect),
        .status_vector(\^status_vector ),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__17
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__18
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__19
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__20
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__21
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__22
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__23
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__24
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__25
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__26
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__27
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__28
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__29
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__30
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__31
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_0_sync_block" *) (* INITIALISE = "2'b00" *) (* dont_touch = "yes" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__32
   (clk,
    data_in,
    data_out);
  input clk;
  input data_in;
  output data_out;

  wire GND_1;
  wire VCC_1;
  wire clk;
  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;

GND GND
       (.G(GND_1));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(clk),
        .CE(VCC_1),
        .D(data_in),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(clk),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
endmodule

module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_transceiver
   (resetdone,
    gt0_drprdy_out,
    gt0_eyescandataerror_out,
    txn,
    txp,
    gt0_rxbyteisaligned_out,
    gt0_rxbyterealign_out,
    gt0_rxcommadet_out,
    gt0_rxprbserr_out,
    txoutclk,
    gt0_drpdo_out,
    gt0_txbufstatus_out,
    gt0_rxbufstatus_out,
    gt0_rxmonitorout_out,
    gt0_dmonitorout_out,
    O1,
    O2,
    gt0_rxnotintable_out,
    gt0_rxdisperr_out,
    toggle,
    gt0_rxchariscomma_out,
    gt0_rxcharisk_out,
    rxbuferr,
    txbuferr,
    O3,
    O4,
    encommaalign,
    CLK,
    txreset,
    rxreset,
    independent_clock_bufg,
    gt0_drpclk_in,
    gt0_drpen_in,
    gt0_drpwe_in,
    gt0_eyescanreset_in,
    gt0_eyescantrigger_in,
    gtrefclk_out,
    rxn,
    rxp,
    gt0_qplloutclk_out,
    gt0_qplloutrefclk_out,
    gt0_rxbufreset_in,
    gt0_rxdfeagcovrden_in,
    gt0_rxdfelpmreset_in,
    gt0_rxlpmen_in,
    gt0_rxpcsreset_in,
    gt0_rxpmareset_in,
    gt0_rxpolarity_in,
    gt0_rxprbscntreset_in,
    gt0_txpcsreset_in,
    gt0_txpmareset_in,
    gt0_txpolarity_in,
    gt0_txprbsforceerr_in,
    gt0_drpdi_in,
    gt0_rxmonitorsel_in,
    gt0_loopback_in,
    gt0_rxprbssel_in,
    gt0_txprbssel_in,
    gt0_txdiffctrl_in,
    gt0_txpostcursor_in,
    gt0_txprecursor_in,
    gt0_drpaddr_in,
    mmcm_locked_out,
    txchardispmode,
    I1,
    txchardispval,
    txcharisk,
    status_vector,
    powerdown,
    Q,
    I2,
    D);
  output resetdone;
  output gt0_drprdy_out;
  output gt0_eyescandataerror_out;
  output txn;
  output txp;
  output gt0_rxbyteisaligned_out;
  output gt0_rxbyterealign_out;
  output gt0_rxcommadet_out;
  output gt0_rxprbserr_out;
  output txoutclk;
  output [15:0]gt0_drpdo_out;
  output [1:0]gt0_txbufstatus_out;
  output [2:0]gt0_rxbufstatus_out;
  output [6:0]gt0_rxmonitorout_out;
  output [7:0]gt0_dmonitorout_out;
  output O1;
  output O2;
  output [0:0]gt0_rxnotintable_out;
  output [0:0]gt0_rxdisperr_out;
  output toggle;
  output [0:0]gt0_rxchariscomma_out;
  output [0:0]gt0_rxcharisk_out;
  output rxbuferr;
  output txbuferr;
  output [7:0]O3;
  output [1:0]O4;
  input encommaalign;
  input CLK;
  input txreset;
  input rxreset;
  input independent_clock_bufg;
  input gt0_drpclk_in;
  input gt0_drpen_in;
  input gt0_drpwe_in;
  input gt0_eyescanreset_in;
  input gt0_eyescantrigger_in;
  input gtrefclk_out;
  input rxn;
  input rxp;
  input gt0_qplloutclk_out;
  input gt0_qplloutrefclk_out;
  input gt0_rxbufreset_in;
  input gt0_rxdfeagcovrden_in;
  input gt0_rxdfelpmreset_in;
  input gt0_rxlpmen_in;
  input gt0_rxpcsreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxpolarity_in;
  input gt0_rxprbscntreset_in;
  input gt0_txpcsreset_in;
  input gt0_txpmareset_in;
  input gt0_txpolarity_in;
  input gt0_txprbsforceerr_in;
  input [15:0]gt0_drpdi_in;
  input [1:0]gt0_rxmonitorsel_in;
  input [2:0]gt0_loopback_in;
  input [2:0]gt0_rxprbssel_in;
  input [2:0]gt0_txprbssel_in;
  input [3:0]gt0_txdiffctrl_in;
  input [4:0]gt0_txpostcursor_in;
  input [4:0]gt0_txprecursor_in;
  input [8:0]gt0_drpaddr_in;
  input mmcm_locked_out;
  input txchardispmode;
  input I1;
  input txchardispval;
  input txcharisk;
  input [0:0]status_vector;
  input powerdown;
  input [0:0]Q;
  input I2;
  input [7:0]D;

  wire \<const0> ;
  wire \<const1> ;
  wire CLK;
  wire [7:0]D;
  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire [7:0]O3;
  wire [1:0]O4;
  wire [0:0]Q;
  wire data_out;
  wire data_valid_reg;
  wire encommaalign;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire [2:0]gt0_loopback_in;
  wire gt0_qplloutclk_out;
  wire gt0_qplloutrefclk_out;
  wire gt0_rxbufreset_in;
  wire [2:0]gt0_rxbufstatus_out;
  wire gt0_rxbyteisaligned_out;
  wire gt0_rxbyterealign_out;
  wire [0:0]gt0_rxchariscomma_out;
  wire [1:0]gt0_rxchariscomma_out_3;
  wire [0:0]gt0_rxcharisk_out;
  wire [1:0]gt0_rxcharisk_out_2;
  wire [1:0]gt0_rxclkcorcnt_out;
  wire gt0_rxcommadet_out;
  wire [15:0]gt0_rxdata_out;
  wire gt0_rxdfeagcovrden_in;
  wire gt0_rxdfelpmreset_in;
  wire [0:0]gt0_rxdisperr_out;
  wire [1:0]gt0_rxdisperr_out_1;
  wire gt0_rxlpmen_in;
  wire gt0_rxmcommaalignen_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire [0:0]gt0_rxnotintable_out;
  wire [1:0]gt0_rxnotintable_out_0;
  wire gt0_rxpcsreset_in;
  wire gt0_rxpmareset_in;
  wire gt0_rxpolarity_in;
  wire gt0_rxprbscntreset_in;
  wire gt0_rxprbserr_out;
  wire [2:0]gt0_rxprbssel_in;
  wire [1:0]gt0_txbufstatus_out;
  wire [3:0]gt0_txdiffctrl_in;
  wire gt0_txpcsreset_in;
  wire gt0_txpmareset_in;
  wire gt0_txpolarity_in;
  wire [4:0]gt0_txpostcursor_in;
  wire gt0_txprbsforceerr_in;
  wire [2:0]gt0_txprbssel_in;
  wire [4:0]gt0_txprecursor_in;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire mmcm_locked_out;
  wire \n_0_rxbufstatus_reg_reg[2] ;
  wire n_0_rxchariscomma_i_1;
  wire n_0_rxcharisk_i_1;
  wire \n_0_rxdata[0]_i_1 ;
  wire \n_0_rxdata[1]_i_1 ;
  wire \n_0_rxdata[2]_i_1 ;
  wire \n_0_rxdata[3]_i_1 ;
  wire \n_0_rxdata[4]_i_1 ;
  wire \n_0_rxdata[5]_i_1 ;
  wire \n_0_rxdata[6]_i_1 ;
  wire \n_0_rxdata[7]_i_1 ;
  wire n_0_rxdisperr_i_1;
  wire n_0_rxnotintable_i_1;
  wire n_0_toggle_i_1;
  wire \n_0_txbufstatus_reg_reg[1] ;
  wire \n_0_txchardispmode_double_reg[0] ;
  wire \n_0_txchardispmode_double_reg[1] ;
  wire \n_0_txchardispval_double_reg[0] ;
  wire \n_0_txchardispval_double_reg[1] ;
  wire \n_0_txcharisk_double_reg[0] ;
  wire \n_0_txcharisk_double_reg[1] ;
  wire powerdown;
  wire reset_out;
  wire reset_out0_in;
  wire resetdone;
  wire rxbuferr;
  wire [1:0]rxchariscomma_double;
  wire [1:0]rxchariscomma_reg__0;
  wire [1:0]rxcharisk_double;
  wire [1:0]rxcharisk_reg__0;
  wire [15:0]rxdata_double;
  wire [15:0]rxdata_reg;
  wire [1:0]rxdisperr_double;
  wire [1:0]rxdisperr_reg__0;
  wire rxn;
  wire [1:0]rxnotintable_double;
  wire [1:0]rxnotintable_reg__0;
  wire rxp;
  wire rxpowerdown;
  wire rxpowerdown_double;
  wire rxpowerdown_reg__0;
  wire rxreset;
  wire [0:0]status_vector;
  wire toggle;
  wire txbuferr;
  wire txchardispmode;
  wire [1:0]txchardispmode_int;
  wire txchardispmode_reg;
  wire txchardispval;
  wire [1:0]txchardispval_int;
  wire txchardispval_reg;
  wire txcharisk;
  wire [1:0]txcharisk_int;
  wire txcharisk_reg;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire [7:0]txdata_reg;
  wire txn;
  wire txoutclk;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire txreset;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
FDRE data_valid_reg_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(status_vector),
        .Q(data_valid_reg),
        .R(\<const0> ));
gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD gtwizard_inst
       (.CLK(CLK),
        .D(gt0_rxclkcorcnt_out),
        .I1(txchardispmode_int),
        .I2(txchardispval_int),
        .I3(txcharisk_int),
        .I4(Q),
        .O1(gt0_rxdata_out),
        .O2(gt0_rxchariscomma_out_3),
        .O3(gt0_rxcharisk_out_2),
        .O4(gt0_rxdisperr_out_1),
        .O5(gt0_rxnotintable_out_0),
        .O6(O1),
        .O7(O2),
        .Q(txdata_int),
        .RXPD(rxpowerdown),
        .TXPD(txpowerdown),
        .data_out(data_out),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_loopback_in(gt0_loopback_in),
        .gt0_qplloutclk_out(gt0_qplloutclk_out),
        .gt0_qplloutrefclk_out(gt0_qplloutrefclk_out),
        .gt0_rxbufreset_in(gt0_rxbufreset_in),
        .gt0_rxbufstatus_out(gt0_rxbufstatus_out),
        .gt0_rxbyteisaligned_out(gt0_rxbyteisaligned_out),
        .gt0_rxbyterealign_out(gt0_rxbyterealign_out),
        .gt0_rxcommadet_out(gt0_rxcommadet_out),
        .gt0_rxdfeagcovrden_in(gt0_rxdfeagcovrden_in),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxlpmen_in(gt0_rxlpmen_in),
        .gt0_rxmcommaalignen_in(gt0_rxmcommaalignen_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxpcsreset_in(gt0_rxpcsreset_in),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxpolarity_in(gt0_rxpolarity_in),
        .gt0_rxprbscntreset_in(gt0_rxprbscntreset_in),
        .gt0_rxprbserr_out(gt0_rxprbserr_out),
        .gt0_rxprbssel_in(gt0_rxprbssel_in),
        .gt0_txbufstatus_out(gt0_txbufstatus_out),
        .gt0_txdiffctrl_in(gt0_txdiffctrl_in),
        .gt0_txpcsreset_in(gt0_txpcsreset_in),
        .gt0_txpmareset_in(gt0_txpmareset_in),
        .gt0_txpolarity_in(gt0_txpolarity_in),
        .gt0_txpostcursor_in(gt0_txpostcursor_in),
        .gt0_txprbsforceerr_in(gt0_txprbsforceerr_in),
        .gt0_txprbssel_in(gt0_txprbssel_in),
        .gt0_txprecursor_in(gt0_txprecursor_in),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(mmcm_locked_out),
        .reset_out(reset_out),
        .reset_out0_in(reset_out0_in),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .txn(txn),
        .txoutclk(txoutclk),
        .txp(txp));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b11" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__3 reclock_encommaalign
       (.clk(CLK),
        .reset_in(encommaalign),
        .reset_out(gt0_rxmcommaalignen_in));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b11" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync reclock_rxreset
       (.clk(CLK),
        .reset_in(rxreset),
        .reset_out(reset_out0_in));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b11" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__4 reclock_txreset
       (.clk(CLK),
        .reset_in(txreset),
        .reset_out(reset_out));
FDRE rxbuferr_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_rxbufstatus_reg_reg[2] ),
        .Q(rxbuferr),
        .R(\<const0> ));
FDRE \rxbufstatus_reg_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxbufstatus_out[2]),
        .Q(\n_0_rxbufstatus_reg_reg[2] ),
        .R(\<const0> ));
FDRE \rxchariscomma_double_reg[0] 
       (.C(I1),
        .CE(toggle),
        .D(rxchariscomma_reg__0[0]),
        .Q(rxchariscomma_double[0]),
        .R(rxreset));
FDRE \rxchariscomma_double_reg[1] 
       (.C(I1),
        .CE(toggle),
        .D(rxchariscomma_reg__0[1]),
        .Q(rxchariscomma_double[1]),
        .R(rxreset));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxchariscomma_i_1
       (.I0(rxchariscomma_double[1]),
        .I1(toggle),
        .I2(rxchariscomma_double[0]),
        .O(n_0_rxchariscomma_i_1));
FDRE rxchariscomma_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_rxchariscomma_i_1),
        .Q(gt0_rxchariscomma_out),
        .R(rxreset));
FDRE \rxchariscomma_reg_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxchariscomma_out_3[0]),
        .Q(rxchariscomma_reg__0[0]),
        .R(\<const0> ));
FDRE \rxchariscomma_reg_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxchariscomma_out_3[1]),
        .Q(rxchariscomma_reg__0[1]),
        .R(\<const0> ));
FDRE \rxcharisk_double_reg[0] 
       (.C(I1),
        .CE(toggle),
        .D(rxcharisk_reg__0[0]),
        .Q(rxcharisk_double[0]),
        .R(rxreset));
FDRE \rxcharisk_double_reg[1] 
       (.C(I1),
        .CE(toggle),
        .D(rxcharisk_reg__0[1]),
        .Q(rxcharisk_double[1]),
        .R(rxreset));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxcharisk_i_1
       (.I0(rxcharisk_double[1]),
        .I1(toggle),
        .I2(rxcharisk_double[0]),
        .O(n_0_rxcharisk_i_1));
FDRE rxcharisk_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_rxcharisk_i_1),
        .Q(gt0_rxcharisk_out),
        .R(rxreset));
FDRE \rxcharisk_reg_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxcharisk_out_2[0]),
        .Q(rxcharisk_reg__0[0]),
        .R(\<const0> ));
FDRE \rxcharisk_reg_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxcharisk_out_2[1]),
        .Q(rxcharisk_reg__0[1]),
        .R(\<const0> ));
FDRE \rxclkcorcnt_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(gt0_rxclkcorcnt_out[0]),
        .Q(O4[0]),
        .R(\<const0> ));
FDRE \rxclkcorcnt_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(gt0_rxclkcorcnt_out[1]),
        .Q(O4[1]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \rxdata[0]_i_1 
       (.I0(rxdata_double[8]),
        .I1(toggle),
        .I2(rxdata_double[0]),
        .O(\n_0_rxdata[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair45" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \rxdata[1]_i_1 
       (.I0(rxdata_double[9]),
        .I1(toggle),
        .I2(rxdata_double[1]),
        .O(\n_0_rxdata[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \rxdata[2]_i_1 
       (.I0(rxdata_double[10]),
        .I1(toggle),
        .I2(rxdata_double[2]),
        .O(\n_0_rxdata[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \rxdata[3]_i_1 
       (.I0(rxdata_double[11]),
        .I1(toggle),
        .I2(rxdata_double[3]),
        .O(\n_0_rxdata[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair44" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \rxdata[4]_i_1 
       (.I0(rxdata_double[12]),
        .I1(toggle),
        .I2(rxdata_double[4]),
        .O(\n_0_rxdata[4]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair43" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \rxdata[5]_i_1 
       (.I0(rxdata_double[13]),
        .I1(toggle),
        .I2(rxdata_double[5]),
        .O(\n_0_rxdata[5]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \rxdata[6]_i_1 
       (.I0(rxdata_double[14]),
        .I1(toggle),
        .I2(rxdata_double[6]),
        .O(\n_0_rxdata[6]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair42" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \rxdata[7]_i_1 
       (.I0(rxdata_double[15]),
        .I1(toggle),
        .I2(rxdata_double[7]),
        .O(\n_0_rxdata[7]_i_1 ));
FDRE \rxdata_double_reg[0] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[0]),
        .Q(rxdata_double[0]),
        .R(rxreset));
FDRE \rxdata_double_reg[10] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[10]),
        .Q(rxdata_double[10]),
        .R(rxreset));
FDRE \rxdata_double_reg[11] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[11]),
        .Q(rxdata_double[11]),
        .R(rxreset));
FDRE \rxdata_double_reg[12] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[12]),
        .Q(rxdata_double[12]),
        .R(rxreset));
FDRE \rxdata_double_reg[13] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[13]),
        .Q(rxdata_double[13]),
        .R(rxreset));
FDRE \rxdata_double_reg[14] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[14]),
        .Q(rxdata_double[14]),
        .R(rxreset));
FDRE \rxdata_double_reg[15] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[15]),
        .Q(rxdata_double[15]),
        .R(rxreset));
FDRE \rxdata_double_reg[1] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[1]),
        .Q(rxdata_double[1]),
        .R(rxreset));
FDRE \rxdata_double_reg[2] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[2]),
        .Q(rxdata_double[2]),
        .R(rxreset));
FDRE \rxdata_double_reg[3] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[3]),
        .Q(rxdata_double[3]),
        .R(rxreset));
FDRE \rxdata_double_reg[4] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[4]),
        .Q(rxdata_double[4]),
        .R(rxreset));
FDRE \rxdata_double_reg[5] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[5]),
        .Q(rxdata_double[5]),
        .R(rxreset));
FDRE \rxdata_double_reg[6] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[6]),
        .Q(rxdata_double[6]),
        .R(rxreset));
FDRE \rxdata_double_reg[7] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[7]),
        .Q(rxdata_double[7]),
        .R(rxreset));
FDRE \rxdata_double_reg[8] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[8]),
        .Q(rxdata_double[8]),
        .R(rxreset));
FDRE \rxdata_double_reg[9] 
       (.C(I1),
        .CE(toggle),
        .D(rxdata_reg[9]),
        .Q(rxdata_double[9]),
        .R(rxreset));
FDRE \rxdata_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_rxdata[0]_i_1 ),
        .Q(O3[0]),
        .R(rxreset));
FDRE \rxdata_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_rxdata[1]_i_1 ),
        .Q(O3[1]),
        .R(rxreset));
FDRE \rxdata_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_rxdata[2]_i_1 ),
        .Q(O3[2]),
        .R(rxreset));
FDRE \rxdata_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_rxdata[3]_i_1 ),
        .Q(O3[3]),
        .R(rxreset));
FDRE \rxdata_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_rxdata[4]_i_1 ),
        .Q(O3[4]),
        .R(rxreset));
FDRE \rxdata_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_rxdata[5]_i_1 ),
        .Q(O3[5]),
        .R(rxreset));
FDRE \rxdata_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_rxdata[6]_i_1 ),
        .Q(O3[6]),
        .R(rxreset));
FDRE \rxdata_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_rxdata[7]_i_1 ),
        .Q(O3[7]),
        .R(rxreset));
FDRE \rxdata_reg_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[0]),
        .Q(rxdata_reg[0]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[10]),
        .Q(rxdata_reg[10]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[11]),
        .Q(rxdata_reg[11]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[12] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[12]),
        .Q(rxdata_reg[12]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[13] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[13]),
        .Q(rxdata_reg[13]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[14] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[14]),
        .Q(rxdata_reg[14]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[15] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[15]),
        .Q(rxdata_reg[15]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[1]),
        .Q(rxdata_reg[1]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[2]),
        .Q(rxdata_reg[2]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[3]),
        .Q(rxdata_reg[3]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[4]),
        .Q(rxdata_reg[4]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[5]),
        .Q(rxdata_reg[5]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[6]),
        .Q(rxdata_reg[6]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[7]),
        .Q(rxdata_reg[7]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[8]),
        .Q(rxdata_reg[8]),
        .R(\<const0> ));
FDRE \rxdata_reg_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdata_out[9]),
        .Q(rxdata_reg[9]),
        .R(\<const0> ));
FDRE \rxdisperr_double_reg[0] 
       (.C(I1),
        .CE(toggle),
        .D(rxdisperr_reg__0[0]),
        .Q(rxdisperr_double[0]),
        .R(rxreset));
FDRE \rxdisperr_double_reg[1] 
       (.C(I1),
        .CE(toggle),
        .D(rxdisperr_reg__0[1]),
        .Q(rxdisperr_double[1]),
        .R(rxreset));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxdisperr_i_1
       (.I0(rxdisperr_double[1]),
        .I1(toggle),
        .I2(rxdisperr_double[0]),
        .O(n_0_rxdisperr_i_1));
FDRE rxdisperr_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_rxdisperr_i_1),
        .Q(gt0_rxdisperr_out),
        .R(rxreset));
FDRE \rxdisperr_reg_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdisperr_out_1[0]),
        .Q(rxdisperr_reg__0[0]),
        .R(\<const0> ));
FDRE \rxdisperr_reg_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxdisperr_out_1[1]),
        .Q(rxdisperr_reg__0[1]),
        .R(\<const0> ));
FDRE \rxnotintable_double_reg[0] 
       (.C(I1),
        .CE(toggle),
        .D(rxnotintable_reg__0[0]),
        .Q(rxnotintable_double[0]),
        .R(rxreset));
FDRE \rxnotintable_double_reg[1] 
       (.C(I1),
        .CE(toggle),
        .D(rxnotintable_reg__0[1]),
        .Q(rxnotintable_double[1]),
        .R(rxreset));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     rxnotintable_i_1
       (.I0(rxnotintable_double[1]),
        .I1(toggle),
        .I2(rxnotintable_double[0]),
        .O(n_0_rxnotintable_i_1));
FDRE rxnotintable_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_rxnotintable_i_1),
        .Q(gt0_rxnotintable_out),
        .R(rxreset));
FDRE \rxnotintable_reg_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxnotintable_out_0[0]),
        .Q(rxnotintable_reg__0[0]),
        .R(\<const0> ));
FDRE \rxnotintable_reg_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_rxnotintable_out_0[1]),
        .Q(rxnotintable_reg__0[1]),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     rxpowerdown_double_reg
       (.C(I1),
        .CE(toggle),
        .D(rxpowerdown_reg__0),
        .Q(rxpowerdown_double),
        .R(rxreset));
FDRE #(
    .INIT(1'b0)) 
     rxpowerdown_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(rxpowerdown_double),
        .Q(rxpowerdown),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     rxpowerdown_reg_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(powerdown),
        .Q(rxpowerdown_reg__0),
        .R(rxreset));
(* DONT_TOUCH *) 
   (* INITIALISE = "2'b00" *) 
   gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0 sync_block_data_valid
       (.clk(independent_clock_bufg),
        .data_in(data_valid_reg),
        .data_out(data_out));
LUT1 #(
    .INIT(2'h1)) 
     toggle_i_1
       (.I0(toggle),
        .O(n_0_toggle_i_1));
FDRE toggle_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(n_0_toggle_i_1),
        .Q(toggle),
        .R(txreset));
FDRE txbuferr_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(\n_0_txbufstatus_reg_reg[1] ),
        .Q(txbuferr),
        .R(\<const0> ));
FDRE \txbufstatus_reg_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(gt0_txbufstatus_out[1]),
        .Q(\n_0_txbufstatus_reg_reg[1] ),
        .R(\<const0> ));
FDRE \txchardispmode_double_reg[0] 
       (.C(I1),
        .CE(I2),
        .D(txchardispmode_reg),
        .Q(\n_0_txchardispmode_double_reg[0] ),
        .R(txreset));
FDRE \txchardispmode_double_reg[1] 
       (.C(I1),
        .CE(I2),
        .D(txchardispmode),
        .Q(\n_0_txchardispmode_double_reg[1] ),
        .R(txreset));
FDRE \txchardispmode_int_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\n_0_txchardispmode_double_reg[0] ),
        .Q(txchardispmode_int[0]),
        .R(\<const0> ));
FDRE \txchardispmode_int_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\n_0_txchardispmode_double_reg[1] ),
        .Q(txchardispmode_int[1]),
        .R(\<const0> ));
FDRE txchardispmode_reg_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(txchardispmode),
        .Q(txchardispmode_reg),
        .R(txreset));
FDRE \txchardispval_double_reg[0] 
       (.C(I1),
        .CE(I2),
        .D(txchardispval_reg),
        .Q(\n_0_txchardispval_double_reg[0] ),
        .R(txreset));
FDRE \txchardispval_double_reg[1] 
       (.C(I1),
        .CE(I2),
        .D(txchardispval),
        .Q(\n_0_txchardispval_double_reg[1] ),
        .R(txreset));
FDRE \txchardispval_int_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\n_0_txchardispval_double_reg[0] ),
        .Q(txchardispval_int[0]),
        .R(\<const0> ));
FDRE \txchardispval_int_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\n_0_txchardispval_double_reg[1] ),
        .Q(txchardispval_int[1]),
        .R(\<const0> ));
FDRE txchardispval_reg_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(txchardispval),
        .Q(txchardispval_reg),
        .R(txreset));
FDRE \txcharisk_double_reg[0] 
       (.C(I1),
        .CE(I2),
        .D(txcharisk_reg),
        .Q(\n_0_txcharisk_double_reg[0] ),
        .R(txreset));
FDRE \txcharisk_double_reg[1] 
       (.C(I1),
        .CE(I2),
        .D(txcharisk),
        .Q(\n_0_txcharisk_double_reg[1] ),
        .R(txreset));
FDRE \txcharisk_int_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\n_0_txcharisk_double_reg[0] ),
        .Q(txcharisk_int[0]),
        .R(\<const0> ));
FDRE \txcharisk_int_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(\n_0_txcharisk_double_reg[1] ),
        .Q(txcharisk_int[1]),
        .R(\<const0> ));
FDRE txcharisk_reg_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(txcharisk),
        .Q(txcharisk_reg),
        .R(txreset));
FDRE \txdata_double_reg[0] 
       (.C(I1),
        .CE(I2),
        .D(txdata_reg[0]),
        .Q(txdata_double[0]),
        .R(txreset));
FDRE \txdata_double_reg[10] 
       (.C(I1),
        .CE(I2),
        .D(D[2]),
        .Q(txdata_double[10]),
        .R(txreset));
FDRE \txdata_double_reg[11] 
       (.C(I1),
        .CE(I2),
        .D(D[3]),
        .Q(txdata_double[11]),
        .R(txreset));
FDRE \txdata_double_reg[12] 
       (.C(I1),
        .CE(I2),
        .D(D[4]),
        .Q(txdata_double[12]),
        .R(txreset));
FDRE \txdata_double_reg[13] 
       (.C(I1),
        .CE(I2),
        .D(D[5]),
        .Q(txdata_double[13]),
        .R(txreset));
FDRE \txdata_double_reg[14] 
       (.C(I1),
        .CE(I2),
        .D(D[6]),
        .Q(txdata_double[14]),
        .R(txreset));
FDRE \txdata_double_reg[15] 
       (.C(I1),
        .CE(I2),
        .D(D[7]),
        .Q(txdata_double[15]),
        .R(txreset));
FDRE \txdata_double_reg[1] 
       (.C(I1),
        .CE(I2),
        .D(txdata_reg[1]),
        .Q(txdata_double[1]),
        .R(txreset));
FDRE \txdata_double_reg[2] 
       (.C(I1),
        .CE(I2),
        .D(txdata_reg[2]),
        .Q(txdata_double[2]),
        .R(txreset));
FDRE \txdata_double_reg[3] 
       (.C(I1),
        .CE(I2),
        .D(txdata_reg[3]),
        .Q(txdata_double[3]),
        .R(txreset));
FDRE \txdata_double_reg[4] 
       (.C(I1),
        .CE(I2),
        .D(txdata_reg[4]),
        .Q(txdata_double[4]),
        .R(txreset));
FDRE \txdata_double_reg[5] 
       (.C(I1),
        .CE(I2),
        .D(txdata_reg[5]),
        .Q(txdata_double[5]),
        .R(txreset));
FDRE \txdata_double_reg[6] 
       (.C(I1),
        .CE(I2),
        .D(txdata_reg[6]),
        .Q(txdata_double[6]),
        .R(txreset));
FDRE \txdata_double_reg[7] 
       (.C(I1),
        .CE(I2),
        .D(txdata_reg[7]),
        .Q(txdata_double[7]),
        .R(txreset));
FDRE \txdata_double_reg[8] 
       (.C(I1),
        .CE(I2),
        .D(D[0]),
        .Q(txdata_double[8]),
        .R(txreset));
FDRE \txdata_double_reg[9] 
       (.C(I1),
        .CE(I2),
        .D(D[1]),
        .Q(txdata_double[9]),
        .R(txreset));
FDRE \txdata_int_reg[0] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(\<const0> ));
FDRE \txdata_int_reg[10] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(\<const0> ));
FDRE \txdata_int_reg[11] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(\<const0> ));
FDRE \txdata_int_reg[12] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(\<const0> ));
FDRE \txdata_int_reg[13] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(\<const0> ));
FDRE \txdata_int_reg[14] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(\<const0> ));
FDRE \txdata_int_reg[15] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(\<const0> ));
FDRE \txdata_int_reg[1] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(\<const0> ));
FDRE \txdata_int_reg[2] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(\<const0> ));
FDRE \txdata_int_reg[3] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(\<const0> ));
FDRE \txdata_int_reg[4] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(\<const0> ));
FDRE \txdata_int_reg[5] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(\<const0> ));
FDRE \txdata_int_reg[6] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(\<const0> ));
FDRE \txdata_int_reg[7] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(\<const0> ));
FDRE \txdata_int_reg[8] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(\<const0> ));
FDRE \txdata_int_reg[9] 
       (.C(CLK),
        .CE(\<const1> ),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(\<const0> ));
FDRE \txdata_reg_reg[0] 
       (.C(I1),
        .CE(\<const1> ),
        .D(D[0]),
        .Q(txdata_reg[0]),
        .R(txreset));
FDRE \txdata_reg_reg[1] 
       (.C(I1),
        .CE(\<const1> ),
        .D(D[1]),
        .Q(txdata_reg[1]),
        .R(txreset));
FDRE \txdata_reg_reg[2] 
       (.C(I1),
        .CE(\<const1> ),
        .D(D[2]),
        .Q(txdata_reg[2]),
        .R(txreset));
FDRE \txdata_reg_reg[3] 
       (.C(I1),
        .CE(\<const1> ),
        .D(D[3]),
        .Q(txdata_reg[3]),
        .R(txreset));
FDRE \txdata_reg_reg[4] 
       (.C(I1),
        .CE(\<const1> ),
        .D(D[4]),
        .Q(txdata_reg[4]),
        .R(txreset));
FDRE \txdata_reg_reg[5] 
       (.C(I1),
        .CE(\<const1> ),
        .D(D[5]),
        .Q(txdata_reg[5]),
        .R(txreset));
FDRE \txdata_reg_reg[6] 
       (.C(I1),
        .CE(\<const1> ),
        .D(D[6]),
        .Q(txdata_reg[6]),
        .R(txreset));
FDRE \txdata_reg_reg[7] 
       (.C(I1),
        .CE(\<const1> ),
        .D(D[7]),
        .Q(txdata_reg[7]),
        .R(txreset));
FDRE #(
    .INIT(1'b0)) 
     txpowerdown_double_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(txpowerdown_reg__0),
        .Q(txpowerdown_double),
        .R(txreset));
FDRE #(
    .INIT(1'b0)) 
     txpowerdown_reg
       (.C(CLK),
        .CE(\<const1> ),
        .D(txpowerdown_double),
        .Q(txpowerdown),
        .R(\<const0> ));
FDRE #(
    .INIT(1'b0)) 
     txpowerdown_reg_reg
       (.C(I1),
        .CE(\<const1> ),
        .D(powerdown),
        .Q(txpowerdown_reg__0),
        .R(txreset));
endmodule

(* ORIG_REF_NAME = "gig_ethernet_pcs_pma_v14_1" *) 
module gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_v14_1__parameterized0
   (txreset,
    rxreset,
    gmii_rx_er,
    status_vector,
    txchardispmode,
    txcharisk,
    gmii_rx_dv,
    txchardispval,
    SR,
    powerdown,
    O1,
    encommaalign,
    gmii_rxd,
    D,
    I1,
    gmii_tx_en,
    gmii_tx_er,
    I2,
    txbuferr,
    rxbuferr,
    gt0_rxdisperr_out,
    gt0_rxnotintable_out,
    gmii_txd,
    gt0_rxcharisk_out,
    gt0_rxchariscomma_out,
    toggle,
    O3,
    signal_detect,
    configuration_vector,
    O4);
  output txreset;
  output rxreset;
  output gmii_rx_er;
  output [6:0]status_vector;
  output txchardispmode;
  output txcharisk;
  output gmii_rx_dv;
  output txchardispval;
  output [0:0]SR;
  output powerdown;
  output O1;
  output encommaalign;
  output [7:0]gmii_rxd;
  output [7:0]D;
  input I1;
  input gmii_tx_en;
  input gmii_tx_er;
  input I2;
  input txbuferr;
  input rxbuferr;
  input [0:0]gt0_rxdisperr_out;
  input [0:0]gt0_rxnotintable_out;
  input [7:0]gmii_txd;
  input [0:0]gt0_rxcharisk_out;
  input [0:0]gt0_rxchariscomma_out;
  input toggle;
  input [7:0]O3;
  input signal_detect;
  input [2:0]configuration_vector;
  input [1:0]O4;

  wire [7:0]D;
  wire I1;
  wire I2;
  wire O1;
  wire [7:0]O3;
  wire [1:0]O4;
  wire [0:0]SR;
  wire [2:0]configuration_vector;
  wire encommaalign;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire [0:0]gt0_rxchariscomma_out;
  wire [0:0]gt0_rxcharisk_out;
  wire [0:0]gt0_rxdisperr_out;
  wire [0:0]gt0_rxnotintable_out;
  wire powerdown;
  wire rxbuferr;
  wire rxreset;
  wire signal_detect;
  wire [6:0]status_vector;
  wire toggle;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire txreset;

gig_ethernet_pcs_pma_0GPCS_PMA_GEN gpcs_pma_inst
       (.D(D),
        .I1(I1),
        .I2(I2),
        .I3(O3),
        .I4(O4),
        .O1(rxreset),
        .O2(SR),
        .O3(powerdown),
        .O4(O1),
        .SS(txreset),
        .configuration_vector(configuration_vector),
        .encommaalign(encommaalign),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gt0_rxchariscomma_out(gt0_rxchariscomma_out),
        .gt0_rxcharisk_out(gt0_rxcharisk_out),
        .gt0_rxdisperr_out(gt0_rxdisperr_out),
        .gt0_rxnotintable_out(gt0_rxnotintable_out),
        .rxbuferr(rxbuferr),
        .signal_detect(signal_detect),
        .status_vector(status_vector),
        .toggle(toggle),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk));
endmodule

(* ORIG_REF_NAME = "sync_block" *) 
module gig_ethernet_pcs_pma_0sync_block__parameterized0
   (SIGNAL_DETECT_MOD,
    I1,
    signal_detect,
    I2);
  output SIGNAL_DETECT_MOD;
  input I1;
  input signal_detect;
  input I2;

  wire GND_1;
  wire I1;
  wire I2;
  wire SIGNAL_DETECT_MOD;
  wire VCC_1;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire signal_detect;

GND GND
       (.G(GND_1));
LUT2 #(
    .INIT(4'h2)) 
     SIGNAL_DETECT_REG_i_1
       (.I0(data_out),
        .I1(I1),
        .O(SIGNAL_DETECT_MOD));
VCC VCC
       (.P(VCC_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg1
       (.C(I2),
        .CE(VCC_1),
        .D(signal_detect),
        .Q(data_sync1),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg2
       (.C(I2),
        .CE(VCC_1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg3
       (.C(I2),
        .CE(VCC_1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg4
       (.C(I2),
        .CE(VCC_1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg5
       (.C(I2),
        .CE(VCC_1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(GND_1));
(* ASYNC_REG *) 
   (* SHREG_EXTRACT = "no" *) 
   (* XILINX_LEGACY_PRIM = "FD" *) 
   (* box_type = "PRIMITIVE" *) 
   FDRE #(
    .INIT(1'b0)) 
     data_sync_reg6
       (.C(I2),
        .CE(VCC_1),
        .D(data_sync5),
        .Q(data_out),
        .R(GND_1));
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
