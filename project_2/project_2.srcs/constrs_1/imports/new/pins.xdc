# pins.xdc
# for each I/O signal, define what pin it connects to, and what type of
# signal it is.

#200 MHz system clock
# 'SYSCLK' in the VC709 manual, 'clk200' in this project
set_property IOSTANDARD DIFF_SSTL15 [get_ports clk200_p]
set_property PACKAGE_PIN G18 [get_ports clk200_n]
set_property IOSTANDARD DIFF_SSTL15 [get_ports clk200_n]

# programmable oscillator
# 'USER_CLOCK' in the VC709 manual, 'prog_clk' in this project
set_property IOSTANDARD LVDS [get_ports prog_clk_p]
set_property PACKAGE_PIN AL34 [get_ports prog_clk_n]
set_property IOSTANDARD LVDS [get_ports prog_clk_n]

# USER SMA
# USER_SMA_CLOCK in the VC709 manual, 'sma_clk' in this project
# These are outputs in this design!
set_property IOSTANDARD LVDS [get_ports sma_clk_p]
set_property PACKAGE_PIN AK32 [get_ports sma_clk_n]
set_property IOSTANDARD LVDS [get_ports sma_clk_n]

# MGTREFCLK1 SMA
# SMA_MGT_REFCLK in the VC709 manual, 'gt_clkp, gt_clkn' in this project
# These are externally looped back from the 'sma_clk'
set_property PACKAGE_PIN AK7 [get_ports gt_clkn]

#### FIGURE OUT WHERE THIS GOES
# INST eth/phy/*/gthe2_i LOC=GTHE2_CHANNEL_X1Y13;

# SFP2 - cage labeled 'P2', with a 1 Gbit module.
set_property PACKAGE_PIN AM7 [get_ports gt_rxn]
# SFP2_LOS_LS in the VC709 manual, 'sfp_los' in this project
set_property PACKAGE_PIN AA40 [get_ports sfp_los]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_los]
# SFP2_MOD_DETECT_LST_REFCLK in the VC709 manual, 'sfp_mod_det' in this project
set_property PACKAGE_PIN AA42 [get_ports sfp_mod_det]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_mod_det]
# SFP2_RS0_LS in the VC709 manual, 'sfp_rs0' in this project
set_property PACKAGE_PIN AB38 [get_ports sfp_rs0]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_rs0]
# SFP2_RS1_LS in the VC709 manual, 'sfp_rs1' in this project
set_property PACKAGE_PIN AB39 [get_ports sfp_rs1]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_rs1]
# SFP2_TX_DISABLE_LS_B in the VC709 manual, 'sfp_tx_disable' in this project
set_property PACKAGE_PIN Y42 [get_ports sfp_tx_disable]
set_property IOSTANDARD LVCMOS18 [get_ports sfp_tx_disable]

#SFP3
set_property PACKAGE_PIN AL5 [get_ports SFP3_RX_N]
set_property PACKAGE_PIN AL6 [get_ports SFP3_RX_P]
set_property PACKAGE_PIN AM3 [get_ports SFP3_TX_N]
set_property PACKAGE_PIN AM4 [get_ports SFP3_TX_P]

set_property PACKAGE_PIN AD38 [get_ports SFP3_LOS_LS]
set_property IOSTANDARD LVCMOS18 [get_ports SFP3_LOS_LS]
set_property PACKAGE_PIN AC39 [get_ports SFP3_MOD_DETECT_LS]
set_property IOSTANDARD LVCMOS18 [get_ports SFP3_MOD_DETECT_LS]
set_property PACKAGE_PIN AD42 [get_ports SFP3_RS0_LS]
set_property IOSTANDARD LVCMOS18 [get_ports SFP3_RS0_LS]
set_property PACKAGE_PIN AE42 [get_ports SFP3_RS1_LS]
set_property IOSTANDARD LVCMOS18 [get_ports SFP3_RS1_LS]
set_property PACKAGE_PIN AC38 [get_ports SFP3_TX_DISABLE_LS_B]
set_property IOSTANDARD LVCMOS18 [get_ports SFP3_TX_DISABLE_LS_B]
#set_property LOC GTHE2_CHANNEL_X1Y14 [get_cells slaves/slave6/trigger_top/tracklet_processing_phi0/aurora_test_top/LinkProjPhiPlus/aurora_8b10b_0/inst/gt_wrapper_i/aurora_8b10b_0_multi_gt_i/gt0_aurora_8b10b_0_i/gthe2_i]

