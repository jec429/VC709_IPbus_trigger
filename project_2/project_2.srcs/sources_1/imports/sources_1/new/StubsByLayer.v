`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2014 01:07:08 PM
// Design Name: 
// Module Name: StubsByLayer
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


module StubsByLayer(
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
    
    input [35:0] data_in,
    
    output reg [5:0] number_out,
    input [5:0] read_add,
    output reg [35:0] data_out

    );
    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;
      
    reg [35:0] data_in_dly;
    reg [5:0] wr_add;
    reg wr_en;
    
    reg [5:0] clk_cnt;
    reg [2:0] BX_pipe;
    reg first_clk_pipe;
    reg [2:0] BX_hold;
    
    initial begin
       clk_cnt = 6'b0;
       BX_pipe = 3'b111;
    end
    
    always @(posedge clk) begin
        if(en_proc)
           clk_cnt <= clk_cnt + 1'b1;
        else begin
           clk_cnt <= 6'b0;
           BX_pipe <= 3'b111;
        end
        if(clk_cnt == 7'b1) begin
           BX_pipe <= BX_pipe + 1'b1;
           first_clk_pipe <= 1'b1;
        end
        else begin
           first_clk_pipe <= 1'b0;
        end
        BX_hold <= BX_pipe;
    end
         
    wire [35:0] pre_data_out;
            
    always @(posedge clk) begin
        data_in_dly <= data_in;
        if(first_clk_pipe) begin
            wr_add <= 6'h3f;
            number_out <= wr_add + 1'b1;
        end
        else begin
            if(data_in != 0 & data_in != data_in_dly & data_in[24:0] != 25'h1ffffff & data_in[24:0] != 25'h0) begin
                wr_add <= wr_add + 1'b1;
                wr_en <= 1'b1;
            end
            else begin
                wr_add <= wr_add;
                wr_en <= 1'b0;
            end
        end
        data_out <= pre_data_out;
    end
    
    Memory StubsMemory(
        // Output
        .output_data(pre_data_out),
        // Input
        .clock(clk),
        .write_address({BX_pipe,wr_add}),
        .write_enable(wr_en),
        .read_address({BX_hold-1'b1,read_add}),
        .input_data(data_in_dly)
    );
    
endmodule
