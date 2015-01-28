# select the net that need to be observed
set_property MARK_DEBUG "true" [get_nets ipb/slaves/slave5/write_success]
set_property MARK_DEBUG "true" [get_nets ipb/slaves/slave5/write_success_follow]
set_property MARK_DEBUG "true" [get_nets axi_stream_to_ipbus_tvalid]
set_property MARK_DEBUG "true" [get_nets axi_stream_to_ipbus_tready]
set_property MARK_DEBUG "true" [get_nets axi_stream_to_ipbus_tlast]






#create one or more ILAs and connect signals
#This one is for signals driven from the 125 MHz
create_debug_core u_ila_0 labtools_ila_v3
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 4 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER true [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 1024 [get_debug_cores u_ila_0]
# enable 'storage qualifiers' to be able to gather samples at a fraction of the clock rate
set_property C_EN_STRG_QUAL true [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]

# connect the clock
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets clk125]

# the first probe is automatically created
# for busses, put the LSB first and the MSB last
#start with a counter to gather samples at a fraction of the clock rate
set_property port_width 16 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets channels/chan0/aurora/m_axi_rx_tdata[*]]

create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets channels/chan0/aurora/m_axi_rx_tvalid]

create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets channels/chan0/aurora/m_axi_rx_tlast]

create_debug_port u_ila_0 probe
set_property port_width 16 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets channels/chan0/aurora/s_axi_tx_tdata[*]]

create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets channels/chan0/aurora/s_axi_tx_tvalid]

create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets channels/chan0/aurora/s_axi_tx_tready]

create_debug_port u_ila_0 probe
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets channels/chan0/aurora/s_axi_tx_tlast]

set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]



 