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
    
    input start,
    output done,
    
    input [5:0] number_in1,
    output reg [5:0] read_add1,
    input [17:0] vmstubin,
    input [5:0] number_in2,
    output reg [5:0] read_add2,
    input [12:0] vmprojin,
    
    output reg [11:0] matchout,
    output reg valid_data
    );
    
    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;
    ///////////////////////////////////////////////
    reg [6:0] clk_cnt;
    reg [2:0] BX_pipe;
    reg first_clk_pipe;
    
    initial begin
       clk_cnt = 7'b0;
       BX_pipe = 3'b111;
    end
    
    always @(posedge clk) begin
        if(start) begin
           BX_pipe <= BX_pipe + 1'b1;
           first_clk_pipe <= 1'b1;
        end
        else begin
           first_clk_pipe <= 1'b0;
        end
    end
    ///////////////////////////////////////////////////
    initial begin
        read_add1 = 6'h3f;
        read_add2 = 6'h3f;
    end
    
    assign done = start;
    
    reg pre_valid_data;
    reg [4:0] behold;
    reg [12:0] vmprojin_hold1;
    reg [12:0] vmprojin_hold2;
    
    always @(posedge clk) begin
        behold[0] <= pre_valid_data;
        behold[4:1] <= behold[3:0];
        vmprojin_hold1 <= vmprojin;
        vmprojin_hold2 <= vmprojin_hold1;
        
        if(first_clk_pipe) begin
            read_add1 <= 6'h3f; 
            read_add2 <= 6'h0; // if number_in2 > 0?
        end
        else begin
            if(read_add1 + 1'b1 < number_in1) begin
                read_add1 <= read_add1 + 1'b1;
                pre_valid_data <= 1'b1;
            end
            else begin
                read_add1 <= read_add1;
                if(read_add1 + 1'b1 == number_in1 && read_add2 + 1'b1 < number_in2) begin
                    read_add2 <= read_add2 + 1'b1;
                    pre_valid_data <= 1'b1;
                    read_add1 <= 6'h0;
                end
                else begin
                    read_add2 <= read_add2;
                    pre_valid_data <= 1'b0;
                end
            end
            //if(read_add2 + 1'b1 < number_in2)
                //read_add2 <= read_add2 + 1'b1;
            //else
                //read_add2 <= read_add2;
        end
    end
    
    ///////////////////////////////////////////////////////////////////////////
    
    always @(posedge clk)
        if(vmprojin_hold2 > 0 & vmstubin > 0) begin
            matchout <= {vmprojin_hold2[12:7],vmstubin[14:9]};
            valid_data <= behold[4];
        end
        else begin
            matchout <= 12'hfff;
            valid_data <= 1'b0;
        end
endmodule
