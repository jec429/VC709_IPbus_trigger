library ieee;
use ieee.std_logic_1164.all;

use work.ipbus_simulation.all; -- for type_ipbus_buffer
use work.axi.all;

package axi_simulation is

	procedure axi_read( signal clk: in std_logic;
						signal axi_in: axi_stream;
						signal axi_in_tready: out std_logic;
						data: out type_ipbus_buffer
					  );

	procedure axi_write( signal clk: in std_logic;
						 signal axi_out: out axi_stream;
						 signal axi_out_tready: in std_logic;
						 data: in type_ipbus_buffer
					   );
end package;

package body axi_simulation is
	
	procedure axi_read( signal clk: in std_logic;
						signal axi_in: axi_stream;
						signal axi_in_tready: out std_logic;
						data: out type_ipbus_buffer
					  ) is

		variable reading: boolean := false;
		variable i: natural := 0;

	begin
		reading := true;
		while reading loop
			wait until rising_edge(clk);
			axi_in_tready <= '1';
			if axi_in.tvalid = '1' then
				if axi_in.tkeep /= "0000" then
					data(i) := axi_in.tdata;
					i := i + 1;
				end if;
				if axi_in.tlast = '1' then
					reading := false;
				end if;
			end if;
		end loop;
		axi_in_tready <= '0';
    end procedure;

	procedure axi_write( signal clk: in std_logic;
						 signal axi_out: out axi_stream;
						 signal axi_out_tready: in std_logic;
						 data: in type_ipbus_buffer
					   ) is

		variable i: natural := 0;

	begin
		axi_out.tkeep <= "1111";
		axi_out.tlast <= '0';
		wait until rising_edge(clk);
		while (i < data'length) loop
			axi_out.tvalid <= '1';
			axi_out.tdata <= data(i);
			if (i = (data'length-1)) then
				axi_out.tlast <= '1';
			end if;
			wait for 1ns;
			if axi_out_tready = '1' then
				i := i + 1;
			end if;
			wait until rising_edge(clk);
		end loop;
		axi_out.tvalid <= '0';
		axi_out.tlast <= '0';
    end procedure;    

end axi_simulation;