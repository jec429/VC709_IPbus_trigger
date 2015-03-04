`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2015 11:23:31 AM
// Design Name: 
// Module Name: reader
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


module reader(
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
    
    output reg [5:0] read_add1,
    output reg [5:0] read_add2,
    output reg [5:0] read_add3,
    output reg [5:0] read_add4,
    output reg [5:0] read_add5,
    output reg [5:0] read_add6,
    
    input [5:0] number_in1,
    input [5:0] number_in2,
    input [5:0] number_in3,
    input [5:0] number_in4,
    input [5:0] number_in5,
    input [5:0] number_in6,
    
    
    input [35:0] input1,
    input [35:0] input2,
    input [35:0] input3,
    input [35:0] input4,
    input [35:0] input5,
    input [35:0] input6
    
    );
    
    initial begin
        read_add1 = 6'b0;
        read_add2 = 6'b0;
        read_add3 = 6'b0;
        read_add4 = 6'b0;
        read_add5 = 6'b0;
        read_add6 = 6'b0;
    end
    
    always @(posedge io_clk) begin
        if(number_in1 > 0)
            read_add1 <= read_add1 + 1'b1;
        else
            read_add1 <= read_add1;
        if(number_in2 > 0)
            read_add2 <= read_add2 + 1'b1;
        else
            read_add2 <= read_add2;
        if(number_in3 > 0)
            read_add3 <= read_add3 + 1'b1;
        else
            read_add3 <= read_add3;
        if(number_in4 > 0)
            read_add4 <= read_add4 + 1'b1;
        else
            read_add4 <= read_add4;
        if(number_in5 > 0)
            read_add5 <= read_add5 + 1'b1;
        else
            read_add5 <= read_add5;
        if(number_in6 > 0)
            read_add6 <= read_add6 + 1'b1;
        else
            read_add6 <= read_add6;
    end   
    
    assign io_sel_data1 = io_sel && (io_addr[2:0] == 3'b000);
    assign io_sel_data2 = io_sel && (io_addr[2:0] == 3'b001);
    assign io_sel_data3 = io_sel && (io_addr[2:0] == 3'b010);
    assign io_sel_data4 = io_sel && (io_addr[2:0] == 3'b011);
    assign io_sel_data5 = io_sel && (io_addr[2:0] == 3'b100);
    assign io_sel_data6 = io_sel && (io_addr[2:0] == 3'b101);
    
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
        if (io_sel_data1) io_rd_data_reg <= input1[31:0];
        if (io_sel_data2) io_rd_data_reg <= input2[31:0];
        if (io_sel_data3) io_rd_data_reg <= input3[31:0];
        if (io_sel_data4) io_rd_data_reg <= input4[31:0];
        if (io_sel_data5) io_rd_data_reg <= input5[31:0];
        if (io_sel_data6) io_rd_data_reg <= input6[31:0];
        
     end
    
endmodule
