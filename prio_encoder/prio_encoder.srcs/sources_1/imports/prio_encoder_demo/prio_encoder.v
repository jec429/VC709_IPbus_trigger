// Priority encoder to choose the next memory block that contains data. It
// skips over empty blocks.

`timescale 1ns / 1ps

module prio_encoder(
    // Inputs:
    input clk,
    input has_dat00,
    input has_dat01,
    input has_dat02,
    input has_dat03,
    input has_dat04,
    input has_dat05,
    input has_dat06,
    input has_dat07,
    // Outputs:
    output reg sel00,
    output reg sel01,
    output reg sel02,
    output reg sel03,
    output reg sel04,
    output reg sel05,
    output reg sel06,
    output reg sel07,
    output reg [2:0] sel,   // binary encoded
    output reg none
);

//////////////////////////////////////////////////////////////////////////
// Implement a registered priority encoder
// The '00' input has the highest priority
always @ (posedge clk) begin
    sel00 <= has_dat00;
    sel01 <= has_dat01 & !has_dat00;
    sel02 <= has_dat02 & !has_dat00 & !has_dat01;
    sel03 <= has_dat03 & !has_dat00 & !has_dat01 & !has_dat02;
    sel04 <= has_dat04 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03;
    sel05 <= has_dat05 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04;
    sel06 <= has_dat06 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04 & !has_dat05;
    sel07 <= has_dat07 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04 & !has_dat05 & !has_dat06;
   // assert 'none' when all inputs are false
    none <= !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04 & !has_dat05 & !has_dat06 & !has_dat07;
end 

//////////////////////////////////////////////////////////////////////////
// Implement an 8:3 encoder. The final mux that combines the memory streams
// works better with with an encoded select as compared to individual select signals.
always @ (posedge clk) begin
    if (sel00) sel <= 3'b000;
    if (sel01) sel <= 3'b001;
    if (sel02) sel <= 3'b010;
    if (sel03) sel <= 3'b011;
    if (sel04) sel <= 3'b100;
    if (sel05) sel <= 3'b101;
    if (sel06) sel <= 3'b110;
    if (sel07) sel <= 3'b111;
end
           
endmodule
