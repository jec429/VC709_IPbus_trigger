`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 04:16:02 PM
// Design Name: 
// Module Name: MatchEngine
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


module MatchEngine(
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
    
    input [5:0] number_in_stub,
    output reg [5:0] read_add_stub,
    input [17:0] vmstubin,
    input [5:0] number_in_proj,
    output reg [5:0] read_add_proj,
    input [12:0] vmprojin,
    
    output reg [11:0] matchout
    );
    
    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;

    initial begin
        read_add_stub = 6'h3f;
        read_add_proj = 6'h3f;
    end
    
    always @(posedge clk) begin
        if(read_add_stub + 1'b1 < number_in_stub)
            read_add_stub <= read_add_stub + 1'b1;
        else
            read_add_stub <= read_add_stub;
        if(read_add_proj + 1'b1 < number_in_proj)
            read_add_proj <= read_add_proj + 1'b1;
        else
            read_add_proj <= read_add_proj;
    end
    
    ///////////////////////////////////////////////////////////////////////////
    
    always @(posedge clk)
        if(number_in_stub > 0 & number_in_proj > 0)
            matchout <= {vmprojin[12:7],vmstubin[14:9]};
        else
            matchout <= 12'hfff;
    
endmodule
