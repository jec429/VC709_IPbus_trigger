`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 04:16:22 PM
// Design Name: 
// Module Name: MatchCombiner
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


module MatchCombiner(
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
    
    input [5:0] number_in1,
    input [5:0] number_in2,
    input [5:0] number_in3,
    input [5:0] number_in4,
    input [5:0] number_in5,
    input [5:0] number_in6,
    input [5:0] number_in7,
    input [5:0] number_in8,
    output reg [5:0] read_add1,
    output reg [5:0] read_add2,
    output reg [5:0] read_add3,
    output reg [5:0] read_add4,
    output reg [5:0] read_add5,
    output reg [5:0] read_add6,
    output reg [5:0] read_add7,
    output reg [5:0] read_add8,
    input [11:0] match1in,
    input [11:0] match2in,
    input [11:0] match3in,
    input [11:0] match4in,
    input [11:0] match5in,
    input [11:0] match6in,
    input [11:0] match7in,
    input [11:0] match8in,
    
    output reg [5:0] read_add_allstub,
    output reg [5:0] read_add_allproj,
    input [35:0] allstubin,
    input [53:0] allprojin,
    
    output [35:0] projout
    );

    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;
    
    parameter PHI_BITS 	= 14;
    parameter Z_BITS    = 12;
    parameter R_BITS    = 7;
    parameter PHID_BITS = 9;
    parameter ZD_BITS   = 9;
    parameter k1ABC     = 5;
    parameter k2ABC     = 2;
    parameter layer     = 1'b1;
    
    initial begin
        read_add1 = 6'h3f;
        read_add2 = 6'h3f;
        read_add3 = 6'h3f;
        read_add4 = 6'h3f;
        read_add5 = 6'h3f;
        read_add6 = 6'h3f;
        read_add7 = 6'h3f;
        read_add8 = 6'h3f;
        read_add_allstub = 6'h3f;
        read_add_allproj = 6'h3f;
    end
    
    always @(posedge clk) begin
        if(read_add1 + 1'b1 < number_in1)
            read_add1 <= read_add1 + 1'b1;
        else begin 
            read_add1 <= read_add1;
            if(read_add2 + 1'b1 < number_in2)
                read_add2 <= read_add2 + 1'b1;
            else begin
                read_add2 <= read_add2;
                if(read_add3 + 1'b1 < number_in3)
                    read_add3 <= read_add3 + 1'b1;
                else begin
                    read_add3 <= read_add3;
                    if(read_add4 + 1'b1 < number_in4)
                        read_add4 <= read_add4 + 1'b1;
                    else begin
                        read_add4 <= read_add4;
                        if(read_add5 + 1'b1 < number_in5)
                            read_add5 <= read_add5 + 1'b1;
                        else begin
                            read_add5 <= read_add5;
                            if(read_add6 + 1'b1 < number_in6)
                                read_add6 <= read_add6 + 1'b1;
                            else begin
                                read_add6 <= read_add6;
                                if(read_add7 + 1'b1 < number_in7)
                                    read_add7 <= read_add6 + 1'b1;
                                else begin
                                    read_add7 <= read_add6;
                                    if(read_add8 + 1'b1 < number_in8)
                                        read_add8 <= read_add6 + 1'b1;
                                    else
                                        read_add8 <= read_add6;
                                end
                            end
                        end
                    end
                end
            end
        end
            
        if(read_add1 < 6'h3f) begin
            read_add_allproj <= match1in[11:6];
            read_add_allstub <= match1in[5:0];
        end
        if(read_add2 < 6'h3f) begin
            read_add_allproj <= match2in[11:6];
            read_add_allstub <= match2in[5:0];
        end
        if(read_add3 < 6'h3f) begin
            read_add_allproj <= match3in[11:6];
            read_add_allstub <= match3in[5:0];
        end
        if(read_add4 < 6'h3f) begin
            read_add_allproj <= match4in[11:6];
            read_add_allstub <= match4in[5:0];
        end
        if(read_add5 < 6'h3f) begin
            read_add_allproj <= match5in[11:6];
            read_add_allstub <= match5in[5:0];
        end
        if(read_add6 < 6'h3f) begin
            read_add_allproj <= match6in[11:6];
            read_add_allstub <= match6in[5:0];
        end
        if(read_add7 < 6'h3f) begin
            read_add_allproj <= match7in[11:6];
            read_add_allstub <= match7in[5:0];
        end
        if(read_add8 < 6'h3f) begin
            read_add_allproj <= match8in[11:6];
            read_add_allstub <= match8in[5:0];
        end
        
    end
    
    //////////////////////////////////////////////////////////////////
    
    wire [PHI_BITS-1:0] iphi_proj_0;
    wire [PHI_BITS-1:0] iphi_stub_0;
    wire signed [Z_BITS-1:0] iz_stub_0;
    wire signed [Z_BITS-1:0] iz_proj_0;
    wire signed [PHID_BITS-1:0] iphi_der_0;
    wire signed [ZD_BITS-1:0] iz_der_0;
    wire signed [R_BITS-1:0] ir_stub_0;
    
    // Step 0: Get the positions
    assign iphi_stub_0     = allstubin[PHI_BITS-1:0];
    assign iphi_proj_0     = allprojin[PHI_BITS+Z_BITS+ZD_BITS+PHID_BITS:Z_BITS+ZD_BITS+PHID_BITS];
    assign iz_stub_0       = allstubin[Z_BITS+PHI_BITS-1:PHI_BITS];
    assign iz_proj_0       = allprojin[Z_BITS+ZD_BITS+PHID_BITS:ZD_BITS+PHID_BITS];
    assign iphi_der_0      = allprojin[ZD_BITS+PHID_BITS-1:ZD_BITS];
    assign iz_der_0        = allprojin[ZD_BITS-1:0];
    assign ir_stub_0       = allstubin[R_BITS+Z_BITS+PHI_BITS-1:Z_BITS+PHI_BITS];
    
    // Step 1: Calculate the true radial position
    // Carry Over:
    (*KEEP = "true"*) reg [PHI_BITS-1:0] iphi_stub_1;
    (*KEEP = "true"*) reg signed [Z_BITS-1:0] iz_stub_1;
    (*KEEP = "true"*) reg signed [PHID_BITS-1:0] iphi_der_1;
    (*KEEP = "true"*) reg signed [ZD_BITS-1:0] iz_der_1;    
    (*KEEP = "true"*) reg signed [PHI_BITS:0] iphi_proj_1;
    (*KEEP = "true"*) reg signed [Z_BITS-1:0] iz_proj_1;

    // Declare:
    reg signed [15:0] full_ir_corr_1;
    reg signed [15:0] full_iz_corr_1;
    wire signed [10:0] ir_corr_1;
    wire signed [10:0] iz_corr_1;
    
    always @(posedge clk) begin
        iphi_stub_1    <= iphi_stub_0;
        iz_stub_1    <= iz_stub_0;
        iphi_der_1    <= iphi_der_0;
        iz_der_1        <= iz_der_0;
        iphi_proj_1    <= {1'b0,iphi_proj_0};
        iz_proj_1    <= iz_proj_0;
        full_ir_corr_1    <= ir_stub_0 * iphi_der_0;
        full_iz_corr_1    <= ir_stub_0 * iz_der_0;
        
    end
    
    assign ir_corr_1 = full_ir_corr_1 >>> k1ABC;
    assign iz_corr_1 = full_iz_corr_1 >>> k2ABC;
    
    // Step 2: Calculate the "better" positions
    // Carry Over:
    reg signed [PHI_BITS-1:0] iphi_stub_2;
    reg signed [Z_BITS-1:0] iz_stub_2;
    // Declare:
    reg signed [PHI_BITS-1:0] iphi_2;
    reg signed [Z_BITS-1:0] iz_2;
    //reg signed [14:0] pre_iphi_2;
    //reg signed [12:0] pre_iz_2;
    
    always @(posedge clk) begin
        iphi_stub_2    <= iphi_stub_1;
        iz_stub_2    <= iz_stub_1;
        iphi_2         <= iphi_proj_1 + ir_corr_1;
        iz_2             <= iz_proj_1 + iz_corr_1;
    end
    
    //assign iphi_2     = iphi_proj_1 + (pre_iphi_2 >>> 1'b1);
    //assign iz_2     = iz_proj_1 + (pre_iz_2 >>> 2'h3);

    // Step 3: Calculate Residuals
    // Declare
    reg signed [9:0] full_iphi_res_3;
    reg signed [8:0] iz_res_3;
    wire signed [12:0] iphi_res_3;
    
    always @(posedge clk) begin
        full_iphi_res_3     <= iphi_stub_2 - iphi_2;
        iz_res_3                 <= iz_stub_2 - iz_2;
    end

    assign iphi_res_3 = full_iphi_res_3 <<< (2'b11 & {layer,layer} );
    
    assign projout = {4'b0,read_add_allproj,3'b0,read_add_allstub,iphi_res_3[7:0],iz_res_3};

    /////////////////////////////////////////////////////////
    
    
    
    
endmodule
