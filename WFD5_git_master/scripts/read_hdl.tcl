# Read all of the HDL files for the project

# Delegate reading the IPbus stuff to another script
source $ROOT/ipbus/read_hdl.tcl

# Main Files
read_verilog [ glob $ROOT/hdl/*.v ]

# DAQ link from Boston
read_vhdl [ glob $ROOT/DAQ_Link_7S/*.vhd ]