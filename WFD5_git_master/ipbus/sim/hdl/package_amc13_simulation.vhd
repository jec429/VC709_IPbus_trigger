library ieee;
use ieee.std_logic_1164.all;

use work.ipbus_simulation.all; -- for type_ipbus_buffer

package amc13_simulation is

	procedure amc13_read( signal clk: in std_logic;
						  signal daq_valid : in std_logic;
						  signal daq_header : in std_logic;
						  signal daq_trailer : in std_logic;
						  signal daq_data : in std_logic_vector(63 downto 0);
						  signal daq_ready : out std_logic;
						  header : out std_logic_vector(63 downto 0);
						  data: out type_amc13_data(4 downto 0);
						  trailer : out std_logic_vector(63 downto 0)
					    );

end package;

package body amc13_simulation is
	
	procedure amc13_read( signal clk: in std_logic;
						  signal daq_valid : in std_logic;
						  signal daq_header : in std_logic;
						  signal daq_trailer : in std_logic;
						  signal daq_data : in std_logic_vector(63 downto 0);
						  signal daq_ready : out std_logic;
						  header : out std_logic_vector(63 downto 0);
						  data: out type_amc13_data(4 downto 0);
						  trailer : out std_logic_vector(63 downto 0)
					    ) is

		variable reading: boolean := false;
		variable i: natural := 0;

	begin
		reading := true;
		while reading loop
			wait until rising_edge(clk);
			daq_ready <= '1';
			if daq_header = '1' then
				header := daq_data;
			elsif daq_trailer = '1' then
				trailer := daq_data;
				reading := false;
			elsif daq_valid = '1' then
				data(i) := daq_data;
				i := i + 1;
			end if;
		end loop;
		daq_ready <= '0';
    end procedure;
 

end amc13_simulation;