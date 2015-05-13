-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
-- Date        : Wed May 13 15:06:42 2015
-- Host        : mq154.lns.cornell.edu running 64-bit Scientific Linux release 6.6 (Carbon)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/Margaret/MargaretVC709/CombinedVC709/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/fifo_projection_out/fifo_projection_out_stub.vhdl
-- Design      : fifo_projection_out
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fifo_projection_out is
  Port ( 
    clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 47 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 47 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );

end fifo_projection_out;

architecture stub of fifo_projection_out is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst,din[47:0],wr_en,rd_en,dout[47:0],full,empty";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v12_0,Vivado 2014.4";
begin
end;
