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


module MatchCalculator(
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
    
    input start,
    output reg done,
    
    input [5:0] number_in1,
    input [5:0] number_in2,
    input [5:0] number_in3,
    input [5:0] number_in4,
    input [5:0] number_in5,
    input [5:0] number_in6,
    input [5:0] number_in7,
    input [5:0] number_in8,
    output [5:0] read_add1,
    output [5:0] read_add2,
    output [5:0] read_add3,
    output [5:0] read_add4,
    output [5:0] read_add5,
    output [5:0] read_add6,
    output [5:0] read_add7,
    output [5:0] read_add8,
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
    
    output [35:0] projout,
    output reg valid_match
    );

    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;
    
    ///////////////////////////////////////////////
    reg [6:0] clk_cnt;
    reg [2:0] BX_pipe;
    reg first_clk_pipe;
    reg first_clk_dly;
    reg first_clk_dly2;
    
    initial begin
       clk_cnt = 7'b0;
       BX_pipe = 3'b111;
    end
    
    always @(posedge clk) begin
        if(start) begin
           BX_pipe <= BX_pipe + 1'b1;
           first_clk_pipe <= 1'b1;
        end
        else begin
           first_clk_pipe <= 1'b0;
        end
        first_clk_dly <= first_clk_pipe;
    end
    ///////////////////////////////////////////////////
    parameter PHI_BITS 	= 14;
    parameter Z_BITS    = 12;
    parameter R_BITS    = 7;
    parameter PHID_BITS = 9;
    parameter ZD_BITS   = 9;
    parameter k1ABC     = 5;
    parameter k2ABC     = 2;
    parameter layer     = 1'b1;
        
    initial begin
        read_add_allstub = 6'h3f;
        read_add_allproj = 6'h3f;
    end
    
    wire [11:0] matchpair;
    
    mem_readout_top StubPairs(
      .clk(clk),
      .new_event(first_clk_dly),
      
      .items00(number_in1),
      .addr00(read_add1),
      .mem_dat00(match1in),
      .items01(number_in2),
      .addr01(read_add2),
      .mem_dat01(match2in),
      .items02(number_in3),
      .addr02(read_add3),
      .mem_dat02(match3in),
      .items03(number_in4),
      .addr03(read_add4),
      .mem_dat03(match4in),
      .items04(number_in5),
      .addr04(read_add5),
      .mem_dat04(match5in),
      .items05(number_in6),
      .addr05(read_add6),
      .mem_dat05(match6in),
      .items06(number_in7),
      .addr06(read_add7),
      .mem_dat06(match7in),
      .items07(number_in8),
      .addr07(read_add8),
      .mem_dat07(match8in),
      .items08(6'b0),
      .items09(6'b0),
      .items10(6'b0),
      .items11(6'b0),
      .items12(6'b0),
      .items13(6'b0),
      .items14(6'b0),
      .items15(6'b0),
      .items16(6'b0),
      .items17(6'b0),
      
      .mem_dat_stream(matchpair),
      .valid(pre_valid_match),
      .none()
      );
      
    parameter [7:0] n_hold = 8'd14;  
    reg [n_hold:0] hold;
    always @(posedge clk) begin
      hold[0] <= start;
      hold[n_hold:1] <= hold[n_hold-1:0];
      done <= hold[n_hold];
    end
    
    always @(posedge clk) begin
        if(matchpair >= 0) begin
            read_add_allproj <= matchpair[11:6];
            read_add_allstub <= matchpair[5:0];
        end
    end

    reg [9:0] behold; // valid tracklet data hold

    always @(posedge clk) begin
        behold[0] <= pre_valid_match;
        behold[9:1] <= behold[8:0];
        valid_match <= behold[9];
    end

    //////////////////////////////////////////////////////////////////
    
    reg [PHI_BITS-1:0] iphi_proj_0;
    reg [PHI_BITS-1:0] iphi_stub_0;
    reg signed [Z_BITS-1:0] iz_stub_0;
    reg signed [Z_BITS-1:0] iz_proj_0;
    reg signed [PHID_BITS-1:0] iphi_der_0;
    reg signed [ZD_BITS-1:0] iz_der_0;
    reg signed [R_BITS-1:0] ir_stub_0;
    reg [5:0] pre_stub_index;
    reg [5:0] pre_proj_index;
    reg [5:0] stub_index_0;
    reg [5:0] proj_index_0;
    reg [5:0] stub_index_0_pipe;
    reg [5:0] proj_index_0_pipe;
    
    // Step 0: Get the positions
    always @(posedge clk) begin
        iphi_stub_0     <= allstubin[PHI_BITS-1:0];
        iphi_proj_0     <= allprojin[PHI_BITS+Z_BITS+ZD_BITS+PHID_BITS:Z_BITS+ZD_BITS+PHID_BITS];
        iz_stub_0       <= allstubin[Z_BITS+PHI_BITS-1:PHI_BITS];
        iz_proj_0       <= allprojin[Z_BITS+ZD_BITS+PHID_BITS:ZD_BITS+PHID_BITS];
        iphi_der_0      <= allprojin[ZD_BITS+PHID_BITS-1:ZD_BITS];
        iz_der_0        <= allprojin[ZD_BITS-1:0];
        ir_stub_0       <= allstubin[R_BITS+Z_BITS+PHI_BITS-1:Z_BITS+PHI_BITS];
    end
    
    always @(posedge clk) begin
        pre_stub_index <= read_add_allstub;
        pre_proj_index <= read_add_allproj;
        stub_index_0_pipe <= pre_stub_index;
        proj_index_0_pipe <= pre_proj_index;
        stub_index_0 <= stub_index_0_pipe;
        proj_index_0 <= proj_index_0_pipe;
    end
    
    // Step 1: Calculate the true radial position
    // Carry Over:
    (*KEEP = "true"*) reg [PHI_BITS-1:0] iphi_stub_1;
    (*KEEP = "true"*) reg signed [Z_BITS-1:0] iz_stub_1;
    (*KEEP = "true"*) reg signed [PHID_BITS-1:0] iphi_der_1;
    (*KEEP = "true"*) reg signed [ZD_BITS-1:0] iz_der_1;    
    (*KEEP = "true"*) reg signed [PHI_BITS:0] iphi_proj_1;
    (*KEEP = "true"*) reg signed [Z_BITS-1:0] iz_proj_1;
    
    (*KEEP = "true"*) reg [PHI_BITS-1:0] iphi_stub_1_pipe;
    (*KEEP = "true"*) reg signed [Z_BITS-1:0] iz_stub_1_pipe;
    (*KEEP = "true"*) reg signed [PHID_BITS-1:0] iphi_der_1_pipe;
    (*KEEP = "true"*) reg signed [ZD_BITS-1:0] iz_der_1_pipe;    
    (*KEEP = "true"*) reg signed [PHI_BITS:0] iphi_proj_1_pipe;
    (*KEEP = "true"*) reg signed [Z_BITS-1:0] iz_proj_1_pipe;

    // Declare:
    reg signed [15:0] full_ir_corr_1;
    reg signed [15:0] full_ir_corr_pipe1;
    reg signed [15:0] full_iz_corr_1;
    reg signed [15:0] full_iz_corr_pipe1;
    wire signed [10:0] ir_corr_1;
    wire signed [10:0] iz_corr_1;
    reg [5:0] stub_index_1;
    reg [5:0] proj_index_1;
    reg [5:0] stub_index_1_pipe;
    reg [5:0] proj_index_1_pipe;
    
    always @(posedge clk) begin
        iphi_stub_1_pipe    <= iphi_stub_0;
        iz_stub_1_pipe    <= iz_stub_0;
        iphi_der_1_pipe    <= iphi_der_0;
        iz_der_1_pipe        <= iz_der_0;
        iphi_proj_1_pipe    <= {1'b0,iphi_proj_0};
        iz_proj_1_pipe    <= iz_proj_0;
        
        iphi_stub_1    <= iphi_stub_1_pipe;
        iz_stub_1    <= iz_stub_1_pipe;
        iphi_der_1    <= iphi_der_1_pipe;
        iz_der_1        <= iz_der_1_pipe;
        iphi_proj_1    <= iphi_proj_1_pipe;
        iz_proj_1    <= iz_proj_1_pipe;
        
        full_ir_corr_1    <= ir_stub_0 * iphi_der_0;
        full_ir_corr_pipe1 <= full_ir_corr_1;
        full_iz_corr_1    <= ir_stub_0 * iz_der_0;
        full_iz_corr_pipe1 <= full_iz_corr_1;
        stub_index_1_pipe <= stub_index_0;
        proj_index_1_pipe <= proj_index_0;
        stub_index_1 <= stub_index_1_pipe;
        proj_index_1 <= proj_index_1_pipe;
    end
    
    assign ir_corr_1 = full_ir_corr_pipe1 >>> k1ABC;
    assign iz_corr_1 = full_iz_corr_pipe1 >>> k2ABC;
    
    // Step 2: Calculate the "better" positions
    // Carry Over:
    reg signed [PHI_BITS-1:0] iphi_stub_2;
    reg signed [Z_BITS-1:0] iz_stub_2;
    // Declare:
    reg signed [PHI_BITS-1:0] iphi_2;
    reg signed [Z_BITS-1:0] iz_2;
    //reg signed [14:0] pre_iphi_2;
    //reg signed [12:0] pre_iz_2;
    reg [5:0] stub_index_2;
    reg [5:0] proj_index_2;
    
    always @(posedge clk) begin
        iphi_stub_2    <= iphi_stub_1;
        iz_stub_2    <= iz_stub_1;
        iphi_2         <= iphi_proj_1 + ir_corr_1;
        iz_2             <= iz_proj_1 + iz_corr_1;
        stub_index_2 <= stub_index_1;
        proj_index_2 <= proj_index_1;
    end
    
    //assign iphi_2     = iphi_proj_1 + (pre_iphi_2 >>> 1'b1);
    //assign iz_2     = iz_proj_1 + (pre_iz_2 >>> 2'h3);

    // Step 3: Calculate Residuals
    // Declare
    reg signed [9:0] full_iphi_res_3;
    reg signed [8:0] iz_res_3;
    wire signed [12:0] iphi_res_3;
    reg [5:0] stub_index_3;
    reg [5:0] proj_index_3;
    reg [5:0] stub_index_4;
    reg [5:0] proj_index_4;
    
    always @(posedge clk) begin
        full_iphi_res_3     <= iphi_stub_2 - iphi_2;
        iz_res_3                 <= iz_stub_2 - iz_2;
        stub_index_3 <= stub_index_2;
        proj_index_3 <= proj_index_2;
        stub_index_4 <= stub_index_3;
        proj_index_4 <= proj_index_3;
    end

    assign iphi_res_3 = full_iphi_res_3 <<< (2'b11 & {layer,layer} );
    
    assign projout[8:0]     = iz_res_3;
    assign projout[16:9]    = iphi_res_3[7:0];
    assign projout[25:17]   = {3'b000,stub_index_4};
    assign projout[35:26]   = {4'b0000,proj_index_4};

    /////////////////////////////////////////////////////////
    
    
    
    
endmodule
