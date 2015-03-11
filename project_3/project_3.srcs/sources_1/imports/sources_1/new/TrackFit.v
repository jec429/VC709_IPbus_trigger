`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 04:16:38 PM
// Design Name: 
// Module Name: TrackFit
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


module TrackFit(
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
    input [35:0] fullmatch1in,
    input [5:0] number_in2,
    output reg [5:0] read_add2,
    input [35:0] fullmatch2in,
    input [5:0] number_in3,
    output reg [5:0] read_add3,
    input [35:0] fullmatch3in,
    input [5:0] number_in4,
    output reg [5:0] read_add4,
    input [35:0] fullmatch4in,
    
    output reg [5:0] read_add_pars,
    input [53:0] trackparsin,
    
    output [125:0] trackout
    );
    
    initial begin
        read_add1 = 6'h3f;
        read_add2 = 6'h3f;
        read_add3 = 6'h3f;
        read_add4 = 6'h3f;
        read_add_pars = 6'h3f;
    end
    
    always @(posedge clk) begin
        if(read_add1 + 1'b1 < number_in1)
            read_add1 <= read_add1 + 1'b1;
        else
            read_add1 <= read_add1;
        if(read_add2 + 1'b1 < number_in2)
                read_add2 <= read_add2 + 1'b1;
        else
            read_add2 <= read_add2;
        if(read_add3 + 1'b1 < number_in3)
            read_add3 <= read_add3 + 1'b1;
        else
            read_add3 <= read_add3;
        if(read_add4 + 1'b1 < number_in4)
            read_add4 <= read_add4 + 1'b1;
        else
            read_add4 <= read_add4;
            
        read_add_pars <= fullmatch1in[30:25];
        
    end
    
    /////////////////////////////////////////////////////////////////////
    wire [110:0] track_matches;
    wire [59:0] dout_dphi_0;
    wire [59:0] dout_dphi_1;
    wire [59:0] dout_dphi_2;
    wire [59:0] dout_dphi_3;
    
    wire [59:0] dout_dz_0;
    wire [59:0] dout_dz_1;
    wire [59:0] dout_dz_2;
    wire [59:0] dout_dz_3;
    
    wire [3:0] read_mem_phi_0;
    reg [3:0] read_mem_phi_1;
    reg [3:0] read_mem_phi_2;
    reg [3:0] read_mem_phi_3;
    
    reg [3:0] read_mem_z_0;
    reg [3:0] read_mem_z_1;
    reg [3:0] read_mem_z_2;
    reg [3:0] read_mem_z_3;
    
    // MAKE SURE THEY COME FROM THE SAME TRACKLET
    
    assign track_matches = {fullmatch1in,fullmatch2in[24:0],fullmatch3in[24:0],fullmatch4in[24:0]};
    assign read_mem_phi_0 = {|track_matches[15:0],|track_matches[40:25],|track_matches[65:50],|track_matches[90:75]};
    
    always @(posedge clk) begin
        read_mem_phi_1 <= read_mem_phi_0;
        read_mem_phi_2 <= read_mem_phi_1;
        read_mem_phi_3 <= read_mem_phi_2;
        
        read_mem_z_0 <= read_mem_phi_3;
        read_mem_z_1 <= read_mem_z_0;
        read_mem_z_2 <= read_mem_z_1;
        read_mem_z_3 <= read_mem_z_2;
    end
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_1_hex.txt") lookup_phi_0(
        // Output   
        .output_data(dout_dphi_0),
        // Input
        .clock(clk),
        .read_address(read_mem_phi_0)
    );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_2_hex.txt") lookup_phi_1(
         // Output   
        .output_data(dout_dphi_1),
        // Input
        .clock(clk),
        .read_address(read_mem_phi_1)
   );
   
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_3_hex.txt") lookup_phi_2(
        // Output   
        .output_data(dout_dphi_2),
        // Input
        .clock(clk),
        .read_address(read_mem_phi_2)
   );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_4_hex.txt") lookup_phi_3(
        // Output   
        .output_data(dout_dphi_3),
        // Input
        .clock(clk),
        .read_address(read_mem_phi_3)
    );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_5_hex.txt") lookup_z_0(
        // Output   
        .output_data(dout_dz_0),
        // Input
        .clock(clk),
        .read_address(read_mem_z_0)
    );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_6_hex.txt") lookup_z_1(
        // Output   
        .output_data(dout_dz_1),
        // Input
        .clock(clk),
        .read_address(read_mem_z_1)
    );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_7_hex.txt") lookup_z_2(
        // Output   
        .output_data(dout_dz_2),
        // Input
        .clock(clk),
        .read_address(read_mem_z_2)
    );
    
    Memory #(60, 4,"D:/GLIB Firmware/branches/jectest/prj/viv_1/project_2/FitDerTable_L1_8_hex.txt") lookup_z_3(
        // Output   
        .output_data(dout_dz_3),
        // Input
        .clock(clk),
        .read_address(read_mem_z_3)
    );
    
    // Step 0: Read the residuals:
    // Declare:
    reg signed [7:0] iphi_res_0_init;
    reg signed [7:0] iz_res_0_init;
    reg signed [7:0] iphi_res_1_init;
    reg signed [7:0] iz_res_1_init;
    reg signed [7:0] iphi_res_2_init;
    reg signed [7:0] iz_res_2_init;
    reg signed [7:0] iphi_res_3_init;
    reg signed [7:0] iz_res_3_init;
        
    always @(posedge clk) begin
       if(track_matches != 0) begin
            iphi_res_0_init    <= track_matches[91:84];
            iphi_res_1_init    <= track_matches[66:59];
            iphi_res_2_init    <= track_matches[41:34];
            iphi_res_3_init    <= track_matches[16:9];
            iz_res_0_init        <= track_matches[82:75];
            iz_res_1_init        <= track_matches[58:50];
            iz_res_2_init        <= track_matches[33:25];
            iz_res_3_init        <= track_matches[8:0];
        end
    end
    
    // Step 1: Read phi_0 LUT:
    // Carry Over:
    reg [53:0] trackparsin_0;
    reg signed [7:0] iphi_res_1_0;
    reg signed [7:0] iphi_res_2_0;
    reg signed [7:0] iphi_res_3_0;
    reg signed [7:0] iz_res_0_0;
    reg signed [7:0] iz_res_1_0;
    reg signed [7:0] iz_res_2_0;
    reg signed [7:0] iz_res_3_0;
    // Declare:
    reg signed [17:0] irinv_corr_0;
    reg signed [17:0] iphi0_corr_0;
    reg signed [17:0] it_corr_0;
    reg signed [17:0] iz0_corr_0;
    wire signed [14:0] m00;
    wire signed [14:0] m10;
    wire signed [14:0] m20;
    wire signed [14:0] m30;
    assign m00 = dout_dphi_0[59:45];
    assign m10 = dout_dphi_0[44:30];
    assign m20 = dout_dphi_0[29:15];
    assign m30 = dout_dphi_0[14:0];
    
    always @(posedge clk) begin
        trackparsin_0        <= trackparsin;
        iphi_res_1_0    <= iphi_res_1_init;
        iphi_res_2_0    <= iphi_res_2_init;
        iphi_res_3_0    <= iphi_res_3_init;
        iz_res_0_0        <= iz_res_0_init;
        iz_res_1_0        <= iz_res_1_init;
        iz_res_2_0        <= iz_res_2_init;
        iz_res_3_0        <= iz_res_3_init;
        
        irinv_corr_0     <= -iphi_res_0_init * m00;
        iphi0_corr_0     <= -iphi_res_0_init * m10;
        it_corr_0         <= -iphi_res_0_init * m20;
        iz0_corr_0         <= -iphi_res_0_init * m30;
    end

    // Step 2: Read phi_1 LUT:
    // Carry over:
    reg [53:0] trackparsin_1;
    reg signed [7:0] iz_res_0_1;
    reg signed [7:0] iz_res_1_1;
    reg signed [7:0] iphi_res_2_1;
    reg signed [7:0] iphi_res_1_1;
    reg signed [7:0] iz_res_2_1;
    reg signed [7:0] iphi_res_3_1;
    reg signed [7:0] iz_res_3_1;
    // Declare:
    reg signed [17:0] irinv_corr_1;
    reg signed [17:0] iphi0_corr_1;
    reg signed [17:0] it_corr_1;
    reg signed [17:0] iz0_corr_1;
    wire signed [14:0] m01;
    wire signed [14:0] m11;
    wire signed [14:0] m21;
    wire signed [14:0] m31;
    assign m01 = dout_dphi_1[59:45];
    assign m11 = dout_dphi_1[44:30];
    assign m21 = dout_dphi_1[29:15];
    assign m31 = dout_dphi_1[14:0];
    
    always @(posedge clk) begin
        trackparsin_1        <= trackparsin_0;
        iphi_res_1_1    <= iphi_res_1_0;
        iphi_res_2_1    <= iphi_res_2_0;
        iz_res_0_1        <= iz_res_0_0;
        iz_res_1_1        <= iz_res_1_0;
        iz_res_2_1        <= iz_res_2_0;
        iphi_res_3_1    <= iphi_res_3_0;
        iz_res_3_1        <= iz_res_3_0;
        
        irinv_corr_1     <= irinv_corr_0     - iz_res_1_0 * m01;
        iphi0_corr_1     <= iphi0_corr_0     - iz_res_1_0 * m11;
        it_corr_1         <= it_corr_0         - iz_res_1_0 * m21;
        iz0_corr_1         <= iz0_corr_0         - iz_res_1_0 * m31;
    end

    // Step 3: Read phi_2 LUT:
    // Carry over:
    reg [53:0] trackparsin_2;
    reg signed [7:0] iz_res_0_2;
    reg signed [7:0] iz_res_1_2;
    reg signed [7:0] iz_res_2_2;
    reg signed [7:0] iphi_res_2_2;
    reg signed [7:0] iphi_res_3_2;
    reg signed [7:0] iz_res_3_2;
    // Declare:
    reg signed [17:0] irinv_corr_2;
    reg signed [17:0] iphi0_corr_2;
    reg signed [17:0] it_corr_2;
    reg signed [17:0] iz0_corr_2;
    wire signed [14:0] m02;
    wire signed [14:0] m12;
    wire signed [14:0] m22;
    wire signed [14:0] m32;
    assign m02 = dout_dphi_2[59:45];
    assign m12 = dout_dphi_2[44:30];
    assign m22 = dout_dphi_2[29:15];
    assign m32 = dout_dphi_2[14:0];
    
    always @(posedge clk) begin
        trackparsin_2        <= trackparsin_1;
        iz_res_0_2        <= iz_res_0_1;
        iz_res_1_2        <= iz_res_1_1;
        iz_res_2_2        <= iz_res_2_1;
        iphi_res_2_2    <= iphi_res_2_1;
        iphi_res_3_2    <= iphi_res_3_1;
        iz_res_3_2        <= iz_res_3_1;
        
        irinv_corr_2     <= irinv_corr_1     - iphi_res_1_1 * m02;
        iphi0_corr_2     <= iphi0_corr_1     - iphi_res_1_1 * m12;
        it_corr_2         <= it_corr_1         - iphi_res_1_1 * m22;
        iz0_corr_2         <= iz0_corr_1         - iphi_res_1_1 * m32;
    end

    // Step 4: Read phi_3 LUT:
    // Carry over:
    reg [53:0] trackparsin_3;
    reg signed [7:0] iz_res_0_3;
    reg signed [7:0] iz_res_1_3;
    reg signed [7:0] iz_res_2_3;
    reg signed [7:0] iphi_res_2_3;
    reg signed [7:0] iz_res_3_3;
    reg signed [7:0] iphi_res_3_3;
    // Declare:
    reg signed [17:0] irinv_corr_3;
    reg signed [17:0] iphi0_corr_3;
    reg signed [17:0] it_corr_3;
    reg signed [17:0] iz0_corr_3;
    wire signed [14:0] m03;
    wire signed [14:0] m13;
    wire signed [14:0] m23;
    wire signed [14:0] m33;
    assign m03 = dout_dphi_3[59:45];
    assign m13 = dout_dphi_3[44:30];
    assign m23 = dout_dphi_3[29:15];
    assign m33 = dout_dphi_3[14:0];
    
    always @(posedge clk) begin
        trackparsin_3        <= trackparsin_2;
        iphi_res_2_3    <= iphi_res_2_2;
        iz_res_0_3        <= iz_res_0_2;
        iz_res_1_3        <= iz_res_1_2;
        iz_res_2_3        <= iz_res_2_2;
        iz_res_3_3        <= iz_res_3_2;
        iphi_res_3_3        <= iphi_res_3_2;
        
        irinv_corr_3     <= irinv_corr_2     - iz_res_1_2 * m03;
        iphi0_corr_3     <= iphi0_corr_2     - iz_res_1_2 * m13;
        it_corr_3         <= it_corr_2         - iz_res_1_2 * m23;
        iz0_corr_3         <= iz0_corr_2         - iz_res_1_2 * m33;
    end

    // Step 5: Read z_0 LUT:
    // Carry over:
    reg [53:0] trackparsin_4;
    reg signed [7:0] iz_res_1_4;
    reg signed [7:0] iz_res_2_4;
    reg signed [7:0] iz_res_3_4;
    reg signed [7:0] iphi_res_3_4;
    // Declare:
    reg signed [17:0] irinv_corr_4;
    reg signed [17:0] iphi0_corr_4;
    reg signed [17:0] it_corr_4;
    reg signed [17:0] iz0_corr_4;
    wire signed [14:0] m04;
    wire signed [14:0] m14;
    wire signed [14:0] m24;
    wire signed [14:0] m34;
    assign m04 = dout_dz_0[59:45];
    assign m14 = dout_dz_0[44:30];
    assign m24 = dout_dz_0[29:15];
    assign m34 = dout_dz_0[14:0];
    
    always @(posedge clk) begin
        trackparsin_4        <= trackparsin_3;
        iz_res_1_4        <= iz_res_1_3;
        iz_res_2_4        <= iz_res_2_3;
        iz_res_3_4        <= iz_res_3_3;
        iphi_res_3_4        <= iphi_res_3_3;
        
        irinv_corr_4     <= irinv_corr_3     - iphi_res_2_3 * m04;
        iphi0_corr_4     <= iphi0_corr_3     - iphi_res_2_3 * m14;
        it_corr_4         <= it_corr_3         - iphi_res_2_3 * m24;
        iz0_corr_4         <= iz0_corr_3         - iphi_res_2_3 * m34;
    end

    // Step 6: Read z_1 LUT:
    // Carry over:
    reg [53:0] trackparsin_5;
    reg signed [7:0] iz_res_2_5;
    reg signed [7:0] iz_res_3_5;
    reg signed [7:0] iphi_res_3_5;
    // Declare:
    reg signed [17:0] irinv_corr_5;
    reg signed [17:0] iphi0_corr_5;
    reg signed [17:0] it_corr_5;
    reg signed [17:0] iz0_corr_5;
    wire signed [14:0] m05;
    wire signed [14:0] m15;
    wire signed [14:0] m25;
    wire signed [14:0] m35;
    assign m05 = dout_dz_1[59:45];
    assign m15 = dout_dz_1[44:30];
    assign m25 = dout_dz_1[29:15];
    assign m35 = dout_dz_1[14:0];
    
    
    always @(posedge clk) begin
        trackparsin_5        <= trackparsin_4;
        iz_res_2_5        <= iz_res_2_4;
        iz_res_3_5        <= iz_res_3_4;
        iphi_res_3_5        <= iphi_res_3_4;
        
        irinv_corr_5     <= irinv_corr_4     - iz_res_2_4 * m05;
        iphi0_corr_5     <= iphi0_corr_4     - iz_res_2_4 * m15;
        it_corr_5         <= it_corr_4         - iz_res_2_4 * m25;
        iz0_corr_5         <= iz0_corr_4         - iz_res_2_4 * m35;
    end

    // Step 7: Read z_2 LUT:
    // Carry over:
    reg [53:0] trackparsin_6;
    reg signed [7:0] iz_res_3_6;
    // Declare:
    reg signed [17:0] irinv_corr_6;
    reg signed [17:0] iphi0_corr_6;
    reg signed [17:0] it_corr_6;
    reg signed [17:0] iz0_corr_6;
    wire signed [14:0] m06;
    wire signed [14:0] m16;
    wire signed [14:0] m26;
    wire signed [14:0] m36;
    assign m06 = dout_dz_2[59:45];
    assign m16 = dout_dz_2[44:30];
    assign m26 = dout_dz_2[29:15];
    assign m36 = dout_dz_2[14:0];
    
    
    always @(posedge clk) begin
        trackparsin_6        <= trackparsin_5;
        iz_res_3_6        <= iz_res_3_5;
        
        irinv_corr_6     <= irinv_corr_5     - iphi_res_3_5 * m06;
        iphi0_corr_6     <= iphi0_corr_5     - iphi_res_3_5 * m16;
        it_corr_6         <= it_corr_5         - iphi_res_3_5 * m26;
        iz0_corr_6         <= iz0_corr_5         - iphi_res_3_5 * m36;
    end

    // Step 8: Read z_3 LUT:
    // Declare:
    reg [53:0] trackparsin_7;
    reg signed [17:0] irinv_corr_7;
    reg signed [17:0] iphi0_corr_7;
    reg signed [17:0] it_corr_7;
    reg signed [17:0] iz0_corr_7;
    wire signed [14:0] m07;
    wire signed [14:0] m17;
    wire signed [14:0] m27;
    wire signed [14:0] m37;
    assign m07 = dout_dz_3[59:45];
    assign m17 = dout_dz_3[44:30];
    assign m27 = dout_dz_3[29:15];
    assign m37 = dout_dz_3[14:0];
    
    always @(posedge clk) begin        
        trackparsin_7        <= trackparsin_6;
        irinv_corr_7     <= irinv_corr_6     - iz_res_3_6 * m07;
        iphi0_corr_7     <= iphi0_corr_6     - iz_res_3_6 * m17;
        it_corr_7         <= it_corr_6         - iz_res_3_6 * m27;
        iz0_corr_7         <= iz0_corr_6         - iz_res_3_6 * m37;
    end

    wire signed [14:0] ipt;
    wire signed [18:0] iphi0;
    wire signed [9:0] id0;
    wire signed [13:0] it;
    wire signed [10:0] iz0;
    
    wire signed [12:0] pre_it;
    wire signed [13:0] pre_irinv;
    wire signed [17:0] pre_iphi0;
    wire signed [9:0] pre_iz0;
    
    assign pre_irinv     = trackparsin_7[53:40];
    assign pre_iphi0     = trackparsin_7[39:23];
    assign pre_it         = trackparsin_7[12:0];
    assign pre_iz0     = trackparsin_7[22:13];
    
    
    
    
    assign ipt         = pre_irinv - (irinv_corr_7 >>> 4'd10);
    assign iphi0     = pre_iphi0 - (iphi0_corr_7>>> 4'd10);
    assign it        = pre_it - (it_corr_7>>> 4'd10);
    assign iz0         = pre_iz0 - (iz0_corr_7>>> 4'd10);
    
    assign trackout = {ipt,iphi0,it,iz0};

    // Address bits "io_addr[31:30] = 2'b01" are consumed when selecting 'slave6'
    // Address bits "io_addr[29:28] = 2'b01" are consumed when selecting 'tracklet_processing'
    // Address bits "io_addr[27:24] = 4'b0010" are consumed when selecting 'TrackFit'
    wire io_sel_data_reg0, io_sel_data_reg1, io_sel_data_reg2, io_sel_data_reg3;
    assign io_sel_data_reg0 = io_sel && (io_addr[2:0] == 3'b000);
    assign io_sel_data_reg1 = io_sel && (io_addr[2:0] == 3'b001);
    assign io_sel_data_reg2 = io_sel && (io_addr[2:0] == 3'b010);
    assign io_sel_data_reg3 = io_sel && (io_addr[2:0] == 3'b011);

    ///////////////////////////////////////////////////////////////////////////////////////////////
    // readback mux
    // If a particular register or memory is addressed, connect that register's or memory's signals
    // to the 'io_rd_data' output. At the same time, assert 'io_rd_ack' to tell downstream muxes to
    // use the 'io_rd_data' from this module as their source of data.
    reg [31:0] io_rd_data_reg;
    assign io_rd_data[31:0] = io_rd_data_reg[31:0];
    // Assert 'io_rd_ack' if chip select for this module is asserted during a 'read' operation.
    reg io_rd_ack_reg;
    assign io_rd_ack = io_rd_ack_reg;
    always @(posedge io_clk) begin
        io_rd_ack_reg <= io_sync & io_sel & io_rd_en;
    end
    // Route the selected memory to the 'rdbk' output.
    always @(posedge io_clk) begin
        if (io_sel_data_reg0) io_rd_data_reg <= trackout[31:0];
        if (io_sel_data_reg1) io_rd_data_reg <= trackout[63:32];
        if (io_sel_data_reg2) io_rd_data_reg <= trackout[95:64];
        if (io_sel_data_reg3) io_rd_data_reg <= {7'b0, trackout[125:96]};
     end
    
endmodule
