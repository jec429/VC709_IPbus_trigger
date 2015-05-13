-- Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2014.4 (lin64) Build 1071353 Tue Nov 18 16:47:07 MST 2014
<<<<<<< HEAD
-- Date        : Mon Apr 27 16:24:07 2015
-- Host        : mq154.lns.cornell.edu running 64-bit Scientific Linux release 6.6 (Carbon)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/Jorge/Documents/work/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/TP_raw_stub_fifo/TP_raw_stub_fifo_stub.vhdl
=======
-- Date        : Mon May  4 10:44:26 2015
-- Host        : mq154.lns.cornell.edu running 64-bit Scientific Linux release 6.6 (Carbon)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/Margaret/MargaretVC709/VC709_IPbus_trigger/project_2/project_2.srcs/sources_1/ip/TP_raw_stub_fifo/TP_raw_stub_fifo_stub.vhdl
>>>>>>> bc00d9db5310a6fe74b49e8be398be678f1c8a71
-- Design      : TP_raw_stub_fifo
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx690tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TP_raw_stub_fifo is
  Port ( 
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 35 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 35 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC
  );

end TP_raw_stub_fifo;

architecture stub of TP_raw_stub_fifo is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "rst,wr_clk,rd_clk,din[35:0],wr_en,rd_en,dout[35:0],full,empty";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "fifo_generator_v12_0,Vivado 2014.4";
begin
end;
