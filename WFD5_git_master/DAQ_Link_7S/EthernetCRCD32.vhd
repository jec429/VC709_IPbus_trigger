--------------------------------------------------------------------------------
-- Copyright (C) 1999-2008 Easics NV.
-- This source file may be used and distributed without restriction
-- provided that this copyright statement is not removed from the file
-- and that any derivative work contains the original copyright notice
-- and the associated disclaimer.
--
-- THIS SOURCE FILE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS
-- OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
-- WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
--
-- Purpose : synthesizable CRC function
--   * polynomial: (0 1 2 4 5 7 8 10 11 12 16 22 23 26 32)
--   * data width: 8
--
-- Info : tools@easics.be
--        http://www.easics.com
--------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:20:34 12/01/2011 
-- Design Name: 
-- Module Name:    EthernetCRC - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER  
-- This module is provided only as an example, no correctness or any usefullness is implied.
-- Use of it is at users' own risk. 
-- Do not remove this disclaimer.
-- !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER !!!DISCLAIMER  
-- Description: Ethernet CRC calculation, derived from PCK_CRC32_D8 generated using easics.com tools
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EthernetCRCD32 is
    Port ( clk : in  STD_LOGIC;
           init : in  STD_LOGIC;
           ce : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           crc : out  STD_LOGIC_VECTOR (31 downto 0);
           bad_crc : out  STD_LOGIC
					 );
end EthernetCRCD32;

architecture Behavioral of EthernetCRCD32 is
constant crc_R : std_logic_vector(31 downto 0) := x"c704dd7b";
signal c : std_logic_vector(31 downto 0) := (others => '0');
signal invert : std_logic := '1';
begin
process(c,d)
begin
	for i in 0 to 31 loop
		crc(i) <= not c(31-i);
	end loop;
