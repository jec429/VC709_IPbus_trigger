set_property SRC_FILE_INFO {cfile:c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo/link_axis_data_fifo_clocks.xdc rfile:../../../project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo/link_axis_data_fifo_clocks.xdc id:1 order:LATE scoped_inst:inst} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells gen_fifo_generator.fifo_generator_inst/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/rd_pntr_gc_reg[*]] -to [get_cells gen_fifo_generator.fifo_generator_inst/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].wr_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_ports m_axis_aclk]]]
set_property src_info {type:SCOPED_XDC file:1 line:62 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_cells gen_fifo_generator.fifo_generator_inst/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/wr_pntr_gc_reg[*]] -to [get_cells gen_fifo_generator.fifo_generator_inst/inst_fifo_gen/gaxis_fifo.gaxisf.axisf/grf.rf/gntv_or_sync_fifo.gcx.clkx/gsync_stage[*].rd_stg_inst/Q_reg_reg[*]] -datapath_only [get_property -min PERIOD [get_clocks -of_objects [get_ports s_axis_aclk]]]
