proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_param gui.test TreeTableDev
  debug::add_scope template.lib 1
  create_project -in_memory -part xc7vx690tffg1761-2
  set_property board_part xilinx.com:vc709:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.cache/wt [current_project]
  set_property parent.project_path C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.xpr [current_project]
  set_property ip_repo_paths c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.cache/ip [current_project]
  set_property ip_output_repo c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.cache/ip [current_project]
  add_files -quiet C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/synth_1/top.dcp
  add_files -quiet C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/trigger_clock_synth_synth_1/trigger_clock_synth.dcp
  set_property netlist_only true [get_files C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/trigger_clock_synth_synth_1/trigger_clock_synth.dcp]
  add_files -quiet C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/aurora_8b10b_0_synth_1/aurora_8b10b_0.dcp
  set_property netlist_only true [get_files C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/aurora_8b10b_0_synth_1/aurora_8b10b_0.dcp]
  add_files -quiet C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/aurora_8b10b_1_synth_1/aurora_8b10b_1.dcp
  set_property netlist_only true [get_files C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/aurora_8b10b_1_synth_1/aurora_8b10b_1.dcp]
  add_files -quiet C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/gig_ethernet_pcs_pma_0_synth_1/gig_ethernet_pcs_pma_0.dcp
  set_property netlist_only true [get_files C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/gig_ethernet_pcs_pma_0_synth_1/gig_ethernet_pcs_pma_0.dcp]
  add_files -quiet C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/link_axis_data_fifo_synth_1/link_axis_data_fifo.dcp
  set_property netlist_only true [get_files C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/link_axis_data_fifo_synth_1/link_axis_data_fifo.dcp]
  add_files -quiet C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/TP_raw_stub_fifo_synth_1/TP_raw_stub_fifo.dcp
  set_property netlist_only true [get_files C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.runs/TP_raw_stub_fifo_synth_1/TP_raw_stub_fifo.dcp]
  read_xdc -mode out_of_context -ref trigger_clock_synth -cells inst c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth_ooc.xdc]
  read_xdc -prop_thru_buffers -ref trigger_clock_synth -cells inst c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth_board.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth_board.xdc]
  read_xdc -ref trigger_clock_synth -cells inst c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth.xdc]
  read_xdc -mode out_of_context -ref aurora_8b10b_0 c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_ooc.xdc]
  read_xdc -mode out_of_context -ref aurora_8b10b_1 c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/aurora_8b10b_1/aurora_8b10b_1_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/aurora_8b10b_1/aurora_8b10b_1_ooc.xdc]
  read_xdc -mode out_of_context -ref gig_ethernet_pcs_pma_0 c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0_ooc.xdc]
  read_xdc -prop_thru_buffers -ref gig_ethernet_pcs_pma_0 c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_board.xdc]
  read_xdc -ref gig_ethernet_pcs_pma_0 c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/gig_ethernet_pcs_pma_0/synth/gig_ethernet_pcs_pma_0.xdc]
  read_xdc -mode out_of_context -ref link_axis_data_fifo -cells inst c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo_ooc.xdc]
  read_xdc -ref link_axis_data_fifo -cells inst c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo/link_axis_data_fifo.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo/link_axis_data_fifo.xdc]
  read_xdc -mode out_of_context -ref TP_raw_stub_fifo -cells U0 c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/TP_raw_stub_fifo/TP_raw_stub_fifo_ooc.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/TP_raw_stub_fifo/TP_raw_stub_fifo_ooc.xdc]
  read_xdc -ref TP_raw_stub_fifo -cells U0 c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/TP_raw_stub_fifo/TP_raw_stub_fifo/TP_raw_stub_fifo.xdc
  set_property processing_order EARLY [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/TP_raw_stub_fifo/TP_raw_stub_fifo/TP_raw_stub_fifo.xdc]
  read_xdc C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/constrs_1/imports/new/pins.xdc
  read_xdc C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/constrs_1/imports/new/timing.xdc
  read_xdc -ref aurora_8b10b_0 c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/aurora_8b10b_0/aurora_8b10b_0_clocks.xdc]
  read_xdc -ref aurora_8b10b_1 c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/aurora_8b10b_1/aurora_8b10b_1_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/aurora_8b10b_1/aurora_8b10b_1_clocks.xdc]
  read_xdc -ref link_axis_data_fifo -cells inst c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo/link_axis_data_fifo_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/link_axis_data_fifo/link_axis_data_fifo/link_axis_data_fifo_clocks.xdc]
  link_design -top top -part xc7vx690tffg1761-2
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force top_opt.dcp
  catch {report_drc -file top_drc_opted.rpt}
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  place_design 
  write_checkpoint -force top_placed.dcp
  catch { report_io -file top_io_placed.rpt }
  catch { report_clock_utilization -file top_clock_utilization_placed.rpt }
  catch { report_utilization -file top_utilization_placed.rpt -pb top_utilization_placed.pb }
  catch { report_control_sets -verbose -file top_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force top_routed.dcp
  catch { report_drc -file top_drc_routed.rpt -pb top_drc_routed.pb }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file top_timing_summary_routed.rpt -rpx top_timing_summary_routed.rpx }
  catch { report_power -file top_power_routed.rpt -pb top_power_summary_routed.pb }
  catch { report_route_status -file top_route_status.rpt -pb top_route_status.pb }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

