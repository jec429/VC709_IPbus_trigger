`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2015 01:47:29 PM
// Design Name: 
// Module Name: Tracklet_Communication
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


module Tracklet_Communication(
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
    
    wire io_sel_R3_io_block;
    assign io_sel_R3_io_block = io_sel && (io_addr[27:24] == 4'b1000);
       
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
    
    
    wire [53:0] PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L3;
    wire [5:0] TPROJ_FromPlus_L1D3L2D3_L3_PR_L3D3_L1L2_number;
    wire [5:0] TPROJ_FromPlus_L1D3L2D3_L3_PR_L3D3_L1L2_read_add;
    wire [53:0] TPROJ_FromPlus_L1D3L2D3_L3_PR_L3D3_L1L2;
    TrackletProjections #(16,1) TPROJ_FromPlus_L1D3L2D3_L3(
    .data_in(PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L3),
    .number_out(TPROJ_FromPlus_L1D3L2D3_L3_PR_L3D3_L1L2_number),
    .read_add(TPROJ_FromPlus_L1D3L2D3_L3_PR_L3D3_L1L2_read_add),
    .data_out(TPROJ_FromPlus_L1D3L2D3_L3_PR_L3D3_L1L2),
    .start(start6),.done(done5_5),.clk(clk), // Receiving memories have to wait for neighbor communication
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
    
    
    wire [53:0] PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L4;
    wire [5:0] TPROJ_FromPlus_L1D3L2D3_L4_PR_L4D3_L1L2_number;
    wire [5:0] TPROJ_FromPlus_L1D3L2D3_L4_PR_L4D3_L1L2_read_add;
    wire [53:0] TPROJ_FromPlus_L1D3L2D3_L4_PR_L4D3_L1L2;
    TrackletProjections #(16,1) TPROJ_FromPlus_L1D3L2D3_L4(
    .data_in(PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L4),
    .number_out(TPROJ_FromPlus_L1D3L2D3_L4_PR_L4D3_L1L2_number),
    .read_add(TPROJ_FromPlus_L1D3L2D3_L4_PR_L4D3_L1L2_read_add),
    .data_out(TPROJ_FromPlus_L1D3L2D3_L4_PR_L4D3_L1L2),
    .start(start6),.done(done5_5),.clk(clk), // Receiving memories have to wait for neighbor communication
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
    
    
    wire [53:0] PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L5;
    wire [5:0] TPROJ_FromPlus_L1D3L2D3_L5_PR_L5D3_L1L2_number;
    wire [5:0] TPROJ_FromPlus_L1D3L2D3_L5_PR_L5D3_L1L2_read_add;
    wire [53:0] TPROJ_FromPlus_L1D3L2D3_L5_PR_L5D3_L1L2;
    TrackletProjections #(16,1) TPROJ_FromPlus_L1D3L2D3_L5(
    .data_in(PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L5),
    .number_out(TPROJ_FromPlus_L1D3L2D3_L5_PR_L5D3_L1L2_number),
    .read_add(TPROJ_FromPlus_L1D3L2D3_L5_PR_L5D3_L1L2_read_add),
    .data_out(TPROJ_FromPlus_L1D3L2D3_L5_PR_L5D3_L1L2),
    .start(start6),.done(done5_5),.clk(clk), // Receiving memories have to wait for neighbor communication
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
    
    
    wire [53:0] PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L6;
    wire [5:0] TPROJ_FromPlus_L1D3L2D3_L6_PR_L6D3_L1L2_number;
    wire [5:0] TPROJ_FromPlus_L1D3L2D3_L6_PR_L6D3_L1L2_read_add;
    wire [53:0] TPROJ_FromPlus_L1D3L2D3_L6_PR_L6D3_L1L2;
    TrackletProjections #(16,1) TPROJ_FromPlus_L1D3L2D3_L6(
    .data_in(PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L6),
    .number_out(TPROJ_FromPlus_L1D3L2D3_L6_PR_L6D3_L1L2_number),
    .read_add(TPROJ_FromPlus_L1D3L2D3_L6_PR_L6D3_L1L2_read_add),
    .data_out(TPROJ_FromPlus_L1D3L2D3_L6_PR_L6D3_L1L2),
    .start(start6),.done(done5_5),.clk(clk), // Receiving memories have to wait for neighbor communication
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

    
    ProjTransceiver  PT_Plus_D3(
    .number_in1(TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3_number),
    .read_add1(TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3_read_add),
    .input_L1L2_1(TPROJ_ToPlus_L1D3L2D3_L3_PT_Plus_D3),
    .number_in2(TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3_number),
    .read_add2(TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3_read_add),
    .input_L1L2_2(TPROJ_ToPlus_L1D3L2D3_L4_PT_Plus_D3),
    .number_in3(TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3_number),
    .read_add3(TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3_read_add),
    .input_L1L2_3(TPROJ_ToPlus_L1D3L2D3_L5_PT_Plus_D3),
    .number_in4(TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3_number),
    .read_add4(TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3_read_add),
    .input_L1L2_4(TPROJ_ToPlus_L1D3L2D3_L6_PT_Plus_D3),
    
    .output_L1L2_1(PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L3),
    .output_L1L2_2(PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L4),
    .output_L1L2_3(PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L5),
    .output_L1L2_4(PT_Plus_D3_TPROJ_FromPlus_L1D3L2D3_L6),
    
    .start(start5_5),.done(done5),.clk(clk),
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
    .data_out1(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L3),
    .data_out2(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L4),
    .data_out3(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L5),
    .data_out3(TC_L1D3L2D3_TPROJ_ToPlus_L1D3L2D3_L6),
    
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
          
    
    wire [31:0] reader_out;
    
    reader reader1(
    .read_add1(TPROJ_FromPlus_L1D3L2D3_L3_PR_L3D3_L1L2_read_add),
    .read_add2(TPROJ_FromPlus_L1D3L2D3_L4_PR_L4D3_L1L2_read_add),
    .read_add3(TPROJ_FromPlus_L1D3L2D3_L5_PR_L5D3_L1L2_read_add),
    .read_add4(TPROJ_FromPlus_L1D3L2D3_L6_PR_L6D3_L1L2_read_add),
    
    .number_in1(TPROJ_FromPlus_L1D3L2D3_L3_PR_L3D3_L1L2_number),
    .number_in2(TPROJ_FromPlus_L1D3L2D3_L4_PR_L4D3_L1L2_number),
    .number_in3(TPROJ_FromPlus_L1D3L2D3_L5_PR_L5D3_L1L2_number),
    .number_in4(TPROJ_FromPlus_L1D3L2D3_L6_PR_L6D3_L1L2_number),
    
    .input1(TPROJ_FromPlus_L1D3L2D3_L3_PR_L3D3_L1L2),
    .input2(TPROJ_FromPlus_L1D3L2D3_L4_PR_L4D3_L1L2),
    .input3(TPROJ_FromPlus_L1D3L2D3_L5_PR_L5D3_L1L2),
    .input4(TPROJ_FromPlus_L1D3L2D3_L6_PR_L6D3_L1L2),
    
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
