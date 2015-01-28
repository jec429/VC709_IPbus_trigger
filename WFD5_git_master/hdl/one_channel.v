// file: one_channel.v
//
// Connect the serial links to the one channel FPGA.

module one_channel(
  // clocks and reset
  input clk50,                          // Aurora 'init_clk' uses 50 MHz clock per PG046-20
  input clk50_reset,                    // active_hi synched to 'clk50', drive 'gt_reset'
  input gt_refclk,                      // 125 MHz oscillator, from IBUFDS_GTE2 at a higher level
  // programming interface inputs
  input io_clk,                         // programming clock
  input io_reset,
  input io_sel,                         // this module has been selected for an I/O operation
  input io_sync,                        // start the I/O operation
  input [19:0] io_addr,                 // slave address, memory or register. Top 12 bits already consumed.
  input io_rd_en,                       // this is a read operation
  input io_wr_en,                       // this is a write operation
  input [31:0] io_wr_data,              // data to write for write operations
  // programming interface outputs
  output [31:0] io_rd_data,             // data returned for read operations
  output io_rd_ack,                     // 'read' data from this module is ready
  // connections to 2-byte wide AXI4-stream clock domain crossing and data buffering FIFOs
  // TX interface to slave side of transmit FIFO
  input s_axis_aresetn,                // input wire s_axis_aresetn
  input s_axis_aclk,                   // input wire s_axis_aclk
  input [0:31] s_axis_tx_tdata,         // note index order
  input [0:3] s_axis_tx_tkeep,          // note index order
  input s_axis_tx_tvalid,
  input s_axis_tx_tlast,
  output s_axis_tx_tready,
  // RX Interface to master side of receive FIFO
  input m_axis_aresetn,               // input wire m_axis_aresetn
  input m_axis_aclk,                  // input wire m_axis_aclk
  output [0:31] m_axis_rx_tdata,       // note index order
  output [0:3] m_axis_rx_tkeep,        // note index order
  output m_axis_rx_tvalid,
  output m_axis_rx_tlast,
  input m_axis_rx_tready,            // input wire m_axis_tready
  // serial I/O pins
  input rxp, rxn,                     // receive from channel 0 FPGA
  output txp, txn,                    // transmit to channel 0 FPGA
  output [3:0] debug,
  // QPLL Ports
  input gt0_qplllock,                 // input
  input gt0_qpllrefclklost,           // input
  input gt_qpllclk_quad2,             // input
  input gt_qpllrefclk_quad2,          // input
  output gt0_qpllreset,                // output

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

  wire local_axis_resetn;                 // a local reset synched to the Aurora 'user_clk'
  wire aurora_user_clk;                      // used to connect to the parallel side of the Aurora
  wire [31:0] local_axis_tx_tdata, local_axis_rx_tdata;
  wire [3:0] local_axis_tx_tkeep, local_axis_rx_tkeep;
  wire local_axis_rx_tready;
  wire drdy_out_unused;
  wire [15:0] drpdo_out_unused;

  // tie off unused signals, use 'clk50' for DRP clock
  wire [8:0] drpaddr_in;
  wire drpen_in, drpwe_in;
  wire [15:0] drpdi_in;
  assign drpaddr_in = 9'h0;
  assign drpen_in = 1'b0;
  assign drpdi_in = 16'h0;
  assign drpwe_in = 1'b0;
  wire power_down;
  assign power_down = 1'b0;

  // local connections
  wire [2:0] loopback_set;

  assign local_axis_resetn = ~sys_reset_out;

  assign debug[0] = local_axis_tx_tvalid;
  assign debug[1] = local_axis_tx_tready;
  assign debug[2] = local_axis_rx_tvalid;
  assign debug[3] = local_axis_rx_tready;

  // Connect the transmit FIFO that buffer data destined for the channel FPGA and crosses clock domains
  chan_link_axis_data_fifo tx_fifo (
    .s_axis_aresetn(s_axis_aresetn),          // input wire s_axis_aresetn
    .s_axis_aclk(s_axis_aclk),                // input wire s_axis_aclk
    .s_axis_tvalid(s_axis_tx_tvalid),          // input wire s_axis_tvalid
    .s_axis_tready(s_axis_tx_tready),          // output wire s_axis_tready
    .s_axis_tdata(s_axis_tx_tdata),            // input wire [31 : 0] s_axis_tdata
    .s_axis_tkeep(s_axis_tx_tkeep),            // input wire [3 : 0] s_axis_tkeep
    .s_axis_tlast(s_axis_tx_tlast),            // input wire s_axis_tlast
    .m_axis_aresetn(local_axis_resetn),          // input wire m_axis_aresetn
    .m_axis_aclk(aurora_user_clk),                // input wire m_axis_aclk
    .m_axis_tvalid(local_axis_tx_tvalid),          // output wire m_axis_tvalid
    .m_axis_tdata(local_axis_tx_tdata),            // output wire [31 : 0] m_axis_tdata
    .m_axis_tkeep(local_axis_tx_tkeep),            // output wire [3 : 0] m_axis_tkeep
    .m_axis_tready(local_axis_tx_tready),            // input wire m_axis_tready
    .m_axis_tlast(local_axis_tx_tlast)             // output wire m_axis_tlast
  );

  // Connect the receive FIFO that buffer data arriving from the channel FPGA and crosses clock domains
  chan_link_axis_data_fifo rx_fifo (
    .s_axis_aresetn(local_axis_resetn),          // input wire s_axis_aresetn
    .s_axis_aclk(aurora_user_clk),                // input wire s_axis_aclk
    .s_axis_tvalid(local_axis_rx_tvalid),          // input wire s_axis_tvalid
    .s_axis_tready(local_axis_rx_tready),          // output wire s_axis_tready IGNORED BY AURORA!!!
    .s_axis_tdata(local_axis_rx_tdata),            // input wire [31 : 0] s_axis_tdata
    .s_axis_tkeep(local_axis_rx_tkeep),            // input wire [3 : 0] s_axis_tkeep
    .s_axis_tlast(local_axis_rx_tlast),            // input wire s_axis_tlast
    .m_axis_aresetn(m_axis_aresetn),          // input wire m_axis_aresetn
    .m_axis_aclk(m_axis_aclk),                // input wire m_axis_aclk
    .m_axis_tvalid(m_axis_rx_tvalid),          // output wire m_axis_tvalid
    .m_axis_tdata(m_axis_rx_tdata),            // output wire [31 : 0] m_axis_tdata
    .m_axis_tkeep(m_axis_rx_tkeep),            // output wire [3 : 0] m_axis_tkeep
    .m_axis_tready(m_axis_rx_tready),            // input wire m_axis_tready
    .m_axis_tlast(m_axis_rx_tlast)             // output wire m_axis_tlast
  );

  // Connect a channel instance of aurora_8b10b_0.xci
  aurora_8b10b_0 aurora (
    // AXI TX Interface from transmit FIFO
    .s_axi_tx_tdata(local_axis_tx_tdata),   // input [0:31], from TX FIFO
    .s_axi_tx_tkeep(local_axis_tx_tkeep),   // input [0:3], from TX FIFO
    .s_axi_tx_tvalid(local_axis_tx_tvalid), // input, from TX FIFO
    .s_axi_tx_tlast(local_axis_tx_tlast),   // input, from TX FIFO
    .s_axi_tx_tready(local_axis_tx_tready), // output, to TX FIFO
    // AXI RX Interface to receive FIFO
    .m_axi_rx_tdata(local_axis_rx_tdata),   // output [0:31], to RX FIFO
    .m_axi_rx_tkeep(local_axis_rx_tkeep),   // output [0:3], to RX FIFO
    .m_axi_rx_tvalid(local_axis_rx_tvalid), // output, to RX FIFO
    .m_axi_rx_tlast(local_axis_rx_tlast),   // output, to RX FIFO
    // GT Serial I/O
    .rxp(rxp), .rxn(rxn),                   // input, from package pins
    .txp(txp), .txn(txn),                   // output, to package pins
    // GT Reference Clock Interface
    .gt_refclk1(gt_refclk),                 // input, passed to module from an IBUFDS_GTE
    // Error Detection and Status Interface
    .frame_err(frame_err),                  // output, to IPbus I/O
    .hard_err(hard_err),                    // output, to IPbus I/O
    .soft_err(soft_err),                    // output, to IPbus I/O
    .channel_up(channel_up),                // output, to IPbus I/O
    .lane_up(lane_up),                      // output, to IPbus I/O
    // Clock Compensation Control Interface
    .warn_cc(warn_cc),                      // input, from clock compensation module
    .do_cc(do_cc),                          // input, from clock compensation module
    // System Interface Inputs
    .user_clk(aurora_user_clk),             // input, from channel clock module
    .sync_clk(sync_clk),                    // input, from channel clock module
    .tx_out_clk(tx_out_clk),                // output, from channel clock module
    .tx_lock(tx_lock),                      // input, from channel clock module
    .reset(system_reset),                   // input, from aurora_8b10b_0_SUPPORT_RESET_LOGIC
    .gt_reset(local_gt_reset),              // input, from aurora_8b10b_0_SUPPORT_RESET_LOGIC
    .sys_reset_out(sys_reset_out),          // output, synched to 'aurora_user_clk', to TX FIFO and RX FIFO
    .power_down(power_down),                // input, from IPbus I/O
    .loopback(loopback_set[2:0]),           // input [2:0], from IPbus I/O
    .init_clk_in(clk50),                    // input, 50 MHz clock, passed to module
    .pll_not_locked(pll_not_locked),        // input, from channel clock module
    .tx_resetdone_out(tx_resetdone),        // output, to IPbus I/O
    .rx_resetdone_out(rx_resetdone),        // output, to IPbus I/O
    .link_reset_out(link_reset),            // output, to IPbus I/O
    // drp interface is not used
    .drpclk_in(clk50),                      // input, unused, but we drive the clock
    .drpaddr_in(drpaddr_in),                // input [8:0], tied off
    .drpen_in(drpen_in),                    // input, tied off
    .drpdi_in(drpdi_in),                    // input [15:0], tied off
    .drpwe_in(drpwe_in),                    // input, tied off
    .drprdy_out(drprdy_out_unused),         // output [15:0], unused
    .drpdo_out(drpdo_out_unused),           // output, unused
     // QPLL Ports
    .gt0_qplllock_in(gt0_qplllock),               // input
    .gt0_qpllrefclklost_in(gt0_qpllrefclklost),   // input
    .gt_qpllclk_quad2_in(gt_qpllclk_quad2),       // input
    .gt_qpllrefclk_quad2_in(gt_qpllrefclk_quad2), // input
    .gt0_qpllreset_out(gt0_qpllreset)            // output
  );

  // Instantiate a channel clock module
  aurora_8b10b_0_CLOCK_MODULE clock_module (
    // inputs
    .GT_CLK(tx_out_clk),
    .GT_CLK_LOCKED(tx_lock),
     // outputs
    .USER_CLK(aurora_user_clk),
    .SYNC_CLK(sync_clk),
    .PLL_NOT_LOCKED(pll_not_locked)
  );

  // connect a clock-compensation module for this channel
  aurora_8b10b_0_STANDARD_CC_MODULE standard_cc_module (
    .RESET(rst_cc_module_i),
    // Clock Compensation Control Interface
    .WARN_CC(warn_cc),
    .DO_CC(do_cc),
    // System Interface
    .PLL_NOT_LOCKED( pll_not_locked),
    .USER_CLK(aurora_user_clk)
  );

  // connect a reset module
  // the names of I/O ports are confusing
  aurora_8b10b_0_SUPPORT_RESET_LOGIC reset_logic (
    // inputs
    .INIT_CLK_IN(clk50),              // 50 MHz utility clock, always running
    .GT_RESET_IN(clk50_reset),        // incoming reset signal, negated synchronously to 'clk50'
    .RESET(clk50_reset),               // direct input to 'user_clk' domain, activates 'system_reset'
    .USER_CLK(aurora_user_clk),       // Aurora interface clock, 250 MHz, goes away at times
   // outputs
    .SYSTEM_RESET(system_reset),      // local reset signal in 'aurora_user_clk' domain
    .GT_RESET_OUT(local_gt_reset)     // local reset signal in 'clk50' domain
  );

  //SLACK Registers
  // This is from the example code. I don't know what it does.
  reg lane_up_r, lane_up_r2;
  always @ (posedge aurora_user_clk)
  begin
    lane_up_r    <=  lane_up;
    lane_up_r2   <=  lane_up_r;
  end
  assign lane_up_reduce_i  = &lane_up_r2;
  assign rst_cc_module_i   = !lane_up_reduce_i;

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////
  // connect the programming interface
  chan_io_block io_block(
    // programming interface
    .io_clk(io_clk),					// programming clock
    .io_reset(io_reset),						// active HI
    .io_sel(io_sel),					// this module is selected for an I/O operation
    .io_addr(io_addr[19:0]),            // memory address, top 12 bits alread consumed
    .io_sync(io_sync),                  // start the I/O operation
    .io_rd_en(io_rd_en),				// this is a read operation, enable readback logic
    .io_wr_en(io_wr_en),				// this is a write operation, enable target for one clock
    .io_wr_data(io_wr_data[31:0]),      // data to write for write operations
    // outputs
    .io_rd_data(io_rd_data),            // data returned for read operations
    .io_rd_ack(io_rd_ack),              // 'read' data from this module is ready
    // data from 'write' registers
    .loopback_set(loopback_set[2:0]),         // 3-bit setting for the Aurora loopback port

    // data to 'read-only' registers
    .frame_err(frame_err),                  // output, to IPbus I/O
    .hard_err(hard_err),                    // output, to IPbus I/O
    .soft_err(soft_err),                    // output, to IPbus I/O
    .channel_up(channel_up),                // output, to IPbus I/O
    .lane_up(lane_up),                      // output, to IPbus I/O
    .pll_not_locked(pll_not_locked),        // input, from channel clock module
    .tx_resetdone_out(tx_resetdone),        // output, to IPbus I/O
    .rx_resetdone_out(rx_resetdone),        // output, to IPbus I/O
    .link_reset_out(link_reset)             // output, to IPbus I/O

  );

endmodule
