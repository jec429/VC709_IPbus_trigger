-- Packet counter for monitoring packet loss
--
-- Counters are reset by any write
--
-- Dave Newbold, May 2013

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.ipbus.all;

entity ipbus_counters is
	generic(addr_width: natural := 0);
	port(
		clk: in STD_LOGIC;
		reset: in STD_LOGIC;
		ipbus_in: in ipb_wbus;
		ipbus_out: out ipb_rbus;
		count: in std_logic_vector(2**addr_width - 1 downto 0)
	);
	
end ipbus_counters;

architecture rtl of ipbus_counters is

	type counter_arr is array(2**addr_width - 1 downto 0) of unsigned(31 downto 0);
	signal counter: counter_arr;
	signal r_ctr, w_ctr: unsigned(31 downto 0);
	signal ack: std_logic;
	signal sel: integer;

begin

	sel <= to_integer(unsigned(ipbus_in.ipb_addr(addr_width - 1 downto 0))) when addr_width > 0 else 0;

	cnt_gen: for i in 2**addr_width - 1 downto 0 generate
		process(clk)
		begin
			if rising_edge(clk) then
				if reset = '1' or (ipbus_in.ipb_strobe='1' and ipbus_in.ipb_write = '1') then
					counter(i) <= (others => '0');
				elsif count(i) = '1' then
					counter(i) <= counter(i) + 1;
				end if;
			end if;
		end process;
	end generate;

	process(clk)
	begin
		if rising_edge(clk) then
			ack <= ipbus_in.ipb_strobe and not ack;
		end if;
	end process;

	
	ipbus_out.ipb_ack <= ack;
	ipbus_out.ipb_err <= '0';
	ipbus_out.ipb_rdata <= std_logic_vector(counter(sel));

end rtl;
