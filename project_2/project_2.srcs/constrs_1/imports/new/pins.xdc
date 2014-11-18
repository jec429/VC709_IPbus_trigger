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


