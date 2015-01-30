# Run only the implementation steps. Assumes that synthesis has already been run.
# This is intended to be run from the "Run TCL script " command in the Vivado GUI
# after you've opened the synthesized design.
# If you want to do the full synthesis and implementation, use implement.tcl

opt_design
# power_opt_design
place_design
phys_opt_design
route_design

write_bitstream -force $ROOT/bitstreams/wfd_master.bit
write_debug_probes -force $ROOT/bitstreams/debug.ltx

