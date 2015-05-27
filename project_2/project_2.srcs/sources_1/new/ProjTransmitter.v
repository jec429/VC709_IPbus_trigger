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
    input reset,                        //whole system reset at beginning i.e. setup board
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
    input wire first_clk,               // start a new BX!
    input wire not_first_clk,           // !first_clk
    
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
    output [5:0] read_add1,
    input [53:0] input_L1L2_1,
    input [5:0] number_in2,
    output [5:0] read_add2,
    input [53:0] input_L1L2_2,
    input [5:0] number_in3,
    output [5:0] read_add3,
    input [53:0] input_L1L2_3,
    input [5:0] number_in4,
    output [5:0] read_add4,
    input [53:0] input_L1L2_4,
    input [5:0] number_in5,
    output [5:0] read_add5,
    input [53:0] input_L3L4_1,
    input [5:0] number_in6,
    output [5:0] read_add6,
    input [53:0] input_L3L4_2,
    input [5:0] number_in7,
    output [5:0] read_add7,
    input [53:0] input_L3L4_3,
    input [5:0] number_in8,
    output [5:0] read_add8,
    input [53:0] input_L3L4_4,
    input [5:0] number_in9,
    output [5:0] read_add9,
    input [53:0] input_L5L6_1,
    input [5:0] number_in10,
    output [5:0] read_add10,
    input [53:0] input_L5L6_2,
    input [5:0] number_in11,
    output [5:0] read_add11,
    input [53:0] input_L5L6_3,
    input [5:0] number_in12,
    output [5:0] read_add12,
    input [53:0] input_L5L6_4,
    
    output [53:0] output_L1L2_1,
    output [53:0] output_L1L2_2,
    output [53:0] output_L1L2_3,
    output [53:0] output_L1L2_4,
    output [53:0] output_L3L4_1,
    output [53:0] output_L3L4_2,
    output [53:0] output_L3L4_3,
    output [53:0] output_L3L4_4,
    output [53:0] output_L5L6_1,
    output [53:0] output_L5L6_2,
    output [53:0] output_L5L6_3,
    output [53:0] output_L5L6_4,
    output valid_L1L2_1,
    output valid_L1L2_2,
    output valid_L1L2_3,
    output valid_L1L2_4,
    output valid_L3L4_1,
    output valid_L3L4_2,
    output valid_L3L4_3,
    output valid_L3L4_4,
    output valid_L5L6_1,
    output valid_L5L6_2,
    output valid_L5L6_3,
    output valid_L5L6_4
    
    );

    reg [6:0] clk_cnt;
    reg [2:0] BX_pipe;
    
    wire done_sending_proj;
    
    wire valid;
    reg valid_dly;
    wire [47:0] mem_dat_stream; //priority encoded data stream from the 12 memories
    reg [47:0] mem_dat_stream_dly;
    wire [47:0] data_output;    //same memory stream but now coming from the FIFO
    
    wire [3:0] output_BX;       //output BX from the returning residuals
    wire sent_BX;
    
        // FIFO internal outputs
        reg fifo_rst;                // reset fifo after each new_event
        reg fifo_rst1;               // hold fifo reset
        reg fifo_rst2;               // hold fifo reset
        reg fifo_rst3;               // hold fifo reset
        reg fifo_rst4;               // hold fifo reset
        reg fifo_rst5;               // hold fifo reset
        reg FIFO_wr_en;              // FIFO write enable from valid
        reg FIFO_rd_en;              // FIFO read enable (always valid after reset)
        wire FIFO_EMPTY,FIFO_FULL;
        reg fifo_rst_dly1;
        reg fifo_rst_dly2;
   
    reg startdly1, startdly2, startdly3;
    always @ (posedge clk) begin            //delay start to synch with Jorge's code
        startdly1 <= start;
        startdly2 <= startdly1;
        startdly3 <= startdly2;
    end 
     
    reg [5:0] num1,num2,num3,num4,num5,num6,num7,num8,num9,num10,num11,num12;
    always @ (posedge clk) begin
        num1 <= number_in1;
        num2 <= number_in2;
        num3 <= number_in3;
        num4 <= number_in4;
        num5 <= number_in5;
        num6 <= number_in6;
        num7 <= number_in7;
        num8 <= number_in8;
        num9 <= number_in9;
        num10 <= number_in10;
        num11 <= number_in11;
        num12 <= number_in12;
    end
     
     
     
    mem_readout_top_2 send_proj(
            .clk(clk),                  // main clock
            .reset(startdly3),              // synchronously negated active-hi reset
            .BX(BX),                    // BX number
            .clk_cnt(clk_cnt),          // clock cylces gone by in BX
            .BX_pipe(BX_pipe),
            .first_clk(first_clk),
            .not_first_clk(not_first_clk),
            
            .number_in1(num1),          // starting number of items for this memory
            .number_in2(num2),          // starting number of items for this memory
            .number_in3(num3),          // starting number of items for this memory
            .number_in4(num4),          // starting number of items for this memory
            .number_in5(num5),          // starting number of items for this memory
            .number_in6(num6),          // starting number of items for this memory
            .number_in7(num7),          // starting number of items for this memory
            .number_in8(num8),          // starting number of items for this memory
            .number_in9(num9),          // starting number of items for this memory
            .number_in10(num10),          // starting number of items for this memory
            .number_in11(num11),          // starting number of items for this memory
            .number_in12(num12),          // starting number of items for this memory
            
            .input_L1L2_1(input_L1L2_1[43:0]),     
            .input_L1L2_2(input_L1L2_2[43:0]),     
            .input_L1L2_3(input_L1L2_3[43:0]),     
            .input_L1L2_4(input_L1L2_4[43:0]),     
            .input_L3L4_1(input_L3L4_1[43:0]),     
            .input_L3L4_2(input_L3L4_2[43:0]),     
            .input_L3L4_3(input_L3L4_3[43:0]),     
            .input_L3L4_4(input_L3L4_4[43:0]),  
            .input_L5L6_1(input_L5L6_1[43:0]),
            .input_L5L6_2(input_L5L6_2[43:0]),
            .input_L5L6_3(input_L5L6_3[43:0]),
            .input_L5L6_4(input_L5L6_4[43:0]),   
            
            .read_add1(read_add1),          // lower part of memory address
            .read_add2(read_add2),          // lower part of memory address
            .read_add3(read_add3),          // lower part of memory address
            .read_add4(read_add4),          // lower part of memory address
            .read_add5(read_add5),          // lower part of memory address
            .read_add6(read_add6),          // lower part of memory address
            .read_add7(read_add7),          // lower part of memory address
            .read_add8(read_add8),          // lower part of memory address
            .read_add9(read_add9),          // lower part of memory address
            .read_add10(read_add10),          // lower part of memory address
            .read_add11(read_add11),          // lower part of memory address
            .read_add12(read_add12),          // lower part of memory address
            
            .mem_dat_stream(mem_dat_stream),
            .valid(valid),
            .send_BX(send_BX),
            .none(done_sending_proj)                 // no more items
        );
 

        always @ (posedge clk) begin
            //if (first_clk) FIFO_wr_en <= 1'b0;
            fifo_rst1 <= reset;
            fifo_rst2 <= fifo_rst1;
            fifo_rst3 <= fifo_rst2;
            fifo_rst4 <= fifo_rst3;
            fifo_rst5 <= fifo_rst4;
            fifo_rst <= ( reset || fifo_rst1 || fifo_rst2 || fifo_rst3 || fifo_rst4 || fifo_rst5 );
            fifo_rst_dly1 <= fifo_rst;
            fifo_rst_dly2 <= fifo_rst_dly1;
            /*valid_dly <= valid;
            //FIFO_wr_en <= (valid_dly || send_BX);        //delay on the valid signal because data is off by one clock tick
            if (!first_clk) FIFO_wr_en <= (valid_dly || send_BX);        //delay on the valid signal because data is off by one clock tick*/
            FIFO_rd_en <= (!fifo_rst && !fifo_rst_dly1 && !fifo_rst_dly2);
            mem_dat_stream_dly <= mem_dat_stream;
            if (!first_clk) FIFO_wr_en <= (valid || send_BX);
           /* case (FIFO_wr_en) 
                1: output_L1L2_1 <= mem_dat_stream_dly;
                0: output_L1L2_1 <= 54'h0000000000000;
            default output_L1L2_1 <= 54'h0000000000000;
            endcase*/

            
        end

        
        /////////////////////////////////////////////////////////////////////
        // send the mem_dat_stream to a single-clock FIFO
        // NOT WORKING JEC429
        
