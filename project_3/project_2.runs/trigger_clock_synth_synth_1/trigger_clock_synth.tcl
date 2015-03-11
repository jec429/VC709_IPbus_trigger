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
set_property webtalk.parent_dir C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.cache/wt [current_project]
set_property parent.project_path C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part xilinx.com:vc709:part0:1.0 [current_project]
read_ip C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth.xci
set_property used_in_implementation false [get_files -all c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth.dcp]
set_property is_locked true [get_files C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth.xci]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
catch { write_hwdef -file trigger_clock_synth.hwdef }
synth_design -top trigger_clock_synth -part xc7vx690tffg1761-2 -mode out_of_context
rename_ref -prefix_all trigger_clock_synth_
write_checkpoint -noxdef trigger_clock_synth.dcp
catch { report_utilization -file trigger_clock_synth_utilization_synth.rpt -pb trigger_clock_synth_utilization_synth.pb }
if { [catch {
  file copy -force C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/trigger_clock_synth_synth_1/trigger_clock_synth.dcp C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth.dcp
} _RESULT ] } { 
  error "ERROR: Unable to successfully create or copy the sub-design checkpoint file."
}
if { [catch {
  write_verilog -force -mode synth_stub C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode synth_stub C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}
if { [catch {
  write_verilog -force -mode funcsim C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth_funcsim.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
if { [catch {
  write_vhdl -force -mode funcsim C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth_funcsim.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}
