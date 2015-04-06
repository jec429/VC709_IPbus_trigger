`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/28/2014 03:16:21 PM
// Design Name: 
// Module Name: VMRouters
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


module VMRouters(
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
    
    input [5:0] number_in,
    output reg [5:0] read_add,
    input [35:0] stubinLink1,
    
    output reg [35:0] allstubout_n1,
    output reg [17:0] vmstuboutPHI1Z1_n1,
    output reg [17:0] vmstuboutPHI2Z1_n1,
    output reg [17:0] vmstuboutPHI3Z1_n1,
    output reg [17:0] vmstuboutPHI4Z1_n1,
    output reg [17:0] vmstuboutPHI1Z2_n1,
    output reg [17:0] vmstuboutPHI2Z2_n1,
    output reg [17:0] vmstuboutPHI3Z2_n1,
    output reg [17:0] vmstuboutPHI4Z2_n1
    
    );
    
    // no IPbus here yet
    assign io_rd_data[31:0] = 32'h00000000;
    assign io_rd_ack = 1'b0;

    parameter INNER = 1'b1;
    parameter ODD = 1'b1;
    
    initial begin
        read_add = 6'h3f;
    end
    
    always @(posedge clk) begin
        if(read_add + 1'b1 < number_in)
            read_add <= read_add + 1'b1;
        else
            read_add <= read_add;
    end
    
    ///////////////////////////////////////////////////////////////////////////
        
    always @(posedge clk) begin
        if(INNER) begin        
            allstubout_n1[35:33] <= stubinLink1[2:0];               // Stub pt      
            allstubout_n1[32:26] <= stubinLink1[35:29];             // r
            allstubout_n1[25:14] <= stubinLink1[28:17];             // z
            allstubout_n1[13:0]  <= stubinLink1[16:3];              // phi
        end
        else begin
            allstubout_n1[35:33] <= stubinLink1[2:0];               // Stub pt
            allstubout_n1[32:25] <= stubinLink1[35:28];             // r
            allstubout_n1[24:17] <= stubinLink1[27:20];             // z
            allstubout_n1[16:0]  <= stubinLink1[19:3];              // phi
        end
    end
    
    ///////////////////////////////////////////////////////////////////////////
    
    reg [5:0] index;
    reg [17:0] vmstubout;
    
    initial begin
        vmstuboutPHI1Z1_n1 = 0;
        vmstuboutPHI2Z1_n1 = 0;
        vmstuboutPHI3Z1_n1 = 0;
        vmstuboutPHI4Z1_n1 = 0;
        vmstuboutPHI1Z2_n1 = 0;
        vmstuboutPHI2Z2_n1 = 0;
        vmstuboutPHI3Z2_n1 = 0;
        vmstuboutPHI4Z2_n1 = 0;
    end
    
    always @(posedge clk) begin
        index <= read_add;
        if(INNER) begin        
            vmstubout[17:15] <= stubinLink1[2:0];     
            vmstubout[14:9]  <= index;
            vmstubout[8:5]   <= stubinLink1[25:22];
            vmstubout[4:2]   <= {ODD ^ stubinLink1[14],stubinLink1[13:12]};
            vmstubout[1:0]   <= stubinLink1[35:34];
            if(allstubout_n1[23] == 1'b0 & (allstubout_n1[13:11] == (3'b000 + ODD) | allstubout_n1[13:11] == (3'b001 + ODD)))
                vmstuboutPHI1Z1_n1 <= vmstubout;
            else 
                vmstuboutPHI1Z1_n1 <= 0; 
            if(allstubout_n1[23] == 1'b0 & (allstubout_n1[13:11] == (3'b010 + ODD) | allstubout_n1[13:11] == (3'b011 + ODD)))
                vmstuboutPHI2Z1_n1 <= vmstubout;
            else 
                vmstuboutPHI2Z1_n1 <= 0;
            if(allstubout_n1[23] == 1'b0 & (allstubout_n1[13:11] == (3'b100 + ODD) | allstubout_n1[13:11] == (3'b101 + ODD)))
                vmstuboutPHI3Z1_n1 <= vmstubout;
            else 
                vmstuboutPHI3Z1_n1 <= 0;
            if(allstubout_n1[23] == 1'b0 & (allstubout_n1[13:11] == 3'b111))
                vmstuboutPHI4Z1_n1 <= vmstubout;
            else 
                vmstuboutPHI4Z1_n1 <= 0;
            if(allstubout_n1[23] == 1'b1 & (allstubout_n1[13:11] == (3'b000 + ODD) | allstubout_n1[13:11] == (3'b001 + ODD)))
                vmstuboutPHI1Z2_n1 <= vmstubout;
            else 
                vmstuboutPHI1Z2_n1 <= 0;
            if(allstubout_n1[23] == 1'b1 & (allstubout_n1[13:11] == (3'b010 + ODD) | allstubout_n1[13:11] == (3'b011 + ODD)))
                vmstuboutPHI2Z2_n1 <= vmstubout;
            else 
                vmstuboutPHI2Z2_n1 <= 0;
            if(allstubout_n1[23] == 1'b1 & (allstubout_n1[13:11] == (3'b100 + ODD) | allstubout_n1[13:11] == (3'b101 + ODD)))
                vmstuboutPHI3Z2_n1 <= vmstubout;
            else 
                vmstuboutPHI3Z2_n1 <= 0;
            if(allstubout_n1[23] == 1'b1 & (allstubout_n1[13:11] == 3'b111))
                vmstuboutPHI4Z2_n1 <= vmstubout;
            else 
                vmstuboutPHI4Z2_n1 <= 0;
        end
        else begin
            vmstubout[17:15] <= stubinLink1[2:0];
            vmstubout[14:9]  <= index;
            vmstubout[8:5]   <= stubinLink1[24:21];
            vmstubout[4:2]   <= {ODD ^ stubinLink1[17],stubinLink1[16:15]};
            vmstubout[1:0]   <= stubinLink1[35:34];
            if(allstubout_n1[22] == 1'b0 & (allstubout_n1[16:14] == (3'b000 + ODD) | allstubout_n1[16:14] == (3'b001 + ODD)))
                vmstuboutPHI1Z1_n1 <= vmstubout;
            else 
                vmstuboutPHI1Z1_n1 <= 0;
            if(allstubout_n1[22] == 1'b0 & (allstubout_n1[16:14] == (3'b010 + ODD) | allstubout_n1[16:14] == (3'b011 + ODD)))
                vmstuboutPHI2Z1_n1 <= vmstubout;
            else 
                vmstuboutPHI2Z1_n1 <= 0;
            if(allstubout_n1[22] == 1'b0 & (allstubout_n1[16:14] == (3'b100 + ODD) | allstubout_n1[16:14] == (3'b101 + ODD)))
                vmstuboutPHI3Z1_n1 <= vmstubout;
            else 
                vmstuboutPHI3Z1_n1 <= 0;
            if(allstubout_n1[22] == 1'b0 & (allstubout_n1[16:14] == 3'b111))
                vmstuboutPHI4Z1_n1 <= vmstubout;
            else 
                vmstuboutPHI4Z1_n1 <= 0;
            if(allstubout_n1[22] == 1'b1 & (allstubout_n1[16:14] == (3'b000 + ODD) | allstubout_n1[16:14] == (3'b001 + ODD)))
                vmstuboutPHI1Z2_n1 <= vmstubout;
            else 
                vmstuboutPHI1Z2_n1 <= 0;
            if(allstubout_n1[22] == 1'b1 & (allstubout_n1[16:14] == (3'b010 + ODD) | allstubout_n1[16:14] == (3'b011 + ODD)))
                vmstuboutPHI2Z2_n1 <= vmstubout;
            else 
                vmstuboutPHI2Z2_n1 <= 0;
            if(allstubout_n1[22] == 1'b1 & (allstubout_n1[16:14] == (3'b100 + ODD) | allstubout_n1[16:14] == (3'b101 + ODD)))
                vmstuboutPHI3Z2_n1 <= vmstubout;
            else 
                vmstuboutPHI3Z2_n1 <= 0;
            if(allstubout_n1[22] == 1'b1 & (allstubout_n1[16:14] == 3'b111))
                vmstuboutPHI4Z2_n1 <= vmstubout;
            else 
                vmstuboutPHI4Z2_n1 <= 0;
        end
    end
    
    
endmodule
