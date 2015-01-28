# Synthesizes the firmware and opens the Vivado GUI
# If you want to do synthesis and implementation all in one go,
# use implement.tcl

source setup.tcl

source read_hdl.tcl
source read_ip.tcl
source read_constraints.tcl

# Run the synthesis
synth_design -top wfd_top -name wfd -part xc7k160tfbg676-1

# use this version to get elaborated design (simpler schematic view)
#synth_design -top wfd_top -name wfd -part xc7k160tfbg676-1 -rtl

refresh_design

start_gui