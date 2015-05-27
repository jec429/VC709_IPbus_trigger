`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2015 12:40:47 PM
// Design Name: 
// Module Name: Tracklet_TrackletCalculator
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


module Tracklet_TrackletCalculator(
    input clk,
    input reset,
    input en_proc,
    // programming interface
    // inputs
    input wire io_clk,                    // programming clock
    input wire io_sel,                    // this module has been selected for an I/O operation
    input wire io_sync,                    // start the I/O operation
    input wire [27:0] io_addr,        // slave address, memory or register. Top 12 bits already consumed.
    input wire io_rd_en,                // this is a read operation
    input wire io_wr_en,                // this is a write operation
    input wire [31:0] io_wr_data,    // data to write for write operations
    // outputs
    output wire [31:0] io_rd_data,    // data returned for read operations
    output wire io_rd_ack,                // 'read' data from this module is ready
    //clocks
    input wire [2:0] BX,
    input wire first_clk,
    input wire not_first_clk
    );
    
    wire [31:0] reader_out;  
    wire io_sel_R3_io_block;
    assign io_sel_R3_io_block = io_sel && (io_addr[27:24] == 4'b1000);
   
    wire [11:0] TE_L1D3PHI1Z1_L2D3PHI1Z1_SP_L1D3PHI1Z1_L2D3PHI1Z1;
    wire [5:0] SP_L1D3PHI1Z1_L2D3PHI1Z1_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI1Z1_L2D3PHI1Z1_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI1Z1_L2D3PHI1Z1_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI1Z1_L2D3PHI1Z1(
    .data_in(TE_L1D3PHI1Z1_L2D3PHI1Z1_SP_L1D3PHI1Z1_L2D3PHI1Z1),
    .number_out(SP_L1D3PHI1Z1_L2D3PHI1Z1_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI1Z1_L2D3PHI1Z1_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI1Z1_L2D3PHI1Z1_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI1Z1_L2D3PHI2Z1_SP_L1D3PHI1Z1_L2D3PHI2Z1;
    wire [5:0] SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI1Z1_L2D3PHI2Z1(
    .data_in(TE_L1D3PHI1Z1_L2D3PHI2Z1_SP_L1D3PHI1Z1_L2D3PHI2Z1),
    .number_out(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI1Z1_L2D3PHI1Z2_SP_L1D3PHI1Z1_L2D3PHI1Z2;
    wire [5:0] SP_L1D3PHI1Z1_L2D3PHI1Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI1Z1_L2D3PHI1Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI1Z1_L2D3PHI1Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI1Z1_L2D3PHI1Z2(
    .data_in(TE_L1D3PHI1Z1_L2D3PHI1Z2_SP_L1D3PHI1Z1_L2D3PHI1Z2),
    .number_out(SP_L1D3PHI1Z1_L2D3PHI1Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI1Z1_L2D3PHI1Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI1Z1_L2D3PHI1Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI1Z1_L2D3PHI2Z2_SP_L1D3PHI1Z1_L2D3PHI2Z2;
    wire [5:0] SP_L1D3PHI1Z1_L2D3PHI2Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI1Z1_L2D3PHI2Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI1Z1_L2D3PHI2Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI1Z1_L2D3PHI2Z2(
    .data_in(TE_L1D3PHI1Z1_L2D3PHI2Z2_SP_L1D3PHI1Z1_L2D3PHI2Z2),
    .number_out(SP_L1D3PHI1Z1_L2D3PHI2Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI1Z1_L2D3PHI2Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI1Z1_L2D3PHI2Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI1Z2_L2D3PHI1Z2_SP_L1D3PHI1Z2_L2D3PHI1Z2;
    wire [5:0] SP_L1D3PHI1Z2_L2D3PHI1Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI1Z2_L2D3PHI1Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI1Z2_L2D3PHI1Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI1Z2_L2D3PHI1Z2(
    .data_in(TE_L1D3PHI1Z2_L2D3PHI1Z2_SP_L1D3PHI1Z2_L2D3PHI1Z2),
    .number_out(SP_L1D3PHI1Z2_L2D3PHI1Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI1Z2_L2D3PHI1Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI1Z2_L2D3PHI1Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI1Z2_L2D3PHI2Z2_SP_L1D3PHI1Z2_L2D3PHI2Z2;
    wire [5:0] SP_L1D3PHI1Z2_L2D3PHI2Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI1Z2_L2D3PHI2Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI1Z2_L2D3PHI2Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI1Z2_L2D3PHI2Z2(
    .data_in(TE_L1D3PHI1Z2_L2D3PHI2Z2_SP_L1D3PHI1Z2_L2D3PHI2Z2),
    .number_out(SP_L1D3PHI1Z2_L2D3PHI2Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI1Z2_L2D3PHI2Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI1Z2_L2D3PHI2Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI2Z1_L2D3PHI2Z1_SP_L1D3PHI2Z1_L2D3PHI2Z1;
    wire [5:0] SP_L1D3PHI2Z1_L2D3PHI2Z1_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI2Z1_L2D3PHI2Z1_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI2Z1_L2D3PHI2Z1_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI2Z1_L2D3PHI2Z1(
    .data_in(TE_L1D3PHI2Z1_L2D3PHI2Z1_SP_L1D3PHI2Z1_L2D3PHI2Z1),
    .number_out(SP_L1D3PHI2Z1_L2D3PHI2Z1_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI2Z1_L2D3PHI2Z1_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI2Z1_L2D3PHI2Z1_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI2Z1_L2D3PHI3Z1_SP_L1D3PHI2Z1_L2D3PHI3Z1;
    wire [5:0] SP_L1D3PHI2Z1_L2D3PHI3Z1_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI2Z1_L2D3PHI3Z1_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI2Z1_L2D3PHI3Z1_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI2Z1_L2D3PHI3Z1(
    .data_in(TE_L1D3PHI2Z1_L2D3PHI3Z1_SP_L1D3PHI2Z1_L2D3PHI3Z1),
    .number_out(SP_L1D3PHI2Z1_L2D3PHI3Z1_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI2Z1_L2D3PHI3Z1_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI2Z1_L2D3PHI3Z1_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI2Z1_L2D3PHI2Z2_SP_L1D3PHI2Z1_L2D3PHI2Z2;
    wire [5:0] SP_L1D3PHI2Z1_L2D3PHI2Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI2Z1_L2D3PHI2Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI2Z1_L2D3PHI2Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI2Z1_L2D3PHI2Z2(
    .data_in(TE_L1D3PHI2Z1_L2D3PHI2Z2_SP_L1D3PHI2Z1_L2D3PHI2Z2),
    .number_out(SP_L1D3PHI2Z1_L2D3PHI2Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI2Z1_L2D3PHI2Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI2Z1_L2D3PHI2Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI2Z1_L2D3PHI3Z2_SP_L1D3PHI2Z1_L2D3PHI3Z2;
    wire [5:0] SP_L1D3PHI2Z1_L2D3PHI3Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI2Z1_L2D3PHI3Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI2Z1_L2D3PHI3Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI2Z1_L2D3PHI3Z2(
    .data_in(TE_L1D3PHI2Z1_L2D3PHI3Z2_SP_L1D3PHI2Z1_L2D3PHI3Z2),
    .number_out(SP_L1D3PHI2Z1_L2D3PHI3Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI2Z1_L2D3PHI3Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI2Z1_L2D3PHI3Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI2Z2_L2D3PHI2Z2_SP_L1D3PHI2Z2_L2D3PHI2Z2;
    wire [5:0] SP_L1D3PHI2Z2_L2D3PHI2Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI2Z2_L2D3PHI2Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI2Z2_L2D3PHI2Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI2Z2_L2D3PHI2Z2(
    .data_in(TE_L1D3PHI2Z2_L2D3PHI2Z2_SP_L1D3PHI2Z2_L2D3PHI2Z2),
    .number_out(SP_L1D3PHI2Z2_L2D3PHI2Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI2Z2_L2D3PHI2Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI2Z2_L2D3PHI2Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI2Z2_L2D3PHI3Z2_SP_L1D3PHI2Z2_L2D3PHI3Z2;
    wire [5:0] SP_L1D3PHI2Z2_L2D3PHI3Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI2Z2_L2D3PHI3Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI2Z2_L2D3PHI3Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI2Z2_L2D3PHI3Z2(
    .data_in(TE_L1D3PHI2Z2_L2D3PHI3Z2_SP_L1D3PHI2Z2_L2D3PHI3Z2),
    .number_out(SP_L1D3PHI2Z2_L2D3PHI3Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI2Z2_L2D3PHI3Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI2Z2_L2D3PHI3Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI3Z1_L2D3PHI3Z1_SP_L1D3PHI3Z1_L2D3PHI3Z1;
    wire [5:0] SP_L1D3PHI3Z1_L2D3PHI3Z1_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI3Z1_L2D3PHI3Z1_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI3Z1_L2D3PHI3Z1_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI3Z1_L2D3PHI3Z1(
    .data_in(TE_L1D3PHI3Z1_L2D3PHI3Z1_SP_L1D3PHI3Z1_L2D3PHI3Z1),
    .number_out(SP_L1D3PHI3Z1_L2D3PHI3Z1_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI3Z1_L2D3PHI3Z1_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI3Z1_L2D3PHI3Z1_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI3Z1_L2D3PHI4Z1_SP_L1D3PHI3Z1_L2D3PHI4Z1;
    wire [5:0] SP_L1D3PHI3Z1_L2D3PHI4Z1_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI3Z1_L2D3PHI4Z1_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI3Z1_L2D3PHI4Z1_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI3Z1_L2D3PHI4Z1(
    .data_in(TE_L1D3PHI3Z1_L2D3PHI4Z1_SP_L1D3PHI3Z1_L2D3PHI4Z1),
    .number_out(SP_L1D3PHI3Z1_L2D3PHI4Z1_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI3Z1_L2D3PHI4Z1_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI3Z1_L2D3PHI4Z1_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI3Z1_L2D3PHI3Z2_SP_L1D3PHI3Z1_L2D3PHI3Z2;
    wire [5:0] SP_L1D3PHI3Z1_L2D3PHI3Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI3Z1_L2D3PHI3Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI3Z1_L2D3PHI3Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI3Z1_L2D3PHI3Z2(
    .data_in(TE_L1D3PHI3Z1_L2D3PHI3Z2_SP_L1D3PHI3Z1_L2D3PHI3Z2),
    .number_out(SP_L1D3PHI3Z1_L2D3PHI3Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI3Z1_L2D3PHI3Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI3Z1_L2D3PHI3Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI3Z1_L2D3PHI4Z2_SP_L1D3PHI3Z1_L2D3PHI4Z2;
    wire [5:0] SP_L1D3PHI3Z1_L2D3PHI4Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI3Z1_L2D3PHI4Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI3Z1_L2D3PHI4Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI3Z1_L2D3PHI4Z2(
    .data_in(TE_L1D3PHI3Z1_L2D3PHI4Z2_SP_L1D3PHI3Z1_L2D3PHI4Z2),
    .number_out(SP_L1D3PHI3Z1_L2D3PHI4Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI3Z1_L2D3PHI4Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI3Z1_L2D3PHI4Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI3Z2_L2D3PHI3Z2_SP_L1D3PHI3Z2_L2D3PHI3Z2;
    wire [5:0] SP_L1D3PHI3Z2_L2D3PHI3Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI3Z2_L2D3PHI3Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI3Z2_L2D3PHI3Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI3Z2_L2D3PHI3Z2(
    .data_in(TE_L1D3PHI3Z2_L2D3PHI3Z2_SP_L1D3PHI3Z2_L2D3PHI3Z2),
    .number_out(SP_L1D3PHI3Z2_L2D3PHI3Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI3Z2_L2D3PHI3Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI3Z2_L2D3PHI3Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [11:0] TE_L1D3PHI3Z2_L2D3PHI4Z2_SP_L1D3PHI3Z2_L2D3PHI4Z2;
    wire [5:0] SP_L1D3PHI3Z2_L2D3PHI4Z2_TC_L1D3L2D3_number;
    wire [5:0] SP_L1D3PHI3Z2_L2D3PHI4Z2_TC_L1D3L2D3_read_add;
    wire [11:0] SP_L1D3PHI3Z2_L2D3PHI4Z2_TC_L1D3L2D3;
    StubPairs  SP_L1D3PHI3Z2_L2D3PHI4Z2(
    .data_in(TE_L1D3PHI3Z2_L2D3PHI4Z2_SP_L1D3PHI3Z2_L2D3PHI4Z2),
    .number_out(SP_L1D3PHI3Z2_L2D3PHI4Z2_TC_L1D3L2D3_number),
    .read_add(SP_L1D3PHI3Z2_L2D3PHI4Z2_TC_L1D3L2D3_read_add),
    .data_out(SP_L1D3PHI3Z2_L2D3PHI4Z2_TC_L1D3L2D3),
    .start(start4),.done(done3_5),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );


    wire [35:0] VMR_L1D3_AS_D3L1n1;
    wire [5:0] AS_D3L1n1_TC_L1D3L2D3_read_add;
    wire [35:0] AS_D3L1n1_TC_L1D3L2D3;
    AllStubs  AS_D3L1n1(
    .data_in(VMR_L1D3_AS_D3L1n1),
    .read_add(AS_D3L1n1_TC_L1D3L2D3_read_add),
    .data_out(AS_D3L1n1_TC_L1D3L2D3),
    .start(start3),.done(),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    wire [35:0] VMR_L2D3_AS_D3L2n1;
    wire [5:0] AS_D3L2n1_TC_L1D3L2D3_read_add;
    wire [35:0] AS_D3L2n1_TC_L1D3L2D3;
    AllStubs  AS_D3L2n1(
    .data_in(VMR_L2D3_AS_D3L2n1),
    .read_add(AS_D3L2n1_TC_L1D3L2D3_read_add),
    .data_out(AS_D3L2n1_TC_L1D3L2D3),
    .start(start3),.done(done),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [71:0] TC_L1D3L2D3_TPAR_L1D3L2D3;
    wire [5:0] TPAR_L1D3L2D3_FT_L1L2_read_add;
    wire [71:0] TPAR_L1D3L2D3_FT_L1L2;
    TrackletParameters  TPAR_L1D3L2D3(
    .data_in(TC_L1D3L2D3_TPAR_L1D3L2D3),
    .read_add(TPAR_L1D3L2D3_FT_L1L2_read_add),
    .data_out(TPAR_L1D3L2D3_FT_L1L2),
    .start(start5),.done(done),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    wire [53:0] TC_L1D3L2D3_TPROJ_L1D3L2D3_L3;
    wire [5:0] TPROJ_L1D3L2D3_L3_PR_L3D3_L1L2_number;
    wire [5:0] TPROJ_L1D3L2D3_L3_PR_L3D3_L1L2_read_add;
    wire [53:0] TPROJ_L1D3L2D3_L3_PR_L3D3_L1L2;
    TrackletProjections #(24,16,1) TPROJ_L1D3L2D3_L3(
    .data_in(TC_L1D3L2D3_TPROJ_L1D3L2D3_L3),
    .number_out(TPROJ_L1D3L2D3_L3_PR_L3D3_L1L2_number),
    .read_add(TPROJ_L1D3L2D3_L3_PR_L3D3_L1L2_read_add),
    .data_out(TPROJ_L1D3L2D3_L3_PR_L3D3_L1L2),
    .start(start5),.done(done5_5),.clk(clk), // The local projection memories have to wait for the neighbor projections
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );   
    
    wire [53:0] TC_L1D3L2D3_TPROJ_L1D3L2D3_L4;
    wire [5:0] TPROJ_L1D3L2D3_L4_PR_L4D3_L1L2_number;
    wire [5:0] TPROJ_L1D3L2D3_L4_PR_L4D3_L1L2_read_add;
    wire [53:0] TPROJ_L1D3L2D3_L4_PR_L4D3_L1L2;
    TrackletProjections #(24,16,1) TPROJ_L1D3L2D3_L4(
    .data_in(TC_L1D3L2D3_TPROJ_L1D3L2D3_L4),
    .number_out(TPROJ_L1D3L2D3_L4_PR_L4D3_L1L2_number),
    .read_add(TPROJ_L1D3L2D3_L4_PR_L4D3_L1L2_read_add),
    .data_out(TPROJ_L1D3L2D3_L4_PR_L4D3_L1L2),
    .start(start5),.done(done5_5),.clk(clk), // The local projection memories have to wait for the neighbor projections
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [53:0] TC_L1D3L2D3_TPROJ_L1D3L2D3_L5;
    wire [5:0] TPROJ_L1D3L2D3_L5_PR_L5D3_L1L2_number;
    wire [5:0] TPROJ_L1D3L2D3_L5_PR_L5D3_L1L2_read_add;
    wire [53:0] TPROJ_L1D3L2D3_L5_PR_L5D3_L1L2;
    TrackletProjections #(24,16,1) TPROJ_L1D3L2D3_L5(
    .data_in(TC_L1D3L2D3_TPROJ_L1D3L2D3_L5),
    .number_out(TPROJ_L1D3L2D3_L5_PR_L5D3_L1L2_number),
    .read_add(TPROJ_L1D3L2D3_L5_PR_L5D3_L1L2_read_add),
    .data_out(TPROJ_L1D3L2D3_L5_PR_L5D3_L1L2),
    .start(start5),.done(done5_5),.clk(clk), // The local projection memories have to wait for the neighbor projections
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    wire [53:0] TC_L1D3L2D3_TPROJ_L1D3L2D3_L6;
    wire [5:0] TPROJ_L1D3L2D3_L6_PR_L6D3_L1L2_number;
    wire [5:0] TPROJ_L1D3L2D3_L6_PR_L6D3_L1L2_read_add;
    wire [53:0] TPROJ_L1D3L2D3_L6_PR_L6D3_L1L2;
    TrackletProjections #(24,16,1) TPROJ_L1D3L2D3_L6(
    .data_in(TC_L1D3L2D3_TPROJ_L1D3L2D3_L6),
    .number_out(TPROJ_L1D3L2D3_L6_PR_L6D3_L1L2_number),
    .read_add(TPROJ_L1D3L2D3_L6_PR_L6D3_L1L2_read_add),
    .data_out(TPROJ_L1D3L2D3_L6_PR_L6D3_L1L2),
    .start(start5),.done(done5_5),.clk(clk), // The local projection memories have to wait for the neighbor projections
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    wire [53:0] TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L3;
    wire [5:0] TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3_number;
    wire [5:0] TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3_read_add;
    wire [53:0] TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3;
    TrackletProjections #(1) TPROJ_ToPlus_L1D3L2D3_L3(
    .data_in(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L3),
    .number_out(TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3_number),
    .read_add(TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3_read_add),
    .data_out(TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3),
    .start(start5),.done(done4_5),.clk(clk), // Sending memories are processed immediately
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );

    wire [53:0] TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L4;
    wire [5:0] TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3_number;
    wire [5:0] TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3_read_add;
    wire [53:0] TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3;
    TrackletProjections #(1) TPROJ_ToPlus_L1D3L2D3_L4(
    .data_in(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L4),
    .number_out(TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3_number),
    .read_add(TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3_read_add),
    .data_out(TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3),
    .start(start5),.done(done4_5),.clk(clk), // Sending memories are processed immediately
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    wire [53:0] TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L5;
    wire [5:0] TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3_number;
    wire [5:0] TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3_read_add;
    wire [53:0] TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3;
    TrackletProjections #(1) TPROJ_ToPlus_L1D3L2D3_L5(
    .data_in(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L5),
    .number_out(TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3_number),
    .read_add(TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3_read_add),
    .data_out(TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3),
    .start(start5),.done(done4_5),.clk(clk), // Sending memories are processed immediately
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );

    wire [53:0] TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L6;
    wire [5:0] TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3_number;
    wire [5:0] TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3_read_add;
    wire [53:0] TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3;
    TrackletProjections #(1) TPROJ_ToPlus_L1D3L2D3_L6(
    .data_in(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L6),
    .number_out(TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3_number),
    .read_add(TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3_read_add),
    .data_out(TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3),
    .start(start5),.done(done4_5),.clk(clk), // Sending memories are processed immediately
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );

    wire [53:0] TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L3;
    wire [5:0] TPROJ_ToMinus_L1D3L2D3_L3_PT_Minus_D3_number;
    wire [5:0] TPROJ_ToMinus_L1D3L2D3_L3_PT_Minus_D3_read_add;
    wire [53:0] TPROJ_ToMinus_L1D3L2D3_L3_PT_Minus_D3;
    TrackletProjections #(1) TPROJ_ToMinus_L1D3L2D3_L3(
    .data_in(TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L3),
    .number_out(TPROJ_ToMinus_L1D3L2D3_L3_PT_Minus_D3_number),
    .read_add(TPROJ_ToMinus_L1D3L2D3_L3_PT_Minus_D3_read_add),
    .data_out(TPROJ_ToMinus_L1D3L2D3_L3_PT_Minus_D3),
    .start(start5),.done(done4_5),.clk(clk), // Sending memories are processed immediately
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
        
    wire [53:0] TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L4;
    wire [5:0] TPROJ_ToMinus_L1D3L2D3_L4_PT_Minus_D3_number;
    wire [5:0] TPROJ_ToMinus_L1D3L2D3_L4_PT_Minus_D3_read_add;
    wire [53:0] TPROJ_ToMinus_L1D3L2D3_L4_PT_Minus_D3;
    TrackletProjections #(1) TPROJ_ToMinus_L1D3L2D3_L4(
    .data_in(TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L4),
    .number_out(TPROJ_ToMinus_L1D3L2D3_L4_PT_Minus_D3_number),
    .read_add(TPROJ_ToMinus_L1D3L2D3_L4_PT_Minus_D3_read_add),
    .data_out(TPROJ_ToMinus_L1D3L2D3_L4_PT_Minus_D3),
    .start(start5),.done(done4_5),.clk(clk), // Sending memories are processed immediately
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );

    wire [53:0] TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L5;
    wire [5:0] TPROJ_ToMinus_L1D3L2D3_L5_PT_Minus_D3_number;
    wire [5:0] TPROJ_ToMinus_L1D3L2D3_L5_PT_Minus_D3_read_add;
    wire [53:0] TPROJ_ToMinus_L1D3L2D3_L5_PT_Minus_D3;
    TrackletProjections #(1) TPROJ_ToMinus_L1D3L2D3_L5(
    .data_in(TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L5),
    .number_out(TPROJ_ToMinus_L1D3L2D3_L5_PT_Minus_D3_number),
    .read_add(TPROJ_ToMinus_L1D3L2D3_L5_PT_Minus_D3_read_add),
    .data_out(TPROJ_ToMinus_L1D3L2D3_L5_PT_Minus_D3),
    .start(start5),.done(done4_5),.clk(clk), // Sending memories are processed immediately
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    wire [53:0] TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L6;
    wire [5:0] TPROJ_ToMinus_L1D3L2D3_L6_PT_Minus_D3_number;
    wire [5:0] TPROJ_ToMinus_L1D3L2D3_L6_PT_Minus_D3_read_add;
    wire [53:0] TPROJ_ToMinus_L1D3L2D3_L6_PT_Minus_D3;
    TrackletProjections #(1) TPROJ_ToMinus_L1D3L2D3_L6(
    .data_in(TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L6),
    .number_out(TPROJ_ToMinus_L1D3L2D3_L6_PT_Minus_D3_number),
    .read_add(TPROJ_ToMinus_L1D3L2D3_L6_PT_Minus_D3_read_add),
    .data_out(TPROJ_ToMinus_L1D3L2D3_L6_PT_Minus_D3),
    .start(start5),.done(done4_5),.clk(clk), // Sending memories are processed immediately
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    
    
    TrackletCalculator  TC_L1D3L2D3(
    .number_in1(SP_L1D3PHI1Z1_L2D3PHI1Z1_TC_L1D3L2D3_number),
    .read_add1(SP_L1D3PHI1Z1_L2D3PHI1Z1_TC_L1D3L2D3_read_add),
    .stubpair1in(SP_L1D3PHI1Z1_L2D3PHI1Z1_TC_L1D3L2D3),
    .number_in2(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_number),
    .read_add2(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3_read_add),
    .stubpair2in(SP_L1D3PHI1Z1_L2D3PHI2Z1_TC_L1D3L2D3),
    .number_in3(SP_L1D3PHI1Z1_L2D3PHI1Z2_TC_L1D3L2D3_number),
    .read_add3(SP_L1D3PHI1Z1_L2D3PHI1Z2_TC_L1D3L2D3_read_add),
    .stubpair3in(SP_L1D3PHI1Z1_L2D3PHI1Z2_TC_L1D3L2D3),
    .number_in4(SP_L1D3PHI1Z1_L2D3PHI2Z2_TC_L1D3L2D3_number),
    .read_add4(SP_L1D3PHI1Z1_L2D3PHI2Z2_TC_L1D3L2D3_read_add),
    .stubpair4in(SP_L1D3PHI1Z1_L2D3PHI2Z2_TC_L1D3L2D3),
    .number_in5(SP_L1D3PHI1Z2_L2D3PHI1Z2_TC_L1D3L2D3_number),
    .read_add5(SP_L1D3PHI1Z2_L2D3PHI1Z2_TC_L1D3L2D3_read_add),
    .stubpair5in(SP_L1D3PHI1Z2_L2D3PHI1Z2_TC_L1D3L2D3),
    .number_in6(SP_L1D3PHI1Z2_L2D3PHI2Z2_TC_L1D3L2D3_number),
    .read_add6(SP_L1D3PHI1Z2_L2D3PHI2Z2_TC_L1D3L2D3_read_add),
    .stubpair6in(SP_L1D3PHI1Z2_L2D3PHI2Z2_TC_L1D3L2D3),
    .number_in7(SP_L1D3PHI2Z1_L2D3PHI2Z1_TC_L1D3L2D3_number),
    .read_add7(SP_L1D3PHI2Z1_L2D3PHI2Z1_TC_L1D3L2D3_read_add),
    .stubpair7in(SP_L1D3PHI2Z1_L2D3PHI2Z1_TC_L1D3L2D3),
    .number_in8(SP_L1D3PHI2Z1_L2D3PHI3Z1_TC_L1D3L2D3_number),
    .read_add8(SP_L1D3PHI2Z1_L2D3PHI3Z1_TC_L1D3L2D3_read_add),
    .stubpair8in(SP_L1D3PHI2Z1_L2D3PHI3Z1_TC_L1D3L2D3),
    .number_in9(SP_L1D3PHI2Z1_L2D3PHI2Z2_TC_L1D3L2D3_number),
    .read_add9(SP_L1D3PHI2Z1_L2D3PHI2Z2_TC_L1D3L2D3_read_add),
    .stubpair9in(SP_L1D3PHI2Z1_L2D3PHI2Z2_TC_L1D3L2D3),
    .number_in10(SP_L1D3PHI2Z1_L2D3PHI3Z2_TC_L1D3L2D3_number),
    .read_add10(SP_L1D3PHI2Z1_L2D3PHI3Z2_TC_L1D3L2D3_read_add),
    .stubpair10in(SP_L1D3PHI2Z1_L2D3PHI3Z2_TC_L1D3L2D3),
    .number_in11(SP_L1D3PHI2Z2_L2D3PHI2Z2_TC_L1D3L2D3_number),
    .read_add11(SP_L1D3PHI2Z2_L2D3PHI2Z2_TC_L1D3L2D3_read_add),
    .stubpair11in(SP_L1D3PHI2Z2_L2D3PHI2Z2_TC_L1D3L2D3),
    .number_in12(SP_L1D3PHI2Z2_L2D3PHI3Z2_TC_L1D3L2D3_number),
    .read_add12(SP_L1D3PHI2Z2_L2D3PHI3Z2_TC_L1D3L2D3_read_add),
    .stubpair12in(SP_L1D3PHI2Z2_L2D3PHI3Z2_TC_L1D3L2D3),
    .number_in13(SP_L1D3PHI3Z1_L2D3PHI3Z1_TC_L1D3L2D3_number),
    .read_add13(SP_L1D3PHI3Z1_L2D3PHI3Z1_TC_L1D3L2D3_read_add),
    .stubpair13in(SP_L1D3PHI3Z1_L2D3PHI3Z1_TC_L1D3L2D3),
    .number_in14(SP_L1D3PHI3Z1_L2D3PHI4Z1_TC_L1D3L2D3_number),
    .read_add14(SP_L1D3PHI3Z1_L2D3PHI4Z1_TC_L1D3L2D3_read_add),
    .stubpair14in(SP_L1D3PHI3Z1_L2D3PHI4Z1_TC_L1D3L2D3),
    .number_in15(SP_L1D3PHI3Z1_L2D3PHI3Z2_TC_L1D3L2D3_number),
    .read_add15(SP_L1D3PHI3Z1_L2D3PHI3Z2_TC_L1D3L2D3_read_add),
    .stubpair15in(SP_L1D3PHI3Z1_L2D3PHI3Z2_TC_L1D3L2D3),
    .number_in16(SP_L1D3PHI3Z1_L2D3PHI4Z2_TC_L1D3L2D3_number),
    .read_add16(SP_L1D3PHI3Z1_L2D3PHI4Z2_TC_L1D3L2D3_read_add),
    .stubpair16in(SP_L1D3PHI3Z1_L2D3PHI4Z2_TC_L1D3L2D3),
    .number_in17(SP_L1D3PHI3Z2_L2D3PHI3Z2_TC_L1D3L2D3_number),
    .read_add17(SP_L1D3PHI3Z2_L2D3PHI3Z2_TC_L1D3L2D3_read_add),
    .stubpair17in(SP_L1D3PHI3Z2_L2D3PHI3Z2_TC_L1D3L2D3),
    .number_in18(SP_L1D3PHI3Z2_L2D3PHI4Z2_TC_L1D3L2D3_number),
    .read_add18(SP_L1D3PHI3Z2_L2D3PHI4Z2_TC_L1D3L2D3_read_add),
    .stubpair18in(SP_L1D3PHI3Z2_L2D3PHI4Z2_TC_L1D3L2D3),
    .read_add_innerall(AS_D3L1n1_TC_L1D3L2D3_read_add),
    .innerallstubin(AS_D3L1n1_TC_L1D3L2D3),
    .read_add_outerall(AS_D3L2n1_TC_L1D3L2D3_read_add),
    .outerallstubin(AS_D3L2n1_TC_L1D3L2D3),
    .trackpar(TC_L1D3L2D3_TPAR_L1D3L2D3),
    .proj1(TC_L1D3L2D3_TPROJ_L1D3L2D3_L3),
    .proj2(TC_L1D3L2D3_TPROJ_L1D3L2D3_L4),
    .proj3(TC_L1D3L2D3_TPROJ_L1D3L2D3_L5),
    .proj4(TC_L1D3L2D3_TPROJ_L1D3L2D3_L6),
    .projPlus1(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L3),
    .projPlus2(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L4),
    .projPlus3(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L5),
    .projPlus4(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L6),
    .projMinus1(TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L3),
    .projMinus2(TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L4),
    .projMinus3(TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L5),
    .projMinus4(TC_L1D3L2D3_TPROJ_ToMinus_L1D3L2D3_L6),
    .start(start4_5),.done(done4),.clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(io_rd_data_R3_io_block),
    .io_rd_ack(io_rd_ack_R3_io_block),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
    writer writer1(
    .read_en(en_proc),
    .data_out1(TE_L1D3PHI1Z1_L2D3PHI1Z1_SP_L1D3PHI1Z1_L2D3PHI1Z1),
    .data_out2(TE_L1D3PHI1Z1_L2D3PHI2Z1_SP_L1D3PHI1Z1_L2D3PHI2Z1),
    .data_out3(TE_L1D3PHI1Z1_L2D3PHI1Z2_SP_L1D3PHI1Z1_L2D3PHI1Z2),
    .data_out4(TE_L1D3PHI1Z1_L2D3PHI2Z2_SP_L1D3PHI1Z1_L2D3PHI2Z2),
    .data_out5(TE_L1D3PHI1Z2_L2D3PHI1Z2_SP_L1D3PHI1Z2_L2D3PHI1Z2),
    .data_out6(TE_L1D3PHI1Z2_L2D3PHI2Z2_SP_L1D3PHI1Z2_L2D3PHI2Z2),
    .data_out7(TE_L1D3PHI2Z1_L2D3PHI2Z1_SP_L1D3PHI2Z1_L2D3PHI2Z1),
    .data_out8(TE_L1D3PHI2Z1_L2D3PHI3Z1_SP_L1D3PHI2Z1_L2D3PHI3Z1),
    .data_out9(TE_L1D3PHI2Z1_L2D3PHI2Z2_SP_L1D3PHI2Z1_L2D3PHI2Z2),
    .data_out10(TE_L1D3PHI2Z1_L2D3PHI3Z2_SP_L1D3PHI2Z1_L2D3PHI3Z2),
    .data_out11(TE_L1D3PHI2Z2_L2D3PHI2Z2_SP_L1D3PHI2Z2_L2D3PHI2Z2),
    .data_out12(TE_L1D3PHI2Z2_L2D3PHI3Z2_SP_L1D3PHI2Z2_L2D3PHI3Z2),
    .data_out13(TE_L1D3PHI3Z1_L2D3PHI3Z1_SP_L1D3PHI3Z1_L2D3PHI3Z1),
    .data_out14(TE_L1D3PHI3Z1_L2D3PHI4Z1_SP_L1D3PHI3Z1_L2D3PHI4Z1),
    .data_out15(TE_L1D3PHI3Z1_L2D3PHI3Z2_SP_L1D3PHI3Z1_L2D3PHI3Z2),
    .data_out16(TE_L1D3PHI3Z1_L2D3PHI4Z2_SP_L1D3PHI3Z1_L2D3PHI4Z2),
    .data_out17(TE_L1D3PHI3Z2_L2D3PHI3Z2_SP_L1D3PHI3Z2_L2D3PHI3Z2),
    .data_out18(TE_L1D3PHI3Z2_L2D3PHI4Z2_SP_L1D3PHI3Z2_L2D3PHI4Z2),
    .data_out19(VMR_L1D3_AS_D3L1n1),
    .data_out20(VMR_L2D3_AS_D3L2n1),
    
    .clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(writer_out),
    .io_rd_ack(writer_ack),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    
         
    reader reader1( 
    .read_add1(TPAR_L1D3L2D3_FT_L1L2_read_add),  
    .number_in1(6'd2),
    .input1(TPAR_L1D3L2D3_FT_L1L2),
    .read_add2(TPROJ_L1D3L2D3_L3_PR_L3D3_L1L2_read_add),  
    .number_in2(TPROJ_L1D3L2D3_L3_PR_L3D3_L1L2_number),
    .input2(TPROJ_L1D3L2D3_L3_PR_L3D3_L1L2),
    .read_add3(TPROJ_L1D3L2D3_L4_PR_L4D3_L1L2_read_add),  
    .number_in3(TPROJ_L1D3L2D3_L4_PR_L4D3_L1L2_number),
    .input3(TPROJ_L1D3L2D3_L4_PR_L4D3_L1L2),
    .read_add4(TPROJ_L1D3L2D3_L5_PR_L5D3_L1L2_read_add),  
    .number_in4(TPROJ_L1D3L2D3_L5_PR_L5D3_L1L2_number),
    .input4(TPROJ_L1D3L2D3_L5_PR_L5D3_L1L2),
    .read_add5(TPROJ_L1D3L2D3_L6_PR_L6D3_L1L2_read_add),  
    .number_in5(TPROJ_L1D3L2D3_L6_PR_L6D3_L1L2_number),
    .input5(TPROJ_L1D3L2D3_L6_PR_L6D3_L1L2),
    .read_add6(TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3_read_add),  
    .number_in6(TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3_number),
    .input6(TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3),
    .read_add7(TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3_read_add),  
    .number_in7(TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3_number),
    .input7(TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3),
    .read_add8(TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3_read_add),  
    .number_in8(TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3_number),
    .input8(TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3),
    .read_add9(TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3_read_add),  
    .number_in9(TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3_number),
    .input9(TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3),
    .read_add10(TPROJ_ToMinus_L1D3L2D3_L3_PT_Minus_D3_read_add),  
    .number_in10(TPROJ_ToMinus_L1D3L2D3_L3_PT_Minus_D3_number),
    .input10(TPROJ_ToMinus_L1D3L2D3_L3_PT_Minus_D3),
    .read_add11(TPROJ_ToMinus_L1D3L2D3_L4_PT_Minus_D3_read_add),  
    .number_in11(TPROJ_ToMinus_L1D3L2D3_L4_PT_Minus_D3_number),
    .input11(TPROJ_ToMinus_L1D3L2D3_L4_PT_Minus_D3),
    .read_add12(TPROJ_ToMinus_L1D3L2D3_L5_PT_Minus_D3_read_add),  
    .number_in12(TPROJ_ToMinus_L1D3L2D3_L5_PT_Minus_D3_number),
    .input12(TPROJ_ToMinus_L1D3L2D3_L5_PT_Minus_D3),
    .read_add13(TPROJ_ToMinus_L1D3L2D3_L6_PT_Minus_D3_read_add),  
    .number_in13(TPROJ_ToMinus_L1D3L2D3_L6_PT_Minus_D3_number),
    .input13(TPROJ_ToMinus_L1D3L2D3_L6_PT_Minus_D3),
    
    .clk(clk),
    .reset(reset),
    .en_proc(en_proc),
    .io_clk(io_clk),
    .io_sel(io_sel_R3_io_block),
    .io_addr(io_addr[23:0]),        
    .io_sync(io_sync),
    .io_rd_en(io_rd_en),
    .io_wr_en(io_wr_en),
    .io_wr_data(io_wr_data[31:0]),
    .io_rd_data(reader_out),
    .io_rd_ack(reader_ack),
    .BX(BX[2:0]),
    .first_clk(first_clk),
    .not_first_clk(not_first_clk)
    );
    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // connect a mux to steer the readback data from one of the segments to the ipbus
    reg [31:0] io_rd_data_reg;
    assign io_rd_data = io_rd_data_reg;
    // Assert 'io_rd_ack' if any modules below this function assert their 'io_rd_ack'.
    reg io_rd_ack_reg;
    assign io_rd_ack = io_rd_ack_reg;
    always @(posedge io_clk) begin
        io_rd_ack_reg <= io_sync & io_rd_en & (reader_ack);
    end

    always @(posedge io_clk) begin
        if (reader_ack)    io_rd_data_reg <= reader_out;
    end
    
endmodule
