`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/29/2014 08:46:00 AM
// Design Name: 
// Module Name: TE
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


module TrackletEngine #(parameter PHI_MEM = "/mnt/Ddrive/GLIB Firmware/branches/jectest/prj/viv_1/project_2/z1p1L1L2.txt",
            parameter Z_MEM = "/mnt/Ddrive/GLIB Firmware/branches/jectest/prj/viv_1/project_2/z1p1L1L2.txt")
    (
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
    output reg [5:0] read_add1,
    input [17:0] innervmstubin,
    input [5:0] number_in2,
    output reg [5:0] read_add2,
    input [17:0] outervmstubin,
    
    output reg [11:0] stubpairout
    
    );

    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;
    
    initial begin
        read_add1 = 6'h3f;
        read_add2 = 6'h3f;
    end
    reg [6:0] clk_cnt;
    reg [2:0] BX_pipe;
    reg first_clk_pipe;
    
    initial begin
       clk_cnt = 7'b0;
       BX_pipe = 3'b111;
    end
    
    always @(posedge clk) begin
       if(en_proc)
           clk_cnt <= clk_cnt + 1'b1;
       else begin
           clk_cnt <= 7'b0;
           BX_pipe <= 3'b111;
       end
       if(start) begin
           BX_pipe <= BX_pipe + 1'b1;
           first_clk_pipe <= 1'b1;
       end
       else begin
           first_clk_pipe <= 1'b0;
       end
    end
    
    parameter [7:0] n_hold = 8'd3;  
    reg [n_hold:0] hold;
    always @(posedge clk) begin
        hold[0] <= start;
        hold[n_hold:1] <= hold[n_hold-1:0];
        done <= hold[n_hold];
    end
    
    // Double nested loop
    // Hold outer stub 2 clk cycles
    reg [17:0] outervmstubin_hold1;
    reg [17:0] outervmstubin_hold2;
    
    always @(posedge clk) begin
        if(first_clk_pipe) begin
            read_add1 <= 6'h3f; 
            read_add2 <= 6'h0; // if number_in2 > 0?
        end
        else begin
            if(read_add1 + 1'b1 < number_in1)
                read_add1 <= read_add1 + 1'b1;
            else begin
                read_add1 <= read_add1;
                if(read_add1 + 1'b1 == number_in1 && read_add2 + 1'b1 < number_in2) begin
                    read_add2 <= read_add2 + 1'b1;
                    read_add1 <= 6'h0;
                end
                else
                    read_add2 <= read_add2;
            end
            //if(read_add2 + 1'b1 < number_in2)
                //read_add2 <= read_add2 + 1'b1;
            //else
                //read_add2 <= read_add2;
        end
        outervmstubin_hold1 <= outervmstubin;
        outervmstubin_hold2 <= outervmstubin_hold1;
    end
    
    //////////////////////////////////////////////////////////////////////////////
    
    wire [3:0] delta_phi;
    wire [2:0] delta_r;
    wire dout_phi;
    wire dout_z;
    assign delta_phi = outervmstubin_hold2[4:2] - innervmstubin[4:2];
    assign delta_r   = outervmstubin_hold2[1:0] - innervmstubin[1:0];
    
    Memory #(
            .RAM_WIDTH(1),                       // Specify RAM data width
            .RAM_DEPTH(8192),                     // Specify RAM depth (number of entries)
            .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
            .INIT_FILE(PHI_MEM)                        // Specify name/location of RAM initialization file if using one (leave blank if not)
          ) lookup_phi (
            .addra(13'b0),    // Write address bus, width determined from RAM_DEPTH
            .addrb({innervmstubin[17:15],outervmstubin[17:15],delta_phi,delta_r}),    // Read address bus, width determined from RAM_DEPTH
            .dina(1'b0),      // RAM input data, width determined from RAM_WIDTH
            .clka(clk),      // Write clock
            .clkb(clk),      // Read clock
            .wea(1'b0),        // Write enable
            .enb(1'b1),        // Read Enable, for additional power savings, disable when not in use // Maybe don't read add = 6'h3f?
            .rstb(reset),      // Output reset (does not affect memory contents)
            .regceb(1'b1),  // Output register enable
            .doutb(dout_phi)     // RAM output data, width determined from RAM_WIDTH
        );
    
    Memory #(
            .RAM_WIDTH(1),                       // Specify RAM data width
            .RAM_DEPTH(4096),                     // Specify RAM depth (number of entries)
            .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
            .INIT_FILE(Z_MEM)                        // Specify name/location of RAM initialization file if using one (leave blank if not)
          ) lookup_z (
            .addra(12'b0),    // Write address bus, width determined from RAM_DEPTH
            .addrb({innervmstubin[8:5],outervmstubin[8:5],innervmstubin[1:0],outervmstubin[1:0]}),    // Read address bus, width determined from RAM_DEPTH
            .dina(1'b0),      // RAM input data, width determined from RAM_WIDTH
            .clka(clk),      // Write clock
            .clkb(clk),      // Read clock
            .wea(1'b0),        // Write enable
            .enb(1'b1),        // Read Enable, for additional power savings, disable when not in use // Maybe don't read add = 6'h3f?
            .rstb(reset),      // Output reset (does not affect memory contents)
            .regceb(1'b1),  // Output register enable
            .doutb(dout_z)     // RAM output data, width determined from RAM_WIDTH
        );
    
    reg [11:0] stubpair;
    always @(posedge clk) begin
        stubpair <= {innervmstubin[14:9],outervmstubin[14:9]};
        if(dout_phi & dout_z & innervmstubin != 0 & outervmstubin != 0)
            stubpairout <= stubpair;
        else
            stubpairout <= 12'hfff;
    end
    
endmodule
