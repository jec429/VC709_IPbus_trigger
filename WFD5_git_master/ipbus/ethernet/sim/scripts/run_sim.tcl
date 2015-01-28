source ../../../../scripts/setup.tcl

create_project -force ipbus_ethernet_sim $ROOT/ipbus/project/

read_vhdl [glob $ROOT/ipbus/ethernet/hdl/*.vhd]
source $ROOT/scripts/read_ip.tcl

read_vhdl $ROOT/ipbus/ethernet/sim/hdl/eth_k7_1000basex_tb.vhd
set_property top eth_k7_1000basex_tb [get_filesets sim_1]
set_property runtime 50us [get_filesets sim_1]

launch_xsim -mode behavioral
start_gui