`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  From Charlie's design for g-2 experiment
//  WFD5_git_master/hdl/one_channel.v
//  Some modifications are made to port into tracklet design
//////////////////////////////////////////////////////////////////////////////////


module Aurora_Channel_0(
    //input wire clk,
    input wire reset,
    input wire en_proc,
    // programming interface
    // inputs
    input wire io_clk,                    // programming clock
    input wire io_sel,                    // this module has been selected for an I/O operation
    input wire io_sync,                    // start the I/O operation
    input wire [19:0] io_addr,        // slave address, memory or register. Top 16 bits already consumed.
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

    //Links
    //clocks and reset
    input wire init_clk,
    input wire gt_reset_in,
    input wire gt_refclk,
    //TX interface to slave side of transmit FIFO
    input wire s_axis_aresetn,
    input wire s_axis_aclk,
    input wire [0:31] s_axis_tx_tdata,
    input wire [0:3] s_axis_tx_tkeep,
    input wire s_axis_tx_tvalid,
    input wire s_axis_tx_tlast,
    output wire s_axis_tx_tready,
    //RX interface to master side of receive FIFO
    input wire m_axis_aresetn,
    input wire m_axis_aclk,
    output wire [0:31] m_axis_rx_tdata,
    output wire [0:3] m_axis_rx_tkeep,
    output wire m_axis_rx_tvalid,
    output wire m_axis_rx_tlast,
    input wire m_axis_rx_tready,
    //serial I/O pins
    input wire rxp, rxn,
    output wire txp, txn,
   // QPLL Ports
    input wire gt0_qplllock,                 // input
    input wire gt0_qpllrefclklost,           // input
    input wire gt_qpllclk_quad2,             // input
    input wire gt_qpllrefclk_quad2,          // input
    output wire gt0_qpllreset,               // output
  
    // counter output ports
    output wire frame_err,                    // output, to IPbus I/O
    output wire hard_err,                     // output, to IPbus I/O
    output wire soft_err,                     // output, to IPbus I/O
    output wire channel_up,                   // output, to IPbus I/O
    output wire lane_up,                      // output, to IPbus I/O
    //output wire pll_not_locked,               // input, from channel clock module
    output wire tx_resetdone_out,             // output, to IPbus I/O
    output wire rx_resetdone_out,             // output, to IPbus I/O
    output wire link_reset_out                // output, to IPbus I/O   
);
    
    // Error Detection Interface
    wire               hard_err_i;
    wire               soft_err_i;
    wire               frame_err_i;
    // Status
    wire               channel_up_i;
    reg                channel_up_r;
    wire               channel_up_r_vio;
    wire               lane_up_i;
    // Clock Compensation Control Interface
    wire               warn_cc_i;
    wire               do_cc_i;
    // System Interface
    wire               pll_not_locked_i;
    wire               pll_not_locked_ila;
    wire               user_clk_i;
    wire               reset_i;
    wire               power_down_i;
    wire    [2:0]      loopback_i;
    wire               tx_lock_i;
    wire               link_reset_i;
    wire               link_reset_ila;
    wire               tx_resetdone_i;
    wire               tx_resetdone_ila;
    wire               rx_resetdone_i;
    wire               init_clk_i;
    wire    [8:0]     daddr_in_i;
    wire              dclk_in_i;
    wire              den_in_i;
    wire    [15:0]    di_in_i;
    wire              drdy_out_unused_i;
    wire    [15:0]    drpdo_out_unused_i;
    wire              dwe_in_i;


    wire               gt_reset_i; 
    wire               system_reset_i;
    wire               sysreset_vio_i;
    wire               sysreset_i;
    wire               gtreset_vio_i;
    wire               gtreset_vio_o;
    wire    [2:0]      loopback_vio_i;
    wire    [2:0]      loopback_vio_o;
    //Frame check signals
    wire    [0:7]      err_count_i;


    wire [35:0] icon_to_vio_i;
    wire [63:0] sync_in_i;
    wire [15:0] sync_out_i;

wire        lane_up_i_i;
reg         lane_up_i_i_r;
wire        lane_up_i_i_vio;
wire        tx_lock_i_i;
wire        tx_lock_i_ila;
wire        tx_lock_i_i_vio;
wire        lane_up_reduce_i;
wire        rst_cc_module_i;

wire               tied_to_ground_i;
wire    [0:31]     tied_to_gnd_vec_i;
// TX AXI PDU I/F wires
wire    [0:31]     tx_data_i;
wire               tx_tvalid_i;
wire               tx_tready_i;
wire    [0:3]      tx_tkeep_i;
wire               tx_tlast_i;

// RX AXI PDU I/F wires
wire    [0:31]     rx_data_i;
wire               rx_tvalid_i;
wire    [0:3]      rx_tkeep_i;
wire               rx_tlast_i;
//SLACK Registers
reg               lane_up_r;
reg               lane_up_r2;
//*********************************Main Body of Code**********************************


//SLACK registers
always @ (posedge user_clk_i)
begin
lane_up_r    <=  lane_up_i;
lane_up_r2   <=  lane_up_r;
end

assign lane_up_reduce_i  = &lane_up_r2;
assign rst_cc_module_i   = !lane_up_reduce_i;

//____________________________Tie off unused signals_______________________________

    // System Interface
    assign          tied_to_ground_i        = 1'b0;
    assign  tied_to_gnd_vec_i   =   32'd0;
    assign  power_down_i        =   1'b0;

    always @(posedge user_clk_i)
        channel_up_r      <=  channel_up_i;

assign  daddr_in_i  =  9'h0;
assign  den_in_i    =  1'b0;
assign  di_in_i     =  16'h0;
assign  dwe_in_i    =  1'b0;
//___________________________Module Instantiations_________________________________

    // local connections
    wire [2:0] loopback_set;

    assign local_axis_resetn = ~sys_reset_out;    
    
    // Connect the transmit FIFO that buffers data crossing clock domains
    link_axis_data_fifo tx_fifo (
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
    
    // Connect the receive FIFO that buffers data crossing clock domains
    link_axis_data_fifo rx_fifo (
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
    
    aurora_8b10b_1_support
    aurora_module_i
    (
        // AXI TX Interface
        .s_axi_tx_tdata(tx_data_i),
        .s_axi_tx_tkeep(tx_tkeep_i),
        .s_axi_tx_tvalid(tx_tvalid_i),
        .s_axi_tx_tlast(tx_tlast_i),
        .s_axi_tx_tready(tx_tready_i),

        // AXI RX Interface
        .m_axi_rx_tdata(rx_data_i),
        .m_axi_rx_tkeep(rx_tkeep_i),
        .m_axi_rx_tvalid(rx_tvalid_i),
        .m_axi_rx_tlast(rx_tlast_i),
        // V5 Serial I/O
        .rxp(RXP),
        .rxn(RXN),
        .txp(TXP),
        .txn(TXN),
        // GT Reference Clock Interface
        .gt_refclk1_p(GTHQ3_P),
        .gt_refclk1_n(GTHQ3_N),
        // Error Detection Interface
        .hard_err(hard_err_i),
        .soft_err(soft_err_i),
        .frame_err(frame_err_i),


        // Status
        .channel_up(channel_up_i),
        .lane_up(lane_up_i),
        // Clock Compensation Control Interface
        .warn_cc(warn_cc_i),
        .do_cc(do_cc_i),
        // System Interface
        .user_clk_out(user_clk_i),
        .reset(reset_i),
        .sys_reset_out(system_reset_i),
        .power_down(power_down_i),
        .loopback(loopback_vio_o),
        .gt_reset(gtreset_vio_o),
        .tx_lock(tx_lock_i),
        .pll_not_locked_out(pll_not_locked_i),
    .tx_resetdone_out(tx_resetdone_i),
    .rx_resetdone_out(rx_resetdone_i),
        .init_clk_p(INIT_CLK_P),
        .init_clk_n(INIT_CLK_N),
        .init_clk_out (init_clk_i),
        .drpclk_in  (DRP_CLK_IN),
.drpaddr_in  (daddr_in_i),
.drpen_in    (den_in_i),
.drpdi_in     (di_in_i),
.drprdy_out  (drdy_out_unused_i),
.drpdo_out (drpdo_out_unused_i),
.drpwe_in    (dwe_in_i),

        .link_reset_out(link_reset_i)
    );
    
    aurora_8b10b_STANDARD_CC_MODULE standard_cc_module_i
    (
        .RESET(rst_cc_module_i),
        // Clock Compensation Control Interface
        .WARN_CC(warn_cc_i),
        .DO_CC(do_cc_i),
        // System Interface
        .PLL_NOT_LOCKED(pll_not_locked_i),
        .USER_CLK(user_clk_i)
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
    // ipbus interface for aurora loopback setting and status checking
    aurora_io_block io_block(
      // programming interface
      .io_clk(io_clk),                    // programming clock
      .io_reset(reset),                        // active HI
      .io_sel(io_sel),                    // this module is selected for an I/O operation
      .io_addr(io_addr[19:0]),            // memory address, top 12 bits alread consumed
      .io_sync(io_sync),                  // start the I/O operation
      .io_rd_en(io_rd_en),                // this is a read operation, enable readback logic
      .io_wr_en(io_wr_en),                // this is a write operation, enable target for one clock
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
      //.pll_not_locked(pll_not_locked),        // input, from channel clock module
      .tx_resetdone_out(tx_resetdone_out),        // output, to IPbus I/O
      .rx_resetdone_out(rx_resetdone_out),        // output, to IPbus I/O
      .link_reset_out(link_reset_out)             // output, to IPbus I/O
    );       
    
endmodule
