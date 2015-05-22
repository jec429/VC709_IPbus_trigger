`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2015 02:18:28 PM
// Design Name: 
// Module Name: mem_readin_top
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

module mem_readin_top(
    input clk,                      // main clock
    input reset,                // start over
    input [47:0] data_residuals,    // data out from neighboring sector, from FIFO (would be residuals)
    input datanull,                  // when FIFO is empty data is not valid
    
    output reg [3:0] output_BX,
    output reg send_BX,
    
    output reg [53:0] output_L1L2_1,
    output reg [53:0] output_L1L2_2,
    output reg [53:0] output_L1L2_3,
    output reg [53:0] output_L1L2_4,
    output reg [53:0] output_L3L4_1,
    output reg [53:0] output_L3L4_2,
    output reg [53:0] output_L3L4_3,
    output reg [53:0] output_L3L4_4,
    output reg [53:0] output_L5L6_1,
    output reg [53:0] output_L5L6_2,
    output reg [53:0] output_L5L6_3,
    output reg [53:0] output_L5L6_4,
    
    output reg wr_en_mem00,
    output reg wr_en_mem01,
    output reg wr_en_mem02,
    output reg wr_en_mem03,
    output reg wr_en_mem04,
    output reg wr_en_mem05,
    output reg wr_en_mem06,
    output reg wr_en_mem07,
    output reg wr_en_mem08,
    output reg wr_en_mem09,
    output reg wr_en_mem10,
    output reg wr_en_mem11

);
    reg [3:0] memory_addr;
    reg [4:0] write_addr;
    reg new_event_dly1, new_event_dly2;
    reg [47:0] data_residuals_dly1;
    reg datanull_dly;
    
    reg valid;
    
    //wr_en (write enables for the 12 memories) & write_addr (write addresses for the 12 memories) & item counter for each memory   
    //reg wr_en_mem00, wr_en_mem01, wr_en_mem02, wr_en_mem03, wr_en_mem04, wr_en_mem05, wr_en_mem06, wr_en_mem07, wr_en_mem08, wr_en_mem09, wr_en_mem10, wr_en_mem11;
    reg [4:0] write_addr00, write_addr01, write_addr02, write_addr03, write_addr04, write_addr05, write_addr06, write_addr07, write_addr08, write_addr09, write_addr10, write_addr11;
    reg [5:0] num_items00, num_items01, num_items02, num_items03, num_items04, num_items05, num_items06, num_items07, num_items08, num_items09, num_items10, num_items11;
    
    
    always @ (posedge clk) begin //delay initalization
        new_event_dly1 <= reset;
        new_event_dly2 <= new_event_dly1;
        data_residuals_dly1 <= data_residuals;
        datanull_dly <= datanull;
        //$display ("BX: %b",data_residuals[51:49]);
        //$display ("SEL: %b",data_residuals[48:45]);
        //$display ("data: %h",data_residuals[44:0]);
        //$display ("wr_en_mem00: %b",wr_en_mem00);
        //$display ("write_addr00: %b",write_addr00);
    end
    
        
    always @ (posedge clk) begin
        if (new_event_dly2) begin // initialize variables 
            send_BX <= 1'b0;
            // set all item counters to zero
            num_items00 <= 6'b0;
            num_items01 <= 6'b0;
            num_items02 <= 6'b0;
            num_items03 <= 6'b0;
            num_items04 <= 6'b0;
            num_items05 <= 6'b0;
            num_items06 <= 6'b0;
            num_items07 <= 6'b0;
            num_items08 <= 6'b0;
            num_items09 <= 6'b0;
            num_items10 <= 6'b0;
            num_items11 <= 6'b0;
            // set all write enables to zero  
            wr_en_mem00 <= 1'b0;
            wr_en_mem01 <= 1'b0;
            wr_en_mem02 <= 1'b0;
            wr_en_mem03 <= 1'b0;
            wr_en_mem04 <= 1'b0;
            wr_en_mem05 <= 1'b0;
            wr_en_mem06 <= 1'b0;
            wr_en_mem07 <= 1'b0;
            wr_en_mem08 <= 1'b0;
            wr_en_mem09 <= 1'b0;
            wr_en_mem10 <= 1'b0;
            wr_en_mem11 <= 1'b0;
            // set all write addresses to zero      
            write_addr00 <= 5'b11111;
            write_addr01 <= 5'b11111;
            write_addr02 <= 5'b11111;
            write_addr03 <= 5'b11111;
            write_addr04 <= 5'b11111;
            write_addr05 <= 5'b11111;
            write_addr06 <= 5'b11111;
            write_addr07 <= 5'b11111;
            write_addr08 <= 5'b11111;
            write_addr09 <= 5'b11111;
            write_addr10 <= 5'b11111;
            write_addr11 <= 5'b11111;
        end
        else if (datanull_dly) begin //don't write out anything if reading out EMPTY from FIFO
            wr_en_mem00 <= 1'b0;
            wr_en_mem01 <= 1'b0;
            wr_en_mem02 <= 1'b0;
            wr_en_mem03 <= 1'b0;
            wr_en_mem04 <= 1'b0;
            wr_en_mem05 <= 1'b0;
            wr_en_mem06 <= 1'b0;
            wr_en_mem07 <= 1'b0;
            wr_en_mem08 <= 1'b0;
            wr_en_mem09 <= 1'b0;
            wr_en_mem10 <= 1'b0;
            wr_en_mem11 <= 1'b0;
        end
        else begin
            // use the 4 bits containing memory information and set a write enable for the memory it should be sent to
            // also increment the write_addr for that memory so that data does not overwrite itself 
            // increment num_items for that memory (counter for how many residuals data has
            case (data_residuals[47:44])
                 4'b1111: begin
                     send_BX <= 1'b1;
                     wr_en_mem00 <= 1'b0;
                     wr_en_mem01 <= 1'b0;
                     wr_en_mem02 <= 1'b0;
                     wr_en_mem03 <= 1'b0;
                     wr_en_mem04 <= 1'b0;
                     wr_en_mem05 <= 1'b0;
                     wr_en_mem06 <= 1'b0;
                     wr_en_mem07 <= 1'b0;
                     wr_en_mem08 <= 1'b0;
                     wr_en_mem09 <= 1'b0;
                     wr_en_mem10 <= 1'b0;
                     wr_en_mem11 <= 1'b0;
                 end
                 4'b0001: begin 
                    //output_L1L2_1 <= data_residuals_dly1[53:0];
                    wr_en_mem00 <= 1'b1;
                    write_addr00 <= write_addr00 + 1'b1;
                    num_items00 <= num_items00 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 4'b0010: begin
                    wr_en_mem01 <= 1'b1;
                    write_addr01 <= write_addr01 + 1'b1;
                    num_items01 <= num_items01 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 4'b0011: begin
                    wr_en_mem02 <= 1'b1;
                    write_addr02 <= write_addr02 + 1'b1;
                    num_items02 <= num_items02 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 4'b0100: begin
                    wr_en_mem03 <= 1'b1;
                    write_addr03 <= write_addr03 + 1'b1;
                    num_items03 <= num_items03 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 4'b0101: begin
                    wr_en_mem04 <= 1'b1;
                    write_addr04 <= write_addr04 + 1'b1;
                    num_items04 <= num_items04 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 4'b0110: begin
                    wr_en_mem05 <= 1'b1;
                    write_addr05 <= write_addr05 + 1'b1;
                    num_items05 <= num_items05 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 4'b0111: begin
                    wr_en_mem06 <= 1'b1;
                    write_addr06 <= write_addr06 + 1'b1;
                    num_items06 <= num_items06 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 4'b1000: begin
                    wr_en_mem07 <= 1'b1;
                    write_addr07 <= write_addr07 + 1'b1;
                    num_items07 <= num_items07 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 4'b1001: begin
                    wr_en_mem08 <= 1'b1;
                    write_addr08 <= write_addr08 + 1'b1;
                    num_items08 <= num_items08 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 4'b1010: begin
                    wr_en_mem09 <= 1'b1;
                    write_addr09 <= write_addr09 + 1'b1;
                    num_items09 <= num_items09 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 4'b1011: begin
                    wr_en_mem10 <= 1'b1;
                    write_addr10 <= write_addr10 + 1'b1;
                    num_items10 <= num_items10 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 4'b1100: begin
                    wr_en_mem11 <= 1'b1;
                    write_addr11 <= write_addr11 + 1'b1;
                    num_items11 <= num_items11 + 1'b1;
                    // set other memory write enables to zero.
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    send_BX <= 1'b0;
                 end
                 default begin
                    send_BX <= 1'b0;
                    num_items00 <= 6'b0;
                    num_items01 <= 6'b0;
                    num_items02 <= 6'b0;
                    num_items03 <= 6'b0;
                    num_items04 <= 6'b0;
                    num_items05 <= 6'b0;
                    num_items06 <= 6'b0;
                    num_items07 <= 6'b0;
                    num_items08 <= 6'b0;
                    num_items09 <= 6'b0;
                    num_items10 <= 6'b0;
                    num_items11 <= 6'b0;
                    write_addr00 <= 5'b11111;
                    write_addr01 <= 5'b11111;
                    write_addr02 <= 5'b11111;
                    write_addr03 <= 5'b11111;
                    write_addr04 <= 5'b11111;
                    write_addr05 <= 5'b11111;
                    write_addr06 <= 5'b11111;
                    write_addr07 <= 5'b11111;
                    write_addr08 <= 5'b11111;
                    write_addr09 <= 5'b11111;
                    write_addr10 <= 5'b11111;
                    write_addr11 <= 5'b11111;
                    wr_en_mem00 <= 1'b0;
                    wr_en_mem01 <= 1'b0;
                    wr_en_mem02 <= 1'b0;
                    wr_en_mem03 <= 1'b0;
                    wr_en_mem04 <= 1'b0;
                    wr_en_mem05 <= 1'b0;
                    wr_en_mem06 <= 1'b0;
                    wr_en_mem07 <= 1'b0;
                    wr_en_mem08 <= 1'b0;
                    wr_en_mem09 <= 1'b0;
                    wr_en_mem10 <= 1'b0;
                    wr_en_mem11 <= 1'b0;
                 end
            endcase
        end
    end

    always @ (posedge clk) begin  //make a data stream for each memory
        if (send_BX) output_BX <= data_residuals_dly1[44:42];
        if (wr_en_mem00) output_L1L2_1 <= {10'hFFF,data_residuals_dly1[43:0]};
        if (wr_en_mem01) output_L1L2_2 <= {10'hFFF,data_residuals_dly1[43:0]};
        if (wr_en_mem02) output_L1L2_3 <= {10'hFFF,data_residuals_dly1[43:0]};
        if (wr_en_mem03) output_L1L2_4 <= {10'hFFF,data_residuals_dly1[43:0]};
        if (wr_en_mem04) output_L3L4_1 <= {10'hFFF,data_residuals_dly1[43:0]};
        if (wr_en_mem05) output_L3L4_2 <= {10'hFFF,data_residuals_dly1[43:0]};
        if (wr_en_mem06) output_L3L4_3 <= {10'hFFF,data_residuals_dly1[43:0]};
        if (wr_en_mem07) output_L3L4_4 <= {10'hFFF,data_residuals_dly1[43:0]};
        if (wr_en_mem08) output_L5L6_1 <= {10'hFFF,data_residuals_dly1[43:0]};
        if (wr_en_mem09) output_L5L6_2 <= {10'hFFF,data_residuals_dly1[43:0]};
        if (wr_en_mem10) output_L5L6_3 <= {10'hFFF,data_residuals_dly1[43:0]};
        if (wr_en_mem11) output_L5L6_4 <= {10'hFFF,data_residuals_dly1[43:0]};
    end

    always @ (posedge clk) begin
       valid <= wr_en_mem00 | wr_en_mem01 | wr_en_mem02 | wr_en_mem03 | wr_en_mem04 | wr_en_mem05 
           | wr_en_mem06 | wr_en_mem07 | wr_en_mem08 | wr_en_mem09 | wr_en_mem10 | wr_en_mem11;
    end



    //////////////////////////////////////////////////////////////
    // write out the data from data_stream to memory
    // memory #(45,3) storeinMem00( .output_data(final_residuals), .clock(clk), .write_address(write_addr00), .write_enable(wr_en_mem00), 
    //     .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );
    // memory #(45,3) storeinMem01( .output_data(final_residuals), .clock(clk), .write_address(write_addr01), .write_enable(wr_en_mem01), 
    //     .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );
    // memory #(45,3) storeinMem02( .output_data(final_residuals), .clock(clk), .write_address(write_addr02), .write_enable(wr_en_mem02), 
    //     .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );
    // memory #(45,3) storeinMem03( .output_data(final_residuals), .clock(clk), .write_address(write_addr03), .write_enable(wr_en_mem03), 
    //     .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );
    // memory #(45,3) storeinMem04( .output_data(final_residuals), .clock(clk), .write_address(write_addr04), .write_enable(wr_en_mem04), 
    //     .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );
    // memory #(45,3) storeinMem05( .output_data(final_residuals), .clock(clk), .write_address(write_addr05), .write_enable(wr_en_mem05), 
    //     .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );
    // memory #(45,3) storeinMem06( .output_data(final_residuals), .clock(clk), .write_address(write_addr06), .write_enable(wr_en_mem06), 
    //      .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );
    // memory #(45,3) storeinMem07( .output_data(final_residuals), .clock(clk), .write_address(write_addr07), .write_enable(wr_en_mem07), 
    //     .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );
    // memory #(45,3) storeinMem08( .output_data(final_residuals), .clock(clk), .write_address(write_addr08), .write_enable(wr_en_mem08), 
    //     .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );
    // memory #(45,3) storeinMem09( .output_data(final_residuals), .clock(clk), .write_address(write_addr09), .write_enable(wr_en_mem09), 
    //     .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );
    // memory #(45,3) storeinMem10( .output_data(final_residuals), .clock(clk), .write_address(write_addr10), .write_enable(wr_en_mem10), 
    //     .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );
    // memory #(45,3) storeinMem11( .output_data(final_residuals), .clock(clk), .write_address(write_addr11), .write_enable(wr_en_mem11), 
    //    .read_address(5'b00000), .input_data({data_residuals_dly1[51:49],data_residuals_dly1[44:0]}) );

endmodule
