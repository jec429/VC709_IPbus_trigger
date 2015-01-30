-- generate synchronous resets in all clock domains from 
-- one in the clk_ipb domain.
-- resets other than rst_ipb are delayed so that ipbus
-- resets before everything else

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ipbus_reset is 
	port(
		clk_ipb: in std_logic;
		clk_125: in std_logic;
		clk_200: in std_logic;
		rst_in: in std_logic;
		rst_ipb: out std_logic;
		rst_125: out std_logic;
		rst_200: out std_logic
		);
end ipbus_reset;

architecture rtl of ipbus_reset is

signal rst_delayed: std_logic := '0';
signal sync_rst_125: std_logic_vector(1 downto 0);
signal sync_rst_200: std_logic_vector(1 downto 0);

signal rst_dly_ctr: unsigned(7 downto 0) := X"00";


begin

	ipb: process(clk_ipb)
	begin
		if rising_edge(clk_ipb) then
			if rst_delayed = '1' then
				rst_delayed <= '0';
			end if;
			if rst_in = '1' then
				if rst_dly_ctr = X"FF" then
					rst_dly_ctr <= X"00";
					rst_delayed <= '1';
				else
					rst_dly_ctr <= rst_dly_ctr + 1;
				end if;
			end if;
			rst_ipb <= rst_delayed;
		end if;
	end process;

	p125: process(clk_125)
	begin
		if rising_edge(clk_125) then
			sync_rst_125(1) <= rst_delayed;
			sync_rst_125(0) <= sync_rst_125(1);
			rst_125 <= sync_rst_125(0);
		end if;
	end process;

	p200: process(clk_200)
	begin
		if rising_edge(clk_200) then
			sync_rst_200(1) <= rst_delayed;
			sync_rst_200(0) <= sync_rst_200(1);
			rst_200 <= sync_rst_200(0);
		end if;
	end process;
end rtl;


