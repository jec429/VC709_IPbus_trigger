library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library work;
use work.ipbus.all;
use work.axi.all;


entity ipbus_axi_stream is
  generic(
    id: natural;
    addr_width: natural
  );
  port (
    clk       : in  std_logic;          -- ipbus clock
    reset     : in  std_logic;          -- ipbus reset
    ipbus_in  : in  ipb_wbus;           -- fabric bus in
    ipbus_out : out ipb_rbus;           -- fabric bus out
    axi_str_in : in axi_stream;
    axi_str_in_tready: out std_logic;
    axi_str_out: out axi_stream;
    axi_str_out_tready: in std_logic
  );

end entity;

architecture rtl of ipbus_axi_stream is

  signal write_success: std_logic := '0';
  signal read_success: std_logic := '0';
  signal do_write: std_logic;
  signal do_read: std_logic;
  signal ack: std_logic;

  signal write_success_follow: std_logic;

  attribute mark_debug : string;
  -- attribute mark_debug of read_success: signal is "true";
  -- attribute mark_debug of write_success: signal is "true";
  -- attribute mark_debug of do_write: signal is "true";
  -- attribute mark_debug of do_read: signal is "true";

begin -- architecture ipbus_axi_stream

  do_write <= ipbus_in.ipb_strobe and ipbus_in.ipb_write;
  do_read <= ipbus_in.ipb_strobe and not ipbus_in.ipb_write;

  write_success <= do_write and axi_str_out_tready;
  read_success <= axi_str_in.tvalid and do_read and (OR_REDUCE(axi_str_in.tkeep) or not axi_str_in.tlast);

  -- write_success_follow is one clock behind write_success
  follow: process(clk)
  begin
    if rising_edge(clk) then
      write_success_follow <= write_success;
    end if;
  end process;

  axi_str_out.tid <= std_logic_vector(to_unsigned(id, 4));

  -- get tdest from ipbus address (not including lowest address bit, because that caused errors)
  axi_str_out.tdest(3) <= '0'; -- tdest is 4 bits; set highest to zero, get other three from ipbus address
  axi_str_out.tdest(2 downto 0) <= ipbus_in.ipb_addr(addr_width - 1 downto 1);

  -- tlast is high when do_write goes low after a write_success
  axi_str_out.tlast <= write_success_follow and not do_write;
  -- tvalid is high when do_write is high, plus one clock after to send the tlast
  axi_str_out.tvalid <= do_write or write_success_follow;

  -- make sure tkeep is only high when do_write is, so that the final tlast data is ignored
  gen_tkeep_out: for i in 0 to 3 generate
    axi_str_out.tkeep(i) <= do_write;
  end generate;

  axi_str_out.tstrb <= (others => '0');

  axi_str_in_tready <= do_read;

  -- zero out bytes there tkeep is low
  -- note: tkeep is per-byte, hence the inner loop
  gen_tkeep_in: for i in 0 to 3 generate
    gen_tkeep_in_inner: for j in 0 to 7 generate
      ipbus_out.ipb_rdata(8*i + j) <= axi_str_in.tdata(8*i + j) and (axi_str_in.tkeep(i) or not axi_str_in.tlast);
    end generate;
  end generate;

  axi_str_out.tdata <= ipbus_in.ipb_wdata;

  ack <= write_success or read_success;
  ipbus_out.ipb_ack <= ack;
  ipbus_out.ipb_err <= '0';

end architecture;
