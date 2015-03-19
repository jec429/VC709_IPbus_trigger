`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2015 04:44:35 PM
// Design Name: 
// Module Name: writer
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


module writer(
    input clk,
    input reset,
    input en_proc,
    // programming interface
    // inputs
    input wire io_clk,                    // programming clock
    input wire io_sel,                    // this module has been selected for an I/O operation
    input wire io_sync,                    // start the I/O operation
    input wire [23:0] io_addr,        // slave address, memory or register. Top 12 bits already consumed.
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
    
    output reg [31:0] data_out1,
    output reg [31:0] data_out2,
    output reg [31:0] data_out3,
    output reg [31:0] data_out4,
    output reg [31:0] data_out5,
    output reg [31:0] data_out6,
    output reg [31:0] data_out7,
    output reg [31:0] data_out8,
    output reg [31:0] data_out9,
    output reg [31:0] data_out10,
    output reg [31:0] data_out11,
    output reg [31:0] data_out12,
    output reg [31:0] data_out13,
    output reg [31:0] data_out14,
    output reg [31:0] data_out15,
    output reg [31:0] data_out16,
    output reg [31:0] data_out17,
    output reg [31:0] data_out18,
    output reg [31:0] data_out19,
    output reg [31:0] data_out20,
    
    input read_en  
    );
    
    wire io_sel_data_in1, io_sel_data_in2, io_sel_data_in3, io_sel_data_in4,
     io_sel_data_in5, io_sel_data_in6, io_sel_data_in7, io_sel_data_in8, io_sel_data_in9, io_sel_data_in10;
    wire io_sel_data_in11, io_sel_data_in12, io_sel_data_in13, io_sel_data_in14,
     io_sel_data_in15, io_sel_data_in16, io_sel_data_in17, io_sel_data_in18, io_sel_data_in19, io_sel_data_in20;
    
    assign io_sel_data_in1  = io_sel && (io_addr[4:0] == 5'b00000);
    assign io_sel_data_in2  = io_sel && (io_addr[4:0] == 5'b00001);
    assign io_sel_data_in3  = io_sel && (io_addr[4:0] == 5'b00010);
    assign io_sel_data_in4  = io_sel && (io_addr[4:0] == 5'b00011);
    assign io_sel_data_in5  = io_sel && (io_addr[4:0] == 5'b00100);
    assign io_sel_data_in6  = io_sel && (io_addr[4:0] == 5'b00101);
    assign io_sel_data_in7  = io_sel && (io_addr[4:0] == 5'b00110);
    assign io_sel_data_in8  = io_sel && (io_addr[4:0] == 5'b00111);
    assign io_sel_data_in9  = io_sel && (io_addr[4:0] == 5'b01000);
    assign io_sel_data_in10  = io_sel && (io_addr[4:0] == 5'b01001);
    assign io_sel_data_in11  = io_sel && (io_addr[4:0] == 5'b01010);
    assign io_sel_data_in12  = io_sel && (io_addr[4:0] == 5'b01011);
    assign io_sel_data_in13  = io_sel && (io_addr[4:0] == 5'b01100);
    assign io_sel_data_in14  = io_sel && (io_addr[4:0] == 5'b01101);
    assign io_sel_data_in15  = io_sel && (io_addr[4:0] == 5'b01110);
    assign io_sel_data_in16  = io_sel && (io_addr[4:0] == 5'b01111);
    assign io_sel_data_in17  = io_sel && (io_addr[4:0] == 5'b10000);
    assign io_sel_data_in18  = io_sel && (io_addr[4:0] == 5'b10001);
    assign io_sel_data_in19  = io_sel && (io_addr[4:0] == 5'b10010);
    assign io_sel_data_in20  = io_sel && (io_addr[4:0] == 5'b10011);
    
    always @ (posedge io_clk) begin
        if (io_wr_en && io_sel_data_in1) data_out1 <= io_wr_data;
        if (io_wr_en && io_sel_data_in2) data_out2 <= io_wr_data;
        if (io_wr_en && io_sel_data_in3) data_out3 <= io_wr_data;
        if (io_wr_en && io_sel_data_in4) data_out4 <= io_wr_data;
        if (io_wr_en && io_sel_data_in5) data_out5 <= io_wr_data;
        if (io_wr_en && io_sel_data_in6) data_out6 <= io_wr_data;
        if (io_wr_en && io_sel_data_in7) data_out7 <= io_wr_data;
        if (io_wr_en && io_sel_data_in8) data_out8 <= io_wr_data;
        if (io_wr_en && io_sel_data_in9) data_out9 <= io_wr_data;
        if (io_wr_en && io_sel_data_in10) data_out10 <= io_wr_data;
        if (io_wr_en && io_sel_data_in11) data_out11 <= io_wr_data;
        if (io_wr_en && io_sel_data_in12) data_out12 <= io_wr_data;
        if (io_wr_en && io_sel_data_in13) data_out13 <= io_wr_data;
        if (io_wr_en && io_sel_data_in14) data_out14 <= io_wr_data;
        if (io_wr_en && io_sel_data_in15) data_out15 <= io_wr_data;
        if (io_wr_en && io_sel_data_in16) data_out16 <= io_wr_data;
        if (io_wr_en && io_sel_data_in17) data_out17 <= io_wr_data;
        if (io_wr_en && io_sel_data_in18) data_out18 <= io_wr_data;
        if (io_wr_en && io_sel_data_in19) data_out19 <= io_wr_data;
        if (io_wr_en && io_sel_data_in20) data_out20 <= io_wr_data;
    end
    
endmodule
