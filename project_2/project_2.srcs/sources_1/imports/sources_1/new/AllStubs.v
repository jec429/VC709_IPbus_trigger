`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2014 03:18:06 PM
// Design Name: 
// Module Name: AllStubs
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


module AllStubs(
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
    
    input [35:0] data_in,
    input enable,
    
    //output reg [5:0] number_out,
    input [5:0] read_add,
    output [35:0] data_out,
    input [5:0] read_add_MC,
    output reg [35:0] data_out_MC
    );
    
    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;

	///////////////////////////////////////////////
    reg [2:0] BX_pipe;
    reg first_clk_pipe;
    
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
    end
    ///////////////////////////////////////////////////
    reg [35:0] data_in_dly;
    reg [5:0] wr_add;
    reg wr_en;
    wire [2:0] BX_hold_1;
    wire [2:0] BX_hold_2;  
    wire [35:0] pre_data_out_MC;
    
    reg [3:0] hold;
    reg enable_dly;
    
    always @(posedge clk) begin      
        data_in_dly <= data_in;
        enable_dly <= enable;
        
        if(first_clk_pipe) begin
            wr_add <= 6'h3f;
            //number_out <= wr_add + 1'b1;
        end
        else begin
            if(enable) begin
                wr_add <= wr_add + 1'b1;
                wr_en <= 1'b1;
            end
            else begin
                wr_add <= wr_add;
                wr_en <= 1'b0;
            end
        end
        data_out_MC <= pre_data_out_MC;
    end
    
    assign done = start;
    pipe_delay #(.STAGES(10), .WIDTH(3)) READ_BX1(.pipe_in(), .pipe_out(), .clk(clk),
                                                       .val_in(BX_pipe), .val_out(BX_hold_1));
    pipe_delay #(.STAGES(5), .WIDTH(3)) READ_BX2(.pipe_in(), .pipe_out(), .clk(clk),
                                                       .val_in(BX_pipe), .val_out(BX_hold_2));
                                                       
    Memory #(
            .RAM_WIDTH(36),                       // Specify RAM data width
            .RAM_DEPTH(512),                     // Specify RAM depth (number of entries)
            .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
            .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
          ) AllStub (
            .addra({BX_pipe-1'b1,wr_add}),    // Write address bus, width determined from RAM_DEPTH
            .addrb({BX_hold_1-3'b011,read_add}),    // Read address bus, width determined from RAM_DEPTH
            .dina(data_in_dly),      // RAM input data, width determined from RAM_WIDTH
            .clka(clk),      // Write clock
            .clkb(clk),      // Read clock
            .wea(wr_en),        // Write enable
            .enb(1'b1),        // Read Enable, for additional power savings, disable when not in use
            .rstb(reset),      // Output reset (does not affect memory contents)
            .regceb(1'b1),  // Output register enable
            .doutb(data_out)     // RAM output data, width determined from RAM_WIDTH
            );
    Memory #(
        .RAM_WIDTH(36),                       // Specify RAM data width
        .RAM_DEPTH(512),                     // Specify RAM depth (number of entries)
        .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
        .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
      ) AllStub_MC (
        .addra({BX_pipe-1'b1,wr_add}),    // Write address bus, width determined from RAM_DEPTH
        .addrb({BX_hold_2-3'b110,read_add_MC}),    // Read address bus, width determined from RAM_DEPTH
        .dina(data_in_dly),      // RAM input data, width determined from RAM_WIDTH
        .clka(clk),      // Write clock
        .clkb(clk),      // Read clock
        .wea(wr_en),        // Write enable
        .enb(1'b1),        // Read Enable, for additional power savings, disable when not in use
        .rstb(reset),      // Output reset (does not affect memory contents)
        .regceb(1'b1),  // Output register enable
        .doutb(pre_data_out_MC)     // RAM output data, width determined from RAM_WIDTH
        );
endmodule
