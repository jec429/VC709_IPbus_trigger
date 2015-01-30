library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_arith.all;

entity eth_k7_1000basex_tb is

subtype byte is std_logic_vector(7 downto 0);
type data_buf is array (natural range <>) of byte;

-- hold all the signals for the axi protocol
type type_axi is
  record
    data: byte;
    valid: std_logic;
    last: std_logic;
    err: std_logic;
  end record;

end eth_k7_1000basex_tb;

architecture behave of eth_k7_1000basex_tb is
-- signal declarations
signal clk200: std_logic := '1';
signal clk125in_p: std_logic := '1';
signal clk125in_n: std_logic := '0';
signal clk125: std_logic;

signal phy_tx_to_rx_p, phy_tx_to_rx_n: std_logic;

signal rst: std_logic := '1';
signal locked: std_logic;

signal tx_axi : type_axi := (x"00", others => '0');
signal rx_axi : type_axi := (x"00", others => '0');
signal tx_axi_rdy : std_logic;


procedure transmit_data(signal clk: in std_logic;
                        signal tx_axi: out type_axi;
                        signal tx_axi_rdy: in std_logic;
                        data: in data_buf
                       ) is
-- variables
variable byte_num: natural := 0;
variable prev_rdy: boolean := false;
variable done: boolean := false;
begin
  while (byte_num < data'length) loop
    wait until rising_edge(clk);
      if (byte_num = (data'length - 1)) then
        tx_axi.last <= '1';
      end if;
      tx_axi.data <= data(byte_num);
      tx_axi.valid <= '1';
      wait for 1ns;
      if (tx_axi_rdy = '1') then
        byte_num := byte_num + 1;
      end if;
  end loop;
  prev_rdy := (tx_axi_rdy = '1');
  while (not done) loop
    wait until rising_edge(clk);
    if (prev_rdy) then
      tx_axi.valid <= '0';
      tx_axi.last <= '0';
      done := true;
    end if;
    wait for 1ns;
    prev_rdy := (tx_axi_rdy = '1');
  end loop;
end procedure;

procedure receive_data(signal clk: in std_logic;
                        signal rx_axi: in type_axi;
                        data: out data_buf;
                        signal got_data: out std_logic
                       ) is
-- variables
variable done: boolean := false;
variable byte_num: natural := 0;
begin
  got_data <= '0';
  while (not done) loop
    wait until rising_edge(clk);
      wait for 1ns;
      if (rx_axi.valid = '1') then
        data(byte_num) := rx_axi.data;
        byte_num := byte_num + 1;
      end if;
      if (rx_axi.err = '1') then
        report "Error bit in rx_axi while receiving ethernet data";
      end if;
      done := (rx_axi.last = '1');
  end loop;
  wait until rising_edge(clk);
  got_data <= '1';
end procedure;

function rand_data(n : positive)
  return data_buf is
  variable seed1, seed2: positive;
  variable rand: real;
  variable range_of_rand : real := 255.0;
  variable data : data_buf((n-1) downto 0);
begin
  for i in data'range loop
    uniform(seed1, seed2, rand);
    data(i) := conv_std_logic_vector(integer(rand * range_of_rand), 8);
   end loop;
   return data;
end rand_data;

shared variable rxdata: data_buf(1517 downto 0); -- maximum ethernet frame size
signal recd_data: std_logic := '0';

begin
  -- clocks
  clk200 <= not clk200 after 2.5 ns;
  clk125in_p <= not clk125in_p after 4ns;
  clk125in_n <= not clk125in_n after 4ns;
  
  receive_data(clk125, rx_axi, rxdata, recd_data);

  dummy_test: process
    variable txdata: data_buf(127 downto 0) := rand_data(128);

  begin
    wait for 100 ns;
    rst <= '0';
    wait for 20us;

--    txdata := (x"00", x"11", x"22", x"33", x"44");
    transmit_data(clk125, tx_axi, tx_axi_rdy, txdata);
    wait until rising_edge(recd_data);
    assert(txdata = rxdata((txdata'length-1) downto 0))
     report "Data read back does not equal data written" severity failure;

    wait for 10ms;
  end process;

  dut: entity work.eth_k7_1000basex
    port map(
      gt_clkp => clk125in_p, -- clock running the gtx transceiver
      gt_clkn => clk125in_n,
      gt_txp => phy_tx_to_rx_p, -- loop back tx to rx for testing
      gt_txn => phy_tx_to_rx_n,
      gt_rxp => phy_tx_to_rx_p,
      gt_rxn => phy_tx_to_rx_n,
      sig_detn => '0', -- signal always present
      clk200_bufg_in => clk200, -- independent clock input for PHY
      clk125_out => clk125, -- Tranciever clock output from PHY
      rsti => rst, -- reset in 200MHz clock domain
      locked => locked, -- MMCM locked output
      -- AXI-style input and output
      tx_data => tx_axi.data,
      tx_valid => tx_axi.valid,
      tx_last => tx_axi.last,
      tx_error => tx_axi.err,
      tx_ready => tx_axi_rdy,
      rx_data => rx_axi.data,
      rx_valid => rx_axi.valid,
      rx_last => rx_axi.last,
      rx_error => rx_axi.err
      );
end behave;