//       fifo_projection_out fifo(
//            .rst(fifo_rst),                             // 1 bit in data reset
//            .clk(clk),                                  // 1 bit read and write clock
//            .din(mem_dat_stream_dly[47:0]),                   // 48 bit in data into FIFO
//            .wr_en(FIFO_wr_en),                         // 1 bit in write enable
//            .rd_en(FIFO_rd_en),                         // 1 bit in read enable
//            .dout(data_output),                         // 48 bit out data out of FIFO
//            .full(FIFO_FULL),                           // 1 bit out FIFO full signal
//            .empty(FIFO_EMPTY)                          // 1 bit out FIFO empty signal
//          );

        
   
        /* always @ (posedge clk) begin
            if (FIFO_wr_en) output_L1L2_1 <= {6'hFF,mem_dat_stream_dly};
            else            output_L1L2_1 <= {54'h00000000000000};
        end */
   
    
   /* always @ (posedge clk) begin
         if ( first_clk ) begin
            read_add
         end
         else begin
         end
    end */
    
    
//    mem_readin_top get_resid(
//        .clk(clk),
//        .reset(fifo_rst5),
//        .data_residuals(data_output),
//        .datanull(FIFO_EMPTY),

//        .output_BX(output_BX),
//        .send_BX(BX_sent),

