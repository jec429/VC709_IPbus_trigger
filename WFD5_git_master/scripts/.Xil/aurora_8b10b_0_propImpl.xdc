set_property SRC_FILE_INFO {cfile:c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/aurora_8b10b_0/aurora_8b10b_0_clocks.xdc rfile:../../../../../../../USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/aurora_8b10b_0/aurora_8b10b_0_clocks.xdc id:1 order:LATE scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:65 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_clocks -of_objects [get_ports user_clk]] -to [get_clocks -of_objects [get_ports init_clk_in]] -datapath_only 20.000