end process;
bad_crc <= '0' when c = crc_R else '1';
process(clk)
begin
	if(clk'event and clk = '1')then
		if(init = '1')then
			invert <= '1';
			c <= (others => '0');
		elsif(ce = '1')then
			invert <= '0';
			c(0)  <= invert xor d(31) xor d(25) xor d(22) xor d(21) xor d(19) xor d(15) xor
							 d(7)  xor d(6)  xor d(5)  xor d(3)  xor d(2)  xor d(1)  xor
							 d(0)  xor c(31) xor c(30) xor c(29) xor c(28) xor c(26) xor
							 c(25) xor c(24) xor c(16) xor c(12) xor c(10) xor c(9)  xor
							 c(6)  xor c(0);
			c(1)  <= invert xor d(31) xor d(30) xor d(25) xor d(24) xor d(22) xor d(20) xor
							 d(19) xor d(18) xor d(15) xor d(14) xor d(7)  xor d(4)  xor
							 d(3)  xor c(28) xor c(27) xor c(24) xor c(17) xor c(16) xor
							 c(13) xor c(12) xor c(11) xor c(9)  xor c(7)  xor c(6)  xor
							 c(1)  xor c(0);
			c(2)  <= d(31) xor d(30) xor d(29) xor d(25) xor d(24) xor d(23) xor
							 d(22) xor d(18) xor d(17) xor d(15) xor d(14) xor d(13) xor
							 d(7)  xor d(5)  xor d(1)  xor d(0)  xor c(31) xor c(30) xor
							 c(26) xor c(24) xor c(18) xor c(17) xor c(16) xor c(14) xor
							 c(13) xor c(9)  xor c(8)  xor c(7)  xor c(6)  xor c(2)  xor
							 c(1)  xor c(0);
			c(3)  <= invert xor d(30) xor d(29) xor d(28) xor d(24) xor d(23) xor d(22) xor
							 d(21) xor d(17) xor d(16) xor d(14) xor d(13) xor d(12) xor
							 d(6)  xor d(4)  xor d(0)  xor c(31) xor c(27) xor c(25) xor
							 c(19) xor c(18) xor c(17) xor c(15) xor c(14) xor c(10) xor
							 c(9)  xor c(8)  xor c(7)  xor c(3)  xor c(2)  xor c(1);
			c(4)  <= invert xor d(31) xor d(29) xor d(28) xor d(27) xor d(25) xor d(23) xor
							 d(20) xor d(19) xor d(16) xor d(13) xor d(12) xor d(11) xor
							 d(7)  xor d(6)  xor d(2)  xor d(1)  xor d(0)  xor c(31) xor
							 c(30) xor c(29) xor c(25) xor c(24) xor c(20) xor c(19) xor
							 c(18) xor c(15) xor c(12) xor c(11) xor c(8)  xor c(6)  xor
							 c(4)  xor c(3)  xor c(2)  xor c(0);
			c(5)  <= invert xor d(31) xor d(30) xor d(28) xor d(27) xor d(26) xor d(25) xor
							 d(24) xor d(21) xor d(18) xor d(12) xor d(11) xor d(10) xor
							 d(7)  xor d(3)  xor d(2)  xor c(29) xor c(28) xor c(24) xor
							 c(21) xor c(20) xor c(19) xor c(13) xor c(10) xor c(7)  xor
							 c(6)  xor c(5)  xor c(4)  xor c(3)  xor c(1)  xor c(0);
			c(6)  <= invert xor d(30) xor d(29) xor d(27) xor d(26) xor d(25) xor d(24) xor
							 d(23) xor d(20) xor d(17) xor d(11) xor d(10) xor d(9)  xor
							 d(6)  xor d(2)  xor d(1)  xor c(30) xor c(29) xor c(25) xor
							 c(22) xor c(21) xor c(20) xor c(14) xor c(11) xor c(8)  xor
							 c(7)  xor c(6)  xor c(5)  xor c(4)  xor c(2)  xor c(1);
			c(7)  <= d(31) xor d(29) xor d(28) xor d(26) xor d(24) xor d(23) xor
							 d(21) xor d(16) xor d(15) xor d(10) xor d(9)  xor d(8)  xor
							 d(7)  xor d(6)  xor d(3)  xor d(2)  xor c(29) xor c(28) xor
							 c(25) xor c(24) xor c(23) xor c(22) xor c(21) xor c(16) xor
							 c(15) xor c(10) xor c(8)  xor c(7)  xor c(5)  xor c(3)  xor
							 c(2)  xor c(0);
			c(8)  <= invert xor d(31) xor d(30) xor d(28) xor d(27) xor d(23) xor d(21) xor
							 d(20) xor d(19) xor d(14) xor d(9)  xor d(8)  xor d(3)  xor
							 d(0)  xor c(31) xor c(28) xor c(23) xor c(22) xor c(17) xor
							 c(12) xor c(11) xor c(10) xor c(8)  xor c(4)  xor c(3)  xor
							 c(1)  xor c(0);
			c(9)  <= d(30) xor d(29) xor d(27) xor d(26) xor d(22) xor d(20) xor
							 d(19) xor d(18) xor d(13) xor d(8)  xor d(7)  xor d(2)  xor
							 c(29) xor c(24) xor c(23) xor c(18) xor c(13) xor c(12) xor
							 c(11) xor c(9)  xor c(5)  xor c(4)  xor c(2)  xor c(1);
			c(10) <= invert xor d(31) xor d(29) xor d(28) xor d(26) xor d(22) xor d(18) xor
							 d(17) xor d(15) xor d(12) xor d(5)  xor d(3)  xor d(2)  xor
							 d(0)  xor c(31) xor c(29) xor c(28) xor c(26) xor c(19) xor
							 c(16) xor c(14) xor c(13) xor c(9)  xor c(5)  xor c(3)  xor
							 c(2)  xor c(0);
			c(11) <= invert xor d(31) xor d(30) xor d(28) xor d(27) xor d(22) xor d(19) xor
							 d(17) xor d(16) xor d(15) xor d(14) xor d(11) xor d(7)  xor
							 d(6)  xor d(5)  xor d(4)  xor d(3)  xor d(0)  xor c(31) xor
							 c(28) xor c(27) xor c(26) xor c(25) xor c(24) xor c(20) xor
							 c(17) xor c(16) xor c(15) xor c(14) xor c(12) xor c(9)  xor
							 c(4)  xor c(3)  xor c(1)  xor c(0);
			c(12) <= invert xor d(31) xor d(30) xor d(29) xor d(27) xor d(26) xor d(25) xor
							 d(22) xor d(19) xor d(18) xor d(16) xor d(14) xor d(13) xor
							 d(10) xor d(7)  xor d(4)  xor d(1)  xor d(0)  xor c(31) xor
							 c(30) xor c(27) xor c(24) xor c(21) xor c(18) xor c(17) xor
							 c(15) xor c(13) xor c(12) xor c(9)  xor c(6)  xor c(5)  xor
							 c(4)  xor c(2)  xor c(1)  xor c(0);
			c(13) <= d(30) xor d(29) xor d(28) xor d(26) xor d(25) xor d(24) xor
							 d(21) xor d(18) xor d(17) xor d(15) xor d(13) xor d(12) xor
							 d(9)  xor d(6)  xor d(3)  xor d(0)  xor c(31) xor c(28) xor
							 c(25) xor c(22) xor c(19) xor c(18) xor c(16) xor c(14) xor
							 c(13) xor c(10) xor c(7)  xor c(6)  xor c(5)  xor c(3)  xor
							 c(2)  xor c(1);
			c(14) <= invert xor d(29) xor d(28) xor d(27) xor d(25) xor d(24) xor d(23) xor
							 d(20) xor d(17) xor d(16) xor d(14) xor d(12) xor d(11) xor
							 d(8)  xor d(5)  xor d(2)  xor c(29) xor c(26) xor c(23) xor
							 c(20) xor c(19) xor c(17) xor c(15) xor c(14) xor c(11) xor
							 c(8)  xor c(7)  xor c(6)  xor c(4)  xor c(3)  xor c(2);
			c(15) <= invert xor d(28) xor d(27) xor d(26) xor d(24) xor d(23) xor d(22) xor
							 d(19) xor d(16) xor d(15) xor d(13) xor d(11) xor d(10) xor
							 d(7)  xor d(4)  xor d(1)  xor c(30) xor c(27) xor c(24) xor
							 c(21) xor c(20) xor c(18) xor c(16) xor c(15) xor c(12) xor
							 c(9)  xor c(8)  xor c(7)  xor c(5)  xor c(4)  xor c(3);
			c(16) <= d(31) xor d(27) xor d(26) xor d(23) xor d(19) xor d(18) xor
							 d(14) xor d(12) xor d(10) xor d(9)  xor d(7)  xor d(5)  xor
							 d(2)  xor d(1)  xor c(30) xor c(29) xor c(26) xor c(24) xor
							 c(22) xor c(21) xor c(19) xor c(17) xor c(13) xor c(12) xor
							 c(8)  xor c(5)  xor c(4)  xor c(0);
			c(17) <= d(30) xor d(26) xor d(25) xor d(22) xor d(18) xor d(17) xor
							 d(13) xor d(11) xor d(9)  xor d(8)  xor d(6)  xor d(4)  xor
							 d(1)  xor d(0)  xor c(31) xor c(30) xor c(27) xor c(25) xor
							 c(23) xor c(22) xor c(20) xor c(18) xor c(14) xor c(13) xor
							 c(9)  xor c(6)  xor c(5)  xor c(1);
			c(18) <= invert xor d(29) xor d(25) xor d(24) xor d(21) xor d(17) xor d(16) xor
							 d(12) xor d(10) xor d(8)  xor d(7)  xor d(5)  xor d(3)  xor
							 d(0)  xor c(31) xor c(28) xor c(26) xor c(24) xor c(23) xor
							 c(21) xor c(19) xor c(15) xor c(14) xor c(10) xor c(7)  xor
							 c(6)  xor c(2);
			c(19) <= d(28) xor d(24) xor d(23) xor d(20) xor d(16) xor d(15) xor
							 d(11) xor d(9)  xor d(7)  xor d(6)  xor d(4)  xor d(2)  xor
							 c(29) xor c(27) xor c(25) xor c(24) xor c(22) xor c(20) xor
							 c(16) xor c(15) xor c(11) xor c(8)  xor c(7)  xor c(3);
			c(20) <= d(27) xor d(23) xor d(22) xor d(19) xor d(15) xor d(14) xor
							 d(10) xor d(8)  xor d(6)  xor d(5)  xor d(3)  xor d(1)  xor
							 c(30) xor c(28) xor c(26) xor c(25) xor c(23) xor c(21) xor
							 c(17) xor c(16) xor c(12) xor c(9)  xor c(8)  xor c(4);
			c(21) <= d(26) xor d(22) xor d(21) xor d(18) xor d(14) xor d(13) xor
							 d(9)  xor d(7)  xor d(5)  xor d(4)  xor d(2)  xor d(0)  xor
							 c(31) xor c(29) xor c(27) xor c(26) xor c(24) xor c(22) xor
							 c(18) xor c(17) xor c(13) xor c(10) xor c(9)  xor c(5);
			c(22) <= d(31) xor d(22) xor d(20) xor d(19) xor d(17) xor d(15) xor
							 d(13) xor d(12) xor d(8)  xor d(7)  xor d(5)  xor d(4)  xor
							 d(2)  xor d(0)  xor c(31) xor c(29) xor c(27) xor c(26) xor
							 c(24) xor c(23) xor c(19) xor c(18) xor c(16) xor c(14) xor
							 c(12) xor c(11) xor c(9)  xor c(0);
			c(23) <= d(31) xor d(30) xor d(25) xor d(22) xor d(18) xor d(16) xor
							 d(15) xor d(14) xor d(12) xor d(11) xor d(5)  xor d(4)  xor
							 d(2)  xor d(0)  xor c(31) xor c(29) xor c(27) xor c(26) xor
							 c(20) xor c(19) xor c(17) xor c(16) xor c(15) xor c(13) xor
							 c(9)  xor c(6)  xor c(1)  xor c(0);
			c(24) <= invert xor d(30) xor d(29) xor d(24) xor d(21) xor d(17) xor d(15) xor
							 d(14) xor d(13) xor d(11) xor d(10) xor d(4)  xor d(3)  xor
							 d(1)  xor c(30) xor c(28) xor c(27) xor c(21) xor c(20) xor
							 c(18) xor c(17) xor c(16) xor c(14) xor c(10) xor c(7)  xor
							 c(2)  xor c(1);
			c(25) <= invert xor d(29) xor d(28) xor d(23) xor d(20) xor d(16) xor d(14) xor
							 d(13) xor d(12) xor d(10) xor d(9)  xor d(3)  xor d(2)  xor
							 d(0)  xor c(31) xor c(29) xor c(28) xor c(22) xor c(21) xor
							 c(19) xor c(18) xor c(17) xor c(15) xor c(11) xor c(8)  xor
							 c(3)  xor c(2);
			c(26) <= invert xor d(31) xor d(28) xor d(27) xor d(25) xor d(21) xor d(13) xor
							 d(12) xor d(11) xor d(9)  xor d(8)  xor d(7)  xor d(6)  xor
							 d(5)  xor d(3)  xor d(0)  xor c(31) xor c(28) xor c(26) xor
							 c(25) xor c(24) xor c(23) xor c(22) xor c(20) xor c(19) xor
							 c(18) xor c(10) xor c(6)  xor c(4)  xor c(3)  xor c(0);
			c(27) <= d(30) xor d(27) xor d(26) xor d(24) xor d(20) xor d(12) xor
							 d(11) xor d(10) xor d(8)  xor d(7)  xor d(6)  xor d(5)  xor
							 d(4)  xor d(2)  xor c(29) xor c(27) xor c(26) xor c(25) xor
							 c(24) xor c(23) xor c(21) xor c(20) xor c(19) xor c(11) xor
							 c(7)  xor c(5)  xor c(4)  xor c(1);
			c(28) <= d(29) xor d(26) xor d(25) xor d(23) xor d(19) xor d(11) xor
							 d(10) xor d(9)  xor d(7)  xor d(6)  xor d(5)  xor d(4)  xor
							 d(3)  xor d(1)  xor c(30) xor c(28) xor c(27) xor c(26) xor
							 c(25) xor c(24) xor c(22) xor c(21) xor c(20) xor c(12) xor
							 c(8)  xor c(6)  xor c(5)  xor c(2);
			c(29) <= d(28) xor d(25) xor d(24) xor d(22) xor d(18) xor d(10) xor
							 d(9)  xor d(8)  xor d(6)  xor d(5)  xor d(4)  xor d(3)  xor
							 d(2)  xor d(0)  xor c(31) xor c(29) xor c(28) xor c(27) xor
							 c(26) xor c(25) xor c(23) xor c(22) xor c(21) xor c(13) xor
							 c(9)  xor c(7)  xor c(6)  xor c(3);
			c(30) <= invert xor d(27) xor d(24) xor d(23) xor d(21) xor d(17) xor d(9)  xor
							 d(8)  xor d(7)  xor d(5)  xor d(4)  xor d(3)  xor d(2)  xor
							 d(1)  xor c(30) xor c(29) xor c(28) xor c(27) xor c(26) xor
							 c(24) xor c(23) xor c(22) xor c(14) xor c(10) xor c(8)  xor
							 c(7)  xor c(4);
			c(31) <= invert xor d(26) xor d(23) xor d(22) xor d(20) xor d(16) xor d(8)  xor
							 d(7)  xor d(6)  xor d(4)  xor d(3)  xor d(2)  xor d(1)  xor
							 d(0)  xor c(31) xor c(30) xor c(29) xor c(28) xor c(27) xor
							 c(25) xor c(24) xor c(23) xor c(15) xor c(11) xor c(9)  xor
							 c(8)  xor c(5);
		end if;
	end if;
end process;

end Behavioral;

