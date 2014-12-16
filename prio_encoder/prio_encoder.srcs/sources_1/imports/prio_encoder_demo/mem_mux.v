// Mux to route data from the port that is currently selected

`timescale 1ns / 1ps

module mem_mux(
    input clk,
    input [2:0] sel,   // binary encoded
    input [11:0] mem_dat00,
    input [11:0] mem_dat01,
    input [11:0] mem_dat02,
    input [11:0] mem_dat03,
    input [11:0] mem_dat04,
    input [11:0] mem_dat05,
    input [11:0] mem_dat06,
    input [11:0] mem_dat07,
    
    output reg [11:0] mem_dat_stream                       
);

//////////////////////////////////////////////////////////////////////////
// Implement an 8:1 mux. This works better with with an encoded 'select'
// as compared to individual 'select' signals.
always @ (posedge clk) begin
    case (sel[2:0])
        3'b000: mem_dat_stream <= mem_dat00;
        3'b001: mem_dat_stream <= mem_dat01;
        3'b010: mem_dat_stream <= mem_dat02;
        3'b011: mem_dat_stream <= mem_dat03;
        3'b100: mem_dat_stream <= mem_dat04;
        3'b101: mem_dat_stream <= mem_dat05;
        3'b110: mem_dat_stream <= mem_dat06;
        3'b111: mem_dat_stream <= mem_dat07;
    endcase
end

endmodule
