
`timescale 1ns / 1ps
`define DLY #1

module gig_ethernet_pcs_pma_0_gt_common 

(

input   gt0_gtrefclk0_common_in, // can be removed form multigt wrapper port list.
output  gt0_qplloutclk,// need to go to multi_gt.connected to gtwizard_gt instance.
output  gt0_qplloutrefclk,// need to go to multi_gt.connected to gtwizard_gt instance.
output  gt0_qplllock_out,//ng-- can be kept open . not used in design . - remove from port list
input   gt0_qplllockdetclk_in, //ng to be connected to independent clock . -- remove from port list.
output  gt0_qpllrefclklost_out, //ng  to go in gtwizard_init
input   gt0_qpllreset_in // to be connected to pma reset after orring with reset coming from tx_startup_fsm.
);
//***************************** localparam Declarations ************************
    localparam QPLL_FBDIV_TOP =  16;

    localparam QPLL_FBDIV_IN  =  (QPLL_FBDIV_TOP == 16)  ? 10'b0000100000 : 
				(QPLL_FBDIV_TOP == 20)  ? 10'b0000110000 :
				(QPLL_FBDIV_TOP == 32)  ? 10'b0001100000 :
				(QPLL_FBDIV_TOP == 40)  ? 10'b0010000000 :
				(QPLL_FBDIV_TOP == 64)  ? 10'b0011100000 :
				(QPLL_FBDIV_TOP == 66)  ? 10'b0101000000 :
				(QPLL_FBDIV_TOP == 80)  ? 10'b0100100000 :
				(QPLL_FBDIV_TOP == 100) ? 10'b0101110000 : 10'b0000000000;

   localparam QPLL_FBDIV_RATIO = (QPLL_FBDIV_TOP == 16)  ? 1'b1 : 
				(QPLL_FBDIV_TOP == 20)  ? 1'b1 :
				(QPLL_FBDIV_TOP == 32)  ? 1'b1 :
				(QPLL_FBDIV_TOP == 40)  ? 1'b1 :
				(QPLL_FBDIV_TOP == 64)  ? 1'b1 :
				(QPLL_FBDIV_TOP == 66)  ? 1'b0 :
				(QPLL_FBDIV_TOP == 80)  ? 1'b1 :
				(QPLL_FBDIV_TOP == 100) ? 1'b1 : 1'b1;
 localparam   WRAPPER_SIM_GTRESET_SPEEDUP    =   "FALSE";        
    // ground and vcc signals
    wire            tied_to_ground_i;
    wire    [63:0]  tied_to_ground_vec_i;
    wire            tied_to_vcc_i;
    wire    [63:0]  tied_to_vcc_vec_i;
    assign tied_to_ground_i             = 1'b0;
    assign tied_to_ground_vec_i         = 64'h0000000000000000;
    assign tied_to_vcc_i                = 1'b1;
    assign tied_to_vcc_vec_i            = 64'hffffffffffffffff;
    //_________________________________________________________________________
    //_________________________________________________________________________
    //_________________________GTHE2_COMMON____________________________________

    GTHE2_COMMON #
    (
            // Simulation attributes
            .SIM_RESET_SPEEDUP   (WRAPPER_SIM_GTRESET_SPEEDUP),
            .SIM_QPLLREFCLK_SEL  (3'b001),
            .SIM_VERSION         ("2.0"),


           //----------------COMMON BLOCK Attributes---------------
            .BIAS_CFG                               (64'h0000040000001050),
            .COMMON_CFG                             (32'h0000001C),
            .QPLL_CFG                               (27'h04801C7),
            .QPLL_CLKOUT_CFG                        (4'b1111),
            .QPLL_COARSE_FREQ_OVRD                  (6'b010000),
            .QPLL_COARSE_FREQ_OVRD_EN               (1'b0),
            .QPLL_CP                                (10'b0000011111),
            .QPLL_CP_MONITOR_EN                     (1'b0),
            .QPLL_DMONITOR_SEL                      (1'b0),
            .QPLL_FBDIV                             (QPLL_FBDIV_IN),
            .QPLL_FBDIV_MONITOR_EN                  (1'b0),
            .QPLL_FBDIV_RATIO                       (QPLL_FBDIV_RATIO),
            .QPLL_INIT_CFG                          (24'h000006),
            .QPLL_LOCK_CFG                          (16'h05E8),
            .QPLL_LPF                               (4'b1111),
            .QPLL_REFCLK_DIV                        (1),
            .RSVD_ATTR0                             (16'h0000),
            .RSVD_ATTR1                             (16'h0000),
            .QPLL_RP_COMP                           (1'b0),
            .QPLL_VTRL_RESET                        (2'b00),
            .RCAL_CFG                               (2'b00)

    )
    gthe2_common_0_i
    (
        //----------- Common Block  - Dynamic Reconfiguration Port (DRP) -----------
        .DRPADDR                        (tied_to_ground_vec_i[7:0]),
        .DRPCLK                         (tied_to_ground_i),
        .DRPDI                          (tied_to_ground_vec_i[15:0]),
        .DRPDO                          (),
        .DRPEN                          (tied_to_ground_i),
        .DRPRDY                         (),
        .DRPWE                          (tied_to_ground_i),
        //-------------------- Common Block  - Ref Clock Ports ---------------------
        .GTGREFCLK                      (tied_to_ground_i),
        .GTNORTHREFCLK0                 (tied_to_ground_i),
        .GTNORTHREFCLK1                 (tied_to_ground_i),
        .GTREFCLK0                      (gt0_gtrefclk0_common_in),
        .GTREFCLK1                      (tied_to_ground_i),
        .GTSOUTHREFCLK0                 (tied_to_ground_i),
        .GTSOUTHREFCLK1                 (tied_to_ground_i),
        //----------------------- Common Block -  QPLL Ports -----------------------
        .QPLLDMONITOR                   (),
        //--------------------- Common Block - Clocking Ports ----------------------
        .QPLLOUTCLK                     (gt0_qplloutclk),
        .QPLLOUTREFCLK                  (gt0_qplloutrefclk),
        .REFCLKOUTMONITOR               (),
        //----------------------- Common Block - QPLL Ports ------------------------
        .BGRCALOVRDENB                  (tied_to_vcc_i),
        .PMARSVDOUT                     (),
        .QPLLFBCLKLOST                  (),
        .QPLLLOCK                       (gt0_qplllock_out),
        .QPLLLOCKDETCLK                 (gt0_qplllockdetclk_in),
        .QPLLLOCKEN                     (tied_to_vcc_i),
        .QPLLOUTRESET                   (tied_to_ground_i),
        .QPLLPD                         (tied_to_vcc_i),
        .QPLLREFCLKLOST                 (gt0_qpllrefclklost_out),
        .QPLLREFCLKSEL                  (3'b001),
        .QPLLRESET                      (gt0_qpllreset_in),
        .QPLLRSVD1                      (16'b0000000000000000),
        .QPLLRSVD2                      (5'b11111),
        //------------------------------- QPLL Ports -------------------------------
        .BGBYPASSB                      (tied_to_vcc_i),
        .BGMONITORENB                   (tied_to_vcc_i),
        .BGPDB                          (tied_to_vcc_i),
        .BGRCALOVRD                     (5'b11111),
        .PMARSVD                        (8'b00000000),
        .RCALENB                        (tied_to_vcc_i)

    );

    endmodule
