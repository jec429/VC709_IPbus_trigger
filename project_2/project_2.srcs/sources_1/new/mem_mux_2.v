// Mux to route data from the port that is currently selected

`timescale 1ns / 1ps

module mem_mux_2(
    input clk,
    input [2:0] BX,
    input [3:0] sel,   // binary encoded
    input [43:0] mem_dat00,
    input [43:0] mem_dat01,
    input [43:0] mem_dat02,
    input [43:0] mem_dat03,
    input [43:0] mem_dat04,
    input [43:0] mem_dat05,
    input [43:0] mem_dat06,
    input [43:0] mem_dat07,
    input [43:0] mem_dat08,
    input [43:0] mem_dat09,
    input [43:0] mem_dat10,
    input [43:0] mem_dat11,
    
    output reg [47:0] mem_dat_stream                     
);

//////////////////////////////////////////////////////////////////////////
// Implement an 8:1 mux. This works better with with an encoded 'select'
// as compared to individual 'select' signals.
always @ (posedge clk) begin
    case (sel[3:0])
        4'b1111: mem_dat_stream <= {sel,BX,41'h00000000000};
        4'b0001: mem_dat_stream <= {sel,mem_dat00};
        4'b0010: mem_dat_stream <= {sel,mem_dat01};
        4'b0011: mem_dat_stream <= {sel,mem_dat02};
        4'b0100: mem_dat_stream <= {sel,mem_dat03};
        4'b0101: mem_dat_stream <= {sel,mem_dat04};
        4'b0110: mem_dat_stream <= {sel,mem_dat05};
        4'b0111: mem_dat_stream <= {sel,mem_dat06};
        4'b1000: mem_dat_stream <= {sel,mem_dat07};
        4'b1001: mem_dat_stream <= {sel,mem_dat08};
        4'b1011: mem_dat_stream <= {sel,mem_dat09};
        4'b1100: mem_dat_stream <= {sel,mem_dat10};
        4'b1101: mem_dat_stream <= {sel,mem_dat11};
        default  mem_dat_stream <= 48'h000000000000;
    endcase
end

endmodule
