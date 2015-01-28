`define CHAN_END_OF_FILL 64'hFFFFFFFFFFFFFFFF

`define FILL_LENGTH 20'd3


// Created by fizzim.pl version 4.42 on 2014:02:12 at 14:25:21 (www.fizzim.com)

module DataXferManager (
  output reg [63:0] amc13_data,
  output wire amc13_header,
  output wire amc13_trailer,
  output wire amc13_valid,
  output wire chan_data_req,
  output reg [2:0] chan_select,
  output wire fifo_read_en,
  input wire amc13_full,
  input wire amc13_rdy,
  input wire [63:0] channel_rx,
  input wire channel_rx_en,
  input wire clk_in,
  input wire [27:0] fifo_data,
  input wire fifo_empty,
  input wire pause,
  input wire rst_n 
);
  
  // state bits
  parameter 
  IDLE          = 8'b00000000, // extra=000 fifo_read_en=0 chan_data_req=0 amc13_valid=0 amc13_trailer=0 amc13_header=0 
  PAUSE         = 8'b00100000, // extra=001 fifo_read_en=0 chan_data_req=0 amc13_valid=0 amc13_trailer=0 amc13_header=0 
  RD_FIFO_DATA  = 8'b01000000, // extra=010 fifo_read_en=0 chan_data_req=0 amc13_valid=0 amc13_trailer=0 amc13_header=0 
  RECV_HDR      = 8'b01100000, // extra=011 fifo_read_en=0 chan_data_req=0 amc13_valid=0 amc13_trailer=0 amc13_header=0 
  REQ_FIFO_DATA = 8'b00010000, // extra=000 fifo_read_en=1 chan_data_req=0 amc13_valid=0 amc13_trailer=0 amc13_header=0 
  REQ_PKT       = 8'b00001000, // extra=000 fifo_read_en=0 chan_data_req=1 amc13_valid=0 amc13_trailer=0 amc13_header=0 
  SEND_HDR      = 8'b00000001, // extra=000 fifo_read_en=0 chan_data_req=0 amc13_valid=0 amc13_trailer=0 amc13_header=1 
  SEND_TRL      = 8'b00000010, // extra=000 fifo_read_en=0 chan_data_req=0 amc13_valid=0 amc13_trailer=1 amc13_header=0 
  STREAM_DATA   = 8'b00000100, // extra=000 fifo_read_en=0 chan_data_req=0 amc13_valid=1 amc13_trailer=0 amc13_header=0 
  WAIT_PKT      = 8'b10000000; // extra=100 fifo_read_en=0 chan_data_req=0 amc13_valid=0 amc13_trailer=0 amc13_header=0 
  
  reg [7:0] state;
  reg [7:0] nextstate;
  reg [31:0] crc;
  reg [2:0] current_channel;
  reg end_of_fill;
  reg [27:0] fifo_buffer;
  reg [31:0] next_crc;
  reg [2:0] next_current_channel;
  reg next_end_of_fill;
  reg [27:0] next_fifo_buffer;
  
  // comb always block
  always @* begin
    nextstate = state; // default to hold value because implied_loopback is set
    amc13_data[63:0] = 64'd0; // default
    chan_select[2:0] = 3'd0; // default
    next_crc[31:0] = crc[31:0];
    next_current_channel[2:0] = current_channel[2:0];
    next_end_of_fill = end_of_fill;
    next_fifo_buffer[27:0] = fifo_buffer[27:0];
    case (state)
      IDLE         : begin
        if (!fifo_empty & amc13_rdy & !amc13_full) begin
          nextstate = REQ_FIFO_DATA;
        end
      end
      PAUSE        : begin
        chan_select[2:0] = current_channel;
        if (current_channel == 3'd5) begin
          nextstate = SEND_TRL;
        end
        else if (!pause) begin
          nextstate = REQ_PKT;
        end
      end
      RD_FIFO_DATA : begin
        // Warning F17: Flag fifo_buffer[27:0] is assigned on transitions, but is also assigned value "fifo_data" in state RD_FIFO_DATA 
        next_fifo_buffer[27:0] = fifo_data;
        begin
          nextstate = SEND_HDR;
        end
      end
      RECV_HDR     : begin
        chan_select[2:0] = current_channel;
        if (end_of_fill) begin
          nextstate = PAUSE;
          next_current_channel[2:0] = current_channel + 1;
          next_end_of_fill = 0;
        end
        else begin
          nextstate = STREAM_DATA;
        end
      end
      REQ_FIFO_DATA: begin
        begin
          nextstate = RD_FIFO_DATA;
        end
      end
      REQ_PKT      : begin
        chan_select[2:0] = current_channel;
        begin
          nextstate = WAIT_PKT;
        end
      end
      SEND_HDR     : begin
        amc13_data[63:0] = {8'h00, fifo_buffer[23:0], 8'h00, fifo_buffer[27:24], `FILL_LENGTH};
        begin
          nextstate = PAUSE;
          next_current_channel[2:0] = 3'd0;
        end
      end
      SEND_TRL     : begin
        amc13_data[63:0] = {32'd0, crc};
        begin
          nextstate = IDLE;
        end
      end
      STREAM_DATA  : begin
        amc13_data[63:0] = channel_rx;
        chan_select[2:0] = current_channel;
        if (!channel_rx_en) begin
          nextstate = PAUSE;
        end
        else begin
          nextstate = STREAM_DATA;
        end
      end
      WAIT_PKT     : begin
        chan_select[2:0] = current_channel;
        if (channel_rx_en) begin
          nextstate = RECV_HDR;
          next_end_of_fill = channel_rx == `CHAN_END_OF_FILL;
        end
      end
    endcase
  end
  
  // Assign reg'd outputs to state bits
  assign amc13_header = state[0];
  assign amc13_trailer = state[1];
  assign amc13_valid = state[2];
  assign chan_data_req = state[3];
  assign fifo_read_en = state[4];
  
  // sequential always block
  always @(posedge clk_in or negedge rst_n) begin
    if (!rst_n) begin
      state <= IDLE;
      crc[31:0] <= 32'd0;
      current_channel[2:0] <= 3'b000;
      end_of_fill <= 0;
      fifo_buffer[27:0] <= 28'd0;
      end
    else begin
      state <= nextstate;
      crc[31:0] <= next_crc[31:0];
      current_channel[2:0] <= next_current_channel[2:0];
      end_of_fill <= next_end_of_fill;
      fifo_buffer[27:0] <= next_fifo_buffer[27:0];
      end
  end
  
  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [103:0] statename;
  always @* begin
    case (state)
      IDLE         :
        statename = "IDLE";
      PAUSE        :
        statename = "PAUSE";
      RD_FIFO_DATA :
        statename = "RD_FIFO_DATA";
      RECV_HDR     :
        statename = "RECV_HDR";
      REQ_FIFO_DATA:
        statename = "REQ_FIFO_DATA";
      REQ_PKT      :
        statename = "REQ_PKT";
      SEND_HDR     :
        statename = "SEND_HDR";
      SEND_TRL     :
        statename = "SEND_TRL";
      STREAM_DATA  :
        statename = "STREAM_DATA";
      WAIT_PKT     :
        statename = "WAIT_PKT";
      default      :
        statename = "XXXXXXXXXXXXX";
    endcase
  end
  `endif

endmodule

