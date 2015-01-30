
// Created by fizzim.pl version $Revision: 4.44 on 2014:07:14 at 09:24:27 (www.fizzim.com)

module commandManager (
  output reg busy,
  output reg chan_rx_fifo_ready,
  output reg [31:0] chan_tx_fifo_data,
  output reg [3:0] chan_tx_fifo_dest,
  output reg chan_tx_fifo_last,
  output reg chan_tx_fifo_valid,
  output reg [63:0] daq_data,
  output reg daq_header,
  output reg daq_trailer,
  output reg daq_valid,
  output reg ipbus_cmd_ready,
  output reg [31:0] ipbus_res_data,
  output reg ipbus_res_last,
  output reg ipbus_res_valid,
  output reg tm_fifo_ready,
  input wire [31:0] chan_rx_fifo_data,
  input wire chan_rx_fifo_last,
  input wire chan_rx_fifo_valid,
  input wire chan_tx_fifo_ready,
  input wire clk,
  input wire daq_ready,
  input wire [31:0] ipbus_cmd_data,
  input wire [3:0] ipbus_cmd_dest,
  input wire ipbus_cmd_last,
  input wire ipbus_cmd_valid,
  input wire ipbus_res_ready,
  input wire rst,
  input wire [23:0] tm_fifo_data,
  input wire tm_fifo_valid 
);

  // state bits
  parameter 
  IDLE                      = 0, 
  CHECK_LAST                = 1, 
  GET_TRIG_NUM              = 2, 
  READ_CHAN_BUF_SIZE        = 3, 
  READ_CHAN_CHAN_NUM        = 4, 
  READ_CHAN_DATA1           = 5, 
  READ_CHAN_DATA2           = 6, 
  READ_CHAN_POST_TRIG_COUNT = 7, 
  READ_CHAN_RC              = 8, 
  READ_CHAN_RSN             = 9, 
  READ_CHAN_TRIG_NUM        = 10, 
  READ_CHECKSUM             = 11, 
  READ_IPBUS_CMD            = 12, 
  READ_IPBUS_RES            = 13, 
  READ_IPBUS_RSN            = 14, 
  SEND_AMC13_HEADER1        = 15, 
  SEND_AMC13_HEADER2        = 16, 
  SEND_AMC13_TRAILER        = 17, 
  SEND_CHAN_CC              = 18, 
  SEND_CHAN_CSN             = 19, 
  SEND_CHAN_DATA            = 20, 
  SEND_CHAN_HEADER          = 21, 
  SEND_IPBUS_CMD            = 22, 
  SEND_IPBUS_CSN            = 23, 
  SEND_IPBUS_RES            = 24; 

  reg [24:0] state;
  reg [24:0] nextstate;
  reg [31:0] buf_size_buf;
  reg [31:0] chan_num_buf;
  reg [31:0] csn;
  reg [31:0] data_count;
  reg [31:0] ipbus_buf;
  reg [31:0] trig_num_buf;
  reg [31:0] next_buf_size_buf;
  reg [31:0] next_chan_num_buf;
  reg [3:0] next_chan_tx_fifo_dest;
  reg next_chan_tx_fifo_last;
  reg [31:0] next_csn;
  reg [63:0] next_daq_data;
  reg [31:0] next_data_count;
  reg [31:0] next_ipbus_buf;
  reg next_ipbus_res_last;
  reg [31:0] next_trig_num_buf;

  // comb always block
  always @* begin
    nextstate = 25'b0000000000000000000000000;
    chan_tx_fifo_data[31:0] = 0; // default
    ipbus_res_data[31:0] = 0; // default
    next_buf_size_buf[31:0] = buf_size_buf[31:0];
    next_chan_num_buf[31:0] = chan_num_buf[31:0];
    next_chan_tx_fifo_dest[3:0] = chan_tx_fifo_dest[3:0];
    next_chan_tx_fifo_last = chan_tx_fifo_last;
    next_csn[31:0] = csn[31:0];
    next_daq_data[63:0] = daq_data[63:0];
    next_data_count[31:0] = data_count[31:0];
    next_ipbus_buf[31:0] = ipbus_buf[31:0];
    next_ipbus_res_last = ipbus_res_last;
    next_trig_num_buf[31:0] = trig_num_buf[31:0];
    case (1'b1) // synopsys parallel_case full_case
      state[IDLE]                     : begin
        if (ipbus_cmd_valid) begin
          nextstate[SEND_IPBUS_CSN] = 1'b1;
          next_chan_tx_fifo_last = 0;
          next_chan_tx_fifo_dest[3:0] = ipbus_cmd_dest[3:0];
        end
        else if (tm_fifo_valid) begin
          nextstate[GET_TRIG_NUM] = 1'b1;
        end
        else begin
          nextstate[IDLE] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[CHECK_LAST]               : begin
        begin
          nextstate[SEND_IPBUS_CMD] = 1'b1;
          next_chan_tx_fifo_last = ipbus_cmd_last;
        end
      end
      state[GET_TRIG_NUM]             : begin
        begin
          nextstate[SEND_CHAN_CSN] = 1'b1;
          next_chan_tx_fifo_last = 0;
          next_chan_tx_fifo_dest[3:0] = 0;
          next_data_count[31:0] = 0;
        end
      end
      state[READ_CHAN_BUF_SIZE]       : begin
        if (chan_rx_fifo_valid) begin
          nextstate[READ_CHAN_CHAN_NUM] = 1'b1;
          next_buf_size_buf[31:0] = chan_rx_fifo_data[31:0];
        end
        else begin
          nextstate[READ_CHAN_BUF_SIZE] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[READ_CHAN_CHAN_NUM]       : begin
        if (chan_rx_fifo_valid) begin
          nextstate[READ_CHAN_POST_TRIG_COUNT] = 1'b1;
          next_chan_num_buf[31:0] = chan_rx_fifo_data[31:0];
        end
        else begin
          nextstate[READ_CHAN_CHAN_NUM] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[READ_CHAN_DATA1]          : begin
        if (chan_rx_fifo_valid) begin
          nextstate[READ_CHAN_DATA2] = 1'b1;
          next_daq_data[63:0] = {chan_rx_fifo_data[31:0],32'h00000000};
          next_data_count[31:0] = data_count[31:0]+1;
        end
        else begin
          nextstate[READ_CHAN_DATA1] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[READ_CHAN_DATA2]          : begin
        if (chan_rx_fifo_valid) begin
          nextstate[SEND_CHAN_DATA] = 1'b1;
          next_daq_data[63:0] = {daq_data[63:32],chan_rx_fifo_data[31:0]};
          next_data_count[31:0] = data_count[31:0]+1;
        end
        else begin
          nextstate[READ_CHAN_DATA2] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[READ_CHAN_POST_TRIG_COUNT]: begin
        if (chan_rx_fifo_valid && chan_num_buf[31:0] == 32'h0) begin
          nextstate[SEND_AMC13_HEADER1] = 1'b1;
          next_daq_data[63:0] = {{8'h00,trig_num_buf[24:0]},{12'h000,buf_size_buf[20:1]*5+8}};
        end
        else if (chan_rx_fifo_valid) begin
          nextstate[SEND_CHAN_HEADER] = 1'b1;
          next_daq_data[63:0] = {{8'h01,chan_num_buf[7:0]},{trig_num_buf[23:0],buf_size_buf[23:0]}};
        end
        else begin
          nextstate[READ_CHAN_POST_TRIG_COUNT] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[READ_CHAN_RC]             : begin
        if (chan_rx_fifo_valid) begin
          nextstate[READ_CHAN_TRIG_NUM] = 1'b1;
        end
        else begin
          nextstate[READ_CHAN_RC] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[READ_CHAN_RSN]            : begin
        if (chan_rx_fifo_valid) begin
          nextstate[READ_CHAN_RC] = 1'b1;
        end
        else begin
          nextstate[READ_CHAN_RSN] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[READ_CHAN_TRIG_NUM]       : begin
        if (chan_rx_fifo_valid) begin
          nextstate[READ_CHAN_BUF_SIZE] = 1'b1;
          next_trig_num_buf[31:0] = chan_rx_fifo_data[31:0];
        end
        else begin
          nextstate[READ_CHAN_TRIG_NUM] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[READ_CHECKSUM]            : begin
        if (chan_rx_fifo_valid && chan_rx_fifo_last && chan_num_buf[31:0]==32'h0) begin
          nextstate[SEND_AMC13_TRAILER] = 1'b1;
          next_daq_data[63:0] = {32'h00000000,{{trig_num_buf[7:0],4'h0},buf_size_buf[20:1]*5+8}};
        end
        else if (chan_rx_fifo_valid && chan_rx_fifo_last) begin
          nextstate[SEND_CHAN_CSN] = 1'b1;
          next_daq_data[63:0] = 0;
          next_chan_tx_fifo_last = 0;
          next_chan_tx_fifo_dest[3:0] = chan_num_buf[3:0]+1;
          next_csn[31:0] = csn[31:0]+1;
        end
        else begin
          nextstate[READ_CHECKSUM] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[READ_IPBUS_CMD]           : begin
        if (ipbus_cmd_valid) begin
          nextstate[CHECK_LAST] = 1'b1;
          next_ipbus_buf[31:0] = ipbus_cmd_data[31:0];
        end
        else begin
          nextstate[READ_IPBUS_CMD] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[READ_IPBUS_RES]           : begin
        if (chan_rx_fifo_valid) begin
          nextstate[SEND_IPBUS_RES] = 1'b1;
          next_ipbus_res_last = chan_rx_fifo_last;
          next_ipbus_buf[31:0] = chan_rx_fifo_data[31:0];
        end
        else begin
          nextstate[READ_IPBUS_RES] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[READ_IPBUS_RSN]           : begin
        if (chan_rx_fifo_valid) begin
          nextstate[READ_IPBUS_RES] = 1'b1;
        end
        else begin
          nextstate[READ_IPBUS_RSN] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[SEND_AMC13_HEADER1]       : begin
        if (daq_ready) begin
          nextstate[SEND_AMC13_HEADER2] = 1'b1;
          next_daq_data[63:0] = 64'h0000000000000001;
        end
        else begin
          nextstate[SEND_AMC13_HEADER1] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[SEND_AMC13_HEADER2]       : begin
        if (daq_ready) begin
          nextstate[SEND_CHAN_HEADER] = 1'b1;
          next_daq_data[63:0] = {{8'h01,chan_num_buf[7:0]},{trig_num_buf[23:0],buf_size_buf[23:0]}};
        end
        else begin
          nextstate[SEND_AMC13_HEADER2] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[SEND_AMC13_TRAILER]       : begin
        if (daq_ready) begin
          nextstate[IDLE] = 1'b1;
          next_daq_data[63:0] = 0;
          next_chan_num_buf[31:0] = 0;
          next_buf_size_buf[31:0] = 0;
          next_trig_num_buf[31:0] = 0;
        end
        else begin
          nextstate[SEND_AMC13_TRAILER] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[SEND_CHAN_CC]             : begin
        chan_tx_fifo_data[31:0] = 32'h8;
        if (chan_tx_fifo_ready) begin
          nextstate[READ_CHAN_RSN] = 1'b1;
        end
        else begin
          nextstate[SEND_CHAN_CC] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[SEND_CHAN_CSN]            : begin
        chan_tx_fifo_data[31:0] = csn[31:0];
        if (chan_tx_fifo_ready) begin
          nextstate[SEND_CHAN_CC] = 1'b1;
          next_chan_tx_fifo_last = 1;
        end
        else begin
          nextstate[SEND_CHAN_CSN] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[SEND_CHAN_DATA]           : begin
        if (daq_ready && data_count[31:0] == buf_size_buf[31:0]) begin
          nextstate[READ_CHECKSUM] = 1'b1;
        end
        else if (daq_ready) begin
          nextstate[READ_CHAN_DATA1] = 1'b1;
          next_daq_data[63:0] = 0;
        end
        else begin
          nextstate[SEND_CHAN_DATA] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[SEND_CHAN_HEADER]         : begin
        if (daq_ready) begin
          nextstate[READ_CHAN_DATA1] = 1'b1;
        end
        else begin
          nextstate[SEND_CHAN_HEADER] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[SEND_IPBUS_CMD]           : begin
        chan_tx_fifo_data[31:0] = ipbus_buf[31:0];
        if (chan_tx_fifo_ready && chan_tx_fifo_last) begin
          nextstate[READ_IPBUS_RSN] = 1'b1;
        end
        else if (chan_tx_fifo_ready) begin
          nextstate[READ_IPBUS_CMD] = 1'b1;
          next_chan_tx_fifo_last = 0;
        end
        else begin
          nextstate[SEND_IPBUS_CMD] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[SEND_IPBUS_CSN]           : begin
        chan_tx_fifo_data[31:0] = csn[31:0];
        if (chan_tx_fifo_ready) begin
          nextstate[READ_IPBUS_CMD] = 1'b1;
        end
        else begin
          nextstate[SEND_IPBUS_CSN] = 1'b1; // Added because implied_loopback is true
        end
      end
      state[SEND_IPBUS_RES]           : begin
        ipbus_res_data[31:0] = ipbus_buf[31:0];
        if (ipbus_res_ready && ipbus_res_last) begin
          nextstate[IDLE] = 1'b1;
          next_csn[31:0] = csn[31:0]+1;
        end
        else if (ipbus_res_ready) begin
          nextstate[READ_IPBUS_RES] = 1'b1;
        end
        else begin
          nextstate[SEND_IPBUS_RES] = 1'b1; // Added because implied_loopback is true
        end
      end
    endcase
  end

  // sequential always block
  always @(posedge clk) begin
    if (rst) begin
      state <= 25'b0000000000000000000000001 << IDLE;
      buf_size_buf[31:0] <= 0;
      chan_num_buf[31:0] <= 0;
      chan_tx_fifo_dest[3:0] <= 0;
      chan_tx_fifo_last <= 0;
      csn[31:0] <= 0;
      daq_data[63:0] <= 0;
      data_count[31:0] <= 0;
      ipbus_buf[31:0] <= 0;
      ipbus_res_last <= 0;
      trig_num_buf[31:0] <= 0;
      end
    else begin
      state <= nextstate;
      buf_size_buf[31:0] <= next_buf_size_buf[31:0];
      chan_num_buf[31:0] <= next_chan_num_buf[31:0];
      chan_tx_fifo_dest[3:0] <= next_chan_tx_fifo_dest[3:0];
      chan_tx_fifo_last <= next_chan_tx_fifo_last;
      csn[31:0] <= next_csn[31:0];
      daq_data[63:0] <= next_daq_data[63:0];
      data_count[31:0] <= next_data_count[31:0];
      ipbus_buf[31:0] <= next_ipbus_buf[31:0];
      ipbus_res_last <= next_ipbus_res_last;
      trig_num_buf[31:0] <= next_trig_num_buf[31:0];
      end
  end

  // datapath sequential always block
  always @(posedge clk) begin
    if (rst) begin
      busy <= 0;
      chan_rx_fifo_ready <= 0;
      chan_tx_fifo_valid <= 0;
      daq_header <= 0;
      daq_trailer <= 0;
      daq_valid <= 0;
      ipbus_cmd_ready <= 0;
      ipbus_res_valid <= 0;
      tm_fifo_ready <= 0;
    end
    else begin
      busy <= 1; // default
      chan_rx_fifo_ready <= 0; // default
      chan_tx_fifo_valid <= 0; // default
      daq_header <= 0; // default
      daq_trailer <= 0; // default
      daq_valid <= 0; // default
      ipbus_cmd_ready <= 0; // default
      ipbus_res_valid <= 0; // default
      tm_fifo_ready <= 0; // default
      case (1'b1) // synopsys parallel_case full_case
        nextstate[IDLE]                     : begin
          busy <= 0;
        end
        nextstate[CHECK_LAST]               : begin
          ; // case must be complete for onehot
        end
        nextstate[GET_TRIG_NUM]             : begin
          tm_fifo_ready <= 1;
        end
        nextstate[READ_CHAN_BUF_SIZE]       : begin
          chan_rx_fifo_ready <= 1;
        end
        nextstate[READ_CHAN_CHAN_NUM]       : begin
          chan_rx_fifo_ready <= 1;
        end
        nextstate[READ_CHAN_DATA1]          : begin
          chan_rx_fifo_ready <= 1;
        end
        nextstate[READ_CHAN_DATA2]          : begin
          chan_rx_fifo_ready <= 1;
        end
        nextstate[READ_CHAN_POST_TRIG_COUNT]: begin
          chan_rx_fifo_ready <= 1;
        end
        nextstate[READ_CHAN_RC]             : begin
          chan_rx_fifo_ready <= 1;
        end
        nextstate[READ_CHAN_RSN]            : begin
          chan_rx_fifo_ready <= 1;
        end
        nextstate[READ_CHAN_TRIG_NUM]       : begin
          chan_rx_fifo_ready <= 1;
        end
        nextstate[READ_CHECKSUM]            : begin
          chan_rx_fifo_ready <= 1;
        end
        nextstate[READ_IPBUS_CMD]           : begin
          ipbus_cmd_ready <= 1;
        end
        nextstate[READ_IPBUS_RES]           : begin
          chan_rx_fifo_ready <= 1;
        end
        nextstate[READ_IPBUS_RSN]           : begin
          chan_rx_fifo_ready <= 1;
        end
        nextstate[SEND_AMC13_HEADER1]       : begin
          daq_header <= 1;
          daq_valid <= 1;
        end
        nextstate[SEND_AMC13_HEADER2]       : begin
          daq_valid <= 1;
        end
        nextstate[SEND_AMC13_TRAILER]       : begin
          daq_trailer <= 1;
          daq_valid <= 1;
        end
        nextstate[SEND_CHAN_CC]             : begin
          chan_tx_fifo_valid <= 1;
        end
        nextstate[SEND_CHAN_CSN]            : begin
          chan_tx_fifo_valid <= 1;
        end
        nextstate[SEND_CHAN_DATA]           : begin
          daq_valid <= 1;
        end
        nextstate[SEND_CHAN_HEADER]         : begin
          daq_valid <= 1;
        end
        nextstate[SEND_IPBUS_CMD]           : begin
          chan_tx_fifo_valid <= 1;
        end
        nextstate[SEND_IPBUS_CSN]           : begin
          chan_tx_fifo_valid <= 1;
        end
        nextstate[SEND_IPBUS_RES]           : begin
          ipbus_res_valid <= 1;
        end
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [199:0] statename;
  always @* begin
    case (1'b1)
      state[IDLE]                     :
        statename = "IDLE";
      state[CHECK_LAST]               :
        statename = "CHECK_LAST";
      state[GET_TRIG_NUM]             :
        statename = "GET_TRIG_NUM";
      state[READ_CHAN_BUF_SIZE]       :
        statename = "READ_CHAN_BUF_SIZE";
      state[READ_CHAN_CHAN_NUM]       :
        statename = "READ_CHAN_CHAN_NUM";
      state[READ_CHAN_DATA1]          :
        statename = "READ_CHAN_DATA1";
      state[READ_CHAN_DATA2]          :
        statename = "READ_CHAN_DATA2";
      state[READ_CHAN_POST_TRIG_COUNT]:
        statename = "READ_CHAN_POST_TRIG_COUNT";
      state[READ_CHAN_RC]             :
        statename = "READ_CHAN_RC";
      state[READ_CHAN_RSN]            :
        statename = "READ_CHAN_RSN";
      state[READ_CHAN_TRIG_NUM]       :
        statename = "READ_CHAN_TRIG_NUM";
      state[READ_CHECKSUM]            :
        statename = "READ_CHECKSUM";
      state[READ_IPBUS_CMD]           :
        statename = "READ_IPBUS_CMD";
      state[READ_IPBUS_RES]           :
        statename = "READ_IPBUS_RES";
      state[READ_IPBUS_RSN]           :
        statename = "READ_IPBUS_RSN";
      state[SEND_AMC13_HEADER1]       :
        statename = "SEND_AMC13_HEADER1";
      state[SEND_AMC13_HEADER2]       :
        statename = "SEND_AMC13_HEADER2";
      state[SEND_AMC13_TRAILER]       :
        statename = "SEND_AMC13_TRAILER";
      state[SEND_CHAN_CC]             :
        statename = "SEND_CHAN_CC";
      state[SEND_CHAN_CSN]            :
        statename = "SEND_CHAN_CSN";
      state[SEND_CHAN_DATA]           :
        statename = "SEND_CHAN_DATA";
      state[SEND_CHAN_HEADER]         :
        statename = "SEND_CHAN_HEADER";
      state[SEND_IPBUS_CMD]           :
        statename = "SEND_IPBUS_CMD";
      state[SEND_IPBUS_CSN]           :
        statename = "SEND_IPBUS_CSN";
      state[SEND_IPBUS_RES]           :
        statename = "SEND_IPBUS_RES";
      default                  :
        statename = "XXXXXXXXXXXXXXXXXXXXXXXXX";
    endcase
  end
  `endif

endmodule

