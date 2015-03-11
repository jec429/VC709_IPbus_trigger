`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 03:58:10 PM
// Design Name: 
// Module Name: AllProj
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


module AllProj(
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
    
    input [53:0] data_in,
    
    //output reg [5:0] number_out,
    input [5:0] read_add,
    output [53:0] data_out
    );

    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;
    
    reg [53:0] data_in_dly;
    reg [5:0] wr_add;
    reg wr_en;
    
    always @(posedge clk) begin
        data_in_dly <= data_in;
        if(first_clk) begin
            wr_add <= 6'h3f;
            //number_out <= wr_add + 1'b1;
        end
        else begin
            if(data_in != 0 & data_in != data_in_dly) begin
                wr_add <= wr_add + 1'b1;
                wr_en <= 1'b1;
            end
            else begin
                wr_add <= wr_add;
                wr_en <= 1'b0;
            end
        end
    end

    Memory #(54) AllProjection(
        // Output
        .output_data(data_out),
        // Input
        .clock(clk),
        .write_address({BX-3'b100,wr_add}),
        .write_enable(wr_en),
        .read_address({BX-3'b110,read_add}),
        .input_data(data_in_dly)
    );
endmodule
