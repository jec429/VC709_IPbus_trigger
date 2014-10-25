`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 10:49:27 AM
// Design Name: 
// Module Name: TrackletCombiner
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


module TrackletCombiner(
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
    output reg [5:0] read_add1,
    input [11:0] stubpair1in,
    
    output reg [5:0] read_add_innerall,
    output reg [5:0] read_add_outerall,
    input [35:0] innerallstubin,
    input [35:0] outerallstubin,
    
    output [53:0] trackpar,
    output [53:0] proj1,
    output [53:0] proj2,
    output [53:0] proj3,
    output [53:0] proj4
    );

    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;
    
    initial begin
        read_add1 = 6'h3f;
        read_add_innerall = 6'h3f;
        read_add_outerall = 6'h3f;
    end
    
    always @(posedge clk) begin
        if(read_add1 + 1'b1 < number_in1)
            read_add1 <= read_add1 + 1'b1;
        else
            read_add1 <= read_add1;
            
        if(read_add1 < 6'h3f) begin
            read_add_innerall <= stubpair1in[11:6];
            read_add_outerall <= stubpair1in[5:0];
        end
    end
    
    //////////////////////////////////////////////////////////////////
    
    parameter krA = 12'sd981;
    parameter krB = 12'sd1514;
    
    // Step 0: Define the variables
    wire signed [7:0] r_A_0;
    wire [11:0] z_A_0;
    wire [16:0] phi_A_0;
    wire signed [7:0] r_B_0;
    wire [11:0] z_B_0;
    wire [16:0] phi_B_0;
    
    wire signed [11:0] k_r_A;
    wire signed [11:0] k_r_B;

    // Why multiply these numbers???????
    // Because you want to always have the same number of bits for all layers
    // phi = 17, r = 8, z =8
    
    assign r_A_0        = innerallstubin[32:26]<<<1'b1;
    assign z_A_0        = innerallstubin[25:14];
    assign phi_A_0      = innerallstubin[13:0]<<<2'b11;
    assign r_B_0        = outerallstubin[32:26]<<<1'b1;
    assign z_B_0        = outerallstubin[25:14];
    assign phi_B_0      = outerallstubin[13:0]<<<2'b11;
    assign k_r_A        = krA;
    assign k_r_B        = krB;
    
    
    // Step 1: Calculate deltas and absolute radii
    // Carry over:
    reg [11:0] z_A_1;
    reg [16:0] phi_A_1;
    // Declare:
    reg signed [14:0] idelta_phi_1;
    reg signed [12:0] idelta_z_1;
    reg [13:0] idelta_r_1;
    reg signed [12:0] rA_abs_1;
    reg signed [12:0] rB_abs_1;
    
    always @(posedge clk) begin
        z_A_1             <= z_A_0;
        phi_A_1             <= phi_A_0;
        idelta_phi_1     <= phi_B_0 - phi_A_0; // bit size mismatch here
        idelta_z_1         <= z_B_0 - z_A_0;
        idelta_r_1        <= (k_r_B-k_r_A)+(r_B_0 - r_A_0);
        rA_abs_1            <= k_r_A+r_A_0;
        rB_abs_1            <= k_r_B+r_B_0;
    end
    
    // Step 2: Lookup dr inverse
    // Carry over:
    reg signed [14:0] idelta_phi_2;
    reg signed [12:0] idelta_z_2;
    reg signed [12:0] rA_abs_2;
    reg [11:0] z_A_2;
    reg [16:0] phi_A_2;
    // Declare:
    wire signed [17:0] idr_inv_2;
    reg [23:0] full_it1;    
    wire [11:0] it1_2;
    wire [95:0] LUT_file;
    
    // how do I write to this memory?
    Memory #(18, 14, "D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/dr_inv.txt") lookup_dr_inv(
        // Output
        .output_data(idr_inv_2),
        // Input
        .clock(clk),
        .read_address(idelta_r_1)
    );
    
    always @(posedge clk) begin
        idelta_phi_2     <= idelta_phi_1;
        idelta_z_2         <= idelta_z_1;
        rA_abs_2            <= rA_abs_1;
        z_A_2             <= z_A_1;
        phi_A_2             <= phi_A_1;
        full_it1            <= rA_abs_1 * rB_abs_1;
    end
    
    assign it1_2 = full_it1 >>>4'd12;
    
    // Step 3: 
    // Carry over
    reg [11:0] it1_3;    
    reg [17:0] idr_inv_3;
    reg signed [14:0] idelta_phi_3;
    reg signed [12:0] idelta_z_3;
    reg signed [12:0] rA_abs_3;
    reg [11:0] z_A_3;
    reg [16:0] phi_A_3;
    // Declare:
    reg signed [23:0] full_it2;
    wire signed [15:0] it2_3;
    
    always @(posedge clk) begin
        it1_3             <= it1_2;
        idr_inv_3         <= idr_inv_2;
        idelta_phi_3     <= idelta_phi_2;
        idelta_z_3         <= idelta_z_2;
        rA_abs_3            <= rA_abs_2;
        z_A_3             <= z_A_2;
        phi_A_3             <= phi_A_2;
        full_it2            <= idr_inv_2 * idelta_phi_2;
    end
    
    assign it2_3 = full_it2 >>> 4'b1000;
    
    // Step 4: 
    // Carry over
    reg [11:0] it1_4;    
    reg [17:0] idr_inv_4;
    reg signed [14:0] idelta_phi_4;
    reg signed [12:0] idelta_z_4;
    reg signed [12:0] rA_abs_4;
    reg [11:0] z_A_4;
    reg [16:0] phi_A_4;
    // Declare:
    reg [31:0] full_it3;
    wire [23:0] it3_4;
    
    always @(posedge clk) begin
        it1_4             <= it1_3;
        idr_inv_4         <= idr_inv_3;
        idelta_phi_4     <= idelta_phi_3;
        idelta_z_4         <= idelta_z_3;
        rA_abs_4            <= rA_abs_3;
        z_A_4             <= z_A_3;
        phi_A_4             <= phi_A_3;
        full_it3            <= it2_3 * it2_3;
    end
    
    assign it3_4 = full_it3 >>> 4'd12;
    
    // Step 5: 
    // Carry over:
    reg [17:0] idr_inv_5;
    reg signed [14:0] idelta_phi_5;
    reg signed [12:0] idelta_z_5;
    reg signed [12:0] rA_abs_5;
    reg [11:0] z_A_5;
    reg [16:0] phi_A_5;
    // Declare:
    reg [35:0] full_idelta;
    wire [40:0] pre_idelta_tmp_5;
    
    always @(posedge clk) begin
        idr_inv_5         <= idr_inv_4;
        idelta_phi_5     <= idelta_phi_4;
        idelta_z_5         <= idelta_z_4;
        rA_abs_5            <= rA_abs_4;
        z_A_5                <= z_A_4;
        phi_A_5             <= phi_A_4;
        full_idelta     <= it1_4 * it3_4;
    end
    
    assign pre_idelta_tmp_5 = full_idelta <<< 3'h7;
    // Step 6:
    // Carry over:
    reg [17:0] idr_inv_6;
    reg signed [14:0] idelta_phi_6;
    reg signed [12:0] idelta_z_6;
    reg signed [12:0] rA_abs_6;
    reg [11:0] z_A_6;
    reg [16:0] phi_A_6;
    reg [40:0] full_idelta_tmp;
    // Declare:
    wire [6:0] idelta_tmp_6; // WHY DO WE DO THIS????

    always @(posedge clk) begin
        idr_inv_6             <= idr_inv_5;
        idelta_phi_6         <= idelta_phi_5;
        idelta_z_6             <= idelta_z_5;
        rA_abs_6                <= rA_abs_5;
        z_A_6                 <= z_A_5;
        phi_A_6                <= phi_A_5;
        full_idelta_tmp    <= pre_idelta_tmp_5 * 8'hb7;
    end
    
    assign idelta_tmp_6 = full_idelta_tmp >>> 8'h23;
    
    // Step 7:
    // Carry over:
    reg signed [6:0] idelta_tmp_7;
    reg [17:0] idr_inv_7;
    reg signed [14:0] idelta_phi_7;
    reg signed [12:0] idelta_z_7;
    reg signed [12:0] rA_abs_7;
    reg [11:0] z_A_7;
    reg [16:0] phi_A_7;
    // Declare:
    reg [17:0] it4_7;
    
    always @(posedge clk) begin
        idr_inv_7         <= idr_inv_6;
        idelta_tmp_7     <= idelta_tmp_6; // bit size mismatch fixed
        idelta_phi_7     <= idelta_phi_6;
        idelta_z_7         <= idelta_z_6;
        rA_abs_7            <= rA_abs_6;
        z_A_7             <= z_A_6;
        phi_A_7             <= phi_A_6;
        it4_7             <= 17'h10000 + 3*(idelta_tmp_6 >>> 1'b1);
    end
    
    // Step 8:
    // Carry over:
    reg [17:0] idr_inv_8;
    reg signed [14:0] idelta_phi_8;
    reg signed [12:0] idelta_z_8;
    reg signed [12:0] rA_abs_8;
    reg [11:0] z_A_8;
    reg [16:0] phi_A_8;
    // Declare:
    reg [23:0] full_it5;
    wire [16:0] it5_8;
    wire [12:0] pre_it5_8;
    
    always @(posedge clk) begin
        idr_inv_8         <= idr_inv_7;
        idelta_phi_8     <= idelta_phi_7;
        idelta_z_8         <= idelta_z_7;
        rA_abs_8            <= rA_abs_7;
        z_A_8             <= z_A_7;
        phi_A_8             <= phi_A_7;
        full_it5         <= idelta_tmp_7 * it4_7;
    end
    
    assign it5_8 = 17'h10000 - (full_it5 >>> 5'b10000); // size mismatch
    assign pre_it5_8 = (17'h10000 - (full_it5 >>> 5'b10000)) >>> 3'b100;
    
    // Step 9:
    // Carry over:
    reg signed [14:0] idelta_phi_9;
    reg signed [12:0] idelta_z_9;
    reg signed [12:0] rA_abs_9;
    reg [35:0] it5_9;
    reg [11:0] z_A_9;
    reg [16:0] phi_A_9;
    // Declare:
    reg [30:0] full_iDelta_inv;
    wire signed [18:0] iDelta_inv_9;
    
    always @(posedge clk) begin
        idelta_phi_9         <= idelta_phi_8;
        idelta_z_9             <= idelta_z_8;
        rA_abs_9                <= rA_abs_8;
        it5_9                    <= it5_8;
        z_A_9                 <= z_A_8;
        phi_A_9                 <= phi_A_8;
        full_iDelta_inv     <= idr_inv_8 * pre_it5_8;
    end
    
    assign iDelta_inv_9 = full_iDelta_inv >>> 4'd12;
    
    // Step 10:
    // Carry over:
    reg signed [12:0] rA_abs_10;
    reg [35:0] it5_10;
    reg [11:0] z_A_10;
    reg [16:0] phi_A_10;
    // Declare:
    reg signed [20:0] full_irinv;
    reg signed [21:0] it_10;
    wire signed [21:0] irinv_10;
    wire signed [18:0] pre_irinv_10;
    
    always @(posedge clk) begin
        rA_abs_10    <= rA_abs_9;
        it5_10        <= it5_9;
        z_A_10        <= z_A_9;
        phi_A_10        <= phi_A_9;
        full_irinv     <= -idelta_phi_9 * iDelta_inv_9;
        it_10         <= idelta_z_9 * iDelta_inv_9;
    end
    
    assign irinv_10 = full_irinv <<< 1'b1;
    assign pre_irinv_10 = full_irinv >>> 2'b10;
    
    // Step 11:
    // Carry over:
    reg [35:0] it5_11;
    reg signed [12:0] rA_abs_11;
    reg [11:0] z_A_11;
    reg [16:0] phi_A_11;
    reg signed [21:0] it_11;
    reg signed [21:0] irinv_11;
    // Declare:
    reg signed [31:0] full_it7;
    wire signed [30:0] it7_11;
    wire signed [10:0] it7_tmp_11;
    wire signed [20:0] it7_tmp_sqr_11;
    wire signed [12:0] pre_it_11;
    
    always @(posedge clk) begin
        it5_11        <= it5_10;
        rA_abs_11    <= rA_abs_10;
        z_A_11        <= z_A_10;
        phi_A_11        <= phi_A_10;
        it_11            <= it_10;
        irinv_11        <= irinv_10;
        full_it7     <= rA_abs_10 * pre_irinv_10;
    end
    
    assign it7_11                 = full_it7 >>> 1'b1;
    assign it7_tmp_11         = full_it7 >>> 5'd25 ;
    assign it7_tmp_sqr_11     = it7_tmp_11 * it7_tmp_11 ;
    assign pre_it_11             = it_11 >>> 4'd10;
    
    // Step 12:
    // Carry over:
    reg signed [30:0] it7_12;
    reg [35:0] it5_12;
    reg [11:0] z_A_12;
    reg [16:0] phi_A_12;
    reg signed [21:0] irinv_12;
    reg signed [21:0] it_12;
    // Declare:
    reg signed [25:0] it9_12;
    reg signed [25:0] full_pre_it12;
    wire signed [15:0] pre_it9_12;
    wire signed [15:0] pre_it7_12;      
    wire signed [20:0] pre_it12_12;      
    
    always @(posedge clk) begin
        it7_12             <= it7_11;
        z_A_12            <= z_A_11;
        phi_A_12            <= phi_A_11;
        it_12                <= it_11;
        irinv_12            <= irinv_11;
        it9_12             <= 25'h1000000 + it7_tmp_sqr_11; // Top bits are constant and are trimmed during synthesis
        full_pre_it12    <= pre_it_11 * rA_abs_11;
    end
    
    assign pre_it9_12     = it9_12 >>> 4'd10;
    assign pre_it7_12     = it7_12 >>> 4'hf;
    assign pre_it12_12     = full_pre_it12 >>> 3'h5;
    
    
    // Step 13:
    // Carry over:
    reg [11:0] z_A_13;
    reg [16:0] phi_A_13;
    reg signed [21:0] irinv_13;
    reg signed [21:0] it_13;
    // Declare:
    reg signed [31:0] it10_13;
    reg signed [35:0] it12_13;
    wire signed [19:0] pre_it10_13;
    wire signed [15:0] pre_it12_13;
    
    always @(posedge clk) begin
        z_A_13    <= z_A_12;
        phi_A_13    <= phi_A_12;
        it_13        <= it_12;
        irinv_13    <= irinv_12;
        it10_13     <= pre_it7_12 * pre_it9_12;
        it12_13     <= pre_it12_12 * pre_it9_12;
    end
    
    assign pre_it10_13 = it10_13 >>> 5'd16; // size mismatch
    assign pre_it12_13 = it12_13 >>> 5'h13; // NOT GOOD ENOUGH // size mismatch
    
    // Step 14:
    // Carry over:
    (*KEEP = "true"*) reg signed [12:0] it_14;
    (*KEEP = "true"*) reg signed [13:0] irinv_14;
    // Declare:
    (*KEEP = "true"*) reg signed [16:0] iphi0_14;
    (*KEEP = "true"*) reg signed [9:0] iz0_14;
    
    always @(posedge clk) begin
        it_14            <= it_13>>>4'd10;
        irinv_14        <= irinv_13>>>4'd13;
        iphi0_14     <= (phi_A_13 + pre_it10_13)>>>1'b1;
        iz0_14        <= z_A_13 - pre_it12_13;
    end
    
    assign trackpar = {irinv_14,iphi0_14,iz0_14,it_14};
    
    TrackletProjections #(14,12,9,9,1'b1,16'h86a) projection1(
    // clocks and reset
        .clk(clk),                // processing clock
        .reset(reset),                        // active HI
        .en_proc(en_proc),
        // programming interface
        .io_clk(io_clk),                    // programming clock
        .io_sel(1'b0),                    // this module is selected for an I/O operation
        .io_addr(io_addr),        // memory address, top 16 bits alread consumed
        .io_sync(io_sync),                // start the I/O operation
        .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
        .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
        .io_wr_data(io_wr_data[31:0]),// data to write for write operations
        // outputs
        .io_rd_data(),        // data returned for read operations
        .io_rd_ack(),            // 'read' data from this module is ready
        // clocks
        .BX(BX[2:0]),
        .first_clk(first_clk),
        .not_first_clk(not_first_clk),
        
        .tracklet(trackpar),
        .projection(proj1)
    );
    
endmodule
