--  User ipbus space for distributing an IPbus slave instance to user logic
--
-- generic addr_width defines number of significant address bits
--
-- Occupies addr_width bits of ipbus address space
-- This RAM cannot be used with 100% bus utilisation due to the wait state

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.ipbus.all;

entity ipbus_user is
	generic(addr_width : positive);
	port(
		clk: in STD_LOGIC;
		reset: in STD_LOGIC;
		ipbus_in: in ipb_wbus;
		ipbus_out: out ipb_rbus;
		-- "user_ipb" interface
        user_ipb_clk : out std_logic;                       -- programming clock
        user_ipb_strobe : out std_logic;                       -- this ipb space is selected for an I/O operation 
        user_ipb_addr : out std_logic_vector(31 downto 0);   -- slave address, memory or register
        user_ipb_write : out std_logic;		                -- this is a write operation
        user_ipb_wdata : out std_logic_vector(31 downto 0);	-- data to write for write operations
        user_ipb_rdata : in std_logic_vector(31 downto 0);	-- data returned for read operations
        user_ipb_ack : in std_logic;			            -- 'write' data has been stored, 'read' data is ready
        user_ipb_err : in std_logic			            -- '1' if error, '0' if OK?
	);
	
end ipbus_user;

architecture rtl of ipbus_user is

begin

	user_ipb_clk <= clk;					-- programming clock
	user_ipb_strobe <= ipbus_in.ipb_strobe;  	-- this ipb space is selected for an I/O operation 
	user_ipb_addr <= ipbus_in.ipb_addr;	       	-- slave address, memory or register
	user_ipb_write <= ipbus_in.ipb_write;		-- this is a write operation
	user_ipb_wdata <= ipbus_in.ipb_wdata;		-- data to write for write operations
	-- outputs
	ipbus_out.ipb_rdata <= user_ipb_rdata;		-- data returned for read operations
	ipbus_out.ipb_ack <= user_ipb_ack;			-- 'write' data has been stored, 'read' data is ready
	ipbus_out.ipb_err <= user_ipb_err;			-- '1' if error, '0' if OK?

end rtl;
