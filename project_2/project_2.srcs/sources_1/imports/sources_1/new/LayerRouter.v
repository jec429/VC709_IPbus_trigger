`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2014 01:01:32 PM
// Design Name: 
// Module Name: LayerRouter
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


module LayerRouter(
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
    
    input [35:0] stubin,
    output reg [35:0] stuboutL1, 
    output reg [35:0] stuboutL2,
    output reg [35:0] stuboutL3,
    output reg [35:0] stuboutL4,
    output reg [35:0] stuboutL5,
    output reg [35:0] stuboutL6
    );
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;
    
    reg [5:0] stub_cnt;
    reg [5:0] numberL1;
    reg [5:0] numberL2;
    reg [5:0] numberL3;
    reg [5:0] numberL4;
    reg [5:0] numberL5;
    reg [5:0] numberL6;
    reg wr_en1;
    reg wr_en2;
    reg wr_en3;
    reg wr_en4;
    reg wr_en5;
    reg wr_en6;

    initial begin
        stub_cnt = 0;
        numberL1 = 0;
        numberL2 = 0;
        numberL3 = 0;
        numberL4 = 0;
        numberL5 = 0;
        numberL6 = 0;
    end

    always @(posedge clk) begin
        wr_en1 <= stub_cnt < numberL1;
        wr_en2 <= stub_cnt < numberL2 & stub_cnt >= numberL1;
        wr_en3 <= stub_cnt < numberL3 & stub_cnt >= numberL2;
        wr_en4 <= stub_cnt < numberL4 & stub_cnt >= numberL3;
        wr_en5 <= stub_cnt < numberL5 & stub_cnt >= numberL4;
        wr_en6 <= stub_cnt < numberL6 & stub_cnt >= numberL5;

        if(first_clk) begin
            stub_cnt <= 0;
            numberL1 <= stubin[35:30];
            numberL2 <= stubin[29:24];
            numberL3 <= stubin[23:18];
            numberL4 <= stubin[17:12];
            numberL5 <= stubin[11:6];
            numberL6 <= stubin[5:0];
        end
        else begin
            if(stubin != 0)
                stub_cnt <= stub_cnt + 1;
            else 
                stub_cnt <= stub_cnt;
                
            if(wr_en1)
                stuboutL1 <= stubin;
            else
                stuboutL1 <= 0;
            if(wr_en2)
                stuboutL2 <= stubin;
            else
                stuboutL2 <= 0;
            if(wr_en3)
                stuboutL3 <= stubin;
            else
                stuboutL3 <= 0;
            if(wr_en4)
                stuboutL4 <= stubin;
            else
                stuboutL4 <= 0;
            if(wr_en5)
                stuboutL5 <= stubin;
            else
                stuboutL5 <= 0;
            if(wr_en6)
                stuboutL6 <= stubin;
            else
                stuboutL6 <= 0;
        end
    end
    
endmodule
