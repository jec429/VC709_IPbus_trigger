// This module merges the data from a set of memories into a single stream.
// A 'valid' bit is asserted along with each word of valid data.
//
// The connections for each memory are (where 'xx' is replaced by sequential numbers):
//  1) (IN)  itemsxx - A register which holds the number of words to read from that memory.
//  2) (OUT) addrxx - The current address from which to read data. This is the low part of the address
//           from a counter. The high part of the address is the crossing number. 
//  3) (IN)  mem_datxx - The data from the current address.
//
// The global connections are:
//  1) (IN) clk - The processing clock responsible for gathering the data
//  2) (IN) reset - A signal to start processing the next event. It is
//          a pulse with the duration of a single clock period.
//  3) (OUT) mem_dat_stream - A single stream of data from the various memories.
//           The stream is not contiguous; there are gaps
//  4) (OUT) valid - A bit that indicates that the current "mem_dat_stream" value
//           contains valid data.
//  5) (OUT) done - A bit that indicates that there is no more data to process.
//           Currently not asserted if data processing does not finish before the
//           next event.
 
`timescale 1ns / 1ps

module mem_readout_top_2(
    input clk,                     // main clock
    input reset,                   // start over
    input wire [2:0] BX,           // store BX
    input [6:0] clk_cnt,           // counter for # of clock cycles in processing BX
    input [2:0] BX_pipe,           // if clk_cnt reaches 7'b1, increment BX_pipe
 
    /*input wire io_clk,                    // programming clock
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
    input wire [2:0] BX,*/
    input wire first_clk,
    input wire not_first_clk,
 
    // A memory block
    input [5:0] number_in1,          // starting number of items for this memory
    output [5:0] read_add1,          // memory address
    input [43:0] input_L1L2_1,       // contents of this memory
    // A memory block
    input [5:0] number_in2,          // starting number of items for this memory
    output [5:0] read_add2,          // memory address
    input [43:0] input_L1L2_2,       // contents of this memory
    // A memory block
    input [5:0] number_in3,          // starting number of items for this memory
    output [5:0] read_add3,          // memory address
    input [43:0] input_L1L2_3,       // contents of this memory
    // A memory block
    input [5:0] number_in4,          // starting number of items for this memory
    output [5:0] read_add4,          // memory address
    input [43:0] input_L1L2_4,       // contents of this memory
    // A memory block
    input [5:0] number_in5,          // starting number of items for this memory
    output [5:0] read_add5,          // memory address
    input [43:0] input_L3L4_1,       // contents of this memory
    // A memory block
    input [5:0] number_in6,          // starting number of items for this memory
    output [5:0] read_add6,          // memory address
    input [43:0] input_L3L4_2,       // contents of this memory
    // A memory block
    input [5:0] number_in7,          // starting number of items for this memory
    output [5:0] read_add7,          // memory address
    input [43:0] input_L3L4_3,       // contents of this memory
    // A memory block
    input [5:0] number_in8,          // starting number of items for this memory
    output [5:0] read_add8,          // memory address
    input [43:0] input_L3L4_4,       // contents of this memory
    // A memory block
    input [5:0] number_in9,          // starting number of items for this memory
    output [5:0] read_add9,          // memory address
    input [43:0] input_L5L6_1,       // contents of this memory
    // A memory block
    input [5:0] number_in10,          // starting number of items for this memory
    output [5:0] read_add10,          // memory address
    input [43:0] input_L5L6_2,       // contents of this memory
    // A memory block
    input [5:0] number_in11,          // starting number of items for this memory
    output [5:0] read_add11,          // memory address
    input [43:0] input_L5L6_3,       // contents of this memory
    // A memory block
    input [5:0] number_in12,          // starting number of items for this memory
    output [5:0] read_add12,          // memory address
    input [43:0] input_L5L6_4,       // contents of this memory 
    
    //output [44:0] header_stream,   // headers for sent data 
    output [47:0] mem_dat_stream, // merged memory data stream
    output reg valid,             // valid data in merged memory stream
    output reg send_BX,           // valid header with BX info
    output none                   // no more data

);

// Internal interconnects
wire has_dat00, has_dat01, has_dat02, has_dat03, has_dat04, has_dat05, has_dat06, has_dat07, has_dat08, has_dat09, has_dat10, has_dat11;
wire valid00, valid01, valid02, valid03, valid04, valid05, valid06, valid07, valid08, valid09, valid10, valid11;
wire [3:0] sel;


// When 'reset' is asserted, terminate the current processing and get
// set up for the new event. This requires that we holdoff on any output
// for several clock periods. 
reg new_event_dly1, new_event_dly2;
always @(posedge clk) begin
    new_event_dly1 <= reset;
    new_event_dly2 <= new_event_dly1;
end
// Use these clock periods to prepare to process the new event
assign setup = reset | new_event_dly1 | new_event_dly2;

    always @ (posedge clk) begin
        $display ("number_in1 at MEM_READOUT_TOP = %h", number_in1);
    end

// connect address and item counters, as well as comparitors, for each memory
prio_support_2 prio_support00(.clk(clk), .initial_count(number_in1), .init(reset), .sel(sel00), 
    .setup(setup), .addr(read_add1[5:0]), .has_dat(has_dat00), .valid(valid00));
prio_support_2 prio_support01(.clk(clk), .initial_count(number_in2), .init(reset), .sel(sel01), 
    .setup(setup), .addr(read_add2[5:0]), .has_dat(has_dat01), .valid(valid01));
prio_support_2 prio_support02(.clk(clk), .initial_count(number_in3), .init(reset), .sel(sel02), 
    .setup(setup), .addr(read_add3[5:0]), .has_dat(has_dat02), .valid(valid02));
prio_support_2 prio_support03(.clk(clk), .initial_count(number_in4), .init(reset), .sel(sel03), 
    .setup(setup), .addr(read_add4[5:0]), .has_dat(has_dat03), .valid(valid03));
prio_support_2 prio_support04(.clk(clk), .initial_count(number_in5), .init(reset), .sel(sel04), 
    .setup(setup), .addr(read_add5[5:0]), .has_dat(has_dat04), .valid(valid04));
prio_support_2 prio_support05(.clk(clk), .initial_count(number_in6), .init(reset), .sel(sel05), 
    .setup(setup), .addr(read_add6[5:0]), .has_dat(has_dat05), .valid(valid05));
prio_support_2 prio_support06(.clk(clk), .initial_count(number_in7), .init(reset), .sel(sel06), 
    .setup(setup), .addr(read_add7[5:0]), .has_dat(has_dat06), .valid(valid06));
prio_support_2 prio_support07(.clk(clk), .initial_count(number_in8), .init(reset), .sel(sel07), 
    .setup(setup), .addr(read_add8[5:0]), .has_dat(has_dat07), .valid(valid07));
prio_support_2 prio_support08(.clk(clk), .initial_count(number_in9), .init(reset), .sel(sel08), 
    .setup(setup), .addr(read_add9[5:0]), .has_dat(has_dat08), .valid(valid08));
prio_support_2 prio_support09(.clk(clk), .initial_count(number_in10), .init(reset), .sel(sel09), 
    .setup(setup), .addr(read_add10[5:0]), .has_dat(has_dat09), .valid(valid09));
prio_support_2 prio_support10(.clk(clk), .initial_count(number_in11), .init(reset), .sel(sel10), 
    .setup(setup), .addr(read_add11[5:0]), .has_dat(has_dat10), .valid(valid10));
prio_support_2 prio_support11(.clk(clk), .initial_count(number_in12), .init(reset), .sel(sel11), 
    .setup(setup), .addr(read_add12[5:0]), .has_dat(has_dat11), .valid(valid11));
       
 
//////////////////////////////////////////////////////////////////////////////////
// connect the priority encoder the will access the next memory that has data
prio_encoder_2 prio_encoder (
    // Inputs:
    .clk(clk),
    .first_dat(first_clk),
    //.first_dat(reset),
    .has_dat00(has_dat00),
    .has_dat01(has_dat01),
    .has_dat02(has_dat02),
    .has_dat03(has_dat03),
    .has_dat04(has_dat04),
    .has_dat05(has_dat05),
    .has_dat06(has_dat06),
    .has_dat07(has_dat07),
    .has_dat08(has_dat08),
    .has_dat09(has_dat09),
    .has_dat10(has_dat10),
    .has_dat11(has_dat11),
    // Outputs:
//    .first(first_dat),
    .sel00(sel00),
    .sel01(sel01),
    .sel02(sel02),
    .sel03(sel03),
    .sel04(sel04),
    .sel05(sel05),
    .sel06(sel06),
    .sel07(sel07),
    .sel08(sel08),
    .sel09(sel09),
    .sel10(sel10),
    .sel11(sel11),
    .sel(sel[3:0]),   // binary encoded
    .none(none)       // no more data
);

//////////////////////////////////////////////////////////////////////////////////
// connect a mux to merge the data streams
mem_mux_2 mem_mux(
    .clk(clk),
    .BX(BX),
    .sel(sel[3:0]),   // binary encoded
    .mem_dat00(input_L1L2_1[43:0]),
    .mem_dat01(input_L1L2_2[43:0]),
    .mem_dat02(input_L1L2_3[43:0]),
    .mem_dat03(input_L1L2_4[43:0]),
    .mem_dat04(input_L3L4_1[43:0]),
    .mem_dat05(input_L3L4_2[43:0]),
    .mem_dat06(input_L3L4_3[43:0]),
    .mem_dat07(input_L3L4_4[43:0]),
    .mem_dat08(input_L5L6_1[43:0]),
    .mem_dat09(input_L5L6_2[43:0]),
    .mem_dat10(input_L5L6_3[43:0]),
    .mem_dat11(input_L5L6_4[43:0]),
//    .header_stream(header_stream),
    
    .mem_dat_stream(mem_dat_stream)
);

//////////////////////////////////////////////////////////////////////////////////
// merge the 'valid' bits by 'OR'ing them together. Disable 'valid' during setup.
always @ (posedge clk) begin
    valid <= !setup & (valid00 | valid01 | valid02 | valid03 | valid04 | valid05 | valid06 | valid07 | valid08 | valid09 | valid10 | valid11);
    send_BX <= (!setup & sel[3:0]==4'b1111)? 1'b1 : 1'b0;
    //also use this valid signal for the write enable
end

 
 
 
 
endmodule
