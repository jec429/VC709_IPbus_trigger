`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/04/2015 11:52:43 AM
// Design Name: 
// Module Name: ProjTransmitter
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


module ProjTransceiver(
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
    
    // links
    output wire txn_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    output wire txp_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    input  wire rxn_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    input  wire rxp_pphi,          //Links to neighbouring sector board with larger phi (+phi)
    output wire txn_mphi,          //Links to neighbouring sector board with smaller phi (phi)
    output wire txp_mphi,          //Links to neighbouring sector board with smaller phi (phi)
    input  wire rxn_mphi,          //Links to neighbouring sector board with smaller phi (phi)
    input  wire rxp_mphi,          //Links to neighbouring sector board with smaller phi (phi)
    //gt reference clock
    input wire gt_refclk,         
    //initial clock
    input wire init_clk,
     
    input start,
    output reg done,
    
    input [5:0] number_in1,
    output reg [5:0] read_add1,
    input [53:0] input_L1L2_1,
    input [5:0] number_in2,
    output reg [5:0] read_add2,
    input [53:0] input_L1L2_2,
    input [5:0] number_in3,
    output reg [5:0] read_add3,
    input [53:0] input_L1L2_3,
    input [5:0] number_in4,
    output reg [5:0] read_add4,
    input [53:0] input_L1L2_4,
    input [5:0] number_in5,
    output reg [5:0] read_add5,
    input [53:0] input_L3L4_1,
    input [5:0] number_in6,
    output reg [5:0] read_add6,
    input [53:0] input_L3L4_2,
    input [5:0] number_in7,
    output reg [5:0] read_add7,
    input [53:0] input_L3L4_3,
    input [5:0] number_in8,
    output reg [5:0] read_add8,
    input [53:0] input_L3L4_4,
    input [5:0] number_in9,
    output reg [5:0] read_add9,
    input [53:0] input_L5L6_1,
    input [5:0] number_in10,
    output reg [5:0] read_add10,
    input [53:0] input_L5L6_2,
    input [5:0] number_in11,
    output reg [5:0] read_add11,
    input [53:0] input_L5L6_3,
    input [5:0] number_in12,
    output reg [5:0] read_add12,
    input [53:0] input_L5L6_4,
    
    output reg [53:0] output_L1L2_1,
    output reg [53:0] output_L1L2_2,
    output reg [53:0] output_L1L2_3,
    output reg [53:0] output_L1L2_4,
    output reg [53:0] output_L3L4_1,
    output reg [53:0] output_L3L4_2,
    output reg [53:0] output_L3L4_3,
    output reg [53:0] output_L3L4_4,
    output reg [53:0] output_L5L6_1,
    output reg [53:0] output_L5L6_2,
    output reg [53:0] output_L5L6_3,
    output reg [53:0] output_L5L6_4,
    output reg valid_L1L2_1,
    output reg valid_L1L2_2,
    output reg valid_L1L2_3,
    output reg valid_L1L2_4,
    output reg valid_L3L4_1,
    output reg valid_L3L4_2,
    output reg valid_L3L4_3,
    output reg valid_L3L4_4,
    output reg valid_L5L6_1,
    output reg valid_L5L6_2,
    output reg valid_L5L6_3,
    output reg valid_L5L6_4
    
    );
    
    parameter [7:0] n_hold = 8'd3;
    reg [6:0] clk_cnt;
    reg [2:0] BX_pipe;
    reg first_clk_pipe;
    
    initial begin
       clk_cnt = 7'b0;
       BX_pipe = 3'b111;
    end
    
    always @(posedge clk) begin
       if(en_proc)
           clk_cnt <= clk_cnt + 1'b1;
       else begin
           clk_cnt <= 7'b0;
           BX_pipe <= 3'b111;
       end
       if(start) begin
           BX_pipe <= BX_pipe + 1'b1;
           first_clk_pipe <= 1'b1;
       end
       else begin
           first_clk_pipe <= 1'b0;
       end
    end
    
    reg [n_hold:0] hold;
    always @(posedge clk) begin
       hold[0] <= start;
       hold[n_hold:1] <= hold[n_hold-1:0];
       done <= hold[n_hold];
    end

    initial begin
        read_add1 = 6'h3f;
        read_add2 = 6'h3f;
        read_add3 = 6'h3f;
    end    
    always @(posedge clk) begin
        if(first_clk_pipe) begin
            read_add1 <= 6'h3f;
            read_add2 <= 6'h3f;
            read_add3 <= 6'h3f;    
        end
        else begin
            if(read_add1 + 1'b1 < number_in1) begin
                read_add1 <= read_add1 + 1'b1;
            end
            else begin
                read_add1 <= read_add1;
                if(read_add2 + 1'b1 < number_in2) begin
                    read_add2 <= read_add2 + 1'b1;
                end
                else begin
                    read_add2 <= read_add2;
                    if(read_add3 + 1'b1 < number_in3) begin
                        read_add3 <= read_add3 + 1'b1;
                    end
                    else
                        read_add3 <= read_add3;
                end
            end
        end
    end
    
    wire [31:0] Aurora_test_io_rd_data;
    wire [15:0] Aurora_data_out;
    always @(posedge clk) begin
        if(Aurora_data_out != 0) begin
            output_L1L2_1 <= {Aurora_data_out,38'h3fffffffff};
            valid_L1L2_1 <= 1'b1;            
        end
        else begin
            output_L1L2_1 <= {16'h0000,38'h3fffffffff};
            valid_L1L2_1 <= 1'b0;
        end
    end
    
    Aurora_test aurora_test_top(
        // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(io_sel),                    // this module is selected for an I/O operation
        .io_addr(io_addr[23:0]),        // memory address, top 8 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(Aurora_test_io_rd_data),        // data returned for read operations
        .io_rd_ack(Aurora_test_io_rd_ack),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .data_in(input_L1L2_1),
        .data_out(Aurora_data_out),
        
        //Links
        .txp_pphi(txp_pphi),
        .txn_pphi(txn_pphi),
        .rxp_pphi(rxp_pphi),
        .rxn_pphi(rxn_pphi),
        .txp_mphi(txp_mphi),
        .txn_mphi(txn_mphi),
        .rxp_mphi(rxp_mphi),
        .rxn_mphi(rxn_mphi),
        .gt_refclk(gt_refclk),
        .init_clk(init_clk)
    );
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////
    // connect a mux to steer the readback data from one of the segments to the ipbus
    reg [31:0] io_rd_data_reg;
    assign io_rd_data = io_rd_data_reg;
    // Assert 'io_rd_ack' if any modules below this function assert their 'io_rd_ack'.
    reg io_rd_ack_reg;
    assign io_rd_ack = io_rd_ack_reg;
    always @(posedge io_clk) begin
        io_rd_ack_reg <= io_sync & io_rd_en & (Aurora_test_io_rd_ack);
    end

    always @(posedge io_clk) begin
        if (Aurora_test_io_rd_ack)    io_rd_data_reg <= Aurora_test_io_rd_data;
    end
    
    
endmodule
