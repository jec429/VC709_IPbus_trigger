library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.ipbus.all;

entity ipbus_write_only_reg is
	generic(addr_width: natural := 0);
	port(
		clk: in std_logic;
		reset: in std_logic;
		ipbus_in: in ipb_wbus;
		ipbus_out: out ipb_rbus;
		q: out STD_LOGIC_VECTOR(2**addr_width*32-1 downto 0)
	);
	
end ipbus_write_only_reg;

architecture rtl of ipbus_write_only_reg is

	signal sel: integer;
	signal ack: std_logic;

begin

	sel <= to_integer(unsigned(ipbus_in.ipb_addr(addr_width - 1 downto 0))) when addr_width > 0 else 0;

	process(clk)
	begin
		if rising_edge(clk) then
			if ipbus_in.ipb_strobe='1' and ipbus_in.ipb_write='1' then
				q((sel+1)*32-1 downto sel*32) <= ipbus_in.ipb_wdata;
			else
				q <= (others => '0');
			end if;

			ack <= ipbus_in.ipb_strobe;

		end if;
	end process;
	
	ipbus_out.ipb_ack <= ack;
	ipbus_out.ipb_err <= '0';

end rtl;