`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2015 11:52:43 AM
// Design Name: 
// Module Name: ProjTransmitter
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


module ProjTransmitter(
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
    
    input [5:0] number_in1,
    output [5:0] read_add1,
    input [35:0] inputL1L2_1,
    input [5:0] number_in2,
    output [5:0] read_add2,
    input [35:0] inputL1L2_2,
    input [5:0] number_in3,
    output [5:0] read_add3,
    input [35:0] inputL1L2_3,
    input [5:0] number_in4,
    output [5:0] read_add4,
    input [35:0] inputL1L2_4,
    input [5:0] number_in5,
    output [5:0] read_add5,
    input [35:0] inputL3L4_1,
    input [5:0] number_in6,
    output [5:0] read_add6,
    input [35:0] inputL3L4_2,
    input [5:0] number_in7,
    output [5:0] read_add7,
    input [35:0] inputL3L4_3,
    input [5:0] number_in8,
    output [5:0] read_add8,
    input [35:0] inputL3L4_4,
    input [5:0] number_in9,
    output [5:0] read_add9,
    input [35:0] inputL5L6_1,
    input [5:0] number_in10,
    output [5:0] read_add10,
    input [35:0] inputL5L6_2,
    input [5:0] number_in11,
    output [5:0] read_add11,
    input [35:0] inputL5L6_3,
    input [5:0] number_in12,
    output [5:0] read_add12,
    input [35:0] inputL5L6_4
    );
    
    reg [6:0] clk_cnt;
    reg [2:0] BX_pipe;
    reg first_clk_pipe;
    
    initial begin
       clk_cnt = 7'b0;
       BX_pipe = 3'b111;
    end
    
    always @(posedge clk) begin
       if(en_proc)
           clk_cnt <= clk_cnt + 1'b1;
       else begin
           clk_cnt <= 7'b0;
           BX_pipe <= 3'b111;
       end
       if(clk_cnt == 7'b1) begin
           BX_pipe <= BX_pipe + 1'b1;
           first_clk_pipe <= 1'b1;
       end
       else begin
           first_clk_pipe <= 1'b0;
       end
    end
    
endmodule
