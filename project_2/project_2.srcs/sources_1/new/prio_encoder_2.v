// Priority encoder to choose the next memory block that contains data. It
// skips over empty blocks.

`timescale 1ns / 1ps

module prio_encoder_2(
    // Inputs:
    input clk,
    input first_dat,
    input has_dat00,
    input has_dat01,
    input has_dat02,
    input has_dat03,
    input has_dat04,
    input has_dat05,
    input has_dat06,
    input has_dat07,
    input has_dat08,
    input has_dat09,
    input has_dat10,
    input has_dat11,
    // Outputs:
    //output reg first,
    output reg sel00,
    output reg sel01,
    output reg sel02,
    output reg sel03,
    output reg sel04,
    output reg sel05,
    output reg sel06,
    output reg sel07,
    output reg sel08,
    output reg sel09,
    output reg sel10,
    output reg sel11,
    output reg [3:0] sel,   // binary encoded
    output reg none
);

reg first;

//////////////////////////////////////////////////////////////////////////
// Implement a registered priority encoder
// The '00' input has the highest priority
always @ (posedge clk) begin
    if (first_dat) begin
        first <= 1'b1;
    end
    else begin
        first <= 1'b0;
        sel00 <= has_dat00;
        sel01 <= has_dat01 & !has_dat00;
        sel02 <= has_dat02 & !has_dat00 & !has_dat01;
        sel03 <= has_dat03 & !has_dat00 & !has_dat01 & !has_dat02;
        sel04 <= has_dat04 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03;
        sel05 <= has_dat05 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04;
        sel06 <= has_dat06 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04 & !has_dat05;
        sel07 <= has_dat07 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04 & !has_dat05 & !has_dat06;
        sel08 <= has_dat08 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04 & !has_dat05 & !has_dat06 & !has_dat07;
        sel09 <= has_dat09 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04 & !has_dat05 & !has_dat06 & !has_dat07 & !has_dat08;
        sel10 <= has_dat10 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04 & !has_dat05 & !has_dat06 & !has_dat07 & !has_dat08 & !has_dat09;
        sel11 <= has_dat11 & !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04 & !has_dat05 & !has_dat06 & !has_dat07 & !has_dat08 & !has_dat09 & !has_dat10;
        // assert 'none' when all inputs are false
        none <= !has_dat00 & !has_dat01 & !has_dat02 & !has_dat03 & !has_dat04 & !has_dat05 & !has_dat06 & !has_dat07 & !has_dat08 & !has_dat09 & !has_dat10 &!has_dat11;
    end

end 

//////////////////////////////////////////////////////////////////////////
// Implement an 8:3 encoder. The final mux that combines the memory streams
// works better with with an encoded select as compared to individual select signals.
always @ (posedge clk) begin
    if (first) sel <= 4'b1111;
    if (sel00) sel <= 4'b0001;
    if (sel01) sel <= 4'b0010;
    if (sel02) sel <= 4'b0011;
    if (sel03) sel <= 4'b0100;
    if (sel04) sel <= 4'b0101;
    if (sel05) sel <= 4'b0110;
    if (sel06) sel <= 4'b0111;
    if (sel07) sel <= 4'b1000;
    if (sel08) sel <= 4'b1001;
    if (sel09) sel <= 4'b1010;
    if (sel10) sel <= 4'b1011;
    if (sel11) sel <= 4'b1100;
    if (none)  sel <= 4'b0000;
end
           
endmodule
