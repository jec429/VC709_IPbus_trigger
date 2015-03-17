`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2015 04:33:02 PM
// Design Name: 
// Module Name: aurora_sim_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module aurora_sim_tb;
    
    //inputs
    wire reset;
    wire io_clk;
    wire init_clk;
    wire gt_refclk;
    
    wire [0:31] tx_tdata_pphi;
    wire [0:3] tx_tkeep_pphi;
    wire tx_tvalid_pphi;
    wire tx_tlast_pphi;
    wire [0:31] tx_tdata_mphi;
    wire [0:3] tx_tkeep_mphi;
    wire tx_tvalid_mphi;
    wire tx_tlast_mphi;
    
    //outputs
    reg [0:31] rx_tdata_pphi;
    reg [0:3] rx_tkeep_pphi;
    reg rx_tvalid_pphi;
    reg rx_tlast_pphi;
    reg tx_tready_pphi;
    reg [0:31] rx_tdata_mphi;
    reg [0:3] rx_tkeep_mphi;
    reg rx_tvalid_mphi;
    reg rx_tlast_mphi;
    reg tx_tready_mphi;
    
    
    wire rxp_pphi,rxn_pphi;
    wire rxp_mphi,rxn_mphi;
    wire txp_pphi,txn_pphi;
    wire txp_mphi,txn_mphi;
    
    assign rxp_pphi = txp_mphi;
    assign rxn_pphi = txn_mphi;
    assign rxp_mphi = txp_pphi;
    assign rxn_mphi = txn_pphi;
    
    wire arst_n;
    assign arst_n = ~reset;
    
    Aurora_Channel_0 LinkProjPhiPlus (
        //.clk(clk),
        .reset(reset),
        .en_proc(1'b0),
        // programming interface
        // inputs
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module has been selected for an I/O operation
        .io_sync(1'b0),                    // start the I/O operation
        .io_addr(20'b0),        // slave address, memory or register. Top 16 bits already consumed.
        .io_rd_en(1'b0),                // this is a read operation
        .io_wr_en(1'b0),                // this is a write operation
        .io_wr_data(32'b0),    // data to write for write operations
        // outputs
        .io_rd_data(),    // data returned for read operations
        .io_rd_ack(),                // 'read' data from this module is ready
        //clocks
        .BX(),
        .first_clk(),
        .not_first_clk(),

        //Links
        //clocks and reset
        .init_clk(init_clk),
        .gt_reset_in(reset),
        .gt_refclk(gt_refclk),
        //TX interface to slave side of transmit FIFO
        .s_axis_aresetn(arst_n),
        .s_axis_aclk(io_clk),
        .s_axis_tx_tdata(tx_tdata_pphi),
        .s_axis_tx_tkeep(tx_tkeep_pphi),
        .s_axis_tx_tvalid(tx_tvalid_pphi),
        .s_axis_tx_tlast(tx_tlast_pphi),
        .s_axis_tx_tready(tx_tready_pphi),
        //RX interface to master side of receive FIFO
        .m_axis_aresetn(arst_n),
        .m_axis_aclk(io_clk),
        .m_axis_rx_tdata(rx_tdata_pphi),
        .m_axis_rx_tkeep(rx_tkeep_pphi),
        .m_axis_rx_tvalid(rx_tvalid_pphi),
        .m_axis_rx_tlast(rx_tlast_pphi),
        .m_axis_rx_tready(1'b1),
        //serial I/O pins
        .rxp(rxp_pphi), .rxn(rxn_pphi),
        .txp(txp_pphi), .txn(txn_pphi),
        // QPLL Ports
        .gt0_qplllock(1'b1),                 // input
        .gt0_qpllrefclklost(1'b0),           // input
        .gt_qpllclk_quad2(1'b0),             // input
        .gt_qpllrefclk_quad2(1'b0),          // input
        .gt0_qpllreset(),               // output
  
        // counter output ports
        .frame_err(),                    // output, to IPbus I/O
        .hard_err(),                     // output, to IPbus I/O
        .soft_err(),                     // output, to IPbus I/O
        .channel_up(),                   // output, to IPbus I/O
        .lane_up(),                      // output, to IPbus I/O
        .tx_resetdone_out(),             // output, to IPbus I/O
        .rx_resetdone_out(),             // output, to IPbus I/O
        .link_reset_out()
    );

    Aurora_Channel_1 LinkProjPhiMinus (
        //.clk(clk),
        .reset(reset),
        .en_proc(1'b0),
        // programming interface
        // inputs
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module has been selected for an I/O operation
        .io_sync(1'b0),                    // start the I/O operation
        .io_addr(20'b0),        // slave address, memory or register. Top 16 bits already consumed.
        .io_rd_en(1'b0),                // this is a read operation
        .io_wr_en(1'b0),                // this is a write operation
        .io_wr_data(32'b0),    // data to write for write operations
        // outputs
        .io_rd_data(),    // data returned for read operations
        .io_rd_ack(),                // 'read' data from this module is ready
        //clocks
        .BX(),
        .first_clk(),
        .not_first_clk(),

        //Links
        //clocks and reset
        .init_clk(init_clk),
        .gt_reset_in(reset),
        .gt_refclk(gt_refclk),
        //TX interface to slave side of transmit FIFO
        .s_axis_aresetn(arst_n),
        .s_axis_aclk(io_clk),
        .s_axis_tx_tdata(tx_tdata_mphi),
        .s_axis_tx_tkeep(tx_tkeep_mphi),
        .s_axis_tx_tvalid(tx_tvalid_mphi),
        .s_axis_tx_tlast(tx_tlast_mphi),
        .s_axis_tx_tready(tx_tready_mphi),
        //RX interface to master side of receive FIFO
        .m_axis_aresetn(arst_n),
        .m_axis_aclk(io_clk),
        .m_axis_rx_tdata(rx_tdata_mphi),
        .m_axis_rx_tkeep(rx_tkeep_mphi),
        .m_axis_rx_tvalid(rx_tvalid_mphi),
        .m_axis_rx_tlast(rx_tlast_mphi),
        .m_axis_rx_tready(1'b1),
        //serial I/O pins
        .rxp(rxp_mphi), .rxn(rxn_mphi),
        .txp(txp_mphi), .txn(txn_mphi),
        // QPLL Ports
        .gt0_qplllock(1'b1),                 // input
        .gt0_qpllrefclklost(1'b0),           // input
        .gt_qpllclk_quad2(1'b0),             // input
        .gt_qpllrefclk_quad2(1'b0),          // input
        .gt0_qpllreset(),               // output

        // counter output ports
        .frame_err(),                    // output, to IPbus I/O
        .hard_err(),                     // output, to IPbus I/O
        .soft_err(),                     // output, to IPbus I/O
        .channel_up(),                   // output, to IPbus I/O
        .lane_up(),                      // output, to IPbus I/O
        .tx_resetdone_out(),             // output, to IPbus I/O
        .rx_resetdone_out(),             // output, to IPbus I/O
        .link_reset_out()   
    ); 

    initial begin
        //initialize input
        reset = 0;
        io_clk = 0;
        init_clk = 0;
        gt_refclk = 0;
        tx_tdata_pphi = 0;
        tx_tkeep_pphi = 0;
        tx_tvalid_pphi = 0;
        tx_tlast_pphi = 0;
        tx_tdata_mphi = 0;
        tx_tkeep_mphi = 0;
        tx_tvalid_mphi = 0;
        tx_tlast_mphi = 0;
        // Wait 100 ns for global reset to finish
        #100;
        
        reset = 1'b1;
        #200;
        reset = 1'b0;
        #200;
        
        tx_tdata_pphi = 32'hcafebabe;
        tx_tkeep_pphi = 4'b1111;
        tx_tvalid_pphi = 1'b1;
        tx_tlast_pphi = 1'b1;
        tx_tdata_mphi = 32'hdeadbeef;
        tx_tkeep_mphi = 4'b1111;
        tx_tvalid_mphi = 1'b1;
        tx_tlast_mphi = 1'b1;       
        
    end

    //clock
    always
        #16 io_clk = !io_clk;
    always
        #4 gt_refclk = !gt_refclk;
    always
        #4 init_clk = !init_clk;

endmodule
