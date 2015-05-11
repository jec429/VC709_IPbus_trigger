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
    
    output reg [63:0] data_out1,
    output reg [63:0] data_out2,
    output reg [63:0] data_out3,
    output reg [63:0] data_out4,
    output reg [63:0] data_out5,
    output reg [63:0] data_out6,
    output reg [63:0] data_out7,
    output reg [63:0] data_out8,
    output reg [63:0] data_out9,
    output reg [63:0] data_out10,
    output reg [63:0] data_out11,
    output reg [63:0] data_out12,
    output reg [63:0] data_out13,
    output reg [63:0] data_out14,
    output reg [63:0] data_out15,
    output reg [63:0] data_out16,
    output reg [63:0] data_out17,
    output reg [63:0] data_out18,
    output reg [63:0] data_out19,
    output reg [63:0] data_out20,
    
    output valid1,
    output valid2,
    output valid3,
    output valid4,
    output valid5,
    output valid6,
    output valid7,
    output valid8,
    output valid9,
    output valid10,
    output valid11,
    output valid12,
    output valid13,
    output valid14,
    output valid15,
    output valid16,
    output valid17,
    output valid18,
    output valid19,
    output valid20,
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
    
    wire wr_en;
    assign wr_en = io_sel_data_in1;
    wire [35:0] wr_data;
        
    TP_raw_stub_fifo input_fifo(.wr_clk(io_clk), .rst(reset), .din({4'h0,io_wr_data}), .wr_en(wr_en), // Make a 36 bit word from 32 bits of IPbus
                                    .rd_clk(clk), .rd_en(en_proc), .dout(wr_data),
                                    .empty(valid1), .full(fifo_full));
   
                                    
    assign valid2 = valid1;
    assign valid3 = valid1;
    assign valid4 = valid1;
    assign valid5 = valid1;
    assign valid6 = valid1;
    assign valid7 = valid1;
    assign valid8 = valid1;
    assign valid9 = valid1;
    assign valid10 = valid1;
    assign valid11 = valid1;
    assign valid12 = valid1;
    assign valid13 = valid1;
    assign valid14 = valid1;
    assign valid15 = valid1;
    assign valid16 = valid1;
    assign valid17 = valid1;
    assign valid18 = valid1;
    assign valid19 = valid1;
    assign valid20 = valid1;
                              
    reg [3:0] blah = 4'h0;
    reg [3:0] blah1 = 4'h1;
    reg [3:0] blah2 = 4'h2;
    reg [3:0] blah3 = 4'h3;
    reg [3:0] blah4 = 4'h4;
    reg [3:0] blah5 = 4'h5;
    reg [3:0] blah6 = 4'h6;
    reg [3:0] blah7 = 4'h7;
    reg [3:0] blah8 = 4'h8;
    reg [3:0] blah9 = 4'h9;
    reg [3:0] blah10 = 4'hA;                                   
    always @ (posedge clk) begin
        if (!reset && wr_data > 0 && !valid1) begin
            data_out1 <= {blah,wr_data,wr_data[35:7],blah};
            data_out2 <= {blah1,wr_data,wr_data[35:7],blah1};
            data_out3 <= {blah2,wr_data,wr_data[35:7],blah2};
            data_out4 <= {blah3,wr_data,wr_data[35:7],blah3};
            data_out5 <= {blah4,wr_data,wr_data[35:7],blah4};
            data_out6 <= {blah5,wr_data,wr_data[35:7],blah5};
            data_out7 <= {blah6,wr_data,wr_data[35:7],blah6};
            data_out8 <= {blah7,wr_data,wr_data[35:7],blah7};
            data_out9 <= {blah8,wr_data,wr_data[35:7],blah8};
            data_out10 <= {blah9,wr_data,wr_data[35:7],blah9};
            data_out11 <= {blah10,wr_data,wr_data[35:7],blah10};
            data_out12 <= {blah1,wr_data,wr_data[35:7],blah1};
            data_out13 <= {blah2,wr_data,wr_data[35:7],blah2};
            data_out14 <= {blah3,wr_data,wr_data[35:7],blah3};
            data_out15 <= {blah4,wr_data,wr_data[35:7],blah4};
            data_out16 <= {blah5,wr_data,wr_data[35:7],blah5};
            data_out17 <= {blah6,wr_data,wr_data[35:7],blah6};
            data_out18 <= {blah7,wr_data,wr_data[35:7],blah7};
            data_out19 <= {blah8,wr_data,wr_data[35:7],blah8};
            data_out20 <= {blah9,wr_data,wr_data[35:7],blah9};
        end
        else begin
            data_out1 <= 64'h0000000000000000;
            data_out2 <= 64'h0000000000000000;
            data_out3 <= 64'h0000000000000000;
            data_out4 <= 64'h0000000000000000;
            data_out5 <= 64'h0000000000000000;
            data_out6 <= 64'h0000000000000000;
            data_out7 <= 64'h0000000000000000;
            data_out8 <= 64'h0000000000000000;
            data_out9 <= 64'h0000000000000000;
            data_out10 <= 64'h0000000000000000;
            data_out11 <= 64'h0000000000000000;
            data_out12 <= 64'h0000000000000000;
            data_out13 <= 64'h0000000000000000;
            data_out14 <= 64'h0000000000000000;
            data_out15 <= 64'h0000000000000000;
            data_out16 <= 64'h0000000000000000;
            data_out17 <= 64'h0000000000000000;
            data_out18 <= 64'h0000000000000000;
            data_out19 <= 64'h0000000000000000;
            data_out20 <= 64'h0000000000000000;
        end
    end
    
    ///////////////////////////////////////////////////////////////////////////////////////////////
    // readback mux
    // If a particular register or memory is addressed, connect that register's or memory's signals
    // to the 'io_rd_data' output. At the same time, assert 'io_rd_ack' to tell downstream muxes to
    // use the 'io_rd_data' from this module as their source of data.
   
    reg [31:0] io_rd_data_reg;
    assign io_rd_data[31:0] = io_rd_data_reg[31:0];
    // Assert 'io_rd_ack' if chip select for this module is asserted during a 'read' operation.
    reg io_rd_ack_reg;
    assign io_rd_ack = io_rd_ack_reg;
    always @(posedge io_clk) begin
        io_rd_ack_reg <= io_sync & io_sel & io_rd_en;
    end
    // Route the selected memory to the 'rdbk' output.
    always @(posedge io_clk) begin
        if (io_sel_data_in1) io_rd_data_reg <= data_out1[31:0];
    end
    
endmodule
