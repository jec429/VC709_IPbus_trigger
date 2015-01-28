# Load necessary IP into the project
# For each IP, check to see if the file already exists.
# If it doesn't exist, create it

# If you want to add a module here, you can get the appropriate create_ip and set_property lines
# by creating and customizing the IP in the Vivado GUI, then checking the TCL console to see
# the commands that Vivado has run to create it.


# setup
set_property target_simulator XSim [current_project]
set_property part xc7k160tfbg676-1 [current_project]


# gigabit ethernet PHY
if {[file exists $ROOT/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0.xci]} {
	read_ip $ROOT/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0.xci
} else {
	# we want to use VHDL for this because it's part of the IPbus core
	set_property target_language VHDL [current_project]
	create_ip -name gig_ethernet_pcs_pma -vendor xilinx.com -library ip -module_name gig_ethernet_pcs_pma_0 -dir $ROOT/ip
	set_property -dict [list CONFIG.SupportLevel {Include_Shared_Logic_in_Core} CONFIG.TransceiverControl {true} CONFIG.Management_Interface {false} CONFIG.Auto_Negotiation {false}] [get_ips gig_ethernet_pcs_pma_0]
	generate_target all [get_files $ROOT/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0.xci]
	synth_ip [get_ips gig_ethernet_pcs_pma_0]
	# change back to Verilog
	set_property target_language Verilog [current_project]
}

# disable IP constraints, since we want to do it ourselves
set_property is_enabled false [get_files $ROOT/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_ooc.xdc]

# channnel serial link FIFO
if {[file exists $ROOT/ip/chan_link_axis_data_fifo/chan_link_axis_data_fifo.xci
]} {
	read_ip $ROOT/ip/chan_link_axis_data_fifo/chan_link_axis_data_fifo.xci
} else {
	create_ip -name axis_data_fifo -vendor xilinx.com -library ip -module_name chan_link_axis_data_fifo -dir $ROOT/ip
	set_property -dict [list CONFIG.TDATA_NUM_BYTES {4} CONFIG.FIFO_DEPTH {4096} CONFIG.IS_ACLK_ASYNC {1} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1}] [get_ips chan_link_axis_data_fifo]
	generate_target all [get_files $ROOT/ip/chan_link_axis_data_fifo/chan_link_axis_data_fifo.xci]
	synth_ip [get_ips chan_link_axis_data_fifo]
}

# fill number FIFO
if {[file exists $ROOT/ip/fill_num_axis_data_fifo/fill_num_axis_data_fifo.xci
]} {
	read_ip $ROOT/ip/fill_num_axis_data_fifo/fill_num_axis_data_fifo.xci
} else {
	create_ip -name axis_data_fifo -vendor xilinx.com -library ip -module_name fill_num_axis_data_fifo -dir $ROOT/ip
	set_property -dict [list CONFIG.TDATA_NUM_BYTES {3} CONFIG.FIFO_DEPTH {512}] [get_ips fill_num_axis_data_fifo]
	generate_target all [get_files $ROOT/ip/fill_num_axis_data_fifo/fill_num_axis_data_fifo.xci]
	synth_ip [get_ips fill_num_axis_data_fifo]
}

# aurora serial link to channel FPGA
if {[file exists $ROOT/ip/aurora_8b10b_0/aurora_8b10b_0.xci]} {
	read_ip $ROOT/ip/aurora_8b10b_0/aurora_8b10b_0.xci
} else {
	create_ip -name aurora_8b10b -vendor xilinx.com -library ip -module_name aurora_8b10b_0 -dir $ROOT/ip
	set_property -dict [list CONFIG.C_LANE_WIDTH {4} CONFIG.C_LINE_RATE {4.5} CONFIG.C_GT_LOC_1 {X} CONFIG.C_GT_LOC_5 {1}] [get_ips aurora_8b10b_0]
	generate_target all [get_files $ROOT/ip/aurora_8b10b_0/aurora_8b10b_0.xci]
	synth_ip [get_ips aurora_8b10b_0]
}

# axis rx switch from channel FPGAs to CM
if {[file exists $ROOT/ip/axis_switch_rx/axis_switch_rx.xci
]} {
	read_ip $ROOT/ip/axis_switch_rx/axis_switch_rx.xci
} else {
	create_ip -name axis_switch -vendor xilinx.com -library ip -module_name axis_switch_rx -dir $ROOT/ip
	set_property -dict [list CONFIG.TDATA_NUM_BYTES {4} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {1024} CONFIG.ARB_ON_NUM_CYCLES {1} CONFIG.ARB_ALGORITHM {1}] [get_ips axis_switch_rx]
	generate_target all [get_files $ROOT/ip/axis_switch_rx/axis_switch_rx.xci]
	synth_ip [get_ips axis_switch_rx]
}

# axis tx switch from CM to channel FPGAs
if {[file exists $ROOT/ip/axis_switch_tx/axis_switch_tx.xci
]} {
	read_ip $ROOT/ip/axis_switch_tx/axis_switch_tx.xci
} else {
	create_ip -name axis_switch -vendor xilinx.com -library ip -module_name axis_switch_tx -dir $ROOT/ip
	set_property -dict [list CONFIG.NUM_SI {1} CONFIG.NUM_MI {2} CONFIG.TDATA_NUM_BYTES {4} CONFIG.HAS_TLAST {1} CONFIG.ARB_ON_MAX_XFERS {1024} CONFIG.ARB_ON_NUM_CYCLES {1} CONFIG.ARB_ALGORITHM {1}] [get_ips axis_switch_tx]
	generate_target all [get_files $ROOT/ip/axis_switch_tx/axis_switch_tx.xci]
	synth_ip [get_ips axis_switch_tx]
}
