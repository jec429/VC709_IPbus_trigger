// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:29:27 MST 2014
// Date        : Fri Apr 10 15:39:21 2015
// Host        : 0602-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/MargaretVC709/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_stub.v
// Design      : gig_ethernet_pcs_pma_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module gig_ethernet_pcs_pma_0(gtrefclk_p, gtrefclk_n, gtrefclk_out, txp, txn, rxp, rxn, resetdone, userclk_out, userclk2_out, rxuserclk_out, rxuserclk2_out, independent_clock_bufg, pma_reset_out, mmcm_locked_out, gmii_txd, gmii_tx_en, gmii_tx_er, gmii_rxd, gmii_rx_dv, gmii_rx_er, gmii_isolate, configuration_vector, an_interrupt, an_adv_config_vector, an_restart_config, status_vector, reset, signal_detect, gt0_qplloutclk_out, gt0_qplloutrefclk_out)
/* synthesis syn_black_box black_box_pad_pin="gtrefclk_p,gtrefclk_n,gtrefclk_out,txp,txn,rxp,rxn,resetdone,userclk_out,userclk2_out,rxuserclk_out,rxuserclk2_out,independent_clock_bufg,pma_reset_out,mmcm_locked_out,gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_dv,gmii_rx_er,gmii_isolate,configuration_vector[4:0],an_interrupt,an_adv_config_vector[15:0],an_restart_config,status_vector[15:0],reset,signal_detect,gt0_qplloutclk_out,gt0_qplloutrefclk_out" */;
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
  input independent_clock_bufg;
  output pma_reset_out;
  output mmcm_locked_out;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output an_interrupt;
  input [15:0]an_adv_config_vector;
  input an_restart_config;
  output [15:0]status_vector;
  input reset;
  input signal_detect;
  output gt0_qplloutclk_out;
  output gt0_qplloutrefclk_out;
endmodule
