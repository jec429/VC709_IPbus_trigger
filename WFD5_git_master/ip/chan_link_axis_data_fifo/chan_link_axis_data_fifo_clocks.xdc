#  (c) Copyright 2013 Xilinx, Inc. All rights reserved.
#  This file contains confidential and proprietary information
#  of Xilinx, Inc. and is protected under U.S. and
#  international copyright and other intellectual property
#  laws.
#
#  DISCLAIMER
#  This disclaimer is not a license and does not grant any
#  rights to the materials distributed herewith. Except as
#  otherwise provided in a valid license issued to you by
#  Xilinx, and to the maximum extent permitted by applicable
#  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
#  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
#  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
#  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
#  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
#  (2) Xilinx shall not be liable (whether in contract or tort,
#  including negligence, or under any other theory of
#  liability) for any loss or damage of any kind or nature
#  related to, arising under or in connection with these
#  materials, including for any direct, or any indirect,
#  special, incidental, or consequential loss or damage
#  (including loss of data, profits, goodwill, or any type of
#  loss or damage suffered as a result of any action brought
#  by a third party) even if such damage or loss was
#  reasonably foreseeable or Xilinx had been advised of the
#  possibility of the same.
#
#  CRITICAL APPLICATIONS
#  Xilinx products are not designed or intended to be fail-
#  safe, or for use in any application requiring fail-safe
#  performance, such as life-support or safety devices or
#  systems, Class III medical devices, nuclear facilities,
#  applications related to the deployment of airbags, or any
#  other applications that could lead to death, personal
#  injury, or severe property or environmental damage
#  (individually and collectively, "Critical
#  Applications"). Customer assumes the sole risk and
#  liability of any use of Xilinx products in Critical
#  Applications, subject only to applicable laws and
#  regulations governing limitations on product liability.
#
#  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
#  PART OF THIS FILE AT ALL TIMES. 
#-----------------------------------------------------------------------------
# This component is configured to perform asynchronous clock-domain-crossing.
# In order for these core-level constraints to work properly, 
# the following rules apply to your system-level timing constraints:
#   1. Each of the nets connected to the s_axi_aclk and m_axi_aclk ports of this component
#      must have exactly one clock defined on it, using either
#      a) a create_clock command on a top-level clock pin specified in your system XDC file, or
#      b) a create_generated_clock command, typically generated automatically by a core 
#          producing a derived clock signal.
#   2. The s_axi_aclk and m_axi_aclk ports of this component should not be connected to the
#      same clock source.
#


# Reset paths in axis_data_fifo reset synchonizer:
set_false_path -to [get_pins gen_async_clock_and_reset.inst_clock_synchronizer/gen_synchronizer.synch_d_reg[0]/D]

# FIFO Generator constraints
set fifo_gen_root {gen_fifo_generator.fifo_generator_inst}

set_false_path -through [get_nets  s_and_m_aresetn_i] -to [get_pins ${fifo_gen_root}/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/*/PRE]  
set_false_path -from [get_cells ${fifo_gen_root}/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.wr_rst_reg_reg[*]]
set_false_path -from [get_cells ${fifo_gen_root}/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/ngwrdrst.grst.g7serrst.rd_rst_reg_reg[*]]
# set_false_path -from [get_cells ${fifo_gen_root}/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/g7serrst.ngwrdrst.grst.wr_rst_reg_reg[*]]
# set_false_path -from [get_cells ${fifo_gen_root}/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/rstblk/g7serrst.ngwrdrst.grst.rd_rst_reg_reg[*]]


set wr_clock          [get_clocks -of_objects [get_ports s_axis_aclk]]
set rd_clock          [get_clocks -of_objects [get_ports m_axis_aclk]]



set_max_delay -from [get_cells ${fifo_gen_root}/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells ${fifo_gen_root}/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property PERIOD $wr_clock]
set_max_delay -from [get_cells ${fifo_gen_root}/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells ${fifo_gen_root}/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property PERIOD $rd_clock]
