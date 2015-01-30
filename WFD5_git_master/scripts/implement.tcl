# Main script that synthesizes and implements the firmware
# Run with
# 	vivado -mode batch -source implement.tcl


# set up the base path
source setup.tcl

# read in the HDL files
source read_hdl.tcl

# read in the IP
source read_ip.tcl

# read in the constraints
source read_constraints.tcl

# Synthesize the design
# This is where we specify the top module and the part name
synth_design -top wfd_top -name wfd -part xc7k160tfbg676-1

# I don't completely understand why this is necessary, but it is
refresh_design

# If you've manually configured the debug core, this is where you should read those constraints
# read_xdc $ROOT/constraints/debug.xdc


# Run the implementation
opt_design
place_design
phys_opt_design
route_design

# Write the bitstream
write_bitstream -force $ROOT/bitstreams/wfd_master.bit

# If you want to use the debug core, you need to write out this extra file
# write_debug_probes -force $ROOT/bitstreams/debug.ltx

# Start the GUI
start_gui
