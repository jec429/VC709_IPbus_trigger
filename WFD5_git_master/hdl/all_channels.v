// file: all_channels.v
//
// Connect all of the serial links to the channel FPGAs that use the Aurora interface.
// Implement and distribute any shared signals that are not passed from above.

module all_channels(
  // clocks and reset
  input clk50,                            // Aurora 'init_clk' uses 50 MHz clock per PG046-20
  input clk50_reset,                      // active_hi synched to 'clk50'
  input axis_clk,                         // clock for the interconnect side of the FIFOs
  input axis_clk_resetN,                  // active-lo reset for the interconnect side of the FIFOs
  input gt_refclk,                        // 125 MHz oscillator, from IBUFDS_GTE2 at a higher level
  // IPbus inputs
  input ipb_clk,                          // programming clock
  input ipb_reset,
  input ipb_strobe,                       // this ipb space is selected for an I/O operation
  input [23:0] ipb_addr,                  // slave address, memory or register
  input ipb_write,                        // this is a write operation
  input [31:0] ipb_wdata,                 // data to write for write operations
  // IPbus outputs
  output [31:0] ipb_rdata,                // data returned for read operations
  output ipb_ack,                         // 'write' data has been stored, 'read' data is ready

  // channel 0 connections
  // connections to 2-byte wide AXI4-stream clock domain crossing and data buffering FIFOs
  // TX interface to slave side of transmit FIFO
  input [0:31] c0_s_axi_tx_tdata,        // note index order
  input [0:3] c0_s_axi_tx_tkeep,         // note index order
  input c0_s_axi_tx_tvalid,
  input c0_s_axi_tx_tlast,
  output c0_s_axi_tx_tready,
  // RX Interface to master side of receive FIFO
  output [0:31] c0_m_axi_rx_tdata,       // note index order
  output [0:3] c0_m_axi_rx_tkeep,        // note index order
  output c0_m_axi_rx_tvalid,
  output c0_m_axi_rx_tlast,
  input c0_m_axi_rx_tready,            // input wire m_axis_tready
  // serial I/O pins
  input c0_rxp, c0_rxn,                   // receive from channel 0 FPGA
  output c0_txp, c0_txn,                   // transmit to channel 0 FPGA

  // channel 1 connections
  // connections to 2-byte wide AXI4-stream clock domain crossing and data buffering FIFOs
  // TX interface to slave side of transmit FIFO
  input [0:31] c1_s_axi_tx_tdata,        // note index order
  input [0:3] c1_s_axi_tx_tkeep,         // note index order
  input c1_s_axi_tx_tvalid,
  input c1_s_axi_tx_tlast,
  output c1_s_axi_tx_tready,
  // RX Interface to master side of receive FIFO
  output [0:31] c1_m_axi_rx_tdata,       // note index order
  output [0:3] c1_m_axi_rx_tkeep,        // note index order
  output c1_m_axi_rx_tvalid,
  output c1_m_axi_rx_tlast,
  input c1_m_axi_rx_tready,            // input wire m_axis_tready
  // serial I/O pins
  input c1_rxp, c1_rxn,                   // receive from channel 0 FPGA
  output c1_txp, c1_txn,                   // transmit to channel 0 FPGA

    // channel 2 connections
  // connections to 2-byte wide AXI4-stream clock domain crossing and data buffering FIFOs
  // TX interface to slave side of transmit FIFO
  input [0:31] c2_s_axi_tx_tdata,        // note index order
  input [0:3] c2_s_axi_tx_tkeep,         // note index order
  input c2_s_axi_tx_tvalid,
  input c2_s_axi_tx_tlast,
  output c2_s_axi_tx_tready,
  // RX Interface to master side of receive FIFO
  output [0:31] c2_m_axi_rx_tdata,       // note index order
  output [0:3] c2_m_axi_rx_tkeep,        // note index order
  output c2_m_axi_rx_tvalid,
  output c2_m_axi_rx_tlast,
  input c2_m_axi_rx_tready,            // input wire m_axis_tready
  // serial I/O pins
  input c2_rxp, c2_rxn,                   // receive from channel 0 FPGA
  output c2_txp, c2_txn,                   // transmit to channel 0 FPGA

  // channel 3 connections
  // connections to 2-byte wide AXI4-stream clock domain crossing and data buffering FIFOs
  // TX interface to slave side of transmit FIFO
  input [0:31] c3_s_axi_tx_tdata,        // note index order
  input [0:3] c3_s_axi_tx_tkeep,         // note index order
  input c3_s_axi_tx_tvalid,
  input c3_s_axi_tx_tlast,
  output c3_s_axi_tx_tready,
  // RX Interface to master side of receive FIFO
  output [0:31] c3_m_axi_rx_tdata,       // note index order
  output [0:3] c3_m_axi_rx_tkeep,        // note index order
  output c3_m_axi_rx_tvalid,
  output c3_m_axi_rx_tlast,
  input c3_m_axi_rx_tready,            // input wire m_axis_tready
  // serial I/O pins
  input c3_rxp, c3_rxn,                   // receive from channel 0 FPGA
  output c3_txp, c3_txn,                   // transmit to channel 0 FPGA

  // channel 4 connections
  // connections to 2-byte wide AXI4-stream clock domain crossing and data buffering FIFOs
  // TX interface to slave side of transmit FIFO
  input [0:31] c4_s_axi_tx_tdata,        // note index order
  input [0:3] c4_s_axi_tx_tkeep,         // note index order
  input c4_s_axi_tx_tvalid,
  input c4_s_axi_tx_tlast,
  output c4_s_axi_tx_tready,
  // RX Interface to master side of receive FIFO
  output [0:31] c4_m_axi_rx_tdata,       // note index order
  output [0:3] c4_m_axi_rx_tkeep,        // note index order
  output c4_m_axi_rx_tvalid,
  output c4_m_axi_rx_tlast,
  input c4_m_axi_rx_tready,            // input wire m_axis_tready
  // serial I/O pins
  input c4_rxp, c4_rxn,                   // receive from channel 0 FPGA
  output c4_txp, c4_txn,                   // transmit to channel 0 FPGA

  // debug ports
  output [3:0] debug,

  // counter output ports
  output frame_err,                    // output, to IPbus I/O
  output hard_err,                     // output, to IPbus I/O
  output soft_err,                     // output, to IPbus I/O
  output channel_up,                   // output, to IPbus I/O
  output lane_up,                      // output, to IPbus I/O
  output pll_not_locked,               // input, from channel clock module
  output tx_resetdone_out,             // output, to IPbus I/O
  output rx_resetdone_out,             // output, to IPbus I/O
  output link_reset_out                // output, to IPbus I/O
 );


  // busses of data being read back by IPbus
  wire [31:0] chan0_io_rd_data;
  wire [31:0] chan1_io_rd_data;
  wire [31:0] chan2_io_rd_data;
  wire [31:0] chan3_io_rd_data;
  wire [31:0] chan4_io_rd_data;

  ////////////////////////////////////////////////////////////////////////////////////////////////////
  // decode high address bits to pick a channel
  // eventually, if needed, bit A23 will select 'register' space if =0 or 'memory' space if =1
  wire chan0_io_reg_sel, chan1_io_reg_sel, chan2_io_reg_sel, chan3_io_reg_sel, chan4_io_reg_sel;
  assign chan0_io_reg_sel = (ipb_addr[23:20] == 4'b0000);	//ipb channel register space
  assign chan1_io_reg_sel = (ipb_addr[23:20] == 4'b0001);	//ipb channel register space
  assign chan2_io_reg_sel = (ipb_addr[23:20] == 4'b0010);	//ipb channel register space
  assign chan3_io_reg_sel = (ipb_addr[23:20] == 4'b0011);	//ipb channel register space
  assign chan4_io_reg_sel = (ipb_addr[23:20] == 4'b0100);	//ipb channel register space
  // reserve 4'b0101 thru 4'b1111

  
  ///////////////////////////////////////////////////////////////////////////////////////////////////
  // Chan 0
  wire ipb_c0_strobe, ipb_c0_ack, ipb_c0_err;
  wire [31:0] ipb_c0_rdata;
  one_channel chan0 (
    // clocks and reset
    .clk50(clk50),                                 // Aurora 'init_clk' uses 50 MHz clock per PG046-20
    .clk50_reset(clk50_reset),                     // active_hi synched to 'clk50'
    .gt_refclk(gt_refclk),                         // 125 MHz oscillator, from IBUFDS_GTE2 at a higher level
    // programming interface inputs
    .io_clk(ipb_clk),                              // programming clock
    .io_reset(ipb_reset),
    .io_sel(chan0_io_reg_sel),                     // this module has been selected for an I/O operation
    .io_sync(io_sync),                             // start the I/O operation
    .io_addr(ipb_addr[19:0]),                      // slave address, memory or register, top 12 bits have been consumed
    .io_rd_en(io_rd_en),                           // this is a read operation, enable readback logic
    .io_wr_en(io_wr_en),                           // this is a write operation, enable target for one clock
    .io_wr_data(ipb_wdata[31:0]),                  // data to write for write operations
    // programming interface  outputs
    .io_rd_data(chan0_io_rd_data[31:0]),           // data returned for read operations
    .io_rd_ack(chan0_io_rd_ack),                   // 'write' data has been stored, 'read' data is ready
    // the slave side of the transmit FIFO
    .s_axis_aresetn(axis_clk_resetN),              // input wire s_axis_aresetn
    .s_axis_aclk(axis_clk),                        // input wire s_axis_aclk
    .s_axis_tx_tvalid(c0_s_axi_tx_tvalid),            // input wire s_axis_tvalid
    .s_axis_tx_tready(c0_s_axi_tx_tready),            // output wire s_axis_tready
    .s_axis_tx_tdata(c0_s_axi_tx_tdata),              // input wire [31 : 0] s_axis_tdata
    .s_axis_tx_tkeep(c0_s_axi_tx_tkeep),              // input wire [3 : 0] s_axis_tkeep
    .s_axis_tx_tlast(c0_s_axi_tx_tlast),              // input wire s_axis_tlast
    // the master side of the receive FIFO
    .m_axis_aresetn(axis_clk_resetN),              // input wire m_axis_aresetn
    .m_axis_aclk(axis_clk),                        // input wire m_axis_aclk
    .m_axis_rx_tvalid(c0_m_axi_rx_tvalid),            // output wire m_axis_tvalid
    .m_axis_rx_tdata(c0_m_axi_rx_tdata),              // output wire [31 : 0] m_axis_tdata
    .m_axis_rx_tkeep(c0_m_axi_rx_tkeep),              // output wire [3 : 0] m_axis_tkeep
    .m_axis_rx_tlast(c0_m_axi_rx_tlast),              // output wire m_axis_tlast
    .m_axis_rx_tready(c0_m_axi_rx_tready),            // input wire m_axis_tready
    // serial I/O pins
    .rxp(c0_rxp), .rxn(c0_rxn),                    // receive from channel 0 FPGA
    .txp(c0_txp), .txn(c0_txn),                    // transmit to channel 0 FPGA
    .debug(debug),
    // QPLL Ports
    // Channel 0 is in MGT bank 115, while the QPLL that is initialized in this block is in
    // MGT bank 116. The ethernet module should be initializing the QPLL in MGT band 115.
    // Try setting the following signals to default values, since they should not affect the
    // optimization of MGT bank 115.
    .gt0_qplllock(1'b1),                   // input
    .gt0_qpllrefclklost(1'b0),       // input
    .gt_qpllclk_quad2(1'b0),           // input
    .gt_qpllrefclk_quad2(1'b0),     // input
    .gt0_qpllreset(),                               // output

    // connect counter ouputs b/w all_channels and one_channel
    .frame_err(frame_err),                            // output, to IPbus I/O
    .hard_err(hard_err),                              // output, to IPbus I/O
    .soft_err(soft_err),                              // output, to IPbus I/O
    .channel_up(channel_up),                          // output, to IPbus I/O
    .lane_up(lane_up),                                // output, to IPbus I/O
    .pll_not_locked(pll_not_locked),                  // input, from channel clock module
    .tx_resetdone_out(tx_resetdone_out),              // output, to IPbus I/O
    .rx_resetdone_out(rx_resetdone_out),              // output, to IPbus I/O
    .link_reset_out(link_reset_out)                   // output, to IPbus I/O
  );


  ///////////////////////////////////////////////////////////////////////////////////////////////////
  // Chan 1
  wire ipb_c1_strobe, ipb_c1_ack, ipb_c1_err;
  wire [31:0] ipb_c1_rdata;
  one_channel chan1 (
    // clocks and reset
    .clk50(clk50),                                 // Aurora 'init_clk' uses 50 MHz clock per PG046-20
    .clk50_reset(clk50_reset),                     // active_hi synched to 'clk50'
    .gt_refclk(gt_refclk),                         // 125 MHz oscillator, from IBUFDS_GTE2 at a higher level
    // programming interface inputs
    .io_clk(ipb_clk),                              // programming clock
    .io_reset(ipb_reset),
    .io_sel(chan1_io_reg_sel),                     // this module has been selected for an I/O operation
    .io_sync(io_sync),                             // start the I/O operation
    .io_addr(ipb_addr[19:0]),                      // slave address, memory or register, top 12 bits have been consumed
    .io_rd_en(io_rd_en),                           // this is a read operation, enable readback logic
    .io_wr_en(io_wr_en),                           // this is a write operation, enable target for one clock
    .io_wr_data(ipb_wdata[31:0]),                  // data to write for write operations
    // programming interface  outputs
    .io_rd_data(chan1_io_rd_data[31:0]),           // data returned for read operations
    .io_rd_ack(chan1_io_rd_ack),                   // 'write' data has been stored, 'read' data is ready
    // the slave side of the transmit FIFO
    .s_axis_aresetn(axis_clk_resetN),              // input wire s_axis_aresetn
    .s_axis_aclk(axis_clk),                        // input wire s_axis_aclk
    .s_axis_tx_tvalid(c1_s_axi_tx_tvalid),            // input wire s_axis_tvalid
    .s_axis_tx_tready(c1_s_axi_tx_tready),            // output wire s_axis_tready
    .s_axis_tx_tdata(c1_s_axi_tx_tdata),              // input wire [15 : 0] s_axis_tdata
    .s_axis_tx_tkeep(c1_s_axi_tx_tkeep),              // input wire [1 : 0] s_axis_tkeep
    .s_axis_tx_tlast(c1_s_axi_tx_tlast),              // input wire s_axis_tlast
    // the master side of the receive FIFO
    .m_axis_aresetn(axis_clk_resetN),              // input wire m_axis_aresetn
    .m_axis_aclk(axis_clk),                        // input wire m_axis_aclk
    .m_axis_rx_tvalid(c1_m_axi_rx_tvalid),            // output wire m_axis_tvalid
    .m_axis_rx_tdata(c1_m_axi_rx_tdata),              // output wire [15 : 0] m_axis_tdata
    .m_axis_rx_tkeep(c1_m_axi_rx_tkeep),              // output wire [1 : 0] m_axis_tkeep
    .m_axis_rx_tlast(c1_m_axi_rx_tlast),              // output wire m_axis_tlast
    .m_axis_rx_tready(c1_m_axi_rx_tready),            // input wire m_axis_tready
     // serial I/O pins
    .rxp(c1_rxp), .rxn(c1_rxn),                    // receive from channel 0 FPGA
    .txp(c1_txp), .txn(c1_txn),                    // transmit to channel 0 FPGA
    // QPLL Ports
    .gt0_qplllock(gt0_qplllock),                   // input
    .gt0_qpllrefclklost(gt0_qpllrefclklost),       // input
    .gt_qpllclk_quad2(gt_qpllclk_quad2),           // input
    .gt_qpllrefclk_quad2(gt_qpllrefclk_quad2),     // input
    .gt0_qpllreset(c1_gt0_qpllreset)               // output

  );

    ///////////////////////////////////////////////////////////////////////////////////////////////////
  // Chan 2
  wire ipb_c2_strobe, ipb_c2_ack, ipb_c2_err;
  wire [31:0] ipb_c2_rdata;
  one_channel chan2 (
    // clocks and reset
    .clk50(clk50),                                 // Aurora 'init_clk' uses 50 MHz clock per PG046-20
    .clk50_reset(clk50_reset),                     // active_hi synched to 'clk50'
    .gt_refclk(gt_refclk),                         // 125 MHz oscillator, from IBUFDS_GTE2 at a higher level
    // programming interface inputs
    .io_clk(ipb_clk),                              // programming clock
    .io_reset(ipb_reset),
    .io_sel(chan2_io_reg_sel),                     // this module has been selected for an I/O operation
    .io_sync(io_sync),                             // start the I/O operation
    .io_addr(ipb_addr[19:0]),                      // slave address, memory or register, top 12 bits have been consumed
    .io_rd_en(io_rd_en),                           // this is a read operation, enable readback logic
    .io_wr_en(io_wr_en),                           // this is a write operation, enable target for one clock
    .io_wr_data(ipb_wdata[31:0]),                  // data to write for write operations
    // programming interface  outputs
    .io_rd_data(chan2_io_rd_data[31:0]),           // data returned for read operations
    .io_rd_ack(chan2_io_rd_ack),                   // 'write' data has been stored, 'read' data is ready
    // the slave side of the transmit FIFO
    .s_axis_aresetn(axis_clk_resetN),              // input wire s_axis_aresetn
    .s_axis_aclk(axis_clk),                        // input wire s_axis_aclk
    .s_axis_tx_tvalid(c2_s_axi_tx_tvalid),            // input wire s_axis_tvalid
    .s_axis_tx_tready(c2_s_axi_tx_tready),            // output wire s_axis_tready
    .s_axis_tx_tdata(c2_s_axi_tx_tdata),              // input wire [31 : 0] s_axis_tdata
    .s_axis_tx_tkeep(c2_s_axi_tx_tkeep),              // input wire [3 : 0] s_axis_tkeep
    .s_axis_tx_tlast(c2_s_axi_tx_tlast),              // input wire s_axis_tlast
    // the master side of the receive FIFO
    .m_axis_aresetn(axis_clk_resetN),              // input wire m_axis_aresetn
    .m_axis_aclk(axis_clk),                        // input wire m_axis_aclk
    .m_axis_rx_tvalid(c2_m_axi_rx_tvalid),            // output wire m_axis_tvalid
    .m_axis_rx_tdata(c2_m_axi_rx_tdata),              // output wire [31 : 0] m_axis_tdata
    .m_axis_rx_tkeep(c2_m_axi_rx_tkeep),              // output wire [3 : 0] m_axis_tkeep
    .m_axis_rx_tlast(c2_m_axi_rx_tlast),              // output wire m_axis_tlast
    .m_axis_rx_tready(c2_m_axi_rx_tready),            // input wire m_axis_tready
    // serial I/O pins
    .rxp(c2_rxp), .rxn(c2_rxn),                    // receive from channel 0 FPGA
    .txp(c2_txp), .txn(c2_txn),                    // transmit to channel 0 FPGA
    // QPLL Ports
    // Channel 0 is in MGT bank 115, while the QPLL that is initialized in this block is in
    // MGT bank 116. The ethernet module should be initializing the QPLL in MGT band 115.
    // Try setting the following signals to default values, since they should not affect the
    // optimization of MGT bank 115.
    .gt0_qplllock(1'b1),                   // input
    .gt0_qpllrefclklost(1'b0),       // input
    .gt_qpllclk_quad2(1'b0),           // input
    .gt_qpllrefclk_quad2(1'b0),     // input
    .gt0_qpllreset(),                               // output

    // connect counter ouputs b/w all_channels and one_channel
    .frame_err(),                            // output, to IPbus I/O
    .hard_err(),                              // output, to IPbus I/O
    .soft_err(),                              // output, to IPbus I/O
    .channel_up(),                          // output, to IPbus I/O
    .lane_up(),                                // output, to IPbus I/O
    .pll_not_locked(),                  // input, from channel clock module
    .tx_resetdone_out(),              // output, to IPbus I/O
    .rx_resetdone_out(),              // output, to IPbus I/O
    .link_reset_out()                  // output, to IPbus I/O
  );

    ///////////////////////////////////////////////////////////////////////////////////////////////////
  // Chan 3
  wire ipb_c3_strobe, ipb_c3_ack, ipb_c3_err;
  wire [31:0] ipb_c3_rdata;
  one_channel chan3 (
    // clocks and reset
    .clk50(clk50),                                 // Aurora 'init_clk' uses 50 MHz clock per PG046-20
    .clk50_reset(clk50_reset),                     // active_hi synched to 'clk50'
    .gt_refclk(gt_refclk),                         // 125 MHz oscillator, from IBUFDS_GTE2 at a higher level
    // programming interface inputs
    .io_clk(ipb_clk),                              // programming clock
    .io_reset(ipb_reset),
    .io_sel(chan3_io_reg_sel),                     // this module has been selected for an I/O operation
    .io_sync(io_sync),                             // start the I/O operation
    .io_addr(ipb_addr[19:0]),                      // slave address, memory or register, top 12 bits have been consumed
    .io_rd_en(io_rd_en),                           // this is a read operation, enable readback logic
    .io_wr_en(io_wr_en),                           // this is a write operation, enable target for one clock
    .io_wr_data(ipb_wdata[31:0]),                  // data to write for write operations
    // programming interface  outputs
    .io_rd_data(chan3_io_rd_data[31:0]),           // data returned for read operations
    .io_rd_ack(chan3_io_rd_ack),                   // 'write' data has been stored, 'read' data is ready
    // the slave side of the transmit FIFO
    .s_axis_aresetn(axis_clk_resetN),              // input wire s_axis_aresetn
    .s_axis_aclk(axis_clk),                        // input wire s_axis_aclk
    .s_axis_tx_tvalid(c3_s_axi_tx_tvalid),            // input wire s_axis_tvalid
    .s_axis_tx_tready(c3_s_axi_tx_tready),            // output wire s_axis_tready
    .s_axis_tx_tdata(c3_s_axi_tx_tdata),              // input wire [31 : 0] s_axis_tdata
    .s_axis_tx_tkeep(c3_s_axi_tx_tkeep),              // input wire [3 : 0] s_axis_tkeep
    .s_axis_tx_tlast(c3_s_axi_tx_tlast),              // input wire s_axis_tlast
    // the master side of the receive FIFO
    .m_axis_aresetn(axis_clk_resetN),              // input wire m_axis_aresetn
    .m_axis_aclk(axis_clk),                        // input wire m_axis_aclk
    .m_axis_rx_tvalid(c3_m_axi_rx_tvalid),            // output wire m_axis_tvalid
    .m_axis_rx_tdata(c3_m_axi_rx_tdata),              // output wire [31 : 0] m_axis_tdata
    .m_axis_rx_tkeep(c3_m_axi_rx_tkeep),              // output wire [3 : 0] m_axis_tkeep
    .m_axis_rx_tlast(c3_m_axi_rx_tlast),              // output wire m_axis_tlast
    .m_axis_rx_tready(c3_m_axi_rx_tready),            // input wire m_axis_tready
    // serial I/O pins
    .rxp(c3_rxp), .rxn(c3_rxn),                    // receive from channel 0 FPGA
    .txp(c3_txp), .txn(c3_txn),                    // transmit to channel 0 FPGA
    // QPLL Ports
    // Channel 0 is in MGT bank 115, while the QPLL that is initialized in this block is in
    // MGT bank 116. The ethernet module should be initializing the QPLL in MGT band 115.
    // Try setting the following signals to default values, since they should not affect the
    // optimization of MGT bank 115.
    .gt0_qplllock(1'b1),                   // input
    .gt0_qpllrefclklost(1'b0),       // input
    .gt_qpllclk_quad2(1'b0),           // input
    .gt_qpllrefclk_quad2(1'b0),     // input
    .gt0_qpllreset(),                               // output

    // connect counter ouputs b/w all_channels and one_channel
    .frame_err(),                            // output, to IPbus I/O
    .hard_err(),                              // output, to IPbus I/O
    .soft_err(),                              // output, to IPbus I/O
    .channel_up(),                          // output, to IPbus I/O
    .lane_up(),                                // output, to IPbus I/O
    .pll_not_locked(),                  // input, from channel clock module
    .tx_resetdone_out(),              // output, to IPbus I/O
    .rx_resetdone_out(),              // output, to IPbus I/O
    .link_reset_out()                  // output, to IPbus I/O
  );

    ///////////////////////////////////////////////////////////////////////////////////////////////////
  // Chan 4
  wire ipb_c4_strobe, ipb_c4_ack, ipb_c4_err;
  wire [31:0] ipb_c4_rdata;
  one_channel chan4 (
    // clocks and reset
    .clk50(clk50),                                 // Aurora 'init_clk' uses 50 MHz clock per PG046-20
    .clk50_reset(clk50_reset),                     // active_hi synched to 'clk50'
    .gt_refclk(gt_refclk),                         // 125 MHz oscillator, from IBUFDS_GTE2 at a higher level
    // programming interface inputs
    .io_clk(ipb_clk),                              // programming clock
    .io_reset(ipb_reset),
    .io_sel(chan4_io_reg_sel),                     // this module has been selected for an I/O operation
    .io_sync(io_sync),                             // start the I/O operation
    .io_addr(ipb_addr[19:0]),                      // slave address, memory or register, top 12 bits have been consumed
    .io_rd_en(io_rd_en),                           // this is a read operation, enable readback logic
    .io_wr_en(io_wr_en),                           // this is a write operation, enable target for one clock
    .io_wr_data(ipb_wdata[31:0]),                  // data to write for write operations
    // programming interface  outputs
    .io_rd_data(chan4_io_rd_data[31:0]),           // data returned for read operations
    .io_rd_ack(chan4_io_rd_ack),                   // 'write' data has been stored, 'read' data is ready
    // the slave side of the transmit FIFO
    .s_axis_aresetn(axis_clk_resetN),              // input wire s_axis_aresetn
    .s_axis_aclk(axis_clk),                        // input wire s_axis_aclk
    .s_axis_tx_tvalid(c4_s_axi_tx_tvalid),            // input wire s_axis_tvalid
    .s_axis_tx_tready(c4_s_axi_tx_tready),            // output wire s_axis_tready
    .s_axis_tx_tdata(c4_s_axi_tx_tdata),              // input wire [31 : 0] s_axis_tdata
    .s_axis_tx_tkeep(c4_s_axi_tx_tkeep),              // input wire [3 : 0] s_axis_tkeep
    .s_axis_tx_tlast(c4_s_axi_tx_tlast),              // input wire s_axis_tlast
    // the master side of the receive FIFO
    .m_axis_aresetn(axis_clk_resetN),              // input wire m_axis_aresetn
    .m_axis_aclk(axis_clk),                        // input wire m_axis_aclk
    .m_axis_rx_tvalid(c4_m_axi_rx_tvalid),            // output wire m_axis_tvalid
    .m_axis_rx_tdata(c4_m_axi_rx_tdata),              // output wire [31 : 0] m_axis_tdata
    .m_axis_rx_tkeep(c4_m_axi_rx_tkeep),              // output wire [3 : 0] m_axis_tkeep
    .m_axis_rx_tlast(c4_m_axi_rx_tlast),              // output wire m_axis_tlast
    .m_axis_rx_tready(c4_m_axi_rx_tready),            // input wire m_axis_tready
    // serial I/O pins
    .rxp(c4_rxp), .rxn(c4_rxn),                    // receive from channel 0 FPGA
    .txp(c4_txp), .txn(c4_txn),                    // transmit to channel 0 FPGA
    // QPLL Ports
    // Channel 0 is in MGT bank 115, while the QPLL that is initialized in this block is in
    // MGT bank 116. The ethernet module should be initializing the QPLL in MGT band 115.
    // Try setting the following signals to default values, since they should not affect the
    // optimization of MGT bank 115.
    .gt0_qplllock(1'b1),                   // input
    .gt0_qpllrefclklost(1'b0),       // input
    .gt_qpllclk_quad2(1'b0),           // input
    .gt_qpllrefclk_quad2(1'b0),     // input
    .gt0_qpllreset(),                               // output

    // connect counter ouputs b/w all_channels and one_channel
    .frame_err(),                            // output, to IPbus I/O
    .hard_err(),                              // output, to IPbus I/O
    .soft_err(),                              // output, to IPbus I/O
    .channel_up(),                          // output, to IPbus I/O
    .lane_up(),                                // output, to IPbus I/O
    .pll_not_locked(),                  // input, from channel clock module
    .tx_resetdone_out(),              // output, to IPbus I/O
    .rx_resetdone_out(),              // output, to IPbus I/O
    .link_reset_out()                  // output, to IPbus I/O
  );

  ///////////////////////////////////////////////////////////////////////////////////////////////////
  // qpll stuff for channels 1-4. The qpll in the other MGT is set up by the Ethernet module
  aurora_8b10b_0_gt_common_wrapper gt_common_support_MGT116 (
    // inputs
    .gt0_gtrefclk0_common_in(gt_refclk),            // 125 MHz oscillator
    .gt0_qplllockdetclk_in(clk50),                  // 50 MHz oscillator
    .gt0_qpllreset_in(c1_gt0_qpllreset),            // reset from an Aurora. Do we need to 'OR' all of them?
     // outputs
    .gt_qpllclk_quad2_i(gt_qpllclk_quad2),
    .gt_qpllrefclk_quad2_i(gt_qpllrefclk_quad2),
    .gt0_qplllock_out(gt0_qplllock),
    .gt0_qpllrefclklost_out(gt0_qpllrefclklost)
  );


  ////////////////////////////////////////////////////////////////////////////////////////////////////
  // connect a mux to steer the readback data from one of the channels to the ipbus
  reg [31:0] io_rd_data_reg;
  assign ipb_rdata = io_rd_data_reg;
  // Assert 'io_rd_ack' if any modules below this function assert their 'io_rd_ack'.
  reg io_rd_ack_reg;
  always @(posedge ipb_clk) begin
    // 'io_rd_ack' comes from the selected channel
    io_rd_ack_reg <= io_sync & io_rd_en & (chan0_io_rd_ack | chan1_io_rd_ack | chan2_io_rd_ack | chan3_io_rd_ack | chan4_io_rd_ack);
  end
  always @(posedge ipb_clk) begin
    // mux: connect the 'rd' data bus of the channel that is asserting 'ack'
    if (chan0_io_rd_ack)    io_rd_data_reg <= chan0_io_rd_data;
    if (chan1_io_rd_ack)    io_rd_data_reg <= chan1_io_rd_data;
    if (chan2_io_rd_ack)    io_rd_data_reg <= chan2_io_rd_data;
    if (chan3_io_rd_ack)    io_rd_data_reg <= chan3_io_rd_data;
    if (chan0_io_rd_ack)    io_rd_data_reg <= chan4_io_rd_data;
  end


  ////////////////////////////////////////////////////////////////////////////////////////////////////
  // connect a state machine to handle wait states and drive 'ipb_ack'
  wire [14:0] state_peek;
  IPB_IO_interface IPB_IO_interface(
    // inputs
    .clk(ipb_clk),     	       // IPbus clock
    .res(ipb_reset),         	   // Global reset
    .ipb_strobe(ipb_strobe),   // IPbus strobe
    .ipb_write(ipb_write),     // IPbus write
    .io_rd_ack(io_rd_ack_reg), // verilog ack
    // outputs
    .io_sync(io_sync),         // An operation is in progress
    .io_rd_en(io_rd_en),       // this is a read operation, enable readback logic
    .io_wr_en(io_wr_en),       // one cycle long write enable
    .ipb_ack(ipb_ack),          // one cycle long ack back to IPbus
    .state_peek(state_peek)
  );


endmodule
