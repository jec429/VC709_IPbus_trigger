# system clock
create_clock -period 20.000 -name clk50 -waveform {0.000 10.000} [get_ports {clkin}]

# the 'clkin' is on the N pin of a PN pair, so it needs the next constraint to allow it to place the clock
# This should be removed in the 5-chanel design, since the pin mapping should be fixed
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clkin]

# gtx clock for GigE
create_clock -name gige_clk -period 8.000 [get_ports gtx_clk0]

# Tell Vivado about 2DFF synchronizers so that it does some special optimization
set_property ASYNC_REG TRUE [get_cells ipb/rst/sync_*]
set_false_path -from [get_cells ipb/rst/rst_delayed_reg] -to [get_cells ipb/rst/sync_*]
#set_property ASYNC_REG TRUE [get_cells r/rst_clk50_sync[*]]
#set_false_path -from [get_cells r/ipb_rst_stretch_reg[*]] -to [get_cells r/rst_clk50_sync_reg*]

create_clock -period 4.000 -name DAQ_usrclk [get_pins daq/i_DAQLINK_7S_init/GT0_TXOUTCLK_OUT]

# virtual clock to constrain trigger outputs
# we want all of them to line up to within the 800 MHz clock used by the channel FPGAs
## HOLD OFF ON THIS FOR NOW
#create_clock -period 1.250 -name chan_clk
#set_output_delay -clock chan_clk 0.0 [get_ports acq_trigs[*]]
#set_output_delay -clock chan_clk 0.0 [get_ports debug[*]]

# clock for serial link to channel 0 FPGA
#create_clock -name chan0_tx_out_clk -period 8.0 [get_pins channels/chan0/aurora/inst/tx_out_clk]
# Aurora USER_CLK Constraint : Value is selected based on the line rate (5.0 Gbps) and lane width (4-Byte)
create_clock -period 8.000 -name user_clk_chan0 [get_pins channels/chan0/clock_module/user_clk_buf_i/O]
create_clock -period 8.000 -name user_clk_chan1 [get_pins channels/chan1/clock_module/user_clk_buf_i/O]
create_clock -period 8.000 -name user_clk_chan2 [get_pins channels/chan2/clock_module/user_clk_buf_i/O]
create_clock -period 8.000 -name user_clk_chan3 [get_pins channels/chan3/clock_module/user_clk_buf_i/O]
create_clock -period 8.000 -name user_clk_chan4 [get_pins channels/chan4/clock_module/user_clk_buf_i/O]

# Stuff for the serial link to channel 0. Don't completely understand what it does, but it was in the example design
set_max_delay -from [get_clocks clk50] -to [get_clocks user_clk_chan0] -datapath_only 8.0	 
set_max_delay -from [get_clocks clk50] -to [get_clocks user_clk_chan1] -datapath_only 8.0	 
set_max_delay -from [get_clocks clk50] -to [get_clocks user_clk_chan2] -datapath_only 8.0	 
set_max_delay -from [get_clocks clk50] -to [get_clocks user_clk_chan3] -datapath_only 8.0	 
set_max_delay -from [get_clocks clk50] -to [get_clocks user_clk_chan4] -datapath_only 8.0	 
set_false_path -from [get_clocks user_clk_chan0] -to [get_clocks clk125]
set_false_path -from [get_clocks user_clk_chan1] -to [get_clocks clk125]
set_false_path -from [get_clocks user_clk_chan2] -to [get_clocks clk125]
set_false_path -from [get_clocks user_clk_chan3] -to [get_clocks clk125]
set_false_path -from [get_clocks user_clk_chan4] -to [get_clocks clk125]

# Separate asynchronous clock domains
set_clock_groups -name async_clk50_gige_clk -asynchronous\
 -group [get_clocks -include_generated_clocks clk50]\
 -group [get_clocks -include_generated_clocks clk125]\
 -group [get_clocks -include_generated_clocks clk200]\
 -group [get_clocks -include_generated_clocks gige_clk]\
 -group [get_clocks -include_generated_clocks ipb/eth/phy/U0/pcs_pma_block_i/transceiver_inst/gtwizard_inst/*/gtwizard_i/gt0_GTWIZARD_i/gtxe2_i/TXOUTCLK]\
 -group [get_clocks -include_generated_clocks DAQ_usrclk]\
 -group [get_clocks -include_generated_clocks user_clk_chan0]\
 -group [get_clocks -include_generated_clocks user_clk_chan1]\
 -group [get_clocks -include_generated_clocks user_clk_chan2]\
 -group [get_clocks -include_generated_clocks user_clk_chan3]\
 -group [get_clocks -include_generated_clocks user_clk_chan4]



