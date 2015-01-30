In module's declaration or its instantiation, set the following
two generic parameters accroding to your design:

F_REFCLK is the frequency of the GTX reference clock
USE_TRIGGER_PORT is default to false, but if you have trigger data
to be sent through the link, you must set it to true and provide
the trigger data together with BC0 and TTCclk.

please include the following line in your xst file:

create_clock -period 4.000 -name DAQ_usrclk [get_pins */i_DAQ_Link_7s/i_UsrClk/o]

where i_DAQ_Link_7s is the instance name of the module DAQ_Link_7s
in its upper level module.

This zip file includes following files:

DAQ_Link_7s.vhd		top level module
FIFO_rest_7S.vhd
EthernetCRCD32.vhd
CRC16D16.vhd
TTS_TRIG_if.vhd
RAM32x6Db.vhd
Hamming.vhd
DAQLINK_7s_init.vhd
DAQLINK_7s.vhd
DAQLINK_7s_gt.vhd
DAQLINK_7s_sync_block.vhd
DAQLINK_7s_tx_startup_fsm.vhd
DAQLINK_7s_rx_startup_fsm.vhd
ReadMe.txt		this file