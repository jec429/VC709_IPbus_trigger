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
    
    input start,
    output done,
    
    input [35:0] data_in,
    input enable,
    
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
    
    reg [2:0] BX_pipe;
    reg first_clk_pipe;
    reg [2:0] BX_hold;
    
    initial begin
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
        BX_hold <= BX_pipe;
    end
         
    wire [35:0] pre_data_out;
    reg enable_dly;
    
    always @(posedge clk) begin
        data_in_dly <= data_in;
        enable_dly <= enable;
        if(first_clk_pipe) begin
            wr_add <= 6'h3f;
            number_out <= wr_add + 1'b1;
        end
        else begin
            if(enable_dly) begin
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
    
    assign done = start;
    
    Memory #(
                .RAM_WIDTH(36),                       // Specify RAM data width
                .RAM_DEPTH(256),                     // Specify RAM depth (number of entries)
                .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
                .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
              ) StubsMemory  (
                .addra({BX_hold,wr_add}),    // Write address bus, width determined from RAM_DEPTH
                .addrb({BX_hold-1'b1,read_add}),    // Read address bus, width determined from RAM_DEPTH
                .dina(data_in_dly),      // RAM input data, width determined from RAM_WIDTH
                .clka(clk),      // Write clock
                .clkb(clk),      // Read clock
                .wea(wr_en),        // Write enable
                .enb(1'b1),        // Read Enable, for additional power savings, disable when not in use
                .rstb(reset),      // Output reset (does not affect memory contents)
                .regceb(1'b1),  // Output register enable
                .doutb(pre_data_out)     // RAM output data, width determined from RAM_WIDTH
        );
    
endmodule
