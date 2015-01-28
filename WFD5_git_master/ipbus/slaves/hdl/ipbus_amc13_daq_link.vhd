library ieee;
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all;
use ieee.std_logic_misc.all;

library work;
use work.ipbus.all;
use work.axi.all;


entity ipbus_amc13_daq_link is
  port (
    clk       : in  std_logic;          -- ipbus clock
    reset     : in  std_logic;          -- ipbus reset
    ipbus_in  : in  ipb_wbus;           -- fabric bus in
    ipbus_out : out ipb_rbus;          -- fabric bus out
    daq_valid : out std_logic := '0';
    daq_header : out std_logic := '0';
    daq_trailer : out std_logic := '0';
    daq_data : out std_logic_vector(63 downto 0);
    daq_ready : in std_logic;
    debug: out std_logic_vector(7 downto 0)
  );

end entity;

architecture rtl of ipbus_amc13_daq_link is

  function to_std_logic(L: boolean) return std_logic is
  begin
      if L then
          return('1');
      else
          return('0');
      end if;
  end function to_std_logic; 

  constant word_1 : std_logic := '0';
  constant word_2 : std_logic := '1';

  signal state : std_logic := word_1;

  signal write_header: std_logic := '0';
  signal write_trailer: std_logic := '0';
  signal write_data: std_logic := '0';

  signal do_write: std_logic;
  signal ack: std_logic;
  signal sel: integer;
  signal header, trailer, data : std_logic;
  signal daq_valid_int, daq_header_int, daq_trailer_int : std_logic := '0';
  signal daq_good_int : std_logic;

begin  -- architecture ipbus_amc13_daq_link

  sel <= to_integer(unsigned(ipbus_in.ipb_addr(1 downto 0)));
  do_write <= ipbus_in.ipb_strobe and ipbus_in.ipb_write;

  header <= '1' when sel = 0 else '0';
  data <= '1' when sel = 1 else '0';
  trailer <= '1' when sel = 2 else '0';

  ack <= (ipbus_in.ipb_strobe and to_std_logic(state = word_1)) or 
         (to_std_logic(state = word_2) and daq_ready and daq_good_int);

  write_header <= do_write and header;
  write_data <= do_write and data;
  write_trailer <= do_write and trailer;

  daq_valid <= daq_valid_int;
  daq_header <= daq_header_int;
  daq_trailer <= daq_trailer_int;
  daq_good_int <= daq_valid_int or daq_header_int or daq_trailer_int;

  process(clk)
  begin
    if rising_edge(clk) then
      if state = word_1 then
        if do_write = '1' then
          daq_data(63 downto 32) <= ipbus_in.ipb_wdata;
          state <= word_2;
        end if;
      else -- state = word_2
        if do_write = '1' then
          daq_data(31 downto 0) <= ipbus_in.ipb_wdata;
          daq_header_int <= write_header;
          daq_valid_int <= write_data or write_header or write_trailer;
          daq_trailer_int <= write_trailer;
        end if;
        if daq_ready = '1' and (daq_good_int = '1') then
          state <= word_1;
          daq_header_int <= '0';
          daq_valid_int <= '0';
          daq_trailer_int <= '0';
        end if;
      end if;

    end if;
  end process;

  ipbus_out.ipb_ack <= ack;
  ipbus_out.ipb_err <= '0';

  debug(0) <= daq_header_int;
  debug(1) <= do_write;
  debug(2) <= write_header;
  debug(3) <= ack;
  debug(4) <= state;
  debug(5) <= daq_ready;
  debug(6) <= clk;


end architecture;
