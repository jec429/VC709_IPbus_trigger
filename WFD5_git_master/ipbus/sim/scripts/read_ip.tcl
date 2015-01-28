# setup
set_property target_simulator XSim [current_project]
set_property part xc7k160tfbg676-2 [current_project]

# gigabit ethernet PHY
if {[file exists $ROOT/ip/axis_data_fifo_ipbus_sim/axis_data_fifo_ipbus_sim.xci]} {
	read_ip $ROOT/ip/axis_data_fifo_ipbus_sim/axis_data_fifo_ipbus_sim.xci
} else {
	set_property target_language VHDL [current_project]
	create_ip -name axis_data_fifo -vendor xilinx.com -library ip -module_name axis_data_fifo_ipbus_sim -dir $ROOT/ip
	set_property -dict [list CONFIG.TDATA_NUM_BYTES {4} CONFIG.TID_WIDTH {4} CONFIG.TDEST_WIDTH {4} CONFIG.FIFO_DEPTH {16} CONFIG.HAS_TKEEP {1} CONFIG.HAS_TLAST {1}] [get_ips axis_data_fifo_ipbus_sim]
	generate_target all [get_files $ROOT/ip/axis_data_fifo_ipbus_sim/axis_data_fifo_ipbus_sim.xci]
	synth_ip [get_ips axis_data_fifo_ipbus_sim]
}


