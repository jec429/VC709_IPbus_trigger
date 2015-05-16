`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/03/2015 11:23:31 AM
// Design Name: 
// Module Name: reader
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


module reader(
    input clk,
    input reset,
    input en_proc,
    // programming interface
    // inputs
    input wire io_clk,                    // programming clock
    input wire io_sel,                    // this module has been selected for an I/O operation
    input wire io_sync,                    // start the I/O operation
    input wire [23:0] io_addr,        // slave address, memory or register. Top 12 bits already consumed.
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
    
    output reg [5:0] read_add1,
    output reg [5:0] read_add2,
    output reg [5:0] read_add3,
    output reg [5:0] read_add4,
    output reg [5:0] read_add5,
    output reg [5:0] read_add6,
    output reg [5:0] read_add7,
    output reg [5:0] read_add8,
    output reg [5:0] read_add9,
    output reg [5:0] read_add10,
    output reg [5:0] read_add11,
    output reg [5:0] read_add12,
    output reg [5:0] read_add13,
    output reg [5:0] read_add14,
    output reg [5:0] read_add15,
    output reg [5:0] read_add16,
    output reg [5:0] read_add17,
    output reg [5:0] read_add18,
    output reg [5:0] read_add19,
    output reg [5:0] read_add20,
    output reg [5:0] read_add21,
    output reg [5:0] read_add22,
    output reg [5:0] read_add23,
    output reg [5:0] read_add24,
    output reg [5:0] read_add25,
    output reg [5:0] read_add26,
    output reg [5:0] read_add27,
    output reg [5:0] read_add28,
    output reg [5:0] read_add29,
    output reg [5:0] read_add30,
    output reg [5:0] read_add31,
    output reg [5:0] read_add32,
    output reg [5:0] read_add33,
    
    input [5:0] number_in1,
    input [5:0] number_in2,
    input [5:0] number_in3,
    input [5:0] number_in4,
    input [5:0] number_in5,
    input [5:0] number_in6,
    input [5:0] number_in7,
    input [5:0] number_in8,
    input [5:0] number_in9,
    input [5:0] number_in10,
    input [5:0] number_in11,
    input [5:0] number_in12,
    input [5:0] number_in13,
    input [5:0] number_in14,
    input [5:0] number_in15,
    input [5:0] number_in16,
    input [5:0] number_in17,
    input [5:0] number_in18,
    input [5:0] number_in19,
    input [5:0] number_in20,
    input [5:0] number_in21,
    input [5:0] number_in22,
    input [5:0] number_in23,
    input [5:0] number_in24,
    input [5:0] number_in25,
    input [5:0] number_in26,
    input [5:0] number_in27,
    input [5:0] number_in28,
    input [5:0] number_in29,
    input [5:0] number_in30,
    input [5:0] number_in31,
    input [5:0] number_in32,
    input [5:0] number_in33,
    
    
    input [35:0] input1,
    input [35:0] input2,
    input [35:0] input3,
    input [35:0] input4,
    input [35:0] input5,
    input [35:0] input6,
    input [35:0] input7,
    input [35:0] input8,
    input [35:0] input9,
    input [35:0] input10,
    input [35:0] input11,
    input [35:0] input12,
    input [35:0] input13,
    input [35:0] input14,
    input [35:0] input15,
    input [35:0] input16,
    input [35:0] input17,
    input [35:0] input18,
    input [35:0] input19,
    input [35:0] input20,
    input [35:0] input21,
    input [35:0] input22,
    input [35:0] input23,
    input [35:0] input24,
    input [35:0] input25,
    input [35:0] input26,
    input [35:0] input27,
    input [35:0] input28,
    input [35:0] input29,
    input [35:0] input30,
    input [35:0] input31,
    input [35:0] input32,
    input [35:0] input33
    
    );
    
    initial begin
        read_add1 = 6'h0;
        read_add2 = 6'h3f;
        read_add3 = 6'h3f;
        read_add4 = 6'h3f;
        read_add5 = 6'h3f;
        read_add6 = 6'h3f;
        read_add7 = 6'h3f;
        read_add8 = 6'h3f;
        read_add9 = 6'h3f;
        read_add10 = 6'h3f;
        read_add11 = 6'h3f;
        read_add12 = 6'h3f;
        read_add13 = 6'h3f;
        read_add14 = 6'h3f;
        read_add15 = 6'h3f;
        read_add16 = 6'h3f;
        read_add17 = 6'h3f;
        read_add18 = 6'h3f;
        read_add19 = 6'h3f;
        read_add20 = 6'h3f;
        read_add21 = 6'h3f;
        read_add22 = 6'h3f;
        read_add23 = 6'h3f;
        read_add24 = 6'h3f;
        read_add25 = 6'h3f;
        read_add26 = 6'h3f;
        read_add27 = 6'h3f;
        read_add28 = 6'h3f;
        read_add29 = 6'h3f;
        read_add30 = 6'h3f;
        read_add31 = 6'h3f;
        read_add32 = 6'h3f;
        read_add33 = 6'h3f;   
    end
    
    always @(posedge clk) begin
        if(number_in1 > 0)
            read_add1 <= read_add1 + 1'b1;
        else
            read_add1 <= read_add1;
        if(number_in2 > 0)
            read_add2 <= read_add2 + 1'b1;
        else
            read_add2 <= read_add2;
        if(number_in3 > 0)
            read_add3 <= read_add3 + 1'b1;
        else
            read_add3 <= read_add3;
        if(number_in4 > 0)
            read_add4 <= read_add4 + 1'b1;
        else
            read_add4 <= read_add4;
        if(number_in5 > 0)
            read_add5 <= read_add5 + 1'b1;
        else
            read_add5 <= read_add5;
        if(number_in6 > 0)
            read_add6 <= read_add6 + 1'b1;
        else
            read_add6 <= read_add6;
        if(number_in7 > 0)
            read_add7 <= read_add7 + 1'b1;
        else
            read_add7 <= read_add7;
        if(number_in8 > 0)
            read_add8 <= read_add8 + 1'b1;
        else
            read_add8 <= read_add8;
        if(number_in9 > 0)
            read_add9 <= read_add9 + 1'b1;
        else
            read_add9 <= read_add9;
        if(number_in10 > 0)
            read_add10 <= read_add10 + 1'b1;
        else
            read_add10 <= read_add10;
        if(number_in11 > 0)
            read_add11 <= read_add11 + 1'b1;
        else
            read_add11 <= read_add11;
        if(number_in12 > 0)
            read_add12 <= read_add12 + 1'b1;
        else
            read_add12 <= read_add12;
        if(number_in13 > 0)
            read_add13 <= read_add13 + 1'b1;
        else
            read_add13 <= read_add13;
        if(number_in14 > 0)
            read_add14 <= read_add14 + 1'b1;
        else
            read_add14 <= read_add14;
        if(number_in15 > 0)
            read_add15 <= read_add15 + 1'b1;
        else
            read_add15 <= read_add15;
        if(number_in16 > 0)
            read_add16 <= read_add16 + 1'b1;
        else
            read_add16 <= read_add16;
        if(number_in17 > 0)
            read_add17 <= read_add17 + 1'b1;
        else
            read_add17 <= read_add17;
        if(number_in18 > 0)
            read_add18 <= read_add18 + 1'b1;
        else
            read_add18 <= read_add18;
        if(number_in19 > 0)
            read_add19 <= read_add19 + 1'b1;
        else
            read_add19 <= read_add19;
        if(number_in20 > 0)
            read_add20 <= read_add20 + 1'b1;
        else
            read_add20 <= read_add20;
        if(number_in21 > 0)
            read_add21 <= read_add21 + 1'b1;
        else
            read_add21 <= read_add21;
        if(number_in22 > 0)
            read_add22 <= read_add22 + 1'b1;
        else
            read_add22 <= read_add22;
        if(number_in23 > 0)
            read_add23 <= read_add23 + 1'b1;
        else
            read_add23 <= read_add23;
        if(number_in24 > 0)
            read_add24 <= read_add24 + 1'b1;
        else
            read_add24 <= read_add24;
        if(number_in25 > 0)
            read_add25 <= read_add25 + 1'b1;
        else
            read_add25 <= read_add25;
        if(number_in26 > 0)
            read_add26 <= read_add26 + 1'b1;
        else
            read_add26 <= read_add26;
        if(number_in27 > 0)
            read_add27 <= read_add27 + 1'b1;
        else
            read_add27 <= read_add27;
        if(number_in28 > 0)
            read_add28 <= read_add28 + 1'b1;
        else
            read_add28 <= read_add28;
        if(number_in29 > 0)
            read_add29 <= read_add29 + 1'b1;
        else
            read_add29 <= read_add29;
        if(number_in30 > 0)
            read_add30 <= read_add30 + 1'b1;
        else
            read_add30 <= read_add30;
        if(number_in31 > 0)
            read_add31 <= read_add31 + 1'b1;
        else
            read_add31 <= read_add31;
        if(number_in32 > 0)
            read_add32 <= read_add32 + 1'b1;
        else
            read_add32 <= read_add32;
        if(number_in33 > 0)
            read_add33 <= read_add33 + 1'b1;
        else
            read_add33 <= read_add33;
            
    end   
    
    wire sel_data1,sel_data2,sel_data3,sel_data4,sel_data5,sel_data6,sel_data7,sel_data8,sel_data9,sel_data10;
    wire sel_data11,sel_data12,sel_data13,sel_data14,sel_data15,sel_data16,sel_data17,sel_data18,sel_data19,sel_data20;
    wire sel_data21,sel_data22,sel_data23,sel_data24,sel_data25,sel_data26,sel_data27,sel_data28,sel_data29,sel_data30;
    wire sel_data31,sel_data32;
    
    assign sel_data1 = (input1 != 0 );
    assign sel_data2 = (input2 != 0 );
    assign sel_data3 = (input3 != 0 );
    assign sel_data4 = (input4 != 0 );
    assign sel_data5 = (input5 != 0 );
    assign sel_data6 = (input6 != 0 );
    assign sel_data7 = (input7 != 0 );
    assign sel_data8 = (input8 != 0 );
    assign sel_data9 = (input9 != 0 );
    assign sel_data10 = (input10 != 0 );
    assign sel_data11 = (input11 != 0 );
    assign sel_data12 = (input12 != 0 );
    assign sel_data13 = (input13 != 0 );
    assign sel_data14 = (input14 != 0 );
    assign sel_data15 = (input15 != 0 );
    assign sel_data16 = (input16 != 0 );
    assign sel_data17 = (input17 != 0 );
    assign sel_data18 = (input18 != 0 );
    assign sel_data19 = (input19 != 0 );
    assign sel_data20 = (input20 != 0 );
    assign sel_data21 = (input21 != 0 );
    assign sel_data22 = (input22 != 0 );
    assign sel_data23 = (input23 != 0 );
    assign sel_data24 = (input24 != 0 );
    assign sel_data25 = (input25 != 0 );
    assign sel_data26 = (input26 != 0 );
    assign sel_data27 = (input27 != 0 );
    assign sel_data28 = (input28 != 0 );
    assign sel_data29 = (input29 != 0 );
    assign sel_data30 = (input30 != 0 );
    assign sel_data31 = (input31 != 0 );
    assign sel_data32 = (input32 != 0 );
    
    reg [8:0] wr_add1;
    reg [8:0] wr_add2;
    reg [8:0] wr_add3;
    reg [8:0] wr_add4;
    reg [8:0] wr_add5;
    reg [8:0] wr_add6;
    initial begin
        wr_add1 <= 9'h1ff;
        wr_add2 <= 9'h1ff;
        wr_add3 <= 9'h1ff;
        wr_add4 <= 9'h1ff;
        wr_add5 <= 9'h1ff;
        wr_add6 <= 9'h1ff;
    end
    always @(posedge clk) begin
        if (sel_data1)
            wr_add1 <= wr_add1 + 1'b1;
        else
            wr_add1 <= wr_add1;
        if (sel_data2)
            wr_add2 <= wr_add2 + 1'b1;
        else
            wr_add2 <= wr_add2;
        if (sel_data3)
            wr_add3 <= wr_add3 + 1'b1;
        else
            wr_add3 <= wr_add3;
        if (sel_data4)
            wr_add4 <= wr_add4 + 1'b1;
        else
            wr_add4 <= wr_add4;
        if (sel_data5)
            wr_add5 <= wr_add5 + 1'b1;
        else
            wr_add5 <= wr_add5;
        if (sel_data6)
            wr_add6 <= wr_add6 + 1'b1;
        else
            wr_add6 <= wr_add6;
     end
        
    assign io_sel_data1 = io_sel && (io_addr[23:19] == 5'b00000);
    assign io_sel_data2 = io_sel && (io_addr[23:19] == 5'b00001);
    assign io_sel_data3 = io_sel && (io_addr[23:19] == 5'b00010);
    assign io_sel_data4 = io_sel && (io_addr[23:19] == 5'b00011);
    assign io_sel_data5 = io_sel && (io_addr[23:19] == 5'b00100);
    assign io_sel_data6 = io_sel && (io_addr[23:19] == 5'b00101);
    assign io_sel_data7 = io_sel && (io_addr[23:19] == 5'b00110);
    assign io_sel_data8 = io_sel && (io_addr[23:19] == 5'b00111);
    assign io_sel_data9 = io_sel && (io_addr[23:19] == 5'b01000);
    assign io_sel_data10 = io_sel && (io_addr[23:19] == 5'b01001);
    assign io_sel_data11 = io_sel && (io_addr[23:19] == 5'b01010);
    assign io_sel_data12 = io_sel && (io_addr[23:19] == 5'b01011);
    assign io_sel_data13 = io_sel && (io_addr[23:19] == 5'b01100);
    assign io_sel_data14 = io_sel && (io_addr[23:19] == 5'b01101);
    assign io_sel_data15 = io_sel && (io_addr[23:19] == 5'b01110);
    assign io_sel_data16 = io_sel && (io_addr[23:19] == 5'b01111);
    assign io_sel_data17 = io_sel && (io_addr[23:19] == 5'b10000);
    assign io_sel_data18 = io_sel && (io_addr[23:19] == 5'b10001);
    assign io_sel_data19 = io_sel && (io_addr[23:19] == 5'b10010);
    assign io_sel_data20 = io_sel && (io_addr[23:19] == 5'b10011);
    assign io_sel_data21 = io_sel && (io_addr[23:19] == 5'b10100);
    assign io_sel_data22 = io_sel && (io_addr[23:19] == 5'b10101);
    assign io_sel_data23 = io_sel && (io_addr[23:19] == 5'b10110);
    assign io_sel_data24 = io_sel && (io_addr[23:19] == 5'b10111);
    assign io_sel_data25 = io_sel && (io_addr[23:19] == 5'b11000);
    assign io_sel_data26 = io_sel && (io_addr[23:19] == 5'b11001);
    assign io_sel_data27 = io_sel && (io_addr[23:19] == 5'b11010);
    assign io_sel_data28 = io_sel && (io_addr[23:19] == 5'b11011);
    assign io_sel_data29 = io_sel && (io_addr[23:19] == 5'b11100);
    assign io_sel_data30 = io_sel && (io_addr[23:19] == 5'b11101);
    assign io_sel_data31 = io_sel && (io_addr[23:19] == 5'b11110);
    assign io_sel_data32 = io_sel && (io_addr[23:19] == 5'b11111);
    
    wire io_sel_fifo;
    assign io_sel_fifo = io_sel_data1 | io_sel_data2 | io_sel_data3 | io_sel_data4 | io_sel_data5 | io_sel_data6 | io_sel_data7 | io_sel_data8 | io_sel_data9 | io_sel_data10 |
                        io_sel_data11 | io_sel_data12 | io_sel_data13 | io_sel_data14 | io_sel_data15 | io_sel_data16 | io_sel_data17 | io_sel_data18 | io_sel_data19 | io_sel_data20 |
                        io_sel_data21 | io_sel_data22 | io_sel_data23 | io_sel_data24 | io_sel_data25 | io_sel_data26 | io_sel_data27 | io_sel_data28 | io_sel_data29 | io_sel_data30 |
                        io_sel_data31 | io_sel_data32;
                        
    wire wr_en;
    assign wr_en = sel_data1 | sel_data2 | sel_data3 | sel_data4 | sel_data5 | sel_data6 | sel_data7 | sel_data8 | sel_data9 | sel_data10 |
                    sel_data11 | sel_data12 | sel_data13 | sel_data14 | sel_data15 | sel_data16 | sel_data17 | sel_data18 | sel_data19 | sel_data20 |
                    sel_data21 | sel_data22 | sel_data23 | sel_data24 | sel_data25 | sel_data26 | sel_data27 | sel_data28 | sel_data29 | sel_data30 |
                    sel_data31 | sel_data32;
                        
    wire [35:0] data_out1;
    wire [35:0] data_out2;
    wire [35:0] data_out3;
    wire [35:0] data_out4;
    wire [35:0] data_out5;
    wire [35:0] data_out6;
    //TP_raw_stub_fifo read_out_fifo(.wr_clk(clk), .rst(reset), .din({4'hf,rd_data_reg}), .wr_en(wr_en), 
      //                               .rd_clk(io_clk), .rd_en(io_sel_fifo), .dout(data_out),
        //                             .empty(fifo_empty), .full(fifo_full));
    Memory #(
             .RAM_WIDTH(32),                       // Specify RAM data width
             .RAM_DEPTH(256),                     // Specify RAM depth (number of entries)
             .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
             .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
           ) reader_memory1(
             .addra(wr_add1),    // Write address bus, width determined from RAM_DEPTH
             .addrb(io_addr[8:0]),    // Read address bus, width determined from RAM_DEPTH
             .dina(input1[31:0]),      // RAM input data, width determined from RAM_WIDTH
             .clka(clk),      // Write clock
             .clkb(io_clk),      // Read clock
             .wea(sel_data1),        // Write enable
             .enb(1'b1),        // Read Enable, for additional power savings, disable when not in use // Maybe don't read add = 6'h3f?
             .rstb(reset),      // Output reset (does not affect memory contents)
             .regceb(1'b1),  // Output register enable
             .doutb(data_out1)     // RAM output data, width determined from RAM_WIDTH
     );
   Memory #(
             .RAM_WIDTH(32),                       // Specify RAM data width
             .RAM_DEPTH(256),                     // Specify RAM depth (number of entries)
             .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
             .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
           ) reader_memory2(
             .addra(wr_add2),    // Write address bus, width determined from RAM_DEPTH
             .addrb(io_addr[8:0]),    // Read address bus, width determined from RAM_DEPTH
             .dina(input2[31:0]),      // RAM input data, width determined from RAM_WIDTH
             .clka(clk),      // Write clock
             .clkb(io_clk),      // Read clock
             .wea(sel_data2),        // Write enable
             .enb(1'b1),        // Read Enable, for additional power savings, disable when not in use // Maybe don't read add = 6'h3f?
             .rstb(reset),      // Output reset (does not affect memory contents)
             .regceb(1'b1),  // Output register enable
             .doutb(data_out2)     // RAM output data, width determined from RAM_WIDTH
     );
   Memory #(
             .RAM_WIDTH(32),                       // Specify RAM data width
             .RAM_DEPTH(256),                     // Specify RAM depth (number of entries)
             .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
             .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
           ) reader_memory3(
             .addra(wr_add3),    // Write address bus, width determined from RAM_DEPTH
             .addrb(io_addr[8:0]),    // Read address bus, width determined from RAM_DEPTH
             .dina(input3[31:0]),      // RAM input data, width determined from RAM_WIDTH
             .clka(clk),      // Write clock
             .clkb(io_clk),      // Read clock
             .wea(sel_data3),        // Write enable
             .enb(1'b1),        // Read Enable, for additional power savings, disable when not in use // Maybe don't read add = 6'h3f?
             .rstb(reset),      // Output reset (does not affect memory contents)
             .regceb(1'b1),  // Output register enable
             .doutb(data_out3)     // RAM output data, width determined from RAM_WIDTH
     );
   Memory #(
             .RAM_WIDTH(32),                       // Specify RAM data width
             .RAM_DEPTH(256),                     // Specify RAM depth (number of entries)
             .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
             .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
           ) reader_memory4(
             .addra(wr_add4),    // Write address bus, width determined from RAM_DEPTH
             .addrb(io_addr[8:0]),    // Read address bus, width determined from RAM_DEPTH
             .dina(input4[31:0]),      // RAM input data, width determined from RAM_WIDTH
             .clka(clk),      // Write clock
             .clkb(io_clk),      // Read clock
             .wea(sel_data4),        // Write enable
             .enb(1'b1),        // Read Enable, for additional power savings, disable when not in use // Maybe don't read add = 6'h3f?
             .rstb(reset),      // Output reset (does not affect memory contents)
             .regceb(1'b1),  // Output register enable
             .doutb(data_out4)     // RAM output data, width determined from RAM_WIDTH
     );
   Memory #(
             .RAM_WIDTH(32),                       // Specify RAM data width
             .RAM_DEPTH(256),                     // Specify RAM depth (number of entries)
             .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
             .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
           ) reader_memory5(
             .addra(wr_add5),    // Write address bus, width determined from RAM_DEPTH
             .addrb(io_addr[8:0]),    // Read address bus, width determined from RAM_DEPTH
             .dina(input5[31:0]),      // RAM input data, width determined from RAM_WIDTH
             .clka(clk),      // Write clock
             .clkb(io_clk),      // Read clock
             .wea(sel_data5),        // Write enable
             .enb(1'b1),        // Read Enable, for additional power savings, disable when not in use // Maybe don't read add = 6'h3f?
             .rstb(reset),      // Output reset (does not affect memory contents)
             .regceb(1'b1),  // Output register enable
             .doutb(data_out5)     // RAM output data, width determined from RAM_WIDTH
     );
   Memory #(
             .RAM_WIDTH(32),                       // Specify RAM data width
             .RAM_DEPTH(256),                     // Specify RAM depth (number of entries)
             .RAM_PERFORMANCE("HIGH_PERFORMANCE"), // Select "HIGH_PERFORMANCE" or "LOW_LATENCY" 
             .INIT_FILE("")                        // Specify name/location of RAM initialization file if using one (leave blank if not)
           ) reader_memory6(
             .addra(wr_add6),    // Write address bus, width determined from RAM_DEPTH
             .addrb(io_addr[8:0]),    // Read address bus, width determined from RAM_DEPTH
             .dina(input6[31:0]),      // RAM input data, width determined from RAM_WIDTH
             .clka(clk),      // Write clock
             .clkb(io_clk),      // Read clock
             .wea(sel_data6),        // Write enable
             .enb(1'b1),        // Read Enable, for additional power savings, disable when not in use // Maybe don't read add = 6'h3f?
             .rstb(reset),      // Output reset (does not affect memory contents)
             .regceb(1'b1),  // Output register enable
             .doutb(data_out6)     // RAM output data, width determined from RAM_WIDTH
     );
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
        if (io_sel_data1) io_rd_data_reg <= data_out1[31:0];
        else if (io_sel_data2) io_rd_data_reg <= data_out2[31:0];
        else if (io_sel_data3) io_rd_data_reg <= data_out3[31:0];
        else if (io_sel_data4) io_rd_data_reg <= data_out4[31:0];
        else if (io_sel_data5) io_rd_data_reg <= data_out5[31:0];
        else if (io_sel_data6) io_rd_data_reg <= data_out6[31:0];
    end
    
endmodule
