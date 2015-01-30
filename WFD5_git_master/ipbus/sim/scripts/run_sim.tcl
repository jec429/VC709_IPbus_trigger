source ../../../scripts/setup.tcl

create_project -force ipbus_sim $ROOT/ipbus/project/

source $ROOT/ipbus/read_hdl.tcl

source read_ip.tcl

read_vhdl [list $ROOT/ipbus/sim/hdl/ipbus_tb.vhd\
				$ROOT/ipbus/sim/hdl/package_ipbus_simulation.vhd\
				$ROOT/ipbus/sim/hdl/package_axi_simulation.vhd \
				$ROOT/ipbus/sim/hdl/package_amc13_simulation.vhd]
set_property top ipbus_tb [get_filesets sim_1]
set_property runtime 10us [get_filesets sim_1]

launch_xsim -mode behavioral
start_gui