#SFP4
set_property PACKAGE_PIN AJ5 [get_ports SFP4_RX_N]
set_property PACKAGE_PIN AJ6 [get_ports SFP4_RX_P]
set_property PACKAGE_PIN AL1 [get_ports SFP4_TX_N]
set_property PACKAGE_PIN AL2 [get_ports SFP4_TX_P]

set_property PACKAGE_PIN AD40 [get_ports SFP4_LOS_LS]
set_property IOSTANDARD LVCMOS18 [get_ports SFP4_LOS_LS]
set_property PACKAGE_PIN AC41 [get_ports SFP4_MOD_DETECT_LS]
set_property IOSTANDARD LVCMOS18 [get_ports SFP4_MOD_DETECT_LS]
set_property PACKAGE_PIN AE39 [get_ports SFP4_RS0_LS]
set_property IOSTANDARD LVCMOS18 [get_ports SFP4_RS0_LS]
set_property PACKAGE_PIN AE40 [get_ports SFP4_RS1_LS]
set_property IOSTANDARD LVCMOS18 [get_ports SFP4_RS1_LS]
set_property PACKAGE_PIN AC40 [get_ports SFP4_TX_DISABLE_LS_B]
set_property IOSTANDARD LVCMOS18 [get_ports SFP4_TX_DISABLE_LS_B]
#set_property LOC GTHE2_CHANNEL_X1Y15 [get_cells slaves/slave6/trigger_top/tracklet_processing_phi0/aurora_test_top/LinkProjPhiMinus/aurora_8b10b_1/inst/gt_wrapper_i/aurora_8b10b_1_multi_gt_i/gt0_aurora_8b10b_1_i/gthe2_i]

# LEDs
# GPIO_LED_n_LS in the VC709 manual, 'leds<n>' in this project
set_property PACKAGE_PIN AM39 [get_ports {leds[0]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[0]}]
set_property PACKAGE_PIN AN39 [get_ports {leds[1]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[1]}]
set_property PACKAGE_PIN AR37 [get_ports {leds[2]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[2]}]
set_property PACKAGE_PIN AT37 [get_ports {leds[3]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[3]}]
set_property PACKAGE_PIN AR35 [get_ports {leds[4]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[4]}]
set_property PACKAGE_PIN AP41 [get_ports {leds[5]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[5]}]
set_property PACKAGE_PIN AP42 [get_ports {leds[6]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[6]}]
set_property PACKAGE_PIN AU39 [get_ports {leds[7]}]
set_property IOSTANDARD LVCMOS18 [get_ports {leds[7]}]

# Switch to enable and turn on LED
set_property PACKAGE_PIN AU38 [get_ports en_proc_switch]
set_property IOSTANDARD LVCMOS18 [get_ports en_proc_switch]







set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[4]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[8]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[9]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[0]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/p_0_in[0]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[6]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[22]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[29]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[31]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[25]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[13]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[43]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[46]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[47]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[27]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[18]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[41]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[20]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[38]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[35]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[37]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[39]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[42]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[14]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[7]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[36]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[10]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[23]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[12]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[40]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[30]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[15]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[34]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[2]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[17]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[32]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[26]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[21]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[16]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[1]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[11]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[5]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[28]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[33]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[19]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[24]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[45]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[3]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[1]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[5]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[4]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[3]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[0]}]
set_property MARK_DEBUG true [get_nets {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[2]}]
create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list slaves/slave6/trigger_top/proc_clk]]
set_property port_width 47 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[0]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[1]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[2]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[3]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[4]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[5]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[6]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[7]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[8]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[9]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[10]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[11]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[12]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[13]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[14]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[15]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[16]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[17]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[18]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[19]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[20]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[21]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[22]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[23]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[24]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[25]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[26]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[27]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[28]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[29]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[30]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[31]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[32]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[33]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[34]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[35]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[36]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[37]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[38]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[39]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[40]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[41]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[42]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[43]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[45]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[46]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/mem_dat_stream[47]}]]
create_debug_port u_ila_0 probe
set_property port_width 6 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[0]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[1]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[2]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[3]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[4]} {slaves/slave6/trigger_top/commy/PT_Plus_D3/I1[5]}]]
create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {slaves/slave6/trigger_top/commy/PT_Plus_D3/send_proj/p_0_in[0]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets u_ila_0_proc_clk]