//        .output_L1L2_1(output_L1L2_1), //returning residuals for this memory
//        .output_L1L2_2(output_L1L2_2), //returning residuals for this memory
//        .output_L1L2_3(output_L1L2_3), //returning residuals for this memory
//        .output_L1L2_4(output_L1L2_4), //returning residuals for this memory
//        .output_L3L4_1(output_L3L4_1), //returning residuals for this memory
//        .output_L3L4_2(output_L3L4_2), //returning residuals for this memory
//        .output_L3L4_3(output_L3L4_3), //returning residuals for this memory
//        .output_L3L4_4(output_L3L4_4), //returning residuals for this memory
//        .output_L5L6_1(output_L5L6_1), //returning residuals for this memory        
//        .output_L5L6_2(output_L5L6_2), //returning residuals for this memory  
//        .output_L5L6_3(output_L5L6_3), //returning residuals for this memory  
//        .output_L5L6_4(output_L5L6_4), //returning residuals for this memory 

//        .wr_en_mem00(valid_L1L2_1), //valid signal for writing to memory
//        .wr_en_mem01(valid_L1L2_2), //valid signal for writing to memory
//        .wr_en_mem02(valid_L1L2_3), //valid signal for writing to memory
//        .wr_en_mem03(valid_L1L2_4), //valid signal for writing to memory
//        .wr_en_mem04(valid_L3L4_1), //valid signal for writing to memory
//        .wr_en_mem05(valid_L3L4_2), //valid signal for writing to memory
//        .wr_en_mem06(valid_L3L4_3), //valid signal for writing to memory
//        .wr_en_mem07(valid_L3L4_4), //valid signal for writing to memory
//        .wr_en_mem08(valid_L5L6_1), //valid signal for writing to memory
//        .wr_en_mem09(valid_L5L6_2), //valid signal for writing to memory
//        .wr_en_mem10(valid_L5L6_3), //valid signal for writing to memory
//        .wr_en_mem11(valid_L5L6_4) //valid signal for writing to memory
        
        
//    );
    
    
    
    
    
    
    
    parameter [7:0] n_hold = 8'd3;
 
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
    
    
    wire [31:0] Aurora_test_io_rd_data;
    wire [15:0] Aurora_data_out;
    wire Aurora_test_io_rd_ack;
    //assign output_L1L2_1 = {Aurora_data_out,38'h3fffffffff};
//    Aurora_test aurora_test_top(
//        // clocks and reset
//        .clk(clk),                // processing clock
//        .reset(reset),                        // active HI
//        .en_proc(en_proc),
//        // programming interface
//        .io_clk(io_clk),                    // programming clock
//        .io_sel(io_sel),                    // this module is selected for an I/O operation
//        .io_addr(io_addr[23:0]),        // memory address, top 8 bits alread consumed
//        .io_sync(io_sync),                // start the I/O operation
//        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
//        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
//        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
//        // outputs
//        .io_rd_data(Aurora_test_io_rd_data),        // data returned for read operations
//        .io_rd_ack(Aurora_test_io_rd_ack),            // 'read' data from this module is ready
//        // clocks
//        .BX(BX[2:0]),
//        .first_clk(first_clk),
//        .not_first_clk(not_first_clk),
        
//        .data_in(input_L1L2_1),
//        .data_out(Aurora_data_out),
        
//        //Links
//        .txp_pphi(txp_pphi),
//        .txn_pphi(txn_pphi),
//        .rxp_pphi(rxp_pphi),
//        .rxn_pphi(rxn_pphi),
//        .txp_mphi(txp_mphi),
//        .txn_mphi(txn_mphi),
//        .rxp_mphi(rxp_mphi),
//        .rxn_mphi(rxn_mphi),
//        .gt_refclk(gt_refclk),
//        .init_clk(init_clk)
//    );
    
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
