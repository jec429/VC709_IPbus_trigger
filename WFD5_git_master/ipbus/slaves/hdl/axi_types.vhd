library ieee;
use ieee.std_logic_1164.all; 

library work;

package axi is
  type axi_stream is record               -- Master-contolled lines in AXI4-Stream protocol
                       tvalid : std_logic;
                       tdata  : std_logic_vector(31 downto 0);
                       tstrb  : std_logic_vector(3 downto 0);
                       tkeep  : std_logic_vector(3 downto 0);
                       tlast  : std_logic;
                       tid    : std_logic_vector(3 downto 0);  -- Source ID
                       tdest  : std_logic_vector(3 downto 0);  -- Destination ID
                     end record axi_stream;
end axi;