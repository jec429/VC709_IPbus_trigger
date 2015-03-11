`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//  Based on Xilinx Aurora example design and Charlie's design for g-2 experiment
//  
//  Zhengcheng Tao
//////////////////////////////////////////////////////////////////////////////////


module Aurora_Channel_1(
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
    output wire txp, txn
);
    
    //********************************Wire Declarations**********************************
    
    // Clock Compensation Control Interface
    wire              warn_cc_i;
    wire              do_cc_i;

    wire              user_clk_i;
    
    wire              power_down_i;

    wire              tx_lock_i;
    wire              pll_not_locked_i;

    wire    [8:0]     daddr_in_i;
    wire              dclk_in_i;
    wire              den_in_i;
    wire    [15:0]    di_in_i;
    wire              drdy_out_unused_i;
    wire    [15:0]    drpdo_out_unused_i;
    wire              dwe_in_i;
    
    //status output wires
    wire              channel_up_i;
    wire              lane_up_i;
    wire              hard_err_i;
    wire              soft_err_i;
    wire              frame_err_i;  
                         
    wire              tx_resetdone_out;           
    wire              rx_resetdone_out;             
    wire              link_reset_out;                 

    wire              lane_up_reduce_i;
    wire              rst_cc_module_i;
    
    wire              tied_to_ground_i;
    wire    [0:31]    tied_to_gnd_vec_i;

    //SLACK Registers
    reg               lane_up_r;
    reg               lane_up_r2;
   
    wire              sys_reset_out;
    wire              local_axis_resetn;                 // a local reset synched to the Aurora 'user_clk'                     // used to connect to the parallel side of the Aurora
    wire    [31:0]    local_axis_tx_tdata, local_axis_rx_tdata;
    wire    [3:0]     local_axis_tx_tkeep, local_axis_rx_tkeep;
    wire              local_axis_tx_tready, local_axis_rx_tready;

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
      .m_axis_aclk(user_clk_i),                // input wire m_axis_aclk
      .m_axis_tvalid(local_axis_tx_tvalid),          // output wire m_axis_tvalid
      .m_axis_tdata(local_axis_tx_tdata),            // output wire [31 : 0] m_axis_tdata
      .m_axis_tkeep(local_axis_tx_tkeep),            // output wire [3 : 0] m_axis_tkeep
      .m_axis_tready(local_axis_tx_tready),            // input wire m_axis_tready
      .m_axis_tlast(local_axis_tx_tlast)             // output wire m_axis_tlast
    );
    
    // Connect the receive FIFO that buffers data crossing clock domains
    link_axis_data_fifo rx_fifo (
      .s_axis_aresetn(local_axis_resetn),          // input wire s_axis_aresetn
      .s_axis_aclk(user_clk_i),                // input wire s_axis_aclk
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
    assign  tied_to_ground_i        =   1'b0;
    assign  tied_to_gnd_vec_i       =   32'd0;
    assign  power_down_i            =   1'b0;
    
    assign  daddr_in_i  =  9'h0;
    assign  den_in_i    =  1'b0;
    assign  di_in_i     =  16'h0;
    assign  dwe_in_i    =  1'b0;
    
    //___________________________Module Instantiations_________________________________
    
    aurora_8b10b_1_support
    aurora_module_i
    (
        // AXI TX Interface
        .s_axi_tx_tdata(local_axis_tx_tdata),
        .s_axi_tx_tkeep(local_axis_tx_tkeep),
        .s_axi_tx_tvalid(local_axis_tx_tvalid),
        .s_axi_tx_tlast(local_axis_tx_tlast),
        .s_axi_tx_tready(local_axis_tx_tready),
                
        // AXI RX Interface
        .m_axi_rx_tdata(local_axis_rx_tdata),
        .m_axi_rx_tkeep(local_axis_rx_tkeep),
        .m_axi_rx_tvalid(local_axis_rx_tvalid),
        .m_axi_rx_tlast(local_axis_rx_tlast),
        // V5 Serial I/O
        .rxp(rxp),
        .rxn(rxn),
        .txp(txp),
        .txn(txn),
        // GT Reference Clock Interface
        .gt_refclk(gt_refclk),
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

        .reset(reset),
        .sys_reset_out(sys_reset_out),
        .power_down(power_down_i),
        .loopback(loopback_set),

        .gt_reset(gt_reset_in),
        .tx_lock(tx_lock_i),    //output
        .pll_not_locked_out(pll_not_locked_i),
        .tx_resetdone_out(tx_resetdone_out),
        .rx_resetdone_out(rx_resetdone_out),
        .init_clk(init_clk),
        .init_clk_out (),
        
        .drpclk_in  (init_clk),
        .drpaddr_in  (daddr_in_i),
        .drpen_in    (den_in_i),
        .drpdi_in     (di_in_i),
        .drprdy_out  (drdy_out_unused_i),
        .drpdo_out (drpdo_out_unused_i),
        .drpwe_in    (dwe_in_i),
    
        .link_reset_out(link_reset_out)
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
    
    ////////////////////////////////////////////////////////////////////////////////////////////////////////////
    // ipbus interface for aurora loopback setting and status checking
    aurora_io_block io_block(
      // programming interface
      .io_clk(io_clk),                    // programming clock
      .io_reset(reset),                   // active HI
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
      .frame_err(frame_err_i),                  // input, to IPbus I/O
      .hard_err(hard_err_i),                    // input, to IPbus I/O
      .soft_err(soft_err_i),                    // input, to IPbus I/O
      .channel_up(channel_up_i),                // input, to IPbus I/O
      .lane_up(lane_up_i),                      // input, to IPbus I/O
      .pll_not_locked(pll_not_locked_i),        // input, from channel clock module
      .tx_resetdone_out(tx_resetdone_out),      // input, to IPbus I/O
      .rx_resetdone_out(rx_resetdone_out),      // input, to IPbus I/O
      .link_reset_out(link_reset_out)           // input, to IPbus I/O
    );       
    
endmodule
