`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/29/2015 10:31:33 PM
// Design Name: 
// Module Name: Aurora_test_vc709
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


module Aurora_test(
    input clk,
    input reset,
    input en_proc,
    // programming interface
    // inputs
    input wire io_clk,                    // programming clock
    input wire io_sel,                    // this module has been selected for an I/O operation
    input wire io_sync,                    // start the I/O operation
    input wire [23:0] io_addr,        // slave address, memory or register. Top 16 bits already consumed.
    input wire io_rd_en,                // this is a read operation
    input wire io_wr_en,                // this is a write operation
    input wire [31:0] io_wr_data,    // data to write for write operations
    // outputs
    output wire [31:0] io_rd_data,    // data returned for read operations
    output wire io_rd_ack,                // 'read' data from this module is ready
    //clocks
    input wire [2:0] BX,
    input wire first_clk,
    input wire not_first_clk,
    
    // links
    output wire txn_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    output wire txp_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    input  wire rxn_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    input  wire rxp_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    output wire txn_mphi,          //Links to neighbouring sector board with smaller phi (-phi)
    output wire txp_mphi,          //Links to neighbouring sector board with smaller phi (-phi)
    input  wire rxn_mphi,          //Links to neighbouring sector board with smaller phi (-phi)
    input  wire rxp_mphi,          //Links to neighbouring sector board with smaller phi (-phi)    
    //clocks
    input wire gt_refclk,
    input wire init_clk
    
    );
    
    
    //io_addr[23:20]: 0000 aurora0; 0001 aurora1; 0010 aurora0 tx_tdata_reg
    
    wire [0:31] tx_tdata_pphi;
    wire [0:3]  tx_tkeep_pphi;
    wire        tx_tvalid_pphi;
    wire        tx_tlast_pphi;
    wire        tx_tready_pphi;
    wire [0:31] rx_tdata_pphi;
    wire [0:3]  rx_tkeep_pphi;
    wire        rx_tlast_pphi;
    wire        rx_tvalid_pphi;
    
    wire [0:31] tx_tdata_mphi;
    wire [0:3]  tx_tkeep_mphi;
    wire        tx_tvalid_mphi;
    wire        tx_tlast_mphi;
    wire        tx_tready_mphi;
    wire [0:31] rx_tdata_mphi;
    wire [0:3]  rx_tkeep_mphi;
    wire        rx_tlast_mphi;
    wire        rx_tvalid_mphi;
    
    wire [31:0] io_rd_data_pphi, io_rd_data_mphi;
    wire io_rd_ack_pphi, io_rd_ack_mphi;
    
    wire txdata_pphi_sel;
    wire txdata_mphi_sel;
    wire rxdata_pphi_sel;
    wire rxdata_mphi_sel;
    wire txstat_pphi_sel;
    wire txstat_mphi_sel;
    wire rxstat_pphi_sel;
    wire rxstat_mphi_sel;
    //Access I/O Block in each aurora module
    wire Aurora_pphi_sel, Aurora_mphi_sel;
    
/*    //--- Instance of GT differential buffer ---------//
    IBUFDS_GTE2 IBUFDS_GTE2_CLK1
    (
     .I(gt_refclkp),
     .IB(gt_refclkn),
     .CEB(1'b0),
     .O(gt_refclk_i),
     .ODIV2()
    );
*/    
    //reset signal
    wire arst_n;
    assign arst_n = ~reset;
    
    
    Aurora_Channel_0 LinkProjPhiPlus (
        //.clk(clk),
        .reset(reset),
        .en_proc(en_proc),
        // programming interface
        // inputs
        .io_clk(io_clk),                    // programming clock
        .io_sel(Aurora_pphi_sel),                    // this module has been selected for an I/O operation
        .io_sync(io_sync),                    // start the I/O operation
        .io_addr(io_addr[19:0]),        // slave address, memory or register. Top 16 bits already consumed.
        .io_rd_en(io_rd_en),                // this is a read operation
        .io_wr_en(io_wr_en),                // this is a write operation
        .io_wr_data(io_wr_data),    // data to write for write operations
        // outputs
        .io_rd_data(io_rd_data_pphi),    // data returned for read operations
        .io_rd_ack(io_rd_ack_pphi),                // 'read' data from this module is ready
        //clocks
        .BX(BX),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
    
        //Links
        //clocks and reset
        .init_clk(init_clk),
        .gt_reset_in(reset),
        .gt_refclk(gt_refclk),
        //TX interface to slave side of transmit FIFO
        .s_axis_aresetn(arst_n),
        .s_axis_aclk(clk),
        .s_axis_tx_tdata(tx_tdata_pphi),
        .s_axis_tx_tkeep(tx_tkeep_pphi),
        .s_axis_tx_tvalid(tx_tvalid_pphi),
        .s_axis_tx_tlast(tx_tlast_pphi),
        .s_axis_tx_tready(tx_tready_pphi),
        //RX interface to master side of receive FIFO
        .m_axis_aresetn(arst_n),
        .m_axis_aclk(clk),
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
        .en_proc(en_proc),
        // programming interface
        // inputs
        .io_clk(io_clk),                    // programming clock
        .io_sel(Aurora_mphi_sel),                    // this module has been selected for an I/O operation
        .io_sync(io_sync),                    // start the I/O operation
        .io_addr(io_addr[19:0]),        // slave address, memory or register. Top 16 bits already consumed.
        .io_rd_en(io_rd_en),                // this is a read operation
        .io_wr_en(io_wr_en),                // this is a write operation
        .io_wr_data(io_wr_data),    // data to write for write operations
        // outputs
        .io_rd_data(io_rd_data_mphi),    // data returned for read operations
        .io_rd_ack(io_rd_ack_mphi),                // 'read' data from this module is ready
        //clocks
        .BX(BX),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),

        //Links
        //clocks and reset
        .init_clk(init_clk),
        .gt_reset_in(reset),
        .gt_refclk(gt_refclk),
        //TX interface to slave side of transmit FIFO
        .s_axis_aresetn(arst_n),
        .s_axis_aclk(clk),
        .s_axis_tx_tdata(tx_tdata_mphi),
        .s_axis_tx_tkeep(tx_tkeep_mphi),
        .s_axis_tx_tvalid(tx_tvalid_mphi),
        .s_axis_tx_tlast(tx_tlast_mphi),
        .s_axis_tx_tready(tx_tready_mphi),
        //RX interface to master side of receive FIFO
        .m_axis_aresetn(arst_n),
        .m_axis_aclk(clk),
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
    
    ////////////////////////////////////////////////////////////////////////////////
    // data regs
    reg [31:0] txdata_pphi_reg;
    reg [31:0] txdata_mphi_reg;
    reg [31:0] rxdata_pphi_reg;
    reg [31:0] rxdata_mphi_reg;
    reg [31:0] txstat_pphi_reg;
    reg [31:0] txstat_mphi_reg;
    reg [31:0] rxstat_pphi_reg;
    reg [31:0] rxstat_mphi_reg;
    
    assign tx_tdata_pphi = txdata_pphi_reg;
    assign tx_tvalid_pphi = txstat_pphi_reg[5];
    assign tx_tkeep_pphi = txstat_pphi_reg [4:1];
    assign tx_tlast_pphi = txstat_pphi_reg[0];
    assign tx_tdata_mphi = txdata_mphi_reg;
    assign tx_tvalid_mphi = txstat_mphi_reg[5];
    assign tx_tkeep_mphi = txstat_mphi_reg [4:1];
    assign tx_tlast_mphi = txstat_mphi_reg[0];
    
    //Address assignments
    assign Aurora_pphi_sel = io_sel && (io_addr[23:20] == 4'b0000);
    assign Aurora_mphi_sel = io_sel && (io_addr[23:20] == 4'b1000);
    
    assign txdata_pphi_sel = io_sel && (io_addr[23:20] == 4'b0001);
    assign txdata_mphi_sel = io_sel && (io_addr[23:20] == 4'b1001);
    assign rxdata_pphi_sel = io_sel && (io_addr[23:20] == 4'b0010);
    assign rxdata_mphi_sel = io_sel && (io_addr[23:20] == 4'b1010); 
    assign txstat_pphi_sel = io_sel && (io_addr[23:20] == 4'b0011);
    assign txstat_mphi_sel = io_sel && (io_addr[23:20] == 4'b1011);
    assign rxstat_pphi_sel = io_sel && (io_addr[23:20] == 4'b0100);
    assign rxstat_mphi_sel = io_sel && (io_addr[23:20] == 4'b1100);
    
    initial begin 
        txdata_pphi_reg <= 32'b0;
        txdata_mphi_reg <= 32'b0;
        rxdata_pphi_reg <= 32'b0;
        rxdata_mphi_reg <= 32'b0;
        txstat_pphi_reg <= 32'b0;
        txstat_mphi_reg <= 32'b0;
        rxstat_pphi_reg <= 32'b0;
        rxstat_mphi_reg <= 32'b0;
    end
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    //write tx data regs
    always @ (posedge io_clk) begin
        if (io_wr_en && txdata_pphi_sel) txdata_pphi_reg <= io_wr_data;
        if (io_wr_en && txdata_mphi_sel) txdata_mphi_reg <= io_wr_data;
        if (io_wr_en && txstat_pphi_sel) txstat_pphi_reg <= io_wr_data;
        if (io_wr_en && txstat_mphi_sel) txstat_mphi_reg <= io_wr_data;
    end
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // readback mux
    // If a particular register or memory is addressed, connect that register's or memory's signals
    // to the 'io_rd_data' output. At the same time, assert 'io_rd_ack' to tell downstream muxes to
    // use the 'io_rd_data' from this module as their source of data.
    reg [31:0] io_rd_data_reg;
 
    assign io_rd_data[31:0] = io_rd_data_reg[31:0];
    // Assert 'io_rd_ack' if chip select for this module is asserted during a 'read' operation.
    reg io_rd_ack_reg;
    assign io_rd_ack = io_rd_ack_reg;
    always @(posedge io_clk) begin
        io_rd_ack_reg <= io_sync & io_sel & io_rd_en;
        
        if (rx_tvalid_pphi == 1'b1) begin
            rxdata_pphi_reg <= rx_tdata_pphi;
            rxstat_pphi_reg <= {26'b0, rx_tvalid_pphi, rx_tkeep_pphi[0:3], rx_tlast_pphi};
        end
        
        if (rx_tvalid_mphi == 1'b1) begin
            rxdata_mphi_reg <= rx_tdata_mphi;
            rxstat_mphi_reg <= {26'b0, rx_tvalid_mphi, rx_tkeep_mphi[0:3], rx_tlast_pphi};
        end
        
    end
    // Route the selected memory to the 'rdbk' output.
    always @(posedge io_clk) begin
//        if (io_rd_en & in_stub_mem_sel) io_rd_data_reg[31:0] <= in_stub_mem_rd_data;    
//        if (io_rd_en & out_stub_mem_a_sel) io_rd_data_reg[31:0] <= out_stub_mem_a_rd_data;
//        if (io_rd_en & out_stub_mem_b_sel) io_rd_data_reg[31:0] <= out_stub_mem_b_rd_data;
//        if (io_rd_en & out_stub_mem_c_sel) io_rd_data_reg[31:0] <= out_stub_mem_c_rd_data;    

        if (io_rd_en & rxdata_pphi_sel) io_rd_data_reg[31:0] <= rxdata_pphi_reg;
        if (io_rd_en & rxdata_mphi_sel) io_rd_data_reg[31:0] <= rxdata_mphi_reg;
        if (io_rd_en & rxstat_pphi_sel) io_rd_data_reg[31:0] <= rxstat_pphi_reg;
        if (io_rd_en & rxstat_mphi_sel) io_rd_data_reg[31:0] <= rxstat_mphi_reg;
        if (io_rd_en & Aurora_pphi_sel) io_rd_data_reg[31:0] <= io_rd_data_pphi;
        if (io_rd_en & Aurora_mphi_sel) io_rd_data_reg[31:0] <= io_rd_data_mphi;
        if (io_rd_en & txdata_pphi_sel) io_rd_data_reg[31:0] <= txdata_pphi_reg;
        if (io_rd_en & txdata_mphi_sel) io_rd_data_reg[31:0] <= txdata_mphi_reg;
        if (io_rd_en & txstat_pphi_sel) io_rd_data_reg[31:0] <= txstat_pphi_reg;
        if (io_rd_en & txstat_mphi_sel) io_rd_data_reg[31:0] <= txstat_mphi_reg;
      
    end
    
endmodule
