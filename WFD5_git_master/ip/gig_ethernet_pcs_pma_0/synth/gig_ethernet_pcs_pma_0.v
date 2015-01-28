//------------------------------------------------------------------------------
// File       : gig_ethernet_pcs_pma_0.v
// Author     : Xilinx Inc.
//------------------------------------------------------------------------------
// (c) Copyright 2009 Xilinx, Inc. All rights reserved.
//
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
//
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
//
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 
// 
// 
//------------------------------------------------------------------------------
// Description: This Core Block Level wrapper connects the core to a  
//              Series-7 Transceiver.
//
//
//   ------------------------------------------------------------
//   |                      Core Block wrapper                  |
//   |                                                          |
//   |        ------------------          -----------------     |
//   |        |      Core      |          | Transceiver   |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
// ---------->| GMII           |--------->|           TXP |-------->
//   |        | Tx             |          |           TXN |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
//   |        |                |          |               |     |
//   |        | GMII           |          |           RXP |     |
// <----------| Rx             |<---------|           RXN |<--------
//   |        |                |          |               |     |
//   |        ------------------          -----------------     |
//   |                                                          |
//   ------------------------------------------------------------
//
//


`timescale 1 ps/1 ps
(* DowngradeIPIdentifiedWarnings="yes" *)

//------------------------------------------------------------------------------
// The module declaration for the Core Block wrapper.
//------------------------------------------------------------------------------

module gig_ethernet_pcs_pma_0  

   (
      // Transceiver Interface
      //----------------------


      input        gtrefclk_p,                // 125 MHz differential clock
      input        gtrefclk_n,                // 125 MHz differential clock
      output       gtrefclk_out,              // Very high quality 125MHz clock for GT transceiver.
      output       txp,                   // Differential +ve of serial transmission from PMA to PMD.
      output       txn,                   // Differential -ve of serial transmission from PMA to PMD.
      input        rxp,                   // Differential +ve for serial reception from PMD to PMA.
      input        rxn,                   // Differential -ve for serial reception from PMD to PMA.
      output       resetdone,                 // The GT transceiver has completed its reset cycle
      output       userclk_out,               // 125MHz global clock.
      output       userclk2_out,              // 125MHz global clock.
      output       rxuserclk_out,               // 125MHz global clock.
      output       rxuserclk2_out,              // 125MHz global clock.
      input        independent_clock_bufg,// 200MHz Independent clock,
      output       pma_reset_out,             // transceiver PMA reset signal
      output       mmcm_locked_out,           // MMCM Locked
      // GMII Interface
      //---------------
      input [7:0]  gmii_txd,              // Transmit data from client MAC.
      input        gmii_tx_en,            // Transmit control signal from client MAC.
      input        gmii_tx_er,            // Transmit control signal from client MAC.
      output [7:0] gmii_rxd,              // Received Data to client MAC.
      output       gmii_rx_dv,            // Received control signal to client MAC.
      output       gmii_rx_er,            // Received control signal to client MAC.
      output       gmii_isolate,          // Tristate control to electrically isolate GMII.

      // Management: Alternative to MDIO Interface
      //------------------------------------------

      input [4:0]  configuration_vector,  // Alternative to MDIO interface.

      // General IO's
      //-------------
      output [15:0] status_vector,         // Core status.
      input        reset,                 // Asynchronous reset for entire core
      input              gt0_txpmareset_in      ,
      input              gt0_txpcsreset_in,
      input              gt0_rxpmareset_in,
      input              gt0_rxpcsreset_in,
      input              gt0_rxbufreset_in,
      output             gt0_rxpmaresetdone_out ,
      output [2:0]       gt0_rxbufstatus_out    ,
      output [1:0]       gt0_txbufstatus_out    ,
      output [16:0]      gt0_dmonitorout_out     ,
      input   [8:0]      gt0_drpaddr_in,
      input              gt0_drpclk_in,
      input   [15:0]     gt0_drpdi_in,
      output  [15:0]     gt0_drpdo_out,
      input              gt0_drpen_in,
      output             gt0_drprdy_out,
      input              gt0_drpwe_in,
      output  [1:0]      gt0_rxchariscomma_out,
      output  [1:0]      gt0_rxcharisk_out,
      output             gt0_rxbyteisaligned_out,
      output             gt0_rxbyterealign_out,
      output             gt0_rxcommadet_out,
      input              gt0_txpolarity_in,
      input   [3:0]      gt0_txdiffctrl_in,
      input   [4:0]      gt0_txpostcursor_in,
      input   [4:0]      gt0_txprecursor_in,
      input              gt0_rxpolarity_in,
      input              gt0_rxdfelpmreset_in,
      input              gt0_rxdfeagcovrden_in,
      input              gt0_rxlpmen_in,
      input   [2:0]      gt0_txprbssel_in,
      input              gt0_txprbsforceerr_in,
      input              gt0_rxprbscntreset_in,
      output             gt0_rxprbserr_out,
      input   [2:0]      gt0_rxprbssel_in,
      input   [2:0]      gt0_loopback_in,
      output             gt0_txresetdone_out,
      output             gt0_rxresetdone_out,
      output  [1:0]      gt0_rxdisperr_out,
      output  [1:0]      gt0_rxnotintable_out,
      input              gt0_eyescanreset_in,
      output             gt0_eyescandataerror_out,
      input              gt0_eyescantrigger_in,
      input              gt0_rxcdrhold_in,
      output  [6:0]      gt0_rxmonitorout_out,
      input   [1:0]      gt0_rxmonitorsel_in,
    
      input        signal_detect,          // Input from PMD to indicate presence of optical input.
      output            gt0_qplloutclk_out,
      output            gt0_qplloutrefclk_out
     
     

   );



(* CORE_GENERATION_INFO = "gig_ethernet_pcs_pma_0,gig_ethernet_pcs_pma_v14_1,{x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gig_ethernet_pcs_pma,x_ipVersion=14.1,x_ipLanguage=VERILOG,c_family=kintex7,c_component_name=gig_ethernet_pcs_pma_0,c_is_sgmii=false,c_use_transceiver=true,c_use_tbi=false,c_use_lvds=false,c_has_an=false,c_has_mdio=false,c_sgmii_phy_mode=false,c_dynamic_switching=false,c_transceiver_mode=A,c_sgmii_fabric_buffer=true,c_1588=0,C_PHYADDR=1}" *)
(* X_CORE_INFO = "gig_ethernet_pcs_pma_0_support,Vivado 2013.3.0" *)

gig_ethernet_pcs_pma_0_support  
inst
   (
      // Transceiver Interface
      //----------------------

      .gtrefclk_p                           (gtrefclk_p), 
      .gtrefclk_n                           (gtrefclk_n),

      .gtrefclk_out                         (gtrefclk_out),
      .txp                           (txp),
      .txn                           (txn),
      .rxp                           (rxp),
      .rxn                           (rxn),
      .resetdone                            (resetdone),
      .userclk_out                          (userclk_out),
      .userclk2_out                         (userclk2_out),
      .rxuserclk_out                          (rxuserclk_out),
      .rxuserclk2_out                         (rxuserclk2_out),
      .independent_clock_bufg        (independent_clock_bufg),
      .pma_reset_out                        (pma_reset_out),
      .mmcm_locked_out                      (mmcm_locked_out),
      // GMII Interface
      //---------------
      .gmii_txd                      (gmii_txd),
      .gmii_tx_en                    (gmii_tx_en),
      .gmii_tx_er                    (gmii_tx_er),
      .gmii_rxd                      (gmii_rxd),
      .gmii_rx_dv                    (gmii_rx_dv),
      .gmii_rx_er                    (gmii_rx_er),
      .gmii_isolate                  (gmii_isolate),

      // Management: Alternative to MDIO Interface
      //------------------------------------------

      .configuration_vector          (configuration_vector),

      // General IO's
      //-------------
      .status_vector                 (status_vector),
      .reset                         (reset),
      .gt0_txpmareset_in                    (gt0_txpmareset_in ), 
      .gt0_txpcsreset_in                    (gt0_txpcsreset_in     ), 
      .gt0_rxpmareset_in                    (gt0_rxpmareset_in     ), 
      .gt0_rxpcsreset_in                    (gt0_rxpcsreset_in     ), 
      .gt0_rxbufreset_in                    (gt0_rxbufreset_in     ), 
      .gt0_rxpmaresetdone_out               (gt0_rxpmaresetdone_out), 
      .gt0_rxbufstatus_out                  (gt0_rxbufstatus_out   ), 
      .gt0_txbufstatus_out                  (gt0_txbufstatus_out   ), 
      .gt0_dmonitorout_out                  (gt0_dmonitorout_out   ),
      .gt0_drpaddr_in                       (gt0_drpaddr_in),
      .gt0_drpclk_in                        (gt0_drpclk_in),
      .gt0_drpdi_in                         (gt0_drpdi_in),
      .gt0_drpdo_out                        (gt0_drpdo_out),
      .gt0_drpen_in                         (gt0_drpen_in),
      .gt0_drprdy_out                       (gt0_drprdy_out),
      .gt0_drpwe_in                         (gt0_drpwe_in),
       
      .gt0_rxchariscomma_out                (gt0_rxchariscomma_out),
      .gt0_rxcharisk_out                    (gt0_rxcharisk_out),
      .gt0_rxbyteisaligned_out              (gt0_rxbyteisaligned_out),
      .gt0_rxbyterealign_out                (gt0_rxbyterealign_out),
      .gt0_rxcommadet_out                   (gt0_rxcommadet_out),
      .gt0_txpolarity_in                    (gt0_txpolarity_in),
      .gt0_txdiffctrl_in                    (gt0_txdiffctrl_in),
      .gt0_txpostcursor_in                  (gt0_txpostcursor_in),
      .gt0_txprecursor_in                   (gt0_txprecursor_in),
      .gt0_rxpolarity_in                    (gt0_rxpolarity_in),
      .gt0_rxdfelpmreset_in                 (gt0_rxdfelpmreset_in),
      .gt0_rxdfeagcovrden_in                (gt0_rxdfeagcovrden_in),
      .gt0_rxlpmen_in                       (gt0_rxlpmen_in),
      .gt0_txprbssel_in                     (gt0_txprbssel_in),
      .gt0_txprbsforceerr_in                (gt0_txprbsforceerr_in),
      .gt0_rxprbscntreset_in                (gt0_rxprbscntreset_in),
      .gt0_rxprbserr_out                    (gt0_rxprbserr_out),
      .gt0_rxprbssel_in                     (gt0_rxprbssel_in),
      .gt0_loopback_in                      (gt0_loopback_in),
      .gt0_txresetdone_out                  (gt0_txresetdone_out),
      .gt0_rxresetdone_out                  (gt0_rxresetdone_out),
      .gt0_rxdisperr_out                    (gt0_rxdisperr_out),
      .gt0_rxnotintable_out                 (gt0_rxnotintable_out),
      .gt0_eyescanreset_in                  (gt0_eyescanreset_in),
      .gt0_eyescandataerror_out             (gt0_eyescandataerror_out),
      .gt0_eyescantrigger_in                (gt0_eyescantrigger_in),
      .gt0_rxcdrhold_in                     (gt0_rxcdrhold_in),
      .gt0_rxmonitorout_out                 (gt0_rxmonitorout_out),
      .gt0_rxmonitorsel_in                  (gt0_rxmonitorsel_in),
    
 
      .signal_detect                 (signal_detect),
      .gt0_qplloutclk_out                (gt0_qplloutclk_out),
      .gt0_qplloutrefclk_out             (gt0_qplloutrefclk_out)

   );


endmodule // gig_ethernet_pcs_pma_0

