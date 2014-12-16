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
//  2) (IN) new_event - A signal to start processing the next event. It is
//          a pulse with the duration of a single clock period.
//  3) (OUT) mem_dat_stream - A single stream of data from the various memories.
//           The stream is not contiguous; there are gaps
//  4) (OUT) valid - A bit that indicates that the current "mem_dat_stream" value
//           contains valid data.
//  5) (OUT) done - A bit that indicates that there is no more data to process.
//           Currently not asserted if data processing does not finish before the
//           next event.
 
`timescale 1ns / 1ps

module mem_readout_top(
    input clk,                    // main clock
    input new_event,              // start over
 
    // A memory block
    input [5:0] items00,          // starting number of items for this memory
    output [5:0] addr00,          // memory address
    input [11:0] mem_dat00,       // contents of this memory
    // A memory block
    input [5:0] items01,          // starting number of items for this memory
    output [5:0] addr01,          // memory address
    input [11:0] mem_dat01,       // contents of this memory
    // A memory block
    input [5:0] items02,          // starting number of items for this memory
    output [5:0] addr02,          // memory address
    input [11:0] mem_dat02,       // contents of this memory
    // A memory block
    input [5:0] items03,          // starting number of items for this memory
    output [5:0] addr03,          // memory address
    input [11:0] mem_dat03,       // contents of this memory
    // A memory block
    input [5:0] items04,          // starting number of items for this memory
    output [5:0] addr04,          // memory address
    input [11:0] mem_dat04,       // contents of this memory
    // A memory block
    input [5:0] items05,          // starting number of items for this memory
    output [5:0] addr05,          // memory address
    input [11:0] mem_dat05,       // contents of this memory
    // A memory block
    input [5:0] items06,          // starting number of items for this memory
    output [5:0] addr06,          // memory address
    input [11:0] mem_dat06,       // contents of this memory
    // A memory block
    input [5:0] items07,          // starting number of items for this memory
    output [5:0] addr07,          // memory address
    input [11:0] mem_dat07,       // contents of this memory

    output [11:0] mem_dat_stream, // merged memory data stream
    output reg valid,             // valid data in merged memory stream
    output none                   // no more data

);

// Internal interconnects
wire has_dat00, has_dat01, has_dat02, has_dat03, has_dat04, has_dat05, has_dat06, has_dat07;
wire valid00, valid01, valid02, valid03, valid04, valid05, valid06, valid07;
wire [2:0] sel;

// When 'new_event' is asserted, terminate the current processing and get
// set up for the new event. This requires that we holdoff on any output
// for several clock periods. 
reg new_event_dly1, new_event_dly2;
always @(posedge clk) begin
    new_event_dly1 <= new_event;
    new_event_dly2 <= new_event_dly1;
end
// Use these clock periods to prepare to process the new event
assign setup = new_event | new_event_dly1 | new_event_dly2;

// connect address and item counters, as well as comparitors, for each memory
prio_support prio_support00(.clk(clk), .initial_count(items00), .init(new_event), .sel(sel00), 
    .setup(setup), .addr(addr00[5:0]), .has_dat(has_dat00), .valid(valid00) );
prio_support prio_support01(.clk(clk), .initial_count(items01), .init(new_event), .sel(sel01), 
    .setup(setup), .addr(addr01[5:0]), .has_dat(has_dat01), .valid(valid01) );
prio_support prio_support02(.clk(clk), .initial_count(items02), .init(new_event), .sel(sel02), 
    .setup(setup), .addr(addr02[5:0]), .has_dat(has_dat02), .valid(valid02) );
prio_support prio_support03(.clk(clk), .initial_count(items03), .init(new_event), .sel(sel03), 
    .setup(setup), .addr(addr03[5:0]), .has_dat(has_dat03), .valid(valid03) );
prio_support prio_support04(.clk(clk), .initial_count(items04), .init(new_event), .sel(sel04), 
    .setup(setup), .addr(addr04[5:0]), .has_dat(has_dat04), .valid(valid04) );
prio_support prio_support05(.clk(clk), .initial_count(items05), .init(new_event), .sel(sel05), 
    .setup(setup), .addr(addr05[5:0]), .has_dat(has_dat05), .valid(valid05) );
prio_support prio_support06(.clk(clk), .initial_count(items06), .init(new_event), .sel(sel06), 
    .setup(setup), .addr(addr06[5:0]), .has_dat(has_dat06), .valid(valid06) );
prio_support prio_support07(.clk(clk), .initial_count(items07), .init(new_event), .sel(sel07), 
    .setup(setup), .addr(addr07[5:0]), .has_dat(has_dat07), .valid(valid07) );
 
//////////////////////////////////////////////////////////////////////////////////
// connect the priority encoder the will access the next memory that has data
prio_encoder prio_encoder (
    // Inputs:
    .clk(clk),
    .has_dat00(has_dat00),
    .has_dat01(has_dat01),
    .has_dat02(has_dat02),
    .has_dat03(has_dat03),
    .has_dat04(has_dat04),
    .has_dat05(has_dat05),
    .has_dat06(has_dat06),
    .has_dat07(has_dat07),
    // Outputs:
    .sel00(sel00),
    .sel01(sel01),
    .sel02(sel02),
    .sel03(sel03),
    .sel04(sel04),
    .sel05(sel05),
    .sel06(sel06),
    .sel07(sel07),
    .sel(sel[2:0]),   // binary encoded
    .none(none)       // no more data
);

//////////////////////////////////////////////////////////////////////////////////
// connect a mux to merge the data streams
mem_mux mem_mux(
    .clk(clk),
    .sel(sel[2:0]),   // binary encoded
    .mem_dat00(mem_dat00),
    .mem_dat01(mem_dat01),
    .mem_dat02(mem_dat02),
    .mem_dat03(mem_dat03),
    .mem_dat04(mem_dat04),
    .mem_dat05(mem_dat05),
    .mem_dat06(mem_dat06),
    .mem_dat07(mem_dat07),
    
    .mem_dat_stream(mem_dat_stream)
);

//////////////////////////////////////////////////////////////////////////////////
// merge the 'valid' bits by 'OR'ing them together. Disable 'valid' during setup.
always @ (posedge clk) begin
    valid <= !setup & (valid00 | valid01 | valid02 | valid03 | valid04 | valid05 | valid06 | valid07);
end

 
endmodule