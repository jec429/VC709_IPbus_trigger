-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (win64) Build 1071353 Tue Nov 18 18:24:04 MST 2014
-- Date        : Wed Mar 11 18:10:36 2015
-- Host        : PCPSB375 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/ZhengchengTao/Documents/VC709_IPbus_trigger/project_3/project_3.srcs/sources_1/ip/trigger_clock_synth/trigger_clock_synth_stub.vhdl
-- Design      : trigger_clock_synth
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity trigger_clock_synth is
  Port ( 
    clk_in1 : in STD_LOGIC;
    cross_clk : out STD_LOGIC;
    proc_clk : out STD_LOGIC;
    reset : in STD_LOGIC;
    locked : out STD_LOGIC
  );

end trigger_clock_synth;

architecture stub of trigger_clock_synth is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in1,cross_clk,proc_clk,reset,locked";
begin
end;
