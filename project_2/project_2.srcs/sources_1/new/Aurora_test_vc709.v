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
    
    input wire gt_refclkp,
    input wire gt_refclkn,
    input wire init_clkp,
    input wire init_clkn
    
    );
    
    
    //io_addr[23:20]: 0000 aurora0; 0001 aurora1; 0010 aurora0 tx_tdata_reg
    
    Aurora_Channel_0 LinkProjPhiPlus (
    
    );
    
    Aurora_Channel_1 LinkProjPhiMinus (
    
    ); 
    
endmodule
