# 
# Synthesis run script generated by Vivado
# 

set_param gui.test TreeTableDev
debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

create_project -in_memory -part xc7vx690tffg1761-2
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir E:/ztaotest/VC709_IPbus_trigger/project_2/project_2.cache/wt [current_project]
set_property parent.project_path E:/ztaotest/VC709_IPbus_trigger/project_2/project_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:vc709:part0:1.0 [current_project]
read_ip E:/ztaotest/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo.xci
set_property is_locked true [get_files E:/ztaotest/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file link_axis_data_fifo.hwdef }
synth_design -top link_axis_data_fifo -part xc7vx690tffg1761-2 -mode out_of_context
rename_ref -prefix_all link_axis_data_fifo_
write_checkpoint -noxdef link_axis_data_fifo.dcp
catch { report_utilization -file link_axis_data_fifo_utilization_synth.rpt -pb link_axis_data_fifo_utilization_synth.pb }
if { [catch {
  file copy -force E:/ztaotest/VC709_IPbus_trigger/project_2/project_2.runs/link_axis_data_fifo_synth_1/link_axis_data_fifo.dcp E:/ztaotest/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub E:/ztaotest/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub E:/ztaotest/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim E:/ztaotest/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo_funcsim.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim E:/ztaotest/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo_funcsim.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
