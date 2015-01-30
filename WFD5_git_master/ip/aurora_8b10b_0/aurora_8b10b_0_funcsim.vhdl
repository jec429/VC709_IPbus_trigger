-- Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
-- Date        : Fri Jul 18 14:10:45 2014
-- Host        : PC210 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/aurora_8b10b_0/aurora_8b10b_0_funcsim.vhdl
-- Design      : aurora_8b10b_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_AXI_TO_LL is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    sys_reset_out : in STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    tx_dst_rdy : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_AXI_TO_LL;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_AXI_TO_LL is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal new_pkt_r : STD_LOGIC;
begin
  O1 <= \^o1\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
new_pkt_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2020202000302020"
    )
    port map (
      I0 => \^o1\,
      I1 => sys_reset_out,
      I2 => I1,
      I3 => s_axi_tx_tlast,
      I4 => s_axi_tx_tvalid,
      I5 => tx_dst_rdy,
      O => new_pkt_r
    );
new_pkt_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => new_pkt_r,
      Q => \^o1\,
      R => \<const0>\
    );
sof_to_eof_1_r_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_tx_tvalid,
      I2 => tx_dst_rdy,
      O => O2
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_CHANNEL_ERR_DETECT is
  port (
    soft_err : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    reset_channel_i : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    lane_up : in STD_LOGIC;
    hard_err_i : in STD_LOGIC;
    power_down : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end aurora_8b10b_0aurora_8b10b_0_CHANNEL_ERR_DETECT;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_CHANNEL_ERR_DETECT is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal channel_soft_err_c : STD_LOGIC;
  signal hard_err_r : STD_LOGIC;
  signal lane_up_r : STD_LOGIC;
  signal n_0_RESET_CHANNEL_i_1 : STD_LOGIC;
  signal soft_err_r : STD_LOGIC_VECTOR ( 0 to 1 );
begin
CHANNEL_HARD_ERR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => hard_err_r,
      Q => hard_err,
      R => \<const0>\
    );
CHANNEL_SOFT_ERR_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => soft_err_r(1),
      I1 => soft_err_r(0),
      O => channel_soft_err_c
    );
CHANNEL_SOFT_ERR_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => channel_soft_err_c,
      Q => soft_err,
      R => \<const0>\
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
RESET_CHANNEL_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => power_down,
      I1 => lane_up_r,
      O => n_0_RESET_CHANNEL_i_1
    );
RESET_CHANNEL_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_0_RESET_CHANNEL_i_1,
      Q => reset_channel_i,
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
hard_err_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => hard_err_i,
      Q => hard_err_r,
      R => \<const0>\
    );
lane_up_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => lane_up,
      Q => lane_up_r,
      R => \<const0>\
    );
\soft_err_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(1),
      Q => soft_err_r(0),
      R => \<const0>\
    );
\soft_err_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(0),
      Q => soft_err_r(1),
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_CHANNEL_INIT_SM is
  port (
    reset_lanes_i : out STD_LOGIC;
    gen_ver_i : out STD_LOGIC;
    wait_for_lane_up_r : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    I5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reset_i : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    got_v_i : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_reset_out : in STD_LOGIC;
    txver_count_r0 : in STD_LOGIC;
    in_frame_r : in STD_LOGIC;
    in_frame_c : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_CHANNEL_INIT_SM;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_CHANNEL_INIT_SM is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal GND_2 : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal START_RX0 : STD_LOGIC;
  signal VCC_2 : STD_LOGIC;
  signal all_lanes_v_r : STD_LOGIC;
  signal bad_v_r : STD_LOGIC;
  signal bad_v_r0 : STD_LOGIC;
  signal free_count_r0 : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \free_count_r_reg__0\ : STD_LOGIC_VECTOR ( 0 to 10 );
  signal \^gen_ver_i\ : STD_LOGIC;
  signal got_first_v_r : STD_LOGIC;
  signal \n_0_free_count_r[0]_i_2\ : STD_LOGIC;
  signal \n_0_free_count_r[2]_i_2\ : STD_LOGIC;
  signal \n_0_free_count_r[6]_i_1\ : STD_LOGIC;
  signal \n_0_free_count_r[9]_i_1\ : STD_LOGIC;
  signal n_0_got_first_v_r_i_1 : STD_LOGIC;
  signal \n_0_rxver_count_r_reg[1]_srl2\ : STD_LOGIC;
  signal \n_0_rxver_count_r_reg[1]_srl2_i_1\ : STD_LOGIC;
  signal \n_0_txver_count_r_reg[6]_srl7\ : STD_LOGIC;
  signal \n_0_v_count_r_reg[14]_srl15\ : STD_LOGIC;
  signal \n_0_verify_watchdog_r_reg[14]_srl15\ : STD_LOGIC;
  signal \n_0_verify_watchdog_r_reg[14]_srl15_i_1\ : STD_LOGIC;
  signal next_ready_c : STD_LOGIC;
  signal next_verify_c : STD_LOGIC;
  signal p_2_out : STD_LOGIC_VECTOR ( 15 to 15 );
  signal ready_r : STD_LOGIC;
  signal ready_r2 : STD_LOGIC;
  signal reset_lanes_c : STD_LOGIC;
  signal rxver_count_r : STD_LOGIC_VECTOR ( 2 to 2 );
  signal txver_count_r : STD_LOGIC_VECTOR ( 7 to 7 );
  signal v_count_r : STD_LOGIC_VECTOR ( 15 to 15 );
  signal verify_watchdog_r : STD_LOGIC_VECTOR ( 15 to 15 );
  signal \^wait_for_lane_up_r\ : STD_LOGIC;
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of FRAME_ERR_i_1 : label is true;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of FRAME_ERR_i_1 : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \IN_FRAME[1]_i_1\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of bad_v_r_i_1 : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \free_count_r[0]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \free_count_r[0]_i_2\ : label is "soft_lutpair130";
  attribute RETAIN_INVERTER of \free_count_r[10]_i_1\ : label is true;
  attribute SOFT_HLUTNM of \free_count_r[10]_i_1\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \free_count_r[1]_i_1\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \free_count_r[2]_i_2\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \free_count_r[3]_i_1\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \free_count_r[6]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \free_count_r[7]_i_1\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \free_count_r[8]_i_1\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \free_count_r[9]_i_1\ : label is "soft_lutpair137";
  attribute counter : integer;
  attribute counter of \free_count_r_reg[0]\ : label is 26;
  attribute counter of \free_count_r_reg[10]\ : label is 26;
  attribute counter of \free_count_r_reg[1]\ : label is 26;
  attribute counter of \free_count_r_reg[2]\ : label is 26;
  attribute counter of \free_count_r_reg[3]\ : label is 26;
  attribute counter of \free_count_r_reg[4]\ : label is 26;
  attribute counter of \free_count_r_reg[5]\ : label is 26;
  attribute counter of \free_count_r_reg[6]\ : label is 26;
  attribute counter of \free_count_r_reg[7]\ : label is 26;
  attribute counter of \free_count_r_reg[8]\ : label is 26;
  attribute counter of \free_count_r_reg[9]\ : label is 26;
  attribute SOFT_HLUTNM of \ready_r_i_1__0\ : label is "soft_lutpair132";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_lanes_flop_i : label is "FD";
  attribute box_type : string;
  attribute box_type of reset_lanes_flop_i : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \rxver_count_r_reg[1]_srl2\ : label is "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/rxver_count_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \rxver_count_r_reg[1]_srl2\ : label is "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/rxver_count_r_reg[1]_srl2 ";
  attribute srl_bus_name of \txver_count_r_reg[6]_srl7\ : label is "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/txver_count_r_reg ";
  attribute srl_name of \txver_count_r_reg[6]_srl7\ : label is "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/txver_count_r_reg[6]_srl7 ";
  attribute srl_bus_name of \v_count_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/v_count_r_reg ";
  attribute srl_name of \v_count_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/v_count_r_reg[14]_srl15 ";
  attribute SOFT_HLUTNM of \v_count_r_reg[14]_srl15_i_1\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of verify_r_i_2 : label is "soft_lutpair132";
  attribute srl_bus_name of \verify_watchdog_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg ";
  attribute srl_name of \verify_watchdog_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_global_logic_i/channel_init_sm_i/verify_watchdog_r_reg[14]_srl15 ";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  gen_ver_i <= \^gen_ver_i\;
  wait_for_lane_up_r <= \^wait_for_lane_up_r\;
CHANNEL_UP_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => ready_r2,
      Q => \^o1\,
      R => \<const0>\
    );
FRAME_ERR_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o2\,
      O => SR(0)
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
GND_1: unisim.vcomponents.GND
    port map (
      G => GND_2
    );
\IN_FRAME[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o2\,
      I1 => in_frame_r,
      O => I5(1)
    );
\IN_FRAME[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^o2\,
      I1 => in_frame_c(0),
      O => I5(0)
    );
START_RX_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^wait_for_lane_up_r\,
      O => START_RX0
    );
START_RX_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => START_RX0,
      Q => \^o2\,
      R => sys_reset_out
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
VCC_1: unisim.vcomponents.VCC
    port map (
      P => VCC_2
    );
all_lanes_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => got_v_i,
      Q => all_lanes_v_r,
      R => \<const0>\
    );
bad_v_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
    port map (
      I0 => got_first_v_r,
      I1 => v_count_r(15),
      I2 => all_lanes_v_r,
      O => bad_v_r0
    );
bad_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => bad_v_r0,
      Q => bad_v_r,
      R => \<const0>\
    );
\free_count_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9A"
    )
    port map (
      I0 => \free_count_r_reg__0\(0),
      I1 => \free_count_r_reg__0\(1),
      I2 => \n_0_free_count_r[0]_i_2\,
      I3 => \free_count_r_reg__0\(2),
      O => free_count_r0(10)
    );
\free_count_r[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => \n_0_free_count_r[2]_i_2\,
      I1 => \free_count_r_reg__0\(4),
      I2 => \free_count_r_reg__0\(3),
      I3 => \free_count_r_reg__0\(6),
      I4 => \free_count_r_reg__0\(5),
      O => \n_0_free_count_r[0]_i_2\
    );
\free_count_r[10]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \free_count_r_reg__0\(10),
      O => free_count_r0(0)
    );
\free_count_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
    port map (
      I0 => \free_count_r_reg__0\(1),
      I1 => \free_count_r_reg__0\(2),
      I2 => \n_0_free_count_r[0]_i_2\,
      O => free_count_r0(9)
    );
\free_count_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => \free_count_r_reg__0\(2),
      I1 => \free_count_r_reg__0\(5),
      I2 => \free_count_r_reg__0\(6),
      I3 => \free_count_r_reg__0\(3),
      I4 => \free_count_r_reg__0\(4),
      I5 => \n_0_free_count_r[2]_i_2\,
      O => free_count_r0(8)
    );
\free_count_r[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \free_count_r_reg__0\(7),
      I1 => \free_count_r_reg__0\(10),
      I2 => \free_count_r_reg__0\(9),
      I3 => \free_count_r_reg__0\(8),
      O => \n_0_free_count_r[2]_i_2\
    );
\free_count_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => \free_count_r_reg__0\(3),
      I1 => \free_count_r_reg__0\(4),
      I2 => \n_0_free_count_r[2]_i_2\,
      I3 => \free_count_r_reg__0\(6),
      I4 => \free_count_r_reg__0\(5),
      O => free_count_r0(7)
    );
\free_count_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => \free_count_r_reg__0\(4),
      I1 => \free_count_r_reg__0\(5),
      I2 => \free_count_r_reg__0\(6),
      I3 => \n_0_free_count_r[2]_i_2\,
      O => free_count_r0(6)
    );
\free_count_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => \free_count_r_reg__0\(5),
      I1 => \free_count_r_reg__0\(7),
      I2 => \free_count_r_reg__0\(10),
      I3 => \free_count_r_reg__0\(9),
      I4 => \free_count_r_reg__0\(8),
      I5 => \free_count_r_reg__0\(6),
      O => free_count_r0(5)
    );
\free_count_r[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => \free_count_r_reg__0\(6),
      I1 => \free_count_r_reg__0\(8),
      I2 => \free_count_r_reg__0\(9),
      I3 => \free_count_r_reg__0\(10),
      I4 => \free_count_r_reg__0\(7),
      O => \n_0_free_count_r[6]_i_1\
    );
\free_count_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => \free_count_r_reg__0\(7),
      I1 => \free_count_r_reg__0\(10),
      I2 => \free_count_r_reg__0\(9),
      I3 => \free_count_r_reg__0\(8),
      O => free_count_r0(3)
    );
\free_count_r[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
    port map (
      I0 => \free_count_r_reg__0\(10),
      I1 => \free_count_r_reg__0\(9),
      I2 => \free_count_r_reg__0\(8),
      O => free_count_r0(2)
    );
\free_count_r[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \free_count_r_reg__0\(10),
      I1 => \free_count_r_reg__0\(9),
      O => \n_0_free_count_r[9]_i_1\
    );
\free_count_r_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => free_count_r0(10),
      Q => \free_count_r_reg__0\(0),
      S => SS(0)
    );
\free_count_r_reg[10]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => free_count_r0(0),
      Q => \free_count_r_reg__0\(10),
      S => SS(0)
    );
\free_count_r_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => free_count_r0(9),
      Q => \free_count_r_reg__0\(1),
      S => SS(0)
    );
\free_count_r_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => free_count_r0(8),
      Q => \free_count_r_reg__0\(2),
      S => SS(0)
    );
\free_count_r_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => free_count_r0(7),
      Q => \free_count_r_reg__0\(3),
      S => SS(0)
    );
\free_count_r_reg[4]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => free_count_r0(6),
      Q => \free_count_r_reg__0\(4),
      S => SS(0)
    );
\free_count_r_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => free_count_r0(5),
      Q => \free_count_r_reg__0\(5),
      S => SS(0)
    );
\free_count_r_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_free_count_r[6]_i_1\,
      Q => \free_count_r_reg__0\(6),
      S => SS(0)
    );
\free_count_r_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => free_count_r0(3),
      Q => \free_count_r_reg__0\(7),
      S => SS(0)
    );
\free_count_r_reg[8]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => free_count_r0(2),
      Q => \free_count_r_reg__0\(8),
      S => SS(0)
    );
\free_count_r_reg[9]\: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_free_count_r[9]_i_1\,
      Q => \free_count_r_reg__0\(9),
      S => SS(0)
    );
gen_cc_flop_0_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o1\,
      O => reset_i
    );
got_first_v_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => \^gen_ver_i\,
      I1 => got_first_v_r,
      I2 => all_lanes_v_r,
      O => n_0_got_first_v_r_i_1
    );
got_first_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_0_got_first_v_r_i_1,
      Q => got_first_v_r,
      R => \<const0>\
    );
ready_r2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => ready_r,
      Q => ready_r2,
      R => \<const0>\
    );
\ready_r_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => ready_r,
      I1 => rxver_count_r(2),
      I2 => txver_count_r(7),
      I3 => \^gen_ver_i\,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_ready_c,
      Q => ready_r,
      R => SS(0)
    );
reset_lanes_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => reset_lanes_c,
      Q => reset_lanes_i,
      R => GND_2
    );
reset_lanes_flop_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF200"
    )
    port map (
      I0 => bad_v_r,
      I1 => rxver_count_r(2),
      I2 => verify_watchdog_r(15),
      I3 => \^gen_ver_i\,
      I4 => I1,
      O => reset_lanes_c
    );
\rxver_count_r_reg[1]_srl2\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const1>\,
      A1 => \<const0>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \n_0_rxver_count_r_reg[1]_srl2_i_1\,
      CLK => user_clk,
      D => \^gen_ver_i\,
      Q => \n_0_rxver_count_r_reg[1]_srl2\
    );
\rxver_count_r_reg[1]_srl2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
    port map (
      I0 => v_count_r(15),
      I1 => all_lanes_v_r,
      I2 => \^gen_ver_i\,
      O => \n_0_rxver_count_r_reg[1]_srl2_i_1\
    );
\rxver_count_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_rxver_count_r_reg[1]_srl2_i_1\,
      D => \n_0_rxver_count_r_reg[1]_srl2\,
      Q => rxver_count_r(2),
      R => \<const0>\
    );
\txver_count_r_reg[6]_srl7\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const1>\,
      A3 => \<const0>\,
      CE => txver_count_r0,
      CLK => user_clk,
      D => \^gen_ver_i\,
      Q => \n_0_txver_count_r_reg[6]_srl7\
    );
\txver_count_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => txver_count_r0,
      D => \n_0_txver_count_r_reg[6]_srl7\,
      Q => txver_count_r(7),
      R => \<const0>\
    );
\v_count_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const1>\,
      A3 => \<const1>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => p_2_out(15),
      Q => \n_0_v_count_r_reg[14]_srl15\
    );
\v_count_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
    port map (
      I0 => v_count_r(15),
      I1 => \^gen_ver_i\,
      I2 => got_first_v_r,
      I3 => all_lanes_v_r,
      O => p_2_out(15)
    );
\v_count_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_v_count_r_reg[14]_srl15\,
      Q => v_count_r(15),
      R => \<const0>\
    );
verify_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AEEE"
    )
    port map (
      I0 => \^wait_for_lane_up_r\,
      I1 => \^gen_ver_i\,
      I2 => rxver_count_r(2),
      I3 => txver_count_r(7),
      O => next_verify_c
    );
verify_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_verify_c,
      Q => \^gen_ver_i\,
      R => SS(0)
    );
\verify_watchdog_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const1>\,
      A3 => \<const1>\,
      CE => \n_0_verify_watchdog_r_reg[14]_srl15_i_1\,
      CLK => user_clk,
      D => \^gen_ver_i\,
      Q => \n_0_verify_watchdog_r_reg[14]_srl15\
    );
\verify_watchdog_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0100FFFF"
    )
    port map (
      I0 => \free_count_r_reg__0\(1),
      I1 => \free_count_r_reg__0\(0),
      I2 => \free_count_r_reg__0\(2),
      I3 => \n_0_free_count_r[0]_i_2\,
      I4 => \^gen_ver_i\,
      O => \n_0_verify_watchdog_r_reg[14]_srl15_i_1\
    );
\verify_watchdog_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_verify_watchdog_r_reg[14]_srl15_i_1\,
      D => \n_0_verify_watchdog_r_reg[14]_srl15\,
      Q => verify_watchdog_r(15),
      R => \<const0>\
    );
wait_for_lane_up_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => SS(0),
      Q => \^wait_for_lane_up_r\,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_ERR_DETECT_4BYTE is
  port (
    ready_r0 : out STD_LOGIC;
    hard_err_i : out STD_LOGIC;
    O20 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    hard_err_gt0 : in STD_LOGIC;
    reset_lanes_i : in STD_LOGIC;
    enable_err_detect_i : in STD_LOGIC;
    I15 : in STD_LOGIC;
    I16 : in STD_LOGIC;
    I17 : in STD_LOGIC;
    I18 : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_ERR_DETECT_4BYTE;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_ERR_DETECT_4BYTE is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal SOFT_ERR0 : STD_LOGIC;
  signal cnt_good_code_r : STD_LOGIC;
  signal cnt_soft_err_r : STD_LOGIC;
  signal err_cnt_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \good_cnt_r_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal hard_err_frm_soft_err : STD_LOGIC;
  signal hard_err_gt : STD_LOGIC;
  signal \n_0_SOFT_ERR[1]_i_1\ : STD_LOGIC;
  signal n_0_cnt_good_code_r_i_2 : STD_LOGIC;
  signal n_0_cnt_good_code_r_i_3 : STD_LOGIC;
  signal \n_0_err_cnt_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_err_cnt_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_err_cnt_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_err_cnt_r[2]_i_2\ : STD_LOGIC;
  signal \n_0_good_cnt_r[3]_i_1\ : STD_LOGIC;
  signal next_good_code_c : STD_LOGIC;
  signal next_soft_err_c : STD_LOGIC;
  signal next_start_c : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in11_in : STD_LOGIC;
  signal soft_err_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal start_r : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \SOFT_ERR[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of align_r_i_1 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of cnt_good_code_r_i_2 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of cnt_good_code_r_i_3 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \err_cnt_r[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \err_cnt_r[2]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \err_cnt_r[2]_i_2\ : label is "soft_lutpair70";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \good_cnt_r[0]_i_1\ : label is true;
  attribute SOFT_HLUTNM of \good_cnt_r[0]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \good_cnt_r[1]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \good_cnt_r[2]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \good_cnt_r[3]_i_2\ : label is "soft_lutpair70";
  attribute counter : integer;
  attribute counter of \good_cnt_r_reg[0]\ : label is 14;
  attribute counter of \good_cnt_r_reg[1]\ : label is 14;
  attribute counter of \good_cnt_r_reg[2]\ : label is 14;
  attribute counter of \good_cnt_r_reg[3]\ : label is 14;
  attribute SOFT_HLUTNM of hard_err_r_i_1 : label is "soft_lutpair71";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\SOFT_ERR[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => soft_err_r(1),
      I1 => soft_err_r(0),
      O => SOFT_ERR0
    );
\SOFT_ERR[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => soft_err_r(3),
      I1 => soft_err_r(2),
      O => \n_0_SOFT_ERR[1]_i_1\
    );
\SOFT_ERR_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => SOFT_ERR0,
      Q => O20(1),
      R => \<const0>\
    );
\SOFT_ERR_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_SOFT_ERR[1]_i_1\,
      Q => O20(0),
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
align_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => reset_lanes_i,
      I1 => p_1_in11_in,
      I2 => hard_err_frm_soft_err,
      I3 => hard_err_gt,
      O => ready_r0
    );
cnt_good_code_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA2A00"
    )
    port map (
      I0 => n_0_cnt_good_code_r_i_2,
      I1 => n_0_cnt_good_code_r_i_3,
      I2 => \good_cnt_r_reg__0\(3),
      I3 => cnt_good_code_r,
      I4 => cnt_soft_err_r,
      O => next_good_code_c
    );
cnt_good_code_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => soft_err_r(0),
      I1 => soft_err_r(1),
      I2 => soft_err_r(2),
      I3 => soft_err_r(3),
      O => n_0_cnt_good_code_r_i_2
    );
cnt_good_code_r_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \good_cnt_r_reg__0\(2),
      I1 => \good_cnt_r_reg__0\(1),
      I2 => \good_cnt_r_reg__0\(0),
      O => n_0_cnt_good_code_r_i_3
    );
cnt_good_code_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_good_code_c,
      Q => cnt_good_code_r,
      R => I1
    );
cnt_soft_err_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => n_0_cnt_good_code_r_i_2,
      I1 => cnt_soft_err_r,
      I2 => start_r,
      I3 => cnt_good_code_r,
      O => next_soft_err_c
    );
cnt_soft_err_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_soft_err_c,
      Q => cnt_soft_err_r,
      R => I1
    );
\err_cnt_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA5AA4"
    )
    port map (
      I0 => err_cnt_r(0),
      I1 => err_cnt_r(1),
      I2 => cnt_soft_err_r,
      I3 => \n_0_err_cnt_r[2]_i_2\,
      I4 => p_1_in11_in,
      O => \n_0_err_cnt_r[0]_i_1\
    );
\err_cnt_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCC6CC8"
    )
    port map (
      I0 => err_cnt_r(0),
      I1 => err_cnt_r(1),
      I2 => cnt_soft_err_r,
      I3 => \n_0_err_cnt_r[2]_i_2\,
      I4 => p_1_in11_in,
      O => \n_0_err_cnt_r[1]_i_1\
    );
\err_cnt_r[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF8000"
    )
    port map (
      I0 => err_cnt_r(0),
      I1 => err_cnt_r(1),
      I2 => cnt_soft_err_r,
      I3 => \n_0_err_cnt_r[2]_i_2\,
      I4 => p_1_in11_in,
      O => \n_0_err_cnt_r[2]_i_1\
    );
\err_cnt_r[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEEF"
    )
    port map (
      I0 => \good_cnt_r_reg__0\(1),
      I1 => \good_cnt_r_reg__0\(0),
      I2 => \good_cnt_r_reg__0\(3),
      I3 => \good_cnt_r_reg__0\(2),
      O => \n_0_err_cnt_r[2]_i_2\
    );
\err_cnt_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_err_cnt_r[0]_i_1\,
      Q => err_cnt_r(0),
      R => I1
    );
\err_cnt_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_err_cnt_r[1]_i_1\,
      Q => err_cnt_r(1),
      R => I1
    );
\err_cnt_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_err_cnt_r[2]_i_1\,
      Q => p_1_in11_in,
      R => I1
    );
\good_cnt_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \good_cnt_r_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\good_cnt_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \good_cnt_r_reg__0\(0),
      I1 => \good_cnt_r_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\good_cnt_r[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \good_cnt_r_reg__0\(0),
      I1 => \good_cnt_r_reg__0\(1),
      I2 => \good_cnt_r_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\good_cnt_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
    port map (
      I0 => start_r,
      I1 => cnt_soft_err_r,
      I2 => enable_err_detect_i,
      I3 => cnt_good_code_r,
      O => \n_0_good_cnt_r[3]_i_1\
    );
\good_cnt_r[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \good_cnt_r_reg__0\(3),
      I1 => \good_cnt_r_reg__0\(0),
      I2 => \good_cnt_r_reg__0\(1),
      I3 => \good_cnt_r_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\good_cnt_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \p_0_in__0\(0),
      Q => \good_cnt_r_reg__0\(0),
      R => \n_0_good_cnt_r[3]_i_1\
    );
\good_cnt_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \p_0_in__0\(1),
      Q => \good_cnt_r_reg__0\(1),
      R => \n_0_good_cnt_r[3]_i_1\
    );
\good_cnt_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \p_0_in__0\(2),
      Q => \good_cnt_r_reg__0\(2),
      R => \n_0_good_cnt_r[3]_i_1\
    );
\good_cnt_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \p_0_in__0\(3),
      Q => \good_cnt_r_reg__0\(3),
      R => \n_0_good_cnt_r[3]_i_1\
    );
hard_err_frm_soft_err_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_1_in11_in,
      Q => hard_err_frm_soft_err,
      R => I1
    );
hard_err_gt_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => hard_err_gt0,
      Q => hard_err_gt,
      R => I1
    );
hard_err_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => hard_err_gt,
      I1 => hard_err_frm_soft_err,
      I2 => p_1_in11_in,
      O => hard_err_i
    );
\soft_err_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I15,
      Q => soft_err_r(0),
      R => I1
    );
\soft_err_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I16,
      Q => soft_err_r(1),
      R => I1
    );
\soft_err_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I17,
      Q => soft_err_r(2),
      R => I1
    );
\soft_err_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I18,
      Q => soft_err_r(3),
      R => I1
    );
start_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8888888"
    )
    port map (
      I0 => n_0_cnt_good_code_r_i_2,
      I1 => start_r,
      I2 => n_0_cnt_good_code_r_i_3,
      I3 => \good_cnt_r_reg__0\(3),
      I4 => cnt_good_code_r,
      O => next_start_c
    );
start_r_reg: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_start_c,
      Q => start_r,
      S => I1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_IDLE_AND_VER_GEN is
  port (
    I10 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gen_a_i : out STD_LOGIC;
    I12 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    I11 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    txver_count_r0 : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    gen_ver_i : in STD_LOGIC;
    sys_reset_out : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_IDLE_AND_VER_GEN;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_IDLE_AND_VER_GEN is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal D0 : STD_LOGIC;
  signal GND_2 : STD_LOGIC;
  signal VCC_2 : STD_LOGIC;
  signal did_ver_i : STD_LOGIC;
  signal down_count_r : STD_LOGIC_VECTOR ( 0 to 2 );
  signal gen_a_flop_c : STD_LOGIC;
  signal gen_k_c : STD_LOGIC_VECTOR ( 1 to 3 );
  signal insert_ver_c : STD_LOGIC;
  signal \n_0_down_count_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_down_count_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_downcounter_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_downcounter_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_downcounter_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_downcounter_r_reg[0]\ : STD_LOGIC;
  signal \n_0_downcounter_r_reg[1]\ : STD_LOGIC;
  signal \n_0_downcounter_r_reg[2]\ : STD_LOGIC;
  signal n_0_gen_r_flop_0_i_i_1 : STD_LOGIC;
  signal \n_0_lfsr_reg[3]_i_1\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal prev_cycle_gen_ver_r : STD_LOGIC;
  signal recycle_gen_ver_c : STD_LOGIC;
  signal ver_counter_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \down_count_r[0]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \down_count_r[1]_i_1\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \downcounter_r[0]_i_1\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \downcounter_r[1]_i_1\ : label is "soft_lutpair126";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_a_flop_0_i : label is "FD";
  attribute box_type : string;
  attribute box_type of gen_a_flop_0_i : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of gen_a_flop_0_i_i_1 : label is "soft_lutpair125";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_0_i : label is "FD";
  attribute box_type of gen_k_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_1_i : label is "FD";
  attribute box_type of gen_k_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_2_i : label is "FD";
  attribute box_type of gen_k_flop_2_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_k_flop_3_i : label is "FD";
  attribute box_type of gen_k_flop_3_i : label is "PRIMITIVE";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of gen_k_flop_3_i_i_1 : label is true;
  attribute SOFT_HLUTNM of gen_k_flop_3_i_i_1 : label is "soft_lutpair129";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_0_i : label is "FD";
  attribute box_type of gen_r_flop_0_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_1_i : label is "FD";
  attribute box_type of gen_r_flop_1_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_2_i : label is "FD";
  attribute box_type of gen_r_flop_2_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_r_flop_3_i : label is "FD";
  attribute box_type of gen_r_flop_3_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_1_i : label is "FD";
  attribute box_type of gen_v_flop_1_i : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of gen_v_flop_1_i_i_1 : label is "soft_lutpair128";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_2_i : label is "FD";
  attribute box_type of gen_v_flop_2_i : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of gen_v_flop_3_i : label is "FD";
  attribute box_type of gen_v_flop_3_i : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \lfsr_reg[3]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \txver_count_r_reg[6]_srl7_i_1\ : label is "soft_lutpair125";
  attribute XILINX_LEGACY_PRIM of ver_counter_i : label is "SRL16";
  attribute box_type of ver_counter_i : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of ver_counter_i : label is "inst/\aurora_8b10b_0_global_logic_i/idle_and_ver_gen_i/ver_counter_i ";
  attribute SOFT_HLUTNM of ver_counter_i_i_1 : label is "soft_lutpair128";
begin
DID_VER_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => ver_counter_c,
      Q => did_ver_i,
      R => \<const0>\
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
GND_1: unisim.vcomponents.GND
    port map (
      G => GND_2
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
VCC_1: unisim.vcomponents.VCC
    port map (
      P => VCC_2
    );
\down_count_r[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => p_3_out(1),
      I1 => p_2_in,
      O => \n_0_down_count_r[0]_i_1\
    );
\down_count_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => p_3_out(1),
      I1 => p_2_in,
      O => \n_0_down_count_r[1]_i_1\
    );
\down_count_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_down_count_r[0]_i_1\,
      Q => down_count_r(0),
      R => \<const0>\
    );
\down_count_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_down_count_r[1]_i_1\,
      Q => down_count_r(1),
      R => \<const0>\
    );
\down_count_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => gen_k_c(3),
      Q => down_count_r(2),
      R => \<const0>\
    );
\downcounter_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0C2"
    )
    port map (
      I0 => down_count_r(0),
      I1 => \n_0_downcounter_r_reg[2]\,
      I2 => \n_0_downcounter_r_reg[0]\,
      I3 => \n_0_downcounter_r_reg[1]\,
      O => \n_0_downcounter_r[0]_i_1\
    );
\downcounter_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CC32"
    )
    port map (
      I0 => down_count_r(1),
      I1 => \n_0_downcounter_r_reg[2]\,
      I2 => \n_0_downcounter_r_reg[0]\,
      I3 => \n_0_downcounter_r_reg[1]\,
      O => \n_0_downcounter_r[1]_i_1\
    );
\downcounter_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5554"
    )
    port map (
      I0 => \n_0_downcounter_r_reg[2]\,
      I1 => \n_0_downcounter_r_reg[1]\,
      I2 => \n_0_downcounter_r_reg[0]\,
      I3 => down_count_r(2),
      O => \n_0_downcounter_r[2]_i_1\
    );
\downcounter_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_downcounter_r[0]_i_1\,
      Q => \n_0_downcounter_r_reg[0]\,
      R => sys_reset_out
    );
\downcounter_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_downcounter_r[1]_i_1\,
      Q => \n_0_downcounter_r_reg[1]\,
      R => sys_reset_out
    );
\downcounter_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_downcounter_r[2]_i_1\,
      Q => \n_0_downcounter_r_reg[2]\,
      R => sys_reset_out
    );
gen_a_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => gen_a_flop_c,
      Q => gen_a_i,
      R => GND_2
    );
gen_a_flop_0_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
    port map (
      I0 => \n_0_downcounter_r_reg[1]\,
      I1 => \n_0_downcounter_r_reg[0]\,
      I2 => \n_0_downcounter_r_reg[2]\,
      I3 => gen_ver_i,
      I4 => did_ver_i,
      O => gen_a_flop_c
    );
gen_k_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => D0,
      Q => I12(3),
      R => GND_2
    );
gen_k_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5D5D5D5D5D5D5C0"
    )
    port map (
      I0 => p_1_in,
      I1 => did_ver_i,
      I2 => gen_ver_i,
      I3 => \n_0_downcounter_r_reg[2]\,
      I4 => \n_0_downcounter_r_reg[0]\,
      I5 => \n_0_downcounter_r_reg[1]\,
      O => D0
    );
gen_k_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => gen_k_c(1),
      Q => I12(2),
      R => GND_2
    );
gen_k_flop_1_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => p_3_out(3),
      O => gen_k_c(1)
    );
gen_k_flop_2_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => gen_k_c(2),
      Q => I12(1),
      R => GND_2
    );
gen_k_flop_2_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => p_2_in,
      O => gen_k_c(2)
    );
gen_k_flop_3_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => gen_k_c(3),
      Q => I12(0),
      R => GND_2
    );
gen_k_flop_3_i_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => p_3_out(1),
      O => gen_k_c(3)
    );
gen_r_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => n_0_gen_r_flop_0_i_i_1,
      Q => I11(3),
      R => GND_2
    );
gen_r_flop_0_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FE00FE00FE00"
    )
    port map (
      I0 => \n_0_downcounter_r_reg[1]\,
      I1 => \n_0_downcounter_r_reg[0]\,
      I2 => \n_0_downcounter_r_reg[2]\,
      I3 => p_1_in,
      I4 => did_ver_i,
      I5 => gen_ver_i,
      O => n_0_gen_r_flop_0_i_i_1
    );
gen_r_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => p_3_out(3),
      Q => I11(2),
      R => GND_2
    );
gen_r_flop_2_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => p_2_in,
      Q => I11(1),
      R => GND_2
    );
gen_r_flop_3_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => p_3_out(1),
      Q => I11(0),
      R => GND_2
    );
gen_v_flop_1_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => recycle_gen_ver_c,
      Q => I10(2),
      R => GND_2
    );
gen_v_flop_1_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => did_ver_i,
      I1 => gen_ver_i,
      O => recycle_gen_ver_c
    );
gen_v_flop_2_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => recycle_gen_ver_c,
      Q => I10(1),
      R => GND_2
    );
gen_v_flop_3_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => recycle_gen_ver_c,
      Q => I10(0),
      R => GND_2
    );
\lfsr_reg[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"55A9"
    )
    port map (
      I0 => p_1_in,
      I1 => p_2_in,
      I2 => p_3_out(3),
      I3 => p_3_out(1),
      O => \n_0_lfsr_reg[3]_i_1\
    );
\lfsr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_3_out(3),
      Q => p_1_in,
      R => \<const0>\
    );
\lfsr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_2_in,
      Q => p_3_out(3),
      R => \<const0>\
    );
\lfsr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_3_out(1),
      Q => p_2_in,
      R => \<const0>\
    );
\lfsr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_lfsr_reg[3]_i_1\,
      Q => p_3_out(1),
      R => \<const0>\
    );
prev_cycle_gen_ver_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => gen_ver_i,
      Q => prev_cycle_gen_ver_r,
      R => \<const0>\
    );
\txver_count_r_reg[6]_srl7_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => did_ver_i,
      I1 => gen_ver_i,
      O => txver_count_r0
    );
ver_counter_i: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const1>\,
      A3 => \<const1>\,
      CE => VCC_2,
      CLK => user_clk,
      D => insert_ver_c,
      Q => ver_counter_c
    );
ver_counter_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
    port map (
      I0 => gen_ver_i,
      I1 => did_ver_i,
      I2 => prev_cycle_gen_ver_r,
      O => insert_ver_c
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_LANE_INIT_SM_4BYTE is
  port (
    O1 : out STD_LOGIC;
    ready_r : out STD_LOGIC;
    O2 : out STD_LOGIC;
    gen_spa_i : out STD_LOGIC;
    enable_err_detect_i : out STD_LOGIC;
    rx_polarity_i : out STD_LOGIC;
    GEN_SP : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    reset_lanes_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    ready_r0 : in STD_LOGIC;
    counter3_r0 : in STD_LOGIC;
    counter4_r0 : in STD_LOGIC;
    rx_realign_i : in STD_LOGIC;
    RXDISPERR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I6 : in STD_LOGIC;
    RX_NEG : in STD_LOGIC;
    RXCHARISK : in STD_LOGIC_VECTOR ( 1 downto 0 );
    first_v_received_r : in STD_LOGIC;
    I7 : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end aurora_8b10b_0aurora_8b10b_0_LANE_INIT_SM_4BYTE;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_LANE_INIT_SM_4BYTE is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal ENABLE_ERR_DETECT0 : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal VCC_2 : STD_LOGIC;
  signal begin_r : STD_LOGIC;
  signal consecutive_commas_r : STD_LOGIC;
  signal consecutive_commas_r0 : STD_LOGIC;
  signal count_128d_done_r : STD_LOGIC;
  signal count_32d_done_r : STD_LOGIC;
  signal count_8d_done_r : STD_LOGIC;
  signal counter2_r : STD_LOGIC_VECTOR ( 15 to 15 );
  signal counter3_r : STD_LOGIC_VECTOR ( 3 to 3 );
  signal counter4_r : STD_LOGIC_VECTOR ( 15 to 15 );
  signal counter5_r : STD_LOGIC_VECTOR ( 15 to 15 );
  signal counter5_r0 : STD_LOGIC;
  signal do_watchdog_count_r : STD_LOGIC;
  signal do_watchdog_count_r0 : STD_LOGIC;
  signal \^enable_err_detect_i\ : STD_LOGIC;
  signal \^gen_spa_i\ : STD_LOGIC;
  signal inc_count_c : STD_LOGIC;
  signal \n_0_RX_CHAR_IS_COMMA_R_reg[0]\ : STD_LOGIC;
  signal \n_0_RX_CHAR_IS_COMMA_R_reg[3]\ : STD_LOGIC;
  signal n_0_begin_r_i_2 : STD_LOGIC;
  signal \n_0_counter1_r[0]_i_3\ : STD_LOGIC;
  signal \n_0_counter1_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_counter1_r_reg[1]\ : STD_LOGIC;
  signal \n_0_counter1_r_reg[3]\ : STD_LOGIC;
  signal \n_0_counter1_r_reg[5]\ : STD_LOGIC;
  signal \n_0_counter1_r_reg[6]\ : STD_LOGIC;
  signal \n_0_counter1_r_reg[7]\ : STD_LOGIC;
  signal \n_0_counter2_r_reg[14]_srl15\ : STD_LOGIC;
  signal \n_0_counter3_r_reg[2]_srl3\ : STD_LOGIC;
  signal \n_0_counter4_r_reg[14]_srl15\ : STD_LOGIC;
  signal \n_0_counter5_r_reg[14]_srl15\ : STD_LOGIC;
  signal n_0_reset_count_r_i_3 : STD_LOGIC;
  signal n_0_rst_r_reg : STD_LOGIC;
  signal n_0_rx_polarity_r_i_1 : STD_LOGIC;
  signal next_ack_c : STD_LOGIC;
  signal next_align_c : STD_LOGIC;
  signal next_begin_c : STD_LOGIC;
  signal next_polarity_c : STD_LOGIC;
  signal next_ready_c : STD_LOGIC;
  signal next_realign_c : STD_LOGIC;
  signal next_rst_c : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal p_0_in2_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal polarity_r : STD_LOGIC;
  signal prev_count_128d_done_r : STD_LOGIC;
  signal \^ready_r\ : STD_LOGIC;
  signal realign_r : STD_LOGIC;
  signal reset_count_r : STD_LOGIC;
  signal reset_count_r0 : STD_LOGIC;
  signal \^rx_polarity_i\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ENABLE_ERR_DETECT_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of begin_r_i_2 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \counter1_r[0]_i_3\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \counter1_r[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \counter1_r[4]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \counter1_r[5]_i_1\ : label is "soft_lutpair46";
  attribute counter : integer;
  attribute counter of \counter1_r_reg[0]\ : label is 13;
  attribute counter of \counter1_r_reg[1]\ : label is 13;
  attribute counter of \counter1_r_reg[2]\ : label is 13;
  attribute counter of \counter1_r_reg[3]\ : label is 13;
  attribute counter of \counter1_r_reg[4]\ : label is 13;
  attribute counter of \counter1_r_reg[5]\ : label is 13;
  attribute counter of \counter1_r_reg[6]\ : label is 13;
  attribute counter of \counter1_r_reg[7]\ : label is 13;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \counter2_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter2_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \counter2_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter2_r_reg[14]_srl15 ";
  attribute srl_bus_name of \counter3_r_reg[2]_srl3\ : label is "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter3_r_reg ";
  attribute srl_name of \counter3_r_reg[2]_srl3\ : label is "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter3_r_reg[2]_srl3 ";
  attribute srl_bus_name of \counter4_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter4_r_reg ";
  attribute srl_name of \counter4_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter4_r_reg[14]_srl15 ";
  attribute srl_bus_name of \counter5_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter5_r_reg ";
  attribute srl_name of \counter5_r_reg[14]_srl15\ : label is "inst/\aurora_8b10b_0_aurora_lane_4byte_0_i/aurora_8b10b_0_lane_init_sm_4byte_i/counter5_r_reg[14]_srl15 ";
  attribute SOFT_HLUTNM of gen_sp_r_i_1 : label is "soft_lutpair47";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of lane_up_flop_i : label is "FDR";
  attribute box_type : string;
  attribute box_type of lane_up_flop_i : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of polarity_r_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of realign_r_i_1 : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of reset_count_r_i_3 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of rst_r_i_1 : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of rx_polarity_r_i_1 : label is "soft_lutpair45";
begin
  O2 <= \^o2\;
  enable_err_detect_i <= \^enable_err_detect_i\;
  gen_spa_i <= \^gen_spa_i\;
  ready_r <= \^ready_r\;
  rx_polarity_i <= \^rx_polarity_i\;
ENABLE_ERR_DETECT_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^gen_spa_i\,
      I1 => \^ready_r\,
      O => ENABLE_ERR_DETECT0
    );
ENABLE_ERR_DETECT_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => ENABLE_ERR_DETECT0,
      Q => \^enable_err_detect_i\,
      R => \<const0>\
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\RX_CHAR_IS_COMMA_R_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I7(0),
      Q => \n_0_RX_CHAR_IS_COMMA_R_reg[0]\,
      R => \<const0>\
    );
\RX_CHAR_IS_COMMA_R_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I7(1),
      Q => p_1_in,
      R => \<const0>\
    );
\RX_CHAR_IS_COMMA_R_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I7(2),
      Q => p_0_in2_in,
      R => \<const0>\
    );
\RX_CHAR_IS_COMMA_R_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I7(3),
      Q => \n_0_RX_CHAR_IS_COMMA_R_reg[3]\,
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
VCC_1: unisim.vcomponents.VCC
    port map (
      P => VCC_2
    );
ack_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444FFFF04440444"
    )
    port map (
      I0 => counter5_r(15),
      I1 => \^gen_spa_i\,
      I2 => counter3_r(3),
      I3 => counter2_r(15),
      I4 => RX_NEG,
      I5 => polarity_r,
      O => next_ack_c
    );
ack_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_ack_c,
      Q => \^gen_spa_i\,
      R => ready_r0
    );
align_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F222"
    )
    port map (
      I0 => \^o2\,
      I1 => count_128d_done_r,
      I2 => count_8d_done_r,
      I3 => n_0_rst_r_reg,
      O => next_align_c
    );
align_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_align_c,
      Q => \^o2\,
      R => ready_r0
    );
begin_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
    port map (
      I0 => \^gen_spa_i\,
      I1 => counter5_r(15),
      I2 => realign_r,
      I3 => rx_realign_i,
      I4 => n_0_begin_r_i_2,
      O => next_begin_c
    );
begin_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => polarity_r,
      I1 => RX_NEG,
      I2 => counter4_r(15),
      I3 => \^ready_r\,
      O => n_0_begin_r_i_2
    );
begin_r_reg: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_begin_c,
      Q => begin_r,
      S => ready_r0
    );
consecutive_commas_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
    port map (
      I0 => \^o2\,
      I1 => \n_0_RX_CHAR_IS_COMMA_R_reg[0]\,
      I2 => p_0_in2_in,
      I3 => p_1_in,
      I4 => \n_0_RX_CHAR_IS_COMMA_R_reg[3]\,
      O => consecutive_commas_r0
    );
consecutive_commas_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => consecutive_commas_r0,
      Q => consecutive_commas_r,
      R => \<const0>\
    );
\counter1_r[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
    port map (
      I0 => \^o2\,
      I1 => \n_0_RX_CHAR_IS_COMMA_R_reg[0]\,
      I2 => p_0_in2_in,
      I3 => p_1_in,
      I4 => \n_0_RX_CHAR_IS_COMMA_R_reg[3]\,
      O => inc_count_c
    );
\counter1_r[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => count_128d_done_r,
      I1 => count_32d_done_r,
      I2 => count_8d_done_r,
      I3 => \n_0_counter1_r[0]_i_3\,
      I4 => \n_0_counter1_r_reg[3]\,
      I5 => \n_0_counter1_r_reg[1]\,
      O => p_0_in(7)
    );
\counter1_r[0]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => \n_0_counter1_r_reg[5]\,
      I1 => \n_0_counter1_r_reg[6]\,
      I2 => \n_0_counter1_r_reg[7]\,
      O => \n_0_counter1_r[0]_i_3\
    );
\counter1_r[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \n_0_counter1_r_reg[1]\,
      I1 => \n_0_counter1_r_reg[3]\,
      I2 => \n_0_counter1_r[0]_i_3\,
      I3 => count_8d_done_r,
      I4 => count_32d_done_r,
      O => p_0_in(6)
    );
\counter1_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => count_32d_done_r,
      I1 => count_8d_done_r,
      I2 => \n_0_counter1_r_reg[7]\,
      I3 => \n_0_counter1_r_reg[6]\,
      I4 => \n_0_counter1_r_reg[5]\,
      I5 => \n_0_counter1_r_reg[3]\,
      O => \n_0_counter1_r[2]_i_1\
    );
\counter1_r[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \n_0_counter1_r_reg[3]\,
      I1 => \n_0_counter1_r_reg[5]\,
      I2 => \n_0_counter1_r_reg[6]\,
      I3 => \n_0_counter1_r_reg[7]\,
      I4 => count_8d_done_r,
      O => p_0_in(4)
    );
\counter1_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => count_8d_done_r,
      I1 => \n_0_counter1_r_reg[7]\,
      I2 => \n_0_counter1_r_reg[6]\,
      I3 => \n_0_counter1_r_reg[5]\,
      O => p_0_in(3)
    );
\counter1_r[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \n_0_counter1_r_reg[7]\,
      I1 => \n_0_counter1_r_reg[6]\,
      I2 => \n_0_counter1_r_reg[5]\,
      O => p_0_in(2)
    );
\counter1_r[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \n_0_counter1_r_reg[7]\,
      I1 => \n_0_counter1_r_reg[6]\,
      O => p_0_in(1)
    );
\counter1_r[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_counter1_r_reg[7]\,
      O => p_0_in(0)
    );
\counter1_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(7),
      Q => count_128d_done_r,
      R => reset_count_r
    );
\counter1_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(6),
      Q => \n_0_counter1_r_reg[1]\,
      R => reset_count_r
    );
\counter1_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => \n_0_counter1_r[2]_i_1\,
      Q => count_32d_done_r,
      R => reset_count_r
    );
\counter1_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(4),
      Q => \n_0_counter1_r_reg[3]\,
      R => reset_count_r
    );
\counter1_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(3),
      Q => count_8d_done_r,
      R => reset_count_r
    );
\counter1_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(2),
      Q => \n_0_counter1_r_reg[5]\,
      R => reset_count_r
    );
\counter1_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(1),
      Q => \n_0_counter1_r_reg[6]\,
      R => reset_count_r
    );
\counter1_r_reg[7]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => user_clk,
      CE => inc_count_c,
      D => p_0_in(0),
      Q => \n_0_counter1_r_reg[7]\,
      S => reset_count_r
    );
\counter2_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const1>\,
      A3 => \<const1>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => \^gen_spa_i\,
      Q => \n_0_counter2_r_reg[14]_srl15\
    );
\counter2_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_counter2_r_reg[14]_srl15\,
      Q => counter2_r(15),
      R => \<const0>\
    );
\counter3_r_reg[2]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => counter3_r0,
      CLK => user_clk,
      D => \^gen_spa_i\,
      Q => \n_0_counter3_r_reg[2]_srl3\
    );
\counter3_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => counter3_r0,
      D => \n_0_counter3_r_reg[2]_srl3\,
      Q => counter3_r(3),
      R => \<const0>\
    );
\counter4_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const1>\,
      A3 => \<const1>\,
      CE => counter4_r0,
      CLK => user_clk,
      D => \^ready_r\,
      Q => \n_0_counter4_r_reg[14]_srl15\
    );
\counter4_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => counter4_r0,
      D => \n_0_counter4_r_reg[14]_srl15\,
      Q => counter4_r(15),
      R => \<const0>\
    );
\counter5_r_reg[14]_srl15\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const1>\,
      A3 => \<const1>\,
      CE => counter5_r0,
      CLK => user_clk,
      D => \^gen_spa_i\,
      Q => \n_0_counter5_r_reg[14]_srl15\
    );
\counter5_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => do_watchdog_count_r,
      I1 => \^gen_spa_i\,
      O => counter5_r0
    );
\counter5_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => counter5_r0,
      D => \n_0_counter5_r_reg[14]_srl15\,
      Q => counter5_r(15),
      R => \<const0>\
    );
do_watchdog_count_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_128d_done_r,
      I1 => prev_count_128d_done_r,
      O => do_watchdog_count_r0
    );
do_watchdog_count_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => do_watchdog_count_r0,
      Q => do_watchdog_count_r,
      R => \<const0>\
    );
gen_sp_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^ready_r\,
      I1 => \^gen_spa_i\,
      O => GEN_SP
    );
lane_up_flop_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => \^ready_r\,
      Q => O1,
      R => reset_lanes_i
    );
\left_align_select_r[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF888F"
    )
    port map (
      I0 => RXCHARISK(1),
      I1 => RXCHARISK(0),
      I2 => \^ready_r\,
      I3 => \^o2\,
      I4 => first_v_received_r,
      O => O10
    );
polarity_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => count_32d_done_r,
      I1 => realign_r,
      I2 => rx_realign_i,
      O => next_polarity_c
    );
polarity_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_polarity_c,
      Q => polarity_r,
      R => ready_r0
    );
prev_count_128d_done_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => count_128d_done_r,
      Q => prev_count_128d_done_r,
      R => \<const0>\
    );
ready_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000FFFF40004000"
    )
    port map (
      I0 => counter5_r(15),
      I1 => \^gen_spa_i\,
      I2 => counter3_r(3),
      I3 => counter2_r(15),
      I4 => counter4_r(15),
      I5 => \^ready_r\,
      O => next_ready_c
    );
ready_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_ready_c,
      Q => \^ready_r\,
      R => ready_r0
    );
realign_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF040404"
    )
    port map (
      I0 => rx_realign_i,
      I1 => realign_r,
      I2 => count_32d_done_r,
      I3 => count_128d_done_r,
      I4 => \^o2\,
      O => next_realign_c
    );
realign_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_realign_c,
      Q => realign_r,
      R => ready_r0
    );
reset_count_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF55555551"
    )
    port map (
      I0 => n_0_rst_r_reg,
      I1 => consecutive_commas_r,
      I2 => RXDISPERR(0),
      I3 => RXDISPERR(1),
      I4 => I6,
      I5 => n_0_reset_count_r_i_3,
      O => reset_count_r0
    );
reset_count_r_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BAEE"
    )
    port map (
      I0 => reset_lanes_i,
      I1 => begin_r,
      I2 => count_8d_done_r,
      I3 => n_0_rst_r_reg,
      O => n_0_reset_count_r_i_3
    );
reset_count_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => reset_count_r0,
      Q => reset_count_r,
      R => \<const0>\
    );
rst_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => begin_r,
      I1 => count_8d_done_r,
      I2 => n_0_rst_r_reg,
      O => next_rst_c
    );
rst_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => next_rst_c,
      Q => n_0_rst_r_reg,
      R => ready_r0
    );
rx_polarity_r_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => RX_NEG,
      I1 => polarity_r,
      I2 => \^rx_polarity_i\,
      O => n_0_rx_polarity_r_i_1
    );
rx_polarity_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_0_rx_polarity_r_i_1,
      Q => \^rx_polarity_i\,
      R => \<const0>\
    );
\soft_err_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^enable_err_detect_i\,
      O => O3
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_CONTROL is
  port (
    MUX_SELECT : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_CONTROL;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_CONTROL is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\MUX_SELECT_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I1,
      Q => MUX_SELECT(0),
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_MUX is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC;
    O11 : out STD_LOGIC;
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC;
    O14 : out STD_LOGIC;
    O15 : out STD_LOGIC;
    O16 : out STD_LOGIC;
    O17 : out STD_LOGIC;
    O18 : out STD_LOGIC;
    O19 : out STD_LOGIC;
    O20 : out STD_LOGIC;
    O21 : out STD_LOGIC;
    O22 : out STD_LOGIC;
    O23 : out STD_LOGIC;
    O24 : out STD_LOGIC;
    O25 : out STD_LOGIC;
    O26 : out STD_LOGIC;
    O27 : out STD_LOGIC;
    O28 : out STD_LOGIC;
    O29 : out STD_LOGIC;
    O30 : out STD_LOGIC;
    O31 : out STD_LOGIC;
    O32 : out STD_LOGIC;
    O33 : out STD_LOGIC;
    O34 : out STD_LOGIC;
    O35 : out STD_LOGIC;
    O36 : out STD_LOGIC;
    O37 : out STD_LOGIC;
    O38 : out STD_LOGIC;
    O39 : out STD_LOGIC;
    O40 : out STD_LOGIC;
    O41 : out STD_LOGIC;
    O42 : out STD_LOGIC;
    O43 : out STD_LOGIC;
    O44 : out STD_LOGIC;
    O45 : out STD_LOGIC;
    O46 : out STD_LOGIC;
    O47 : out STD_LOGIC;
    O48 : out STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    user_clk : in STD_LOGIC;
    stage_2_data_r : in STD_LOGIC_VECTOR ( 15 downto 0 );
    MUX_SELECT : in STD_LOGIC_VECTOR ( 0 to 0 );
    OUTPUT_SELECT : in STD_LOGIC_VECTOR ( 0 to 0 );
    STORAGE_DATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    STORAGE_SELECT : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_MUX;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_MUX is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal MUXED_DATA : STD_LOGIC_VECTOR ( 0 to 31 );
  signal muxed_data_c : STD_LOGIC_VECTOR ( 0 to 15 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MUXED_DATA[0]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \MUXED_DATA[10]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \MUXED_DATA[11]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \MUXED_DATA[12]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \MUXED_DATA[13]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \MUXED_DATA[14]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \MUXED_DATA[15]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \MUXED_DATA[1]_i_1\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \MUXED_DATA[2]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \MUXED_DATA[3]_i_1\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \MUXED_DATA[4]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \MUXED_DATA[5]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \MUXED_DATA[6]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \MUXED_DATA[7]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \MUXED_DATA[8]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \MUXED_DATA[9]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[16]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[17]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[18]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[19]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[20]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[21]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[22]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[23]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[24]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[25]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[26]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[27]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[28]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[29]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[30]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \OUTPUT_DATA[31]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \STORAGE_DATA[0]_i_1\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \STORAGE_DATA[10]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \STORAGE_DATA[11]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \STORAGE_DATA[12]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \STORAGE_DATA[13]_i_1\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \STORAGE_DATA[14]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \STORAGE_DATA[15]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \STORAGE_DATA[16]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \STORAGE_DATA[17]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \STORAGE_DATA[18]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \STORAGE_DATA[19]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \STORAGE_DATA[1]_i_1\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \STORAGE_DATA[20]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \STORAGE_DATA[21]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \STORAGE_DATA[22]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \STORAGE_DATA[23]_i_1\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \STORAGE_DATA[24]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \STORAGE_DATA[25]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \STORAGE_DATA[26]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \STORAGE_DATA[27]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \STORAGE_DATA[28]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \STORAGE_DATA[29]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \STORAGE_DATA[2]_i_1\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \STORAGE_DATA[30]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \STORAGE_DATA[31]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \STORAGE_DATA[3]_i_1\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \STORAGE_DATA[4]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \STORAGE_DATA[5]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \STORAGE_DATA[6]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \STORAGE_DATA[7]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \STORAGE_DATA[8]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \STORAGE_DATA[9]_i_1\ : label is "soft_lutpair104";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\MUXED_DATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(15),
      I1 => stage_2_data_r(15),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(0)
    );
\MUXED_DATA[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(5),
      I1 => stage_2_data_r(5),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(10)
    );
\MUXED_DATA[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(4),
      I1 => stage_2_data_r(4),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(11)
    );
\MUXED_DATA[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(3),
      I1 => stage_2_data_r(3),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(12)
    );
\MUXED_DATA[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(2),
      I1 => stage_2_data_r(2),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(13)
    );
\MUXED_DATA[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(1),
      I1 => stage_2_data_r(1),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(14)
    );
\MUXED_DATA[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(0),
      I1 => stage_2_data_r(0),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(15)
    );
\MUXED_DATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(14),
      I1 => stage_2_data_r(14),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(1)
    );
\MUXED_DATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(13),
      I1 => stage_2_data_r(13),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(2)
    );
\MUXED_DATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(12),
      I1 => stage_2_data_r(12),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(3)
    );
\MUXED_DATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(11),
      I1 => stage_2_data_r(11),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(4)
    );
\MUXED_DATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(10),
      I1 => stage_2_data_r(10),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(5)
    );
\MUXED_DATA[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(9),
      I1 => stage_2_data_r(9),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(6)
    );
\MUXED_DATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(8),
      I1 => stage_2_data_r(8),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(7)
    );
\MUXED_DATA[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(7),
      I1 => stage_2_data_r(7),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(8)
    );
\MUXED_DATA[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => D(6),
      I1 => stage_2_data_r(6),
      I2 => MUX_SELECT(0),
      O => muxed_data_c(9)
    );
\MUXED_DATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(0),
      Q => MUXED_DATA(0),
      R => \<const0>\
    );
\MUXED_DATA_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(10),
      Q => MUXED_DATA(10),
      R => \<const0>\
    );
\MUXED_DATA_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(11),
      Q => MUXED_DATA(11),
      R => \<const0>\
    );
\MUXED_DATA_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(12),
      Q => MUXED_DATA(12),
      R => \<const0>\
    );
\MUXED_DATA_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(13),
      Q => MUXED_DATA(13),
      R => \<const0>\
    );
\MUXED_DATA_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(14),
      Q => MUXED_DATA(14),
      R => \<const0>\
    );
\MUXED_DATA_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(15),
      Q => MUXED_DATA(15),
      R => \<const0>\
    );
\MUXED_DATA_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(15),
      Q => MUXED_DATA(16),
      R => \<const0>\
    );
\MUXED_DATA_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(14),
      Q => MUXED_DATA(17),
      R => \<const0>\
    );
\MUXED_DATA_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(13),
      Q => MUXED_DATA(18),
      R => \<const0>\
    );
\MUXED_DATA_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(12),
      Q => MUXED_DATA(19),
      R => \<const0>\
    );
\MUXED_DATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(1),
      Q => MUXED_DATA(1),
      R => \<const0>\
    );
\MUXED_DATA_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(11),
      Q => MUXED_DATA(20),
      R => \<const0>\
    );
\MUXED_DATA_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(10),
      Q => MUXED_DATA(21),
      R => \<const0>\
    );
\MUXED_DATA_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(9),
      Q => MUXED_DATA(22),
      R => \<const0>\
    );
\MUXED_DATA_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(8),
      Q => MUXED_DATA(23),
      R => \<const0>\
    );
\MUXED_DATA_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(7),
      Q => MUXED_DATA(24),
      R => \<const0>\
    );
\MUXED_DATA_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(6),
      Q => MUXED_DATA(25),
      R => \<const0>\
    );
\MUXED_DATA_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(5),
      Q => MUXED_DATA(26),
      R => \<const0>\
    );
\MUXED_DATA_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(4),
      Q => MUXED_DATA(27),
      R => \<const0>\
    );
\MUXED_DATA_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(3),
      Q => MUXED_DATA(28),
      R => \<const0>\
    );
\MUXED_DATA_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(2),
      Q => MUXED_DATA(29),
      R => \<const0>\
    );
\MUXED_DATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(2),
      Q => MUXED_DATA(2),
      R => \<const0>\
    );
\MUXED_DATA_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(1),
      Q => MUXED_DATA(30),
      R => \<const0>\
    );
\MUXED_DATA_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(0),
      Q => MUXED_DATA(31),
      R => \<const0>\
    );
\MUXED_DATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(3),
      Q => MUXED_DATA(3),
      R => \<const0>\
    );
\MUXED_DATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(4),
      Q => MUXED_DATA(4),
      R => \<const0>\
    );
\MUXED_DATA_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(5),
      Q => MUXED_DATA(5),
      R => \<const0>\
    );
\MUXED_DATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(6),
      Q => MUXED_DATA(6),
      R => \<const0>\
    );
\MUXED_DATA_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(7),
      Q => MUXED_DATA(7),
      R => \<const0>\
    );
\MUXED_DATA_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(8),
      Q => MUXED_DATA(8),
      R => \<const0>\
    );
\MUXED_DATA_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => muxed_data_c(9),
      Q => MUXED_DATA(9),
      R => \<const0>\
    );
\OUTPUT_DATA[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(0),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(15),
      O => O1
    );
\OUTPUT_DATA[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(1),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(14),
      O => O2
    );
\OUTPUT_DATA[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(2),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(13),
      O => O3
    );
\OUTPUT_DATA[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(3),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(12),
      O => O4
    );
\OUTPUT_DATA[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(4),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(11),
      O => O5
    );
\OUTPUT_DATA[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(5),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(10),
      O => O6
    );
\OUTPUT_DATA[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(6),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(9),
      O => O7
    );
\OUTPUT_DATA[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(7),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(8),
      O => O8
    );
\OUTPUT_DATA[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(8),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(7),
      O => O9
    );
\OUTPUT_DATA[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(9),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(6),
      O => O10
    );
\OUTPUT_DATA[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(10),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(5),
      O => O11
    );
\OUTPUT_DATA[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(11),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(4),
      O => O12
    );
\OUTPUT_DATA[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(12),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(3),
      O => O13
    );
\OUTPUT_DATA[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(13),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(2),
      O => O14
    );
\OUTPUT_DATA[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(14),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(1),
      O => O15
    );
\OUTPUT_DATA[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(15),
      I1 => OUTPUT_SELECT(0),
      I2 => STORAGE_DATA(0),
      O => O16
    );
\STORAGE_DATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(16),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(0),
      O => O17
    );
\STORAGE_DATA[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(26),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(10),
      O => O27
    );
\STORAGE_DATA[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(27),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(11),
      O => O28
    );
\STORAGE_DATA[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(28),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(12),
      O => O29
    );
\STORAGE_DATA[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(29),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(13),
      O => O30
    );
\STORAGE_DATA[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(30),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(14),
      O => O31
    );
\STORAGE_DATA[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(31),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(15),
      O => O32
    );
\STORAGE_DATA[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(16),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(0),
      O => O33
    );
\STORAGE_DATA[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(17),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(1),
      O => O34
    );
\STORAGE_DATA[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(18),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(2),
      O => O35
    );
\STORAGE_DATA[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(19),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(3),
      O => O36
    );
\STORAGE_DATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(17),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(1),
      O => O18
    );
\STORAGE_DATA[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(20),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(4),
      O => O37
    );
\STORAGE_DATA[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(21),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(5),
      O => O38
    );
\STORAGE_DATA[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(22),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(6),
      O => O39
    );
\STORAGE_DATA[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(23),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(7),
      O => O40
    );
\STORAGE_DATA[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(24),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(8),
      O => O41
    );
\STORAGE_DATA[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(25),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(9),
      O => O42
    );
\STORAGE_DATA[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(26),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(10),
      O => O43
    );
\STORAGE_DATA[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(27),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(11),
      O => O44
    );
\STORAGE_DATA[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(28),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(12),
      O => O45
    );
\STORAGE_DATA[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(29),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(13),
      O => O46
    );
\STORAGE_DATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(18),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(2),
      O => O19
    );
\STORAGE_DATA[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(30),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(14),
      O => O47
    );
\STORAGE_DATA[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(31),
      I1 => STORAGE_SELECT(0),
      I2 => MUXED_DATA(15),
      O => O48
    );
\STORAGE_DATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(19),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(3),
      O => O20
    );
\STORAGE_DATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(20),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(4),
      O => O21
    );
\STORAGE_DATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(21),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(5),
      O => O22
    );
\STORAGE_DATA[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(22),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(6),
      O => O23
    );
\STORAGE_DATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(23),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(7),
      O => O24
    );
\STORAGE_DATA[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(24),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(8),
      O => O25
    );
\STORAGE_DATA[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => MUXED_DATA(25),
      I1 => STORAGE_SELECT(1),
      I2 => MUXED_DATA(9),
      O => O26
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_OUTPUT_MUX is
  port (
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 31 );
    D : in STD_LOGIC_VECTOR ( 15 downto 0 );
    user_clk : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    I14 : in STD_LOGIC;
    I15 : in STD_LOGIC;
    I16 : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_OUTPUT_MUX;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_OUTPUT_MUX is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\OUTPUT_DATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(15),
      Q => m_axi_rx_tdata(0),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(5),
      Q => m_axi_rx_tdata(10),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(4),
      Q => m_axi_rx_tdata(11),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(3),
      Q => m_axi_rx_tdata(12),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(2),
      Q => m_axi_rx_tdata(13),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(1),
      Q => m_axi_rx_tdata(14),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(0),
      Q => m_axi_rx_tdata(15),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I1,
      Q => m_axi_rx_tdata(16),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I2,
      Q => m_axi_rx_tdata(17),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I3,
      Q => m_axi_rx_tdata(18),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I4,
      Q => m_axi_rx_tdata(19),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(14),
      Q => m_axi_rx_tdata(1),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I5,
      Q => m_axi_rx_tdata(20),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I6,
      Q => m_axi_rx_tdata(21),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I7,
      Q => m_axi_rx_tdata(22),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I8,
      Q => m_axi_rx_tdata(23),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I9,
      Q => m_axi_rx_tdata(24),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I10,
      Q => m_axi_rx_tdata(25),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I11,
      Q => m_axi_rx_tdata(26),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I12,
      Q => m_axi_rx_tdata(27),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I13,
      Q => m_axi_rx_tdata(28),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I14,
      Q => m_axi_rx_tdata(29),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(13),
      Q => m_axi_rx_tdata(2),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I15,
      Q => m_axi_rx_tdata(30),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I16,
      Q => m_axi_rx_tdata(31),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(12),
      Q => m_axi_rx_tdata(3),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(11),
      Q => m_axi_rx_tdata(4),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(10),
      Q => m_axi_rx_tdata(5),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(9),
      Q => m_axi_rx_tdata(6),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(8),
      Q => m_axi_rx_tdata(7),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(7),
      Q => m_axi_rx_tdata(8),
      R => \<const0>\
    );
\OUTPUT_DATA_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(6),
      Q => m_axi_rx_tdata(9),
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_OUTPUT_SWITCH_CONTROL is
  port (
    OUTPUT_SELECT : out STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_OUTPUT_SWITCH_CONTROL;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_OUTPUT_SWITCH_CONTROL is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\OUTPUT_SELECT_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I1,
      Q => OUTPUT_SELECT(0),
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_RX_LL_DEFRAMER is
  port (
    in_frame_c : out STD_LOGIC_VECTOR ( 0 to 1 );
    in_frame_r : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC;
    S11_in : in STD_LOGIC;
    S1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    start_rx_i : in STD_LOGIC;
    I4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I5 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end aurora_8b10b_0aurora_8b10b_0_RX_LL_DEFRAMER;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_RX_LL_DEFRAMER is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal after_scp_c : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \^in_frame_c\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \^in_frame_r\ : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal n_0_stage_2_frame_err_r_i_2 : STD_LOGIC;
  signal stage_1_after_scp_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal stage_1_data_v_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal stage_1_in_frame_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \COUNT[0]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \COUNT[1]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \MUX_SELECT[2]_i_1\ : label is "soft_lutpair120";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_after_start_muxcy_0_CARRY4 : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of data_after_start_muxcy_0_CARRY4 : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of in_frame_muxcy_0_CARRY4 : label is "(MUXCY,XORCY)";
  attribute box_type of in_frame_muxcy_0_CARRY4 : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of stage_2_end_after_start_r_i_1 : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of stage_2_end_before_start_r_i_1 : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of stage_2_start_with_data_r_i_1 : label is "soft_lutpair120";
begin
  in_frame_c(0 to 1) <= \^in_frame_c\(0 to 1);
  in_frame_r <= \^in_frame_r\;
\AFTER_SCP_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => after_scp_c(0),
      Q => stage_1_after_scp_r(0),
      R => SR(0)
    );
\AFTER_SCP_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => after_scp_c(1),
      Q => stage_1_after_scp_r(1),
      R => SR(0)
    );
\COUNT[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => stage_1_data_v_r(1),
      I1 => stage_1_data_v_r(0),
      O => O5(1)
    );
\COUNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => stage_1_data_v_r(1),
      I1 => stage_1_data_v_r(0),
      O => O5(0)
    );
\DEFRAMED_DATA_V_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I4(1),
      Q => stage_1_data_v_r(0),
      R => SR(0)
    );
\DEFRAMED_DATA_V_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I4(0),
      Q => stage_1_data_v_r(1),
      R => SR(0)
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\IN_FRAME_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I5(1),
      Q => stage_1_in_frame_r(0),
      R => \<const0>\
    );
\IN_FRAME_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I5(0),
      Q => stage_1_in_frame_r(1),
      R => \<const0>\
    );
\MUX_SELECT[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => stage_1_data_v_r(1),
      I1 => stage_1_data_v_r(0),
      O => O4
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
data_after_start_muxcy_0_CARRY4: unisim.vcomponents.CARRY4
    port map (
      CI => lopt_1,
      CO(3 downto 2) => NLW_data_after_start_muxcy_0_CARRY4_CO_UNCONNECTED(3 downto 2),
      CO(1) => after_scp_c(1),
      CO(0) => after_scp_c(0),
      CYINIT => \<const0>\,
      DI(3 downto 2) => NLW_data_after_start_muxcy_0_CARRY4_DI_UNCONNECTED(3 downto 2),
      DI(1) => \<const1>\,
      DI(0) => \<const1>\,
      O(3 downto 0) => NLW_data_after_start_muxcy_0_CARRY4_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => NLW_data_after_start_muxcy_0_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => S1,
      S(0) => S11_in
    );
data_after_start_muxcy_0_CARRY4_GND: unisim.vcomponents.GND
    port map (
      G => lopt_1
    );
in_frame_muxcy_0_CARRY4: unisim.vcomponents.CARRY4
    port map (
      CI => lopt,
      CO(3 downto 2) => NLW_in_frame_muxcy_0_CARRY4_CO_UNCONNECTED(3 downto 2),
      CO(1) => \^in_frame_c\(1),
      CO(0) => \^in_frame_c\(0),
      CYINIT => \^in_frame_r\,
      DI(3 downto 2) => NLW_in_frame_muxcy_0_CARRY4_DI_UNCONNECTED(3 downto 2),
      DI(1) => D(0),
      DI(0) => D(1),
      O(3 downto 0) => NLW_in_frame_muxcy_0_CARRY4_O_UNCONNECTED(3 downto 0),
      S(3 downto 2) => NLW_in_frame_muxcy_0_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => I2,
      S(0) => I1
    );
in_frame_muxcy_0_CARRY4_GND: unisim.vcomponents.GND
    port map (
      G => lopt
    );
in_frame_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \^in_frame_c\(1),
      Q => \^in_frame_r\,
      R => SR(0)
    );
stage_2_end_after_start_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => stage_1_after_scp_r(1),
      I1 => Q(0),
      I2 => stage_1_after_scp_r(0),
      I3 => Q(1),
      O => O3
    );
stage_2_end_before_start_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4F44"
    )
    port map (
      I0 => stage_1_after_scp_r(1),
      I1 => Q(0),
      I2 => stage_1_after_scp_r(0),
      I3 => Q(1),
      O => O2
    );
stage_2_frame_err_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => n_0_stage_2_frame_err_r_i_2,
      I1 => start_rx_i,
      O => O6
    );
stage_2_frame_err_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001D1D1D001D"
    )
    port map (
      I0 => Q(0),
      I1 => stage_1_in_frame_r(1),
      I2 => I3(0),
      I3 => Q(1),
      I4 => stage_1_in_frame_r(0),
      I5 => I3(1),
      O => n_0_stage_2_frame_err_r_i_2
    );
stage_2_start_with_data_r_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => stage_1_after_scp_r(1),
      I1 => stage_1_data_v_r(1),
      I2 => stage_1_after_scp_r(0),
      I3 => stage_1_data_v_r(0),
      O => O1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_SIDEBAND_OUTPUT is
  port (
    EOF_N : out STD_LOGIC;
    FRAME_ERR_RESULT : out STD_LOGIC;
    stage_3_end_storage_r : out STD_LOGIC;
    SRC_RDY_N : out STD_LOGIC;
    overwrite_c : out STD_LOGIC;
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    FRAME_ERR_RESULT0 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    stage_2_end_before_start_r : in STD_LOGIC;
    stage_2_start_with_data_r : in STD_LOGIC;
    I4 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    stage_3_storage_count_r : in STD_LOGIC_VECTOR ( 0 to 0 );
    stage_2_pad_r : in STD_LOGIC;
    I5 : in STD_LOGIC;
    start_rx_i : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_SIDEBAND_OUTPUT;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_SIDEBAND_OUTPUT is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \n_0_RX_REM[0]_i_1\ : STD_LOGIC;
  signal \n_0_RX_REM[1]_i_1\ : STD_LOGIC;
  signal n_0_pad_storage_r_i_1 : STD_LOGIC;
  signal n_0_pad_storage_r_i_2 : STD_LOGIC;
  signal n_0_pad_storage_r_reg : STD_LOGIC;
  signal \^stage_3_end_storage_r\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \RX_REM[0]_i_1\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \storage_count_r[0]_i_2\ : label is "soft_lutpair123";
begin
  stage_3_end_storage_r <= \^stage_3_end_storage_r\;
EOF_N_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I1,
      Q => EOF_N,
      R => \<const0>\
    );
FRAME_ERR_RESULT_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => FRAME_ERR_RESULT0,
      Q => FRAME_ERR_RESULT,
      R => \<const0>\
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\RX_REM[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"10EF"
    )
    port map (
      I0 => stage_2_start_with_data_r,
      I1 => \^stage_3_end_storage_r\,
      I2 => Q(0),
      I3 => stage_3_storage_count_r(0),
      O => \n_0_RX_REM[0]_i_1\
    );
\RX_REM[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FD"
    )
    port map (
      I0 => stage_2_pad_r,
      I1 => stage_2_start_with_data_r,
      I2 => \^stage_3_end_storage_r\,
      I3 => n_0_pad_storage_r_reg,
      O => \n_0_RX_REM[1]_i_1\
    );
\RX_REM_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_RX_REM[0]_i_1\,
      Q => O1(1),
      R => \<const0>\
    );
\RX_REM_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_RX_REM[1]_i_1\,
      Q => O1(0),
      R => \<const0>\
    );
SRC_RDY_N_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I3,
      Q => SRC_RDY_N,
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end_storage_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I2,
      Q => \^stage_3_end_storage_r\,
      R => \<const0>\
    );
pad_storage_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30203000"
    )
    port map (
      I0 => n_0_pad_storage_r_i_2,
      I1 => I5,
      I2 => start_rx_i,
      I3 => stage_2_pad_r,
      I4 => n_0_pad_storage_r_reg,
      O => n_0_pad_storage_r_i_1
    );
pad_storage_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"04FF"
    )
    port map (
      I0 => stage_2_end_before_start_r,
      I1 => stage_2_start_with_data_r,
      I2 => \^stage_3_end_storage_r\,
      I3 => I4,
      O => n_0_pad_storage_r_i_2
    );
pad_storage_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_0_pad_storage_r_i_1,
      Q => n_0_pad_storage_r_reg,
      R => \<const0>\
    );
\storage_count_r[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => stage_2_start_with_data_r,
      I1 => \^stage_3_end_storage_r\,
      O => overwrite_c
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_STORAGE_CE_CONTROL is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    user_clk : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_STORAGE_CE_CONTROL;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_STORAGE_CE_CONTROL is
  signal \<const1>\ : STD_LOGIC;
begin
\STORAGE_CE_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(1),
      Q => Q(1),
      R => SR(0)
    );
\STORAGE_CE_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(0),
      Q => Q(0),
      R => SR(0)
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_STORAGE_COUNT_CONTROL is
  port (
    O1 : out STD_LOGIC;
    stage_3_storage_count_r : out STD_LOGIC_VECTOR ( 0 to 1 );
    O2 : out STD_LOGIC;
    FRAME_ERR_RESULT0 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    start_rx_i : in STD_LOGIC;
    stage_3_end_storage_r : in STD_LOGIC;
    stage_2_start_with_data_r : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stage_2_end_after_start_r : in STD_LOGIC;
    stage_2_end_before_start_r : in STD_LOGIC;
    overwrite_c : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_STORAGE_COUNT_CONTROL;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_STORAGE_COUNT_CONTROL is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal n_0_FRAME_ERR_RESULT_i_2 : STD_LOGIC;
  signal n_0_FRAME_ERR_RESULT_i_3 : STD_LOGIC;
  signal \n_0_storage_count_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_storage_count_r[1]_i_1\ : STD_LOGIC;
  signal \^stage_3_storage_count_r\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal storage_count_r0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of EOF_N_i_1 : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of FRAME_ERR_RESULT_i_3 : label is "soft_lutpair122";
begin
  O1 <= \^o1\;
  stage_3_storage_count_r(0 to 1) <= \^stage_3_storage_count_r\(0 to 1);
EOF_N_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000777F"
    )
    port map (
      I0 => stage_2_start_with_data_r,
      I1 => stage_2_end_before_start_r,
      I2 => \^stage_3_storage_count_r\(1),
      I3 => \^stage_3_storage_count_r\(0),
      I4 => stage_3_end_storage_r,
      O => O3
    );
FRAME_ERR_RESULT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFECFCCCFCECFCC"
    )
    port map (
      I0 => n_0_FRAME_ERR_RESULT_i_2,
      I1 => I1,
      I2 => stage_2_start_with_data_r,
      I3 => stage_2_end_after_start_r,
      I4 => stage_2_end_before_start_r,
      I5 => n_0_FRAME_ERR_RESULT_i_3,
      O => FRAME_ERR_RESULT0
    );
FRAME_ERR_RESULT_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \^stage_3_storage_count_r\(0),
      I1 => \^stage_3_storage_count_r\(1),
      I2 => Q(1),
      I3 => Q(0),
      O => n_0_FRAME_ERR_RESULT_i_2
    );
FRAME_ERR_RESULT_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^stage_3_storage_count_r\(1),
      I1 => \^stage_3_storage_count_r\(0),
      O => n_0_FRAME_ERR_RESULT_i_3
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\OUTPUT_SELECT[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000444"
    )
    port map (
      I0 => \^stage_3_storage_count_r\(0),
      I1 => \^stage_3_storage_count_r\(1),
      I2 => Q(0),
      I3 => Q(1),
      I4 => stage_2_start_with_data_r,
      I5 => stage_3_end_storage_r,
      O => O2
    );
SRC_RDY_N_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF5575FFFF"
    )
    port map (
      I0 => \^o1\,
      I1 => stage_3_end_storage_r,
      I2 => stage_2_start_with_data_r,
      I3 => stage_2_end_before_start_r,
      I4 => start_rx_i,
      I5 => I1,
      O => O4
    );
SRC_RDY_N_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEFEEE"
    )
    port map (
      I0 => stage_3_end_storage_r,
      I1 => stage_2_start_with_data_r,
      I2 => \^stage_3_storage_count_r\(0),
      I3 => Q(1),
      I4 => \^stage_3_storage_count_r\(1),
      I5 => Q(0),
      O => \^o1\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end_storage_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008D880000"
    )
    port map (
      I0 => stage_2_start_with_data_r,
      I1 => stage_2_end_after_start_r,
      I2 => n_0_FRAME_ERR_RESULT_i_2,
      I3 => stage_2_end_before_start_r,
      I4 => start_rx_i,
      I5 => I1,
      O => O5
    );
\storage_count_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F0F07998"
    )
    port map (
      I0 => Q(0),
      I1 => \^stage_3_storage_count_r\(1),
      I2 => Q(1),
      I3 => \^stage_3_storage_count_r\(0),
      I4 => overwrite_c,
      I5 => storage_count_r0,
      O => \n_0_storage_count_r[0]_i_1\
    );
\storage_count_r[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => I1,
      I1 => start_rx_i,
      O => storage_count_r0
    );
\storage_count_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00C6"
    )
    port map (
      I0 => \^stage_3_storage_count_r\(1),
      I1 => Q(0),
      I2 => overwrite_c,
      I3 => storage_count_r0,
      O => \n_0_storage_count_r[1]_i_1\
    );
\storage_count_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_storage_count_r[0]_i_1\,
      Q => \^stage_3_storage_count_r\(0),
      R => \<const0>\
    );
\storage_count_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_storage_count_r[1]_i_1\,
      Q => \^stage_3_storage_count_r\(1),
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_STORAGE_MUX is
  port (
    D : out STD_LOGIC_VECTOR ( 15 downto 0 );
    STORAGE_DATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    I14 : in STD_LOGIC;
    I15 : in STD_LOGIC;
    I16 : in STD_LOGIC;
    I17 : in STD_LOGIC;
    I18 : in STD_LOGIC;
    I19 : in STD_LOGIC;
    I20 : in STD_LOGIC;
    I21 : in STD_LOGIC;
    I22 : in STD_LOGIC;
    I23 : in STD_LOGIC;
    I24 : in STD_LOGIC;
    I25 : in STD_LOGIC;
    I26 : in STD_LOGIC;
    I27 : in STD_LOGIC;
    I28 : in STD_LOGIC;
    I29 : in STD_LOGIC;
    I30 : in STD_LOGIC;
    I31 : in STD_LOGIC;
    I32 : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_STORAGE_MUX;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_STORAGE_MUX is
  signal \<const0>\ : STD_LOGIC;
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\STORAGE_DATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I1,
      Q => D(15),
      R => \<const0>\
    );
\STORAGE_DATA_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I11,
      Q => D(5),
      R => \<const0>\
    );
\STORAGE_DATA_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I12,
      Q => D(4),
      R => \<const0>\
    );
\STORAGE_DATA_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I13,
      Q => D(3),
      R => \<const0>\
    );
\STORAGE_DATA_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I14,
      Q => D(2),
      R => \<const0>\
    );
\STORAGE_DATA_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I15,
      Q => D(1),
      R => \<const0>\
    );
\STORAGE_DATA_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I16,
      Q => D(0),
      R => \<const0>\
    );
\STORAGE_DATA_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I17,
      Q => STORAGE_DATA(15),
      R => \<const0>\
    );
\STORAGE_DATA_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I18,
      Q => STORAGE_DATA(14),
      R => \<const0>\
    );
\STORAGE_DATA_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I19,
      Q => STORAGE_DATA(13),
      R => \<const0>\
    );
\STORAGE_DATA_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I20,
      Q => STORAGE_DATA(12),
      R => \<const0>\
    );
\STORAGE_DATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I2,
      Q => D(14),
      R => \<const0>\
    );
\STORAGE_DATA_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I21,
      Q => STORAGE_DATA(11),
      R => \<const0>\
    );
\STORAGE_DATA_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I22,
      Q => STORAGE_DATA(10),
      R => \<const0>\
    );
\STORAGE_DATA_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I23,
      Q => STORAGE_DATA(9),
      R => \<const0>\
    );
\STORAGE_DATA_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I24,
      Q => STORAGE_DATA(8),
      R => \<const0>\
    );
\STORAGE_DATA_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I25,
      Q => STORAGE_DATA(7),
      R => \<const0>\
    );
\STORAGE_DATA_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I26,
      Q => STORAGE_DATA(6),
      R => \<const0>\
    );
\STORAGE_DATA_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I27,
      Q => STORAGE_DATA(5),
      R => \<const0>\
    );
\STORAGE_DATA_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I28,
      Q => STORAGE_DATA(4),
      R => \<const0>\
    );
\STORAGE_DATA_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I29,
      Q => STORAGE_DATA(3),
      R => \<const0>\
    );
\STORAGE_DATA_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I30,
      Q => STORAGE_DATA(2),
      R => \<const0>\
    );
\STORAGE_DATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I3,
      Q => D(13),
      R => \<const0>\
    );
\STORAGE_DATA_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I31,
      Q => STORAGE_DATA(1),
      R => \<const0>\
    );
\STORAGE_DATA_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(0),
      D => I32,
      Q => STORAGE_DATA(0),
      R => \<const0>\
    );
\STORAGE_DATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I4,
      Q => D(12),
      R => \<const0>\
    );
\STORAGE_DATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I5,
      Q => D(11),
      R => \<const0>\
    );
\STORAGE_DATA_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I6,
      Q => D(10),
      R => \<const0>\
    );
\STORAGE_DATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I7,
      Q => D(9),
      R => \<const0>\
    );
\STORAGE_DATA_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I8,
      Q => D(8),
      R => \<const0>\
    );
\STORAGE_DATA_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I9,
      Q => D(7),
      R => \<const0>\
    );
\STORAGE_DATA_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => Q(1),
      D => I10,
      Q => D(6),
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_STORAGE_SWITCH_CONTROL is
  port (
    STORAGE_SELECT : out STD_LOGIC_VECTOR ( 1 downto 0 );
    stage_3_storage_count_r : in STD_LOGIC_VECTOR ( 0 to 1 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    stage_3_end_storage_r : in STD_LOGIC;
    stage_2_start_with_data_r : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_STORAGE_SWITCH_CONTROL;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_STORAGE_SWITCH_CONTROL is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \n_0_STORAGE_SELECT[4]_i_1\ : STD_LOGIC;
  signal \n_0_STORAGE_SELECT[9]_i_1\ : STD_LOGIC;
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\STORAGE_SELECT[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
    port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => stage_3_storage_count_r(1),
      I3 => stage_3_storage_count_r(0),
      I4 => stage_3_end_storage_r,
      I5 => stage_2_start_with_data_r,
      O => \n_0_STORAGE_SELECT[4]_i_1\
    );
\STORAGE_SELECT[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF14"
    )
    port map (
      I0 => stage_3_storage_count_r(1),
      I1 => Q(0),
      I2 => Q(1),
      I3 => stage_3_end_storage_r,
      I4 => stage_2_start_with_data_r,
      O => \n_0_STORAGE_SELECT[9]_i_1\
    );
\STORAGE_SELECT_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_STORAGE_SELECT[4]_i_1\,
      Q => STORAGE_SELECT(1),
      R => \<const0>\
    );
\STORAGE_SELECT_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_STORAGE_SELECT[9]_i_1\,
      Q => STORAGE_SELECT(0),
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_SYM_DEC_4BYTE is
  port (
    RX_NEG : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    first_v_received_r : out STD_LOGIC;
    got_v_i : out STD_LOGIC;
    rx_cc_i : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O9 : out STD_LOGIC;
    counter3_r0 : out STD_LOGIC;
    counter4_r0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    O11 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O14 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O15 : out STD_LOGIC;
    O3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O6 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    S1 : out STD_LOGIC;
    S11_in : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    in_frame_c : in STD_LOGIC_VECTOR ( 0 to 1 );
    gen_spa_i : in STD_LOGIC;
    ready_r : in STD_LOGIC;
    RXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I1 : in STD_LOGIC;
    I13 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I14 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end aurora_8b10b_0aurora_8b10b_0_SYM_DEC_4BYTE;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_SYM_DEC_4BYTE is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o11\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^o13\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^o14\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^o4\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^o5\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^o6\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal RX_CC0 : STD_LOGIC;
  signal RX_ECP0 : STD_LOGIC;
  signal RX_NEG0 : STD_LOGIC;
  signal RX_SCP0 : STD_LOGIC;
  signal RX_SP0 : STD_LOGIC;
  signal RX_SPA0 : STD_LOGIC;
  signal data1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data2 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^first_v_received_r\ : STD_LOGIC;
  signal got_v_c : STD_LOGIC;
  signal n_0_RX_CC_i_2 : STD_LOGIC;
  signal n_0_RX_CC_i_3 : STD_LOGIC;
  signal \n_0_RX_ECP[1]_i_1\ : STD_LOGIC;
  signal \n_0_RX_SCP[1]_i_1\ : STD_LOGIC;
  signal n_0_RX_SPA_i_2 : STD_LOGIC;
  signal n_0_RX_SP_i_2 : STD_LOGIC;
  signal n_0_first_v_received_r_i_1 : STD_LOGIC;
  signal n_0_first_v_received_r_i_2 : STD_LOGIC;
  signal n_0_first_v_received_r_i_3 : STD_LOGIC;
  signal \n_0_rx_cc_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cc_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cc_r[4]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cc_r[5]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cc_r[6]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cc_r[7]_i_1\ : STD_LOGIC;
  signal \n_0_rx_ecp_d_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_rx_ecp_d_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_rx_ecp_d_r[5]_i_1\ : STD_LOGIC;
  signal \n_0_rx_ecp_d_r[7]_i_1\ : STD_LOGIC;
  signal \n_0_rx_pad_d_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_rx_pad_d_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_rx_pad_d_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_rx_pe_control_r_reg[0]\ : STD_LOGIC;
  signal \n_0_rx_pe_control_r_reg[1]\ : STD_LOGIC;
  signal \n_0_rx_pe_control_r_reg[2]\ : STD_LOGIC;
  signal \n_0_rx_pe_control_r_reg[3]\ : STD_LOGIC;
  signal \n_0_rx_scp_d_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_rx_scp_d_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_rx_scp_d_r[4]_i_1\ : STD_LOGIC;
  signal \n_0_rx_scp_d_r[7]_i_1\ : STD_LOGIC;
  signal \n_0_rx_spa_neg_d_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_rx_spa_r[4]_i_1\ : STD_LOGIC;
  signal \n_0_rx_spa_r[5]_i_1\ : STD_LOGIC;
  signal \n_0_rx_spa_r[6]_i_1\ : STD_LOGIC;
  signal \n_0_rx_v_d_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_rx_v_d_r[4]_i_1\ : STD_LOGIC;
  signal \n_0_rx_v_d_r[5]_i_1\ : STD_LOGIC;
  signal \n_0_rx_v_d_r[6]_i_1\ : STD_LOGIC;
  signal \n_0_rx_v_d_r[7]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_control_bits_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_control_bits_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[10]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[11]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[12]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[13]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[14]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[15]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[2]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[3]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[4]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[5]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[6]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[7]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[8]_i_1\ : STD_LOGIC;
  signal \n_0_word_aligned_data_r[9]_i_1\ : STD_LOGIC;
  signal p_1_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_3_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_8_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal previous_cycle_control_r : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal rx_cc_r : STD_LOGIC_VECTOR ( 0 to 7 );
  signal rx_cc_r0 : STD_LOGIC;
  signal rx_ecp_d_r : STD_LOGIC_VECTOR ( 0 to 7 );
  signal rx_ecp_d_r0 : STD_LOGIC;
  signal rx_pad_d_r : STD_LOGIC_VECTOR ( 0 to 3 );
  signal rx_pad_d_r0 : STD_LOGIC;
  signal rx_pad_striped_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_pe_data_v_striped_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_scp_d_r : STD_LOGIC_VECTOR ( 0 to 7 );
  signal rx_sp_i : STD_LOGIC;
  signal rx_sp_neg_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_sp_r : STD_LOGIC_VECTOR ( 0 to 7 );
  signal rx_sp_r111_in : STD_LOGIC;
  signal rx_sp_r114_in : STD_LOGIC;
  signal rx_spa_i : STD_LOGIC;
  signal rx_spa_neg_d_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rx_spa_neg_d_r0 : STD_LOGIC;
  signal rx_spa_r : STD_LOGIC_VECTOR ( 0 to 7 );
  signal rx_spa_r0 : STD_LOGIC;
  signal rx_v_d_r : STD_LOGIC_VECTOR ( 0 to 7 );
  signal rx_v_d_r0 : STD_LOGIC;
  signal word_aligned_control_bits_r : STD_LOGIC_VECTOR ( 0 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of RX_CC_i_2 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \RX_PAD[0]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \RX_PAD[1]_i_1\ : label is "soft_lutpair50";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \RX_PE_DATA_V[0]_i_1\ : label is true;
  attribute SOFT_HLUTNM of \RX_PE_DATA_V[0]_i_1\ : label is "soft_lutpair49";
  attribute RETAIN_INVERTER of \RX_PE_DATA_V[1]_i_1\ : label is true;
  attribute SOFT_HLUTNM of \RX_PE_DATA_V[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of first_v_received_r_i_2 : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \rx_cc_r[3]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rx_cc_r[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \rx_ecp_d_r[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rx_ecp_d_r[3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rx_ecp_d_r[5]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rx_ecp_d_r[7]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \rx_pad_d_r[0]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rx_pad_d_r[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rx_pad_d_r[2]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_pad_d_r[3]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_scp_d_r[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rx_scp_d_r[3]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \rx_scp_d_r[4]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rx_scp_d_r[7]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \rx_sp_neg_d_r[0]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rx_sp_neg_d_r[1]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \rx_sp_r[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \rx_sp_r[3]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \rx_sp_r[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rx_sp_r[5]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \rx_sp_r[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \rx_sp_r[7]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \rx_spa_neg_d_r[0]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rx_spa_neg_d_r[1]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rx_spa_r[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \rx_spa_r[4]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \rx_spa_r[5]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rx_spa_r[6]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_v_d_r[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \rx_v_d_r[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \rx_v_d_r[2]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \rx_v_d_r[3]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \rx_v_d_r[4]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \rx_v_d_r[5]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \rx_v_d_r[6]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \rx_v_d_r[7]_i_1\ : label is "soft_lutpair57";
begin
  O1 <= \^o1\;
  O11(7 downto 0) <= \^o11\(7 downto 0);
  O13(1 downto 0) <= \^o13\(1 downto 0);
  O14(1 downto 0) <= \^o14\(1 downto 0);
  O2 <= \^o2\;
  O3(7 downto 0) <= \^o3\(7 downto 0);
  O4(7 downto 0) <= \^o4\(7 downto 0);
  O5(7 downto 0) <= \^o5\(7 downto 0);
  O6(7 downto 0) <= \^o6\(7 downto 0);
  Q(0) <= \^q\(0);
  first_v_received_r <= \^first_v_received_r\;
\DEFRAMED_DATA_V[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rx_pe_data_v_striped_i(0),
      I1 => in_frame_c(0),
      O => D(1)
    );
\DEFRAMED_DATA_V[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rx_pe_data_v_striped_i(1),
      I1 => in_frame_c(1),
      O => D(0)
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
GOT_V_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => n_0_first_v_received_r_i_2,
      I1 => n_0_first_v_received_r_i_3,
      I2 => rx_v_d_r(7),
      I3 => rx_v_d_r(1),
      O => got_v_c
    );
GOT_V_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => got_v_c,
      Q => got_v_i,
      R => \<const0>\
    );
RX_CC_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => n_0_RX_CC_i_2,
      I1 => \n_0_rx_pe_control_r_reg[2]\,
      I2 => \n_0_rx_pe_control_r_reg[3]\,
      I3 => n_0_RX_CC_i_3,
      I4 => rx_cc_r(1),
      I5 => rx_cc_r(6),
      O => RX_CC0
    );
RX_CC_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[1]\,
      I1 => \n_0_rx_pe_control_r_reg[0]\,
      O => n_0_RX_CC_i_2
    );
RX_CC_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => rx_cc_r(0),
      I1 => rx_cc_r(4),
      I2 => rx_cc_r(2),
      I3 => rx_cc_r(7),
      I4 => rx_cc_r(5),
      I5 => rx_cc_r(3),
      O => n_0_RX_CC_i_3
    );
RX_CC_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RX_CC0,
      Q => rx_cc_i,
      R => \<const0>\
    );
\RX_ECP[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[0]\,
      I1 => \n_0_rx_pe_control_r_reg[1]\,
      I2 => rx_ecp_d_r(2),
      I3 => rx_ecp_d_r(0),
      I4 => rx_ecp_d_r(3),
      I5 => rx_ecp_d_r(1),
      O => RX_ECP0
    );
\RX_ECP[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[3]\,
      I1 => \n_0_rx_pe_control_r_reg[2]\,
      I2 => rx_ecp_d_r(6),
      I3 => rx_ecp_d_r(4),
      I4 => rx_ecp_d_r(7),
      I5 => rx_ecp_d_r(5),
      O => \n_0_RX_ECP[1]_i_1\
    );
\RX_ECP_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RX_ECP0,
      Q => \^o13\(1),
      R => \<const0>\
    );
\RX_ECP_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_RX_ECP[1]_i_1\,
      Q => \^o13\(0),
      R => \<const0>\
    );
RX_NEG_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
    port map (
      I0 => rx_spa_neg_d_r(0),
      I1 => rx_spa_neg_d_r(1),
      I2 => rx_sp_neg_d_r(0),
      I3 => rx_sp_neg_d_r(1),
      I4 => \n_0_rx_pe_control_r_reg[1]\,
      O => RX_NEG0
    );
RX_NEG_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RX_NEG0,
      Q => RX_NEG,
      R => \<const0>\
    );
\RX_PAD[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[0]\,
      I1 => \n_0_rx_pe_control_r_reg[1]\,
      I2 => rx_pad_d_r(0),
      I3 => rx_pad_d_r(1),
      O => p_3_out(1)
    );
\RX_PAD[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[2]\,
      I1 => rx_pad_d_r(2),
      I2 => rx_pad_d_r(3),
      I3 => \n_0_rx_pe_control_r_reg[3]\,
      O => p_3_out(0)
    );
\RX_PAD_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_3_out(1),
      Q => rx_pad_striped_i(0),
      R => \<const0>\
    );
\RX_PAD_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_3_out(0),
      Q => rx_pad_striped_i(1),
      R => \<const0>\
    );
\RX_PE_DATA_V[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[0]\,
      O => p_1_out(1)
    );
\RX_PE_DATA_V[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[2]\,
      O => p_1_out(0)
    );
\RX_PE_DATA_V_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_1_out(1),
      Q => rx_pe_data_v_striped_i(0),
      R => \<const0>\
    );
\RX_PE_DATA_V_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_1_out(0),
      Q => rx_pe_data_v_striped_i(1),
      R => \<const0>\
    );
\RX_SCP[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[0]\,
      I1 => \n_0_rx_pe_control_r_reg[1]\,
      I2 => rx_scp_d_r(2),
      I3 => rx_scp_d_r(0),
      I4 => rx_scp_d_r(3),
      I5 => rx_scp_d_r(1),
      O => RX_SCP0
    );
\RX_SCP[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[3]\,
      I1 => \n_0_rx_pe_control_r_reg[2]\,
      I2 => rx_scp_d_r(6),
      I3 => rx_scp_d_r(4),
      I4 => rx_scp_d_r(7),
      I5 => rx_scp_d_r(5),
      O => \n_0_RX_SCP[1]_i_1\
    );
\RX_SCP_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RX_SCP0,
      Q => \^o14\(1),
      R => \<const0>\
    );
\RX_SCP_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_RX_SCP[1]_i_1\,
      Q => \^o14\(0),
      R => \<const0>\
    );
RX_SPA_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => n_0_first_v_received_r_i_2,
      I1 => n_0_RX_SPA_i_2,
      I2 => rx_spa_r(7),
      I3 => rx_spa_r(6),
      O => RX_SPA0
    );
RX_SPA_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => rx_spa_r(0),
      I1 => rx_spa_r(1),
      I2 => rx_spa_r(2),
      I3 => rx_spa_r(5),
      I4 => rx_spa_r(4),
      I5 => rx_spa_r(3),
      O => n_0_RX_SPA_i_2
    );
RX_SPA_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RX_SPA0,
      Q => rx_spa_i,
      R => \<const0>\
    );
RX_SP_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => n_0_first_v_received_r_i_2,
      I1 => n_0_RX_SP_i_2,
      I2 => rx_sp_r(7),
      I3 => rx_sp_r(6),
      O => RX_SP0
    );
RX_SP_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => rx_sp_r(0),
      I1 => rx_sp_r(1),
      I2 => rx_sp_r(2),
      I3 => rx_sp_r(5),
      I4 => rx_sp_r(4),
      I5 => rx_sp_r(3),
      O => n_0_RX_SP_i_2
    );
RX_SP_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RX_SP0,
      Q => rx_sp_i,
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\counter3_r_reg[2]_srl3_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_spa_i,
      I1 => gen_spa_i,
      O => counter3_r0
    );
\counter4_r_reg[14]_srl15_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => rx_sp_i,
      I1 => ready_r,
      O => counter4_r0
    );
data_after_start_muxcy_0_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o14\(1),
      O => S11_in
    );
data_after_start_muxcy_1_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o14\(0),
      O => S1
    );
first_v_received_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000080000000"
    )
    port map (
      I0 => n_0_first_v_received_r_i_2,
      I1 => n_0_first_v_received_r_i_3,
      I2 => rx_v_d_r(7),
      I3 => rx_v_d_r(1),
      I4 => I1,
      I5 => \^first_v_received_r\,
      O => n_0_first_v_received_r_i_1
    );
first_v_received_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => \n_0_rx_pe_control_r_reg[2]\,
      I1 => \n_0_rx_pe_control_r_reg[0]\,
      I2 => \n_0_rx_pe_control_r_reg[1]\,
      I3 => \n_0_rx_pe_control_r_reg[3]\,
      O => n_0_first_v_received_r_i_2
    );
first_v_received_r_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => rx_v_d_r(0),
      I1 => rx_v_d_r(6),
      I2 => rx_v_d_r(3),
      I3 => rx_v_d_r(2),
      I4 => rx_v_d_r(5),
      I5 => rx_v_d_r(4),
      O => n_0_first_v_received_r_i_3
    );
first_v_received_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_0_first_v_received_r_i_1,
      Q => \^first_v_received_r\,
      R => \<const0>\
    );
in_frame_muxcy_0_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o13\(1),
      I1 => \^o14\(1),
      O => O15
    );
in_frame_muxcy_1_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o13\(0),
      I1 => \^o14\(0),
      O => O12
    );
\left_align_select_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I2,
      Q => \^o1\,
      R => \<const0>\
    );
\left_align_select_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I3,
      Q => \^o2\,
      R => \<const0>\
    );
\previous_cycle_control_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXCHARISK(3),
      Q => \^q\(0),
      R => \<const0>\
    );
\previous_cycle_control_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXCHARISK(2),
      Q => previous_cycle_control_r(1),
      R => \<const0>\
    );
\previous_cycle_control_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXCHARISK(1),
      Q => previous_cycle_control_r(2),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(24),
      Q => \^o11\(0),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(18),
      Q => data2(2),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(19),
      Q => data2(3),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(20),
      Q => data2(4),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(21),
      Q => data2(5),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(22),
      Q => data2(6),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(23),
      Q => data2(7),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(8),
      Q => data1(0),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(9),
      Q => data1(1),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(10),
      Q => data1(2),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(11),
      Q => data1(3),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(25),
      Q => \^o11\(1),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(12),
      Q => data1(4),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(13),
      Q => data1(5),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(14),
      Q => data1(6),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(15),
      Q => data1(7),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(26),
      Q => \^o11\(2),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(27),
      Q => \^o11\(3),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(28),
      Q => \^o11\(4),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(29),
      Q => \^o11\(5),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(30),
      Q => \^o11\(6),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(31),
      Q => \^o11\(7),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(16),
      Q => data2(0),
      R => \<const0>\
    );
\previous_cycle_data_r_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => RXDATA(17),
      Q => data2(1),
      R => \<const0>\
    );
\rx_cc_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \^o6\(5),
      I1 => \^o6\(4),
      I2 => \^o6\(6),
      I3 => \^o6\(7),
      O => rx_ecp_d_r0
    );
\rx_cc_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o6\(3),
      I1 => \^o6\(2),
      I2 => \^o6\(1),
      I3 => \^o6\(0),
      O => rx_cc_r0
    );
\rx_cc_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \^o5\(5),
      I1 => \^o5\(4),
      I2 => \^o5\(6),
      I3 => \^o5\(7),
      O => \n_0_rx_cc_r[2]_i_1\
    );
\rx_cc_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o5\(3),
      I1 => \^o5\(2),
      I2 => \^o5\(1),
      I3 => \^o5\(0),
      O => \n_0_rx_cc_r[3]_i_1\
    );
\rx_cc_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \^o4\(5),
      I1 => \^o4\(4),
      I2 => \^o4\(6),
      I3 => \^o4\(7),
      O => \n_0_rx_cc_r[4]_i_1\
    );
\rx_cc_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o4\(3),
      I1 => \^o4\(2),
      I2 => \^o4\(1),
      I3 => \^o4\(0),
      O => \n_0_rx_cc_r[5]_i_1\
    );
\rx_cc_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => \^o3\(5),
      I1 => \^o3\(4),
      I2 => \^o3\(6),
      I3 => \^o3\(7),
      O => \n_0_rx_cc_r[6]_i_1\
    );
\rx_cc_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o3\(3),
      I1 => \^o3\(2),
      I2 => \^o3\(1),
      I3 => \^o3\(0),
      O => \n_0_rx_cc_r[7]_i_1\
    );
\rx_cc_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rx_ecp_d_r0,
      Q => rx_cc_r(0),
      R => \<const0>\
    );
\rx_cc_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rx_cc_r0,
      Q => rx_cc_r(1),
      R => \<const0>\
    );
\rx_cc_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_cc_r[2]_i_1\,
      Q => rx_cc_r(2),
      R => \<const0>\
    );
\rx_cc_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_cc_r[3]_i_1\,
      Q => rx_cc_r(3),
      R => \<const0>\
    );
\rx_cc_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_cc_r[4]_i_1\,
      Q => rx_cc_r(4),
      R => \<const0>\
    );
\rx_cc_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_cc_r[5]_i_1\,
      Q => rx_cc_r(5),
      R => \<const0>\
    );
\rx_cc_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_cc_r[6]_i_1\,
      Q => rx_cc_r(6),
      R => \<const0>\
    );
\rx_cc_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_cc_r[7]_i_1\,
      Q => rx_cc_r(7),
      R => \<const0>\
    );
\rx_ecp_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o6\(1),
      I1 => \^o6\(0),
      I2 => \^o6\(2),
      I3 => \^o6\(3),
      O => \n_0_rx_ecp_d_r[1]_i_1\
    );
\rx_ecp_d_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o5\(0),
      I1 => \^o5\(1),
      I2 => \^o5\(2),
      I3 => \^o5\(3),
      O => \n_0_rx_ecp_d_r[3]_i_1\
    );
\rx_ecp_d_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o4\(1),
      I1 => \^o4\(0),
      I2 => \^o4\(2),
      I3 => \^o4\(3),
      O => \n_0_rx_ecp_d_r[5]_i_1\
    );
\rx_ecp_d_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o3\(0),
      I1 => \^o3\(1),
      I2 => \^o3\(2),
      I3 => \^o3\(3),
      O => \n_0_rx_ecp_d_r[7]_i_1\
    );
\rx_ecp_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rx_ecp_d_r0,
      Q => rx_ecp_d_r(0),
      R => \<const0>\
    );
\rx_ecp_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_ecp_d_r[1]_i_1\,
      Q => rx_ecp_d_r(1),
      R => \<const0>\
    );
\rx_ecp_d_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_cc_r[2]_i_1\,
      Q => rx_ecp_d_r(2),
      R => \<const0>\
    );
\rx_ecp_d_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_ecp_d_r[3]_i_1\,
      Q => rx_ecp_d_r(3),
      R => \<const0>\
    );
\rx_ecp_d_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_cc_r[4]_i_1\,
      Q => rx_ecp_d_r(4),
      R => \<const0>\
    );
\rx_ecp_d_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_ecp_d_r[5]_i_1\,
      Q => rx_ecp_d_r(5),
      R => \<const0>\
    );
\rx_ecp_d_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_cc_r[6]_i_1\,
      Q => rx_ecp_d_r(6),
      R => \<const0>\
    );
\rx_ecp_d_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_ecp_d_r[7]_i_1\,
      Q => rx_ecp_d_r(7),
      R => \<const0>\
    );
\rx_pad_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => \^o5\(6),
      I1 => \^o5\(7),
      I2 => \^o5\(4),
      I3 => \^o5\(5),
      O => rx_pad_d_r0
    );
\rx_pad_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \^o5\(1),
      I1 => \^o5\(0),
      I2 => \^o5\(2),
      I3 => \^o5\(3),
      O => \n_0_rx_pad_d_r[1]_i_1\
    );
\rx_pad_d_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => \^o3\(6),
      I1 => \^o3\(7),
      I2 => \^o3\(4),
      I3 => \^o3\(5),
      O => \n_0_rx_pad_d_r[2]_i_1\
    );
\rx_pad_d_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \^o3\(1),
      I1 => \^o3\(0),
      I2 => \^o3\(2),
      I3 => \^o3\(3),
      O => \n_0_rx_pad_d_r[3]_i_1\
    );
\rx_pad_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rx_pad_d_r0,
      Q => rx_pad_d_r(0),
      R => \<const0>\
    );
\rx_pad_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_pad_d_r[1]_i_1\,
      Q => rx_pad_d_r(1),
      R => \<const0>\
    );
\rx_pad_d_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_pad_d_r[2]_i_1\,
      Q => rx_pad_d_r(2),
      R => \<const0>\
    );
\rx_pad_d_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_pad_d_r[3]_i_1\,
      Q => rx_pad_d_r(3),
      R => \<const0>\
    );
\rx_pe_control_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => word_aligned_control_bits_r(0),
      Q => \n_0_rx_pe_control_r_reg[0]\,
      R => \<const0>\
    );
\rx_pe_control_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => word_aligned_control_bits_r(1),
      Q => \n_0_rx_pe_control_r_reg[1]\,
      R => \<const0>\
    );
\rx_pe_control_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => word_aligned_control_bits_r(2),
      Q => \n_0_rx_pe_control_r_reg[2]\,
      R => \<const0>\
    );
\rx_pe_control_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => word_aligned_control_bits_r(3),
      Q => \n_0_rx_pe_control_r_reg[3]\,
      R => \<const0>\
    );
\rx_scp_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => \^o6\(7),
      I1 => \^o6\(6),
      I2 => \^o6\(4),
      I3 => \^o6\(5),
      O => \n_0_rx_scp_d_r[0]_i_1\
    );
\rx_scp_d_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o5\(2),
      I1 => \^o5\(3),
      I2 => \^o5\(1),
      I3 => \^o5\(0),
      O => \n_0_rx_scp_d_r[3]_i_1\
    );
\rx_scp_d_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => \^o4\(7),
      I1 => \^o4\(6),
      I2 => \^o4\(4),
      I3 => \^o4\(5),
      O => \n_0_rx_scp_d_r[4]_i_1\
    );
\rx_scp_d_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o3\(2),
      I1 => \^o3\(3),
      I2 => \^o3\(1),
      I3 => \^o3\(0),
      O => \n_0_rx_scp_d_r[7]_i_1\
    );
\rx_scp_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_scp_d_r[0]_i_1\,
      Q => rx_scp_d_r(0),
      R => \<const0>\
    );
\rx_scp_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(6),
      Q => rx_scp_d_r(1),
      R => \<const0>\
    );
\rx_scp_d_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_cc_r[2]_i_1\,
      Q => rx_scp_d_r(2),
      R => \<const0>\
    );
\rx_scp_d_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_scp_d_r[3]_i_1\,
      Q => rx_scp_d_r(3),
      R => \<const0>\
    );
\rx_scp_d_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_scp_d_r[4]_i_1\,
      Q => rx_scp_d_r(4),
      R => \<const0>\
    );
\rx_scp_d_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_spa_r[5]_i_1\,
      Q => rx_scp_d_r(5),
      R => \<const0>\
    );
\rx_scp_d_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_cc_r[6]_i_1\,
      Q => rx_scp_d_r(6),
      R => \<const0>\
    );
\rx_scp_d_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_scp_d_r[7]_i_1\,
      Q => rx_scp_d_r(7),
      R => \<const0>\
    );
\rx_sp_neg_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o5\(6),
      I1 => \^o5\(7),
      I2 => \^o5\(5),
      I3 => \^o5\(4),
      O => rx_sp_r114_in
    );
\rx_sp_neg_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => \^o5\(3),
      I1 => \^o5\(2),
      I2 => \^o5\(0),
      I3 => \^o5\(1),
      O => rx_sp_r111_in
    );
\rx_sp_neg_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rx_sp_r114_in,
      Q => rx_sp_neg_d_r(0),
      R => \<const0>\
    );
\rx_sp_neg_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rx_sp_r111_in,
      Q => rx_sp_neg_d_r(1),
      R => \<const0>\
    );
\rx_sp_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2004"
    )
    port map (
      I0 => \^o5\(5),
      I1 => \^o5\(6),
      I2 => \^o5\(4),
      I3 => \^o5\(7),
      O => p_8_out(5)
    );
\rx_sp_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1008"
    )
    port map (
      I0 => \^o5\(3),
      I1 => \^o5\(1),
      I2 => \^o5\(2),
      I3 => \^o5\(0),
      O => p_8_out(4)
    );
\rx_sp_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
    port map (
      I0 => \^o4\(7),
      I1 => \^o4\(5),
      I2 => \^o4\(6),
      I3 => \^o4\(4),
      O => p_8_out(3)
    );
\rx_sp_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0420"
    )
    port map (
      I0 => \^o4\(3),
      I1 => \^o4\(2),
      I2 => \^o4\(1),
      I3 => \^o4\(0),
      O => p_8_out(2)
    );
\rx_sp_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0810"
    )
    port map (
      I0 => \^o3\(7),
      I1 => \^o3\(5),
      I2 => \^o3\(6),
      I3 => \^o3\(4),
      O => p_8_out(1)
    );
\rx_sp_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0420"
    )
    port map (
      I0 => \^o3\(3),
      I1 => \^o3\(2),
      I2 => \^o3\(1),
      I3 => \^o3\(0),
      O => p_8_out(0)
    );
\rx_sp_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(7),
      Q => rx_sp_r(0),
      R => \<const0>\
    );
\rx_sp_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(6),
      Q => rx_sp_r(1),
      R => \<const0>\
    );
\rx_sp_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(5),
      Q => rx_sp_r(2),
      R => \<const0>\
    );
\rx_sp_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(4),
      Q => rx_sp_r(3),
      R => \<const0>\
    );
\rx_sp_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(3),
      Q => rx_sp_r(4),
      R => \<const0>\
    );
\rx_sp_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(2),
      Q => rx_sp_r(5),
      R => \<const0>\
    );
\rx_sp_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(1),
      Q => rx_sp_r(6),
      R => \<const0>\
    );
\rx_sp_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(0),
      Q => rx_sp_r(7),
      R => \<const0>\
    );
\rx_spa_neg_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o5\(5),
      I1 => \^o5\(4),
      I2 => \^o5\(6),
      I3 => \^o5\(7),
      O => rx_spa_neg_d_r0
    );
\rx_spa_neg_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \^o5\(2),
      I1 => \^o5\(3),
      I2 => \^o5\(1),
      I3 => \^o5\(0),
      O => \n_0_rx_spa_neg_d_r[1]_i_1\
    );
\rx_spa_neg_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rx_spa_neg_d_r0,
      Q => rx_spa_neg_d_r(0),
      R => \<const0>\
    );
\rx_spa_neg_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_spa_neg_d_r[1]_i_1\,
      Q => rx_spa_neg_d_r(1),
      R => \<const0>\
    );
\rx_spa_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => \^o5\(6),
      I1 => \^o5\(7),
      I2 => \^o5\(5),
      I3 => \^o5\(4),
      O => rx_spa_r0
    );
\rx_spa_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => \^o4\(6),
      I1 => \^o4\(7),
      I2 => \^o4\(5),
      I3 => \^o4\(4),
      O => \n_0_rx_spa_r[4]_i_1\
    );
\rx_spa_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \^o4\(1),
      I1 => \^o4\(0),
      I2 => \^o4\(2),
      I3 => \^o4\(3),
      O => \n_0_rx_spa_r[5]_i_1\
    );
\rx_spa_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => \^o3\(6),
      I1 => \^o3\(7),
      I2 => \^o3\(5),
      I3 => \^o3\(4),
      O => \n_0_rx_spa_r[6]_i_1\
    );
\rx_spa_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(7),
      Q => rx_spa_r(0),
      R => \<const0>\
    );
\rx_spa_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(6),
      Q => rx_spa_r(1),
      R => \<const0>\
    );
\rx_spa_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rx_spa_r0,
      Q => rx_spa_r(2),
      R => \<const0>\
    );
\rx_spa_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_pad_d_r[1]_i_1\,
      Q => rx_spa_r(3),
      R => \<const0>\
    );
\rx_spa_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_spa_r[4]_i_1\,
      Q => rx_spa_r(4),
      R => \<const0>\
    );
\rx_spa_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_spa_r[5]_i_1\,
      Q => rx_spa_r(5),
      R => \<const0>\
    );
\rx_spa_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_spa_r[6]_i_1\,
      Q => rx_spa_r(6),
      R => \<const0>\
    );
\rx_spa_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_pad_d_r[3]_i_1\,
      Q => rx_spa_r(7),
      R => \<const0>\
    );
\rx_v_d_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o6\(6),
      I1 => \^o6\(7),
      I2 => \^o6\(5),
      I3 => \^o6\(4),
      O => p_8_out(7)
    );
\rx_v_d_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \^o6\(1),
      I1 => \^o6\(0),
      I2 => \^o6\(2),
      I3 => \^o6\(3),
      O => p_8_out(6)
    );
\rx_v_d_r[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o5\(4),
      I1 => \^o5\(5),
      I2 => \^o5\(6),
      I3 => \^o5\(7),
      O => rx_v_d_r0
    );
\rx_v_d_r[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => \^o5\(2),
      I1 => \^o5\(3),
      I2 => \^o5\(1),
      I3 => \^o5\(0),
      O => \n_0_rx_v_d_r[3]_i_1\
    );
\rx_v_d_r[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o4\(4),
      I1 => \^o4\(5),
      I2 => \^o4\(6),
      I3 => \^o4\(7),
      O => \n_0_rx_v_d_r[4]_i_1\
    );
\rx_v_d_r[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => \^o4\(2),
      I1 => \^o4\(3),
      I2 => \^o4\(1),
      I3 => \^o4\(0),
      O => \n_0_rx_v_d_r[5]_i_1\
    );
\rx_v_d_r[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => \^o3\(4),
      I1 => \^o3\(5),
      I2 => \^o3\(6),
      I3 => \^o3\(7),
      O => \n_0_rx_v_d_r[6]_i_1\
    );
\rx_v_d_r[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => \^o3\(2),
      I1 => \^o3\(3),
      I2 => \^o3\(1),
      I3 => \^o3\(0),
      O => \n_0_rx_v_d_r[7]_i_1\
    );
\rx_v_d_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(7),
      Q => rx_v_d_r(0),
      R => \<const0>\
    );
\rx_v_d_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_8_out(6),
      Q => rx_v_d_r(1),
      R => \<const0>\
    );
\rx_v_d_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rx_v_d_r0,
      Q => rx_v_d_r(2),
      R => \<const0>\
    );
\rx_v_d_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_v_d_r[3]_i_1\,
      Q => rx_v_d_r(3),
      R => \<const0>\
    );
\rx_v_d_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_v_d_r[4]_i_1\,
      Q => rx_v_d_r(4),
      R => \<const0>\
    );
\rx_v_d_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_v_d_r[5]_i_1\,
      Q => rx_v_d_r(5),
      R => \<const0>\
    );
\rx_v_d_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_v_d_r[6]_i_1\,
      Q => rx_v_d_r(6),
      R => \<const0>\
    );
\rx_v_d_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_rx_v_d_r[7]_i_1\,
      Q => rx_v_d_r(7),
      R => \<const0>\
    );
stage_1_pad_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rx_pad_striped_i(0),
      I1 => rx_pad_striped_i(1),
      O => O9
    );
\word_aligned_control_bits_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^q\(0),
      I1 => previous_cycle_control_r(2),
      I2 => \^o2\,
      I3 => previous_cycle_control_r(1),
      I4 => \^o1\,
      I5 => RXCHARISK(0),
      O => \n_0_word_aligned_control_bits_r[0]_i_1\
    );
\word_aligned_control_bits_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => RXCHARISK(0),
      I1 => previous_cycle_control_r(1),
      I2 => \^o2\,
      I3 => \^q\(0),
      I4 => \^o1\,
      I5 => RXCHARISK(1),
      O => \n_0_word_aligned_control_bits_r[1]_i_1\
    );
\word_aligned_control_bits_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_control_bits_r[0]_i_1\,
      Q => word_aligned_control_bits_r(0),
      R => \<const0>\
    );
\word_aligned_control_bits_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_control_bits_r[1]_i_1\,
      Q => word_aligned_control_bits_r(1),
      R => \<const0>\
    );
\word_aligned_control_bits_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I5,
      Q => word_aligned_control_bits_r(2),
      R => \<const0>\
    );
\word_aligned_control_bits_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I4,
      Q => word_aligned_control_bits_r(3),
      R => \<const0>\
    );
\word_aligned_data_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o11\(7),
      I1 => data2(7),
      I2 => \^o1\,
      I3 => data1(7),
      I4 => \^o2\,
      I5 => RXDATA(7),
      O => \n_0_word_aligned_data_r[0]_i_1\
    );
\word_aligned_data_r[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => RXDATA(5),
      I1 => \^o11\(5),
      I2 => \^o1\,
      I3 => data2(5),
      I4 => \^o2\,
      I5 => RXDATA(13),
      O => \n_0_word_aligned_data_r[10]_i_1\
    );
\word_aligned_data_r[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => RXDATA(4),
      I1 => \^o11\(4),
      I2 => \^o1\,
      I3 => data2(4),
      I4 => \^o2\,
      I5 => RXDATA(12),
      O => \n_0_word_aligned_data_r[11]_i_1\
    );
\word_aligned_data_r[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => RXDATA(3),
      I1 => \^o11\(3),
      I2 => \^o1\,
      I3 => data2(3),
      I4 => \^o2\,
      I5 => RXDATA(11),
      O => \n_0_word_aligned_data_r[12]_i_1\
    );
\word_aligned_data_r[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => RXDATA(2),
      I1 => \^o11\(2),
      I2 => \^o1\,
      I3 => data2(2),
      I4 => \^o2\,
      I5 => RXDATA(10),
      O => \n_0_word_aligned_data_r[13]_i_1\
    );
\word_aligned_data_r[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => RXDATA(1),
      I1 => \^o11\(1),
      I2 => \^o1\,
      I3 => data2(1),
      I4 => \^o2\,
      I5 => RXDATA(9),
      O => \n_0_word_aligned_data_r[14]_i_1\
    );
\word_aligned_data_r[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => RXDATA(0),
      I1 => \^o11\(0),
      I2 => \^o1\,
      I3 => data2(0),
      I4 => \^o2\,
      I5 => RXDATA(8),
      O => \n_0_word_aligned_data_r[15]_i_1\
    );
\word_aligned_data_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o11\(6),
      I1 => data2(6),
      I2 => \^o1\,
      I3 => data1(6),
      I4 => \^o2\,
      I5 => RXDATA(6),
      O => \n_0_word_aligned_data_r[1]_i_1\
    );
\word_aligned_data_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o11\(5),
      I1 => data2(5),
      I2 => \^o1\,
      I3 => data1(5),
      I4 => \^o2\,
      I5 => RXDATA(5),
      O => \n_0_word_aligned_data_r[2]_i_1\
    );
\word_aligned_data_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o11\(4),
      I1 => data2(4),
      I2 => \^o1\,
      I3 => data1(4),
      I4 => \^o2\,
      I5 => RXDATA(4),
      O => \n_0_word_aligned_data_r[3]_i_1\
    );
\word_aligned_data_r[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o11\(3),
      I1 => data2(3),
      I2 => \^o1\,
      I3 => data1(3),
      I4 => \^o2\,
      I5 => RXDATA(3),
      O => \n_0_word_aligned_data_r[4]_i_1\
    );
\word_aligned_data_r[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o11\(2),
      I1 => data2(2),
      I2 => \^o1\,
      I3 => data1(2),
      I4 => \^o2\,
      I5 => RXDATA(2),
      O => \n_0_word_aligned_data_r[5]_i_1\
    );
\word_aligned_data_r[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o11\(1),
      I1 => data2(1),
      I2 => \^o1\,
      I3 => data1(1),
      I4 => \^o2\,
      I5 => RXDATA(1),
      O => \n_0_word_aligned_data_r[6]_i_1\
    );
\word_aligned_data_r[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^o11\(0),
      I1 => data2(0),
      I2 => \^o1\,
      I3 => data1(0),
      I4 => \^o2\,
      I5 => RXDATA(0),
      O => \n_0_word_aligned_data_r[7]_i_1\
    );
\word_aligned_data_r[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => RXDATA(7),
      I1 => \^o11\(7),
      I2 => \^o1\,
      I3 => data2(7),
      I4 => \^o2\,
      I5 => RXDATA(15),
      O => \n_0_word_aligned_data_r[8]_i_1\
    );
\word_aligned_data_r[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => RXDATA(6),
      I1 => \^o11\(6),
      I2 => \^o1\,
      I3 => data2(6),
      I4 => \^o2\,
      I5 => RXDATA(14),
      O => \n_0_word_aligned_data_r[9]_i_1\
    );
\word_aligned_data_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[0]_i_1\,
      Q => \^o6\(7),
      R => \<const0>\
    );
\word_aligned_data_r_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[10]_i_1\,
      Q => \^o5\(5),
      R => \<const0>\
    );
\word_aligned_data_r_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[11]_i_1\,
      Q => \^o5\(4),
      R => \<const0>\
    );
\word_aligned_data_r_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[12]_i_1\,
      Q => \^o5\(3),
      R => \<const0>\
    );
\word_aligned_data_r_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[13]_i_1\,
      Q => \^o5\(2),
      R => \<const0>\
    );
\word_aligned_data_r_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[14]_i_1\,
      Q => \^o5\(1),
      R => \<const0>\
    );
\word_aligned_data_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[15]_i_1\,
      Q => \^o5\(0),
      R => \<const0>\
    );
\word_aligned_data_r_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I14(7),
      Q => \^o4\(7),
      R => \<const0>\
    );
\word_aligned_data_r_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I14(6),
      Q => \^o4\(6),
      R => \<const0>\
    );
\word_aligned_data_r_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I14(5),
      Q => \^o4\(5),
      R => \<const0>\
    );
\word_aligned_data_r_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I14(4),
      Q => \^o4\(4),
      R => \<const0>\
    );
\word_aligned_data_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[1]_i_1\,
      Q => \^o6\(6),
      R => \<const0>\
    );
\word_aligned_data_r_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I14(3),
      Q => \^o4\(3),
      R => \<const0>\
    );
\word_aligned_data_r_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I14(2),
      Q => \^o4\(2),
      R => \<const0>\
    );
\word_aligned_data_r_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I14(1),
      Q => \^o4\(1),
      R => \<const0>\
    );
\word_aligned_data_r_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I14(0),
      Q => \^o4\(0),
      R => \<const0>\
    );
\word_aligned_data_r_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I13(7),
      Q => \^o3\(7),
      R => \<const0>\
    );
\word_aligned_data_r_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I13(6),
      Q => \^o3\(6),
      R => \<const0>\
    );
\word_aligned_data_r_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I13(5),
      Q => \^o3\(5),
      R => \<const0>\
    );
\word_aligned_data_r_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I13(4),
      Q => \^o3\(4),
      R => \<const0>\
    );
\word_aligned_data_r_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I13(3),
      Q => \^o3\(3),
      R => \<const0>\
    );
\word_aligned_data_r_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I13(2),
      Q => \^o3\(2),
      R => \<const0>\
    );
\word_aligned_data_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[2]_i_1\,
      Q => \^o6\(5),
      R => \<const0>\
    );
\word_aligned_data_r_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I13(1),
      Q => \^o3\(1),
      R => \<const0>\
    );
\word_aligned_data_r_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I13(0),
      Q => \^o3\(0),
      R => \<const0>\
    );
\word_aligned_data_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[3]_i_1\,
      Q => \^o6\(4),
      R => \<const0>\
    );
\word_aligned_data_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[4]_i_1\,
      Q => \^o6\(3),
      R => \<const0>\
    );
\word_aligned_data_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[5]_i_1\,
      Q => \^o6\(2),
      R => \<const0>\
    );
\word_aligned_data_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[6]_i_1\,
      Q => \^o6\(1),
      R => \<const0>\
    );
\word_aligned_data_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[7]_i_1\,
      Q => \^o6\(0),
      R => \<const0>\
    );
\word_aligned_data_r_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[8]_i_1\,
      Q => \^o5\(7),
      R => \<const0>\
    );
\word_aligned_data_r_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_word_aligned_data_r[9]_i_1\,
      Q => \^o5\(6),
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_SYM_GEN_4BYTE is
  port (
    TXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    TXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    gen_spa_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    GEN_SP : in STD_LOGIC;
    gen_cc_i : in STD_LOGIC;
    I1 : in STD_LOGIC;
    gen_scp_i : in STD_LOGIC;
    gen_a_i : in STD_LOGIC;
    I8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I10 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I12 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I19 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end aurora_8b10b_0aurora_8b10b_0_SYM_GEN_4BYTE;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_SYM_GEN_4BYTE is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal TX_DATA1 : STD_LOGIC;
  signal TX_DATA10_out : STD_LOGIC;
  signal TX_DATA110_out : STD_LOGIC;
  signal TX_DATA112_out : STD_LOGIC;
  signal TX_DATA122_out : STD_LOGIC;
  signal TX_DATA15_out : STD_LOGIC;
  signal TX_DATA17_out : STD_LOGIC;
  signal gen_a_r : STD_LOGIC;
  signal gen_cc_r : STD_LOGIC;
  signal gen_sp_r : STD_LOGIC;
  signal gen_spa_r : STD_LOGIC;
  signal \n_0_TX_CHAR_IS_K[0]_i_1\ : STD_LOGIC;
  signal \n_0_TX_CHAR_IS_K[1]_i_1\ : STD_LOGIC;
  signal \n_0_TX_CHAR_IS_K[2]_i_1\ : STD_LOGIC;
  signal \n_0_TX_CHAR_IS_K[3]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[0]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[10]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[11]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[12]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[12]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[13]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[13]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[14]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[14]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[15]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[15]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[15]_i_3\ : STD_LOGIC;
  signal \n_0_TX_DATA[15]_i_5\ : STD_LOGIC;
  signal \n_0_TX_DATA[15]_i_6\ : STD_LOGIC;
  signal \n_0_TX_DATA[16]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[17]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[17]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[18]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[18]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[19]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[1]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[20]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[21]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[21]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[22]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[22]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[23]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[23]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[23]_i_3\ : STD_LOGIC;
  signal \n_0_TX_DATA[23]_i_4\ : STD_LOGIC;
  signal \n_0_TX_DATA[23]_i_5\ : STD_LOGIC;
  signal \n_0_TX_DATA[23]_i_6\ : STD_LOGIC;
  signal \n_0_TX_DATA[23]_i_7\ : STD_LOGIC;
  signal \n_0_TX_DATA[24]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[25]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[26]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[27]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[28]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[29]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[29]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[30]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[30]_i_3\ : STD_LOGIC;
  signal \n_0_TX_DATA[31]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[31]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[31]_i_3\ : STD_LOGIC;
  signal \n_0_TX_DATA[31]_i_4\ : STD_LOGIC;
  signal \n_0_TX_DATA[31]_i_5\ : STD_LOGIC;
  signal \n_0_TX_DATA[31]_i_6\ : STD_LOGIC;
  signal \n_0_TX_DATA[5]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[6]_i_2\ : STD_LOGIC;
  signal \n_0_TX_DATA[7]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[7]_i_3\ : STD_LOGIC;
  signal \n_0_TX_DATA[7]_i_4\ : STD_LOGIC;
  signal \n_0_TX_DATA[7]_i_5\ : STD_LOGIC;
  signal \n_0_TX_DATA[8]_i_1\ : STD_LOGIC;
  signal \n_0_TX_DATA[9]_i_1\ : STD_LOGIC;
  signal \n_0_gen_ecp_r_reg[1]\ : STD_LOGIC;
  signal \n_0_gen_k_r_reg[3]\ : STD_LOGIC;
  signal \n_0_gen_pad_r_reg[1]\ : STD_LOGIC;
  signal \n_0_gen_r_r_reg[3]\ : STD_LOGIC;
  signal \n_0_tx_pe_data_v_r_reg[1]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in11_in : STD_LOGIC;
  signal p_0_in15_in : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal p_0_in20_in : STD_LOGIC;
  signal p_0_in6_in : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal p_1_in10_in : STD_LOGIC;
  signal p_1_in13_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_in5_in : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal tx_pe_data_r : STD_LOGIC_VECTOR ( 0 to 31 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \TX_CHAR_IS_K[0]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \TX_CHAR_IS_K[1]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \TX_CHAR_IS_K[2]_i_1\ : label is "soft_lutpair79";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \TX_CHAR_IS_K[3]_i_1\ : label is true;
  attribute SOFT_HLUTNM of \TX_CHAR_IS_K[3]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \TX_DATA[11]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \TX_DATA[12]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \TX_DATA[14]_i_2\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \TX_DATA[15]_i_6\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \TX_DATA[17]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \TX_DATA[17]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \TX_DATA[18]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \TX_DATA[1]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \TX_DATA[21]_i_2\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \TX_DATA[22]_i_2\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \TX_DATA[23]_i_4\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \TX_DATA[23]_i_7\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \TX_DATA[25]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \TX_DATA[26]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \TX_DATA[27]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \TX_DATA[28]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \TX_DATA[31]_i_5\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \TX_DATA[31]_i_6\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \TX_DATA[5]_i_2\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \TX_DATA[8]_i_1\ : label is "soft_lutpair86";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\TX_CHAR_IS_K[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000051"
    )
    port map (
      I0 => p_1_in_0,
      I1 => \n_0_tx_pe_data_v_r_reg[1]\,
      I2 => \n_0_gen_pad_r_reg[1]\,
      I3 => gen_spa_r,
      I4 => gen_sp_r,
      O => \n_0_TX_CHAR_IS_K[0]_i_1\
    );
\TX_CHAR_IS_K[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => p_1_in1_in,
      I1 => \n_0_tx_pe_data_v_r_reg[1]\,
      I2 => gen_spa_r,
      I3 => gen_sp_r,
      O => \n_0_TX_CHAR_IS_K[1]_i_1\
    );
\TX_CHAR_IS_K[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000051"
    )
    port map (
      I0 => p_1_in5_in,
      I1 => p_1_in10_in,
      I2 => p_0_in15_in,
      I3 => gen_spa_r,
      I4 => gen_sp_r,
      O => \n_0_TX_CHAR_IS_K[2]_i_1\
    );
\TX_CHAR_IS_K[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => p_1_in10_in,
      O => \n_0_TX_CHAR_IS_K[3]_i_1\
    );
\TX_CHAR_IS_K_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_TX_CHAR_IS_K[0]_i_1\,
      Q => TXCHARISK(3),
      R => \<const0>\
    );
\TX_CHAR_IS_K_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_TX_CHAR_IS_K[1]_i_1\,
      Q => TXCHARISK(2),
      R => \<const0>\
    );
\TX_CHAR_IS_K_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_TX_CHAR_IS_K[2]_i_1\,
      Q => TXCHARISK(1),
      R => \<const0>\
    );
\TX_CHAR_IS_K_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_TX_CHAR_IS_K[3]_i_1\,
      Q => TXCHARISK(0),
      R => \<const0>\
    );
\TX_DATA[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00730040"
    )
    port map (
      I0 => \n_0_gen_pad_r_reg[1]\,
      I1 => \n_0_tx_pe_data_v_r_reg[1]\,
      I2 => tx_pe_data_r(31),
      I3 => \n_0_gen_ecp_r_reg[1]\,
      I4 => gen_cc_r,
      O => \n_0_TX_DATA[0]_i_1\
    );
\TX_DATA[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFEFEA"
    )
    port map (
      I0 => \n_0_gen_ecp_r_reg[1]\,
      I1 => tx_pe_data_r(21),
      I2 => \n_0_tx_pe_data_v_r_reg[1]\,
      I3 => \n_0_TX_DATA[18]_i_2\,
      I4 => \n_0_TX_DATA[12]_i_2\,
      O => \n_0_TX_DATA[10]_i_1\
    );
\TX_DATA[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAB"
    )
    port map (
      I0 => \n_0_gen_ecp_r_reg[1]\,
      I1 => gen_cc_r,
      I2 => \n_0_tx_pe_data_v_r_reg[1]\,
      I3 => tx_pe_data_r(20),
      O => \n_0_TX_DATA[11]_i_1\
    );
\TX_DATA[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFEFEFEA"
    )
    port map (
      I0 => \n_0_gen_ecp_r_reg[1]\,
      I1 => tx_pe_data_r(19),
      I2 => \n_0_tx_pe_data_v_r_reg[1]\,
      I3 => \n_0_TX_DATA[12]_i_2\,
      I4 => gen_cc_r,
      O => \n_0_TX_DATA[12]_i_1\
    );
\TX_DATA[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000030002"
    )
    port map (
      I0 => p_0_in,
      I1 => \n_0_TX_DATA[31]_i_6\,
      I2 => \n_0_TX_DATA[15]_i_6\,
      I3 => p_1_in1_in,
      I4 => p_0_in6_in,
      I5 => \n_0_tx_pe_data_v_r_reg[1]\,
      O => \n_0_TX_DATA[12]_i_2\
    );
\TX_DATA[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEAEFEAEFEAEFEF"
    )
    port map (
      I0 => \n_0_gen_ecp_r_reg[1]\,
      I1 => tx_pe_data_r(18),
      I2 => \n_0_tx_pe_data_v_r_reg[1]\,
      I3 => \n_0_TX_DATA[13]_i_2\,
      I4 => gen_sp_r,
      I5 => TX_DATA15_out,
      O => \n_0_TX_DATA[13]_i_1\
    );
\TX_DATA[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F1F0F0"
    )
    port map (
      I0 => \n_0_TX_DATA[31]_i_6\,
      I1 => \n_0_gen_ecp_r_reg[1]\,
      I2 => gen_cc_r,
      I3 => p_1_in1_in,
      I4 => p_0_in6_in,
      I5 => \n_0_tx_pe_data_v_r_reg[1]\,
      O => \n_0_TX_DATA[13]_i_2\
    );
\TX_DATA[13]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => \n_0_tx_pe_data_v_r_reg[1]\,
      I1 => p_0_in,
      I2 => p_1_in1_in,
      I3 => gen_cc_r,
      I4 => \n_0_gen_ecp_r_reg[1]\,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => TX_DATA15_out
    );
\TX_DATA[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFF2FFF2FFFFFF22"
    )
    port map (
      I0 => \n_0_TX_DATA[14]_i_2\,
      I1 => \n_0_TX_DATA[15]_i_3\,
      I2 => tx_pe_data_r(17),
      I3 => \n_0_gen_ecp_r_reg[1]\,
      I4 => gen_cc_r,
      I5 => \n_0_tx_pe_data_v_r_reg[1]\,
      O => \n_0_TX_DATA[14]_i_1\
    );
\TX_DATA[14]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => gen_sp_r,
      I1 => gen_spa_r,
      O => \n_0_TX_DATA[14]_i_2\
    );
\TX_DATA[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_TX_DATA[15]_i_3\,
      I1 => gen_spa_r,
      I2 => gen_sp_r,
      I3 => gen_cc_r,
      I4 => p_1_in1_in,
      I5 => \n_0_gen_ecp_r_reg[1]\,
      O => \n_0_TX_DATA[15]_i_1\
    );
\TX_DATA[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFEA"
    )
    port map (
      I0 => \n_0_gen_ecp_r_reg[1]\,
      I1 => tx_pe_data_r(16),
      I2 => \n_0_tx_pe_data_v_r_reg[1]\,
      I3 => TX_DATA17_out,
      I4 => gen_cc_r,
      I5 => \n_0_TX_DATA[15]_i_5\,
      O => \n_0_TX_DATA[15]_i_2\
    );
\TX_DATA[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00030002"
    )
    port map (
      I0 => p_0_in6_in,
      I1 => p_1_in1_in,
      I2 => \n_0_TX_DATA[15]_i_6\,
      I3 => \n_0_TX_DATA[31]_i_6\,
      I4 => p_0_in,
      I5 => \n_0_tx_pe_data_v_r_reg[1]\,
      O => \n_0_TX_DATA[15]_i_3\
    );
\TX_DATA[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => \n_0_tx_pe_data_v_r_reg[1]\,
      I1 => p_0_in6_in,
      I2 => p_1_in1_in,
      I3 => gen_cc_r,
      I4 => \n_0_gen_ecp_r_reg[1]\,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => TX_DATA17_out
    );
\TX_DATA[15]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFEFF"
    )
    port map (
      I0 => \n_0_gen_ecp_r_reg[1]\,
      I1 => gen_cc_r,
      I2 => p_1_in1_in,
      I3 => p_0_in,
      I4 => \n_0_tx_pe_data_v_r_reg[1]\,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => \n_0_TX_DATA[15]_i_5\
    );
\TX_DATA[15]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => gen_cc_r,
      I1 => \n_0_gen_ecp_r_reg[1]\,
      O => \n_0_TX_DATA[15]_i_6\
    );
\TX_DATA[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFAFBAAA"
    )
    port map (
      I0 => p_1_in13_in,
      I1 => p_0_in15_in,
      I2 => p_1_in10_in,
      I3 => tx_pe_data_r(15),
      I4 => gen_cc_r,
      O => \n_0_TX_DATA[16]_i_1\
    );
\TX_DATA[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBABAA"
    )
    port map (
      I0 => \n_0_TX_DATA[17]_i_2\,
      I1 => p_1_in10_in,
      I2 => \n_0_TX_DATA[23]_i_3\,
      I3 => gen_sp_r,
      I4 => gen_cc_r,
      O => \n_0_TX_DATA[17]_i_1\
    );
\TX_DATA[17]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      I0 => p_1_in10_in,
      I1 => p_0_in15_in,
      I2 => tx_pe_data_r(14),
      I3 => p_1_in13_in,
      O => \n_0_TX_DATA[17]_i_2\
    );
\TX_DATA[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EFEFEFE0"
    )
    port map (
      I0 => tx_pe_data_r(13),
      I1 => p_0_in15_in,
      I2 => p_1_in10_in,
      I3 => \n_0_TX_DATA[23]_i_3\,
      I4 => \n_0_TX_DATA[18]_i_2\,
      I5 => p_1_in13_in,
      O => \n_0_TX_DATA[18]_i_1\
    );
\TX_DATA[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => gen_sp_r,
      I1 => gen_spa_r,
      I2 => gen_cc_r,
      O => \n_0_TX_DATA[18]_i_2\
    );
\TX_DATA[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEAFFEF"
    )
    port map (
      I0 => p_1_in13_in,
      I1 => tx_pe_data_r(12),
      I2 => p_1_in10_in,
      I3 => p_0_in15_in,
      I4 => gen_cc_r,
      O => \n_0_TX_DATA[19]_i_1\
    );
\TX_DATA[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBABAA"
    )
    port map (
      I0 => \n_0_TX_DATA[1]_i_2\,
      I1 => \n_0_tx_pe_data_v_r_reg[1]\,
      I2 => \n_0_TX_DATA[7]_i_3\,
      I3 => gen_sp_r,
      I4 => gen_cc_r,
      O => p_1_in(1)
    );
\TX_DATA[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      I0 => \n_0_tx_pe_data_v_r_reg[1]\,
      I1 => \n_0_gen_pad_r_reg[1]\,
      I2 => tx_pe_data_r(30),
      I3 => \n_0_gen_ecp_r_reg[1]\,
      O => \n_0_TX_DATA[1]_i_2\
    );
\TX_DATA[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEEFFF0FFEE"
    )
    port map (
      I0 => gen_cc_r,
      I1 => \n_0_TX_DATA[23]_i_3\,
      I2 => tx_pe_data_r(11),
      I3 => p_1_in13_in,
      I4 => p_1_in10_in,
      I5 => p_0_in15_in,
      O => \n_0_TX_DATA[20]_i_1\
    );
\TX_DATA[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDCDDDCDDDCDDDD"
    )
    port map (
      I0 => p_1_in10_in,
      I1 => \n_0_TX_DATA[21]_i_2\,
      I2 => TX_DATA112_out,
      I3 => gen_cc_r,
      I4 => gen_sp_r,
      I5 => TX_DATA110_out,
      O => \n_0_TX_DATA[21]_i_1\
    );
\TX_DATA[21]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      I0 => p_1_in10_in,
      I1 => p_0_in15_in,
      I2 => tx_pe_data_r(10),
      I3 => p_1_in13_in,
      O => \n_0_TX_DATA[21]_i_2\
    );
\TX_DATA[21]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => p_1_in13_in,
      I1 => p_0_in11_in,
      I2 => p_1_in5_in,
      I3 => gen_cc_r,
      I4 => p_1_in10_in,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => TX_DATA112_out
    );
\TX_DATA[21]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => p_1_in13_in,
      I1 => p_0_in8_in,
      I2 => p_1_in5_in,
      I3 => gen_cc_r,
      I4 => p_1_in10_in,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => TX_DATA110_out
    );
\TX_DATA[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDCDCCCDCD"
    )
    port map (
      I0 => p_1_in10_in,
      I1 => \n_0_TX_DATA[22]_i_2\,
      I2 => \n_0_TX_DATA[23]_i_3\,
      I3 => gen_sp_r,
      I4 => gen_spa_r,
      I5 => gen_cc_r,
      O => \n_0_TX_DATA[22]_i_1\
    );
\TX_DATA[22]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      I0 => p_1_in10_in,
      I1 => p_0_in15_in,
      I2 => tx_pe_data_r(9),
      I3 => p_1_in13_in,
      O => \n_0_TX_DATA[22]_i_2\
    );
\TX_DATA[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => p_1_in10_in,
      I1 => p_1_in13_in,
      I2 => p_1_in5_in,
      I3 => \n_0_TX_DATA[23]_i_3\,
      I4 => \n_0_TX_DATA[23]_i_4\,
      O => \n_0_TX_DATA[23]_i_1\
    );
\TX_DATA[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEEFFF0FFEE"
    )
    port map (
      I0 => \n_0_TX_DATA[23]_i_5\,
      I1 => \n_0_TX_DATA[23]_i_6\,
      I2 => tx_pe_data_r(8),
      I3 => p_1_in13_in,
      I4 => p_1_in10_in,
      I5 => p_0_in15_in,
      O => \n_0_TX_DATA[23]_i_2\
    );
\TX_DATA[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000030002"
    )
    port map (
      I0 => p_0_in11_in,
      I1 => \n_0_TX_DATA[31]_i_6\,
      I2 => \n_0_TX_DATA[23]_i_7\,
      I3 => p_1_in5_in,
      I4 => p_0_in8_in,
      I5 => p_1_in13_in,
      O => \n_0_TX_DATA[23]_i_3\
    );
\TX_DATA[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => gen_spa_r,
      I1 => gen_sp_r,
      I2 => gen_cc_r,
      O => \n_0_TX_DATA[23]_i_4\
    );
\TX_DATA[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFEFF"
    )
    port map (
      I0 => p_1_in10_in,
      I1 => gen_cc_r,
      I2 => p_1_in5_in,
      I3 => p_0_in8_in,
      I4 => p_1_in13_in,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => \n_0_TX_DATA[23]_i_5\
    );
\TX_DATA[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F1F0F0"
    )
    port map (
      I0 => \n_0_TX_DATA[31]_i_6\,
      I1 => p_1_in10_in,
      I2 => gen_cc_r,
      I3 => p_1_in5_in,
      I4 => p_0_in11_in,
      I5 => p_1_in13_in,
      O => \n_0_TX_DATA[23]_i_6\
    );
\TX_DATA[23]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => gen_cc_r,
      I1 => p_1_in10_in,
      O => \n_0_TX_DATA[23]_i_7\
    );
\TX_DATA[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B8"
    )
    port map (
      I0 => tx_pe_data_r(7),
      I1 => p_1_in10_in,
      I2 => gen_cc_r,
      I3 => p_1_in13_in,
      O => \n_0_TX_DATA[24]_i_1\
    );
\TX_DATA[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => gen_cc_r,
      I1 => p_1_in10_in,
      I2 => tx_pe_data_r(6),
      I3 => p_1_in13_in,
      O => \n_0_TX_DATA[25]_i_1\
    );
\TX_DATA[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
    port map (
      I0 => p_1_in13_in,
      I1 => tx_pe_data_r(5),
      I2 => p_1_in10_in,
      I3 => \n_0_TX_DATA[31]_i_3\,
      O => \n_0_TX_DATA[26]_i_1\
    );
\TX_DATA[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBAB"
    )
    port map (
      I0 => p_1_in13_in,
      I1 => gen_cc_r,
      I2 => p_1_in10_in,
      I3 => tx_pe_data_r(4),
      O => \n_0_TX_DATA[27]_i_1\
    );
\TX_DATA[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEA"
    )
    port map (
      I0 => p_1_in13_in,
      I1 => tx_pe_data_r(3),
      I2 => p_1_in10_in,
      I3 => \n_0_TX_DATA[31]_i_3\,
      O => \n_0_TX_DATA[28]_i_1\
    );
\TX_DATA[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFE00FE"
    )
    port map (
      I0 => gen_cc_r,
      I1 => TX_DATA122_out,
      I2 => \n_0_TX_DATA[29]_i_2\,
      I3 => p_1_in10_in,
      I4 => tx_pe_data_r(2),
      I5 => p_1_in13_in,
      O => \n_0_TX_DATA[29]_i_1\
    );
\TX_DATA[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
    port map (
      I0 => p_0_in20_in,
      I1 => p_0_in17_in,
      I2 => gen_cc_r,
      I3 => p_1_in10_in,
      I4 => p_1_in13_in,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => \n_0_TX_DATA[29]_i_2\
    );
\TX_DATA[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFEEF0EE"
    )
    port map (
      I0 => \n_0_TX_DATA[7]_i_3\,
      I1 => \n_0_TX_DATA[18]_i_2\,
      I2 => tx_pe_data_r(29),
      I3 => \n_0_tx_pe_data_v_r_reg[1]\,
      I4 => \n_0_gen_pad_r_reg[1]\,
      I5 => \n_0_gen_ecp_r_reg[1]\,
      O => p_1_in(2)
    );
\TX_DATA[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEFEFEFEFEFEFEA"
    )
    port map (
      I0 => p_1_in13_in,
      I1 => tx_pe_data_r(1),
      I2 => p_1_in10_in,
      I3 => TX_DATA122_out,
      I4 => gen_cc_r,
      I5 => \n_0_TX_DATA[30]_i_3\,
      O => \n_0_TX_DATA[30]_i_1\
    );
\TX_DATA[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => gen_sp_r,
      I1 => gen_spa_r,
      I2 => p_1_in13_in,
      I3 => p_1_in10_in,
      I4 => gen_cc_r,
      I5 => gen_a_r,
      O => TX_DATA122_out
    );
\TX_DATA[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFF1"
    )
    port map (
      I0 => p_0_in20_in,
      I1 => p_0_in17_in,
      I2 => gen_cc_r,
      I3 => p_1_in10_in,
      I4 => p_1_in13_in,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => \n_0_TX_DATA[30]_i_3\
    );
\TX_DATA[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_TX_DATA[31]_i_3\,
      I1 => p_1_in13_in,
      I2 => p_1_in10_in,
      O => \n_0_TX_DATA[31]_i_1\
    );
\TX_DATA[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => \n_0_TX_DATA[31]_i_4\,
      I1 => tx_pe_data_r(0),
      I2 => p_1_in10_in,
      I3 => p_1_in13_in,
      O => \n_0_TX_DATA[31]_i_2\
    );
\TX_DATA[31]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFAAA8"
    )
    port map (
      I0 => \n_0_TX_DATA[31]_i_5\,
      I1 => p_0_in20_in,
      I2 => gen_a_r,
      I3 => p_0_in17_in,
      I4 => gen_cc_r,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => \n_0_TX_DATA[31]_i_3\
    );
\TX_DATA[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF2FFF3F"
    )
    port map (
      I0 => p_0_in20_in,
      I1 => gen_a_r,
      I2 => \n_0_TX_DATA[31]_i_5\,
      I3 => gen_cc_r,
      I4 => p_0_in17_in,
      I5 => p_1_in10_in,
      O => \n_0_TX_DATA[31]_i_4\
    );
\TX_DATA[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => gen_cc_r,
      I1 => p_1_in10_in,
      I2 => p_1_in13_in,
      I3 => gen_spa_r,
      I4 => gen_sp_r,
      O => \n_0_TX_DATA[31]_i_5\
    );
\TX_DATA[31]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => gen_sp_r,
      I1 => gen_spa_r,
      O => \n_0_TX_DATA[31]_i_6\
    );
\TX_DATA[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAEAFFEF"
    )
    port map (
      I0 => \n_0_gen_ecp_r_reg[1]\,
      I1 => tx_pe_data_r(28),
      I2 => \n_0_tx_pe_data_v_r_reg[1]\,
      I3 => \n_0_gen_pad_r_reg[1]\,
      I4 => gen_cc_r,
      O => p_1_in(3)
    );
\TX_DATA[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEEFFF0FFEE"
    )
    port map (
      I0 => gen_cc_r,
      I1 => \n_0_TX_DATA[7]_i_3\,
      I2 => tx_pe_data_r(27),
      I3 => \n_0_gen_ecp_r_reg[1]\,
      I4 => \n_0_tx_pe_data_v_r_reg[1]\,
      I5 => \n_0_gen_pad_r_reg[1]\,
      O => p_1_in(4)
    );
\TX_DATA[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDCDDDCDDDCDDDD"
    )
    port map (
      I0 => \n_0_tx_pe_data_v_r_reg[1]\,
      I1 => \n_0_TX_DATA[5]_i_2\,
      I2 => TX_DATA10_out,
      I3 => gen_cc_r,
      I4 => gen_sp_r,
      I5 => TX_DATA1,
      O => p_1_in(5)
    );
\TX_DATA[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      I0 => \n_0_tx_pe_data_v_r_reg[1]\,
      I1 => \n_0_gen_pad_r_reg[1]\,
      I2 => tx_pe_data_r(26),
      I3 => \n_0_gen_ecp_r_reg[1]\,
      O => \n_0_TX_DATA[5]_i_2\
    );
\TX_DATA[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => \n_0_tx_pe_data_v_r_reg[1]\,
      I1 => \n_0_gen_k_r_reg[3]\,
      I2 => p_1_in_0,
      I3 => gen_cc_r,
      I4 => \n_0_gen_ecp_r_reg[1]\,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => TX_DATA10_out
    );
\TX_DATA[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => \n_0_tx_pe_data_v_r_reg[1]\,
      I1 => \n_0_gen_r_r_reg[3]\,
      I2 => p_1_in_0,
      I3 => gen_cc_r,
      I4 => \n_0_gen_ecp_r_reg[1]\,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => TX_DATA1
    );
\TX_DATA[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDDDDDDDCDCCCDCD"
    )
    port map (
      I0 => \n_0_tx_pe_data_v_r_reg[1]\,
      I1 => \n_0_TX_DATA[6]_i_2\,
      I2 => \n_0_TX_DATA[7]_i_3\,
      I3 => gen_sp_r,
      I4 => gen_spa_r,
      I5 => gen_cc_r,
      O => p_1_in(6)
    );
\TX_DATA[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
    port map (
      I0 => \n_0_tx_pe_data_v_r_reg[1]\,
      I1 => \n_0_gen_pad_r_reg[1]\,
      I2 => tx_pe_data_r(25),
      I3 => \n_0_gen_ecp_r_reg[1]\,
      O => \n_0_TX_DATA[6]_i_2\
    );
\TX_DATA[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \n_0_tx_pe_data_v_r_reg[1]\,
      I1 => \n_0_gen_ecp_r_reg[1]\,
      I2 => p_1_in_0,
      I3 => \n_0_TX_DATA[7]_i_3\,
      I4 => \n_0_TX_DATA[23]_i_4\,
      O => \n_0_TX_DATA[7]_i_1\
    );
\TX_DATA[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFEEFFF0FFEE"
    )
    port map (
      I0 => \n_0_TX_DATA[7]_i_4\,
      I1 => \n_0_TX_DATA[7]_i_5\,
      I2 => tx_pe_data_r(24),
      I3 => \n_0_gen_ecp_r_reg[1]\,
      I4 => \n_0_tx_pe_data_v_r_reg[1]\,
      I5 => \n_0_gen_pad_r_reg[1]\,
      O => p_1_in(7)
    );
\TX_DATA[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000030002"
    )
    port map (
      I0 => \n_0_gen_k_r_reg[3]\,
      I1 => \n_0_TX_DATA[31]_i_6\,
      I2 => \n_0_TX_DATA[15]_i_6\,
      I3 => p_1_in_0,
      I4 => \n_0_gen_r_r_reg[3]\,
      I5 => \n_0_tx_pe_data_v_r_reg[1]\,
      O => \n_0_TX_DATA[7]_i_3\
    );
\TX_DATA[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFEFF"
    )
    port map (
      I0 => \n_0_gen_ecp_r_reg[1]\,
      I1 => gen_cc_r,
      I2 => p_1_in_0,
      I3 => \n_0_gen_r_r_reg[3]\,
      I4 => \n_0_tx_pe_data_v_r_reg[1]\,
      I5 => \n_0_TX_DATA[31]_i_6\,
      O => \n_0_TX_DATA[7]_i_4\
    );
\TX_DATA[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0F1F0F0"
    )
    port map (
      I0 => \n_0_TX_DATA[31]_i_6\,
      I1 => \n_0_gen_ecp_r_reg[1]\,
      I2 => gen_cc_r,
      I3 => p_1_in_0,
      I4 => \n_0_gen_k_r_reg[3]\,
      I5 => \n_0_tx_pe_data_v_r_reg[1]\,
      O => \n_0_TX_DATA[7]_i_5\
    );
\TX_DATA[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEAE"
    )
    port map (
      I0 => \n_0_gen_ecp_r_reg[1]\,
      I1 => gen_cc_r,
      I2 => \n_0_tx_pe_data_v_r_reg[1]\,
      I3 => tx_pe_data_r(23),
      O => \n_0_TX_DATA[8]_i_1\
    );
\TX_DATA[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F2FFF222"
    )
    port map (
      I0 => gen_sp_r,
      I1 => \n_0_TX_DATA[15]_i_3\,
      I2 => tx_pe_data_r(22),
      I3 => \n_0_tx_pe_data_v_r_reg[1]\,
      I4 => gen_cc_r,
      I5 => \n_0_gen_ecp_r_reg[1]\,
      O => \n_0_TX_DATA[9]_i_1\
    );
\TX_DATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => \n_0_TX_DATA[0]_i_1\,
      Q => TXDATA(24),
      R => \<const0>\
    );
\TX_DATA_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[10]_i_1\,
      Q => TXDATA(18),
      R => \<const0>\
    );
\TX_DATA_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[11]_i_1\,
      Q => TXDATA(19),
      R => \<const0>\
    );
\TX_DATA_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[12]_i_1\,
      Q => TXDATA(20),
      R => \<const0>\
    );
\TX_DATA_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[13]_i_1\,
      Q => TXDATA(21),
      R => \<const0>\
    );
\TX_DATA_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[14]_i_1\,
      Q => TXDATA(22),
      R => \<const0>\
    );
\TX_DATA_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[15]_i_2\,
      Q => TXDATA(23),
      R => \<const0>\
    );
\TX_DATA_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[23]_i_1\,
      D => \n_0_TX_DATA[16]_i_1\,
      Q => TXDATA(8),
      R => \<const0>\
    );
\TX_DATA_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[23]_i_1\,
      D => \n_0_TX_DATA[17]_i_1\,
      Q => TXDATA(9),
      R => \<const0>\
    );
\TX_DATA_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[23]_i_1\,
      D => \n_0_TX_DATA[18]_i_1\,
      Q => TXDATA(10),
      R => \<const0>\
    );
\TX_DATA_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[23]_i_1\,
      D => \n_0_TX_DATA[19]_i_1\,
      Q => TXDATA(11),
      R => \<const0>\
    );
\TX_DATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => p_1_in(1),
      Q => TXDATA(25),
      R => \<const0>\
    );
\TX_DATA_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[23]_i_1\,
      D => \n_0_TX_DATA[20]_i_1\,
      Q => TXDATA(12),
      R => \<const0>\
    );
\TX_DATA_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[23]_i_1\,
      D => \n_0_TX_DATA[21]_i_1\,
      Q => TXDATA(13),
      R => \<const0>\
    );
\TX_DATA_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[23]_i_1\,
      D => \n_0_TX_DATA[22]_i_1\,
      Q => TXDATA(14),
      R => \<const0>\
    );
\TX_DATA_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[23]_i_1\,
      D => \n_0_TX_DATA[23]_i_2\,
      Q => TXDATA(15),
      R => \<const0>\
    );
\TX_DATA_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[31]_i_1\,
      D => \n_0_TX_DATA[24]_i_1\,
      Q => TXDATA(0),
      R => \<const0>\
    );
\TX_DATA_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[31]_i_1\,
      D => \n_0_TX_DATA[25]_i_1\,
      Q => TXDATA(1),
      R => \<const0>\
    );
\TX_DATA_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[31]_i_1\,
      D => \n_0_TX_DATA[26]_i_1\,
      Q => TXDATA(2),
      R => \<const0>\
    );
\TX_DATA_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[31]_i_1\,
      D => \n_0_TX_DATA[27]_i_1\,
      Q => TXDATA(3),
      R => \<const0>\
    );
\TX_DATA_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[31]_i_1\,
      D => \n_0_TX_DATA[28]_i_1\,
      Q => TXDATA(4),
      R => \<const0>\
    );
\TX_DATA_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[31]_i_1\,
      D => \n_0_TX_DATA[29]_i_1\,
      Q => TXDATA(5),
      R => \<const0>\
    );
\TX_DATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => p_1_in(2),
      Q => TXDATA(26),
      R => \<const0>\
    );
\TX_DATA_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[31]_i_1\,
      D => \n_0_TX_DATA[30]_i_1\,
      Q => TXDATA(6),
      R => \<const0>\
    );
\TX_DATA_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[31]_i_1\,
      D => \n_0_TX_DATA[31]_i_2\,
      Q => TXDATA(7),
      R => \<const0>\
    );
\TX_DATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => p_1_in(3),
      Q => TXDATA(27),
      R => \<const0>\
    );
\TX_DATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => p_1_in(4),
      Q => TXDATA(28),
      R => \<const0>\
    );
\TX_DATA_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => p_1_in(5),
      Q => TXDATA(29),
      R => \<const0>\
    );
\TX_DATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => p_1_in(6),
      Q => TXDATA(30),
      R => \<const0>\
    );
\TX_DATA_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[7]_i_1\,
      D => p_1_in(7),
      Q => TXDATA(31),
      R => \<const0>\
    );
\TX_DATA_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[8]_i_1\,
      Q => TXDATA(16),
      R => \<const0>\
    );
\TX_DATA_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \n_0_TX_DATA[15]_i_1\,
      D => \n_0_TX_DATA[9]_i_1\,
      Q => TXDATA(17),
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
gen_a_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => gen_a_i,
      Q => gen_a_r,
      R => \<const0>\
    );
gen_cc_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => gen_cc_i,
      Q => gen_cc_r,
      R => \<const0>\
    );
\gen_ecp_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I1,
      Q => \n_0_gen_ecp_r_reg[1]\,
      R => \<const0>\
    );
\gen_k_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I12(3),
      Q => p_0_in20_in,
      R => \<const0>\
    );
\gen_k_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I12(2),
      Q => p_0_in11_in,
      R => \<const0>\
    );
\gen_k_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I12(1),
      Q => p_0_in6_in,
      R => \<const0>\
    );
\gen_k_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I12(0),
      Q => \n_0_gen_k_r_reg[3]\,
      R => \<const0>\
    );
\gen_pad_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I8(1),
      Q => p_0_in15_in,
      R => \<const0>\
    );
\gen_pad_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I8(0),
      Q => \n_0_gen_pad_r_reg[1]\,
      R => \<const0>\
    );
\gen_r_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I11(3),
      Q => p_0_in17_in,
      R => \<const0>\
    );
\gen_r_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I11(2),
      Q => p_0_in8_in,
      R => \<const0>\
    );
\gen_r_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I11(1),
      Q => p_0_in,
      R => \<const0>\
    );
\gen_r_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I11(0),
      Q => \n_0_gen_r_r_reg[3]\,
      R => \<const0>\
    );
\gen_scp_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => gen_scp_i,
      Q => p_1_in13_in,
      R => \<const0>\
    );
gen_sp_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => GEN_SP,
      Q => gen_sp_r,
      R => \<const0>\
    );
gen_spa_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => gen_spa_i,
      Q => gen_spa_r,
      R => \<const0>\
    );
\gen_v_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I10(2),
      Q => p_1_in5_in,
      R => \<const0>\
    );
\gen_v_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I10(1),
      Q => p_1_in1_in,
      R => \<const0>\
    );
\gen_v_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I10(0),
      Q => p_1_in_0,
      R => \<const0>\
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(31),
      Q => tx_pe_data_r(0),
      R => \<const0>\
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(21),
      Q => tx_pe_data_r(10),
      R => \<const0>\
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(20),
      Q => tx_pe_data_r(11),
      R => \<const0>\
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(19),
      Q => tx_pe_data_r(12),
      R => \<const0>\
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(18),
      Q => tx_pe_data_r(13),
      R => \<const0>\
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(17),
      Q => tx_pe_data_r(14),
      R => \<const0>\
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(16),
      Q => tx_pe_data_r(15),
      R => \<const0>\
    );
\tx_pe_data_r_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(15),
      Q => tx_pe_data_r(16),
      R => \<const0>\
    );
\tx_pe_data_r_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(14),
      Q => tx_pe_data_r(17),
      R => \<const0>\
    );
\tx_pe_data_r_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(13),
      Q => tx_pe_data_r(18),
      R => \<const0>\
    );
\tx_pe_data_r_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(12),
      Q => tx_pe_data_r(19),
      R => \<const0>\
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(30),
      Q => tx_pe_data_r(1),
      R => \<const0>\
    );
\tx_pe_data_r_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(11),
      Q => tx_pe_data_r(20),
      R => \<const0>\
    );
\tx_pe_data_r_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(10),
      Q => tx_pe_data_r(21),
      R => \<const0>\
    );
\tx_pe_data_r_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(9),
      Q => tx_pe_data_r(22),
      R => \<const0>\
    );
\tx_pe_data_r_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(8),
      Q => tx_pe_data_r(23),
      R => \<const0>\
    );
\tx_pe_data_r_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(7),
      Q => tx_pe_data_r(24),
      R => \<const0>\
    );
\tx_pe_data_r_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(6),
      Q => tx_pe_data_r(25),
      R => \<const0>\
    );
\tx_pe_data_r_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(5),
      Q => tx_pe_data_r(26),
      R => \<const0>\
    );
\tx_pe_data_r_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(4),
      Q => tx_pe_data_r(27),
      R => \<const0>\
    );
\tx_pe_data_r_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(3),
      Q => tx_pe_data_r(28),
      R => \<const0>\
    );
\tx_pe_data_r_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(2),
      Q => tx_pe_data_r(29),
      R => \<const0>\
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(29),
      Q => tx_pe_data_r(2),
      R => \<const0>\
    );
\tx_pe_data_r_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(1),
      Q => tx_pe_data_r(30),
      R => \<const0>\
    );
\tx_pe_data_r_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(0),
      Q => tx_pe_data_r(31),
      R => \<const0>\
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(28),
      Q => tx_pe_data_r(3),
      R => \<const0>\
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(27),
      Q => tx_pe_data_r(4),
      R => \<const0>\
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(26),
      Q => tx_pe_data_r(5),
      R => \<const0>\
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(25),
      Q => tx_pe_data_r(6),
      R => \<const0>\
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(24),
      Q => tx_pe_data_r(7),
      R => \<const0>\
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(23),
      Q => tx_pe_data_r(8),
      R => \<const0>\
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I19(22),
      Q => tx_pe_data_r(9),
      R => \<const0>\
    );
\tx_pe_data_v_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I9(1),
      Q => p_1_in10_in,
      R => \<const0>\
    );
\tx_pe_data_v_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I9(0),
      Q => \n_0_tx_pe_data_v_r_reg[1]\,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_TX_LL_CONTROL is
  port (
    gen_cc_i : out STD_LOGIC;
    do_cc_r : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    O1 : out STD_LOGIC;
    gen_scp_i : out STD_LOGIC;
    O2 : out STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    I4 : out STD_LOGIC_VECTOR ( 0 to 0 );
    storage_pad_r0 : out STD_LOGIC;
    storage_v_r0 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    reset_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    do_cc : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 );
    I3 : in STD_LOGIC;
    I5 : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_TX_LL_CONTROL;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_TX_LL_CONTROL is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal VCC_2 : STD_LOGIC;
  signal data_r : STD_LOGIC;
  signal data_to_eof_1_r : STD_LOGIC;
  signal data_to_eof_2_r : STD_LOGIC;
  signal \^do_cc_r\ : STD_LOGIC;
  signal idle_r : STD_LOGIC;
  signal n_0_GEN_ECP_i_1 : STD_LOGIC;
  signal n_0_GEN_SCP_i_1 : STD_LOGIC;
  signal n_0_sof_to_data_r_i_1 : STD_LOGIC;
  signal n_0_storage_pad_r_i_2 : STD_LOGIC;
  signal next_data_c : STD_LOGIC;
  signal next_data_to_eof_1_c : STD_LOGIC;
  signal next_idle_c : STD_LOGIC;
  signal next_sof_to_eof_1_c : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal sof_to_data_r : STD_LOGIC;
  signal sof_to_eof_1_r : STD_LOGIC;
  signal sof_to_eof_2_r : STD_LOGIC;
  signal tx_dst_rdy_n_c : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of GEN_ECP_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of GEN_SCP_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of data_r_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of data_to_eof_1_r_i_1 : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of gen_cc_flop_0_i : label is "FDR";
  attribute box_type : string;
  attribute box_type of gen_cc_flop_0_i : label is "PRIMITIVE";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of s_axi_tx_tready_INST_0 : label is true;
  attribute SOFT_HLUTNM of s_axi_tx_tready_INST_0 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of sof_to_data_r_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of sof_to_eof_1_r_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of storage_pad_r_i_2 : label is "soft_lutpair2";
begin
  O1 <= \^o1\;
  do_cc_r <= \^do_cc_r\;
  p_0_in <= \^p_0_in\;
GEN_ECP_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => \^do_cc_r\,
      I1 => data_to_eof_2_r,
      I2 => sof_to_eof_2_r,
      O => n_0_GEN_ECP_i_1
    );
GEN_ECP_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_0_GEN_ECP_i_1,
      Q => O2,
      R => reset_i
    );
GEN_SCP_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
    port map (
      I0 => \^do_cc_r\,
      I1 => sof_to_data_r,
      I2 => sof_to_eof_1_r,
      O => n_0_GEN_SCP_i_1
    );
GEN_SCP_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_0_GEN_SCP_i_1,
      Q => gen_scp_i,
      R => reset_i
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
TX_DST_RDY_N_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFBFFFBEEEA"
    )
    port map (
      I0 => do_cc,
      I1 => \^do_cc_r\,
      I2 => data_to_eof_1_r,
      I3 => sof_to_eof_1_r,
      I4 => next_sof_to_eof_1_c,
      I5 => next_data_to_eof_1_c,
      O => tx_dst_rdy_n_c
    );
TX_DST_RDY_N_reg: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_dst_rdy_n_c,
      Q => \^o1\,
      S => reset_i
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
VCC_1: unisim.vcomponents.VCC
    port map (
      P => VCC_2
    );
data_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFBFBF00"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_tx_tvalid,
      I2 => s_axi_tx_tlast,
      I3 => sof_to_data_r,
      I4 => data_r,
      O => next_data_c
    );
data_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^p_0_in\,
      D => next_data_c,
      Q => data_r,
      R => reset_i
    );
data_to_eof_1_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_tx_tvalid,
      I2 => s_axi_tx_tlast,
      I3 => sof_to_data_r,
      I4 => data_r,
      O => next_data_to_eof_1_c
    );
data_to_eof_1_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^p_0_in\,
      D => next_data_to_eof_1_c,
      Q => data_to_eof_1_r,
      R => reset_i
    );
data_to_eof_2_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^p_0_in\,
      D => data_to_eof_1_r,
      Q => data_to_eof_2_r,
      R => reset_i
    );
do_cc_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => do_cc,
      Q => \^do_cc_r\,
      R => \<const0>\
    );
gen_cc_flop_0_i: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => VCC_2,
      D => \^do_cc_r\,
      Q => gen_cc_i,
      R => reset_i
    );
\gen_pad_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200020220"
    )
    port map (
      I0 => s_axi_tx_tlast,
      I1 => n_0_storage_pad_r_i_2,
      I2 => s_axi_tx_tkeep(2),
      I3 => s_axi_tx_tkeep(1),
      I4 => s_axi_tx_tkeep(0),
      I5 => s_axi_tx_tkeep(3),
      O => I4(0)
    );
idle_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFBFBFBFBFBFB00"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_tx_tvalid,
      I2 => I2,
      I3 => idle_r,
      I4 => sof_to_eof_2_r,
      I5 => data_to_eof_2_r,
      O => next_idle_c
    );
idle_r_reg: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \^p_0_in\,
      D => next_idle_c,
      Q => idle_r,
      S => reset_i
    );
in_frame_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A2AAA2AA00000200"
    )
    port map (
      I0 => I5,
      I1 => s_axi_tx_tlast,
      I2 => \^o1\,
      I3 => s_axi_tx_tvalid,
      I4 => I2,
      I5 => I3,
      O => O3
    );
s_axi_tx_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o1\,
      O => s_axi_tx_tready
    );
sof_to_data_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00005554"
    )
    port map (
      I0 => s_axi_tx_tlast,
      I1 => data_to_eof_2_r,
      I2 => sof_to_eof_2_r,
      I3 => idle_r,
      I4 => I1,
      O => n_0_sof_to_data_r_i_1
    );
sof_to_data_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^p_0_in\,
      D => n_0_sof_to_data_r_i_1,
      Q => sof_to_data_r,
      R => reset_i
    );
sof_to_eof_1_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AAA8"
    )
    port map (
      I0 => s_axi_tx_tlast,
      I1 => data_to_eof_2_r,
      I2 => sof_to_eof_2_r,
      I3 => idle_r,
      I4 => I1,
      O => next_sof_to_eof_1_c
    );
sof_to_eof_1_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^p_0_in\,
      D => next_sof_to_eof_1_c,
      Q => sof_to_eof_1_r,
      R => reset_i
    );
sof_to_eof_2_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \^p_0_in\,
      D => sof_to_eof_1_r,
      Q => sof_to_eof_2_r,
      R => reset_i
    );
storage_pad_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0220200020000000"
    )
    port map (
      I0 => s_axi_tx_tlast,
      I1 => n_0_storage_pad_r_i_2,
      I2 => s_axi_tx_tkeep(2),
      I3 => s_axi_tx_tkeep(1),
      I4 => s_axi_tx_tkeep(0),
      I5 => s_axi_tx_tkeep(3),
      O => storage_pad_r0
    );
storage_pad_r_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CFEF"
    )
    port map (
      I0 => I2,
      I1 => \^o1\,
      I2 => s_axi_tx_tvalid,
      I3 => I3,
      O => n_0_storage_pad_r_i_2
    );
storage_v_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FDD5D557"
    )
    port map (
      I0 => s_axi_tx_tlast,
      I1 => s_axi_tx_tkeep(3),
      I2 => s_axi_tx_tkeep(0),
      I3 => s_axi_tx_tkeep(1),
      I4 => s_axi_tx_tkeep(2),
      I5 => n_0_storage_pad_r_i_2,
      O => storage_v_r0
    );
\tx_pe_data_v_r[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^do_cc_r\,
      O => \^p_0_in\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_TX_LL_DATAPATH is
  port (
    O1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    p_0_in : in STD_LOGIC;
    storage_pad_r0 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    storage_v_r0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    do_cc_r : in STD_LOGIC;
    I4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
end aurora_8b10b_0aurora_8b10b_0_TX_LL_DATAPATH;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_TX_LL_DATAPATH is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal gen_pad_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 16 );
  signal p_1_out : STD_LOGIC_VECTOR ( 0 to 0 );
  signal storage_pad_r : STD_LOGIC;
  signal storage_v_r : STD_LOGIC;
  signal tx_pe_data_r : STD_LOGIC_VECTOR ( 0 to 31 );
  signal tx_pe_data_v_r : STD_LOGIC_VECTOR ( 0 to 1 );
begin
  O1 <= \^o1\;
\GEN_PAD_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => gen_pad_r(0),
      Q => O2(1),
      R => do_cc_r
    );
\GEN_PAD_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => gen_pad_r(1),
      Q => O2(0),
      R => do_cc_r
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\TX_PE_DATA_V_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_v_r(0),
      Q => D(1),
      R => do_cc_r
    );
\TX_PE_DATA_V_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_v_r(1),
      Q => D(0),
      R => do_cc_r
    );
\TX_PE_DATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(0),
      Q => Q(31),
      R => \<const0>\
    );
\TX_PE_DATA_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(10),
      Q => Q(21),
      R => \<const0>\
    );
\TX_PE_DATA_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(11),
      Q => Q(20),
      R => \<const0>\
    );
\TX_PE_DATA_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(12),
      Q => Q(19),
      R => \<const0>\
    );
\TX_PE_DATA_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(13),
      Q => Q(18),
      R => \<const0>\
    );
\TX_PE_DATA_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(14),
      Q => Q(17),
      R => \<const0>\
    );
\TX_PE_DATA_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(15),
      Q => Q(16),
      R => \<const0>\
    );
\TX_PE_DATA_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(16),
      Q => Q(15),
      R => \<const0>\
    );
\TX_PE_DATA_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(17),
      Q => Q(14),
      R => \<const0>\
    );
\TX_PE_DATA_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(18),
      Q => Q(13),
      R => \<const0>\
    );
\TX_PE_DATA_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(19),
      Q => Q(12),
      R => \<const0>\
    );
\TX_PE_DATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(1),
      Q => Q(30),
      R => \<const0>\
    );
\TX_PE_DATA_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(20),
      Q => Q(11),
      R => \<const0>\
    );
\TX_PE_DATA_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(21),
      Q => Q(10),
      R => \<const0>\
    );
\TX_PE_DATA_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(22),
      Q => Q(9),
      R => \<const0>\
    );
\TX_PE_DATA_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(23),
      Q => Q(8),
      R => \<const0>\
    );
\TX_PE_DATA_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(24),
      Q => Q(7),
      R => \<const0>\
    );
\TX_PE_DATA_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(25),
      Q => Q(6),
      R => \<const0>\
    );
\TX_PE_DATA_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(26),
      Q => Q(5),
      R => \<const0>\
    );
\TX_PE_DATA_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(27),
      Q => Q(4),
      R => \<const0>\
    );
\TX_PE_DATA_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(28),
      Q => Q(3),
      R => \<const0>\
    );
\TX_PE_DATA_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(29),
      Q => Q(2),
      R => \<const0>\
    );
\TX_PE_DATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(2),
      Q => Q(29),
      R => \<const0>\
    );
\TX_PE_DATA_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(30),
      Q => Q(1),
      R => \<const0>\
    );
\TX_PE_DATA_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(31),
      Q => Q(0),
      R => \<const0>\
    );
\TX_PE_DATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(3),
      Q => Q(28),
      R => \<const0>\
    );
\TX_PE_DATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(4),
      Q => Q(27),
      R => \<const0>\
    );
\TX_PE_DATA_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(5),
      Q => Q(26),
      R => \<const0>\
    );
\TX_PE_DATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(6),
      Q => Q(25),
      R => \<const0>\
    );
\TX_PE_DATA_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(7),
      Q => Q(24),
      R => \<const0>\
    );
\TX_PE_DATA_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(8),
      Q => Q(23),
      R => \<const0>\
    );
\TX_PE_DATA_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_pe_data_r(9),
      Q => Q(22),
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\gen_pad_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => storage_pad_r,
      Q => gen_pad_r(0),
      R => \<const0>\
    );
\gen_pad_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => I4(0),
      Q => gen_pad_r(1),
      R => \<const0>\
    );
in_frame_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I1,
      Q => \^o1\,
      R => \<const0>\
    );
storage_pad_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => storage_pad_r0,
      Q => storage_pad_r,
      R => \<const0>\
    );
\storage_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(16),
      Q => p_1_in(31),
      R => \<const0>\
    );
\storage_r_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(26),
      Q => p_1_in(21),
      R => \<const0>\
    );
\storage_r_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(27),
      Q => p_1_in(20),
      R => \<const0>\
    );
\storage_r_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(28),
      Q => p_1_in(19),
      R => \<const0>\
    );
\storage_r_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(29),
      Q => p_1_in(18),
      R => \<const0>\
    );
\storage_r_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(30),
      Q => p_1_in(17),
      R => \<const0>\
    );
\storage_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(31),
      Q => p_1_in(16),
      R => \<const0>\
    );
\storage_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(17),
      Q => p_1_in(30),
      R => \<const0>\
    );
\storage_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(18),
      Q => p_1_in(29),
      R => \<const0>\
    );
\storage_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(19),
      Q => p_1_in(28),
      R => \<const0>\
    );
\storage_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(20),
      Q => p_1_in(27),
      R => \<const0>\
    );
\storage_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(21),
      Q => p_1_in(26),
      R => \<const0>\
    );
\storage_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(22),
      Q => p_1_in(25),
      R => \<const0>\
    );
\storage_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(23),
      Q => p_1_in(24),
      R => \<const0>\
    );
\storage_r_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(24),
      Q => p_1_in(23),
      R => \<const0>\
    );
\storage_r_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(25),
      Q => p_1_in(22),
      R => \<const0>\
    );
storage_v_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => storage_v_r0,
      Q => storage_v_r,
      R => \<const0>\
    );
\tx_pe_data_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(31),
      Q => tx_pe_data_r(0),
      R => \<const0>\
    );
\tx_pe_data_r_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(21),
      Q => tx_pe_data_r(10),
      R => \<const0>\
    );
\tx_pe_data_r_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(20),
      Q => tx_pe_data_r(11),
      R => \<const0>\
    );
\tx_pe_data_r_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(19),
      Q => tx_pe_data_r(12),
      R => \<const0>\
    );
\tx_pe_data_r_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(18),
      Q => tx_pe_data_r(13),
      R => \<const0>\
    );
\tx_pe_data_r_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(17),
      Q => tx_pe_data_r(14),
      R => \<const0>\
    );
\tx_pe_data_r_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(16),
      Q => tx_pe_data_r(15),
      R => \<const0>\
    );
\tx_pe_data_r_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(0),
      Q => tx_pe_data_r(16),
      R => \<const0>\
    );
\tx_pe_data_r_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(1),
      Q => tx_pe_data_r(17),
      R => \<const0>\
    );
\tx_pe_data_r_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(2),
      Q => tx_pe_data_r(18),
      R => \<const0>\
    );
\tx_pe_data_r_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(3),
      Q => tx_pe_data_r(19),
      R => \<const0>\
    );
\tx_pe_data_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(30),
      Q => tx_pe_data_r(1),
      R => \<const0>\
    );
\tx_pe_data_r_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(4),
      Q => tx_pe_data_r(20),
      R => \<const0>\
    );
\tx_pe_data_r_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(5),
      Q => tx_pe_data_r(21),
      R => \<const0>\
    );
\tx_pe_data_r_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(6),
      Q => tx_pe_data_r(22),
      R => \<const0>\
    );
\tx_pe_data_r_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(7),
      Q => tx_pe_data_r(23),
      R => \<const0>\
    );
\tx_pe_data_r_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(8),
      Q => tx_pe_data_r(24),
      R => \<const0>\
    );
\tx_pe_data_r_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(9),
      Q => tx_pe_data_r(25),
      R => \<const0>\
    );
\tx_pe_data_r_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(10),
      Q => tx_pe_data_r(26),
      R => \<const0>\
    );
\tx_pe_data_r_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(11),
      Q => tx_pe_data_r(27),
      R => \<const0>\
    );
\tx_pe_data_r_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(12),
      Q => tx_pe_data_r(28),
      R => \<const0>\
    );
\tx_pe_data_r_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(13),
      Q => tx_pe_data_r(29),
      R => \<const0>\
    );
\tx_pe_data_r_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(29),
      Q => tx_pe_data_r(2),
      R => \<const0>\
    );
\tx_pe_data_r_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(14),
      Q => tx_pe_data_r(30),
      R => \<const0>\
    );
\tx_pe_data_r_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => s_axi_tx_tdata(15),
      Q => tx_pe_data_r(31),
      R => \<const0>\
    );
\tx_pe_data_r_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(28),
      Q => tx_pe_data_r(3),
      R => \<const0>\
    );
\tx_pe_data_r_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(27),
      Q => tx_pe_data_r(4),
      R => \<const0>\
    );
\tx_pe_data_r_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(26),
      Q => tx_pe_data_r(5),
      R => \<const0>\
    );
\tx_pe_data_r_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(25),
      Q => tx_pe_data_r(6),
      R => \<const0>\
    );
\tx_pe_data_r_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(24),
      Q => tx_pe_data_r(7),
      R => \<const0>\
    );
\tx_pe_data_r_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(23),
      Q => tx_pe_data_r(8),
      R => \<const0>\
    );
\tx_pe_data_r_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_in(22),
      Q => tx_pe_data_r(9),
      R => \<const0>\
    );
\tx_pe_data_v_r[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"080C"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axi_tx_tvalid,
      I2 => I2,
      I3 => I3,
      O => p_1_out(0)
    );
\tx_pe_data_v_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => storage_v_r,
      Q => tx_pe_data_v_r(0),
      R => \<const0>\
    );
\tx_pe_data_v_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => p_0_in,
      D => p_1_out(0),
      Q => tx_pe_data_v_r(1),
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_VALID_DATA_COUNTER is
  port (
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    stage_3_storage_count_r : in STD_LOGIC_VECTOR ( 0 to 1 );
    stage_2_start_with_data_r : in STD_LOGIC;
    stage_3_end_storage_r : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    user_clk : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_VALID_DATA_COUNTER;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_VALID_DATA_COUNTER is
  signal \<const1>\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\COUNT_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I1(1),
      Q => \^q\(1),
      R => SR(0)
    );
\COUNT_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I1(0),
      Q => \^q\(0),
      R => SR(0)
    );
\STORAGE_CE[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFCFFFEFFFF"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => stage_2_start_with_data_r,
      I3 => stage_3_end_storage_r,
      I4 => stage_3_storage_count_r(0),
      I5 => stage_3_storage_count_r(1),
      O => D(1)
    );
\STORAGE_CE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
    port map (
      I0 => \^q\(0),
      I1 => stage_3_storage_count_r(1),
      I2 => \^q\(1),
      I3 => stage_2_start_with_data_r,
      I4 => stage_3_end_storage_r,
      I5 => stage_3_storage_count_r(0),
      O => D(0)
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync is
  port (
    cc_sync : out STD_LOGIC;
    s_out_d1_cdc_to : out STD_LOGIC;
    s_out_d2 : out STD_LOGIC;
    s_out_d3 : out STD_LOGIC;
    s_out_d4 : out STD_LOGIC;
    s_out_d5 : out STD_LOGIC;
    s_out_d6 : out STD_LOGIC;
    s_out_d7 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    rx_cc_extend_r2 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_cdc_sync;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_level_out_d3,
      O => cc_sync
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O2(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O2(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O3(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O3(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O4(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O4(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O5(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O5(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O6(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O6(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => \out\(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => \out\(0)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => rx_cc_extend_r2,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_0 is
  port (
    O1 : out STD_LOGIC;
    s_out_d1_cdc_to_49 : out STD_LOGIC;
    s_out_d2_50 : out STD_LOGIC;
    s_out_d3_51 : out STD_LOGIC;
    s_out_d4_52 : out STD_LOGIC;
    s_out_d5_53 : out STD_LOGIC;
    s_out_d6_54 : out STD_LOGIC;
    s_out_d7_55 : out STD_LOGIC;
    O48 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O49 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O50 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O51 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O52 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O53 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC;
    rx_fsm_reset_done_int : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    I1 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_0 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_0;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
  O1 <= \^o1\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_49
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_50
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O49(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O50(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O50(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O51(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O51(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O52(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O52(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O53(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O53(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_51
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_52
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_53
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_54
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_55
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O48(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O48(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O49(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rx_fsm_reset_done_int,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => \^o1\,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \^o1\,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FB"
    )
    port map (
      I0 => I1,
      I1 => \out\(0),
      I2 => I2,
      I3 => \^o1\,
      O => O2
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_1 is
  port (
    s_out_d1_cdc_to_42 : out STD_LOGIC;
    s_out_d2_43 : out STD_LOGIC;
    s_out_d3_44 : out STD_LOGIC;
    s_out_d4_45 : out STD_LOGIC;
    s_out_d5_46 : out STD_LOGIC;
    s_out_d6_47 : out STD_LOGIC;
    s_out_d7_48 : out STD_LOGIC;
    O42 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O43 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O44 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O45 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O46 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O47 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    I2 : in STD_LOGIC;
    \out\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_1 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_1;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_42
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_43
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O43(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O44(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O44(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O45(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O45(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O46(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O46(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O47(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O47(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_44
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_45
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_46
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_47
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_48
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O42(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O42(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O43(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I1,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
\time_out_wait_bypass_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000FF000400"
    )
    port map (
      I0 => I2,
      I1 => \out\(0),
      I2 => I3,
      I3 => s_level_out_d4,
      I4 => I4,
      I5 => I5,
      O => O2
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_level_out_d4,
      O => O1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_10 is
  port (
    s_out_d1_cdc_to : out STD_LOGIC;
    s_out_d2 : out STD_LOGIC;
    s_out_d3 : out STD_LOGIC;
    s_out_d4 : out STD_LOGIC;
    s_out_d5 : out STD_LOGIC;
    s_out_d6 : out STD_LOGIC;
    s_out_d7 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    clear : out STD_LOGIC;
    O6 : out STD_LOGIC;
    run_phase_alignment_int : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    time_out_wait_bypass : in STD_LOGIC;
    I4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_10 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_10;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_10 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O1(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O2(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O2(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O3(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O3(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O4(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O4(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O5(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O5(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => \out\(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => \out\(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O1(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => run_phase_alignment_int,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF000000FF000100"
    )
    port map (
      I0 => I1,
      I1 => I2,
      I2 => I3,
      I3 => s_level_out_d4,
      I4 => time_out_wait_bypass,
      I5 => I4,
      O => O6
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_level_out_d4,
      O => clear
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_11 is
  port (
    s_out_d1_cdc_to_35 : out STD_LOGIC;
    s_out_d2_36 : out STD_LOGIC;
    s_out_d3_37 : out STD_LOGIC;
    s_out_d4_38 : out STD_LOGIC;
    s_out_d5_39 : out STD_LOGIC;
    s_out_d6_40 : out STD_LOGIC;
    s_out_d7_41 : out STD_LOGIC;
    O38 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O39 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O40 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O41 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O42 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O43 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O24 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_11 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_11;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_11 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_35
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_36
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O39(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O40(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O40(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O41(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O41(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O42(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O42(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O43(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O43(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_37
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_38
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_39
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_40
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_41
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O38(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O38(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O39(1)
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => O24,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_12 is
  port (
    O24 : out STD_LOGIC;
    s_out_d1_cdc_to_21 : out STD_LOGIC;
    s_out_d2_22 : out STD_LOGIC;
    s_out_d3_23 : out STD_LOGIC;
    s_out_d4_24 : out STD_LOGIC;
    s_out_d5_25 : out STD_LOGIC;
    s_out_d6_26 : out STD_LOGIC;
    s_out_d7_27 : out STD_LOGIC;
    O25 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O26 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O27 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O28 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O29 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O30 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_12 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_12;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_12 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o24\ : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
  O24 <= \^o24\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_21
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_22
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O26(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O27(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O27(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O28(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O28(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O29(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O29(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O30(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O30(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_23
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_24
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_25
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_26
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_27
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O25(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O25(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O26(1)
    );
\mmcm_lock_count[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_level_out_d3,
      O => SR(0)
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8888888"
    )
    port map (
      I0 => s_level_out_d3,
      I1 => mmcm_lock_reclocked,
      I2 => Q(0),
      I3 => I1,
      I4 => Q(1),
      O => O1
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \<const1>\,
      Q => \^o24\,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \^o24\,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_13 is
  port (
    s_out_d1_cdc_to_7 : out STD_LOGIC;
    s_out_d2_8 : out STD_LOGIC;
    s_out_d3_9 : out STD_LOGIC;
    s_out_d4_10 : out STD_LOGIC;
    s_out_d5_11 : out STD_LOGIC;
    s_out_d6_12 : out STD_LOGIC;
    s_out_d7_13 : out STD_LOGIC;
    O12 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O13 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O14 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O15 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O16 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O17 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    time_out_wait_bypass : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_13 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_13;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_13 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
\FSM_onehot_tx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0F0C00FA000A0"
    )
    port map (
      I0 => s_level_out_d4,
      I1 => I1,
      I2 => I2,
      I3 => I3,
      I4 => I4,
      I5 => I5,
      O => D(0)
    );
\FSM_onehot_tx_state[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => s_level_out_d4,
      I1 => I3,
      I2 => I5,
      I3 => I2,
      O => D(1)
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_7
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_8
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O13(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O14(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O14(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O15(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O15(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O16(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O16(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O17(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O17(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_9
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_10
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_11
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_12
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_13
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O12(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O12(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O13(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => time_out_wait_bypass,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_14 is
  port (
    O1 : out STD_LOGIC;
    s_out_d1_cdc_to_0 : out STD_LOGIC;
    s_out_d2_1 : out STD_LOGIC;
    s_out_d3_2 : out STD_LOGIC;
    s_out_d4_3 : out STD_LOGIC;
    s_out_d5_4 : out STD_LOGIC;
    s_out_d6_5 : out STD_LOGIC;
    s_out_d7_6 : out STD_LOGIC;
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O9 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O10 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O11 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC;
    tx_resetdone_out : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_14 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_14;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_14 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
  O1 <= \^o1\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_0
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_1
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O7(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O8(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O8(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O9(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O9(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O10(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O10(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O11(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O11(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O6(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O6(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O7(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_resetdone_out,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => \^o1\,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \^o1\,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
    port map (
      I0 => I1,
      I1 => I2,
      I2 => I3,
      I3 => \^o1\,
      O => O2
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_15 is
  port (
    tx_resetdone_sync : out STD_LOGIC;
    s_out_d1_cdc_to : out STD_LOGIC;
    s_out_d2 : out STD_LOGIC;
    s_out_d3 : out STD_LOGIC;
    s_out_d4 : out STD_LOGIC;
    s_out_d5 : out STD_LOGIC;
    s_out_d6 : out STD_LOGIC;
    s_out_d7 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_resetdone_out : in STD_LOGIC;
    user_clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_15 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_15;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_15 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_level_out_d3,
      O => tx_resetdone_sync
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O1(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O1(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O2(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O2(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O3(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O3(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O4(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O4(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O5(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O5(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => \out\(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => \out\(0)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => tx_resetdone_out,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_16 is
  port (
    s_out_d1_cdc_to_0 : out STD_LOGIC;
    s_out_d2_1 : out STD_LOGIC;
    s_out_d3_2 : out STD_LOGIC;
    s_out_d4_3 : out STD_LOGIC;
    s_out_d5_4 : out STD_LOGIC;
    s_out_d6_5 : out STD_LOGIC;
    s_out_d7_6 : out STD_LOGIC;
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O9 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O10 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O11 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    O12 : out STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    link_reset_comb_r : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    reset_channel_i : in STD_LOGIC;
    reset : in STD_LOGIC;
    gt_rxresetdone_r3 : in STD_LOGIC;
    gt_txresetdone_r3 : in STD_LOGIC;
    wait_for_lane_up_r : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_16 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_16;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_16 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_0
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_1
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O7(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O8(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O8(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O9(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O9(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O10(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O10(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O11(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O11(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_2
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_3
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_4
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_5
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_6
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O6(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O6(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O7(1)
    );
reset_lanes_flop_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFFFFFFFEFFFEFFF"
    )
    port map (
      I0 => reset,
      I1 => s_level_out_d3,
      I2 => gt_rxresetdone_r3,
      I3 => gt_txresetdone_r3,
      I4 => wait_for_lane_up_r,
      I5 => reset_channel_i,
      O => O12
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => link_reset_comb_r,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
sys_reset_out_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
    port map (
      I0 => gt_txresetdone_r3,
      I1 => gt_rxresetdone_r3,
      I2 => s_level_out_d3,
      I3 => reset,
      O => sys_reset_out
    );
verify_r_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
    port map (
      I0 => reset_channel_i,
      I1 => reset,
      I2 => s_level_out_d3,
      I3 => gt_rxresetdone_r3,
      I4 => gt_txresetdone_r3,
      O => SS(0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_2 is
  port (
    s_out_d1_cdc_to_91 : out STD_LOGIC;
    s_out_d2_92 : out STD_LOGIC;
    s_out_d3_93 : out STD_LOGIC;
    s_out_d4_94 : out STD_LOGIC;
    s_out_d5_95 : out STD_LOGIC;
    s_out_d6_96 : out STD_LOGIC;
    s_out_d7_97 : out STD_LOGIC;
    O84 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O85 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O86 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O87 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O88 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O89 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_2 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_2;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_91
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_92
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O85(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O86(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O86(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O87(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O87(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O88(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O88(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O89(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O89(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_93
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_94
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_95
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_96
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_97
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O84(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O84(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O85(1)
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => I1,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_3 is
  port (
    rxresetdone_s3 : out STD_LOGIC;
    s_out_d1_cdc_to_63 : out STD_LOGIC;
    s_out_d2_64 : out STD_LOGIC;
    s_out_d3_65 : out STD_LOGIC;
    s_out_d4_66 : out STD_LOGIC;
    s_out_d5_67 : out STD_LOGIC;
    s_out_d6_68 : out STD_LOGIC;
    s_out_d7_69 : out STD_LOGIC;
    O60 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O61 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O62 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O63 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O64 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O65 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    rxfsm_rxresetdone_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    gt0_pllrefclklost_i : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    time_out_2ms : in STD_LOGIC;
    I4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_3 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_3;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_3 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_14\ : STD_LOGIC;
  signal \^rxresetdone_s3\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
  rxresetdone_s3 <= \^rxresetdone_s3\;
\FSM_onehot_rx_state[8]_i_14\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0D"
    )
    port map (
      I0 => time_out_2ms,
      I1 => I4,
      I2 => \^rxresetdone_s3\,
      O => \n_0_FSM_onehot_rx_state[8]_i_14\
    );
\FSM_onehot_rx_state[8]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00050003"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[8]_i_14\,
      I1 => gt0_pllrefclklost_i,
      I2 => I1,
      I3 => I2,
      I4 => I3,
      I5 => Q(0),
      O => O1
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_63
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_64
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O61(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O62(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O62(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O63(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O63(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O64(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O64(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O65(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O65(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_65
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_66
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_67
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_68
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_69
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O60(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O60(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O61(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => rxfsm_rxresetdone_r,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => \^rxresetdone_s3\,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \^rxresetdone_s3\,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_4 is
  port (
    s_out_d1_cdc_to_77 : out STD_LOGIC;
    s_out_d2_78 : out STD_LOGIC;
    s_out_d3_79 : out STD_LOGIC;
    s_out_d4_80 : out STD_LOGIC;
    s_out_d5_81 : out STD_LOGIC;
    s_out_d6_82 : out STD_LOGIC;
    s_out_d7_83 : out STD_LOGIC;
    O72 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O73 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O74 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O75 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O76 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O77 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    rxfsm_data_valid_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 6 downto 0 );
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    rx_cdrlocked : in STD_LOGIC;
    rx_state_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    time_out_100us : in STD_LOGIC;
    I8 : in STD_LOGIC;
    time_out_1us : in STD_LOGIC;
    I9 : in STD_LOGIC;
    I10 : in STD_LOGIC;
    I11 : in STD_LOGIC;
    I12 : in STD_LOGIC;
    I13 : in STD_LOGIC;
    rx_fsm_reset_done_int : in STD_LOGIC;
    I14 : in STD_LOGIC;
    adapt_count_reset : in STD_LOGIC;
    rxresetdone_s3 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_4 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_4;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_4 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_8\ : STD_LOGIC;
  signal n_0_reset_time_out_i_4 : STD_LOGIC;
  signal n_0_reset_time_out_i_5 : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_i_3 : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_i_4 : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
  O1 <= \^o1\;
\FSM_onehot_rx_state[8]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => I8,
      I1 => time_out_100us,
      I2 => s_level_out_d3,
      O => \^o1\
    );
\FSM_onehot_rx_state[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFD0"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[8]_i_5\,
      I1 => I1,
      I2 => I2,
      I3 => \n_0_FSM_onehot_rx_state[8]_i_8\,
      I4 => I3,
      I5 => I4,
      O => E(0)
    );
\FSM_onehot_rx_state[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
    port map (
      I0 => Q(5),
      I1 => Q(4),
      I2 => Q(6),
      I3 => I9,
      I4 => I10,
      I5 => \^o1\,
      O => D(0)
    );
\FSM_onehot_rx_state[8]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57575757F7F757F7"
    )
    port map (
      I0 => I7,
      I1 => rx_cdrlocked,
      I2 => rx_state_reg(0),
      I3 => time_out_100us,
      I4 => I8,
      I5 => s_level_out_d3,
      O => \n_0_FSM_onehot_rx_state[8]_i_5\
    );
\FSM_onehot_rx_state[8]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAA8AAAA"
    )
    port map (
      I0 => Q(6),
      I1 => Q(2),
      I2 => Q(3),
      I3 => I5,
      I4 => s_level_out_d3,
      I5 => I6,
      O => \n_0_FSM_onehot_rx_state[8]_i_8\
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_77
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_78
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O73(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O74(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O74(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O75(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O75(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O76(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O76(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O77(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O77(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_79
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_80
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_81
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_82
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_83
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O72(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O72(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O73(1)
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEEEEEE2"
    )
    port map (
      I0 => I8,
      I1 => I11,
      I2 => I12,
      I3 => n_0_reset_time_out_i_4,
      I4 => n_0_reset_time_out_i_5,
      I5 => I13,
      O => O2
    );
reset_time_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010101"
    )
    port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => rx_state_reg(0),
      I3 => s_level_out_d3,
      I4 => Q(6),
      O => n_0_reset_time_out_i_4
    );
reset_time_out_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE222E200000000"
    )
    port map (
      I0 => rx_cdrlocked,
      I1 => rx_state_reg(0),
      I2 => s_level_out_d3,
      I3 => adapt_count_reset,
      I4 => rxresetdone_s3,
      I5 => I2,
      O => n_0_reset_time_out_i_5
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000BA8A"
    )
    port map (
      I0 => rx_fsm_reset_done_int,
      I1 => I14,
      I2 => n_0_rx_fsm_reset_done_int_i_3,
      I3 => n_0_rx_fsm_reset_done_int_i_4,
      I4 => I13,
      O => O3
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"300C300C383C380C"
    )
    port map (
      I0 => time_out_1us,
      I1 => Q(6),
      I2 => rx_state_reg(0),
      I3 => s_level_out_d3,
      I4 => time_out_100us,
      I5 => I8,
      O => n_0_rx_fsm_reset_done_int_i_3
    );
rx_fsm_reset_done_int_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => s_level_out_d3,
      I1 => Q(6),
      I2 => I8,
      I3 => time_out_1us,
      O => n_0_rx_fsm_reset_done_int_i_4
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => rxfsm_data_valid_r,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_5 is
  port (
    s_out_d1_cdc_to_56 : out STD_LOGIC;
    s_out_d2_57 : out STD_LOGIC;
    s_out_d3_58 : out STD_LOGIC;
    s_out_d4_59 : out STD_LOGIC;
    s_out_d5_60 : out STD_LOGIC;
    s_out_d6_61 : out STD_LOGIC;
    s_out_d7_62 : out STD_LOGIC;
    O54 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O55 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O56 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O57 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O58 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O59 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    I2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_5 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_5;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_5 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[1]_i_3\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
\FSM_onehot_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000AAFE"
    )
    port map (
      I0 => I2,
      I1 => \n_0_FSM_onehot_rx_state[1]_i_3\,
      I2 => Q(1),
      I3 => I3,
      I4 => Q(5),
      I5 => Q(0),
      O => D(0)
    );
\FSM_onehot_rx_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0300343403000404"
    )
    port map (
      I0 => I7,
      I1 => Q(2),
      I2 => Q(4),
      I3 => s_level_out_d4,
      I4 => Q(3),
      I5 => I8,
      O => \n_0_FSM_onehot_rx_state[1]_i_3\
    );
\FSM_onehot_rx_state[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001101000000000"
    )
    port map (
      I0 => I4,
      I1 => I5,
      I2 => Q(5),
      I3 => s_level_out_d4,
      I4 => Q(3),
      I5 => I6,
      O => D(1)
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_56
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_57
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O55(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O56(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O56(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O57(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O57(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O58(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O58(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O59(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O59(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_58
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_59
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_60
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_61
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_62
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O54(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O54(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O55(1)
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => I1,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_6 is
  port (
    s_out_d1_cdc_to_70 : out STD_LOGIC;
    s_out_d2_71 : out STD_LOGIC;
    s_out_d3_72 : out STD_LOGIC;
    s_out_d4_73 : out STD_LOGIC;
    s_out_d5_74 : out STD_LOGIC;
    s_out_d6_75 : out STD_LOGIC;
    s_out_d7_76 : out STD_LOGIC;
    O66 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O67 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O68 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O69 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O70 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O71 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    I1 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_6 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_6;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_6 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_70
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_71
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O67(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O68(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O68(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O69(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O69(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O70(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O70(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O71(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O71(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_72
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_73
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_74
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_75
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_76
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O66(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O66(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O67(1)
    );
\mmcm_lock_count[9]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => s_level_out_d3,
      O => SR(0)
    );
\mmcm_lock_reclocked_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8888888"
    )
    port map (
      I0 => s_level_out_d3,
      I1 => mmcm_lock_reclocked,
      I2 => Q(0),
      I3 => I2,
      I4 => Q(1),
      O => O1
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => I1,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_7 is
  port (
    s_out_d1_cdc_to_84 : out STD_LOGIC;
    s_out_d2_85 : out STD_LOGIC;
    s_out_d3_86 : out STD_LOGIC;
    s_out_d4_87 : out STD_LOGIC;
    s_out_d5_88 : out STD_LOGIC;
    s_out_d6_89 : out STD_LOGIC;
    s_out_d7_90 : out STD_LOGIC;
    O78 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O79 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O80 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O81 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O82 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O83 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    I2 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    adapt_count_reset : in STD_LOGIC;
    I1 : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    rx_state_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    I3 : in STD_LOGIC;
    time_out_2ms : in STD_LOGIC;
    recclk_mon_count_reset : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_7 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_7;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_7 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
\FSM_onehot_rx_state[8]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
    port map (
      I0 => time_out_2ms,
      I1 => s_level_out_d3,
      I2 => rx_state_reg(0),
      I3 => I1,
      I4 => adapt_count_reset,
      O => O2
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
adapt_count_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFE8AAEAAA"
    )
    port map (
      I0 => recclk_mon_count_reset,
      I1 => adapt_count_reset,
      I2 => I1,
      I3 => I4,
      I4 => s_level_out_d3,
      I5 => I5,
      O => O3
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_84
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_85
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O79(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O80(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O80(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O81(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O81(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O82(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O82(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O83(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O83(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_86
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_87
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_88
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_89
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_90
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O78(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O78(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O79(1)
    );
\reset_time_out_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"050504040F050404"
    )
    port map (
      I0 => adapt_count_reset,
      I1 => s_level_out_d3,
      I2 => I1,
      I3 => mmcm_lock_reclocked,
      I4 => rx_state_reg(0),
      I5 => I3,
      O => O1
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => I2,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_8 is
  port (
    s_out_d1_cdc_to_14 : out STD_LOGIC;
    s_out_d2_15 : out STD_LOGIC;
    s_out_d3_16 : out STD_LOGIC;
    s_out_d4_17 : out STD_LOGIC;
    s_out_d5_18 : out STD_LOGIC;
    s_out_d6_19 : out STD_LOGIC;
    s_out_d7_20 : out STD_LOGIC;
    O18 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O19 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O20 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O21 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O22 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O23 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    txfsm_txresetdone_r : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    cplllock_sync : in STD_LOGIC;
    I1 : in STD_LOGIC;
    mmcm_lock_reclocked : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    init_wait_done : in STD_LOGIC;
    time_out_2ms : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    time_out_500us : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_8 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_8;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_8 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[7]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[7]_i_9\ : STD_LOGIC;
  signal s_level_out_d1_cdc_to : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
\FSM_onehot_tx_state[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFC0AFC0AFC0A0C0"
    )
    port map (
      I0 => init_wait_done,
      I1 => \n_0_FSM_onehot_tx_state[7]_i_9\,
      I2 => I1,
      I3 => I3,
      I4 => time_out_2ms,
      I5 => cplllock_sync,
      O => \n_0_FSM_onehot_tx_state[7]_i_5\
    );
\FSM_onehot_tx_state[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => s_level_out_d4,
      I1 => reset_time_out,
      I2 => time_out_500us,
      O => \n_0_FSM_onehot_tx_state[7]_i_9\
    );
\FSM_onehot_tx_state_reg[7]_i_2\: unisim.vcomponents.MUXF7
    port map (
      I0 => I4,
      I1 => \n_0_FSM_onehot_tx_state[7]_i_5\,
      O => E(0),
      S => I2
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_14
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_15
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O19(0)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O20(1)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O20(0)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O21(1)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O21(0)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O22(1)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O22(0)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O23(1)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O23(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_16
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_17
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_18
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_19
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_20
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O18(1)
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O18(0)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O19(1)
    );
reset_time_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFC0F00AFAF0F0F"
    )
    port map (
      I0 => s_level_out_d4,
      I1 => cplllock_sync,
      I2 => I1,
      I3 => mmcm_lock_reclocked,
      I4 => I2,
      I5 => I3,
      O => O1
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => txfsm_txresetdone_r,
      Q => s_level_out_d1_cdc_to,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d1_cdc_to,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_cdc_sync_9 is
  port (
    O31 : out STD_LOGIC;
    cplllock_sync : out STD_LOGIC;
    s_out_d1_cdc_to_28 : out STD_LOGIC;
    s_out_d2_29 : out STD_LOGIC;
    s_out_d3_30 : out STD_LOGIC;
    s_out_d4_31 : out STD_LOGIC;
    s_out_d5_32 : out STD_LOGIC;
    s_out_d6_33 : out STD_LOGIC;
    s_out_d7_34 : out STD_LOGIC;
    O32 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O33 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O34 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O35 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O36 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O37 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC;
    tx_lock : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    reset_time_out : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of aurora_8b10b_0aurora_8b10b_0_cdc_sync_9 : entity is "aurora_8b10b_0_cdc_sync";
end aurora_8b10b_0aurora_8b10b_0_cdc_sync_9;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_cdc_sync_9 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o31\ : STD_LOGIC;
  signal n_0_reset_time_out_i_2 : STD_LOGIC;
  signal s_level_out_d2 : STD_LOGIC;
  signal s_level_out_d3 : STD_LOGIC;
  signal s_level_out_d4 : STD_LOGIC;
  signal s_level_out_d5 : STD_LOGIC;
  signal s_level_out_d6 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of s_level_out_d1_cdc_to_reg : label is true;
  attribute ASYNC_REG of s_level_out_d2_reg : label is true;
  attribute ASYNC_REG of s_level_out_d3_reg : label is true;
  attribute ASYNC_REG of s_level_out_d4_reg : label is true;
  attribute keep : string;
  attribute keep of s_level_out_d4_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d5_reg : label is true;
  attribute keep of s_level_out_d5_reg : label is "yes";
  attribute ASYNC_REG of s_level_out_d6_reg : label is true;
  attribute keep of s_level_out_d6_reg : label is "yes";
begin
  O31 <= \^o31\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
i_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_level_out_d3,
      O => cplllock_sync
    );
i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d1_cdc_to_28
    );
i_10: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O33(1)
    );
i_11: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O33(0)
    );
i_12: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O34(1)
    );
i_13: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O34(0)
    );
i_14: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O35(1)
    );
i_15: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O35(0)
    );
i_16: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O36(1)
    );
i_17: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O36(0)
    );
i_18: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O37(1)
    );
i_19: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O37(0)
    );
i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d2_29
    );
i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d3_30
    );
i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d4_31
    );
i_5: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d5_32
    );
i_6: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d6_33
    );
i_7: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => s_out_d7_34
    );
i_8: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O32(1)
    );
i_9: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \<const0>\,
      O => O32(0)
    );
reset_time_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => reset_time_out,
      I1 => n_0_reset_time_out_i_2,
      I2 => I3,
      I3 => I4,
      O => O1
    );
reset_time_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFF0101"
    )
    port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => Q(2),
      I3 => s_level_out_d3,
      I4 => I1,
      I5 => I2,
      O => n_0_reset_time_out_i_2
    );
s_level_out_d1_cdc_to_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => tx_lock,
      Q => \^o31\,
      R => \<const0>\
    );
s_level_out_d2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \^o31\,
      Q => s_level_out_d2,
      R => \<const0>\
    );
s_level_out_d3_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d2,
      Q => s_level_out_d3,
      R => \<const0>\
    );
s_level_out_d4_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d3,
      Q => s_level_out_d4,
      R => \<const0>\
    );
s_level_out_d5_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d4,
      Q => s_level_out_d5,
      R => \<const0>\
    );
s_level_out_d6_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => s_level_out_d5,
      Q => s_level_out_d6,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_gt is
  port (
    tx_lock : out STD_LOGIC;
    gt0_pllrefclklost_i : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    O1 : out STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    O2 : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RXDISPERR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O90 : out STD_LOGIC;
    O91 : out STD_LOGIC;
    hard_err_gt0 : out STD_LOGIC;
    O92 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O93 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O94 : out STD_LOGIC;
    O95 : out STD_LOGIC;
    O96 : out STD_LOGIC;
    O97 : out STD_LOGIC;
    O98 : out STD_LOGIC;
    O99 : out STD_LOGIC;
    O100 : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    cpll_reset_i : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    gt_rx_reset_i : in STD_LOGIC;
    gt_tx_reset_i : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_qpllclk_quad2_in : in STD_LOGIC;
    gt_qpllrefclk_quad2_in : in STD_LOGIC;
    gt_rxdfelfhold_i : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    gt_rxuserrdy_i : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    power_down : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    I3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I4 : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_gt;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_gt is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^rxcharisk\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rxdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^rxdisperr\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal n_0_gtxe2_i : STD_LOGIC;
  signal n_11_gtxe2_i : STD_LOGIC;
  signal n_16_gtxe2_i : STD_LOGIC;
  signal n_170_gtxe2_i : STD_LOGIC;
  signal n_171_gtxe2_i : STD_LOGIC;
  signal n_172_gtxe2_i : STD_LOGIC;
  signal n_173_gtxe2_i : STD_LOGIC;
  signal n_174_gtxe2_i : STD_LOGIC;
  signal n_175_gtxe2_i : STD_LOGIC;
  signal n_176_gtxe2_i : STD_LOGIC;
  signal n_177_gtxe2_i : STD_LOGIC;
  signal n_178_gtxe2_i : STD_LOGIC;
  signal n_179_gtxe2_i : STD_LOGIC;
  signal n_180_gtxe2_i : STD_LOGIC;
  signal n_181_gtxe2_i : STD_LOGIC;
  signal n_182_gtxe2_i : STD_LOGIC;
  signal n_183_gtxe2_i : STD_LOGIC;
  signal n_184_gtxe2_i : STD_LOGIC;
  signal n_23_gtxe2_i : STD_LOGIC;
  signal n_27_gtxe2_i : STD_LOGIC;
  signal n_38_gtxe2_i : STD_LOGIC;
  signal n_39_gtxe2_i : STD_LOGIC;
  signal n_4_gtxe2_i : STD_LOGIC;
  signal n_78_gtxe2_i : STD_LOGIC;
  signal n_79_gtxe2_i : STD_LOGIC;
  signal n_81_gtxe2_i : STD_LOGIC;
  signal n_83_gtxe2_i : STD_LOGIC;
  signal n_84_gtxe2_i : STD_LOGIC;
  signal n_9_gtxe2_i : STD_LOGIC;
  signal rx_buf_err_i : STD_LOGIC;
  signal rx_disp_err_i : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal rx_not_in_table_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^rx_realign_i\ : STD_LOGIC;
  signal tx_buf_err_i : STD_LOGIC;
  signal NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PHYSTATUS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDATAVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXELECIDLE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_RXVALID_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENN_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXQPISENP_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_TXRATEDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 32 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute box_type : string;
  attribute box_type of gtxe2_i : label is "PRIMITIVE";
begin
  RXCHARISK(3 downto 0) <= \^rxcharisk\(3 downto 0);
  RXDATA(31 downto 0) <= \^rxdata\(31 downto 0);
  RXDISPERR(1 downto 0) <= \^rxdisperr\(1 downto 0);
  rx_realign_i <= \^rx_realign_i\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\aurora_8b10b_0_sym_dec_4byte_i/left_align_select_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFAFB10114010"
    )
    port map (
      I0 => I4,
      I1 => \^rxcharisk\(0),
      I2 => \^rxcharisk\(2),
      I3 => \^rxcharisk\(1),
      I4 => \^rxcharisk\(3),
      I5 => I2,
      O => O99
    );
\aurora_8b10b_0_sym_dec_4byte_i/left_align_select_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFEB10110500"
    )
    port map (
      I0 => I4,
      I1 => \^rxcharisk\(0),
      I2 => \^rxcharisk\(2),
      I3 => \^rxcharisk\(1),
      I4 => \^rxcharisk\(3),
      I5 => I1,
      O => O100
    );
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"1111111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 7,
      CHAN_BOND_SEQ_1_1 => B"0101111100",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"0001",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"0000",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 31,
      CLK_COR_MIN_LAT => 24,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0111110111",
      CLK_COR_SEQ_1_2 => B"0111110111",
      CLK_COR_SEQ_1_3 => B"0111110111",
      CLK_COR_SEQ_1_4 => B"0111110111",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0100000000",
      CLK_COR_SEQ_2_2 => B"0100000000",
      CLK_COR_SEQ_2_3 => B"0100000000",
      CLK_COR_SEQ_2_4 => B"0100000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "FALSE",
      CLK_COR_SEQ_LEN => 4,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 5,
      CPLL_FBDIV_45 => 5,
      CPLL_INIT_CFG => X"00001E",
      CPLL_LOCK_CFG => X"01E8",
      CPLL_REFCLK_DIV => 1,
      DEC_MCOMMA_DETECT => "TRUE",
      DEC_PCOMMA_DETECT => "TRUE",
      DEC_VALID_COMMA_ONLY => "FALSE",
      DMONITOR_CFG => X"000A00",
      ES_CONTROL => B"000000",
      ES_ERRDET_EN => "FALSE",
      ES_EYE_SCAN_EN => "TRUE",
      ES_HORZ_OFFSET => X"000",
      ES_PMA_CFG => B"0000000000",
      ES_PRESCALE => B"00000",
      ES_QUALIFIER => X"00000000000000000000",
      ES_QUAL_MASK => X"00000000000000000000",
      ES_SDATA_MASK => X"00000000000000000000",
      ES_VERT_OFFSET => B"000000000",
      FTS_DESKEW_SEQ_ENABLE => B"1111",
      FTS_LANE_DESKEW_CFG => B"1111",
      FTS_LANE_DESKEW_EN => "FALSE",
      GEARBOX_MODE => B"000",
      IS_CPLLLOCKDETCLK_INVERTED => '0',
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_RXUSRCLK2_INVERTED => '0',
      IS_RXUSRCLK_INVERTED => '0',
      IS_TXPHDLYTSTCLK_INVERTED => '0',
      IS_TXUSRCLK2_INVERTED => '0',
      IS_TXUSRCLK_INVERTED => '0',
      OUTREFCLK_SEL_INV => B"11",
      PCS_PCIE_EN => "FALSE",
      PCS_RSVD_ATTR => X"000000000000",
      PD_TRANS_TIME_FROM_P2 => X"03C",
      PD_TRANS_TIME_NONE_P2 => X"19",
      PD_TRANS_TIME_TO_P2 => X"64",
      PMA_RSV => X"00018480",
      PMA_RSV2 => X"2050",
      PMA_RSV3 => B"00",
      PMA_RSV4 => X"00000000",
      RXBUFRESET_TIME => B"00001",
      RXBUF_ADDR_MODE => "FULL",
      RXBUF_EIDLE_HI_CNT => B"1000",
      RXBUF_EIDLE_LO_CNT => B"0000",
      RXBUF_EN => "TRUE",
      RXBUF_RESET_ON_CB_CHANGE => "TRUE",
      RXBUF_RESET_ON_COMMAALIGN => "FALSE",
      RXBUF_RESET_ON_EIDLE => "FALSE",
      RXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      RXBUF_THRESH_OVFLW => 61,
      RXBUF_THRESH_OVRD => "FALSE",
      RXBUF_THRESH_UNDFLW => 4,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"03000023FF20400020",
      RXCDR_FR_RESET_ON_EIDLE => '0',
      RXCDR_HOLD_DURING_EIDLE => '0',
      RXCDR_LOCK_CFG => B"010101",
      RXCDR_PH_RESET_ON_EIDLE => '0',
      RXDFELPMRESET_TIME => B"0001111",
      RXDLY_CFG => X"001F",
      RXDLY_LCFG => X"030",
      RXDLY_TAP_CFG => X"0000",
      RXGEARBOX_EN => "FALSE",
      RXISCANRESET_TIME => B"00001",
      RXLPM_HF_CFG => B"00000011110000",
      RXLPM_LF_CFG => B"00000011110000",
      RXOOB_CFG => B"0000110",
      RXOUT_DIV => 1,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '0',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 4,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 40,
      RX_DDI_SEL => B"000000",
      RX_DEBUG_CFG => B"000000000000",
      RX_DEFER_RESET_BUF_EN => "TRUE",
      RX_DFE_GAIN_CFG => X"020FEA",
      RX_DFE_H2_CFG => B"000000000000",
      RX_DFE_H3_CFG => B"000001000000",
      RX_DFE_H4_CFG => B"00011110000",
      RX_DFE_H5_CFG => B"00011100000",
      RX_DFE_KL_CFG => B"0000011111110",
      RX_DFE_KL_CFG2 => X"301148AC",
      RX_DFE_LPM_CFG => X"0954",
      RX_DFE_LPM_HOLD_DURING_EIDLE => '0',
      RX_DFE_UT_CFG => B"10001111000000000",
      RX_DFE_VP_CFG => B"00011111100000011",
      RX_DFE_XYD_CFG => B"0000000000000",
      RX_DISPERR_SEQ_MATCH => "TRUE",
      RX_INT_DATAWIDTH => 1,
      RX_OS_CFG => B"0000010000000",
      RX_SIG_VALID_DLY => 10,
      RX_XCLK_SEL => "RXREC",
      SAS_MAX_COM => 64,
      SAS_MIN_COM => 36,
      SATA_BURST_SEQ_LEN => B"1111",
      SATA_BURST_VAL => B"100",
      SATA_CPLL_CFG => "VCO_3000MHZ",
      SATA_EIDLE_VAL => B"100",
      SATA_MAX_BURST => 8,
      SATA_MAX_INIT => 21,
      SATA_MAX_WAKE => 7,
      SATA_MIN_BURST => 4,
      SATA_MIN_INIT => 12,
      SATA_MIN_WAKE => 4,
      SHOW_REALIGN_COMMA => "TRUE",
      SIM_CPLLREFCLK_SEL => B"001",
      SIM_RECEIVER_DETECT_PASS => "TRUE",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_TX_EIDLE_DRIVE_LEVEL => "X",
      SIM_VERSION => "4.0",
      TERM_RCAL_CFG => B"10000",
      TERM_RCAL_OVRD => '0',
      TRANS_TIME_RATE => X"0E",
      TST_RSV => X"00000000",
      TXBUF_EN => "TRUE",
      TXBUF_RESET_ON_RATE_CHANGE => "TRUE",
      TXDLY_CFG => X"001F",
      TXDLY_LCFG => X"030",
      TXDLY_TAP_CFG => X"0000",
      TXGEARBOX_EN => "FALSE",
      TXOUT_DIV => 1,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 4,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 40,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 1,
      TX_LOOPBACK_DRIVE_HIZ => "FALSE",
      TX_MAINCURSOR_SEL => '0',
      TX_MARGIN_FULL_0 => B"1001110",
      TX_MARGIN_FULL_1 => B"1001001",
      TX_MARGIN_FULL_2 => B"1000101",
      TX_MARGIN_FULL_3 => B"1000010",
      TX_MARGIN_FULL_4 => B"1000000",
      TX_MARGIN_LOW_0 => B"1000110",
      TX_MARGIN_LOW_1 => B"1000100",
      TX_MARGIN_LOW_2 => B"1000010",
      TX_MARGIN_LOW_3 => B"1000000",
      TX_MARGIN_LOW_4 => B"1000000",
      TX_PREDRIVER_MODE => '0',
      TX_QPI_STATUS_EN => '0',
      TX_RXDETECT_CFG => X"1832",
      TX_RXDETECT_REF => B"100",
      TX_XCLK_SEL => "TXOUT",
      UCODEER_CLR => '0'
    )
    port map (
      CFGRESET => \<const0>\,
      CLKRSVD(3) => \<const0>\,
      CLKRSVD(2) => \<const0>\,
      CLKRSVD(1) => \<const0>\,
      CLKRSVD(0) => \<const0>\,
      CPLLFBCLKLOST => n_0_gtxe2_i,
      CPLLLOCK => tx_lock,
      CPLLLOCKDETCLK => init_clk_in,
      CPLLLOCKEN => \<const1>\,
      CPLLPD => \<const0>\,
      CPLLREFCLKLOST => gt0_pllrefclklost_i,
      CPLLREFCLKSEL(2) => \<const0>\,
      CPLLREFCLKSEL(1) => \<const0>\,
      CPLLREFCLKSEL(0) => \<const1>\,
      CPLLRESET => cpll_reset_i,
      DMONITOROUT(7) => n_177_gtxe2_i,
      DMONITOROUT(6) => n_178_gtxe2_i,
      DMONITOROUT(5) => n_179_gtxe2_i,
      DMONITOROUT(4) => n_180_gtxe2_i,
      DMONITOROUT(3) => n_181_gtxe2_i,
      DMONITOROUT(2) => n_182_gtxe2_i,
      DMONITOROUT(1) => n_183_gtxe2_i,
      DMONITOROUT(0) => n_184_gtxe2_i,
      DRPADDR(8 downto 0) => drpaddr_in(8 downto 0),
      DRPCLK => drpclk_in,
      DRPDI(15 downto 0) => drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => drpdo_out(15 downto 0),
      DRPEN => drpen_in,
      DRPRDY => drprdy_out,
      DRPWE => drpwe_in,
      EYESCANDATAERROR => n_4_gtxe2_i,
      EYESCANMODE => \<const0>\,
      EYESCANRESET => \<const0>\,
      EYESCANTRIGGER => \<const0>\,
      GTGREFCLK => \<const0>\,
      GTNORTHREFCLK0 => \<const0>\,
      GTNORTHREFCLK1 => \<const0>\,
      GTREFCLK0 => gt_refclk1,
      GTREFCLK1 => \<const0>\,
      GTREFCLKMONITOR => NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED,
      GTRESETSEL => \<const0>\,
      GTRSVD(15) => \<const0>\,
      GTRSVD(14) => \<const0>\,
      GTRSVD(13) => \<const0>\,
      GTRSVD(12) => \<const0>\,
      GTRSVD(11) => \<const0>\,
      GTRSVD(10) => \<const0>\,
      GTRSVD(9) => \<const0>\,
      GTRSVD(8) => \<const0>\,
      GTRSVD(7) => \<const0>\,
      GTRSVD(6) => \<const0>\,
      GTRSVD(5) => \<const0>\,
      GTRSVD(4) => \<const0>\,
      GTRSVD(3) => \<const0>\,
      GTRSVD(2) => \<const0>\,
      GTRSVD(1) => \<const0>\,
      GTRSVD(0) => \<const0>\,
      GTRXRESET => gt_rx_reset_i,
      GTSOUTHREFCLK0 => \<const0>\,
      GTSOUTHREFCLK1 => \<const0>\,
      GTTXRESET => gt_tx_reset_i,
      GTXRXN => rxn,
      GTXRXP => rxp,
      GTXTXN => txn,
      GTXTXP => txp,
      LOOPBACK(2 downto 0) => loopback(2 downto 0),
      PCSRSVDIN(15) => \<const0>\,
      PCSRSVDIN(14) => \<const0>\,
      PCSRSVDIN(13) => \<const0>\,
      PCSRSVDIN(12) => \<const0>\,
      PCSRSVDIN(11) => \<const0>\,
      PCSRSVDIN(10) => \<const0>\,
      PCSRSVDIN(9) => \<const0>\,
      PCSRSVDIN(8) => \<const0>\,
      PCSRSVDIN(7) => \<const0>\,
      PCSRSVDIN(6) => \<const0>\,
      PCSRSVDIN(5) => \<const0>\,
      PCSRSVDIN(4) => \<const0>\,
      PCSRSVDIN(3) => \<const0>\,
      PCSRSVDIN(2) => \<const0>\,
      PCSRSVDIN(1) => \<const0>\,
      PCSRSVDIN(0) => \<const0>\,
      PCSRSVDIN2(4) => \<const0>\,
      PCSRSVDIN2(3) => \<const0>\,
      PCSRSVDIN2(2) => \<const0>\,
      PCSRSVDIN2(1) => \<const0>\,
      PCSRSVDIN2(0) => \<const0>\,
      PCSRSVDOUT(15 downto 0) => NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED(15 downto 0),
      PHYSTATUS => NLW_gtxe2_i_PHYSTATUS_UNCONNECTED,
      PMARSVDIN(4) => \<const0>\,
      PMARSVDIN(3) => \<const0>\,
      PMARSVDIN(2) => \<const0>\,
      PMARSVDIN(1) => \<const0>\,
      PMARSVDIN(0) => \<const0>\,
      PMARSVDIN2(4) => \<const0>\,
      PMARSVDIN2(3) => \<const0>\,
      PMARSVDIN2(2) => \<const0>\,
      PMARSVDIN2(1) => \<const0>\,
      PMARSVDIN2(0) => \<const0>\,
      QPLLCLK => gt_qpllclk_quad2_in,
      QPLLREFCLK => gt_qpllrefclk_quad2_in,
      RESETOVRD => \<const0>\,
      RX8B10BEN => \<const1>\,
      RXBUFRESET => \<const0>\,
      RXBUFSTATUS(2) => rx_buf_err_i,
      RXBUFSTATUS(1) => n_83_gtxe2_i,
      RXBUFSTATUS(0) => n_84_gtxe2_i,
      RXBYTEISALIGNED => n_9_gtxe2_i,
      RXBYTEREALIGN => \^rx_realign_i\,
      RXCDRFREQRESET => \<const0>\,
      RXCDRHOLD => \<const0>\,
      RXCDRLOCK => n_11_gtxe2_i,
      RXCDROVRDEN => \<const0>\,
      RXCDRRESET => \<const0>\,
      RXCDRRESETRSV => \<const0>\,
      RXCHANBONDSEQ => NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(7 downto 4) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 4),
      RXCHARISCOMMA(3 downto 0) => D(3 downto 0),
      RXCHARISK(7 downto 4) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 4),
      RXCHARISK(3 downto 0) => \^rxcharisk\(3 downto 0),
      RXCHBONDEN => \<const0>\,
      RXCHBONDI(4) => \<const0>\,
      RXCHBONDI(3) => \<const0>\,
      RXCHBONDI(2) => \<const0>\,
      RXCHBONDI(1) => \<const0>\,
      RXCHBONDI(0) => \<const0>\,
      RXCHBONDLEVEL(2) => \<const0>\,
      RXCHBONDLEVEL(1) => \<const0>\,
      RXCHBONDLEVEL(0) => \<const0>\,
      RXCHBONDMASTER => \<const0>\,
      RXCHBONDO(4 downto 0) => NLW_gtxe2_i_RXCHBONDO_UNCONNECTED(4 downto 0),
      RXCHBONDSLAVE => \<const0>\,
      RXCLKCORCNT(1) => n_78_gtxe2_i,
      RXCLKCORCNT(0) => n_79_gtxe2_i,
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => n_16_gtxe2_i,
      RXCOMMADETEN => \<const1>\,
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 32) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 32),
      RXDATA(31 downto 0) => \^rxdata\(31 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => \<const0>\,
      RXDFEAGCHOLD => gt_rxdfelfhold_i,
      RXDFEAGCOVRDEN => \<const0>\,
      RXDFECM1EN => \<const0>\,
      RXDFELFHOLD => gt_rxdfelfhold_i,
      RXDFELFOVRDEN => \<const1>\,
      RXDFELPMRESET => \<const0>\,
      RXDFETAP2HOLD => \<const0>\,
      RXDFETAP2OVRDEN => \<const0>\,
      RXDFETAP3HOLD => \<const0>\,
      RXDFETAP3OVRDEN => \<const0>\,
      RXDFETAP4HOLD => \<const0>\,
      RXDFETAP4OVRDEN => \<const0>\,
      RXDFETAP5HOLD => \<const0>\,
      RXDFETAP5OVRDEN => \<const0>\,
      RXDFEUTHOLD => \<const0>\,
      RXDFEUTOVRDEN => \<const0>\,
      RXDFEVPHOLD => \<const0>\,
      RXDFEVPOVRDEN => \<const0>\,
      RXDFEVSEN => \<const0>\,
      RXDFEXYDEN => \<const1>\,
      RXDFEXYDHOLD => \<const0>\,
      RXDFEXYDOVRDEN => \<const0>\,
      RXDISPERR(7 downto 4) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 4),
      RXDISPERR(3 downto 2) => rx_disp_err_i(3 downto 2),
      RXDISPERR(1 downto 0) => \^rxdisperr\(1 downto 0),
      RXDLYBYPASS => \<const1>\,
      RXDLYEN => \<const0>\,
      RXDLYOVRDEN => \<const0>\,
      RXDLYSRESET => \<const0>\,
      RXDLYSRESETDONE => NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED,
      RXELECIDLE => NLW_gtxe2_i_RXELECIDLE_UNCONNECTED,
      RXELECIDLEMODE(1) => \<const1>\,
      RXELECIDLEMODE(0) => \<const1>\,
      RXGEARBOXSLIP => \<const0>\,
      RXHEADER(2 downto 0) => NLW_gtxe2_i_RXHEADER_UNCONNECTED(2 downto 0),
      RXHEADERVALID => NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED,
      RXLPMEN => \<const0>\,
      RXLPMHFHOLD => \<const0>\,
      RXLPMHFOVRDEN => \<const0>\,
      RXLPMLFHOLD => \<const0>\,
      RXLPMLFKLOVRDEN => \<const0>\,
      RXMCOMMAALIGNEN => ena_comma_align_i,
      RXMONITOROUT(6) => n_170_gtxe2_i,
      RXMONITOROUT(5) => n_171_gtxe2_i,
      RXMONITOROUT(4) => n_172_gtxe2_i,
      RXMONITOROUT(3) => n_173_gtxe2_i,
      RXMONITOROUT(2) => n_174_gtxe2_i,
      RXMONITOROUT(1) => n_175_gtxe2_i,
      RXMONITOROUT(0) => n_176_gtxe2_i,
      RXMONITORSEL(1) => \<const0>\,
      RXMONITORSEL(0) => \<const0>\,
      RXNOTINTABLE(7 downto 4) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 4),
      RXNOTINTABLE(3 downto 0) => rx_not_in_table_i(3 downto 0),
      RXOOBRESET => \<const0>\,
      RXOSHOLD => \<const0>\,
      RXOSOVRDEN => \<const0>\,
      RXOUTCLK => n_23_gtxe2_i,
      RXOUTCLKFABRIC => NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2) => \<const0>\,
      RXOUTCLKSEL(1) => \<const1>\,
      RXOUTCLKSEL(0) => \<const0>\,
      RXPCOMMAALIGNEN => ena_comma_align_i,
      RXPCSRESET => \<const0>\,
      RXPD(1) => power_down,
      RXPD(0) => power_down,
      RXPHALIGN => \<const0>\,
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => \<const0>\,
      RXPHDLYPD => \<const0>\,
      RXPHDLYRESET => \<const0>\,
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => \<const0>\,
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => \<const0>\,
      RXPOLARITY => rx_polarity_i,
      RXPRBSCNTRESET => \<const0>\,
      RXPRBSERR => n_27_gtxe2_i,
      RXPRBSSEL(2) => \<const0>\,
      RXPRBSSEL(1) => \<const0>\,
      RXPRBSSEL(0) => \<const0>\,
      RXQPIEN => \<const0>\,
      RXQPISENN => NLW_gtxe2_i_RXQPISENN_UNCONNECTED,
      RXQPISENP => NLW_gtxe2_i_RXQPISENP_UNCONNECTED,
      RXRATE(2) => \<const0>\,
      RXRATE(1) => \<const0>\,
      RXRATE(0) => \<const0>\,
      RXRATEDONE => NLW_gtxe2_i_RXRATEDONE_UNCONNECTED,
      RXRESETDONE => O1,
      RXSLIDE => \<const0>\,
      RXSTARTOFSEQ => NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED,
      RXSTATUS(2 downto 0) => NLW_gtxe2_i_RXSTATUS_UNCONNECTED(2 downto 0),
      RXSYSCLKSEL(1) => \<const0>\,
      RXSYSCLKSEL(0) => \<const0>\,
      RXUSERRDY => gt_rxuserrdy_i,
      RXUSRCLK => sync_clk,
      RXUSRCLK2 => user_clk,
      RXVALID => NLW_gtxe2_i_RXVALID_UNCONNECTED,
      SETERRSTATUS => \<const0>\,
      TSTIN(19) => \<const1>\,
      TSTIN(18) => \<const1>\,
      TSTIN(17) => \<const1>\,
      TSTIN(16) => \<const1>\,
      TSTIN(15) => \<const1>\,
      TSTIN(14) => \<const1>\,
      TSTIN(13) => \<const1>\,
      TSTIN(12) => \<const1>\,
      TSTIN(11) => \<const1>\,
      TSTIN(10) => \<const1>\,
      TSTIN(9) => \<const1>\,
      TSTIN(8) => \<const1>\,
      TSTIN(7) => \<const1>\,
      TSTIN(6) => \<const1>\,
      TSTIN(5) => \<const1>\,
      TSTIN(4) => \<const1>\,
      TSTIN(3) => \<const1>\,
      TSTIN(2) => \<const1>\,
      TSTIN(1) => \<const1>\,
      TSTIN(0) => \<const1>\,
      TSTOUT(9 downto 0) => NLW_gtxe2_i_TSTOUT_UNCONNECTED(9 downto 0),
      TX8B10BBYPASS(7) => \<const0>\,
      TX8B10BBYPASS(6) => \<const0>\,
      TX8B10BBYPASS(5) => \<const0>\,
      TX8B10BBYPASS(4) => \<const0>\,
      TX8B10BBYPASS(3) => \<const0>\,
      TX8B10BBYPASS(2) => \<const0>\,
      TX8B10BBYPASS(1) => \<const0>\,
      TX8B10BBYPASS(0) => \<const0>\,
      TX8B10BEN => \<const1>\,
      TXBUFDIFFCTRL(2) => \<const1>\,
      TXBUFDIFFCTRL(1) => \<const0>\,
      TXBUFDIFFCTRL(0) => \<const0>\,
      TXBUFSTATUS(1) => tx_buf_err_i,
      TXBUFSTATUS(0) => n_81_gtxe2_i,
      TXCHARDISPMODE(7) => \<const0>\,
      TXCHARDISPMODE(6) => \<const0>\,
      TXCHARDISPMODE(5) => \<const0>\,
      TXCHARDISPMODE(4) => \<const0>\,
      TXCHARDISPMODE(3) => \<const0>\,
      TXCHARDISPMODE(2) => \<const0>\,
      TXCHARDISPMODE(1) => \<const0>\,
      TXCHARDISPMODE(0) => \<const0>\,
      TXCHARDISPVAL(7) => \<const0>\,
      TXCHARDISPVAL(6) => \<const0>\,
      TXCHARDISPVAL(5) => \<const0>\,
      TXCHARDISPVAL(4) => \<const0>\,
      TXCHARDISPVAL(3) => \<const0>\,
      TXCHARDISPVAL(2) => \<const0>\,
      TXCHARDISPVAL(1) => \<const0>\,
      TXCHARDISPVAL(0) => \<const0>\,
      TXCHARISK(7) => \<const0>\,
      TXCHARISK(6) => \<const0>\,
      TXCHARISK(5) => \<const0>\,
      TXCHARISK(4) => \<const0>\,
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXCOMFINISH => NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED,
      TXCOMINIT => \<const0>\,
      TXCOMSAS => \<const0>\,
      TXCOMWAKE => \<const0>\,
      TXDATA(63) => \<const0>\,
      TXDATA(62) => \<const0>\,
      TXDATA(61) => \<const0>\,
      TXDATA(60) => \<const0>\,
      TXDATA(59) => \<const0>\,
      TXDATA(58) => \<const0>\,
      TXDATA(57) => \<const0>\,
      TXDATA(56) => \<const0>\,
      TXDATA(55) => \<const0>\,
      TXDATA(54) => \<const0>\,
      TXDATA(53) => \<const0>\,
      TXDATA(52) => \<const0>\,
      TXDATA(51) => \<const0>\,
      TXDATA(50) => \<const0>\,
      TXDATA(49) => \<const0>\,
      TXDATA(48) => \<const0>\,
      TXDATA(47) => \<const0>\,
      TXDATA(46) => \<const0>\,
      TXDATA(45) => \<const0>\,
      TXDATA(44) => \<const0>\,
      TXDATA(43) => \<const0>\,
      TXDATA(42) => \<const0>\,
      TXDATA(41) => \<const0>\,
      TXDATA(40) => \<const0>\,
      TXDATA(39) => \<const0>\,
      TXDATA(38) => \<const0>\,
      TXDATA(37) => \<const0>\,
      TXDATA(36) => \<const0>\,
      TXDATA(35) => \<const0>\,
      TXDATA(34) => \<const0>\,
      TXDATA(33) => \<const0>\,
      TXDATA(32) => \<const0>\,
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      TXDEEMPH => \<const0>\,
      TXDETECTRX => \<const0>\,
      TXDIFFCTRL(3) => \<const1>\,
      TXDIFFCTRL(2) => \<const0>\,
      TXDIFFCTRL(1) => \<const0>\,
      TXDIFFCTRL(0) => \<const0>\,
      TXDIFFPD => \<const0>\,
      TXDLYBYPASS => \<const1>\,
      TXDLYEN => \<const0>\,
      TXDLYHOLD => \<const0>\,
      TXDLYOVRDEN => \<const0>\,
      TXDLYSRESET => \<const0>\,
      TXDLYSRESETDONE => NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => \<const0>\,
      TXELECIDLE => power_down,
      TXGEARBOXREADY => NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED,
      TXHEADER(2) => \<const0>\,
      TXHEADER(1) => \<const0>\,
      TXHEADER(0) => \<const0>\,
      TXINHIBIT => \<const0>\,
      TXMAINCURSOR(6) => \<const0>\,
      TXMAINCURSOR(5) => \<const0>\,
      TXMAINCURSOR(4) => \<const0>\,
      TXMAINCURSOR(3) => \<const0>\,
      TXMAINCURSOR(2) => \<const0>\,
      TXMAINCURSOR(1) => \<const0>\,
      TXMAINCURSOR(0) => \<const0>\,
      TXMARGIN(2) => \<const0>\,
      TXMARGIN(1) => \<const0>\,
      TXMARGIN(0) => \<const0>\,
      TXOUTCLK => tx_out_clk,
      TXOUTCLKFABRIC => n_38_gtxe2_i,
      TXOUTCLKPCS => n_39_gtxe2_i,
      TXOUTCLKSEL(2) => \<const0>\,
      TXOUTCLKSEL(1) => \<const1>\,
      TXOUTCLKSEL(0) => \<const0>\,
      TXPCSRESET => \<const0>\,
      TXPD(1) => power_down,
      TXPD(0) => power_down,
      TXPDELECIDLEMODE => \<const0>\,
      TXPHALIGN => \<const0>\,
      TXPHALIGNDONE => NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED,
      TXPHALIGNEN => \<const0>\,
      TXPHDLYPD => \<const0>\,
      TXPHDLYRESET => \<const0>\,
      TXPHDLYTSTCLK => \<const0>\,
      TXPHINIT => \<const0>\,
      TXPHINITDONE => NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED,
      TXPHOVRDEN => \<const0>\,
      TXPISOPD => \<const0>\,
      TXPMARESET => \<const0>\,
      TXPOLARITY => \<const0>\,
      TXPOSTCURSOR(4) => \<const0>\,
      TXPOSTCURSOR(3) => \<const0>\,
      TXPOSTCURSOR(2) => \<const0>\,
      TXPOSTCURSOR(1) => \<const0>\,
      TXPOSTCURSOR(0) => \<const0>\,
      TXPOSTCURSORINV => \<const0>\,
      TXPRBSFORCEERR => \<const0>\,
      TXPRBSSEL(2) => \<const0>\,
      TXPRBSSEL(1) => \<const0>\,
      TXPRBSSEL(0) => \<const0>\,
      TXPRECURSOR(4) => \<const0>\,
      TXPRECURSOR(3) => \<const0>\,
      TXPRECURSOR(2) => \<const0>\,
      TXPRECURSOR(1) => \<const0>\,
      TXPRECURSOR(0) => \<const0>\,
      TXPRECURSORINV => \<const0>\,
      TXQPIBIASEN => \<const0>\,
      TXQPISENN => NLW_gtxe2_i_TXQPISENN_UNCONNECTED,
      TXQPISENP => NLW_gtxe2_i_TXQPISENP_UNCONNECTED,
      TXQPISTRONGPDOWN => \<const0>\,
      TXQPIWEAKPUP => \<const0>\,
      TXRATE(2) => \<const0>\,
      TXRATE(1) => \<const0>\,
      TXRATE(0) => \<const0>\,
      TXRATEDONE => NLW_gtxe2_i_TXRATEDONE_UNCONNECTED,
      TXRESETDONE => O2,
      TXSEQUENCE(6) => \<const0>\,
      TXSEQUENCE(5) => \<const0>\,
      TXSEQUENCE(4) => \<const0>\,
      TXSEQUENCE(3) => \<const0>\,
      TXSEQUENCE(2) => \<const0>\,
      TXSEQUENCE(1) => \<const0>\,
      TXSEQUENCE(0) => \<const0>\,
      TXSTARTSEQ => \<const0>\,
      TXSWING => \<const0>\,
      TXSYSCLKSEL(1) => \<const0>\,
      TXSYSCLKSEL(0) => \<const0>\,
      TXUSERRDY => gt_txuserrdy_i,
      TXUSRCLK => sync_clk,
      TXUSRCLK2 => user_clk
    );
hard_err_gt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => rx_buf_err_i,
      I1 => tx_buf_err_i,
      I2 => \^rx_realign_i\,
      O => hard_err_gt0
    );
reset_count_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => rx_disp_err_i(2),
      I1 => rx_not_in_table_i(3),
      I2 => rx_not_in_table_i(1),
      I3 => rx_not_in_table_i(2),
      I4 => rx_disp_err_i(3),
      I5 => rx_not_in_table_i(0),
      O => O98
    );
\soft_err_r[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^rxdisperr\(0),
      I1 => rx_not_in_table_i(0),
      O => O94
    );
\soft_err_r[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^rxdisperr\(1),
      I1 => rx_not_in_table_i(1),
      O => O95
    );
\soft_err_r[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rx_disp_err_i(2),
      I1 => rx_not_in_table_i(2),
      O => O96
    );
\soft_err_r[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => rx_not_in_table_i(3),
      I1 => rx_disp_err_i(3),
      O => O97
    );
\word_aligned_control_bits_r[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxcharisk\(1),
      I1 => Q(0),
      I2 => I1,
      I3 => \^rxcharisk\(0),
      I4 => I2,
      I5 => \^rxcharisk\(2),
      O => O91
    );
\word_aligned_control_bits_r[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxcharisk\(2),
      I1 => \^rxcharisk\(0),
      I2 => I1,
      I3 => \^rxcharisk\(1),
      I4 => I2,
      I5 => \^rxcharisk\(3),
      O => O90
    );
\word_aligned_data_r[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(15),
      I1 => \^rxdata\(7),
      I2 => I2,
      I3 => I3(7),
      I4 => I1,
      I5 => \^rxdata\(23),
      O => O92(7)
    );
\word_aligned_data_r[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(14),
      I1 => \^rxdata\(6),
      I2 => I2,
      I3 => I3(6),
      I4 => I1,
      I5 => \^rxdata\(22),
      O => O92(6)
    );
\word_aligned_data_r[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(13),
      I1 => \^rxdata\(5),
      I2 => I2,
      I3 => I3(5),
      I4 => I1,
      I5 => \^rxdata\(21),
      O => O92(5)
    );
\word_aligned_data_r[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(12),
      I1 => \^rxdata\(4),
      I2 => I2,
      I3 => I3(4),
      I4 => I1,
      I5 => \^rxdata\(20),
      O => O92(4)
    );
\word_aligned_data_r[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(11),
      I1 => \^rxdata\(3),
      I2 => I2,
      I3 => I3(3),
      I4 => I1,
      I5 => \^rxdata\(19),
      O => O92(3)
    );
\word_aligned_data_r[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(10),
      I1 => \^rxdata\(2),
      I2 => I2,
      I3 => I3(2),
      I4 => I1,
      I5 => \^rxdata\(18),
      O => O92(2)
    );
\word_aligned_data_r[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(9),
      I1 => \^rxdata\(1),
      I2 => I2,
      I3 => I3(1),
      I4 => I1,
      I5 => \^rxdata\(17),
      O => O92(1)
    );
\word_aligned_data_r[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(8),
      I1 => \^rxdata\(0),
      I2 => I2,
      I3 => I3(0),
      I4 => I1,
      I5 => \^rxdata\(16),
      O => O92(0)
    );
\word_aligned_data_r[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(23),
      I1 => \^rxdata\(15),
      I2 => I2,
      I3 => \^rxdata\(7),
      I4 => I1,
      I5 => \^rxdata\(31),
      O => O93(7)
    );
\word_aligned_data_r[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(22),
      I1 => \^rxdata\(14),
      I2 => I2,
      I3 => \^rxdata\(6),
      I4 => I1,
      I5 => \^rxdata\(30),
      O => O93(6)
    );
\word_aligned_data_r[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(21),
      I1 => \^rxdata\(13),
      I2 => I2,
      I3 => \^rxdata\(5),
      I4 => I1,
      I5 => \^rxdata\(29),
      O => O93(5)
    );
\word_aligned_data_r[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(20),
      I1 => \^rxdata\(12),
      I2 => I2,
      I3 => \^rxdata\(4),
      I4 => I1,
      I5 => \^rxdata\(28),
      O => O93(4)
    );
\word_aligned_data_r[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(19),
      I1 => \^rxdata\(11),
      I2 => I2,
      I3 => \^rxdata\(3),
      I4 => I1,
      I5 => \^rxdata\(27),
      O => O93(3)
    );
\word_aligned_data_r[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(18),
      I1 => \^rxdata\(10),
      I2 => I2,
      I3 => \^rxdata\(2),
      I4 => I1,
      I5 => \^rxdata\(26),
      O => O93(2)
    );
\word_aligned_data_r[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(17),
      I1 => \^rxdata\(9),
      I2 => I2,
      I3 => \^rxdata\(1),
      I4 => I1,
      I5 => \^rxdata\(25),
      O => O93(1)
    );
\word_aligned_data_r[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
    port map (
      I0 => \^rxdata\(16),
      I1 => \^rxdata\(8),
      I2 => I2,
      I3 => \^rxdata\(0),
      I4 => I1,
      I5 => \^rxdata\(24),
      O => O93(0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_GLOBAL_LOGIC is
  port (
    reset_lanes_i : out STD_LOGIC;
    I10 : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gen_a_i : out STD_LOGIC;
    I12 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    I11 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wait_for_lane_up_r : out STD_LOGIC;
    O1 : out STD_LOGIC;
    start_rx_i : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    reset_channel_i : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    I5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    reset_i : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    got_v_i : in STD_LOGIC;
    SS : in STD_LOGIC_VECTOR ( 0 to 0 );
    sys_reset_out : in STD_LOGIC;
    lane_up : in STD_LOGIC;
    hard_err_i : in STD_LOGIC;
    in_frame_r : in STD_LOGIC;
    in_frame_c : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    power_down : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end aurora_8b10b_0aurora_8b10b_0_GLOBAL_LOGIC;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_GLOBAL_LOGIC is
  signal gen_ver_i : STD_LOGIC;
  signal txver_count_r0 : STD_LOGIC;
begin
channel_err_detect_i: entity work.aurora_8b10b_0aurora_8b10b_0_CHANNEL_ERR_DETECT
    port map (
      D(1 downto 0) => D(1 downto 0),
      hard_err => hard_err,
      hard_err_i => hard_err_i,
      lane_up => lane_up,
      power_down => power_down,
      reset_channel_i => reset_channel_i,
      soft_err => soft_err,
      user_clk => user_clk
    );
channel_init_sm_i: entity work.aurora_8b10b_0aurora_8b10b_0_CHANNEL_INIT_SM
    port map (
      I1 => I1,
      I5(1 downto 0) => I5(1 downto 0),
      O1 => O1,
      O2 => start_rx_i,
      SR(0) => SR(0),
      SS(0) => SS(0),
      gen_ver_i => gen_ver_i,
      got_v_i => got_v_i,
      in_frame_c(0) => in_frame_c(0),
      in_frame_r => in_frame_r,
      reset_i => reset_i,
      reset_lanes_i => reset_lanes_i,
      sys_reset_out => sys_reset_out,
      txver_count_r0 => txver_count_r0,
      user_clk => user_clk,
      wait_for_lane_up_r => wait_for_lane_up_r
    );
idle_and_ver_gen_i: entity work.aurora_8b10b_0aurora_8b10b_0_IDLE_AND_VER_GEN
    port map (
      I10(2 downto 0) => I10(2 downto 0),
      I11(3 downto 0) => I11(3 downto 0),
      I12(3 downto 0) => I12(3 downto 0),
      gen_a_i => gen_a_i,
      gen_ver_i => gen_ver_i,
      sys_reset_out => sys_reset_out,
      txver_count_r0 => txver_count_r0,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_RESET_LOGIC is
  port (
    s_out_d1_cdc_to : out STD_LOGIC;
    s_out_d2 : out STD_LOGIC;
    s_out_d3 : out STD_LOGIC;
    s_out_d4 : out STD_LOGIC;
    s_out_d5 : out STD_LOGIC;
    s_out_d6 : out STD_LOGIC;
    s_out_d7 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_0 : out STD_LOGIC;
    s_out_d2_1 : out STD_LOGIC;
    s_out_d3_2 : out STD_LOGIC;
    s_out_d4_3 : out STD_LOGIC;
    s_out_d5_4 : out STD_LOGIC;
    s_out_d6_5 : out STD_LOGIC;
    s_out_d7_6 : out STD_LOGIC;
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O9 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O10 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O11 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    O12 : out STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    tx_resetdone_out : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    link_reset_out : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    reset_channel_i : in STD_LOGIC;
    reset : in STD_LOGIC;
    wait_for_lane_up_r : in STD_LOGIC;
    rx_resetdone_out : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_RESET_LOGIC;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_RESET_LOGIC is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal gt_rxresetdone_r : STD_LOGIC;
  signal gt_rxresetdone_r2 : STD_LOGIC;
  signal gt_rxresetdone_r3 : STD_LOGIC;
  signal gt_txresetdone_r : STD_LOGIC;
  signal gt_txresetdone_r2 : STD_LOGIC;
  signal gt_txresetdone_r3 : STD_LOGIC;
  signal link_reset_comb_r : STD_LOGIC;
  signal n_0_gt_rxresetdone_r2_i_1 : STD_LOGIC;
  signal n_0_gt_txresetdone_r2_i_1 : STD_LOGIC;
  signal tx_resetdone_sync : STD_LOGIC;
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
gt_rxresetdone_r2_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rx_resetdone_out,
      O => n_0_gt_rxresetdone_r2_i_1
    );
gt_rxresetdone_r2_reg: unisim.vcomponents.FDCE
    port map (
      C => user_clk,
      CE => \<const1>\,
      CLR => n_0_gt_rxresetdone_r2_i_1,
      D => gt_rxresetdone_r,
      Q => gt_rxresetdone_r2
    );
gt_rxresetdone_r3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => gt_rxresetdone_r2,
      Q => gt_rxresetdone_r3,
      R => \<const0>\
    );
gt_rxresetdone_r_reg: unisim.vcomponents.FDCE
    port map (
      C => user_clk,
      CE => \<const1>\,
      CLR => n_0_gt_rxresetdone_r2_i_1,
      D => \<const1>\,
      Q => gt_rxresetdone_r
    );
gt_txresetdone_r2_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => tx_resetdone_sync,
      O => n_0_gt_txresetdone_r2_i_1
    );
gt_txresetdone_r2_reg: unisim.vcomponents.FDCE
    port map (
      C => user_clk,
      CE => \<const1>\,
      CLR => n_0_gt_txresetdone_r2_i_1,
      D => gt_txresetdone_r,
      Q => gt_txresetdone_r2
    );
gt_txresetdone_r3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => gt_txresetdone_r2,
      Q => gt_txresetdone_r3,
      R => \<const0>\
    );
gt_txresetdone_r_reg: unisim.vcomponents.FDCE
    port map (
      C => user_clk,
      CE => \<const1>\,
      CLR => n_0_gt_txresetdone_r2_i_1,
      D => \<const1>\,
      Q => gt_txresetdone_r
    );
link_reset_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_16
    port map (
      O10(1 downto 0) => O10(1 downto 0),
      O11(1 downto 0) => O11(1 downto 0),
      O12 => O12,
      O6(1 downto 0) => O6(1 downto 0),
      O7(1 downto 0) => O7(1 downto 0),
      O8(1 downto 0) => O8(1 downto 0),
      O9(1 downto 0) => O9(1 downto 0),
      SS(0) => SS(0),
      gt_rxresetdone_r3 => gt_rxresetdone_r3,
      gt_txresetdone_r3 => gt_txresetdone_r3,
      link_reset_comb_r => link_reset_comb_r,
      reset => reset,
      reset_channel_i => reset_channel_i,
      s_out_d1_cdc_to_0 => s_out_d1_cdc_to_0,
      s_out_d2_1 => s_out_d2_1,
      s_out_d3_2 => s_out_d3_2,
      s_out_d4_3 => s_out_d4_3,
      s_out_d5_4 => s_out_d5_4,
      s_out_d6_5 => s_out_d6_5,
      s_out_d7_6 => s_out_d7_6,
      sys_reset_out => sys_reset_out,
      user_clk => user_clk,
      wait_for_lane_up_r => wait_for_lane_up_r
    );
link_reset_comb_r_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => link_reset_out,
      Q => link_reset_comb_r,
      R => \<const0>\
    );
tx_resetdone_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_15
    port map (
      O1(1 downto 0) => O1(1 downto 0),
      O2(1 downto 0) => O2(1 downto 0),
      O3(1 downto 0) => O3(1 downto 0),
      O4(1 downto 0) => O4(1 downto 0),
      O5(1 downto 0) => O5(1 downto 0),
      \out\(1 downto 0) => \out\(1 downto 0),
      s_out_d1_cdc_to => s_out_d1_cdc_to,
      s_out_d2 => s_out_d2,
      s_out_d3 => s_out_d3,
      s_out_d4 => s_out_d4,
      s_out_d5 => s_out_d5,
      s_out_d6 => s_out_d6,
      s_out_d7 => s_out_d7,
      tx_resetdone_out => tx_resetdone_out,
      tx_resetdone_sync => tx_resetdone_sync,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_RX_LL_PDU_DATAPATH is
  port (
    in_frame_c : out STD_LOGIC_VECTOR ( 0 to 1 );
    in_frame_r : out STD_LOGIC;
    frame_err : out STD_LOGIC;
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rx_tvalid : out STD_LOGIC;
    m_axi_rx_tlast : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 31 );
    I1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC;
    S11_in : in STD_LOGIC;
    S1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    I3 : in STD_LOGIC;
    O19 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O18 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O17 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O16 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    start_rx_i : in STD_LOGIC;
    I4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I6 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end aurora_8b10b_0aurora_8b10b_0_RX_LL_PDU_DATAPATH;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_RX_LL_PDU_DATAPATH is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal EOF_N : STD_LOGIC;
  signal FRAME_ERR_RESULT : STD_LOGIC;
  signal FRAME_ERR_RESULT0 : STD_LOGIC;
  signal MUX_SELECT : STD_LOGIC_VECTOR ( 2 to 2 );
  signal OUTPUT_SELECT : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SRC_RDY_N : STD_LOGIC;
  signal STORAGE_DATA : STD_LOGIC_VECTOR ( 16 to 31 );
  signal STORAGE_SELECT : STD_LOGIC_VECTOR ( 4 to 9 );
  signal ce_command_c : STD_LOGIC_VECTOR ( 0 to 1 );
  signal count_c : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \^m_axi_rx_tkeep\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal muxed_data_c : STD_LOGIC_VECTOR ( 16 to 31 );
  signal \n_0_stage_1_data_r_reg[0]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[10]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[11]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[12]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[13]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[14]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[15]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[16]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[17]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[18]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[19]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[1]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[20]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[21]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[22]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[23]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[24]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[25]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[26]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[27]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[28]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[29]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[2]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[30]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[31]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[3]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[4]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[5]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[6]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[7]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[8]_srl3\ : STD_LOGIC;
  signal \n_0_stage_1_data_r_reg[9]_srl3\ : STD_LOGIC;
  signal n_0_stage_2_frame_err_r_reg : STD_LOGIC;
  signal n_0_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_0_stage_3_storage_count_control_i : STD_LOGIC;
  signal n_10_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_11_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_12_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_13_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_14_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_15_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_16_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_17_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_18_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_19_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_1_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_1_stage_3_storage_ce_control_i : STD_LOGIC;
  signal n_20_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_21_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_22_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_23_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_24_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_25_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_26_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_27_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_28_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_29_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_2_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_30_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_31_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_32_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_33_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_34_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_35_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_36_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_37_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_38_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_39_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_3_stage_1_rx_ll_deframer_i : STD_LOGIC;
  signal n_3_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_3_stage_3_storage_count_control_i : STD_LOGIC;
  signal n_40_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_41_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_42_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_43_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_44_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_45_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_46_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_47_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_4_stage_1_rx_ll_deframer_i : STD_LOGIC;
  signal n_4_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_5_sideband_output_i : STD_LOGIC;
  signal n_5_stage_1_rx_ll_deframer_i : STD_LOGIC;
  signal n_5_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_5_stage_3_storage_count_control_i : STD_LOGIC;
  signal n_6_sideband_output_i : STD_LOGIC;
  signal n_6_stage_1_rx_ll_deframer_i : STD_LOGIC;
  signal n_6_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_6_stage_3_storage_count_control_i : STD_LOGIC;
  signal n_7_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_7_stage_3_storage_count_control_i : STD_LOGIC;
  signal n_8_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal n_9_stage_1_rx_ll_deframer_i : STD_LOGIC;
  signal n_9_stage_3_left_align_datapath_mux_i : STD_LOGIC;
  signal output_data_c : STD_LOGIC_VECTOR ( 0 to 15 );
  signal overwrite_c : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal rx_eof : STD_LOGIC;
  signal rx_rem_int : STD_LOGIC_VECTOR ( 1 to 1 );
  signal rx_src_rdy : STD_LOGIC;
  signal stage_1_ecp_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal stage_1_pad_r : STD_LOGIC;
  signal stage_1_scp_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal stage_2_data_r : STD_LOGIC_VECTOR ( 0 to 15 );
  signal stage_2_data_v_count_r : STD_LOGIC_VECTOR ( 0 to 1 );
  signal stage_2_end_after_start_r : STD_LOGIC;
  signal stage_2_end_before_start_r : STD_LOGIC;
  signal stage_2_pad_r : STD_LOGIC;
  signal stage_2_start_with_data_r : STD_LOGIC;
  signal stage_3_end_storage_r : STD_LOGIC;
  signal stage_3_storage_count_r : STD_LOGIC_VECTOR ( 0 to 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_axi_rx_tkeep[1]_INST_0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \m_axi_rx_tkeep[3]_INST_0\ : label is "soft_lutpair124";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \stage_1_data_r_reg[0]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name : string;
  attribute srl_name of \stage_1_data_r_reg[0]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[0]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[10]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[10]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[10]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[11]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[11]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[11]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[12]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[12]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[12]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[13]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[13]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[13]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[14]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[14]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[14]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[15]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[15]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[15]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[16]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[16]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[16]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[17]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[17]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[17]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[18]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[18]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[18]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[19]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[19]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[19]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[1]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[1]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[1]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[20]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[20]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[20]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[21]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[21]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[21]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[22]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[22]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[22]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[23]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[23]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[23]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[24]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[24]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[24]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[25]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[25]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[25]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[26]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[26]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[26]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[27]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[27]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[27]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[28]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[28]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[28]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[29]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[29]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[29]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[2]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[2]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[2]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[30]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[30]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[30]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[31]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[31]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[31]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[3]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[3]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[3]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[4]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[4]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[4]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[5]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[5]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[5]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[6]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[6]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[6]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[7]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[7]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[7]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[8]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[8]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[8]_srl3 ";
  attribute srl_bus_name of \stage_1_data_r_reg[9]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg ";
  attribute srl_name of \stage_1_data_r_reg[9]_srl3\ : label is "inst/\aurora_8b10b_0_rx_ll_i/rx_ll_pdu_datapath_i/stage_1_data_r_reg[9]_srl3 ";
begin
  m_axi_rx_tkeep(2 downto 0) <= \^m_axi_rx_tkeep\(2 downto 0);
FRAME_ERR_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => FRAME_ERR_RESULT,
      Q => frame_err,
      R => SR(0)
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
RX_EOF_N_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => EOF_N,
      Q => rx_eof,
      R => \<const0>\
    );
\RX_REM_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_5_sideband_output_i,
      Q => \^m_axi_rx_tkeep\(1),
      R => \<const0>\
    );
\RX_REM_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_6_sideband_output_i,
      Q => rx_rem_int(1),
      R => \<const0>\
    );
RX_SRC_RDY_N_reg: unisim.vcomponents.FDSE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => SRC_RDY_N,
      Q => rx_src_rdy,
      S => SR(0)
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\m_axi_rx_tkeep[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^m_axi_rx_tkeep\(1),
      I1 => rx_rem_int(1),
      O => \^m_axi_rx_tkeep\(2)
    );
\m_axi_rx_tkeep[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => rx_rem_int(1),
      I1 => \^m_axi_rx_tkeep\(1),
      O => \^m_axi_rx_tkeep\(0)
    );
m_axi_rx_tlast_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rx_eof,
      O => m_axi_rx_tlast
    );
m_axi_rx_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => rx_src_rdy,
      O => m_axi_rx_tvalid
    );
output_mux_i: entity work.aurora_8b10b_0aurora_8b10b_0_OUTPUT_MUX
    port map (
      D(15) => output_data_c(0),
      D(14) => output_data_c(1),
      D(13) => output_data_c(2),
      D(12) => output_data_c(3),
      D(11) => output_data_c(4),
      D(10) => output_data_c(5),
      D(9) => output_data_c(6),
      D(8) => output_data_c(7),
      D(7) => output_data_c(8),
      D(6) => output_data_c(9),
      D(5) => output_data_c(10),
      D(4) => output_data_c(11),
      D(3) => output_data_c(12),
      D(2) => output_data_c(13),
      D(1) => output_data_c(14),
      D(0) => output_data_c(15),
      I1 => n_0_stage_3_left_align_datapath_mux_i,
      I10 => n_9_stage_3_left_align_datapath_mux_i,
      I11 => n_10_stage_3_left_align_datapath_mux_i,
      I12 => n_11_stage_3_left_align_datapath_mux_i,
      I13 => n_12_stage_3_left_align_datapath_mux_i,
      I14 => n_13_stage_3_left_align_datapath_mux_i,
      I15 => n_14_stage_3_left_align_datapath_mux_i,
      I16 => n_15_stage_3_left_align_datapath_mux_i,
      I2 => n_1_stage_3_left_align_datapath_mux_i,
      I3 => n_2_stage_3_left_align_datapath_mux_i,
      I4 => n_3_stage_3_left_align_datapath_mux_i,
      I5 => n_4_stage_3_left_align_datapath_mux_i,
      I6 => n_5_stage_3_left_align_datapath_mux_i,
      I7 => n_6_stage_3_left_align_datapath_mux_i,
      I8 => n_7_stage_3_left_align_datapath_mux_i,
      I9 => n_8_stage_3_left_align_datapath_mux_i,
      m_axi_rx_tdata(0 to 31) => m_axi_rx_tdata(0 to 31),
      user_clk => user_clk
    );
sideband_output_i: entity work.aurora_8b10b_0aurora_8b10b_0_SIDEBAND_OUTPUT
    port map (
      EOF_N => EOF_N,
      FRAME_ERR_RESULT => FRAME_ERR_RESULT,
      FRAME_ERR_RESULT0 => FRAME_ERR_RESULT0,
      I1 => n_5_stage_3_storage_count_control_i,
      I2 => n_7_stage_3_storage_count_control_i,
      I3 => n_6_stage_3_storage_count_control_i,
      I4 => n_0_stage_3_storage_count_control_i,
      I5 => n_0_stage_2_frame_err_r_reg,
      O1(1) => n_5_sideband_output_i,
      O1(0) => n_6_sideband_output_i,
      Q(0) => stage_2_data_v_count_r(1),
      SRC_RDY_N => SRC_RDY_N,
      overwrite_c => overwrite_c,
      stage_2_end_before_start_r => stage_2_end_before_start_r,
      stage_2_pad_r => stage_2_pad_r,
      stage_2_start_with_data_r => stage_2_start_with_data_r,
      stage_3_end_storage_r => stage_3_end_storage_r,
      stage_3_storage_count_r(0) => stage_3_storage_count_r(1),
      start_rx_i => start_rx_i,
      user_clk => user_clk
    );
\stage_1_data_r_reg[0]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O19(7),
      Q => \n_0_stage_1_data_r_reg[0]_srl3\
    );
\stage_1_data_r_reg[10]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O18(5),
      Q => \n_0_stage_1_data_r_reg[10]_srl3\
    );
\stage_1_data_r_reg[11]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O18(4),
      Q => \n_0_stage_1_data_r_reg[11]_srl3\
    );
\stage_1_data_r_reg[12]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O18(3),
      Q => \n_0_stage_1_data_r_reg[12]_srl3\
    );
\stage_1_data_r_reg[13]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O18(2),
      Q => \n_0_stage_1_data_r_reg[13]_srl3\
    );
\stage_1_data_r_reg[14]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O18(1),
      Q => \n_0_stage_1_data_r_reg[14]_srl3\
    );
\stage_1_data_r_reg[15]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O18(0),
      Q => \n_0_stage_1_data_r_reg[15]_srl3\
    );
\stage_1_data_r_reg[16]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O17(7),
      Q => \n_0_stage_1_data_r_reg[16]_srl3\
    );
\stage_1_data_r_reg[17]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O17(6),
      Q => \n_0_stage_1_data_r_reg[17]_srl3\
    );
\stage_1_data_r_reg[18]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O17(5),
      Q => \n_0_stage_1_data_r_reg[18]_srl3\
    );
\stage_1_data_r_reg[19]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O17(4),
      Q => \n_0_stage_1_data_r_reg[19]_srl3\
    );
\stage_1_data_r_reg[1]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O19(6),
      Q => \n_0_stage_1_data_r_reg[1]_srl3\
    );
\stage_1_data_r_reg[20]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O17(3),
      Q => \n_0_stage_1_data_r_reg[20]_srl3\
    );
\stage_1_data_r_reg[21]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O17(2),
      Q => \n_0_stage_1_data_r_reg[21]_srl3\
    );
\stage_1_data_r_reg[22]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O17(1),
      Q => \n_0_stage_1_data_r_reg[22]_srl3\
    );
\stage_1_data_r_reg[23]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O17(0),
      Q => \n_0_stage_1_data_r_reg[23]_srl3\
    );
\stage_1_data_r_reg[24]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O16(7),
      Q => \n_0_stage_1_data_r_reg[24]_srl3\
    );
\stage_1_data_r_reg[25]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O16(6),
      Q => \n_0_stage_1_data_r_reg[25]_srl3\
    );
\stage_1_data_r_reg[26]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O16(5),
      Q => \n_0_stage_1_data_r_reg[26]_srl3\
    );
\stage_1_data_r_reg[27]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O16(4),
      Q => \n_0_stage_1_data_r_reg[27]_srl3\
    );
\stage_1_data_r_reg[28]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O16(3),
      Q => \n_0_stage_1_data_r_reg[28]_srl3\
    );
\stage_1_data_r_reg[29]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O16(2),
      Q => \n_0_stage_1_data_r_reg[29]_srl3\
    );
\stage_1_data_r_reg[2]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O19(5),
      Q => \n_0_stage_1_data_r_reg[2]_srl3\
    );
\stage_1_data_r_reg[30]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O16(1),
      Q => \n_0_stage_1_data_r_reg[30]_srl3\
    );
\stage_1_data_r_reg[31]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O16(0),
      Q => \n_0_stage_1_data_r_reg[31]_srl3\
    );
\stage_1_data_r_reg[3]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O19(4),
      Q => \n_0_stage_1_data_r_reg[3]_srl3\
    );
\stage_1_data_r_reg[4]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O19(3),
      Q => \n_0_stage_1_data_r_reg[4]_srl3\
    );
\stage_1_data_r_reg[5]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O19(2),
      Q => \n_0_stage_1_data_r_reg[5]_srl3\
    );
\stage_1_data_r_reg[6]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O19(1),
      Q => \n_0_stage_1_data_r_reg[6]_srl3\
    );
\stage_1_data_r_reg[7]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O19(0),
      Q => \n_0_stage_1_data_r_reg[7]_srl3\
    );
\stage_1_data_r_reg[8]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O18(7),
      Q => \n_0_stage_1_data_r_reg[8]_srl3\
    );
\stage_1_data_r_reg[9]_srl3\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => O18(6),
      Q => \n_0_stage_1_data_r_reg[9]_srl3\
    );
\stage_1_ecp_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I6(1),
      Q => stage_1_ecp_r(0),
      R => \<const0>\
    );
\stage_1_ecp_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I6(0),
      Q => stage_1_ecp_r(1),
      R => \<const0>\
    );
stage_1_pad_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => I3,
      Q => stage_1_pad_r,
      R => \<const0>\
    );
stage_1_rx_ll_deframer_i: entity work.aurora_8b10b_0aurora_8b10b_0_RX_LL_DEFRAMER
    port map (
      D(1 downto 0) => D(1 downto 0),
      I1 => I1,
      I2 => I2,
      I3(1) => stage_1_scp_r(0),
      I3(0) => stage_1_scp_r(1),
      I4(1 downto 0) => I4(1 downto 0),
      I5(1 downto 0) => I5(1 downto 0),
      O1 => n_3_stage_1_rx_ll_deframer_i,
      O2 => n_4_stage_1_rx_ll_deframer_i,
      O3 => n_5_stage_1_rx_ll_deframer_i,
      O4 => n_6_stage_1_rx_ll_deframer_i,
      O5(1) => count_c(0),
      O5(0) => count_c(1),
      O6 => n_9_stage_1_rx_ll_deframer_i,
      Q(1) => stage_1_ecp_r(0),
      Q(0) => stage_1_ecp_r(1),
      S1 => S1,
      S11_in => S11_in,
      SR(0) => SR(0),
      in_frame_c(0 to 1) => in_frame_c(0 to 1),
      in_frame_r => in_frame_r,
      start_rx_i => start_rx_i,
      user_clk => user_clk
    );
\stage_1_scp_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(1),
      Q => stage_1_scp_r(0),
      R => \<const0>\
    );
\stage_1_scp_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => D(0),
      Q => stage_1_scp_r(1),
      R => \<const0>\
    );
\stage_2_data_r_reg[0]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[0]_srl3\,
      Q => stage_2_data_r(0),
      R => \<const0>\
    );
\stage_2_data_r_reg[10]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[10]_srl3\,
      Q => stage_2_data_r(10),
      R => \<const0>\
    );
\stage_2_data_r_reg[11]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[11]_srl3\,
      Q => stage_2_data_r(11),
      R => \<const0>\
    );
\stage_2_data_r_reg[12]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[12]_srl3\,
      Q => stage_2_data_r(12),
      R => \<const0>\
    );
\stage_2_data_r_reg[13]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[13]_srl3\,
      Q => stage_2_data_r(13),
      R => \<const0>\
    );
\stage_2_data_r_reg[14]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[14]_srl3\,
      Q => stage_2_data_r(14),
      R => \<const0>\
    );
\stage_2_data_r_reg[15]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[15]_srl3\,
      Q => stage_2_data_r(15),
      R => \<const0>\
    );
\stage_2_data_r_reg[16]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[16]_srl3\,
      Q => muxed_data_c(16),
      R => \<const0>\
    );
\stage_2_data_r_reg[17]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[17]_srl3\,
      Q => muxed_data_c(17),
      R => \<const0>\
    );
\stage_2_data_r_reg[18]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[18]_srl3\,
      Q => muxed_data_c(18),
      R => \<const0>\
    );
\stage_2_data_r_reg[19]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[19]_srl3\,
      Q => muxed_data_c(19),
      R => \<const0>\
    );
\stage_2_data_r_reg[1]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[1]_srl3\,
      Q => stage_2_data_r(1),
      R => \<const0>\
    );
\stage_2_data_r_reg[20]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[20]_srl3\,
      Q => muxed_data_c(20),
      R => \<const0>\
    );
\stage_2_data_r_reg[21]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[21]_srl3\,
      Q => muxed_data_c(21),
      R => \<const0>\
    );
\stage_2_data_r_reg[22]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[22]_srl3\,
      Q => muxed_data_c(22),
      R => \<const0>\
    );
\stage_2_data_r_reg[23]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[23]_srl3\,
      Q => muxed_data_c(23),
      R => \<const0>\
    );
\stage_2_data_r_reg[24]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[24]_srl3\,
      Q => muxed_data_c(24),
      R => \<const0>\
    );
\stage_2_data_r_reg[25]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[25]_srl3\,
      Q => muxed_data_c(25),
      R => \<const0>\
    );
\stage_2_data_r_reg[26]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[26]_srl3\,
      Q => muxed_data_c(26),
      R => \<const0>\
    );
\stage_2_data_r_reg[27]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[27]_srl3\,
      Q => muxed_data_c(27),
      R => \<const0>\
    );
\stage_2_data_r_reg[28]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[28]_srl3\,
      Q => muxed_data_c(28),
      R => \<const0>\
    );
\stage_2_data_r_reg[29]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[29]_srl3\,
      Q => muxed_data_c(29),
      R => \<const0>\
    );
\stage_2_data_r_reg[2]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[2]_srl3\,
      Q => stage_2_data_r(2),
      R => \<const0>\
    );
\stage_2_data_r_reg[30]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[30]_srl3\,
      Q => muxed_data_c(30),
      R => \<const0>\
    );
\stage_2_data_r_reg[31]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[31]_srl3\,
      Q => muxed_data_c(31),
      R => \<const0>\
    );
\stage_2_data_r_reg[3]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[3]_srl3\,
      Q => stage_2_data_r(3),
      R => \<const0>\
    );
\stage_2_data_r_reg[4]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[4]_srl3\,
      Q => stage_2_data_r(4),
      R => \<const0>\
    );
\stage_2_data_r_reg[5]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[5]_srl3\,
      Q => stage_2_data_r(5),
      R => \<const0>\
    );
\stage_2_data_r_reg[6]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[6]_srl3\,
      Q => stage_2_data_r(6),
      R => \<const0>\
    );
\stage_2_data_r_reg[7]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[7]_srl3\,
      Q => stage_2_data_r(7),
      R => \<const0>\
    );
\stage_2_data_r_reg[8]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[8]_srl3\,
      Q => stage_2_data_r(8),
      R => \<const0>\
    );
\stage_2_data_r_reg[9]__0\: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \n_0_stage_1_data_r_reg[9]_srl3\,
      Q => stage_2_data_r(9),
      R => \<const0>\
    );
stage_2_end_after_start_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_5_stage_1_rx_ll_deframer_i,
      Q => stage_2_end_after_start_r,
      R => SR(0)
    );
stage_2_end_before_start_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_4_stage_1_rx_ll_deframer_i,
      Q => stage_2_end_before_start_r,
      R => SR(0)
    );
stage_2_frame_err_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_9_stage_1_rx_ll_deframer_i,
      Q => n_0_stage_2_frame_err_r_reg,
      R => \<const0>\
    );
stage_2_left_align_control_i: entity work.aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_CONTROL
    port map (
      I1 => n_6_stage_1_rx_ll_deframer_i,
      MUX_SELECT(0) => MUX_SELECT(2),
      user_clk => user_clk
    );
stage_2_pad_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => stage_1_pad_r,
      Q => stage_2_pad_r,
      R => \<const0>\
    );
stage_2_start_with_data_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_3_stage_1_rx_ll_deframer_i,
      Q => stage_2_start_with_data_r,
      R => SR(0)
    );
stage_2_valid_data_counter_i: entity work.aurora_8b10b_0aurora_8b10b_0_VALID_DATA_COUNTER
    port map (
      D(1) => ce_command_c(0),
      D(0) => ce_command_c(1),
      I1(1) => count_c(0),
      I1(0) => count_c(1),
      Q(1) => stage_2_data_v_count_r(0),
      Q(0) => stage_2_data_v_count_r(1),
      SR(0) => SR(0),
      stage_2_start_with_data_r => stage_2_start_with_data_r,
      stage_3_end_storage_r => stage_3_end_storage_r,
      stage_3_storage_count_r(0 to 1) => stage_3_storage_count_r(0 to 1),
      user_clk => user_clk
    );
stage_3_left_align_datapath_mux_i: entity work.aurora_8b10b_0aurora_8b10b_0_LEFT_ALIGN_MUX
    port map (
      D(15) => muxed_data_c(16),
      D(14) => muxed_data_c(17),
      D(13) => muxed_data_c(18),
      D(12) => muxed_data_c(19),
      D(11) => muxed_data_c(20),
      D(10) => muxed_data_c(21),
      D(9) => muxed_data_c(22),
      D(8) => muxed_data_c(23),
      D(7) => muxed_data_c(24),
      D(6) => muxed_data_c(25),
      D(5) => muxed_data_c(26),
      D(4) => muxed_data_c(27),
      D(3) => muxed_data_c(28),
      D(2) => muxed_data_c(29),
      D(1) => muxed_data_c(30),
      D(0) => muxed_data_c(31),
      MUX_SELECT(0) => MUX_SELECT(2),
      O1 => n_0_stage_3_left_align_datapath_mux_i,
      O10 => n_9_stage_3_left_align_datapath_mux_i,
      O11 => n_10_stage_3_left_align_datapath_mux_i,
      O12 => n_11_stage_3_left_align_datapath_mux_i,
      O13 => n_12_stage_3_left_align_datapath_mux_i,
      O14 => n_13_stage_3_left_align_datapath_mux_i,
      O15 => n_14_stage_3_left_align_datapath_mux_i,
      O16 => n_15_stage_3_left_align_datapath_mux_i,
      O17 => n_16_stage_3_left_align_datapath_mux_i,
      O18 => n_17_stage_3_left_align_datapath_mux_i,
      O19 => n_18_stage_3_left_align_datapath_mux_i,
      O2 => n_1_stage_3_left_align_datapath_mux_i,
      O20 => n_19_stage_3_left_align_datapath_mux_i,
      O21 => n_20_stage_3_left_align_datapath_mux_i,
      O22 => n_21_stage_3_left_align_datapath_mux_i,
      O23 => n_22_stage_3_left_align_datapath_mux_i,
      O24 => n_23_stage_3_left_align_datapath_mux_i,
      O25 => n_24_stage_3_left_align_datapath_mux_i,
      O26 => n_25_stage_3_left_align_datapath_mux_i,
      O27 => n_26_stage_3_left_align_datapath_mux_i,
      O28 => n_27_stage_3_left_align_datapath_mux_i,
      O29 => n_28_stage_3_left_align_datapath_mux_i,
      O3 => n_2_stage_3_left_align_datapath_mux_i,
      O30 => n_29_stage_3_left_align_datapath_mux_i,
      O31 => n_30_stage_3_left_align_datapath_mux_i,
      O32 => n_31_stage_3_left_align_datapath_mux_i,
      O33 => n_32_stage_3_left_align_datapath_mux_i,
      O34 => n_33_stage_3_left_align_datapath_mux_i,
      O35 => n_34_stage_3_left_align_datapath_mux_i,
      O36 => n_35_stage_3_left_align_datapath_mux_i,
      O37 => n_36_stage_3_left_align_datapath_mux_i,
      O38 => n_37_stage_3_left_align_datapath_mux_i,
      O39 => n_38_stage_3_left_align_datapath_mux_i,
      O4 => n_3_stage_3_left_align_datapath_mux_i,
      O40 => n_39_stage_3_left_align_datapath_mux_i,
      O41 => n_40_stage_3_left_align_datapath_mux_i,
      O42 => n_41_stage_3_left_align_datapath_mux_i,
      O43 => n_42_stage_3_left_align_datapath_mux_i,
      O44 => n_43_stage_3_left_align_datapath_mux_i,
      O45 => n_44_stage_3_left_align_datapath_mux_i,
      O46 => n_45_stage_3_left_align_datapath_mux_i,
      O47 => n_46_stage_3_left_align_datapath_mux_i,
      O48 => n_47_stage_3_left_align_datapath_mux_i,
      O5 => n_4_stage_3_left_align_datapath_mux_i,
      O6 => n_5_stage_3_left_align_datapath_mux_i,
      O7 => n_6_stage_3_left_align_datapath_mux_i,
      O8 => n_7_stage_3_left_align_datapath_mux_i,
      O9 => n_8_stage_3_left_align_datapath_mux_i,
      OUTPUT_SELECT(0) => OUTPUT_SELECT(0),
      STORAGE_DATA(15) => STORAGE_DATA(16),
      STORAGE_DATA(14) => STORAGE_DATA(17),
      STORAGE_DATA(13) => STORAGE_DATA(18),
      STORAGE_DATA(12) => STORAGE_DATA(19),
      STORAGE_DATA(11) => STORAGE_DATA(20),
      STORAGE_DATA(10) => STORAGE_DATA(21),
      STORAGE_DATA(9) => STORAGE_DATA(22),
      STORAGE_DATA(8) => STORAGE_DATA(23),
      STORAGE_DATA(7) => STORAGE_DATA(24),
      STORAGE_DATA(6) => STORAGE_DATA(25),
      STORAGE_DATA(5) => STORAGE_DATA(26),
      STORAGE_DATA(4) => STORAGE_DATA(27),
      STORAGE_DATA(3) => STORAGE_DATA(28),
      STORAGE_DATA(2) => STORAGE_DATA(29),
      STORAGE_DATA(1) => STORAGE_DATA(30),
      STORAGE_DATA(0) => STORAGE_DATA(31),
      STORAGE_SELECT(1) => STORAGE_SELECT(4),
      STORAGE_SELECT(0) => STORAGE_SELECT(9),
      stage_2_data_r(15) => stage_2_data_r(0),
      stage_2_data_r(14) => stage_2_data_r(1),
      stage_2_data_r(13) => stage_2_data_r(2),
      stage_2_data_r(12) => stage_2_data_r(3),
      stage_2_data_r(11) => stage_2_data_r(4),
      stage_2_data_r(10) => stage_2_data_r(5),
      stage_2_data_r(9) => stage_2_data_r(6),
      stage_2_data_r(8) => stage_2_data_r(7),
      stage_2_data_r(7) => stage_2_data_r(8),
      stage_2_data_r(6) => stage_2_data_r(9),
      stage_2_data_r(5) => stage_2_data_r(10),
      stage_2_data_r(4) => stage_2_data_r(11),
      stage_2_data_r(3) => stage_2_data_r(12),
      stage_2_data_r(2) => stage_2_data_r(13),
      stage_2_data_r(1) => stage_2_data_r(14),
      stage_2_data_r(0) => stage_2_data_r(15),
      user_clk => user_clk
    );
stage_3_output_switch_control_i: entity work.aurora_8b10b_0aurora_8b10b_0_OUTPUT_SWITCH_CONTROL
    port map (
      I1 => n_3_stage_3_storage_count_control_i,
      OUTPUT_SELECT(0) => OUTPUT_SELECT(0),
      user_clk => user_clk
    );
stage_3_storage_ce_control_i: entity work.aurora_8b10b_0aurora_8b10b_0_STORAGE_CE_CONTROL
    port map (
      D(1) => ce_command_c(0),
      D(0) => ce_command_c(1),
      Q(1) => p_0_in0,
      Q(0) => n_1_stage_3_storage_ce_control_i,
      SR(0) => SR(0),
      user_clk => user_clk
    );
stage_3_storage_count_control_i: entity work.aurora_8b10b_0aurora_8b10b_0_STORAGE_COUNT_CONTROL
    port map (
      FRAME_ERR_RESULT0 => FRAME_ERR_RESULT0,
      I1 => n_0_stage_2_frame_err_r_reg,
      O1 => n_0_stage_3_storage_count_control_i,
      O2 => n_3_stage_3_storage_count_control_i,
      O3 => n_5_stage_3_storage_count_control_i,
      O4 => n_6_stage_3_storage_count_control_i,
      O5 => n_7_stage_3_storage_count_control_i,
      Q(1) => stage_2_data_v_count_r(0),
      Q(0) => stage_2_data_v_count_r(1),
      overwrite_c => overwrite_c,
      stage_2_end_after_start_r => stage_2_end_after_start_r,
      stage_2_end_before_start_r => stage_2_end_before_start_r,
      stage_2_start_with_data_r => stage_2_start_with_data_r,
      stage_3_end_storage_r => stage_3_end_storage_r,
      stage_3_storage_count_r(0 to 1) => stage_3_storage_count_r(0 to 1),
      start_rx_i => start_rx_i,
      user_clk => user_clk
    );
stage_3_storage_switch_control_i: entity work.aurora_8b10b_0aurora_8b10b_0_STORAGE_SWITCH_CONTROL
    port map (
      Q(1) => stage_2_data_v_count_r(0),
      Q(0) => stage_2_data_v_count_r(1),
      STORAGE_SELECT(1) => STORAGE_SELECT(4),
      STORAGE_SELECT(0) => STORAGE_SELECT(9),
      stage_2_start_with_data_r => stage_2_start_with_data_r,
      stage_3_end_storage_r => stage_3_end_storage_r,
      stage_3_storage_count_r(0 to 1) => stage_3_storage_count_r(0 to 1),
      user_clk => user_clk
    );
stage_4_storage_mux_i: entity work.aurora_8b10b_0aurora_8b10b_0_STORAGE_MUX
    port map (
      D(15) => output_data_c(0),
      D(14) => output_data_c(1),
      D(13) => output_data_c(2),
      D(12) => output_data_c(3),
      D(11) => output_data_c(4),
      D(10) => output_data_c(5),
      D(9) => output_data_c(6),
      D(8) => output_data_c(7),
      D(7) => output_data_c(8),
      D(6) => output_data_c(9),
      D(5) => output_data_c(10),
      D(4) => output_data_c(11),
      D(3) => output_data_c(12),
      D(2) => output_data_c(13),
      D(1) => output_data_c(14),
      D(0) => output_data_c(15),
      I1 => n_16_stage_3_left_align_datapath_mux_i,
      I10 => n_25_stage_3_left_align_datapath_mux_i,
      I11 => n_26_stage_3_left_align_datapath_mux_i,
      I12 => n_27_stage_3_left_align_datapath_mux_i,
      I13 => n_28_stage_3_left_align_datapath_mux_i,
      I14 => n_29_stage_3_left_align_datapath_mux_i,
      I15 => n_30_stage_3_left_align_datapath_mux_i,
      I16 => n_31_stage_3_left_align_datapath_mux_i,
      I17 => n_32_stage_3_left_align_datapath_mux_i,
      I18 => n_33_stage_3_left_align_datapath_mux_i,
      I19 => n_34_stage_3_left_align_datapath_mux_i,
      I2 => n_17_stage_3_left_align_datapath_mux_i,
      I20 => n_35_stage_3_left_align_datapath_mux_i,
      I21 => n_36_stage_3_left_align_datapath_mux_i,
      I22 => n_37_stage_3_left_align_datapath_mux_i,
      I23 => n_38_stage_3_left_align_datapath_mux_i,
      I24 => n_39_stage_3_left_align_datapath_mux_i,
      I25 => n_40_stage_3_left_align_datapath_mux_i,
      I26 => n_41_stage_3_left_align_datapath_mux_i,
      I27 => n_42_stage_3_left_align_datapath_mux_i,
      I28 => n_43_stage_3_left_align_datapath_mux_i,
      I29 => n_44_stage_3_left_align_datapath_mux_i,
      I3 => n_18_stage_3_left_align_datapath_mux_i,
      I30 => n_45_stage_3_left_align_datapath_mux_i,
      I31 => n_46_stage_3_left_align_datapath_mux_i,
      I32 => n_47_stage_3_left_align_datapath_mux_i,
      I4 => n_19_stage_3_left_align_datapath_mux_i,
      I5 => n_20_stage_3_left_align_datapath_mux_i,
      I6 => n_21_stage_3_left_align_datapath_mux_i,
      I7 => n_22_stage_3_left_align_datapath_mux_i,
      I8 => n_23_stage_3_left_align_datapath_mux_i,
      I9 => n_24_stage_3_left_align_datapath_mux_i,
      Q(1) => p_0_in0,
      Q(0) => n_1_stage_3_storage_ce_control_i,
      STORAGE_DATA(15) => STORAGE_DATA(16),
      STORAGE_DATA(14) => STORAGE_DATA(17),
      STORAGE_DATA(13) => STORAGE_DATA(18),
      STORAGE_DATA(12) => STORAGE_DATA(19),
      STORAGE_DATA(11) => STORAGE_DATA(20),
      STORAGE_DATA(10) => STORAGE_DATA(21),
      STORAGE_DATA(9) => STORAGE_DATA(22),
      STORAGE_DATA(8) => STORAGE_DATA(23),
      STORAGE_DATA(7) => STORAGE_DATA(24),
      STORAGE_DATA(6) => STORAGE_DATA(25),
      STORAGE_DATA(5) => STORAGE_DATA(26),
      STORAGE_DATA(4) => STORAGE_DATA(27),
      STORAGE_DATA(3) => STORAGE_DATA(28),
      STORAGE_DATA(2) => STORAGE_DATA(29),
      STORAGE_DATA(1) => STORAGE_DATA(30),
      STORAGE_DATA(0) => STORAGE_DATA(31),
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_TX_LL is
  port (
    gen_cc_i : out STD_LOGIC;
    tx_dst_rdy : out STD_LOGIC;
    gen_scp_i : out STD_LOGIC;
    O1 : out STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    reset_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    do_cc : in STD_LOGIC;
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 );
    I3 : in STD_LOGIC;
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 )
  );
end aurora_8b10b_0aurora_8b10b_0_TX_LL;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_TX_LL is
  signal do_cc_r : STD_LOGIC;
  signal n_0_tx_ll_datapath_i : STD_LOGIC;
  signal n_10_tx_ll_control_i : STD_LOGIC;
  signal n_7_tx_ll_control_i : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal storage_pad_r0 : STD_LOGIC;
  signal storage_v_r0 : STD_LOGIC;
  signal \^tx_dst_rdy\ : STD_LOGIC;
begin
  tx_dst_rdy <= \^tx_dst_rdy\;
tx_ll_control_i: entity work.aurora_8b10b_0aurora_8b10b_0_TX_LL_CONTROL
    port map (
      I1 => I1,
      I2 => I2,
      I3 => n_0_tx_ll_datapath_i,
      I4(0) => n_7_tx_ll_control_i,
      I5 => I3,
      O1 => \^tx_dst_rdy\,
      O2 => O1,
      O3 => n_10_tx_ll_control_i,
      do_cc => do_cc,
      do_cc_r => do_cc_r,
      gen_cc_i => gen_cc_i,
      gen_scp_i => gen_scp_i,
      p_0_in => p_0_in,
      reset_i => reset_i,
      s_axi_tx_tkeep(0 to 3) => s_axi_tx_tkeep(0 to 3),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      storage_pad_r0 => storage_pad_r0,
      storage_v_r0 => storage_v_r0,
      user_clk => user_clk
    );
tx_ll_datapath_i: entity work.aurora_8b10b_0aurora_8b10b_0_TX_LL_DATAPATH
    port map (
      D(1 downto 0) => D(1 downto 0),
      I1 => n_10_tx_ll_control_i,
      I2 => \^tx_dst_rdy\,
      I3 => I2,
      I4(0) => n_7_tx_ll_control_i,
      O1 => n_0_tx_ll_datapath_i,
      O2(1 downto 0) => O2(1 downto 0),
      Q(31 downto 0) => Q(31 downto 0),
      do_cc_r => do_cc_r,
      p_0_in => p_0_in,
      s_axi_tx_tdata(0 to 31) => s_axi_tx_tdata(0 to 31),
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      storage_pad_r0 => storage_pad_r0,
      storage_v_r0 => storage_v_r0,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_hotplug is
  port (
    s_out_d1_cdc_to : out STD_LOGIC;
    s_out_d2 : out STD_LOGIC;
    s_out_d3 : out STD_LOGIC;
    s_out_d4 : out STD_LOGIC;
    s_out_d5 : out STD_LOGIC;
    s_out_d6 : out STD_LOGIC;
    s_out_d7 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    link_reset_out : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    reset_lanes_i : in STD_LOGIC;
    rx_cc_i : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_hotplug;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_hotplug is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal cc_sync : STD_LOGIC;
  signal count_for_reset_r_reg : STD_LOGIC_VECTOR ( 25 downto 0 );
  signal link_reset_0 : STD_LOGIC;
  signal \n_0_count_for_reset_r[0]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[0]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[0]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[0]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[12]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[12]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[12]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[12]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[16]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[16]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[16]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[16]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[20]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[20]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[20]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[20]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[24]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[24]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[4]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[4]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[4]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[4]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[8]_i_2\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[8]_i_3\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[8]_i_4\ : STD_LOGIC;
  signal \n_0_count_for_reset_r[8]_i_5\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal n_0_link_reset_0_i_1 : STD_LOGIC;
  signal n_0_link_reset_0_i_2 : STD_LOGIC;
  signal n_0_link_reset_0_i_3 : STD_LOGIC;
  signal n_0_link_reset_0_i_4 : STD_LOGIC;
  signal n_0_link_reset_0_i_5 : STD_LOGIC;
  signal n_0_link_reset_0_i_6 : STD_LOGIC;
  signal n_0_rx_cc_extend_r2_i_1 : STD_LOGIC;
  signal \n_0_rx_cc_extend_r_reg[0]\ : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[24]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[24]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[0]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[20]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[24]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_count_for_reset_r_reg[8]_i_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_cc_extend_r2 : STD_LOGIC;
  signal \NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute counter : integer;
  attribute counter of \count_for_reset_r_reg[0]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[10]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[11]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[12]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[13]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[14]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[15]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[16]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[17]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[18]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[19]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[1]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[20]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[21]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[22]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[23]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[24]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[25]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[2]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[3]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[4]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[5]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[6]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[7]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[8]\ : label is 15;
  attribute counter of \count_for_reset_r_reg[9]\ : label is 15;
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\count_for_reset_r[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(3),
      O => \n_0_count_for_reset_r[0]_i_2\
    );
\count_for_reset_r[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(2),
      O => \n_0_count_for_reset_r[0]_i_3\
    );
\count_for_reset_r[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(1),
      O => \n_0_count_for_reset_r[0]_i_4\
    );
\count_for_reset_r[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => count_for_reset_r_reg(0),
      O => \n_0_count_for_reset_r[0]_i_5\
    );
\count_for_reset_r[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(15),
      O => \n_0_count_for_reset_r[12]_i_2\
    );
\count_for_reset_r[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(14),
      O => \n_0_count_for_reset_r[12]_i_3\
    );
\count_for_reset_r[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(13),
      O => \n_0_count_for_reset_r[12]_i_4\
    );
\count_for_reset_r[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(12),
      O => \n_0_count_for_reset_r[12]_i_5\
    );
\count_for_reset_r[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(19),
      O => \n_0_count_for_reset_r[16]_i_2\
    );
\count_for_reset_r[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(18),
      O => \n_0_count_for_reset_r[16]_i_3\
    );
\count_for_reset_r[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(17),
      O => \n_0_count_for_reset_r[16]_i_4\
    );
\count_for_reset_r[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(16),
      O => \n_0_count_for_reset_r[16]_i_5\
    );
\count_for_reset_r[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(23),
      O => \n_0_count_for_reset_r[20]_i_2\
    );
\count_for_reset_r[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(22),
      O => \n_0_count_for_reset_r[20]_i_3\
    );
\count_for_reset_r[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(21),
      O => \n_0_count_for_reset_r[20]_i_4\
    );
\count_for_reset_r[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(20),
      O => \n_0_count_for_reset_r[20]_i_5\
    );
\count_for_reset_r[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(25),
      O => \n_0_count_for_reset_r[24]_i_2\
    );
\count_for_reset_r[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(24),
      O => \n_0_count_for_reset_r[24]_i_3\
    );
\count_for_reset_r[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(7),
      O => \n_0_count_for_reset_r[4]_i_2\
    );
\count_for_reset_r[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(6),
      O => \n_0_count_for_reset_r[4]_i_3\
    );
\count_for_reset_r[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(5),
      O => \n_0_count_for_reset_r[4]_i_4\
    );
\count_for_reset_r[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(4),
      O => \n_0_count_for_reset_r[4]_i_5\
    );
\count_for_reset_r[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(11),
      O => \n_0_count_for_reset_r[8]_i_2\
    );
\count_for_reset_r[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(10),
      O => \n_0_count_for_reset_r[8]_i_3\
    );
\count_for_reset_r[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(9),
      O => \n_0_count_for_reset_r[8]_i_4\
    );
\count_for_reset_r[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => count_for_reset_r_reg(8),
      O => \n_0_count_for_reset_r[8]_i_5\
    );
\count_for_reset_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_count_for_reset_r_reg[0]_i_1\,
      Q => count_for_reset_r_reg(0),
      R => cc_sync
    );
\count_for_reset_r_reg[0]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \<const0>\,
      CO(3) => \n_0_count_for_reset_r_reg[0]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[0]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[0]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[0]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const1>\,
      O(3) => \n_4_count_for_reset_r_reg[0]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[0]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[0]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[0]_i_1\,
      S(3) => \n_0_count_for_reset_r[0]_i_2\,
      S(2) => \n_0_count_for_reset_r[0]_i_3\,
      S(1) => \n_0_count_for_reset_r[0]_i_4\,
      S(0) => \n_0_count_for_reset_r[0]_i_5\
    );
\count_for_reset_r_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_count_for_reset_r_reg[8]_i_1\,
      Q => count_for_reset_r_reg(10),
      R => cc_sync
    );
\count_for_reset_r_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_count_for_reset_r_reg[8]_i_1\,
      Q => count_for_reset_r_reg(11),
      R => cc_sync
    );
\count_for_reset_r_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_count_for_reset_r_reg[12]_i_1\,
      Q => count_for_reset_r_reg(12),
      R => cc_sync
    );
\count_for_reset_r_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[8]_i_1\,
      CO(3) => \n_0_count_for_reset_r_reg[12]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[12]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[12]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[12]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_count_for_reset_r_reg[12]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[12]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[12]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[12]_i_1\,
      S(3) => \n_0_count_for_reset_r[12]_i_2\,
      S(2) => \n_0_count_for_reset_r[12]_i_3\,
      S(1) => \n_0_count_for_reset_r[12]_i_4\,
      S(0) => \n_0_count_for_reset_r[12]_i_5\
    );
\count_for_reset_r_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_count_for_reset_r_reg[12]_i_1\,
      Q => count_for_reset_r_reg(13),
      R => cc_sync
    );
\count_for_reset_r_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_count_for_reset_r_reg[12]_i_1\,
      Q => count_for_reset_r_reg(14),
      R => cc_sync
    );
\count_for_reset_r_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_count_for_reset_r_reg[12]_i_1\,
      Q => count_for_reset_r_reg(15),
      R => cc_sync
    );
\count_for_reset_r_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_count_for_reset_r_reg[16]_i_1\,
      Q => count_for_reset_r_reg(16),
      R => cc_sync
    );
\count_for_reset_r_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[12]_i_1\,
      CO(3) => \n_0_count_for_reset_r_reg[16]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[16]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[16]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[16]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_count_for_reset_r_reg[16]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[16]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[16]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[16]_i_1\,
      S(3) => \n_0_count_for_reset_r[16]_i_2\,
      S(2) => \n_0_count_for_reset_r[16]_i_3\,
      S(1) => \n_0_count_for_reset_r[16]_i_4\,
      S(0) => \n_0_count_for_reset_r[16]_i_5\
    );
\count_for_reset_r_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_count_for_reset_r_reg[16]_i_1\,
      Q => count_for_reset_r_reg(17),
      R => cc_sync
    );
\count_for_reset_r_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_count_for_reset_r_reg[16]_i_1\,
      Q => count_for_reset_r_reg(18),
      R => cc_sync
    );
\count_for_reset_r_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_count_for_reset_r_reg[16]_i_1\,
      Q => count_for_reset_r_reg(19),
      R => cc_sync
    );
\count_for_reset_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_count_for_reset_r_reg[0]_i_1\,
      Q => count_for_reset_r_reg(1),
      R => cc_sync
    );
\count_for_reset_r_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_count_for_reset_r_reg[20]_i_1\,
      Q => count_for_reset_r_reg(20),
      R => cc_sync
    );
\count_for_reset_r_reg[20]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[16]_i_1\,
      CO(3) => \n_0_count_for_reset_r_reg[20]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[20]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[20]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[20]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_count_for_reset_r_reg[20]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[20]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[20]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[20]_i_1\,
      S(3) => \n_0_count_for_reset_r[20]_i_2\,
      S(2) => \n_0_count_for_reset_r[20]_i_3\,
      S(1) => \n_0_count_for_reset_r[20]_i_4\,
      S(0) => \n_0_count_for_reset_r[20]_i_5\
    );
\count_for_reset_r_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_count_for_reset_r_reg[20]_i_1\,
      Q => count_for_reset_r_reg(21),
      R => cc_sync
    );
\count_for_reset_r_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_count_for_reset_r_reg[20]_i_1\,
      Q => count_for_reset_r_reg(22),
      R => cc_sync
    );
\count_for_reset_r_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_count_for_reset_r_reg[20]_i_1\,
      Q => count_for_reset_r_reg(23),
      R => cc_sync
    );
\count_for_reset_r_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_count_for_reset_r_reg[24]_i_1\,
      Q => count_for_reset_r_reg(24),
      R => cc_sync
    );
\count_for_reset_r_reg[24]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[20]_i_1\,
      CO(3 downto 1) => \NLW_count_for_reset_r_reg[24]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \n_3_count_for_reset_r_reg[24]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3 downto 2) => \NLW_count_for_reset_r_reg[24]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \n_6_count_for_reset_r_reg[24]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[24]_i_1\,
      S(3) => \<const0>\,
      S(2) => \<const0>\,
      S(1) => \n_0_count_for_reset_r[24]_i_2\,
      S(0) => \n_0_count_for_reset_r[24]_i_3\
    );
\count_for_reset_r_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_count_for_reset_r_reg[24]_i_1\,
      Q => count_for_reset_r_reg(25),
      R => cc_sync
    );
\count_for_reset_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_count_for_reset_r_reg[0]_i_1\,
      Q => count_for_reset_r_reg(2),
      R => cc_sync
    );
\count_for_reset_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_count_for_reset_r_reg[0]_i_1\,
      Q => count_for_reset_r_reg(3),
      R => cc_sync
    );
\count_for_reset_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_count_for_reset_r_reg[4]_i_1\,
      Q => count_for_reset_r_reg(4),
      R => cc_sync
    );
\count_for_reset_r_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[0]_i_1\,
      CO(3) => \n_0_count_for_reset_r_reg[4]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[4]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[4]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[4]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_count_for_reset_r_reg[4]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[4]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[4]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[4]_i_1\,
      S(3) => \n_0_count_for_reset_r[4]_i_2\,
      S(2) => \n_0_count_for_reset_r[4]_i_3\,
      S(1) => \n_0_count_for_reset_r[4]_i_4\,
      S(0) => \n_0_count_for_reset_r[4]_i_5\
    );
\count_for_reset_r_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_count_for_reset_r_reg[4]_i_1\,
      Q => count_for_reset_r_reg(5),
      R => cc_sync
    );
\count_for_reset_r_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_count_for_reset_r_reg[4]_i_1\,
      Q => count_for_reset_r_reg(6),
      R => cc_sync
    );
\count_for_reset_r_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_count_for_reset_r_reg[4]_i_1\,
      Q => count_for_reset_r_reg(7),
      R => cc_sync
    );
\count_for_reset_r_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_count_for_reset_r_reg[8]_i_1\,
      Q => count_for_reset_r_reg(8),
      R => cc_sync
    );
\count_for_reset_r_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_for_reset_r_reg[4]_i_1\,
      CO(3) => \n_0_count_for_reset_r_reg[8]_i_1\,
      CO(2) => \n_1_count_for_reset_r_reg[8]_i_1\,
      CO(1) => \n_2_count_for_reset_r_reg[8]_i_1\,
      CO(0) => \n_3_count_for_reset_r_reg[8]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_count_for_reset_r_reg[8]_i_1\,
      O(2) => \n_5_count_for_reset_r_reg[8]_i_1\,
      O(1) => \n_6_count_for_reset_r_reg[8]_i_1\,
      O(0) => \n_7_count_for_reset_r_reg[8]_i_1\,
      S(3) => \n_0_count_for_reset_r[8]_i_2\,
      S(2) => \n_0_count_for_reset_r[8]_i_3\,
      S(1) => \n_0_count_for_reset_r[8]_i_4\,
      S(0) => \n_0_count_for_reset_r[8]_i_5\
    );
\count_for_reset_r_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_count_for_reset_r_reg[8]_i_1\,
      Q => count_for_reset_r_reg(9),
      R => cc_sync
    );
link_reset_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9D00000000000000"
    )
    port map (
      I0 => n_0_link_reset_0_i_2,
      I1 => count_for_reset_r_reg(3),
      I2 => count_for_reset_r_reg(0),
      I3 => n_0_link_reset_0_i_3,
      I4 => n_0_link_reset_0_i_4,
      I5 => n_0_link_reset_0_i_5,
      O => n_0_link_reset_0_i_1
    );
link_reset_0_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => count_for_reset_r_reg(2),
      I1 => count_for_reset_r_reg(1),
      O => n_0_link_reset_0_i_2
    );
link_reset_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => count_for_reset_r_reg(10),
      I1 => count_for_reset_r_reg(15),
      I2 => count_for_reset_r_reg(17),
      I3 => count_for_reset_r_reg(20),
      I4 => count_for_reset_r_reg(16),
      I5 => count_for_reset_r_reg(6),
      O => n_0_link_reset_0_i_3
    );
link_reset_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => count_for_reset_r_reg(8),
      I1 => count_for_reset_r_reg(7),
      I2 => count_for_reset_r_reg(13),
      I3 => count_for_reset_r_reg(21),
      I4 => count_for_reset_r_reg(12),
      I5 => count_for_reset_r_reg(23),
      O => n_0_link_reset_0_i_4
    );
link_reset_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => count_for_reset_r_reg(4),
      I1 => count_for_reset_r_reg(22),
      I2 => count_for_reset_r_reg(5),
      I3 => count_for_reset_r_reg(19),
      I4 => n_0_link_reset_0_i_6,
      O => n_0_link_reset_0_i_5
    );
link_reset_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => count_for_reset_r_reg(11),
      I1 => count_for_reset_r_reg(14),
      I2 => count_for_reset_r_reg(9),
      I3 => count_for_reset_r_reg(25),
      I4 => count_for_reset_r_reg(24),
      I5 => count_for_reset_r_reg(18),
      O => n_0_link_reset_0_i_6
    );
link_reset_0_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_link_reset_0_i_1,
      Q => link_reset_0,
      R => \<const0>\
    );
link_reset_r_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => link_reset_0,
      Q => link_reset_out,
      R => \<const0>\
    );
rx_cc_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync
    port map (
      O2(1 downto 0) => O2(1 downto 0),
      O3(1 downto 0) => O3(1 downto 0),
      O4(1 downto 0) => O4(1 downto 0),
      O5(1 downto 0) => O5(1 downto 0),
      O6(1 downto 0) => O6(1 downto 0),
      cc_sync => cc_sync,
      init_clk_in => init_clk_in,
      \out\(1 downto 0) => \out\(1 downto 0),
      rx_cc_extend_r2 => rx_cc_extend_r2,
      s_out_d1_cdc_to => s_out_d1_cdc_to,
      s_out_d2 => s_out_d2,
      s_out_d3 => s_out_d3,
      s_out_d4 => s_out_d4,
      s_out_d5 => s_out_d5,
      s_out_d6 => s_out_d6,
      s_out_d7 => s_out_d7
    );
rx_cc_extend_r2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => p_0_in(3),
      I1 => p_0_in(1),
      I2 => p_0_in(2),
      I3 => \n_0_rx_cc_extend_r_reg[0]\,
      I4 => p_0_in(0),
      O => n_0_rx_cc_extend_r2_i_1
    );
rx_cc_extend_r2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_0_rx_cc_extend_r2_i_1,
      Q => rx_cc_extend_r2,
      R => \<const0>\
    );
\rx_cc_extend_r_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_0_in(0),
      Q => \n_0_rx_cc_extend_r_reg[0]\,
      R => reset_lanes_i
    );
\rx_cc_extend_r_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_0_in(1),
      Q => p_0_in(0),
      R => reset_lanes_i
    );
\rx_cc_extend_r_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_0_in(2),
      Q => p_0_in(1),
      R => reset_lanes_i
    );
\rx_cc_extend_r_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => p_0_in(3),
      Q => p_0_in(2),
      R => reset_lanes_i
    );
\rx_cc_extend_r_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rx_cc_i,
      Q => p_0_in(3),
      R => reset_lanes_i
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_multi_gt is
  port (
    tx_lock : out STD_LOGIC;
    gt0_pllrefclklost_i : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    O1 : out STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    O2 : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RXDISPERR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O90 : out STD_LOGIC;
    O91 : out STD_LOGIC;
    hard_err_gt0 : out STD_LOGIC;
    O92 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O93 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O94 : out STD_LOGIC;
    O95 : out STD_LOGIC;
    O96 : out STD_LOGIC;
    O97 : out STD_LOGIC;
    O98 : out STD_LOGIC;
    O99 : out STD_LOGIC;
    O100 : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    cpll_reset_i : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    gt_rx_reset_i : in STD_LOGIC;
    gt_tx_reset_i : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_qpllclk_quad2_in : in STD_LOGIC;
    gt_qpllrefclk_quad2_in : in STD_LOGIC;
    gt_rxdfelfhold_i : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    gt_rxuserrdy_i : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    power_down : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    I3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I4 : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_multi_gt;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_multi_gt is
begin
gt0_aurora_8b10b_0_i: entity work.aurora_8b10b_0aurora_8b10b_0_gt
    port map (
      D(3 downto 0) => D(3 downto 0),
      I1 => I1,
      I2 => I2,
      I3(7 downto 0) => I3(7 downto 0),
      I4 => I4,
      O1 => O1,
      O100 => O100,
      O2 => O2,
      O90 => O90,
      O91 => O91,
      O92(7 downto 0) => O92(7 downto 0),
      O93(7 downto 0) => O93(7 downto 0),
      O94 => O94,
      O95 => O95,
      O96 => O96,
      O97 => O97,
      O98 => O98,
      O99 => O99,
      Q(0) => Q(0),
      RXCHARISK(3 downto 0) => RXCHARISK(3 downto 0),
      RXDATA(31 downto 0) => RXDATA(31 downto 0),
      RXDISPERR(1 downto 0) => RXDISPERR(1 downto 0),
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      cpll_reset_i => cpll_reset_i,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      gt0_pllrefclklost_i => gt0_pllrefclklost_i,
      gt_qpllclk_quad2_in => gt_qpllclk_quad2_in,
      gt_qpllrefclk_quad2_in => gt_qpllrefclk_quad2_in,
      gt_refclk1 => gt_refclk1,
      gt_rx_reset_i => gt_rx_reset_i,
      gt_rxdfelfhold_i => gt_rxdfelfhold_i,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      hard_err_gt0 => hard_err_gt0,
      init_clk_in => init_clk_in,
      loopback(2 downto 0) => loopback(2 downto 0),
      power_down => power_down,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rxn => rxn,
      rxp => rxp,
      sync_clk => sync_clk,
      tx_lock => tx_lock,
      tx_out_clk => tx_out_clk,
      txn => txn,
      txp => txp,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_rx_startup_fsm is
  port (
    s_out_d1_cdc_to_42 : out STD_LOGIC;
    s_out_d2_43 : out STD_LOGIC;
    s_out_d3_44 : out STD_LOGIC;
    s_out_d4_45 : out STD_LOGIC;
    s_out_d5_46 : out STD_LOGIC;
    s_out_d6_47 : out STD_LOGIC;
    s_out_d7_48 : out STD_LOGIC;
    O42 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O43 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O44 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O45 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O46 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O47 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_49 : out STD_LOGIC;
    s_out_d2_50 : out STD_LOGIC;
    s_out_d3_51 : out STD_LOGIC;
    s_out_d4_52 : out STD_LOGIC;
    s_out_d5_53 : out STD_LOGIC;
    s_out_d6_54 : out STD_LOGIC;
    s_out_d7_55 : out STD_LOGIC;
    O48 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O49 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O50 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O51 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O52 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O53 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_56 : out STD_LOGIC;
    s_out_d2_57 : out STD_LOGIC;
    s_out_d3_58 : out STD_LOGIC;
    s_out_d4_59 : out STD_LOGIC;
    s_out_d5_60 : out STD_LOGIC;
    s_out_d6_61 : out STD_LOGIC;
    s_out_d7_62 : out STD_LOGIC;
    O54 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O55 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O56 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O57 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O58 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O59 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_63 : out STD_LOGIC;
    s_out_d2_64 : out STD_LOGIC;
    s_out_d3_65 : out STD_LOGIC;
    s_out_d4_66 : out STD_LOGIC;
    s_out_d5_67 : out STD_LOGIC;
    s_out_d6_68 : out STD_LOGIC;
    s_out_d7_69 : out STD_LOGIC;
    O60 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O61 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O62 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O63 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O64 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O65 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_70 : out STD_LOGIC;
    s_out_d2_71 : out STD_LOGIC;
    s_out_d3_72 : out STD_LOGIC;
    s_out_d4_73 : out STD_LOGIC;
    s_out_d5_74 : out STD_LOGIC;
    s_out_d6_75 : out STD_LOGIC;
    s_out_d7_76 : out STD_LOGIC;
    O66 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O67 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O68 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O69 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O70 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O71 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_77 : out STD_LOGIC;
    s_out_d2_78 : out STD_LOGIC;
    s_out_d3_79 : out STD_LOGIC;
    s_out_d4_80 : out STD_LOGIC;
    s_out_d5_81 : out STD_LOGIC;
    s_out_d6_82 : out STD_LOGIC;
    s_out_d7_83 : out STD_LOGIC;
    O72 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O73 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O74 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O75 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O76 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O77 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_84 : out STD_LOGIC;
    s_out_d2_85 : out STD_LOGIC;
    s_out_d3_86 : out STD_LOGIC;
    s_out_d4_87 : out STD_LOGIC;
    s_out_d5_88 : out STD_LOGIC;
    s_out_d6_89 : out STD_LOGIC;
    s_out_d7_90 : out STD_LOGIC;
    O78 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O79 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O80 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O81 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O82 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O83 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_91 : out STD_LOGIC;
    s_out_d2_92 : out STD_LOGIC;
    s_out_d3_93 : out STD_LOGIC;
    s_out_d4_94 : out STD_LOGIC;
    s_out_d5_95 : out STD_LOGIC;
    s_out_d6_96 : out STD_LOGIC;
    s_out_d7_97 : out STD_LOGIC;
    O84 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O85 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O86 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O87 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O88 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O89 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt_rxuserrdy_i : out STD_LOGIC;
    gt_rxdfelfhold_i : out STD_LOGIC;
    GTRXRESET : out STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    rxfsm_rxresetdone_r : in STD_LOGIC;
    rxfsm_data_valid_r : in STD_LOGIC;
    gt0_pllrefclklost_i : in STD_LOGIC;
    rx_cdrlocked : in STD_LOGIC;
    rxfsm_soft_reset_r : in STD_LOGIC;
    gt_txuserrdy_i : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_rx_startup_fsm;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_rx_startup_fsm is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^gtrxreset\ : STD_LOGIC;
  signal adapt_count_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal adapt_count_reset : STD_LOGIC;
  signal \^gt_rxdfelfhold_i\ : STD_LOGIC;
  signal \^gt_rxuserrdy_i\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[1]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[1]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[1]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[2]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[2]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[3]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[3]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[4]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[5]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[6]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[6]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[7]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[7]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_11\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_12\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_15\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_16\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[0]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[1]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[2]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[3]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[4]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[5]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[6]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[7]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[8]\ : STD_LOGIC;
  signal n_0_GTRXRESET_i_1 : STD_LOGIC;
  signal n_0_GTRXRESET_i_2 : STD_LOGIC;
  signal n_0_GTRXRESET_i_3 : STD_LOGIC;
  signal n_0_RXDFEAGCHOLD_i_1 : STD_LOGIC;
  signal n_0_RXDFEAGCHOLD_i_2 : STD_LOGIC;
  signal n_0_RXUSERRDY_i_1 : STD_LOGIC;
  signal n_0_RXUSERRDY_i_2 : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[0]_i_6\ : STD_LOGIC;
  signal \n_0_adapt_count[12]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[12]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[12]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[12]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[16]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[16]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[16]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[16]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[20]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[20]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[20]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[20]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[24]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[24]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[24]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[24]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[28]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[28]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[28]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[28]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[4]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[4]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[4]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[4]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count[8]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count[8]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_count[8]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_count[8]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal n_0_adapt_count_reset_i_3 : STD_LOGIC;
  signal n_0_check_tlock_max_i_1 : STD_LOGIC;
  signal n_0_check_tlock_max_i_2 : STD_LOGIC;
  signal n_0_check_tlock_max_reg : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_1__0\ : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_3__0\ : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_4__0\ : STD_LOGIC;
  signal \n_0_init_wait_done_i_1__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[7]_i_2__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[7]_i_3__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_2__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_reclocked_i_2__0\ : STD_LOGIC;
  signal \n_0_reset_time_out_i_2__0\ : STD_LOGIC;
  signal n_0_reset_time_out_i_6 : STD_LOGIC;
  signal n_0_reset_time_out_i_7 : STD_LOGIC;
  signal n_0_reset_time_out_reg : STD_LOGIC;
  signal \n_0_run_phase_alignment_int_i_1__0\ : STD_LOGIC;
  signal n_0_run_phase_alignment_int_i_2 : STD_LOGIC;
  signal n_0_run_phase_alignment_int_reg : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_cdc_sync : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_i_2 : STD_LOGIC;
  signal n_0_time_out_100us_i_1 : STD_LOGIC;
  signal n_0_time_out_100us_i_2 : STD_LOGIC;
  signal n_0_time_out_100us_i_3 : STD_LOGIC;
  signal n_0_time_out_100us_i_4 : STD_LOGIC;
  signal n_0_time_out_100us_i_5 : STD_LOGIC;
  signal n_0_time_out_100us_i_6 : STD_LOGIC;
  signal n_0_time_out_1us_i_1 : STD_LOGIC;
  signal n_0_time_out_1us_i_2 : STD_LOGIC;
  signal n_0_time_out_1us_i_3 : STD_LOGIC;
  signal n_0_time_out_1us_i_4 : STD_LOGIC;
  signal n_0_time_out_1us_i_5 : STD_LOGIC;
  signal n_0_time_out_1us_i_6 : STD_LOGIC;
  signal n_0_time_out_2ms_i_1 : STD_LOGIC;
  signal \n_0_time_out_2ms_i_2__0\ : STD_LOGIC;
  signal n_0_time_out_2ms_i_3 : STD_LOGIC;
  signal n_0_time_out_2ms_i_4 : STD_LOGIC;
  signal n_0_time_out_2ms_i_5 : STD_LOGIC;
  signal n_0_time_out_adapt_i_1 : STD_LOGIC;
  signal n_0_time_out_adapt_i_2 : STD_LOGIC;
  signal n_0_time_out_adapt_i_3 : STD_LOGIC;
  signal n_0_time_out_adapt_i_4 : STD_LOGIC;
  signal n_0_time_out_adapt_i_5 : STD_LOGIC;
  signal n_0_time_out_adapt_i_6 : STD_LOGIC;
  signal n_0_time_out_adapt_i_7 : STD_LOGIC;
  signal n_0_time_out_adapt_i_8 : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_1\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_6__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_5__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_wait_bypass_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_wait_bypass_i_3__0\ : STD_LOGIC;
  signal n_0_time_out_wait_bypass_reg : STD_LOGIC;
  signal n_0_time_tlock_max_i_1 : STD_LOGIC;
  signal n_0_time_tlock_max_i_3 : STD_LOGIC;
  signal \n_0_time_tlock_max_i_4__0\ : STD_LOGIC;
  signal n_0_time_tlock_max_i_5 : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_6__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_7__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_4__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal n_19_cplllock_cdc_sync : STD_LOGIC;
  signal n_19_data_valid_cdc_sync : STD_LOGIC;
  signal n_19_mmcm_lock_reclocked_cdc_sync : STD_LOGIC;
  signal n_19_run_phase_alignment_int_cdc_sync : STD_LOGIC;
  signal n_19_time_out_wait_bypass_cdc_sync : STD_LOGIC;
  signal \n_1_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal n_20_cplllock_cdc_sync : STD_LOGIC;
  signal n_20_data_valid_cdc_sync : STD_LOGIC;
  signal n_20_mmcm_lock_reclocked_cdc_sync : STD_LOGIC;
  signal n_20_run_phase_alignment_int_cdc_sync : STD_LOGIC;
  signal n_20_rx_fsm_reset_done_int_cdc_sync : STD_LOGIC;
  signal n_20_rxresetdone_cdc_sync : STD_LOGIC;
  signal n_20_time_out_wait_bypass_cdc_sync : STD_LOGIC;
  signal n_21_cplllock_cdc_sync : STD_LOGIC;
  signal n_21_data_valid_cdc_sync : STD_LOGIC;
  signal n_22_data_valid_cdc_sync : STD_LOGIC;
  signal n_23_data_valid_cdc_sync : STD_LOGIC;
  signal \n_2_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[24]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[28]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal recclk_mon_count_reset : STD_LOGIC;
  signal rx_fsm_reset_done_int : STD_LOGIC;
  signal rx_state_reg : STD_LOGIC_VECTOR ( 2 to 2 );
  signal rxresetdone_s3 : STD_LOGIC;
  signal time_out_100us : STD_LOGIC;
  signal time_out_1us : STD_LOGIC;
  signal time_out_2ms : STD_LOGIC;
  signal time_out_adapt : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max0 : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[1]_i_6\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[2]_i_2\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[2]_i_3\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[3]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[4]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[7]_i_2\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[7]_i_3\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[8]_i_11\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[8]_i_12\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[8]_i_16\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[8]_i_4\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[8]_i_7\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of GTRXRESET_i_2 : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of GTRXRESET_i_3 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of RXUSERRDY_i_2 : label is "soft_lutpair20";
  attribute counter : integer;
  attribute counter of \adapt_count_reg[0]\ : label is 21;
  attribute counter of \adapt_count_reg[10]\ : label is 21;
  attribute counter of \adapt_count_reg[11]\ : label is 21;
  attribute counter of \adapt_count_reg[12]\ : label is 21;
  attribute counter of \adapt_count_reg[13]\ : label is 21;
  attribute counter of \adapt_count_reg[14]\ : label is 21;
  attribute counter of \adapt_count_reg[15]\ : label is 21;
  attribute counter of \adapt_count_reg[16]\ : label is 21;
  attribute counter of \adapt_count_reg[17]\ : label is 21;
  attribute counter of \adapt_count_reg[18]\ : label is 21;
  attribute counter of \adapt_count_reg[19]\ : label is 21;
  attribute counter of \adapt_count_reg[1]\ : label is 21;
  attribute counter of \adapt_count_reg[20]\ : label is 21;
  attribute counter of \adapt_count_reg[21]\ : label is 21;
  attribute counter of \adapt_count_reg[22]\ : label is 21;
  attribute counter of \adapt_count_reg[23]\ : label is 21;
  attribute counter of \adapt_count_reg[24]\ : label is 21;
  attribute counter of \adapt_count_reg[25]\ : label is 21;
  attribute counter of \adapt_count_reg[26]\ : label is 21;
  attribute counter of \adapt_count_reg[27]\ : label is 21;
  attribute counter of \adapt_count_reg[28]\ : label is 21;
  attribute counter of \adapt_count_reg[29]\ : label is 21;
  attribute counter of \adapt_count_reg[2]\ : label is 21;
  attribute counter of \adapt_count_reg[30]\ : label is 21;
  attribute counter of \adapt_count_reg[31]\ : label is 21;
  attribute counter of \adapt_count_reg[3]\ : label is 21;
  attribute counter of \adapt_count_reg[4]\ : label is 21;
  attribute counter of \adapt_count_reg[5]\ : label is 21;
  attribute counter of \adapt_count_reg[6]\ : label is 21;
  attribute counter of \adapt_count_reg[7]\ : label is 21;
  attribute counter of \adapt_count_reg[8]\ : label is 21;
  attribute counter of \adapt_count_reg[9]\ : label is 21;
  attribute SOFT_HLUTNM of adapt_count_reset_i_2 : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of adapt_count_reset_i_3 : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of check_tlock_max_i_2 : label is "soft_lutpair20";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \init_wait_count[0]_i_1__0\ : label is true;
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_1__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_2__0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_4__0\ : label is "soft_lutpair23";
  attribute counter of \init_wait_count_reg[0]\ : label is 20;
  attribute counter of \init_wait_count_reg[1]\ : label is 20;
  attribute counter of \init_wait_count_reg[2]\ : label is 20;
  attribute counter of \init_wait_count_reg[3]\ : label is 20;
  attribute counter of \init_wait_count_reg[4]\ : label is 20;
  attribute counter of \init_wait_count_reg[5]\ : label is 20;
  attribute counter of \init_wait_count_reg[6]\ : label is 20;
  attribute counter of \init_wait_count_reg[7]\ : label is 20;
  attribute RETAIN_INVERTER of \mmcm_lock_count[0]_i_1__0\ : label is true;
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_2__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_3__0\ : label is "soft_lutpair38";
  attribute counter of \mmcm_lock_count_reg[0]\ : label is 25;
  attribute counter of \mmcm_lock_count_reg[1]\ : label is 25;
  attribute counter of \mmcm_lock_count_reg[2]\ : label is 25;
  attribute counter of \mmcm_lock_count_reg[3]\ : label is 25;
  attribute counter of \mmcm_lock_count_reg[4]\ : label is 25;
  attribute counter of \mmcm_lock_count_reg[5]\ : label is 25;
  attribute counter of \mmcm_lock_count_reg[6]\ : label is 25;
  attribute counter of \mmcm_lock_count_reg[7]\ : label is 25;
  attribute counter of \mmcm_lock_count_reg[8]\ : label is 25;
  attribute counter of \mmcm_lock_count_reg[9]\ : label is 25;
  attribute SOFT_HLUTNM of reset_time_out_i_6 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of reset_time_out_i_7 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of time_out_100us_i_1 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of time_out_100us_i_4 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of time_out_100us_i_5 : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of time_out_1us_i_5 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \time_out_2ms_i_2__0\ : label is "soft_lutpair32";
  attribute counter of \time_out_counter_reg[0]\ : label is 19;
  attribute counter of \time_out_counter_reg[10]\ : label is 19;
  attribute counter of \time_out_counter_reg[11]\ : label is 19;
  attribute counter of \time_out_counter_reg[12]\ : label is 19;
  attribute counter of \time_out_counter_reg[13]\ : label is 19;
  attribute counter of \time_out_counter_reg[14]\ : label is 19;
  attribute counter of \time_out_counter_reg[15]\ : label is 19;
  attribute counter of \time_out_counter_reg[16]\ : label is 19;
  attribute counter of \time_out_counter_reg[17]\ : label is 19;
  attribute counter of \time_out_counter_reg[18]\ : label is 19;
  attribute counter of \time_out_counter_reg[1]\ : label is 19;
  attribute counter of \time_out_counter_reg[2]\ : label is 19;
  attribute counter of \time_out_counter_reg[3]\ : label is 19;
  attribute counter of \time_out_counter_reg[4]\ : label is 19;
  attribute counter of \time_out_counter_reg[5]\ : label is 19;
  attribute counter of \time_out_counter_reg[6]\ : label is 19;
  attribute counter of \time_out_counter_reg[7]\ : label is 19;
  attribute counter of \time_out_counter_reg[8]\ : label is 19;
  attribute counter of \time_out_counter_reg[9]\ : label is 19;
  attribute SOFT_HLUTNM of time_tlock_max_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of time_tlock_max_i_3 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \time_tlock_max_i_4__0\ : label is "soft_lutpair26";
  attribute counter of \wait_bypass_count_reg[0]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[10]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[11]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[12]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[1]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[2]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[3]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[4]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[5]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[6]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[7]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[8]\ : label is 22;
  attribute counter of \wait_bypass_count_reg[9]\ : label is 22;
begin
  GTRXRESET <= \^gtrxreset\;
  gt_rxdfelfhold_i <= \^gt_rxdfelfhold_i\;
  gt_rxuserrdy_i <= \^gt_rxuserrdy_i\;
\FSM_onehot_rx_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5530550055005500"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[1]_i_5\,
      I1 => \n_0_FSM_onehot_rx_state[2]_i_2\,
      I2 => time_out_2ms,
      I3 => \n_0_FSM_onehot_rx_state_reg[0]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I5 => \n_0_FSM_onehot_rx_state[8]_i_12\,
      O => \n_0_FSM_onehot_rx_state[1]_i_2\
    );
\FSM_onehot_rx_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEF00"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[2]_i_2\,
      I1 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I2 => \n_0_FSM_onehot_rx_state[8]_i_16\,
      I3 => \n_0_FSM_onehot_rx_state_reg[4]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I5 => \n_0_FSM_onehot_rx_state[7]_i_3\,
      O => \n_0_FSM_onehot_rx_state[1]_i_4\
    );
\FSM_onehot_rx_state[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[4]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I5 => \n_0_FSM_onehot_rx_state_reg[3]\,
      O => \n_0_FSM_onehot_rx_state[1]_i_5\
    );
\FSM_onehot_rx_state[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => n_0_reset_time_out_reg,
      I1 => time_out_2ms,
      O => \n_0_FSM_onehot_rx_state[1]_i_6\
    );
\FSM_onehot_rx_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[2]_i_2\,
      I1 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I2 => \n_0_FSM_onehot_rx_state[7]_i_3\,
      I3 => \n_0_FSM_onehot_rx_state[2]_i_3\,
      I4 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I5 => \n_0_FSM_onehot_rx_state_reg[1]\,
      O => \n_0_FSM_onehot_rx_state[2]_i_1\
    );
\FSM_onehot_rx_state[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[6]\,
      O => \n_0_FSM_onehot_rx_state[2]_i_2\
    );
\FSM_onehot_rx_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[4]\,
      O => \n_0_FSM_onehot_rx_state[2]_i_3\
    );
\FSM_onehot_rx_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
    port map (
      I0 => time_out_2ms,
      I1 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[1]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[0]\,
      I4 => \n_0_FSM_onehot_rx_state[8]_i_12\,
      I5 => \n_0_FSM_onehot_rx_state[3]_i_2\,
      O => \n_0_FSM_onehot_rx_state[3]_i_1\
    );
\FSM_onehot_rx_state[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[7]\,
      O => \n_0_FSM_onehot_rx_state[3]_i_2\
    );
\FSM_onehot_rx_state[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[6]_i_2\,
      I1 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[4]\,
      O => \n_0_FSM_onehot_rx_state[4]_i_1\
    );
\FSM_onehot_rx_state[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008A00"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[6]_i_2\,
      I1 => n_0_reset_time_out_reg,
      I2 => time_tlock_max,
      I3 => \n_0_FSM_onehot_rx_state_reg[4]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I5 => \n_0_FSM_onehot_rx_state_reg[5]\,
      O => \n_0_FSM_onehot_rx_state[5]_i_1\
    );
\FSM_onehot_rx_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000A200"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[6]_i_2\,
      I1 => time_out_2ms,
      I2 => n_0_reset_time_out_reg,
      I3 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I5 => \n_0_FSM_onehot_rx_state_reg[4]\,
      O => \n_0_FSM_onehot_rx_state[6]_i_1\
    );
\FSM_onehot_rx_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[0]\,
      I5 => \n_0_FSM_onehot_rx_state_reg[1]\,
      O => \n_0_FSM_onehot_rx_state[6]_i_2\
    );
\FSM_onehot_rx_state[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[1]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[7]\,
      O => \n_0_FSM_onehot_rx_state[7]_i_2\
    );
\FSM_onehot_rx_state[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[0]\,
      O => \n_0_FSM_onehot_rx_state[7]_i_3\
    );
\FSM_onehot_rx_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEAAAAAAAA"
    )
    port map (
      I0 => rxfsm_soft_reset_r,
      I1 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I4 => rx_state_reg(2),
      I5 => gt0_pllrefclklost_i,
      O => \n_0_FSM_onehot_rx_state[8]_i_1\
    );
\FSM_onehot_rx_state[8]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000EEE2"
    )
    port map (
      I0 => init_wait_done,
      I1 => rx_state_reg(2),
      I2 => \n_0_FSM_onehot_rx_state[8]_i_16\,
      I3 => mmcm_lock_reclocked,
      I4 => n_0_RXUSERRDY_i_2,
      I5 => \n_0_FSM_onehot_rx_state[8]_i_7\,
      O => \n_0_FSM_onehot_rx_state[8]_i_10\
    );
\FSM_onehot_rx_state[8]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[1]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[0]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[2]\,
      O => \n_0_FSM_onehot_rx_state[8]_i_11\
    );
\FSM_onehot_rx_state[8]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[4]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[3]\,
      O => \n_0_FSM_onehot_rx_state[8]_i_12\
    );
\FSM_onehot_rx_state[8]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[4]\,
      O => \n_0_FSM_onehot_rx_state[8]_i_15\
    );
\FSM_onehot_rx_state[8]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_tlock_max,
      I1 => n_0_reset_time_out_reg,
      O => \n_0_FSM_onehot_rx_state[8]_i_16\
    );
\FSM_onehot_rx_state[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[4]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[5]\,
      O => rx_state_reg(2)
    );
\FSM_onehot_rx_state[8]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[1]\,
      O => \n_0_FSM_onehot_rx_state[8]_i_7\
    );
\FSM_onehot_rx_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => init_clk_in,
      CE => n_19_data_valid_cdc_sync,
      D => \<const0>\,
      Q => \n_0_FSM_onehot_rx_state_reg[0]\,
      S => \n_0_FSM_onehot_rx_state[8]_i_1\
    );
\FSM_onehot_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_19_data_valid_cdc_sync,
      D => n_20_time_out_wait_bypass_cdc_sync,
      Q => \n_0_FSM_onehot_rx_state_reg[1]\,
      R => \n_0_FSM_onehot_rx_state[8]_i_1\
    );
\FSM_onehot_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_19_data_valid_cdc_sync,
      D => \n_0_FSM_onehot_rx_state[2]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[2]\,
      R => \n_0_FSM_onehot_rx_state[8]_i_1\
    );
\FSM_onehot_rx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_19_data_valid_cdc_sync,
      D => \n_0_FSM_onehot_rx_state[3]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[3]\,
      R => \n_0_FSM_onehot_rx_state[8]_i_1\
    );
\FSM_onehot_rx_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_19_data_valid_cdc_sync,
      D => \n_0_FSM_onehot_rx_state[4]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[4]\,
      R => \n_0_FSM_onehot_rx_state[8]_i_1\
    );
\FSM_onehot_rx_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_19_data_valid_cdc_sync,
      D => \n_0_FSM_onehot_rx_state[5]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[5]\,
      R => \n_0_FSM_onehot_rx_state[8]_i_1\
    );
\FSM_onehot_rx_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_19_data_valid_cdc_sync,
      D => \n_0_FSM_onehot_rx_state[6]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[6]\,
      R => \n_0_FSM_onehot_rx_state[8]_i_1\
    );
\FSM_onehot_rx_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_19_data_valid_cdc_sync,
      D => n_19_time_out_wait_bypass_cdc_sync,
      Q => \n_0_FSM_onehot_rx_state_reg[7]\,
      R => \n_0_FSM_onehot_rx_state[8]_i_1\
    );
\FSM_onehot_rx_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_19_data_valid_cdc_sync,
      D => n_20_data_valid_cdc_sync,
      Q => \n_0_FSM_onehot_rx_state_reg[8]\,
      R => \n_0_FSM_onehot_rx_state[8]_i_1\
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
GTRXRESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000002AEA2A2A"
    )
    port map (
      I0 => \^gtrxreset\,
      I1 => \n_0_FSM_onehot_rx_state[8]_i_7\,
      I2 => n_0_adapt_count_reset_i_3,
      I3 => n_0_GTRXRESET_i_2,
      I4 => n_0_GTRXRESET_i_3,
      I5 => \n_0_FSM_onehot_rx_state[8]_i_1\,
      O => n_0_GTRXRESET_i_1
    );
GTRXRESET_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[2]\,
      O => n_0_GTRXRESET_i_2
    );
GTRXRESET_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[6]\,
      O => n_0_GTRXRESET_i_3
    );
GTRXRESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_GTRXRESET_i_1,
      Q => \^gtrxreset\,
      R => \<const0>\
    );
RXDFEAGCHOLD_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAABAAA"
    )
    port map (
      I0 => \^gt_rxdfelfhold_i\,
      I1 => n_0_RXDFEAGCHOLD_i_2,
      I2 => time_out_adapt,
      I3 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I4 => rx_state_reg(2),
      I5 => \n_0_FSM_onehot_rx_state[8]_i_1\,
      O => n_0_RXDFEAGCHOLD_i_1
    );
RXDFEAGCHOLD_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[1]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I5 => \n_0_FSM_onehot_rx_state_reg[5]\,
      O => n_0_RXDFEAGCHOLD_i_2
    );
RXDFEAGCHOLD_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_RXDFEAGCHOLD_i_1,
      Q => \^gt_rxdfelfhold_i\,
      R => \<const0>\
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BAAA8A8A"
    )
    port map (
      I0 => \^gt_rxuserrdy_i\,
      I1 => n_0_RXUSERRDY_i_2,
      I2 => \n_0_FSM_onehot_rx_state[8]_i_7\,
      I3 => gt_txuserrdy_i,
      I4 => rx_state_reg(2),
      I5 => \n_0_FSM_onehot_rx_state[8]_i_1\,
      O => n_0_RXUSERRDY_i_1
    );
RXUSERRDY_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[6]\,
      O => n_0_RXUSERRDY_i_2
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_RXUSERRDY_i_1,
      Q => \^gt_rxuserrdy_i\,
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\adapt_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => n_0_time_out_adapt_i_2,
      O => \n_0_adapt_count[0]_i_1\
    );
\adapt_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(3),
      O => \n_0_adapt_count[0]_i_3\
    );
\adapt_count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(2),
      O => \n_0_adapt_count[0]_i_4\
    );
\adapt_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(1),
      O => \n_0_adapt_count[0]_i_5\
    );
\adapt_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => adapt_count_reg(0),
      O => \n_0_adapt_count[0]_i_6\
    );
\adapt_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(15),
      O => \n_0_adapt_count[12]_i_2\
    );
\adapt_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(14),
      O => \n_0_adapt_count[12]_i_3\
    );
\adapt_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(13),
      O => \n_0_adapt_count[12]_i_4\
    );
\adapt_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(12),
      O => \n_0_adapt_count[12]_i_5\
    );
\adapt_count[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(19),
      O => \n_0_adapt_count[16]_i_2\
    );
\adapt_count[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(18),
      O => \n_0_adapt_count[16]_i_3\
    );
\adapt_count[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(17),
      O => \n_0_adapt_count[16]_i_4\
    );
\adapt_count[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(16),
      O => \n_0_adapt_count[16]_i_5\
    );
\adapt_count[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(23),
      O => \n_0_adapt_count[20]_i_2\
    );
\adapt_count[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(22),
      O => \n_0_adapt_count[20]_i_3\
    );
\adapt_count[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(21),
      O => \n_0_adapt_count[20]_i_4\
    );
\adapt_count[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(20),
      O => \n_0_adapt_count[20]_i_5\
    );
\adapt_count[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(27),
      O => \n_0_adapt_count[24]_i_2\
    );
\adapt_count[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(26),
      O => \n_0_adapt_count[24]_i_3\
    );
\adapt_count[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(25),
      O => \n_0_adapt_count[24]_i_4\
    );
\adapt_count[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(24),
      O => \n_0_adapt_count[24]_i_5\
    );
\adapt_count[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(31),
      O => \n_0_adapt_count[28]_i_2\
    );
\adapt_count[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(30),
      O => \n_0_adapt_count[28]_i_3\
    );
\adapt_count[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(29),
      O => \n_0_adapt_count[28]_i_4\
    );
\adapt_count[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(28),
      O => \n_0_adapt_count[28]_i_5\
    );
\adapt_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(7),
      O => \n_0_adapt_count[4]_i_2\
    );
\adapt_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(6),
      O => \n_0_adapt_count[4]_i_3\
    );
\adapt_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(5),
      O => \n_0_adapt_count[4]_i_4\
    );
\adapt_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(4),
      O => \n_0_adapt_count[4]_i_5\
    );
\adapt_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(11),
      O => \n_0_adapt_count[8]_i_2\
    );
\adapt_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(10),
      O => \n_0_adapt_count[8]_i_3\
    );
\adapt_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(9),
      O => \n_0_adapt_count[8]_i_4\
    );
\adapt_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => adapt_count_reg(8),
      O => \n_0_adapt_count[8]_i_5\
    );
\adapt_count_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[0]_i_2\,
      Q => adapt_count_reg(0),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \<const0>\,
      CO(3) => \n_0_adapt_count_reg[0]_i_2\,
      CO(2) => \n_1_adapt_count_reg[0]_i_2\,
      CO(1) => \n_2_adapt_count_reg[0]_i_2\,
      CO(0) => \n_3_adapt_count_reg[0]_i_2\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const1>\,
      O(3) => \n_4_adapt_count_reg[0]_i_2\,
      O(2) => \n_5_adapt_count_reg[0]_i_2\,
      O(1) => \n_6_adapt_count_reg[0]_i_2\,
      O(0) => \n_7_adapt_count_reg[0]_i_2\,
      S(3) => \n_0_adapt_count[0]_i_3\,
      S(2) => \n_0_adapt_count[0]_i_4\,
      S(1) => \n_0_adapt_count[0]_i_5\,
      S(0) => \n_0_adapt_count[0]_i_6\
    );
\adapt_count_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[8]_i_1\,
      Q => adapt_count_reg(10),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[8]_i_1\,
      Q => adapt_count_reg(11),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[12]_i_1\,
      Q => adapt_count_reg(12),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[8]_i_1\,
      CO(3) => \n_0_adapt_count_reg[12]_i_1\,
      CO(2) => \n_1_adapt_count_reg[12]_i_1\,
      CO(1) => \n_2_adapt_count_reg[12]_i_1\,
      CO(0) => \n_3_adapt_count_reg[12]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_adapt_count_reg[12]_i_1\,
      O(2) => \n_5_adapt_count_reg[12]_i_1\,
      O(1) => \n_6_adapt_count_reg[12]_i_1\,
      O(0) => \n_7_adapt_count_reg[12]_i_1\,
      S(3) => \n_0_adapt_count[12]_i_2\,
      S(2) => \n_0_adapt_count[12]_i_3\,
      S(1) => \n_0_adapt_count[12]_i_4\,
      S(0) => \n_0_adapt_count[12]_i_5\
    );
\adapt_count_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[12]_i_1\,
      Q => adapt_count_reg(13),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[12]_i_1\,
      Q => adapt_count_reg(14),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[12]_i_1\,
      Q => adapt_count_reg(15),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[16]_i_1\,
      Q => adapt_count_reg(16),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[12]_i_1\,
      CO(3) => \n_0_adapt_count_reg[16]_i_1\,
      CO(2) => \n_1_adapt_count_reg[16]_i_1\,
      CO(1) => \n_2_adapt_count_reg[16]_i_1\,
      CO(0) => \n_3_adapt_count_reg[16]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_adapt_count_reg[16]_i_1\,
      O(2) => \n_5_adapt_count_reg[16]_i_1\,
      O(1) => \n_6_adapt_count_reg[16]_i_1\,
      O(0) => \n_7_adapt_count_reg[16]_i_1\,
      S(3) => \n_0_adapt_count[16]_i_2\,
      S(2) => \n_0_adapt_count[16]_i_3\,
      S(1) => \n_0_adapt_count[16]_i_4\,
      S(0) => \n_0_adapt_count[16]_i_5\
    );
\adapt_count_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[16]_i_1\,
      Q => adapt_count_reg(17),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[16]_i_1\,
      Q => adapt_count_reg(18),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[16]_i_1\,
      Q => adapt_count_reg(19),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[0]_i_2\,
      Q => adapt_count_reg(1),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[20]_i_1\,
      Q => adapt_count_reg(20),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[16]_i_1\,
      CO(3) => \n_0_adapt_count_reg[20]_i_1\,
      CO(2) => \n_1_adapt_count_reg[20]_i_1\,
      CO(1) => \n_2_adapt_count_reg[20]_i_1\,
      CO(0) => \n_3_adapt_count_reg[20]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_adapt_count_reg[20]_i_1\,
      O(2) => \n_5_adapt_count_reg[20]_i_1\,
      O(1) => \n_6_adapt_count_reg[20]_i_1\,
      O(0) => \n_7_adapt_count_reg[20]_i_1\,
      S(3) => \n_0_adapt_count[20]_i_2\,
      S(2) => \n_0_adapt_count[20]_i_3\,
      S(1) => \n_0_adapt_count[20]_i_4\,
      S(0) => \n_0_adapt_count[20]_i_5\
    );
\adapt_count_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[20]_i_1\,
      Q => adapt_count_reg(21),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[20]_i_1\,
      Q => adapt_count_reg(22),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[20]_i_1\,
      Q => adapt_count_reg(23),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[24]_i_1\,
      Q => adapt_count_reg(24),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[24]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[20]_i_1\,
      CO(3) => \n_0_adapt_count_reg[24]_i_1\,
      CO(2) => \n_1_adapt_count_reg[24]_i_1\,
      CO(1) => \n_2_adapt_count_reg[24]_i_1\,
      CO(0) => \n_3_adapt_count_reg[24]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_adapt_count_reg[24]_i_1\,
      O(2) => \n_5_adapt_count_reg[24]_i_1\,
      O(1) => \n_6_adapt_count_reg[24]_i_1\,
      O(0) => \n_7_adapt_count_reg[24]_i_1\,
      S(3) => \n_0_adapt_count[24]_i_2\,
      S(2) => \n_0_adapt_count[24]_i_3\,
      S(1) => \n_0_adapt_count[24]_i_4\,
      S(0) => \n_0_adapt_count[24]_i_5\
    );
\adapt_count_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[24]_i_1\,
      Q => adapt_count_reg(25),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[24]_i_1\,
      Q => adapt_count_reg(26),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[24]_i_1\,
      Q => adapt_count_reg(27),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[28]_i_1\,
      Q => adapt_count_reg(28),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[28]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[24]_i_1\,
      CO(3) => \NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_adapt_count_reg[28]_i_1\,
      CO(1) => \n_2_adapt_count_reg[28]_i_1\,
      CO(0) => \n_3_adapt_count_reg[28]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_adapt_count_reg[28]_i_1\,
      O(2) => \n_5_adapt_count_reg[28]_i_1\,
      O(1) => \n_6_adapt_count_reg[28]_i_1\,
      O(0) => \n_7_adapt_count_reg[28]_i_1\,
      S(3) => \n_0_adapt_count[28]_i_2\,
      S(2) => \n_0_adapt_count[28]_i_3\,
      S(1) => \n_0_adapt_count[28]_i_4\,
      S(0) => \n_0_adapt_count[28]_i_5\
    );
\adapt_count_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[28]_i_1\,
      Q => adapt_count_reg(29),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[0]_i_2\,
      Q => adapt_count_reg(2),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[28]_i_1\,
      Q => adapt_count_reg(30),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[28]_i_1\,
      Q => adapt_count_reg(31),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[0]_i_2\,
      Q => adapt_count_reg(3),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[4]_i_1\,
      Q => adapt_count_reg(4),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[0]_i_2\,
      CO(3) => \n_0_adapt_count_reg[4]_i_1\,
      CO(2) => \n_1_adapt_count_reg[4]_i_1\,
      CO(1) => \n_2_adapt_count_reg[4]_i_1\,
      CO(0) => \n_3_adapt_count_reg[4]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_adapt_count_reg[4]_i_1\,
      O(2) => \n_5_adapt_count_reg[4]_i_1\,
      O(1) => \n_6_adapt_count_reg[4]_i_1\,
      O(0) => \n_7_adapt_count_reg[4]_i_1\,
      S(3) => \n_0_adapt_count[4]_i_2\,
      S(2) => \n_0_adapt_count[4]_i_3\,
      S(1) => \n_0_adapt_count[4]_i_4\,
      S(0) => \n_0_adapt_count[4]_i_5\
    );
\adapt_count_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[4]_i_1\,
      Q => adapt_count_reg(5),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_5_adapt_count_reg[4]_i_1\,
      Q => adapt_count_reg(6),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_4_adapt_count_reg[4]_i_1\,
      Q => adapt_count_reg(7),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_7_adapt_count_reg[8]_i_1\,
      Q => adapt_count_reg(8),
      R => recclk_mon_count_reset
    );
\adapt_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_count_reg[4]_i_1\,
      CO(3) => \n_0_adapt_count_reg[8]_i_1\,
      CO(2) => \n_1_adapt_count_reg[8]_i_1\,
      CO(1) => \n_2_adapt_count_reg[8]_i_1\,
      CO(0) => \n_3_adapt_count_reg[8]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_adapt_count_reg[8]_i_1\,
      O(2) => \n_5_adapt_count_reg[8]_i_1\,
      O(1) => \n_6_adapt_count_reg[8]_i_1\,
      O(0) => \n_7_adapt_count_reg[8]_i_1\,
      S(3) => \n_0_adapt_count[8]_i_2\,
      S(2) => \n_0_adapt_count[8]_i_3\,
      S(1) => \n_0_adapt_count[8]_i_4\,
      S(0) => \n_0_adapt_count[8]_i_5\
    );
\adapt_count_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \n_0_adapt_count[0]_i_1\,
      D => \n_6_adapt_count_reg[8]_i_1\,
      Q => adapt_count_reg(9),
      R => recclk_mon_count_reset
    );
adapt_count_reset_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[3]\,
      O => adapt_count_reset
    );
adapt_count_reset_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[4]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[6]\,
      O => n_0_adapt_count_reset_i_3
    );
adapt_count_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_21_cplllock_cdc_sync,
      Q => recclk_mon_count_reset,
      R => \<const0>\
    );
check_tlock_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAA8ABAA"
    )
    port map (
      I0 => n_0_check_tlock_max_reg,
      I1 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I2 => n_0_check_tlock_max_i_2,
      I3 => rx_state_reg(2),
      I4 => \n_0_FSM_onehot_rx_state[8]_i_7\,
      I5 => \n_0_FSM_onehot_rx_state[8]_i_1\,
      O => n_0_check_tlock_max_i_1
    );
check_tlock_max_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[3]\,
      O => n_0_check_tlock_max_i_2
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_check_tlock_max_i_1,
      Q => n_0_check_tlock_max_reg,
      R => \<const0>\
    );
cplllock_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_7
    port map (
      I1 => \n_0_FSM_onehot_rx_state[8]_i_7\,
      I2 => I2,
      I3 => n_0_check_tlock_max_i_2,
      I4 => n_0_adapt_count_reset_i_3,
      I5 => \n_0_FSM_onehot_rx_state[8]_i_1\,
      O1 => n_19_cplllock_cdc_sync,
      O2 => n_20_cplllock_cdc_sync,
      O3 => n_21_cplllock_cdc_sync,
      O78(1 downto 0) => O78(1 downto 0),
      O79(1 downto 0) => O79(1 downto 0),
      O80(1 downto 0) => O80(1 downto 0),
      O81(1 downto 0) => O81(1 downto 0),
      O82(1 downto 0) => O82(1 downto 0),
      O83(1 downto 0) => O83(1 downto 0),
      adapt_count_reset => adapt_count_reset,
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      recclk_mon_count_reset => recclk_mon_count_reset,
      rx_state_reg(0) => rx_state_reg(2),
      s_out_d1_cdc_to_84 => s_out_d1_cdc_to_84,
      s_out_d2_85 => s_out_d2_85,
      s_out_d3_86 => s_out_d3_86,
      s_out_d4_87 => s_out_d4_87,
      s_out_d5_88 => s_out_d5_88,
      s_out_d6_89 => s_out_d6_89,
      s_out_d7_90 => s_out_d7_90,
      time_out_2ms => time_out_2ms
    );
data_valid_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_4
    port map (
      D(0) => n_20_data_valid_cdc_sync,
      E(0) => n_19_data_valid_cdc_sync,
      I1 => n_20_rxresetdone_cdc_sync,
      I10 => \n_0_FSM_onehot_rx_state[8]_i_12\,
      I11 => \n_0_reset_time_out_i_2__0\,
      I12 => n_19_cplllock_cdc_sync,
      I13 => \n_0_FSM_onehot_rx_state[8]_i_1\,
      I14 => n_0_rx_fsm_reset_done_int_i_2,
      I2 => \n_0_FSM_onehot_rx_state[8]_i_7\,
      I3 => n_20_cplllock_cdc_sync,
      I4 => \n_0_FSM_onehot_rx_state[8]_i_10\,
      I5 => \n_0_FSM_onehot_rx_state[2]_i_2\,
      I6 => n_0_GTRXRESET_i_2,
      I7 => n_0_check_tlock_max_i_2,
      I8 => n_0_reset_time_out_reg,
      I9 => \n_0_FSM_onehot_rx_state[8]_i_11\,
      O1 => n_21_data_valid_cdc_sync,
      O2 => n_22_data_valid_cdc_sync,
      O3 => n_23_data_valid_cdc_sync,
      O72(1 downto 0) => O72(1 downto 0),
      O73(1 downto 0) => O73(1 downto 0),
      O74(1 downto 0) => O74(1 downto 0),
      O75(1 downto 0) => O75(1 downto 0),
      O76(1 downto 0) => O76(1 downto 0),
      O77(1 downto 0) => O77(1 downto 0),
      Q(6) => \n_0_FSM_onehot_rx_state_reg[8]\,
      Q(5) => \n_0_FSM_onehot_rx_state_reg[7]\,
      Q(4) => \n_0_FSM_onehot_rx_state_reg[6]\,
      Q(3) => \n_0_FSM_onehot_rx_state_reg[5]\,
      Q(2) => \n_0_FSM_onehot_rx_state_reg[4]\,
      Q(1) => \n_0_FSM_onehot_rx_state_reg[3]\,
      Q(0) => \n_0_FSM_onehot_rx_state_reg[2]\,
      adapt_count_reset => adapt_count_reset,
      init_clk_in => init_clk_in,
      rx_cdrlocked => rx_cdrlocked,
      rx_fsm_reset_done_int => rx_fsm_reset_done_int,
      rx_state_reg(0) => rx_state_reg(2),
      rxfsm_data_valid_r => rxfsm_data_valid_r,
      rxresetdone_s3 => rxresetdone_s3,
      s_out_d1_cdc_to_77 => s_out_d1_cdc_to_77,
      s_out_d2_78 => s_out_d2_78,
      s_out_d3_79 => s_out_d3_79,
      s_out_d4_80 => s_out_d4_80,
      s_out_d5_81 => s_out_d5_81,
      s_out_d6_82 => s_out_d6_82,
      s_out_d7_83 => s_out_d7_83,
      time_out_100us => time_out_100us,
      time_out_1us => time_out_1us
    );
\init_wait_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\init_wait_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\init_wait_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      O => \p_0_in__0\(2)
    );
\init_wait_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(2),
      O => \p_0_in__0\(3)
    );
\init_wait_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(3),
      I4 => \init_wait_count_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(3),
      I5 => \init_wait_count_reg__0\(4),
      O => \p_0_in__0\(5)
    );
\init_wait_count[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \n_0_init_wait_count[7]_i_4__0\,
      I2 => \init_wait_count_reg__0\(5),
      O => \p_0_in__0\(6)
    );
\init_wait_count[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \n_0_init_wait_count[7]_i_3__0\,
      O => \n_0_init_wait_count[7]_i_1__0\
    );
\init_wait_count[7]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(7),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \n_0_init_wait_count[7]_i_4__0\,
      I3 => \init_wait_count_reg__0\(6),
      O => \p_0_in__0\(7)
    );
\init_wait_count[7]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \init_wait_count_reg__0\(2),
      I3 => \init_wait_count_reg__0\(4),
      I4 => \init_wait_count_reg__0\(3),
      I5 => \init_wait_count_reg__0\(7),
      O => \n_0_init_wait_count[7]_i_3__0\
    );
\init_wait_count[7]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(2),
      O => \n_0_init_wait_count[7]_i_4__0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      D => \p_0_in__0\(0),
      Q => \init_wait_count_reg__0\(0),
      R => \<const0>\
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      D => \p_0_in__0\(1),
      Q => \init_wait_count_reg__0\(1),
      R => \<const0>\
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      D => \p_0_in__0\(2),
      Q => \init_wait_count_reg__0\(2),
      R => \<const0>\
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      D => \p_0_in__0\(3),
      Q => \init_wait_count_reg__0\(3),
      R => \<const0>\
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      D => \p_0_in__0\(4),
      Q => \init_wait_count_reg__0\(4),
      R => \<const0>\
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      D => \p_0_in__0\(5),
      Q => \init_wait_count_reg__0\(5),
      R => \<const0>\
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      D => \p_0_in__0\(6),
      Q => \init_wait_count_reg__0\(6),
      R => \<const0>\
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1__0\,
      D => \p_0_in__0\(7),
      Q => \init_wait_count_reg__0\(7),
      R => \<const0>\
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => init_wait_done,
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \n_0_init_wait_count[7]_i_3__0\,
      O => \n_0_init_wait_done_i_1__0\
    );
init_wait_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_0_init_wait_done_i_1__0\,
      Q => init_wait_done,
      R => \<const0>\
    );
\mmcm_lock_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__2\(0)
    );
\mmcm_lock_count[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__2\(1)
    );
\mmcm_lock_count[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__2\(2)
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__2\(3)
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__2\(4)
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(5),
      I1 => \mmcm_lock_count_reg__0\(3),
      I2 => \mmcm_lock_count_reg__0\(2),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(1),
      I5 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__2\(5)
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \n_0_mmcm_lock_count[7]_i_2__0\,
      I2 => \mmcm_lock_count_reg__0\(3),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(5),
      I5 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__2\(6)
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA6AAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \n_0_mmcm_lock_count[7]_i_2__0\,
      I3 => \n_0_mmcm_lock_count[7]_i_3__0\,
      I4 => \mmcm_lock_count_reg__0\(4),
      I5 => \mmcm_lock_count_reg__0\(5),
      O => \p_0_in__2\(7)
    );
\mmcm_lock_count[7]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(1),
      I1 => \mmcm_lock_count_reg__0\(0),
      O => \n_0_mmcm_lock_count[7]_i_2__0\
    );
\mmcm_lock_count[7]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(3),
      O => \n_0_mmcm_lock_count[7]_i_3__0\
    );
\mmcm_lock_count[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \n_0_mmcm_lock_reclocked_i_2__0\,
      O => \p_0_in__2\(8)
    );
\mmcm_lock_count[9]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \n_0_mmcm_lock_reclocked_i_2__0\,
      I2 => \mmcm_lock_count_reg__0\(8),
      O => \n_0_mmcm_lock_count[9]_i_2__0\
    );
\mmcm_lock_count[9]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \n_0_mmcm_lock_reclocked_i_2__0\,
      I2 => \mmcm_lock_count_reg__0\(8),
      O => \p_0_in__2\(9)
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => n_19_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => n_19_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(2),
      Q => \mmcm_lock_count_reg__0\(2),
      R => n_19_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(3),
      Q => \mmcm_lock_count_reg__0\(3),
      R => n_19_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(4),
      Q => \mmcm_lock_count_reg__0\(4),
      R => n_19_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(5),
      Q => \mmcm_lock_count_reg__0\(5),
      R => n_19_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => n_19_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => n_19_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => n_19_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => n_19_mmcm_lock_reclocked_cdc_sync
    );
mmcm_lock_reclocked_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_6
    port map (
      I1 => I1,
      I2 => \n_0_mmcm_lock_reclocked_i_2__0\,
      O1 => n_20_mmcm_lock_reclocked_cdc_sync,
      O66(1 downto 0) => O66(1 downto 0),
      O67(1 downto 0) => O67(1 downto 0),
      O68(1 downto 0) => O68(1 downto 0),
      O69(1 downto 0) => O69(1 downto 0),
      O70(1 downto 0) => O70(1 downto 0),
      O71(1 downto 0) => O71(1 downto 0),
      Q(1 downto 0) => \mmcm_lock_count_reg__0\(9 downto 8),
      SR(0) => n_19_mmcm_lock_reclocked_cdc_sync,
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      s_out_d1_cdc_to_70 => s_out_d1_cdc_to_70,
      s_out_d2_71 => s_out_d2_71,
      s_out_d3_72 => s_out_d3_72,
      s_out_d4_73 => s_out_d4_73,
      s_out_d5_74 => s_out_d5_74,
      s_out_d6_75 => s_out_d6_75,
      s_out_d7_76 => s_out_d7_76
    );
\mmcm_lock_reclocked_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(4),
      I3 => \n_0_mmcm_lock_count[7]_i_3__0\,
      I4 => \n_0_mmcm_lock_count[7]_i_2__0\,
      I5 => \mmcm_lock_count_reg__0\(6),
      O => \n_0_mmcm_lock_reclocked_i_2__0\
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_20_mmcm_lock_reclocked_cdc_sync,
      Q => mmcm_lock_reclocked,
      R => \<const0>\
    );
qplllock_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_2
    port map (
      I1 => I1,
      O84(1 downto 0) => O84(1 downto 0),
      O85(1 downto 0) => O85(1 downto 0),
      O86(1 downto 0) => O86(1 downto 0),
      O87(1 downto 0) => O87(1 downto 0),
      O88(1 downto 0) => O88(1 downto 0),
      O89(1 downto 0) => O89(1 downto 0),
      init_clk_in => init_clk_in,
      s_out_d1_cdc_to_91 => s_out_d1_cdc_to_91,
      s_out_d2_92 => s_out_d2_92,
      s_out_d3_93 => s_out_d3_93,
      s_out_d4_94 => s_out_d4_94,
      s_out_d5_95 => s_out_d5_95,
      s_out_d6_96 => s_out_d6_96,
      s_out_d7_97 => s_out_d7_97
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF00FFE2E2"
    )
    port map (
      I0 => n_0_reset_time_out_i_6,
      I1 => adapt_count_reset,
      I2 => n_0_reset_time_out_i_7,
      I3 => n_0_RXDFEAGCHOLD_i_2,
      I4 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I5 => rx_state_reg(2),
      O => \n_0_reset_time_out_i_2__0\
    );
reset_time_out_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAAB"
    )
    port map (
      I0 => rx_cdrlocked,
      I1 => \n_0_FSM_onehot_rx_state_reg[1]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[5]\,
      O => n_0_reset_time_out_i_6
    );
reset_time_out_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[1]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I4 => gt0_pllrefclklost_i,
      O => n_0_reset_time_out_i_7
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_22_data_valid_cdc_sync,
      Q => n_0_reset_time_out_reg,
      R => \<const0>\
    );
run_phase_alignment_int_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_1
    port map (
      I1 => n_0_run_phase_alignment_int_reg,
      I2 => \n_0_time_out_wait_bypass_i_2__0\,
      I3 => \n_0_time_out_wait_bypass_i_3__0\,
      I4 => n_0_time_out_wait_bypass_reg,
      I5 => n_0_rx_fsm_reset_done_int_cdc_sync,
      O1 => n_19_run_phase_alignment_int_cdc_sync,
      O2 => n_20_run_phase_alignment_int_cdc_sync,
      O42(1 downto 0) => O42(1 downto 0),
      O43(1 downto 0) => O43(1 downto 0),
      O44(1 downto 0) => O44(1 downto 0),
      O45(1 downto 0) => O45(1 downto 0),
      O46(1 downto 0) => O46(1 downto 0),
      O47(1 downto 0) => O47(1 downto 0),
      \out\(0) => wait_bypass_count_reg(8),
      s_out_d1_cdc_to_42 => s_out_d1_cdc_to_42,
      s_out_d2_43 => s_out_d2_43,
      s_out_d3_44 => s_out_d3_44,
      s_out_d4_45 => s_out_d4_45,
      s_out_d5_46 => s_out_d5_46,
      s_out_d6_47 => s_out_d6_47,
      s_out_d7_48 => s_out_d7_48,
      user_clk => user_clk
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => n_0_run_phase_alignment_int_reg,
      I1 => n_0_run_phase_alignment_int_i_2,
      I2 => rx_state_reg(2),
      I3 => \n_0_FSM_onehot_rx_state[8]_i_1\,
      O => \n_0_run_phase_alignment_int_i_1__0\
    );
run_phase_alignment_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000101ABA8"
    )
    port map (
      I0 => rx_state_reg(2),
      I1 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I3 => \n_0_FSM_onehot_rx_state[2]_i_2\,
      I4 => \n_0_FSM_onehot_rx_state[8]_i_7\,
      I5 => \n_0_FSM_onehot_rx_state_reg[8]\,
      O => n_0_run_phase_alignment_int_i_2
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_0_run_phase_alignment_int_i_1__0\,
      Q => n_0_run_phase_alignment_int_reg,
      R => \<const0>\
    );
rx_fsm_reset_done_int_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_0
    port map (
      I1 => \n_0_time_out_wait_bypass_i_2__0\,
      I2 => \n_0_time_out_wait_bypass_i_3__0\,
      O1 => n_0_rx_fsm_reset_done_int_cdc_sync,
      O2 => n_20_rx_fsm_reset_done_int_cdc_sync,
      O48(1 downto 0) => O48(1 downto 0),
      O49(1 downto 0) => O49(1 downto 0),
      O50(1 downto 0) => O50(1 downto 0),
      O51(1 downto 0) => O51(1 downto 0),
      O52(1 downto 0) => O52(1 downto 0),
      O53(1 downto 0) => O53(1 downto 0),
      \out\(0) => wait_bypass_count_reg(8),
      rx_fsm_reset_done_int => rx_fsm_reset_done_int,
      s_out_d1_cdc_to_49 => s_out_d1_cdc_to_49,
      s_out_d2_50 => s_out_d2_50,
      s_out_d3_51 => s_out_d3_51,
      s_out_d4_52 => s_out_d4_52,
      s_out_d5_53 => s_out_d5_53,
      s_out_d6_54 => s_out_d6_54,
      s_out_d7_55 => s_out_d7_55,
      user_clk => user_clk
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777777777777777E"
    )
    port map (
      I0 => rx_state_reg(2),
      I1 => \n_0_FSM_onehot_rx_state[8]_i_7\,
      I2 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I5 => \n_0_FSM_onehot_rx_state_reg[3]\,
      O => n_0_rx_fsm_reset_done_int_i_2
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_23_data_valid_cdc_sync,
      Q => rx_fsm_reset_done_int,
      R => \<const0>\
    );
rxresetdone_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_3
    port map (
      I1 => n_0_GTRXRESET_i_2,
      I2 => \n_0_FSM_onehot_rx_state[2]_i_2\,
      I3 => \n_0_FSM_onehot_rx_state[8]_i_15\,
      I4 => n_0_reset_time_out_reg,
      O1 => n_20_rxresetdone_cdc_sync,
      O60(1 downto 0) => O60(1 downto 0),
      O61(1 downto 0) => O61(1 downto 0),
      O62(1 downto 0) => O62(1 downto 0),
      O63(1 downto 0) => O63(1 downto 0),
      O64(1 downto 0) => O64(1 downto 0),
      O65(1 downto 0) => O65(1 downto 0),
      Q(0) => \n_0_FSM_onehot_rx_state_reg[8]\,
      gt0_pllrefclklost_i => gt0_pllrefclklost_i,
      init_clk_in => init_clk_in,
      rxfsm_rxresetdone_r => rxfsm_rxresetdone_r,
      rxresetdone_s3 => rxresetdone_s3,
      s_out_d1_cdc_to_63 => s_out_d1_cdc_to_63,
      s_out_d2_64 => s_out_d2_64,
      s_out_d3_65 => s_out_d3_65,
      s_out_d4_66 => s_out_d4_66,
      s_out_d5_67 => s_out_d5_67,
      s_out_d6_68 => s_out_d6_68,
      s_out_d7_69 => s_out_d7_69,
      time_out_2ms => time_out_2ms
    );
time_out_100us_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => time_out_100us,
      I1 => n_0_time_out_100us_i_2,
      I2 => n_0_reset_time_out_reg,
      O => n_0_time_out_100us_i_1
    );
time_out_100us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000800000000000"
    )
    port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(8),
      I2 => n_0_time_out_100us_i_3,
      I3 => n_0_time_out_100us_i_4,
      I4 => n_0_time_out_100us_i_5,
      I5 => n_0_time_out_100us_i_6,
      O => n_0_time_out_100us_i_2
    );
time_out_100us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(15),
      I4 => time_out_counter_reg(17),
      I5 => time_out_counter_reg(18),
      O => n_0_time_out_100us_i_3
    );
time_out_100us_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(0),
      I3 => time_out_counter_reg(7),
      O => n_0_time_out_100us_i_4
    );
time_out_100us_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(10),
      O => n_0_time_out_100us_i_5
    );
time_out_100us_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(5),
      O => n_0_time_out_100us_i_6
    );
time_out_100us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_time_out_100us_i_1,
      Q => time_out_100us,
      R => \<const0>\
    );
time_out_1us_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => time_out_1us,
      I1 => n_0_time_out_1us_i_2,
      I2 => n_0_reset_time_out_reg,
      O => n_0_time_out_1us_i_1
    );
time_out_1us_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000010000000"
    )
    port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(3),
      I2 => n_0_time_out_1us_i_3,
      I3 => n_0_time_out_1us_i_4,
      I4 => n_0_time_out_1us_i_5,
      I5 => n_0_time_out_1us_i_6,
      O => n_0_time_out_1us_i_2
    );
time_out_1us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => time_out_counter_reg(13),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(15),
      I4 => time_out_counter_reg(17),
      I5 => time_out_counter_reg(18),
      O => n_0_time_out_1us_i_3
    );
time_out_1us_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
    port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(12),
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(4),
      I5 => time_out_counter_reg(11),
      O => n_0_time_out_1us_i_4
    );
time_out_1us_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(8),
      O => n_0_time_out_1us_i_5
    );
time_out_1us_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(10),
      I1 => time_out_counter_reg(9),
      O => n_0_time_out_1us_i_6
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_time_out_1us_i_1,
      Q => time_out_1us,
      R => \<const0>\
    );
time_out_2ms_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAABAAAA"
    )
    port map (
      I0 => time_out_2ms,
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(10),
      I3 => \n_0_time_out_2ms_i_2__0\,
      I4 => n_0_time_out_2ms_i_3,
      I5 => n_0_reset_time_out_reg,
      O => n_0_time_out_2ms_i_1
    );
\time_out_2ms_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(3),
      O => \n_0_time_out_2ms_i_2__0\
    );
time_out_2ms_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(15),
      I4 => n_0_time_out_2ms_i_4,
      I5 => n_0_time_out_2ms_i_5,
      O => n_0_time_out_2ms_i_3
    );
time_out_2ms_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
    port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(12),
      I4 => time_out_counter_reg(4),
      I5 => time_out_counter_reg(11),
      O => n_0_time_out_2ms_i_4
    );
time_out_2ms_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(13),
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(18),
      O => n_0_time_out_2ms_i_5
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_time_out_2ms_i_1,
      Q => time_out_2ms,
      R => \<const0>\
    );
time_out_adapt_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => time_out_adapt,
      I1 => n_0_time_out_adapt_i_2,
      I2 => recclk_mon_count_reset,
      O => n_0_time_out_adapt_i_1
    );
time_out_adapt_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => n_0_time_out_adapt_i_3,
      I1 => n_0_time_out_adapt_i_4,
      I2 => n_0_time_out_adapt_i_5,
      I3 => n_0_time_out_adapt_i_6,
      I4 => n_0_time_out_adapt_i_7,
      I5 => n_0_time_out_adapt_i_8,
      O => n_0_time_out_adapt_i_2
    );
time_out_adapt_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
    port map (
      I0 => adapt_count_reg(12),
      I1 => adapt_count_reg(5),
      I2 => adapt_count_reg(1),
      I3 => adapt_count_reg(19),
      I4 => adapt_count_reg(2),
      I5 => adapt_count_reg(10),
      O => n_0_time_out_adapt_i_3
    );
time_out_adapt_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => adapt_count_reg(31),
      I1 => adapt_count_reg(15),
      O => n_0_time_out_adapt_i_4
    );
time_out_adapt_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => adapt_count_reg(30),
      I1 => adapt_count_reg(27),
      I2 => adapt_count_reg(6),
      I3 => adapt_count_reg(17),
      I4 => adapt_count_reg(13),
      I5 => adapt_count_reg(23),
      O => n_0_time_out_adapt_i_5
    );
time_out_adapt_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => adapt_count_reg(22),
      I1 => adapt_count_reg(25),
      I2 => adapt_count_reg(7),
      I3 => adapt_count_reg(14),
      I4 => adapt_count_reg(3),
      I5 => adapt_count_reg(4),
      O => n_0_time_out_adapt_i_6
    );
time_out_adapt_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      I0 => adapt_count_reg(16),
      I1 => adapt_count_reg(9),
      I2 => adapt_count_reg(18),
      I3 => adapt_count_reg(11),
      I4 => adapt_count_reg(0),
      I5 => adapt_count_reg(28),
      O => n_0_time_out_adapt_i_7
    );
time_out_adapt_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => adapt_count_reg(26),
      I1 => adapt_count_reg(8),
      I2 => adapt_count_reg(29),
      I3 => adapt_count_reg(21),
      I4 => adapt_count_reg(24),
      I5 => adapt_count_reg(20),
      O => n_0_time_out_adapt_i_8
    );
time_out_adapt_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_time_out_adapt_i_1,
      Q => time_out_adapt,
      R => \<const0>\
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
    port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(0),
      I4 => n_0_time_out_2ms_i_3,
      O => \n_0_time_out_counter[0]_i_1\
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(3),
      O => \n_0_time_out_counter[0]_i_3__0\
    );
\time_out_counter[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(2),
      O => \n_0_time_out_counter[0]_i_4__0\
    );
\time_out_counter[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(1),
      O => \n_0_time_out_counter[0]_i_5__0\
    );
\time_out_counter[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(0),
      O => \n_0_time_out_counter[0]_i_6__0\
    );
\time_out_counter[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(15),
      O => \n_0_time_out_counter[12]_i_2__0\
    );
\time_out_counter[12]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(14),
      O => \n_0_time_out_counter[12]_i_3__0\
    );
\time_out_counter[12]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(13),
      O => \n_0_time_out_counter[12]_i_4__0\
    );
\time_out_counter[12]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(12),
      O => \n_0_time_out_counter[12]_i_5__0\
    );
\time_out_counter[16]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(18),
      O => \n_0_time_out_counter[16]_i_2__0\
    );
\time_out_counter[16]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(17),
      O => \n_0_time_out_counter[16]_i_3__0\
    );
\time_out_counter[16]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(16),
      O => \n_0_time_out_counter[16]_i_4__0\
    );
\time_out_counter[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(7),
      O => \n_0_time_out_counter[4]_i_2__0\
    );
\time_out_counter[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(6),
      O => \n_0_time_out_counter[4]_i_3__0\
    );
\time_out_counter[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(5),
      O => \n_0_time_out_counter[4]_i_4__0\
    );
\time_out_counter[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(4),
      O => \n_0_time_out_counter[4]_i_5__0\
    );
\time_out_counter[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(11),
      O => \n_0_time_out_counter[8]_i_2__0\
    );
\time_out_counter[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(10),
      O => \n_0_time_out_counter[8]_i_3__0\
    );
\time_out_counter[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(9),
      O => \n_0_time_out_counter[8]_i_4__0\
    );
\time_out_counter[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(8),
      O => \n_0_time_out_counter[8]_i_5__0\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(0),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[0]_i_2__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \<const0>\,
      CO(3) => \n_0_time_out_counter_reg[0]_i_2__0\,
      CO(2) => \n_1_time_out_counter_reg[0]_i_2__0\,
      CO(1) => \n_2_time_out_counter_reg[0]_i_2__0\,
      CO(0) => \n_3_time_out_counter_reg[0]_i_2__0\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const1>\,
      O(3) => \n_4_time_out_counter_reg[0]_i_2__0\,
      O(2) => \n_5_time_out_counter_reg[0]_i_2__0\,
      O(1) => \n_6_time_out_counter_reg[0]_i_2__0\,
      O(0) => \n_7_time_out_counter_reg[0]_i_2__0\,
      S(3) => \n_0_time_out_counter[0]_i_3__0\,
      S(2) => \n_0_time_out_counter[0]_i_4__0\,
      S(1) => \n_0_time_out_counter[0]_i_5__0\,
      S(0) => \n_0_time_out_counter[0]_i_6__0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(10),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(11),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(12),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[8]_i_1__0\,
      CO(3) => \n_0_time_out_counter_reg[12]_i_1__0\,
      CO(2) => \n_1_time_out_counter_reg[12]_i_1__0\,
      CO(1) => \n_2_time_out_counter_reg[12]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[12]_i_1__0\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_time_out_counter_reg[12]_i_1__0\,
      O(2) => \n_5_time_out_counter_reg[12]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[12]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[12]_i_1__0\,
      S(3) => \n_0_time_out_counter[12]_i_2__0\,
      S(2) => \n_0_time_out_counter[12]_i_3__0\,
      S(1) => \n_0_time_out_counter[12]_i_4__0\,
      S(0) => \n_0_time_out_counter[12]_i_5__0\
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(13),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(14),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[12]_i_1__0\,
      Q => time_out_counter_reg(15),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[16]_i_1__0\,
      Q => time_out_counter_reg(16),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[16]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[12]_i_1__0\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_time_out_counter_reg[16]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[16]_i_1__0\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\(3),
      O(2) => \n_5_time_out_counter_reg[16]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[16]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[16]_i_1__0\,
      S(3) => \<const0>\,
      S(2) => \n_0_time_out_counter[16]_i_2__0\,
      S(1) => \n_0_time_out_counter[16]_i_3__0\,
      S(0) => \n_0_time_out_counter[16]_i_4__0\
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[16]_i_1__0\,
      Q => time_out_counter_reg(17),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[16]_i_1__0\,
      Q => time_out_counter_reg(18),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(1),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(2),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[0]_i_2__0\,
      Q => time_out_counter_reg(3),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(4),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[0]_i_2__0\,
      CO(3) => \n_0_time_out_counter_reg[4]_i_1__0\,
      CO(2) => \n_1_time_out_counter_reg[4]_i_1__0\,
      CO(1) => \n_2_time_out_counter_reg[4]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[4]_i_1__0\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_time_out_counter_reg[4]_i_1__0\,
      O(2) => \n_5_time_out_counter_reg[4]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[4]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[4]_i_1__0\,
      S(3) => \n_0_time_out_counter[4]_i_2__0\,
      S(2) => \n_0_time_out_counter[4]_i_3__0\,
      S(1) => \n_0_time_out_counter[4]_i_4__0\,
      S(0) => \n_0_time_out_counter[4]_i_5__0\
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(5),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_5_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(6),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_4_time_out_counter_reg[4]_i_1__0\,
      Q => time_out_counter_reg(7),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_7_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(8),
      R => n_0_reset_time_out_reg
    );
\time_out_counter_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[4]_i_1__0\,
      CO(3) => \n_0_time_out_counter_reg[8]_i_1__0\,
      CO(2) => \n_1_time_out_counter_reg[8]_i_1__0\,
      CO(1) => \n_2_time_out_counter_reg[8]_i_1__0\,
      CO(0) => \n_3_time_out_counter_reg[8]_i_1__0\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_time_out_counter_reg[8]_i_1__0\,
      O(2) => \n_5_time_out_counter_reg[8]_i_1__0\,
      O(1) => \n_6_time_out_counter_reg[8]_i_1__0\,
      O(0) => \n_7_time_out_counter_reg[8]_i_1__0\,
      S(3) => \n_0_time_out_counter[8]_i_2__0\,
      S(2) => \n_0_time_out_counter[8]_i_3__0\,
      S(1) => \n_0_time_out_counter[8]_i_4__0\,
      S(0) => \n_0_time_out_counter[8]_i_5__0\
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(9),
      R => n_0_reset_time_out_reg
    );
time_out_wait_bypass_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_5
    port map (
      D(1) => n_19_time_out_wait_bypass_cdc_sync,
      D(0) => n_20_time_out_wait_bypass_cdc_sync,
      I1 => n_0_time_out_wait_bypass_reg,
      I2 => \n_0_FSM_onehot_rx_state[1]_i_2\,
      I3 => \n_0_FSM_onehot_rx_state[1]_i_4\,
      I4 => \n_0_FSM_onehot_rx_state[7]_i_2\,
      I5 => \n_0_FSM_onehot_rx_state[7]_i_3\,
      I6 => \n_0_FSM_onehot_rx_state[8]_i_12\,
      I7 => \n_0_FSM_onehot_rx_state[1]_i_6\,
      I8 => n_21_data_valid_cdc_sync,
      O54(1 downto 0) => O54(1 downto 0),
      O55(1 downto 0) => O55(1 downto 0),
      O56(1 downto 0) => O56(1 downto 0),
      O57(1 downto 0) => O57(1 downto 0),
      O58(1 downto 0) => O58(1 downto 0),
      O59(1 downto 0) => O59(1 downto 0),
      Q(5) => \n_0_FSM_onehot_rx_state_reg[8]\,
      Q(4) => \n_0_FSM_onehot_rx_state_reg[7]\,
      Q(3) => \n_0_FSM_onehot_rx_state_reg[6]\,
      Q(2) => \n_0_FSM_onehot_rx_state_reg[5]\,
      Q(1) => \n_0_FSM_onehot_rx_state_reg[4]\,
      Q(0) => \n_0_FSM_onehot_rx_state_reg[1]\,
      init_clk_in => init_clk_in,
      s_out_d1_cdc_to_56 => s_out_d1_cdc_to_56,
      s_out_d2_57 => s_out_d2_57,
      s_out_d3_58 => s_out_d3_58,
      s_out_d4_59 => s_out_d4_59,
      s_out_d5_60 => s_out_d5_60,
      s_out_d6_61 => s_out_d6_61,
      s_out_d7_62 => s_out_d7_62
    );
\time_out_wait_bypass_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(1),
      I1 => wait_bypass_count_reg(5),
      I2 => wait_bypass_count_reg(7),
      I3 => wait_bypass_count_reg(0),
      I4 => wait_bypass_count_reg(10),
      I5 => wait_bypass_count_reg(4),
      O => \n_0_time_out_wait_bypass_i_2__0\
    );
\time_out_wait_bypass_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFDFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(12),
      I1 => wait_bypass_count_reg(3),
      I2 => wait_bypass_count_reg(9),
      I3 => wait_bypass_count_reg(2),
      I4 => wait_bypass_count_reg(11),
      I5 => wait_bypass_count_reg(6),
      O => \n_0_time_out_wait_bypass_i_3__0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_20_run_phase_alignment_int_cdc_sync,
      Q => n_0_time_out_wait_bypass_reg,
      R => \<const0>\
    );
time_tlock_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => time_tlock_max,
      I1 => time_tlock_max0,
      I2 => n_0_reset_time_out_reg,
      O => n_0_time_tlock_max_i_1
    );
time_tlock_max_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A8AAAA"
    )
    port map (
      I0 => n_0_check_tlock_max_reg,
      I1 => n_0_time_tlock_max_i_3,
      I2 => \n_0_time_tlock_max_i_4__0\,
      I3 => n_0_time_tlock_max_i_5,
      I4 => n_0_time_out_100us_i_3,
      O => time_tlock_max0
    );
time_tlock_max_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(2),
      I3 => time_out_counter_reg(0),
      O => n_0_time_tlock_max_i_3
    );
\time_tlock_max_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(11),
      I4 => time_out_counter_reg(4),
      O => \n_0_time_tlock_max_i_4__0\
    );
time_tlock_max_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5557575757575757"
    )
    port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(11),
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(8),
      I5 => time_out_counter_reg(9),
      O => n_0_time_tlock_max_i_5
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_time_tlock_max_i_1,
      Q => time_tlock_max,
      R => \<const0>\
    );
\wait_bypass_count[0]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(3),
      O => \n_0_wait_bypass_count[0]_i_4__0\
    );
\wait_bypass_count[0]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(2),
      O => \n_0_wait_bypass_count[0]_i_5__0\
    );
\wait_bypass_count[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(1),
      O => \n_0_wait_bypass_count[0]_i_6__0\
    );
\wait_bypass_count[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_bypass_count_reg(0),
      O => \n_0_wait_bypass_count[0]_i_7__0\
    );
\wait_bypass_count[12]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(12),
      O => \n_0_wait_bypass_count[12]_i_2__0\
    );
\wait_bypass_count[4]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(7),
      O => \n_0_wait_bypass_count[4]_i_2__0\
    );
\wait_bypass_count[4]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(6),
      O => \n_0_wait_bypass_count[4]_i_3__0\
    );
\wait_bypass_count[4]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(5),
      O => \n_0_wait_bypass_count[4]_i_4__0\
    );
\wait_bypass_count[4]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(4),
      O => \n_0_wait_bypass_count[4]_i_5__0\
    );
\wait_bypass_count[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(11),
      O => \n_0_wait_bypass_count[8]_i_2__0\
    );
\wait_bypass_count[8]_i_3__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(10),
      O => \n_0_wait_bypass_count[8]_i_3__0\
    );
\wait_bypass_count[8]_i_4__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(9),
      O => \n_0_wait_bypass_count[8]_i_4__0\
    );
\wait_bypass_count[8]_i_5__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(8),
      O => \n_0_wait_bypass_count[8]_i_5__0\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(0),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[0]_i_3__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \<const0>\,
      CO(3) => \n_0_wait_bypass_count_reg[0]_i_3__0\,
      CO(2) => \n_1_wait_bypass_count_reg[0]_i_3__0\,
      CO(1) => \n_2_wait_bypass_count_reg[0]_i_3__0\,
      CO(0) => \n_3_wait_bypass_count_reg[0]_i_3__0\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const1>\,
      O(3) => \n_4_wait_bypass_count_reg[0]_i_3__0\,
      O(2) => \n_5_wait_bypass_count_reg[0]_i_3__0\,
      O(1) => \n_6_wait_bypass_count_reg[0]_i_3__0\,
      O(0) => \n_7_wait_bypass_count_reg[0]_i_3__0\,
      S(3) => \n_0_wait_bypass_count[0]_i_4__0\,
      S(2) => \n_0_wait_bypass_count[0]_i_5__0\,
      S(1) => \n_0_wait_bypass_count[0]_i_6__0\,
      S(0) => \n_0_wait_bypass_count[0]_i_7__0\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(10),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(11),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[12]_i_1__0\,
      Q => wait_bypass_count_reg(12),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[12]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[8]_i_1__0\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\(3 downto 0),
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3 downto 1) => \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\(3 downto 1),
      O(0) => \n_7_wait_bypass_count_reg[12]_i_1__0\,
      S(3) => \<const0>\,
      S(2) => \<const0>\,
      S(1) => \<const0>\,
      S(0) => \n_0_wait_bypass_count[12]_i_2__0\
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(1),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(2),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(3),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(4),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[4]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[0]_i_3__0\,
      CO(3) => \n_0_wait_bypass_count_reg[4]_i_1__0\,
      CO(2) => \n_1_wait_bypass_count_reg[4]_i_1__0\,
      CO(1) => \n_2_wait_bypass_count_reg[4]_i_1__0\,
      CO(0) => \n_3_wait_bypass_count_reg[4]_i_1__0\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_wait_bypass_count_reg[4]_i_1__0\,
      O(2) => \n_5_wait_bypass_count_reg[4]_i_1__0\,
      O(1) => \n_6_wait_bypass_count_reg[4]_i_1__0\,
      O(0) => \n_7_wait_bypass_count_reg[4]_i_1__0\,
      S(3) => \n_0_wait_bypass_count[4]_i_2__0\,
      S(2) => \n_0_wait_bypass_count[4]_i_3__0\,
      S(1) => \n_0_wait_bypass_count[4]_i_4__0\,
      S(0) => \n_0_wait_bypass_count[4]_i_5__0\
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(5),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(6),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(7),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(8),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
\wait_bypass_count_reg[8]_i_1__0\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[4]_i_1__0\,
      CO(3) => \n_0_wait_bypass_count_reg[8]_i_1__0\,
      CO(2) => \n_1_wait_bypass_count_reg[8]_i_1__0\,
      CO(1) => \n_2_wait_bypass_count_reg[8]_i_1__0\,
      CO(0) => \n_3_wait_bypass_count_reg[8]_i_1__0\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_wait_bypass_count_reg[8]_i_1__0\,
      O(2) => \n_5_wait_bypass_count_reg[8]_i_1__0\,
      O(1) => \n_6_wait_bypass_count_reg[8]_i_1__0\,
      O(0) => \n_7_wait_bypass_count_reg[8]_i_1__0\,
      S(3) => \n_0_wait_bypass_count[8]_i_2__0\,
      S(2) => \n_0_wait_bypass_count[8]_i_3__0\,
      S(1) => \n_0_wait_bypass_count[8]_i_4__0\,
      S(0) => \n_0_wait_bypass_count[8]_i_5__0\
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_rx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(9),
      R => n_19_run_phase_alignment_int_cdc_sync
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_tx_startup_fsm is
  port (
    s_out_d1_cdc_to : out STD_LOGIC;
    s_out_d2 : out STD_LOGIC;
    s_out_d3 : out STD_LOGIC;
    s_out_d4 : out STD_LOGIC;
    s_out_d5 : out STD_LOGIC;
    s_out_d6 : out STD_LOGIC;
    s_out_d7 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_0 : out STD_LOGIC;
    s_out_d2_1 : out STD_LOGIC;
    s_out_d3_2 : out STD_LOGIC;
    s_out_d4_3 : out STD_LOGIC;
    s_out_d5_4 : out STD_LOGIC;
    s_out_d6_5 : out STD_LOGIC;
    s_out_d7_6 : out STD_LOGIC;
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O9 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O10 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O11 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_7 : out STD_LOGIC;
    s_out_d2_8 : out STD_LOGIC;
    s_out_d3_9 : out STD_LOGIC;
    s_out_d4_10 : out STD_LOGIC;
    s_out_d5_11 : out STD_LOGIC;
    s_out_d6_12 : out STD_LOGIC;
    s_out_d7_13 : out STD_LOGIC;
    O12 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O13 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O14 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O15 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O16 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O17 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_14 : out STD_LOGIC;
    s_out_d2_15 : out STD_LOGIC;
    s_out_d3_16 : out STD_LOGIC;
    s_out_d4_17 : out STD_LOGIC;
    s_out_d5_18 : out STD_LOGIC;
    s_out_d6_19 : out STD_LOGIC;
    s_out_d7_20 : out STD_LOGIC;
    O18 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O19 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O20 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O21 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O22 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O23 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O24 : out STD_LOGIC;
    s_out_d1_cdc_to_21 : out STD_LOGIC;
    s_out_d2_22 : out STD_LOGIC;
    s_out_d3_23 : out STD_LOGIC;
    s_out_d4_24 : out STD_LOGIC;
    s_out_d5_25 : out STD_LOGIC;
    s_out_d6_26 : out STD_LOGIC;
    s_out_d7_27 : out STD_LOGIC;
    O25 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O26 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O27 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O28 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O29 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O30 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O31 : out STD_LOGIC;
    s_out_d1_cdc_to_28 : out STD_LOGIC;
    s_out_d2_29 : out STD_LOGIC;
    s_out_d3_30 : out STD_LOGIC;
    s_out_d4_31 : out STD_LOGIC;
    s_out_d5_32 : out STD_LOGIC;
    s_out_d6_33 : out STD_LOGIC;
    s_out_d7_34 : out STD_LOGIC;
    O32 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O33 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O34 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O35 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O36 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O37 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_35 : out STD_LOGIC;
    s_out_d2_36 : out STD_LOGIC;
    s_out_d3_37 : out STD_LOGIC;
    s_out_d4_38 : out STD_LOGIC;
    s_out_d5_39 : out STD_LOGIC;
    s_out_d6_40 : out STD_LOGIC;
    s_out_d7_41 : out STD_LOGIC;
    O38 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O39 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O40 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O41 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O42 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O43 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_resetdone_out : out STD_LOGIC;
    gt_tx_reset_i : out STD_LOGIC;
    cpll_reset_i : out STD_LOGIC;
    gt_txuserrdy_i : out STD_LOGIC;
    user_clk : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    txfsm_txresetdone_r : in STD_LOGIC;
    tx_lock : in STD_LOGIC;
    gt_reset : in STD_LOGIC;
    gt0_pllrefclklost_i : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_tx_startup_fsm;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_tx_startup_fsm is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o24\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^cpll_reset_i\ : STD_LOGIC;
  signal cplllock_sync : STD_LOGIC;
  signal \^gt_tx_reset_i\ : STD_LOGIC;
  signal \^gt_txuserrdy_i\ : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal n_0_CPLL_RESET_i_1 : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[1]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[1]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[1]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[3]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[4]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[5]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[6]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[7]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[7]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[7]_i_11\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[7]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[7]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[7]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[7]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[7]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[0]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[1]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[2]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[3]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[4]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[5]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[6]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[7]\ : STD_LOGIC;
  signal n_0_GTTXRESET_i_1 : STD_LOGIC;
  signal n_0_GTTXRESET_i_2 : STD_LOGIC;
  signal n_0_TXUSERRDY_i_1 : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_1\ : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_3\ : STD_LOGIC;
  signal \n_0_init_wait_count[7]_i_4\ : STD_LOGIC;
  signal n_0_init_wait_done_i_1 : STD_LOGIC;
  signal \n_0_mmcm_lock_count[7]_i_2\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[7]_i_3\ : STD_LOGIC;
  signal n_0_mmcm_lock_reclocked_i_2 : STD_LOGIC;
  signal n_0_pll_reset_asserted_i_1 : STD_LOGIC;
  signal n_0_run_phase_alignment_int_i_1 : STD_LOGIC;
  signal n_0_time_out_2ms_i_1 : STD_LOGIC;
  signal n_0_time_out_2ms_i_2 : STD_LOGIC;
  signal n_0_time_out_500us_i_1 : STD_LOGIC;
  signal n_0_time_out_500us_i_2 : STD_LOGIC;
  signal n_0_time_out_500us_i_3 : STD_LOGIC;
  signal n_0_time_out_500us_i_4 : STD_LOGIC;
  signal n_0_time_out_500us_i_5 : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_10\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_6\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_7\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_8\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_9\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[12]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[16]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[4]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[8]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal n_0_time_out_wait_bypass_i_2 : STD_LOGIC;
  signal n_0_time_out_wait_bypass_i_3 : STD_LOGIC;
  signal n_0_time_out_wait_bypass_i_4 : STD_LOGIC;
  signal n_0_time_tlock_max_i_1 : STD_LOGIC;
  signal \n_0_time_tlock_max_i_2__0\ : STD_LOGIC;
  signal \n_0_time_tlock_max_i_3__0\ : STD_LOGIC;
  signal n_0_time_tlock_max_i_4 : STD_LOGIC;
  signal n_0_tx_fsm_reset_done_int_cdc_sync : STD_LOGIC;
  signal n_0_tx_fsm_reset_done_int_i_1 : STD_LOGIC;
  signal n_0_tx_fsm_reset_done_int_i_2 : STD_LOGIC;
  signal n_0_tx_fsm_reset_done_int_i_3 : STD_LOGIC;
  signal n_0_tx_fsm_reset_done_int_i_4 : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_6\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_7\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[12]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[16]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[4]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_2\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_4\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[8]_i_5\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal n_19_time_out_wait_bypass_cdc_sync : STD_LOGIC;
  signal n_19_txresetdone_cdc_sync : STD_LOGIC;
  signal \n_1_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal n_20_mmcm_lock_reclocked_cdc_sync : STD_LOGIC;
  signal n_20_run_phase_alignment_int_cdc_sync : STD_LOGIC;
  signal n_20_time_out_wait_bypass_cdc_sync : STD_LOGIC;
  signal n_20_tx_fsm_reset_done_int_cdc_sync : STD_LOGIC;
  signal n_20_txresetdone_cdc_sync : STD_LOGIC;
  signal n_21_cplllock_cdc_sync : STD_LOGIC;
  signal n_21_mmcm_lock_reclocked_cdc_sync : STD_LOGIC;
  signal \n_2_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pll_reset_asserted : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal run_phase_alignment_int : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal time_out_2ms : STD_LOGIC;
  signal time_out_500us : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal time_out_wait_bypass : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal \^tx_resetdone_out\ : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[1]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[1]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[7]_i_10\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[7]_i_11\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[7]_i_3\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[7]_i_8\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of GTTXRESET_i_2 : label is "soft_lutpair15";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \init_wait_count[0]_i_1\ : label is true;
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \init_wait_count[7]_i_4\ : label is "soft_lutpair4";
  attribute counter : integer;
  attribute counter of \init_wait_count_reg[0]\ : label is 17;
  attribute counter of \init_wait_count_reg[1]\ : label is 17;
  attribute counter of \init_wait_count_reg[2]\ : label is 17;
  attribute counter of \init_wait_count_reg[3]\ : label is 17;
  attribute counter of \init_wait_count_reg[4]\ : label is 17;
  attribute counter of \init_wait_count_reg[5]\ : label is 17;
  attribute counter of \init_wait_count_reg[6]\ : label is 17;
  attribute counter of \init_wait_count_reg[7]\ : label is 17;
  attribute RETAIN_INVERTER of \mmcm_lock_count[0]_i_1\ : label is true;
  attribute SOFT_HLUTNM of \mmcm_lock_count[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_3\ : label is "soft_lutpair13";
  attribute counter of \mmcm_lock_count_reg[0]\ : label is 24;
  attribute counter of \mmcm_lock_count_reg[1]\ : label is 24;
  attribute counter of \mmcm_lock_count_reg[2]\ : label is 24;
  attribute counter of \mmcm_lock_count_reg[3]\ : label is 24;
  attribute counter of \mmcm_lock_count_reg[4]\ : label is 24;
  attribute counter of \mmcm_lock_count_reg[5]\ : label is 24;
  attribute counter of \mmcm_lock_count_reg[6]\ : label is 24;
  attribute counter of \mmcm_lock_count_reg[7]\ : label is 24;
  attribute counter of \mmcm_lock_count_reg[8]\ : label is 24;
  attribute counter of \mmcm_lock_count_reg[9]\ : label is 24;
  attribute SOFT_HLUTNM of time_out_2ms_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of time_out_500us_i_5 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_3\ : label is "soft_lutpair5";
  attribute counter of \time_out_counter_reg[0]\ : label is 16;
  attribute counter of \time_out_counter_reg[10]\ : label is 16;
  attribute counter of \time_out_counter_reg[11]\ : label is 16;
  attribute counter of \time_out_counter_reg[12]\ : label is 16;
  attribute counter of \time_out_counter_reg[13]\ : label is 16;
  attribute counter of \time_out_counter_reg[14]\ : label is 16;
  attribute counter of \time_out_counter_reg[15]\ : label is 16;
  attribute counter of \time_out_counter_reg[16]\ : label is 16;
  attribute counter of \time_out_counter_reg[17]\ : label is 16;
  attribute counter of \time_out_counter_reg[18]\ : label is 16;
  attribute counter of \time_out_counter_reg[1]\ : label is 16;
  attribute counter of \time_out_counter_reg[2]\ : label is 16;
  attribute counter of \time_out_counter_reg[3]\ : label is 16;
  attribute counter of \time_out_counter_reg[4]\ : label is 16;
  attribute counter of \time_out_counter_reg[5]\ : label is 16;
  attribute counter of \time_out_counter_reg[6]\ : label is 16;
  attribute counter of \time_out_counter_reg[7]\ : label is 16;
  attribute counter of \time_out_counter_reg[8]\ : label is 16;
  attribute counter of \time_out_counter_reg[9]\ : label is 16;
  attribute SOFT_HLUTNM of time_tlock_max_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of tx_fsm_reset_done_int_i_3 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of tx_fsm_reset_done_int_i_4 : label is "soft_lutpair15";
  attribute counter of \wait_bypass_count_reg[0]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[10]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[11]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[12]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[13]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[14]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[15]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[16]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[1]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[2]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[3]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[4]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[5]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[6]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[7]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[8]\ : label is 18;
  attribute counter of \wait_bypass_count_reg[9]\ : label is 18;
begin
  O24 <= \^o24\;
  cpll_reset_i <= \^cpll_reset_i\;
  gt_tx_reset_i <= \^gt_tx_reset_i\;
  gt_txuserrdy_i <= \^gt_txuserrdy_i\;
  tx_resetdone_out <= \^tx_resetdone_out\;
CPLL_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AA2AAAEA"
    )
    port map (
      I0 => \^cpll_reset_i\,
      I1 => n_0_tx_fsm_reset_done_int_i_4,
      I2 => n_0_tx_fsm_reset_done_int_i_3,
      I3 => n_0_tx_fsm_reset_done_int_i_2,
      I4 => pll_reset_asserted,
      I5 => \n_0_FSM_onehot_tx_state[7]_i_1\,
      O => n_0_CPLL_RESET_i_1
    );
CPLL_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_CPLL_RESET_i_1,
      Q => \^cpll_reset_i\,
      R => \<const0>\
    );
\FSM_onehot_tx_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_500us,
      I1 => reset_time_out,
      O => \n_0_FSM_onehot_tx_state[1]_i_2\
    );
\FSM_onehot_tx_state[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8A8A8ABA8A8A"
    )
    port map (
      I0 => time_out_2ms,
      I1 => \n_0_FSM_onehot_tx_state[1]_i_4\,
      I2 => \n_0_FSM_onehot_tx_state[1]_i_5\,
      I3 => mmcm_lock_reclocked,
      I4 => time_tlock_max,
      I5 => reset_time_out,
      O => \n_0_FSM_onehot_tx_state[1]_i_3\
    );
\FSM_onehot_tx_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFA8"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[1]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[0]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I5 => \n_0_FSM_onehot_tx_state_reg[7]\,
      O => \n_0_FSM_onehot_tx_state[1]_i_4\
    );
\FSM_onehot_tx_state[1]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00030302"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[4]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[6]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[1]\,
      O => \n_0_FSM_onehot_tx_state[1]_i_5\
    );
\FSM_onehot_tx_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[6]_i_2\,
      I1 => \n_0_FSM_onehot_tx_state[7]_i_6\,
      I2 => \n_0_FSM_onehot_tx_state[7]_i_7\,
      O => \n_0_FSM_onehot_tx_state[2]_i_1\
    );
\FSM_onehot_tx_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => time_out_2ms,
      I1 => \n_0_FSM_onehot_tx_state[6]_i_2\,
      I2 => \n_0_FSM_onehot_tx_state[7]_i_6\,
      I3 => \n_0_FSM_onehot_tx_state[7]_i_7\,
      O => \n_0_FSM_onehot_tx_state[3]_i_1\
    );
\FSM_onehot_tx_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000FB0000"
    )
    port map (
      I0 => mmcm_lock_reclocked,
      I1 => time_tlock_max,
      I2 => reset_time_out,
      I3 => \n_0_FSM_onehot_tx_state[6]_i_2\,
      I4 => \n_0_FSM_onehot_tx_state[7]_i_6\,
      I5 => \n_0_FSM_onehot_tx_state[7]_i_7\,
      O => \n_0_FSM_onehot_tx_state[4]_i_1\
    );
\FSM_onehot_tx_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D000000"
    )
    port map (
      I0 => time_out_500us,
      I1 => reset_time_out,
      I2 => \n_0_FSM_onehot_tx_state[7]_i_6\,
      I3 => \n_0_FSM_onehot_tx_state[6]_i_2\,
      I4 => \n_0_FSM_onehot_tx_state[7]_i_7\,
      O => \n_0_FSM_onehot_tx_state[5]_i_1\
    );
\FSM_onehot_tx_state[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFEB"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[7]_i_10\,
      I1 => \n_0_FSM_onehot_tx_state_reg[1]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[6]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[4]\,
      I5 => \n_0_FSM_onehot_tx_state_reg[3]\,
      O => \n_0_FSM_onehot_tx_state[6]_i_2\
    );
\FSM_onehot_tx_state[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEEEEAEEEEEEEE"
    )
    port map (
      I0 => gt_reset,
      I1 => gt0_pllrefclklost_i,
      I2 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[6]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I5 => n_0_tx_fsm_reset_done_int_i_3,
      O => \n_0_FSM_onehot_tx_state[7]_i_1\
    );
\FSM_onehot_tx_state[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[7]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[0]\,
      O => \n_0_FSM_onehot_tx_state[7]_i_10\
    );
\FSM_onehot_tx_state[7]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[0]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[7]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[4]\,
      O => \n_0_FSM_onehot_tx_state[7]_i_11\
    );
\FSM_onehot_tx_state[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[7]_i_6\,
      I1 => \n_0_FSM_onehot_tx_state[7]_i_7\,
      O => \n_0_FSM_onehot_tx_state[7]_i_3\
    );
\FSM_onehot_tx_state[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0DFD0D0DFFFFFFFF"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[7]_i_8\,
      I1 => mmcm_lock_reclocked,
      I2 => n_0_tx_fsm_reset_done_int_i_4,
      I3 => gt0_pllrefclklost_i,
      I4 => pll_reset_asserted,
      I5 => n_0_tx_fsm_reset_done_int_i_3,
      O => \n_0_FSM_onehot_tx_state[7]_i_4\
    );
\FSM_onehot_tx_state[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFEEF"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[1]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[4]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[6]\,
      I5 => \n_0_FSM_onehot_tx_state[7]_i_10\,
      O => \n_0_FSM_onehot_tx_state[7]_i_6\
    );
\FSM_onehot_tx_state[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFDFFFFFFFF"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[1]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[6]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I5 => \n_0_FSM_onehot_tx_state[7]_i_11\,
      O => \n_0_FSM_onehot_tx_state[7]_i_7\
    );
\FSM_onehot_tx_state[7]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => reset_time_out,
      I1 => time_tlock_max,
      O => \n_0_FSM_onehot_tx_state[7]_i_8\
    );
\FSM_onehot_tx_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => init_clk_in,
      CE => n_20_txresetdone_cdc_sync,
      D => \<const0>\,
      Q => \n_0_FSM_onehot_tx_state_reg[0]\,
      S => \n_0_FSM_onehot_tx_state[7]_i_1\
    );
\FSM_onehot_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_20_txresetdone_cdc_sync,
      D => n_20_time_out_wait_bypass_cdc_sync,
      Q => \n_0_FSM_onehot_tx_state_reg[1]\,
      R => \n_0_FSM_onehot_tx_state[7]_i_1\
    );
\FSM_onehot_tx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_20_txresetdone_cdc_sync,
      D => \n_0_FSM_onehot_tx_state[2]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[2]\,
      R => \n_0_FSM_onehot_tx_state[7]_i_1\
    );
\FSM_onehot_tx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_20_txresetdone_cdc_sync,
      D => \n_0_FSM_onehot_tx_state[3]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[3]\,
      R => \n_0_FSM_onehot_tx_state[7]_i_1\
    );
\FSM_onehot_tx_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_20_txresetdone_cdc_sync,
      D => \n_0_FSM_onehot_tx_state[4]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[4]\,
      R => \n_0_FSM_onehot_tx_state[7]_i_1\
    );
\FSM_onehot_tx_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_20_txresetdone_cdc_sync,
      D => \n_0_FSM_onehot_tx_state[5]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[5]\,
      R => \n_0_FSM_onehot_tx_state[7]_i_1\
    );
\FSM_onehot_tx_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_20_txresetdone_cdc_sync,
      D => n_19_time_out_wait_bypass_cdc_sync,
      Q => \n_0_FSM_onehot_tx_state_reg[6]\,
      R => \n_0_FSM_onehot_tx_state[7]_i_1\
    );
\FSM_onehot_tx_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => n_20_txresetdone_cdc_sync,
      D => \n_0_FSM_onehot_tx_state[7]_i_3\,
      Q => \n_0_FSM_onehot_tx_state_reg[7]\,
      R => \n_0_FSM_onehot_tx_state[7]_i_1\
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
GTTXRESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008A8A8ABA"
    )
    port map (
      I0 => \^gt_tx_reset_i\,
      I1 => n_0_tx_fsm_reset_done_int_i_2,
      I2 => n_0_tx_fsm_reset_done_int_i_3,
      I3 => n_0_GTTXRESET_i_2,
      I4 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I5 => \n_0_FSM_onehot_tx_state[7]_i_1\,
      O => n_0_GTTXRESET_i_1
    );
GTTXRESET_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[6]\,
      O => n_0_GTTXRESET_i_2
    );
GTTXRESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_GTTXRESET_i_1,
      Q => \^gt_tx_reset_i\,
      R => \<const0>\
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080008EAA"
    )
    port map (
      I0 => \^gt_txuserrdy_i\,
      I1 => n_0_tx_fsm_reset_done_int_i_2,
      I2 => n_0_tx_fsm_reset_done_int_i_3,
      I3 => n_0_tx_fsm_reset_done_int_i_4,
      I4 => gt0_pllrefclklost_i,
      I5 => gt_reset,
      O => n_0_TXUSERRDY_i_1
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_TXUSERRDY_i_1,
      Q => \^gt_txuserrdy_i\,
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
cplllock_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_9
    port map (
      I1 => n_0_tx_fsm_reset_done_int_i_4,
      I2 => n_0_tx_fsm_reset_done_int_i_3,
      I3 => n_19_txresetdone_cdc_sync,
      I4 => \n_0_FSM_onehot_tx_state[7]_i_1\,
      O1 => n_21_cplllock_cdc_sync,
      O31 => O31,
      O32(1 downto 0) => O32(1 downto 0),
      O33(1 downto 0) => O33(1 downto 0),
      O34(1 downto 0) => O34(1 downto 0),
      O35(1 downto 0) => O35(1 downto 0),
      O36(1 downto 0) => O36(1 downto 0),
      O37(1 downto 0) => O37(1 downto 0),
      Q(2) => \n_0_FSM_onehot_tx_state_reg[5]\,
      Q(1) => \n_0_FSM_onehot_tx_state_reg[3]\,
      Q(0) => \n_0_FSM_onehot_tx_state_reg[1]\,
      cplllock_sync => cplllock_sync,
      init_clk_in => init_clk_in,
      reset_time_out => reset_time_out,
      s_out_d1_cdc_to_28 => s_out_d1_cdc_to_28,
      s_out_d2_29 => s_out_d2_29,
      s_out_d3_30 => s_out_d3_30,
      s_out_d4_31 => s_out_d4_31,
      s_out_d5_32 => s_out_d5_32,
      s_out_d6_33 => s_out_d6_33,
      s_out_d7_34 => s_out_d7_34,
      tx_lock => tx_lock
    );
\init_wait_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      O => p_0_in(0)
    );
\init_wait_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      O => p_0_in(1)
    );
\init_wait_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      O => p_0_in(2)
    );
\init_wait_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(3),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(2),
      O => p_0_in(3)
    );
\init_wait_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(2),
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(3),
      I4 => \init_wait_count_reg__0\(4),
      O => p_0_in(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(3),
      I5 => \init_wait_count_reg__0\(4),
      O => p_0_in(5)
    );
\init_wait_count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \n_0_init_wait_count[7]_i_4\,
      I2 => \init_wait_count_reg__0\(5),
      O => p_0_in(6)
    );
\init_wait_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => \init_wait_count_reg__0\(0),
      I1 => \init_wait_count_reg__0\(1),
      I2 => \n_0_init_wait_count[7]_i_3\,
      O => \n_0_init_wait_count[7]_i_1\
    );
\init_wait_count[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(7),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \n_0_init_wait_count[7]_i_4\,
      I3 => \init_wait_count_reg__0\(6),
      O => p_0_in(7)
    );
\init_wait_count[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000004"
    )
    port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \init_wait_count_reg__0\(5),
      I2 => \init_wait_count_reg__0\(2),
      I3 => \init_wait_count_reg__0\(4),
      I4 => \init_wait_count_reg__0\(3),
      I5 => \init_wait_count_reg__0\(7),
      O => \n_0_init_wait_count[7]_i_3\
    );
\init_wait_count[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(2),
      O => \n_0_init_wait_count[7]_i_4\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      D => p_0_in(0),
      Q => \init_wait_count_reg__0\(0),
      R => \<const0>\
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      D => p_0_in(1),
      Q => \init_wait_count_reg__0\(1),
      R => \<const0>\
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      D => p_0_in(2),
      Q => \init_wait_count_reg__0\(2),
      R => \<const0>\
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      D => p_0_in(3),
      Q => \init_wait_count_reg__0\(3),
      R => \<const0>\
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      D => p_0_in(4),
      Q => \init_wait_count_reg__0\(4),
      R => \<const0>\
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      D => p_0_in(5),
      Q => \init_wait_count_reg__0\(5),
      R => \<const0>\
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      D => p_0_in(6),
      Q => \init_wait_count_reg__0\(6),
      R => \<const0>\
    );
\init_wait_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_init_wait_count[7]_i_1\,
      D => p_0_in(7),
      Q => \init_wait_count_reg__0\(7),
      R => \<const0>\
    );
init_wait_done_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => init_wait_done,
      I1 => \init_wait_count_reg__0\(0),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \n_0_init_wait_count[7]_i_3\,
      O => n_0_init_wait_done_i_1
    );
init_wait_done_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_init_wait_done_i_1,
      Q => init_wait_done,
      R => \<const0>\
    );
\mmcm_lock_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__1\(0)
    );
\mmcm_lock_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(0),
      I1 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__1\(1)
    );
\mmcm_lock_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__1\(2)
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__1\(3)
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__1\(4)
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(5),
      I1 => \mmcm_lock_count_reg__0\(3),
      I2 => \mmcm_lock_count_reg__0\(2),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(1),
      I5 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__1\(5)
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \n_0_mmcm_lock_count[7]_i_2\,
      I2 => \mmcm_lock_count_reg__0\(3),
      I3 => \mmcm_lock_count_reg__0\(2),
      I4 => \mmcm_lock_count_reg__0\(5),
      I5 => \mmcm_lock_count_reg__0\(4),
      O => \p_0_in__1\(6)
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAA6AAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \n_0_mmcm_lock_count[7]_i_2\,
      I3 => \n_0_mmcm_lock_count[7]_i_3\,
      I4 => \mmcm_lock_count_reg__0\(4),
      I5 => \mmcm_lock_count_reg__0\(5),
      O => \p_0_in__1\(7)
    );
\mmcm_lock_count[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(1),
      I1 => \mmcm_lock_count_reg__0\(0),
      O => \n_0_mmcm_lock_count[7]_i_2\
    );
\mmcm_lock_count[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(3),
      O => \n_0_mmcm_lock_count[7]_i_3\
    );
\mmcm_lock_count[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => n_0_mmcm_lock_reclocked_i_2,
      O => \p_0_in__1\(8)
    );
\mmcm_lock_count[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => n_0_mmcm_lock_reclocked_i_2,
      I2 => \mmcm_lock_count_reg__0\(8),
      O => sel
    );
\mmcm_lock_count[9]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => n_0_mmcm_lock_reclocked_i_2,
      I2 => \mmcm_lock_count_reg__0\(8),
      O => \p_0_in__1\(9)
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => sel,
      D => \p_0_in__1\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => n_20_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => sel,
      D => \p_0_in__1\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => n_20_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => sel,
      D => \p_0_in__1\(2),
      Q => \mmcm_lock_count_reg__0\(2),
      R => n_20_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => sel,
      D => \p_0_in__1\(3),
      Q => \mmcm_lock_count_reg__0\(3),
      R => n_20_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => sel,
      D => \p_0_in__1\(4),
      Q => \mmcm_lock_count_reg__0\(4),
      R => n_20_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => sel,
      D => \p_0_in__1\(5),
      Q => \mmcm_lock_count_reg__0\(5),
      R => n_20_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => sel,
      D => \p_0_in__1\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => n_20_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => sel,
      D => \p_0_in__1\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => n_20_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => sel,
      D => \p_0_in__1\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => n_20_mmcm_lock_reclocked_cdc_sync
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => sel,
      D => \p_0_in__1\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => n_20_mmcm_lock_reclocked_cdc_sync
    );
mmcm_lock_reclocked_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_12
    port map (
      I1 => n_0_mmcm_lock_reclocked_i_2,
      O1 => n_21_mmcm_lock_reclocked_cdc_sync,
      O24 => \^o24\,
      O25(1 downto 0) => O25(1 downto 0),
      O26(1 downto 0) => O26(1 downto 0),
      O27(1 downto 0) => O27(1 downto 0),
      O28(1 downto 0) => O28(1 downto 0),
      O29(1 downto 0) => O29(1 downto 0),
      O30(1 downto 0) => O30(1 downto 0),
      Q(1 downto 0) => \mmcm_lock_count_reg__0\(9 downto 8),
      SR(0) => n_20_mmcm_lock_reclocked_cdc_sync,
      init_clk_in => init_clk_in,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      s_out_d1_cdc_to_21 => s_out_d1_cdc_to_21,
      s_out_d2_22 => s_out_d2_22,
      s_out_d3_23 => s_out_d3_23,
      s_out_d4_24 => s_out_d4_24,
      s_out_d5_25 => s_out_d5_25,
      s_out_d6_26 => s_out_d6_26,
      s_out_d7_27 => s_out_d7_27
    );
mmcm_lock_reclocked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000000000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(5),
      I2 => \mmcm_lock_count_reg__0\(4),
      I3 => \n_0_mmcm_lock_count[7]_i_3\,
      I4 => \n_0_mmcm_lock_count[7]_i_2\,
      I5 => \mmcm_lock_count_reg__0\(6),
      O => n_0_mmcm_lock_reclocked_i_2
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_21_mmcm_lock_reclocked_cdc_sync,
      Q => mmcm_lock_reclocked,
      R => \<const0>\
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000D000DC4C"
    )
    port map (
      I0 => n_0_tx_fsm_reset_done_int_i_2,
      I1 => pll_reset_asserted,
      I2 => n_0_tx_fsm_reset_done_int_i_3,
      I3 => n_0_tx_fsm_reset_done_int_i_4,
      I4 => gt0_pllrefclklost_i,
      I5 => gt_reset,
      O => n_0_pll_reset_asserted_i_1
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_pll_reset_asserted_i_1,
      Q => pll_reset_asserted,
      R => \<const0>\
    );
qplllock_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_11
    port map (
      O24 => \^o24\,
      O38(1 downto 0) => O38(1 downto 0),
      O39(1 downto 0) => O39(1 downto 0),
      O40(1 downto 0) => O40(1 downto 0),
      O41(1 downto 0) => O41(1 downto 0),
      O42(1 downto 0) => O42(1 downto 0),
      O43(1 downto 0) => O43(1 downto 0),
      init_clk_in => init_clk_in,
      s_out_d1_cdc_to_35 => s_out_d1_cdc_to_35,
      s_out_d2_36 => s_out_d2_36,
      s_out_d3_37 => s_out_d3_37,
      s_out_d4_38 => s_out_d4_38,
      s_out_d5_39 => s_out_d5_39,
      s_out_d6_40 => s_out_d6_40,
      s_out_d7_41 => s_out_d7_41
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_21_cplllock_cdc_sync,
      Q => reset_time_out,
      R => \<const0>\
    );
run_phase_alignment_int_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_10
    port map (
      I1 => n_0_time_out_wait_bypass_i_2,
      I2 => n_0_time_out_wait_bypass_i_3,
      I3 => n_0_time_out_wait_bypass_i_4,
      I4 => n_0_tx_fsm_reset_done_int_cdc_sync,
      O1(1 downto 0) => O1(1 downto 0),
      O2(1 downto 0) => O2(1 downto 0),
      O3(1 downto 0) => O3(1 downto 0),
      O4(1 downto 0) => O4(1 downto 0),
      O5(1 downto 0) => O5(1 downto 0),
      O6 => n_20_run_phase_alignment_int_cdc_sync,
      clear => clear,
      \out\(1 downto 0) => \out\(1 downto 0),
      run_phase_alignment_int => run_phase_alignment_int,
      s_out_d1_cdc_to => s_out_d1_cdc_to,
      s_out_d2 => s_out_d2,
      s_out_d3 => s_out_d3,
      s_out_d4 => s_out_d4,
      s_out_d5 => s_out_d5,
      s_out_d6 => s_out_d6,
      s_out_d7 => s_out_d7,
      time_out_wait_bypass => time_out_wait_bypass,
      user_clk => user_clk
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080008BAA"
    )
    port map (
      I0 => run_phase_alignment_int,
      I1 => n_0_tx_fsm_reset_done_int_i_2,
      I2 => n_0_tx_fsm_reset_done_int_i_3,
      I3 => n_0_tx_fsm_reset_done_int_i_4,
      I4 => gt0_pllrefclklost_i,
      I5 => gt_reset,
      O => n_0_run_phase_alignment_int_i_1
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_run_phase_alignment_int_i_1,
      Q => run_phase_alignment_int,
      R => \<const0>\
    );
time_out_2ms_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => time_out_2ms,
      I1 => n_0_time_out_2ms_i_2,
      I2 => reset_time_out,
      O => n_0_time_out_2ms_i_1
    );
time_out_2ms_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => \n_0_time_out_counter[0]_i_5\,
      I1 => \n_0_time_out_counter[0]_i_4\,
      I2 => \n_0_time_out_counter[0]_i_3\,
      I3 => time_out_counter_reg(3),
      I4 => time_out_counter_reg(6),
      I5 => n_0_time_out_500us_i_3,
      O => n_0_time_out_2ms_i_2
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_time_out_2ms_i_1,
      Q => time_out_2ms,
      R => \<const0>\
    );
time_out_500us_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => time_out_500us,
      I1 => n_0_time_out_500us_i_2,
      I2 => reset_time_out,
      O => n_0_time_out_500us_i_1
    );
time_out_500us_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
    port map (
      I0 => n_0_time_out_500us_i_3,
      I1 => n_0_time_out_500us_i_4,
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(7),
      I4 => n_0_time_out_500us_i_5,
      O => n_0_time_out_500us_i_2
    );
time_out_500us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(12),
      I2 => time_out_counter_reg(18),
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(1),
      I5 => time_out_counter_reg(2),
      O => n_0_time_out_500us_i_3
    );
time_out_500us_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
    port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(3),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(16),
      I4 => time_out_counter_reg(4),
      I5 => time_out_counter_reg(0),
      O => n_0_time_out_500us_i_4
    );
time_out_500us_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(6),
      O => n_0_time_out_500us_i_5
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_time_out_500us_i_1,
      Q => time_out_500us,
      R => \<const0>\
    );
\time_out_counter[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(0),
      O => \n_0_time_out_counter[0]_i_10\
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFEFFFF"
    )
    port map (
      I0 => time_out_counter_reg(6),
      I1 => time_out_counter_reg(3),
      I2 => \n_0_time_out_counter[0]_i_3\,
      I3 => \n_0_time_out_counter[0]_i_4\,
      I4 => \n_0_time_out_counter[0]_i_5\,
      I5 => \n_0_time_out_counter[0]_i_6\,
      O => \n_0_time_out_counter[0]_i_1__0\
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(13),
      O => \n_0_time_out_counter[0]_i_3\
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(15),
      I3 => time_out_counter_reg(16),
      O => \n_0_time_out_counter[0]_i_4\
    );
\time_out_counter[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
    port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(8),
      I4 => time_out_counter_reg(10),
      O => \n_0_time_out_counter[0]_i_5\
    );
\time_out_counter[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(12),
      I2 => time_out_counter_reg(18),
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(1),
      I5 => time_out_counter_reg(2),
      O => \n_0_time_out_counter[0]_i_6\
    );
\time_out_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(3),
      O => \n_0_time_out_counter[0]_i_7\
    );
\time_out_counter[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(2),
      O => \n_0_time_out_counter[0]_i_8\
    );
\time_out_counter[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(1),
      O => \n_0_time_out_counter[0]_i_9\
    );
\time_out_counter[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(15),
      O => \n_0_time_out_counter[12]_i_2\
    );
\time_out_counter[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(14),
      O => \n_0_time_out_counter[12]_i_3\
    );
\time_out_counter[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(13),
      O => \n_0_time_out_counter[12]_i_4\
    );
\time_out_counter[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(12),
      O => \n_0_time_out_counter[12]_i_5\
    );
\time_out_counter[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(18),
      O => \n_0_time_out_counter[16]_i_2\
    );
\time_out_counter[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(17),
      O => \n_0_time_out_counter[16]_i_3\
    );
\time_out_counter[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(16),
      O => \n_0_time_out_counter[16]_i_4\
    );
\time_out_counter[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(7),
      O => \n_0_time_out_counter[4]_i_2\
    );
\time_out_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(6),
      O => \n_0_time_out_counter[4]_i_3\
    );
\time_out_counter[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(5),
      O => \n_0_time_out_counter[4]_i_4\
    );
\time_out_counter[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(4),
      O => \n_0_time_out_counter[4]_i_5\
    );
\time_out_counter[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(11),
      O => \n_0_time_out_counter[8]_i_2\
    );
\time_out_counter[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(10),
      O => \n_0_time_out_counter[8]_i_3\
    );
\time_out_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(9),
      O => \n_0_time_out_counter[8]_i_4\
    );
\time_out_counter[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(8),
      O => \n_0_time_out_counter[8]_i_5\
    );
\time_out_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(0),
      R => reset_time_out
    );
\time_out_counter_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \<const0>\,
      CO(3) => \n_0_time_out_counter_reg[0]_i_2\,
      CO(2) => \n_1_time_out_counter_reg[0]_i_2\,
      CO(1) => \n_2_time_out_counter_reg[0]_i_2\,
      CO(0) => \n_3_time_out_counter_reg[0]_i_2\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const1>\,
      O(3) => \n_4_time_out_counter_reg[0]_i_2\,
      O(2) => \n_5_time_out_counter_reg[0]_i_2\,
      O(1) => \n_6_time_out_counter_reg[0]_i_2\,
      O(0) => \n_7_time_out_counter_reg[0]_i_2\,
      S(3) => \n_0_time_out_counter[0]_i_7\,
      S(2) => \n_0_time_out_counter[0]_i_8\,
      S(1) => \n_0_time_out_counter[0]_i_9\,
      S(0) => \n_0_time_out_counter[0]_i_10\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(10),
      R => reset_time_out
    );
\time_out_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(11),
      R => reset_time_out
    );
\time_out_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(12),
      R => reset_time_out
    );
\time_out_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[8]_i_1\,
      CO(3) => \n_0_time_out_counter_reg[12]_i_1\,
      CO(2) => \n_1_time_out_counter_reg[12]_i_1\,
      CO(1) => \n_2_time_out_counter_reg[12]_i_1\,
      CO(0) => \n_3_time_out_counter_reg[12]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_time_out_counter_reg[12]_i_1\,
      O(2) => \n_5_time_out_counter_reg[12]_i_1\,
      O(1) => \n_6_time_out_counter_reg[12]_i_1\,
      O(0) => \n_7_time_out_counter_reg[12]_i_1\,
      S(3) => \n_0_time_out_counter[12]_i_2\,
      S(2) => \n_0_time_out_counter[12]_i_3\,
      S(1) => \n_0_time_out_counter[12]_i_4\,
      S(0) => \n_0_time_out_counter[12]_i_5\
    );
\time_out_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(13),
      R => reset_time_out
    );
\time_out_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(14),
      R => reset_time_out
    );
\time_out_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[12]_i_1\,
      Q => time_out_counter_reg(15),
      R => reset_time_out
    );
\time_out_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[16]_i_1\,
      Q => time_out_counter_reg(16),
      R => reset_time_out
    );
\time_out_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[12]_i_1\,
      CO(3 downto 2) => \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_time_out_counter_reg[16]_i_1\,
      CO(0) => \n_3_time_out_counter_reg[16]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\(3),
      O(2) => \n_5_time_out_counter_reg[16]_i_1\,
      O(1) => \n_6_time_out_counter_reg[16]_i_1\,
      O(0) => \n_7_time_out_counter_reg[16]_i_1\,
      S(3) => \<const0>\,
      S(2) => \n_0_time_out_counter[16]_i_2\,
      S(1) => \n_0_time_out_counter[16]_i_3\,
      S(0) => \n_0_time_out_counter[16]_i_4\
    );
\time_out_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[16]_i_1\,
      Q => time_out_counter_reg(17),
      R => reset_time_out
    );
\time_out_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[16]_i_1\,
      Q => time_out_counter_reg(18),
      R => reset_time_out
    );
\time_out_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(1),
      R => reset_time_out
    );
\time_out_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(2),
      R => reset_time_out
    );
\time_out_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[0]_i_2\,
      Q => time_out_counter_reg(3),
      R => reset_time_out
    );
\time_out_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(4),
      R => reset_time_out
    );
\time_out_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[0]_i_2\,
      CO(3) => \n_0_time_out_counter_reg[4]_i_1\,
      CO(2) => \n_1_time_out_counter_reg[4]_i_1\,
      CO(1) => \n_2_time_out_counter_reg[4]_i_1\,
      CO(0) => \n_3_time_out_counter_reg[4]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_time_out_counter_reg[4]_i_1\,
      O(2) => \n_5_time_out_counter_reg[4]_i_1\,
      O(1) => \n_6_time_out_counter_reg[4]_i_1\,
      O(0) => \n_7_time_out_counter_reg[4]_i_1\,
      S(3) => \n_0_time_out_counter[4]_i_2\,
      S(2) => \n_0_time_out_counter[4]_i_3\,
      S(1) => \n_0_time_out_counter[4]_i_4\,
      S(0) => \n_0_time_out_counter[4]_i_5\
    );
\time_out_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(5),
      R => reset_time_out
    );
\time_out_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_5_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(6),
      R => reset_time_out
    );
\time_out_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_4_time_out_counter_reg[4]_i_1\,
      Q => time_out_counter_reg(7),
      R => reset_time_out
    );
\time_out_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_7_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(8),
      R => reset_time_out
    );
\time_out_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_time_out_counter_reg[4]_i_1\,
      CO(3) => \n_0_time_out_counter_reg[8]_i_1\,
      CO(2) => \n_1_time_out_counter_reg[8]_i_1\,
      CO(1) => \n_2_time_out_counter_reg[8]_i_1\,
      CO(0) => \n_3_time_out_counter_reg[8]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_time_out_counter_reg[8]_i_1\,
      O(2) => \n_5_time_out_counter_reg[8]_i_1\,
      O(1) => \n_6_time_out_counter_reg[8]_i_1\,
      O(0) => \n_7_time_out_counter_reg[8]_i_1\,
      S(3) => \n_0_time_out_counter[8]_i_2\,
      S(2) => \n_0_time_out_counter[8]_i_3\,
      S(1) => \n_0_time_out_counter[8]_i_4\,
      S(0) => \n_0_time_out_counter[8]_i_5\
    );
\time_out_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_13
    port map (
      D(1) => n_19_time_out_wait_bypass_cdc_sync,
      D(0) => n_20_time_out_wait_bypass_cdc_sync,
      I1 => \n_0_FSM_onehot_tx_state[1]_i_2\,
      I2 => \n_0_FSM_onehot_tx_state[7]_i_7\,
      I3 => \n_0_FSM_onehot_tx_state[7]_i_6\,
      I4 => \n_0_FSM_onehot_tx_state[1]_i_3\,
      I5 => \n_0_FSM_onehot_tx_state[6]_i_2\,
      O12(1 downto 0) => O12(1 downto 0),
      O13(1 downto 0) => O13(1 downto 0),
      O14(1 downto 0) => O14(1 downto 0),
      O15(1 downto 0) => O15(1 downto 0),
      O16(1 downto 0) => O16(1 downto 0),
      O17(1 downto 0) => O17(1 downto 0),
      init_clk_in => init_clk_in,
      s_out_d1_cdc_to_7 => s_out_d1_cdc_to_7,
      s_out_d2_8 => s_out_d2_8,
      s_out_d3_9 => s_out_d3_9,
      s_out_d4_10 => s_out_d4_10,
      s_out_d5_11 => s_out_d5_11,
      s_out_d6_12 => s_out_d6_12,
      s_out_d7_13 => s_out_d7_13,
      time_out_wait_bypass => time_out_wait_bypass
    );
time_out_wait_bypass_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(1),
      I1 => wait_bypass_count_reg(11),
      I2 => wait_bypass_count_reg(12),
      I3 => wait_bypass_count_reg(13),
      I4 => wait_bypass_count_reg(16),
      O => n_0_time_out_wait_bypass_i_2
    );
time_out_wait_bypass_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFDFFFFFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(8),
      I1 => wait_bypass_count_reg(9),
      I2 => wait_bypass_count_reg(2),
      I3 => wait_bypass_count_reg(0),
      I4 => wait_bypass_count_reg(14),
      I5 => wait_bypass_count_reg(10),
      O => n_0_time_out_wait_bypass_i_3
    );
time_out_wait_bypass_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF7FFF"
    )
    port map (
      I0 => wait_bypass_count_reg(15),
      I1 => wait_bypass_count_reg(7),
      I2 => wait_bypass_count_reg(5),
      I3 => wait_bypass_count_reg(3),
      I4 => wait_bypass_count_reg(4),
      I5 => wait_bypass_count_reg(6),
      O => n_0_time_out_wait_bypass_i_4
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_20_run_phase_alignment_int_cdc_sync,
      Q => time_out_wait_bypass,
      R => \<const0>\
    );
time_tlock_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => time_tlock_max,
      I1 => \n_0_time_tlock_max_i_2__0\,
      I2 => reset_time_out,
      O => n_0_time_tlock_max_i_1
    );
\time_tlock_max_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002000000"
    )
    port map (
      I0 => \n_0_time_tlock_max_i_3__0\,
      I1 => n_0_time_tlock_max_i_4,
      I2 => n_0_time_out_500us_i_4,
      I3 => time_out_counter_reg(7),
      I4 => time_out_counter_reg(8),
      I5 => \n_0_time_out_counter[0]_i_3\,
      O => \n_0_time_tlock_max_i_2__0\
    );
\time_tlock_max_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
    port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(6),
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(12),
      I4 => time_out_counter_reg(5),
      O => \n_0_time_tlock_max_i_3__0\
    );
time_tlock_max_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(17),
      I3 => time_out_counter_reg(18),
      O => n_0_time_tlock_max_i_4
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_time_tlock_max_i_1,
      Q => time_tlock_max,
      R => \<const0>\
    );
tx_fsm_reset_done_int_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_14
    port map (
      I1 => n_0_time_out_wait_bypass_i_2,
      I2 => n_0_time_out_wait_bypass_i_3,
      I3 => n_0_time_out_wait_bypass_i_4,
      O1 => n_0_tx_fsm_reset_done_int_cdc_sync,
      O10(1 downto 0) => O10(1 downto 0),
      O11(1 downto 0) => O11(1 downto 0),
      O2 => n_20_tx_fsm_reset_done_int_cdc_sync,
      O6(1 downto 0) => O6(1 downto 0),
      O7(1 downto 0) => O7(1 downto 0),
      O8(1 downto 0) => O8(1 downto 0),
      O9(1 downto 0) => O9(1 downto 0),
      s_out_d1_cdc_to_0 => s_out_d1_cdc_to_0,
      s_out_d2_1 => s_out_d2_1,
      s_out_d3_2 => s_out_d3_2,
      s_out_d4_3 => s_out_d4_3,
      s_out_d5_4 => s_out_d5_4,
      s_out_d6_5 => s_out_d6_5,
      s_out_d7_6 => s_out_d7_6,
      tx_resetdone_out => \^tx_resetdone_out\,
      user_clk => user_clk
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A000AAAE"
    )
    port map (
      I0 => \^tx_resetdone_out\,
      I1 => n_0_tx_fsm_reset_done_int_i_2,
      I2 => n_0_tx_fsm_reset_done_int_i_3,
      I3 => n_0_tx_fsm_reset_done_int_i_4,
      I4 => gt0_pllrefclklost_i,
      I5 => gt_reset,
      O => n_0_tx_fsm_reset_done_int_i_1
    );
tx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[1]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[5]\,
      O => n_0_tx_fsm_reset_done_int_i_2
    );
tx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[6]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[4]\,
      O => n_0_tx_fsm_reset_done_int_i_3
    );
tx_fsm_reset_done_int_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[6]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[2]\,
      O => n_0_tx_fsm_reset_done_int_i_4
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_tx_fsm_reset_done_int_i_1,
      Q => \^tx_resetdone_out\,
      R => \<const0>\
    );
txresetdone_cdc_sync: entity work.aurora_8b10b_0aurora_8b10b_0_cdc_sync_8
    port map (
      E(0) => n_20_txresetdone_cdc_sync,
      I1 => n_0_tx_fsm_reset_done_int_i_4,
      I2 => n_0_tx_fsm_reset_done_int_i_2,
      I3 => n_0_tx_fsm_reset_done_int_i_3,
      I4 => \n_0_FSM_onehot_tx_state[7]_i_4\,
      O1 => n_19_txresetdone_cdc_sync,
      O18(1 downto 0) => O18(1 downto 0),
      O19(1 downto 0) => O19(1 downto 0),
      O20(1 downto 0) => O20(1 downto 0),
      O21(1 downto 0) => O21(1 downto 0),
      O22(1 downto 0) => O22(1 downto 0),
      O23(1 downto 0) => O23(1 downto 0),
      cplllock_sync => cplllock_sync,
      init_clk_in => init_clk_in,
      init_wait_done => init_wait_done,
      mmcm_lock_reclocked => mmcm_lock_reclocked,
      reset_time_out => reset_time_out,
      s_out_d1_cdc_to_14 => s_out_d1_cdc_to_14,
      s_out_d2_15 => s_out_d2_15,
      s_out_d3_16 => s_out_d3_16,
      s_out_d4_17 => s_out_d4_17,
      s_out_d5_18 => s_out_d5_18,
      s_out_d6_19 => s_out_d6_19,
      s_out_d7_20 => s_out_d7_20,
      time_out_2ms => time_out_2ms,
      time_out_500us => time_out_500us,
      txfsm_txresetdone_r => txfsm_txresetdone_r
    );
\wait_bypass_count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(3),
      O => \n_0_wait_bypass_count[0]_i_4\
    );
\wait_bypass_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(2),
      O => \n_0_wait_bypass_count[0]_i_5\
    );
\wait_bypass_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(1),
      O => \n_0_wait_bypass_count[0]_i_6\
    );
\wait_bypass_count[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wait_bypass_count_reg(0),
      O => \n_0_wait_bypass_count[0]_i_7\
    );
\wait_bypass_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(15),
      O => \n_0_wait_bypass_count[12]_i_2\
    );
\wait_bypass_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(14),
      O => \n_0_wait_bypass_count[12]_i_3\
    );
\wait_bypass_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(13),
      O => \n_0_wait_bypass_count[12]_i_4\
    );
\wait_bypass_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(12),
      O => \n_0_wait_bypass_count[12]_i_5\
    );
\wait_bypass_count[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(16),
      O => \n_0_wait_bypass_count[16]_i_2\
    );
\wait_bypass_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(7),
      O => \n_0_wait_bypass_count[4]_i_2\
    );
\wait_bypass_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(6),
      O => \n_0_wait_bypass_count[4]_i_3\
    );
\wait_bypass_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(5),
      O => \n_0_wait_bypass_count[4]_i_4\
    );
\wait_bypass_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(4),
      O => \n_0_wait_bypass_count[4]_i_5\
    );
\wait_bypass_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(11),
      O => \n_0_wait_bypass_count[8]_i_2\
    );
\wait_bypass_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(10),
      O => \n_0_wait_bypass_count[8]_i_3\
    );
\wait_bypass_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(9),
      O => \n_0_wait_bypass_count[8]_i_4\
    );
\wait_bypass_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wait_bypass_count_reg(8),
      O => \n_0_wait_bypass_count[8]_i_5\
    );
\wait_bypass_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(0),
      R => clear
    );
\wait_bypass_count_reg[0]_i_3\: unisim.vcomponents.CARRY4
    port map (
      CI => \<const0>\,
      CO(3) => \n_0_wait_bypass_count_reg[0]_i_3\,
      CO(2) => \n_1_wait_bypass_count_reg[0]_i_3\,
      CO(1) => \n_2_wait_bypass_count_reg[0]_i_3\,
      CO(0) => \n_3_wait_bypass_count_reg[0]_i_3\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const1>\,
      O(3) => \n_4_wait_bypass_count_reg[0]_i_3\,
      O(2) => \n_5_wait_bypass_count_reg[0]_i_3\,
      O(1) => \n_6_wait_bypass_count_reg[0]_i_3\,
      O(0) => \n_7_wait_bypass_count_reg[0]_i_3\,
      S(3) => \n_0_wait_bypass_count[0]_i_4\,
      S(2) => \n_0_wait_bypass_count[0]_i_5\,
      S(1) => \n_0_wait_bypass_count[0]_i_6\,
      S(0) => \n_0_wait_bypass_count[0]_i_7\
    );
\wait_bypass_count_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(10),
      R => clear
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(11),
      R => clear
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(12),
      R => clear
    );
\wait_bypass_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[8]_i_1\,
      CO(3) => \n_0_wait_bypass_count_reg[12]_i_1\,
      CO(2) => \n_1_wait_bypass_count_reg[12]_i_1\,
      CO(1) => \n_2_wait_bypass_count_reg[12]_i_1\,
      CO(0) => \n_3_wait_bypass_count_reg[12]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_wait_bypass_count_reg[12]_i_1\,
      O(2) => \n_5_wait_bypass_count_reg[12]_i_1\,
      O(1) => \n_6_wait_bypass_count_reg[12]_i_1\,
      O(0) => \n_7_wait_bypass_count_reg[12]_i_1\,
      S(3) => \n_0_wait_bypass_count[12]_i_2\,
      S(2) => \n_0_wait_bypass_count[12]_i_3\,
      S(1) => \n_0_wait_bypass_count[12]_i_4\,
      S(0) => \n_0_wait_bypass_count[12]_i_5\
    );
\wait_bypass_count_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(13),
      R => clear
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(14),
      R => clear
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(15),
      R => clear
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[16]_i_1\,
      Q => wait_bypass_count_reg(16),
      R => clear
    );
\wait_bypass_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[12]_i_1\,
      CO(3 downto 0) => \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3 downto 1) => \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \n_7_wait_bypass_count_reg[16]_i_1\,
      S(3) => \<const0>\,
      S(2) => \<const0>\,
      S(1) => \<const0>\,
      S(0) => \n_0_wait_bypass_count[16]_i_2\
    );
\wait_bypass_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(1),
      R => clear
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(2),
      R => clear
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(3),
      R => clear
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(4),
      R => clear
    );
\wait_bypass_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[0]_i_3\,
      CO(3) => \n_0_wait_bypass_count_reg[4]_i_1\,
      CO(2) => \n_1_wait_bypass_count_reg[4]_i_1\,
      CO(1) => \n_2_wait_bypass_count_reg[4]_i_1\,
      CO(0) => \n_3_wait_bypass_count_reg[4]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_wait_bypass_count_reg[4]_i_1\,
      O(2) => \n_5_wait_bypass_count_reg[4]_i_1\,
      O(1) => \n_6_wait_bypass_count_reg[4]_i_1\,
      O(0) => \n_7_wait_bypass_count_reg[4]_i_1\,
      S(3) => \n_0_wait_bypass_count[4]_i_2\,
      S(2) => \n_0_wait_bypass_count[4]_i_3\,
      S(1) => \n_0_wait_bypass_count[4]_i_4\,
      S(0) => \n_0_wait_bypass_count[4]_i_5\
    );
\wait_bypass_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(5),
      R => clear
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_5_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(6),
      R => clear
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_4_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(7),
      R => clear
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_7_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(8),
      R => clear
    );
\wait_bypass_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_wait_bypass_count_reg[4]_i_1\,
      CO(3) => \n_0_wait_bypass_count_reg[8]_i_1\,
      CO(2) => \n_1_wait_bypass_count_reg[8]_i_1\,
      CO(1) => \n_2_wait_bypass_count_reg[8]_i_1\,
      CO(0) => \n_3_wait_bypass_count_reg[8]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_wait_bypass_count_reg[8]_i_1\,
      O(2) => \n_5_wait_bypass_count_reg[8]_i_1\,
      O(1) => \n_6_wait_bypass_count_reg[8]_i_1\,
      O(0) => \n_7_wait_bypass_count_reg[8]_i_1\,
      S(3) => \n_0_wait_bypass_count[8]_i_2\,
      S(2) => \n_0_wait_bypass_count[8]_i_3\,
      S(1) => \n_0_wait_bypass_count[8]_i_4\,
      S(0) => \n_0_wait_bypass_count[8]_i_5\
    );
\wait_bypass_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => user_clk,
      CE => n_20_tx_fsm_reset_done_int_cdc_sync,
      D => \n_6_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(9),
      R => clear
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_AURORA_LANE_4BYTE is
  port (
    O1 : out STD_LOGIC;
    s_out_d1_cdc_to : out STD_LOGIC;
    s_out_d2 : out STD_LOGIC;
    s_out_d3 : out STD_LOGIC;
    s_out_d4 : out STD_LOGIC;
    s_out_d5 : out STD_LOGIC;
    s_out_d6 : out STD_LOGIC;
    s_out_d7 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ena_comma_align_i : out STD_LOGIC;
    TXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    got_v_i : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    rx_polarity_i : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O9 : out STD_LOGIC;
    hard_err_i : out STD_LOGIC;
    O10 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    O11 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O12 : out STD_LOGIC;
    O13 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O14 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O15 : out STD_LOGIC;
    TXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    O16 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O17 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O18 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O19 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O20 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    S1 : out STD_LOGIC;
    S11_in : out STD_LOGIC;
    reset_lanes_i : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    gen_cc_i : in STD_LOGIC;
    I1 : in STD_LOGIC;
    gen_scp_i : in STD_LOGIC;
    gen_a_i : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    hard_err_gt0 : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    in_frame_c : in STD_LOGIC_VECTOR ( 0 to 1 );
    rx_realign_i : in STD_LOGIC;
    RXDISPERR : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I6 : in STD_LOGIC;
    RXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    RXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    I7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I8 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I9 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I10 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I11 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I12 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I13 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I14 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    I15 : in STD_LOGIC;
    I16 : in STD_LOGIC;
    I17 : in STD_LOGIC;
    I18 : in STD_LOGIC;
    I19 : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
end aurora_8b10b_0aurora_8b10b_0_AURORA_LANE_4BYTE;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_AURORA_LANE_4BYTE is
  signal GEN_SP : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal RX_NEG : STD_LOGIC;
  signal counter3_r0 : STD_LOGIC;
  signal counter4_r0 : STD_LOGIC;
  signal enable_err_detect_i : STD_LOGIC;
  signal first_v_received_r : STD_LOGIC;
  signal gen_spa_i : STD_LOGIC;
  signal n_7_aurora_8b10b_0_lane_init_sm_4byte_i : STD_LOGIC;
  signal ready_r : STD_LOGIC;
  signal ready_r0 : STD_LOGIC;
  signal rx_cc_i : STD_LOGIC;
begin
  O1 <= \^o1\;
aurora_8b10b_0_err_detect_4byte_i: entity work.aurora_8b10b_0aurora_8b10b_0_ERR_DETECT_4BYTE
    port map (
      I1 => n_7_aurora_8b10b_0_lane_init_sm_4byte_i,
      I15 => I15,
      I16 => I16,
      I17 => I17,
      I18 => I18,
      O20(1 downto 0) => O20(1 downto 0),
      enable_err_detect_i => enable_err_detect_i,
      hard_err_gt0 => hard_err_gt0,
      hard_err_i => hard_err_i,
      ready_r0 => ready_r0,
      reset_lanes_i => reset_lanes_i,
      user_clk => user_clk
    );
aurora_8b10b_0_hotplug_i: entity work.aurora_8b10b_0aurora_8b10b_0_hotplug
    port map (
      O2(1 downto 0) => O2(1 downto 0),
      O3(1 downto 0) => O3(1 downto 0),
      O4(1 downto 0) => O4(1 downto 0),
      O5(1 downto 0) => O5(1 downto 0),
      O6(1 downto 0) => O6(1 downto 0),
      init_clk_in => init_clk_in,
      link_reset_out => link_reset_out,
      \out\(1 downto 0) => \out\(1 downto 0),
      reset_lanes_i => reset_lanes_i,
      rx_cc_i => rx_cc_i,
      s_out_d1_cdc_to => s_out_d1_cdc_to,
      s_out_d2 => s_out_d2,
      s_out_d3 => s_out_d3,
      s_out_d4 => s_out_d4,
      s_out_d5 => s_out_d5,
      s_out_d6 => s_out_d6,
      s_out_d7 => s_out_d7,
      user_clk => user_clk
    );
aurora_8b10b_0_lane_init_sm_4byte_i: entity work.aurora_8b10b_0aurora_8b10b_0_LANE_INIT_SM_4BYTE
    port map (
      GEN_SP => GEN_SP,
      I6 => I6,
      I7(3 downto 0) => I7(3 downto 0),
      O1 => \^o1\,
      O10 => O10,
      O2 => ena_comma_align_i,
      O3 => n_7_aurora_8b10b_0_lane_init_sm_4byte_i,
      RXCHARISK(1 downto 0) => RXCHARISK(3 downto 2),
      RXDISPERR(1 downto 0) => RXDISPERR(1 downto 0),
      RX_NEG => RX_NEG,
      counter3_r0 => counter3_r0,
      counter4_r0 => counter4_r0,
      enable_err_detect_i => enable_err_detect_i,
      first_v_received_r => first_v_received_r,
      gen_spa_i => gen_spa_i,
      ready_r => ready_r,
      ready_r0 => ready_r0,
      reset_lanes_i => reset_lanes_i,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      user_clk => user_clk
    );
aurora_8b10b_0_sym_dec_4byte_i: entity work.aurora_8b10b_0aurora_8b10b_0_SYM_DEC_4BYTE
    port map (
      D(1 downto 0) => D(1 downto 0),
      I1 => \^o1\,
      I13(7 downto 0) => I13(7 downto 0),
      I14(7 downto 0) => I14(7 downto 0),
      I2 => I2,
      I3 => I3,
      I4 => I4,
      I5 => I5,
      O1 => O7,
      O11(7 downto 0) => O11(7 downto 0),
      O12 => O12,
      O13(1 downto 0) => O13(1 downto 0),
      O14(1 downto 0) => O14(1 downto 0),
      O15 => O15,
      O2 => O8,
      O3(7 downto 0) => O16(7 downto 0),
      O4(7 downto 0) => O17(7 downto 0),
      O5(7 downto 0) => O18(7 downto 0),
      O6(7 downto 0) => O19(7 downto 0),
      O9 => O9,
      Q(0) => Q(0),
      RXCHARISK(3 downto 0) => RXCHARISK(3 downto 0),
      RXDATA(31 downto 0) => RXDATA(31 downto 0),
      RX_NEG => RX_NEG,
      S1 => S1,
      S11_in => S11_in,
      counter3_r0 => counter3_r0,
      counter4_r0 => counter4_r0,
      first_v_received_r => first_v_received_r,
      gen_spa_i => gen_spa_i,
      got_v_i => got_v_i,
      in_frame_c(0 to 1) => in_frame_c(0 to 1),
      ready_r => ready_r,
      rx_cc_i => rx_cc_i,
      user_clk => user_clk
    );
aurora_8b10b_0_sym_gen_4byte_i: entity work.aurora_8b10b_0aurora_8b10b_0_SYM_GEN_4BYTE
    port map (
      GEN_SP => GEN_SP,
      I1 => I1,
      I10(2 downto 0) => I10(2 downto 0),
      I11(3 downto 0) => I11(3 downto 0),
      I12(3 downto 0) => I12(3 downto 0),
      I19(31 downto 0) => I19(31 downto 0),
      I8(1 downto 0) => I8(1 downto 0),
      I9(1 downto 0) => I9(1 downto 0),
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      gen_scp_i => gen_scp_i,
      gen_spa_i => gen_spa_i,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_GT_WRAPPER is
  port (
    s_out_d1_cdc_to : out STD_LOGIC;
    s_out_d2 : out STD_LOGIC;
    s_out_d3 : out STD_LOGIC;
    s_out_d4 : out STD_LOGIC;
    s_out_d5 : out STD_LOGIC;
    s_out_d6 : out STD_LOGIC;
    s_out_d7 : out STD_LOGIC;
    \out\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_0 : out STD_LOGIC;
    s_out_d2_1 : out STD_LOGIC;
    s_out_d3_2 : out STD_LOGIC;
    s_out_d4_3 : out STD_LOGIC;
    s_out_d5_4 : out STD_LOGIC;
    s_out_d6_5 : out STD_LOGIC;
    s_out_d7_6 : out STD_LOGIC;
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O8 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O9 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O10 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O11 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_7 : out STD_LOGIC;
    s_out_d2_8 : out STD_LOGIC;
    s_out_d3_9 : out STD_LOGIC;
    s_out_d4_10 : out STD_LOGIC;
    s_out_d5_11 : out STD_LOGIC;
    s_out_d6_12 : out STD_LOGIC;
    s_out_d7_13 : out STD_LOGIC;
    O12 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O13 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O14 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O15 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O16 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O17 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_14 : out STD_LOGIC;
    s_out_d2_15 : out STD_LOGIC;
    s_out_d3_16 : out STD_LOGIC;
    s_out_d4_17 : out STD_LOGIC;
    s_out_d5_18 : out STD_LOGIC;
    s_out_d6_19 : out STD_LOGIC;
    s_out_d7_20 : out STD_LOGIC;
    O18 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O19 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O20 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O21 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O22 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O23 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_21 : out STD_LOGIC;
    s_out_d2_22 : out STD_LOGIC;
    s_out_d3_23 : out STD_LOGIC;
    s_out_d4_24 : out STD_LOGIC;
    s_out_d5_25 : out STD_LOGIC;
    s_out_d6_26 : out STD_LOGIC;
    s_out_d7_27 : out STD_LOGIC;
    O24 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O25 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O26 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O27 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O28 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O29 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_28 : out STD_LOGIC;
    s_out_d2_29 : out STD_LOGIC;
    s_out_d3_30 : out STD_LOGIC;
    s_out_d4_31 : out STD_LOGIC;
    s_out_d5_32 : out STD_LOGIC;
    s_out_d6_33 : out STD_LOGIC;
    s_out_d7_34 : out STD_LOGIC;
    O30 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O31 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O32 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O33 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O34 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O35 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_35 : out STD_LOGIC;
    s_out_d2_36 : out STD_LOGIC;
    s_out_d3_37 : out STD_LOGIC;
    s_out_d4_38 : out STD_LOGIC;
    s_out_d5_39 : out STD_LOGIC;
    s_out_d6_40 : out STD_LOGIC;
    s_out_d7_41 : out STD_LOGIC;
    O36 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O37 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O38 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O39 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O40 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O41 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_42 : out STD_LOGIC;
    s_out_d2_43 : out STD_LOGIC;
    s_out_d3_44 : out STD_LOGIC;
    s_out_d4_45 : out STD_LOGIC;
    s_out_d5_46 : out STD_LOGIC;
    s_out_d6_47 : out STD_LOGIC;
    s_out_d7_48 : out STD_LOGIC;
    O42 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O43 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O44 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O45 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O46 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O47 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_49 : out STD_LOGIC;
    s_out_d2_50 : out STD_LOGIC;
    s_out_d3_51 : out STD_LOGIC;
    s_out_d4_52 : out STD_LOGIC;
    s_out_d5_53 : out STD_LOGIC;
    s_out_d6_54 : out STD_LOGIC;
    s_out_d7_55 : out STD_LOGIC;
    O48 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O49 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O50 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O51 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O52 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O53 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_56 : out STD_LOGIC;
    s_out_d2_57 : out STD_LOGIC;
    s_out_d3_58 : out STD_LOGIC;
    s_out_d4_59 : out STD_LOGIC;
    s_out_d5_60 : out STD_LOGIC;
    s_out_d6_61 : out STD_LOGIC;
    s_out_d7_62 : out STD_LOGIC;
    O54 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O55 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O56 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O57 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O58 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O59 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_63 : out STD_LOGIC;
    s_out_d2_64 : out STD_LOGIC;
    s_out_d3_65 : out STD_LOGIC;
    s_out_d4_66 : out STD_LOGIC;
    s_out_d5_67 : out STD_LOGIC;
    s_out_d6_68 : out STD_LOGIC;
    s_out_d7_69 : out STD_LOGIC;
    O60 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O61 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O62 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O63 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O64 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O65 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_70 : out STD_LOGIC;
    s_out_d2_71 : out STD_LOGIC;
    s_out_d3_72 : out STD_LOGIC;
    s_out_d4_73 : out STD_LOGIC;
    s_out_d5_74 : out STD_LOGIC;
    s_out_d6_75 : out STD_LOGIC;
    s_out_d7_76 : out STD_LOGIC;
    O66 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O67 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O68 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O69 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O70 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O71 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_77 : out STD_LOGIC;
    s_out_d2_78 : out STD_LOGIC;
    s_out_d3_79 : out STD_LOGIC;
    s_out_d4_80 : out STD_LOGIC;
    s_out_d5_81 : out STD_LOGIC;
    s_out_d6_82 : out STD_LOGIC;
    s_out_d7_83 : out STD_LOGIC;
    O72 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O73 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O74 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O75 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O76 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O77 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_84 : out STD_LOGIC;
    s_out_d2_85 : out STD_LOGIC;
    s_out_d3_86 : out STD_LOGIC;
    s_out_d4_87 : out STD_LOGIC;
    s_out_d5_88 : out STD_LOGIC;
    s_out_d6_89 : out STD_LOGIC;
    s_out_d7_90 : out STD_LOGIC;
    O78 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O79 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O80 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O81 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O82 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O83 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_out_d1_cdc_to_91 : out STD_LOGIC;
    s_out_d2_92 : out STD_LOGIC;
    s_out_d3_93 : out STD_LOGIC;
    s_out_d4_94 : out STD_LOGIC;
    s_out_d5_95 : out STD_LOGIC;
    s_out_d6_96 : out STD_LOGIC;
    s_out_d7_97 : out STD_LOGIC;
    O84 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O85 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O86 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O87 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O88 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O89 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_lock : out STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    rx_realign_i : out STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    RXDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RXCHARISK : out STD_LOGIC_VECTOR ( 3 downto 0 );
    RXDISPERR : out STD_LOGIC_VECTOR ( 1 downto 0 );
    tx_resetdone_out : out STD_LOGIC;
    rx_resetdone_out : out STD_LOGIC;
    O90 : out STD_LOGIC;
    O91 : out STD_LOGIC;
    hard_err_gt0 : out STD_LOGIC;
    O92 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O93 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O94 : out STD_LOGIC;
    O95 : out STD_LOGIC;
    O96 : out STD_LOGIC;
    O97 : out STD_LOGIC;
    O98 : out STD_LOGIC;
    O99 : out STD_LOGIC;
    O100 : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpen_in : in STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt_qpllclk_quad2_in : in STD_LOGIC;
    gt_qpllrefclk_quad2_in : in STD_LOGIC;
    ena_comma_align_i : in STD_LOGIC;
    rx_polarity_i : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    power_down : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    TXDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    TXCHARISK : in STD_LOGIC_VECTOR ( 3 downto 0 );
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    rxfsm_data_valid_r : in STD_LOGIC;
    link_reset_out : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    I3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gt_reset : in STD_LOGIC;
    I4 : in STD_LOGIC
  );
end aurora_8b10b_0aurora_8b10b_0_GT_WRAPPER;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_GT_WRAPPER is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal GTRXRESET : STD_LOGIC;
  signal cpll_reset_i : STD_LOGIC;
  signal gt0_pllrefclklost_i : STD_LOGIC;
  signal gt_rx_reset_i : STD_LOGIC;
  signal gt_rxdfelfhold_i : STD_LOGIC;
  signal gt_rxuserrdy_i : STD_LOGIC;
  signal gt_tx_reset_i : STD_LOGIC;
  signal gt_txuserrdy_i : STD_LOGIC;
  signal link_reset_r : STD_LOGIC;
  signal link_reset_r2 : STD_LOGIC;
  signal n_0_gt0_rxresetdone_r3_reg_srl3 : STD_LOGIC;
  signal n_0_gt0_txresetdone_r3_reg_srl3 : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_6\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_7\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_8\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_9\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[12]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[12]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[12]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[12]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[16]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[16]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[16]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[16]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[20]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[20]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[20]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[20]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[24]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[24]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[24]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[24]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[28]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[28]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[28]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[28]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[24]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal n_0_rx_cdrlocked_i_1 : STD_LOGIC;
  signal n_0_rx_cdrlocked_i_2 : STD_LOGIC;
  signal n_0_rx_cdrlocked_i_3 : STD_LOGIC;
  signal n_0_rx_cdrlocked_i_4 : STD_LOGIC;
  signal n_0_rx_cdrlocked_i_5 : STD_LOGIC;
  signal n_0_rx_cdrlocked_i_6 : STD_LOGIC;
  signal n_0_rx_cdrlocked_i_7 : STD_LOGIC;
  signal n_0_rxfsm_soft_reset_r_i_1 : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[24]_i_1\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[28]_i_1\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[24]_i_1\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[28]_i_1\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[24]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[28]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[24]_i_1\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[28]_i_1\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[24]_i_1\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[28]_i_1\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal n_6_aurora_8b10b_0_multi_gt_i : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[24]_i_1\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[28]_i_1\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal n_76_gt_txresetfsm_i : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[20]_i_1\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[24]_i_1\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[28]_i_1\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal n_8_aurora_8b10b_0_multi_gt_i : STD_LOGIC;
  signal n_96_gt_txresetfsm_i : STD_LOGIC;
  signal rx_cdrlock_counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_cdrlocked : STD_LOGIC;
  signal rxfsm_rxresetdone_r : STD_LOGIC;
  signal rxfsm_rxresetdone_r2 : STD_LOGIC;
  signal rxfsm_soft_reset_r : STD_LOGIC;
  signal \^tx_lock\ : STD_LOGIC;
  signal txfsm_txresetdone_r : STD_LOGIC;
  signal \NLW_rx_cdrlock_counter_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute srl_name : string;
  attribute srl_name of gt0_rxresetdone_r3_reg_srl3 : label is "inst/\gt_wrapper_i/gt0_rxresetdone_r3_reg_srl3 ";
  attribute srl_name of gt0_txresetdone_r3_reg_srl3 : label is "inst/\gt_wrapper_i/gt0_txresetdone_r3_reg_srl3 ";
  attribute counter : integer;
  attribute counter of \rx_cdrlock_counter_reg[0]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[10]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[11]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[12]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[13]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[14]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[15]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[16]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[17]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[18]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[19]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[1]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[20]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[21]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[22]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[23]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[24]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[25]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[26]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[27]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[28]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[29]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[2]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[30]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[31]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[3]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[4]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[5]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[6]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[7]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[8]\ : label is 23;
  attribute counter of \rx_cdrlock_counter_reg[9]\ : label is 23;
begin
  tx_lock <= \^tx_lock\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
aurora_8b10b_0_multi_gt_i: entity work.aurora_8b10b_0aurora_8b10b_0_multi_gt
    port map (
      D(3 downto 0) => D(3 downto 0),
      I1 => I1,
      I2 => I2,
      I3(7 downto 0) => I3(7 downto 0),
      I4 => I4,
      O1 => n_6_aurora_8b10b_0_multi_gt_i,
      O100 => O100,
      O2 => n_8_aurora_8b10b_0_multi_gt_i,
      O90 => O90,
      O91 => O91,
      O92(7 downto 0) => O92(7 downto 0),
      O93(7 downto 0) => O93(7 downto 0),
      O94 => O94,
      O95 => O95,
      O96 => O96,
      O97 => O97,
      O98 => O98,
      O99 => O99,
      Q(0) => Q(0),
      RXCHARISK(3 downto 0) => RXCHARISK(3 downto 0),
      RXDATA(31 downto 0) => RXDATA(31 downto 0),
      RXDISPERR(1 downto 0) => RXDISPERR(1 downto 0),
      TXCHARISK(3 downto 0) => TXCHARISK(3 downto 0),
      TXDATA(31 downto 0) => TXDATA(31 downto 0),
      cpll_reset_i => cpll_reset_i,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      gt0_pllrefclklost_i => gt0_pllrefclklost_i,
      gt_qpllclk_quad2_in => gt_qpllclk_quad2_in,
      gt_qpllrefclk_quad2_in => gt_qpllrefclk_quad2_in,
      gt_refclk1 => gt_refclk1,
      gt_rx_reset_i => gt_rx_reset_i,
      gt_rxdfelfhold_i => gt_rxdfelfhold_i,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      hard_err_gt0 => hard_err_gt0,
      init_clk_in => init_clk_in,
      loopback(2 downto 0) => loopback(2 downto 0),
      power_down => power_down,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rxn => rxn,
      rxp => rxp,
      sync_clk => sync_clk,
      tx_lock => \^tx_lock\,
      tx_out_clk => tx_out_clk,
      txn => txn,
      txp => txp,
      user_clk => user_clk
    );
gt0_rxresetdone_r3_reg_srl3: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => n_6_aurora_8b10b_0_multi_gt_i,
      Q => n_0_gt0_rxresetdone_r3_reg_srl3
    );
gt0_txresetdone_r3_reg_srl3: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const0>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => user_clk,
      D => n_8_aurora_8b10b_0_multi_gt_i,
      Q => n_0_gt0_txresetdone_r3_reg_srl3
    );
gt_rx_reset_i_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => GTRXRESET,
      Q => gt_rx_reset_i,
      R => \<const0>\
    );
gt_rxresetfsm_i: entity work.aurora_8b10b_0aurora_8b10b_0_rx_startup_fsm
    port map (
      GTRXRESET => GTRXRESET,
      I1 => n_76_gt_txresetfsm_i,
      I2 => n_96_gt_txresetfsm_i,
      O42(1 downto 0) => O42(1 downto 0),
      O43(1 downto 0) => O43(1 downto 0),
      O44(1 downto 0) => O44(1 downto 0),
      O45(1 downto 0) => O45(1 downto 0),
      O46(1 downto 0) => O46(1 downto 0),
      O47(1 downto 0) => O47(1 downto 0),
      O48(1 downto 0) => O48(1 downto 0),
      O49(1 downto 0) => O49(1 downto 0),
      O50(1 downto 0) => O50(1 downto 0),
      O51(1 downto 0) => O51(1 downto 0),
      O52(1 downto 0) => O52(1 downto 0),
      O53(1 downto 0) => O53(1 downto 0),
      O54(1 downto 0) => O54(1 downto 0),
      O55(1 downto 0) => O55(1 downto 0),
      O56(1 downto 0) => O56(1 downto 0),
      O57(1 downto 0) => O57(1 downto 0),
      O58(1 downto 0) => O58(1 downto 0),
      O59(1 downto 0) => O59(1 downto 0),
      O60(1 downto 0) => O60(1 downto 0),
      O61(1 downto 0) => O61(1 downto 0),
      O62(1 downto 0) => O62(1 downto 0),
      O63(1 downto 0) => O63(1 downto 0),
      O64(1 downto 0) => O64(1 downto 0),
      O65(1 downto 0) => O65(1 downto 0),
      O66(1 downto 0) => O66(1 downto 0),
      O67(1 downto 0) => O67(1 downto 0),
      O68(1 downto 0) => O68(1 downto 0),
      O69(1 downto 0) => O69(1 downto 0),
      O70(1 downto 0) => O70(1 downto 0),
      O71(1 downto 0) => O71(1 downto 0),
      O72(1 downto 0) => O72(1 downto 0),
      O73(1 downto 0) => O73(1 downto 0),
      O74(1 downto 0) => O74(1 downto 0),
      O75(1 downto 0) => O75(1 downto 0),
      O76(1 downto 0) => O76(1 downto 0),
      O77(1 downto 0) => O77(1 downto 0),
      O78(1 downto 0) => O78(1 downto 0),
      O79(1 downto 0) => O79(1 downto 0),
      O80(1 downto 0) => O80(1 downto 0),
      O81(1 downto 0) => O81(1 downto 0),
      O82(1 downto 0) => O82(1 downto 0),
      O83(1 downto 0) => O83(1 downto 0),
      O84(1 downto 0) => O84(1 downto 0),
      O85(1 downto 0) => O85(1 downto 0),
      O86(1 downto 0) => O86(1 downto 0),
      O87(1 downto 0) => O87(1 downto 0),
      O88(1 downto 0) => O88(1 downto 0),
      O89(1 downto 0) => O89(1 downto 0),
      gt0_pllrefclklost_i => gt0_pllrefclklost_i,
      gt_rxdfelfhold_i => gt_rxdfelfhold_i,
      gt_rxuserrdy_i => gt_rxuserrdy_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      init_clk_in => init_clk_in,
      rx_cdrlocked => rx_cdrlocked,
      rxfsm_data_valid_r => rxfsm_data_valid_r,
      rxfsm_rxresetdone_r => rxfsm_rxresetdone_r,
      rxfsm_soft_reset_r => rxfsm_soft_reset_r,
      s_out_d1_cdc_to_42 => s_out_d1_cdc_to_42,
      s_out_d1_cdc_to_49 => s_out_d1_cdc_to_49,
      s_out_d1_cdc_to_56 => s_out_d1_cdc_to_56,
      s_out_d1_cdc_to_63 => s_out_d1_cdc_to_63,
      s_out_d1_cdc_to_70 => s_out_d1_cdc_to_70,
      s_out_d1_cdc_to_77 => s_out_d1_cdc_to_77,
      s_out_d1_cdc_to_84 => s_out_d1_cdc_to_84,
      s_out_d1_cdc_to_91 => s_out_d1_cdc_to_91,
      s_out_d2_43 => s_out_d2_43,
      s_out_d2_50 => s_out_d2_50,
      s_out_d2_57 => s_out_d2_57,
      s_out_d2_64 => s_out_d2_64,
      s_out_d2_71 => s_out_d2_71,
      s_out_d2_78 => s_out_d2_78,
      s_out_d2_85 => s_out_d2_85,
      s_out_d2_92 => s_out_d2_92,
      s_out_d3_44 => s_out_d3_44,
      s_out_d3_51 => s_out_d3_51,
      s_out_d3_58 => s_out_d3_58,
      s_out_d3_65 => s_out_d3_65,
      s_out_d3_72 => s_out_d3_72,
      s_out_d3_79 => s_out_d3_79,
      s_out_d3_86 => s_out_d3_86,
      s_out_d3_93 => s_out_d3_93,
      s_out_d4_45 => s_out_d4_45,
      s_out_d4_52 => s_out_d4_52,
      s_out_d4_59 => s_out_d4_59,
      s_out_d4_66 => s_out_d4_66,
      s_out_d4_73 => s_out_d4_73,
      s_out_d4_80 => s_out_d4_80,
      s_out_d4_87 => s_out_d4_87,
      s_out_d4_94 => s_out_d4_94,
      s_out_d5_46 => s_out_d5_46,
      s_out_d5_53 => s_out_d5_53,
      s_out_d5_60 => s_out_d5_60,
      s_out_d5_67 => s_out_d5_67,
      s_out_d5_74 => s_out_d5_74,
      s_out_d5_81 => s_out_d5_81,
      s_out_d5_88 => s_out_d5_88,
      s_out_d5_95 => s_out_d5_95,
      s_out_d6_47 => s_out_d6_47,
      s_out_d6_54 => s_out_d6_54,
      s_out_d6_61 => s_out_d6_61,
      s_out_d6_68 => s_out_d6_68,
      s_out_d6_75 => s_out_d6_75,
      s_out_d6_82 => s_out_d6_82,
      s_out_d6_89 => s_out_d6_89,
      s_out_d6_96 => s_out_d6_96,
      s_out_d7_48 => s_out_d7_48,
      s_out_d7_55 => s_out_d7_55,
      s_out_d7_62 => s_out_d7_62,
      s_out_d7_69 => s_out_d7_69,
      s_out_d7_76 => s_out_d7_76,
      s_out_d7_83 => s_out_d7_83,
      s_out_d7_90 => s_out_d7_90,
      s_out_d7_97 => s_out_d7_97,
      user_clk => user_clk
    );
gt_txresetfsm_i: entity work.aurora_8b10b_0aurora_8b10b_0_tx_startup_fsm
    port map (
      O1(1 downto 0) => O1(1 downto 0),
      O10(1 downto 0) => O10(1 downto 0),
      O11(1 downto 0) => O11(1 downto 0),
      O12(1 downto 0) => O12(1 downto 0),
      O13(1 downto 0) => O13(1 downto 0),
      O14(1 downto 0) => O14(1 downto 0),
      O15(1 downto 0) => O15(1 downto 0),
      O16(1 downto 0) => O16(1 downto 0),
      O17(1 downto 0) => O17(1 downto 0),
      O18(1 downto 0) => O18(1 downto 0),
      O19(1 downto 0) => O19(1 downto 0),
      O2(1 downto 0) => O2(1 downto 0),
      O20(1 downto 0) => O20(1 downto 0),
      O21(1 downto 0) => O21(1 downto 0),
      O22(1 downto 0) => O22(1 downto 0),
      O23(1 downto 0) => O23(1 downto 0),
      O24 => n_76_gt_txresetfsm_i,
      O25(1 downto 0) => O24(1 downto 0),
      O26(1 downto 0) => O25(1 downto 0),
      O27(1 downto 0) => O26(1 downto 0),
      O28(1 downto 0) => O27(1 downto 0),
      O29(1 downto 0) => O28(1 downto 0),
      O3(1 downto 0) => O3(1 downto 0),
      O30(1 downto 0) => O29(1 downto 0),
      O31 => n_96_gt_txresetfsm_i,
      O32(1 downto 0) => O30(1 downto 0),
      O33(1 downto 0) => O31(1 downto 0),
      O34(1 downto 0) => O32(1 downto 0),
      O35(1 downto 0) => O33(1 downto 0),
      O36(1 downto 0) => O34(1 downto 0),
      O37(1 downto 0) => O35(1 downto 0),
      O38(1 downto 0) => O36(1 downto 0),
      O39(1 downto 0) => O37(1 downto 0),
      O4(1 downto 0) => O4(1 downto 0),
      O40(1 downto 0) => O38(1 downto 0),
      O41(1 downto 0) => O39(1 downto 0),
      O42(1 downto 0) => O40(1 downto 0),
      O43(1 downto 0) => O41(1 downto 0),
      O5(1 downto 0) => O5(1 downto 0),
      O6(1 downto 0) => O6(1 downto 0),
      O7(1 downto 0) => O7(1 downto 0),
      O8(1 downto 0) => O8(1 downto 0),
      O9(1 downto 0) => O9(1 downto 0),
      cpll_reset_i => cpll_reset_i,
      gt0_pllrefclklost_i => gt0_pllrefclklost_i,
      gt_reset => gt_reset,
      gt_tx_reset_i => gt_tx_reset_i,
      gt_txuserrdy_i => gt_txuserrdy_i,
      init_clk_in => init_clk_in,
      \out\(1 downto 0) => \out\(1 downto 0),
      s_out_d1_cdc_to => s_out_d1_cdc_to,
      s_out_d1_cdc_to_0 => s_out_d1_cdc_to_0,
      s_out_d1_cdc_to_14 => s_out_d1_cdc_to_14,
      s_out_d1_cdc_to_21 => s_out_d1_cdc_to_21,
      s_out_d1_cdc_to_28 => s_out_d1_cdc_to_28,
      s_out_d1_cdc_to_35 => s_out_d1_cdc_to_35,
      s_out_d1_cdc_to_7 => s_out_d1_cdc_to_7,
      s_out_d2 => s_out_d2,
      s_out_d2_1 => s_out_d2_1,
      s_out_d2_15 => s_out_d2_15,
      s_out_d2_22 => s_out_d2_22,
      s_out_d2_29 => s_out_d2_29,
      s_out_d2_36 => s_out_d2_36,
      s_out_d2_8 => s_out_d2_8,
      s_out_d3 => s_out_d3,
      s_out_d3_16 => s_out_d3_16,
      s_out_d3_2 => s_out_d3_2,
      s_out_d3_23 => s_out_d3_23,
      s_out_d3_30 => s_out_d3_30,
      s_out_d3_37 => s_out_d3_37,
      s_out_d3_9 => s_out_d3_9,
      s_out_d4 => s_out_d4,
      s_out_d4_10 => s_out_d4_10,
      s_out_d4_17 => s_out_d4_17,
      s_out_d4_24 => s_out_d4_24,
      s_out_d4_3 => s_out_d4_3,
      s_out_d4_31 => s_out_d4_31,
      s_out_d4_38 => s_out_d4_38,
      s_out_d5 => s_out_d5,
      s_out_d5_11 => s_out_d5_11,
      s_out_d5_18 => s_out_d5_18,
      s_out_d5_25 => s_out_d5_25,
      s_out_d5_32 => s_out_d5_32,
      s_out_d5_39 => s_out_d5_39,
      s_out_d5_4 => s_out_d5_4,
      s_out_d6 => s_out_d6,
      s_out_d6_12 => s_out_d6_12,
      s_out_d6_19 => s_out_d6_19,
      s_out_d6_26 => s_out_d6_26,
      s_out_d6_33 => s_out_d6_33,
      s_out_d6_40 => s_out_d6_40,
      s_out_d6_5 => s_out_d6_5,
      s_out_d7 => s_out_d7,
      s_out_d7_13 => s_out_d7_13,
      s_out_d7_20 => s_out_d7_20,
      s_out_d7_27 => s_out_d7_27,
      s_out_d7_34 => s_out_d7_34,
      s_out_d7_41 => s_out_d7_41,
      s_out_d7_6 => s_out_d7_6,
      tx_lock => \^tx_lock\,
      tx_resetdone_out => tx_resetdone_out,
      txfsm_txresetdone_r => txfsm_txresetdone_r,
      user_clk => user_clk
    );
link_reset_r2_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => link_reset_r,
      Q => link_reset_r2,
      R => \<const0>\
    );
link_reset_r_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => link_reset_out,
      Q => link_reset_r,
      R => \<const0>\
    );
\rx_cdrlock_counter[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[0]_i_2\
    );
\rx_cdrlock_counter[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter[0]_i_7\,
      I1 => rx_cdrlock_counter(3),
      O => \n_0_rx_cdrlock_counter[0]_i_3\
    );
\rx_cdrlock_counter[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter[0]_i_7\,
      I1 => rx_cdrlock_counter(2),
      O => \n_0_rx_cdrlock_counter[0]_i_4\
    );
\rx_cdrlock_counter[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(1),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[0]_i_5\
    );
\rx_cdrlock_counter[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter[0]_i_7\,
      I1 => rx_cdrlock_counter(0),
      O => \n_0_rx_cdrlock_counter[0]_i_6\
    );
\rx_cdrlock_counter[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_7,
      I1 => n_0_rx_cdrlocked_i_6,
      I2 => \n_0_rx_cdrlock_counter[0]_i_8\,
      I3 => n_0_rx_cdrlocked_i_5,
      I4 => n_0_rx_cdrlocked_i_4,
      I5 => \n_0_rx_cdrlock_counter[0]_i_9\,
      O => \n_0_rx_cdrlock_counter[0]_i_7\
    );
\rx_cdrlock_counter[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => rx_cdrlock_counter(14),
      I1 => rx_cdrlock_counter(11),
      I2 => rx_cdrlock_counter(24),
      I3 => rx_cdrlock_counter(6),
      O => \n_0_rx_cdrlock_counter[0]_i_8\
    );
\rx_cdrlock_counter[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => rx_cdrlock_counter(20),
      I1 => rx_cdrlock_counter(18),
      I2 => rx_cdrlock_counter(28),
      I3 => rx_cdrlock_counter(26),
      O => \n_0_rx_cdrlock_counter[0]_i_9\
    );
\rx_cdrlock_counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(15),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[12]_i_2\
    );
\rx_cdrlock_counter[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(14),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[12]_i_3\
    );
\rx_cdrlock_counter[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(13),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[12]_i_4\
    );
\rx_cdrlock_counter[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(12),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[12]_i_5\
    );
\rx_cdrlock_counter[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(19),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[16]_i_2\
    );
\rx_cdrlock_counter[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(18),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[16]_i_3\
    );
\rx_cdrlock_counter[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(17),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[16]_i_4\
    );
\rx_cdrlock_counter[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(16),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[16]_i_5\
    );
\rx_cdrlock_counter[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(23),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[20]_i_2\
    );
\rx_cdrlock_counter[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(22),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[20]_i_3\
    );
\rx_cdrlock_counter[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(21),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[20]_i_4\
    );
\rx_cdrlock_counter[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(20),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[20]_i_5\
    );
\rx_cdrlock_counter[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(27),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[24]_i_2\
    );
\rx_cdrlock_counter[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(26),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[24]_i_3\
    );
\rx_cdrlock_counter[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(25),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[24]_i_4\
    );
\rx_cdrlock_counter[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(24),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[24]_i_5\
    );
\rx_cdrlock_counter[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(31),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[28]_i_2\
    );
\rx_cdrlock_counter[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(30),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[28]_i_3\
    );
\rx_cdrlock_counter[28]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(29),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[28]_i_4\
    );
\rx_cdrlock_counter[28]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(28),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[28]_i_5\
    );
\rx_cdrlock_counter[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(7),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[4]_i_2\
    );
\rx_cdrlock_counter[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(6),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[4]_i_3\
    );
\rx_cdrlock_counter[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter[0]_i_7\,
      I1 => rx_cdrlock_counter(5),
      O => \n_0_rx_cdrlock_counter[4]_i_4\
    );
\rx_cdrlock_counter[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(4),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[4]_i_5\
    );
\rx_cdrlock_counter[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(11),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[8]_i_2\
    );
\rx_cdrlock_counter[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(10),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[8]_i_3\
    );
\rx_cdrlock_counter[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter[0]_i_7\,
      I1 => rx_cdrlock_counter(9),
      O => \n_0_rx_cdrlock_counter[8]_i_4\
    );
\rx_cdrlock_counter[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rx_cdrlock_counter(8),
      I1 => \n_0_rx_cdrlock_counter[0]_i_7\,
      O => \n_0_rx_cdrlock_counter[8]_i_5\
    );
\rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[0]_i_1\,
      Q => rx_cdrlock_counter(0),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[0]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \<const0>\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[0]_i_1\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[0]_i_1\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[0]_i_1\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[0]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \n_0_rx_cdrlock_counter[0]_i_2\,
      O(3) => \n_4_rx_cdrlock_counter_reg[0]_i_1\,
      O(2) => \n_5_rx_cdrlock_counter_reg[0]_i_1\,
      O(1) => \n_6_rx_cdrlock_counter_reg[0]_i_1\,
      O(0) => \n_7_rx_cdrlock_counter_reg[0]_i_1\,
      S(3) => \n_0_rx_cdrlock_counter[0]_i_3\,
      S(2) => \n_0_rx_cdrlock_counter[0]_i_4\,
      S(1) => \n_0_rx_cdrlock_counter[0]_i_5\,
      S(0) => \n_0_rx_cdrlock_counter[0]_i_6\
    );
\rx_cdrlock_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_rx_cdrlock_counter_reg[8]_i_1\,
      Q => rx_cdrlock_counter(10),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_rx_cdrlock_counter_reg[8]_i_1\,
      Q => rx_cdrlock_counter(11),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[12]_i_1\,
      Q => rx_cdrlock_counter(12),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[8]_i_1\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[12]_i_1\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[12]_i_1\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[12]_i_1\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[12]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_rx_cdrlock_counter_reg[12]_i_1\,
      O(2) => \n_5_rx_cdrlock_counter_reg[12]_i_1\,
      O(1) => \n_6_rx_cdrlock_counter_reg[12]_i_1\,
      O(0) => \n_7_rx_cdrlock_counter_reg[12]_i_1\,
      S(3) => \n_0_rx_cdrlock_counter[12]_i_2\,
      S(2) => \n_0_rx_cdrlock_counter[12]_i_3\,
      S(1) => \n_0_rx_cdrlock_counter[12]_i_4\,
      S(0) => \n_0_rx_cdrlock_counter[12]_i_5\
    );
\rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[12]_i_1\,
      Q => rx_cdrlock_counter(13),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_rx_cdrlock_counter_reg[12]_i_1\,
      Q => rx_cdrlock_counter(14),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_rx_cdrlock_counter_reg[12]_i_1\,
      Q => rx_cdrlock_counter(15),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[16]_i_1\,
      Q => rx_cdrlock_counter(16),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[12]_i_1\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[16]_i_1\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[16]_i_1\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[16]_i_1\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[16]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_rx_cdrlock_counter_reg[16]_i_1\,
      O(2) => \n_5_rx_cdrlock_counter_reg[16]_i_1\,
      O(1) => \n_6_rx_cdrlock_counter_reg[16]_i_1\,
      O(0) => \n_7_rx_cdrlock_counter_reg[16]_i_1\,
      S(3) => \n_0_rx_cdrlock_counter[16]_i_2\,
      S(2) => \n_0_rx_cdrlock_counter[16]_i_3\,
      S(1) => \n_0_rx_cdrlock_counter[16]_i_4\,
      S(0) => \n_0_rx_cdrlock_counter[16]_i_5\
    );
\rx_cdrlock_counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[16]_i_1\,
      Q => rx_cdrlock_counter(17),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_rx_cdrlock_counter_reg[16]_i_1\,
      Q => rx_cdrlock_counter(18),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_rx_cdrlock_counter_reg[16]_i_1\,
      Q => rx_cdrlock_counter(19),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[0]_i_1\,
      Q => rx_cdrlock_counter(1),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[20]_i_1\,
      Q => rx_cdrlock_counter(20),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[20]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[16]_i_1\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[20]_i_1\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[20]_i_1\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[20]_i_1\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[20]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_rx_cdrlock_counter_reg[20]_i_1\,
      O(2) => \n_5_rx_cdrlock_counter_reg[20]_i_1\,
      O(1) => \n_6_rx_cdrlock_counter_reg[20]_i_1\,
      O(0) => \n_7_rx_cdrlock_counter_reg[20]_i_1\,
      S(3) => \n_0_rx_cdrlock_counter[20]_i_2\,
      S(2) => \n_0_rx_cdrlock_counter[20]_i_3\,
      S(1) => \n_0_rx_cdrlock_counter[20]_i_4\,
      S(0) => \n_0_rx_cdrlock_counter[20]_i_5\
    );
\rx_cdrlock_counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[20]_i_1\,
      Q => rx_cdrlock_counter(21),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_rx_cdrlock_counter_reg[20]_i_1\,
      Q => rx_cdrlock_counter(22),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_rx_cdrlock_counter_reg[20]_i_1\,
      Q => rx_cdrlock_counter(23),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[24]_i_1\,
      Q => rx_cdrlock_counter(24),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[24]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[20]_i_1\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[24]_i_1\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[24]_i_1\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[24]_i_1\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[24]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_rx_cdrlock_counter_reg[24]_i_1\,
      O(2) => \n_5_rx_cdrlock_counter_reg[24]_i_1\,
      O(1) => \n_6_rx_cdrlock_counter_reg[24]_i_1\,
      O(0) => \n_7_rx_cdrlock_counter_reg[24]_i_1\,
      S(3) => \n_0_rx_cdrlock_counter[24]_i_2\,
      S(2) => \n_0_rx_cdrlock_counter[24]_i_3\,
      S(1) => \n_0_rx_cdrlock_counter[24]_i_4\,
      S(0) => \n_0_rx_cdrlock_counter[24]_i_5\
    );
\rx_cdrlock_counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[24]_i_1\,
      Q => rx_cdrlock_counter(25),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_rx_cdrlock_counter_reg[24]_i_1\,
      Q => rx_cdrlock_counter(26),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_rx_cdrlock_counter_reg[24]_i_1\,
      Q => rx_cdrlock_counter(27),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[28]_i_1\,
      Q => rx_cdrlock_counter(28),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[28]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[24]_i_1\,
      CO(3) => \NLW_rx_cdrlock_counter_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \n_1_rx_cdrlock_counter_reg[28]_i_1\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[28]_i_1\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[28]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_rx_cdrlock_counter_reg[28]_i_1\,
      O(2) => \n_5_rx_cdrlock_counter_reg[28]_i_1\,
      O(1) => \n_6_rx_cdrlock_counter_reg[28]_i_1\,
      O(0) => \n_7_rx_cdrlock_counter_reg[28]_i_1\,
      S(3) => \n_0_rx_cdrlock_counter[28]_i_2\,
      S(2) => \n_0_rx_cdrlock_counter[28]_i_3\,
      S(1) => \n_0_rx_cdrlock_counter[28]_i_4\,
      S(0) => \n_0_rx_cdrlock_counter[28]_i_5\
    );
\rx_cdrlock_counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[28]_i_1\,
      Q => rx_cdrlock_counter(29),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_rx_cdrlock_counter_reg[0]_i_1\,
      Q => rx_cdrlock_counter(2),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_rx_cdrlock_counter_reg[28]_i_1\,
      Q => rx_cdrlock_counter(30),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_rx_cdrlock_counter_reg[28]_i_1\,
      Q => rx_cdrlock_counter(31),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_rx_cdrlock_counter_reg[0]_i_1\,
      Q => rx_cdrlock_counter(3),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[4]_i_1\,
      Q => rx_cdrlock_counter(4),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[0]_i_1\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[4]_i_1\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[4]_i_1\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[4]_i_1\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[4]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_rx_cdrlock_counter_reg[4]_i_1\,
      O(2) => \n_5_rx_cdrlock_counter_reg[4]_i_1\,
      O(1) => \n_6_rx_cdrlock_counter_reg[4]_i_1\,
      O(0) => \n_7_rx_cdrlock_counter_reg[4]_i_1\,
      S(3) => \n_0_rx_cdrlock_counter[4]_i_2\,
      S(2) => \n_0_rx_cdrlock_counter[4]_i_3\,
      S(1) => \n_0_rx_cdrlock_counter[4]_i_4\,
      S(0) => \n_0_rx_cdrlock_counter[4]_i_5\
    );
\rx_cdrlock_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[4]_i_1\,
      Q => rx_cdrlock_counter(5),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_5_rx_cdrlock_counter_reg[4]_i_1\,
      Q => rx_cdrlock_counter(6),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_4_rx_cdrlock_counter_reg[4]_i_1\,
      Q => rx_cdrlock_counter(7),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[8]_i_1\,
      Q => rx_cdrlock_counter(8),
      R => gt_rx_reset_i
    );
\rx_cdrlock_counter_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[4]_i_1\,
      CO(3) => \n_0_rx_cdrlock_counter_reg[8]_i_1\,
      CO(2) => \n_1_rx_cdrlock_counter_reg[8]_i_1\,
      CO(1) => \n_2_rx_cdrlock_counter_reg[8]_i_1\,
      CO(0) => \n_3_rx_cdrlock_counter_reg[8]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_rx_cdrlock_counter_reg[8]_i_1\,
      O(2) => \n_5_rx_cdrlock_counter_reg[8]_i_1\,
      O(1) => \n_6_rx_cdrlock_counter_reg[8]_i_1\,
      O(0) => \n_7_rx_cdrlock_counter_reg[8]_i_1\,
      S(3) => \n_0_rx_cdrlock_counter[8]_i_2\,
      S(2) => \n_0_rx_cdrlock_counter[8]_i_3\,
      S(1) => \n_0_rx_cdrlock_counter[8]_i_4\,
      S(0) => \n_0_rx_cdrlock_counter[8]_i_5\
    );
\rx_cdrlock_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[8]_i_1\,
      Q => rx_cdrlock_counter(9),
      R => gt_rx_reset_i
    );
rx_cdrlocked_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00BA"
    )
    port map (
      I0 => rx_cdrlocked,
      I1 => n_0_rx_cdrlocked_i_2,
      I2 => n_0_rx_cdrlocked_i_3,
      I3 => gt_rx_reset_i,
      O => n_0_rx_cdrlocked_i_1
    );
rx_cdrlocked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => rx_cdrlock_counter(26),
      I1 => rx_cdrlock_counter(28),
      I2 => rx_cdrlock_counter(18),
      I3 => rx_cdrlock_counter(20),
      I4 => n_0_rx_cdrlocked_i_4,
      I5 => n_0_rx_cdrlocked_i_5,
      O => n_0_rx_cdrlocked_i_2
    );
rx_cdrlocked_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => rx_cdrlock_counter(6),
      I1 => rx_cdrlock_counter(24),
      I2 => rx_cdrlock_counter(11),
      I3 => rx_cdrlock_counter(14),
      I4 => n_0_rx_cdrlocked_i_6,
      I5 => n_0_rx_cdrlocked_i_7,
      O => n_0_rx_cdrlocked_i_3
    );
rx_cdrlocked_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFEFF"
    )
    port map (
      I0 => rx_cdrlock_counter(21),
      I1 => rx_cdrlock_counter(19),
      I2 => rx_cdrlock_counter(0),
      I3 => rx_cdrlock_counter(2),
      I4 => rx_cdrlock_counter(1),
      I5 => rx_cdrlock_counter(13),
      O => n_0_rx_cdrlocked_i_4
    );
rx_cdrlocked_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEFFF"
    )
    port map (
      I0 => rx_cdrlock_counter(23),
      I1 => rx_cdrlock_counter(17),
      I2 => rx_cdrlock_counter(9),
      I3 => rx_cdrlock_counter(3),
      I4 => rx_cdrlock_counter(7),
      I5 => rx_cdrlock_counter(10),
      O => n_0_rx_cdrlocked_i_5
    );
rx_cdrlocked_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => rx_cdrlock_counter(12),
      I1 => rx_cdrlock_counter(8),
      I2 => rx_cdrlock_counter(16),
      I3 => rx_cdrlock_counter(22),
      I4 => rx_cdrlock_counter(4),
      I5 => rx_cdrlock_counter(15),
      O => n_0_rx_cdrlocked_i_6
    );
rx_cdrlocked_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010000"
    )
    port map (
      I0 => rx_cdrlock_counter(30),
      I1 => rx_cdrlock_counter(31),
      I2 => rx_cdrlock_counter(27),
      I3 => rx_cdrlock_counter(29),
      I4 => rx_cdrlock_counter(5),
      I5 => rx_cdrlock_counter(25),
      O => n_0_rx_cdrlocked_i_7
    );
rx_cdrlocked_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_rx_cdrlocked_i_1,
      Q => rx_cdrlocked,
      R => \<const0>\
    );
rxfsm_rxresetdone_r2_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rxfsm_rxresetdone_r,
      Q => rxfsm_rxresetdone_r2,
      R => \<const0>\
    );
rxfsm_rxresetdone_r3_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => rxfsm_rxresetdone_r2,
      Q => rx_resetdone_out,
      R => \<const0>\
    );
rxfsm_rxresetdone_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_0_gt0_rxresetdone_r3_reg_srl3,
      Q => rxfsm_rxresetdone_r,
      R => \<const0>\
    );
rxfsm_soft_reset_r_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => gt_reset,
      I1 => link_reset_r2,
      O => n_0_rxfsm_soft_reset_r_i_1
    );
rxfsm_soft_reset_r_reg: unisim.vcomponents.FDRE
    port map (
      C => init_clk_in,
      CE => \<const1>\,
      D => n_0_rxfsm_soft_reset_r_i_1,
      Q => rxfsm_soft_reset_r,
      R => \<const0>\
    );
txfsm_txresetdone_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => n_0_gt0_txresetdone_r3_reg_srl3,
      Q => txfsm_txresetdone_r,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_RX_LL is
  port (
    in_frame_c : out STD_LOGIC_VECTOR ( 0 to 1 );
    in_frame_r : out STD_LOGIC;
    frame_err : out STD_LOGIC;
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rx_tvalid : out STD_LOGIC;
    m_axi_rx_tlast : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 31 );
    I1 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC;
    S11_in : in STD_LOGIC;
    S1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    user_clk : in STD_LOGIC;
    I3 : in STD_LOGIC;
    O19 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O18 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O17 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O16 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    start_rx_i : in STD_LOGIC;
    I4 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I5 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I6 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end aurora_8b10b_0aurora_8b10b_0_RX_LL;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_RX_LL is
begin
rx_ll_pdu_datapath_i: entity work.aurora_8b10b_0aurora_8b10b_0_RX_LL_PDU_DATAPATH
    port map (
      D(1 downto 0) => D(1 downto 0),
      I1 => I1,
      I2 => I2,
      I3 => I3,
      I4(1 downto 0) => I4(1 downto 0),
      I5(1 downto 0) => I5(1 downto 0),
      I6(1 downto 0) => I6(1 downto 0),
      O16(7 downto 0) => O16(7 downto 0),
      O17(7 downto 0) => O17(7 downto 0),
      O18(7 downto 0) => O18(7 downto 0),
      O19(7 downto 0) => O19(7 downto 0),
      S1 => S1,
      S11_in => S11_in,
      SR(0) => SR(0),
      frame_err => frame_err,
      in_frame_c(0 to 1) => in_frame_c(0 to 1),
      in_frame_r => in_frame_r,
      m_axi_rx_tdata(0 to 31) => m_axi_rx_tdata(0 to 31),
      m_axi_rx_tkeep(2 downto 0) => m_axi_rx_tkeep(2 downto 0),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      start_rx_i => start_rx_i,
      user_clk => user_clk
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0aurora_8b10b_0_core is
  port (
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 );
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 31 );
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 3 );
    m_axi_rx_tvalid : out STD_LOGIC;
    m_axi_rx_tlast : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    hard_err : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    frame_err : out STD_LOGIC;
    channel_up : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    warn_cc : in STD_LOGIC;
    do_cc : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    power_down : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt_reset : in STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    pll_not_locked : in STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    rx_resetdone_out : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpen_in : in STD_LOGIC;
    drprdy_out : out STD_LOGIC;
    drpwe_in : in STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    gt0_qplllock_in : in STD_LOGIC;
    gt0_qpllrefclklost_in : in STD_LOGIC;
    gt0_qpllreset_out : out STD_LOGIC;
    gt_qpllclk_quad2_in : in STD_LOGIC;
    gt_qpllrefclk_quad2_in : in STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    tx_lock : out STD_LOGIC
  );
  attribute core_generation_info : string;
  attribute core_generation_info of aurora_8b10b_0aurora_8b10b_0_core : entity is "aurora_8b10b_0,aurora_8b10b_v10_1,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ1,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=1,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=45000,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=90000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}";
  attribute SIM_GTRESET_SPEEDUP : string;
  attribute SIM_GTRESET_SPEEDUP of aurora_8b10b_0aurora_8b10b_0_core : entity is "FALSE";
end aurora_8b10b_0aurora_8b10b_0_core;

architecture STRUCTURE of aurora_8b10b_0aurora_8b10b_0_core is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0\ : STD_LOGIC;
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \channel_init_sm_i/wait_for_lane_up_r\ : STD_LOGIC;
  signal \channel_init_sm_i/wait_for_lane_up_r0\ : STD_LOGIC;
  signal \^channel_up\ : STD_LOGIC;
  signal ena_comma_align_i : STD_LOGIC;
  signal gen_a_i : STD_LOGIC;
  signal gen_cc_i : STD_LOGIC;
  signal gen_k_i : STD_LOGIC_VECTOR ( 0 to 3 );
  signal gen_pad_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gen_r_i : STD_LOGIC_VECTOR ( 0 to 3 );
  signal gen_scp_i : STD_LOGIC;
  signal gen_v_i : STD_LOGIC_VECTOR ( 1 to 3 );
  signal got_v_i : STD_LOGIC;
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal hard_err_i : STD_LOGIC;
  signal \^lane_up\ : STD_LOGIC;
  signal \link_reset_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \link_reset_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \link_reset_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \link_reset_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \link_reset_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \link_reset_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \link_reset_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \link_reset_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \link_reset_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \link_reset_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \link_reset_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \link_reset_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \link_reset_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \^link_reset_out\ : STD_LOGIC;
  signal \^m_axi_rx_tkeep\ : STD_LOGIC_VECTOR ( 1 to 3 );
  signal n_0_axi_to_ll_pdu_i : STD_LOGIC;
  signal n_100_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_101_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_102_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_103_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_104_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_105_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_106_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_107_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_108_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_109_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_110_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_111_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_112_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_113_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_1_axi_to_ll_pdu_i : STD_LOGIC;
  signal n_20_aurora_8b10b_0_global_logic_i : STD_LOGIC;
  signal n_21_aurora_8b10b_0_global_logic_i : STD_LOGIC;
  signal n_25_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_26_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_30_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_31_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_32_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_34_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_351_gt_wrapper_i : STD_LOGIC;
  signal n_352_gt_wrapper_i : STD_LOGIC;
  signal n_354_gt_wrapper_i : STD_LOGIC;
  signal n_355_gt_wrapper_i : STD_LOGIC;
  signal n_356_gt_wrapper_i : STD_LOGIC;
  signal n_357_gt_wrapper_i : STD_LOGIC;
  signal n_358_gt_wrapper_i : STD_LOGIC;
  signal n_359_gt_wrapper_i : STD_LOGIC;
  signal n_360_gt_wrapper_i : STD_LOGIC;
  signal n_361_gt_wrapper_i : STD_LOGIC;
  signal n_362_gt_wrapper_i : STD_LOGIC;
  signal n_363_gt_wrapper_i : STD_LOGIC;
  signal n_364_gt_wrapper_i : STD_LOGIC;
  signal n_365_gt_wrapper_i : STD_LOGIC;
  signal n_366_gt_wrapper_i : STD_LOGIC;
  signal n_367_gt_wrapper_i : STD_LOGIC;
  signal n_368_gt_wrapper_i : STD_LOGIC;
  signal n_369_gt_wrapper_i : STD_LOGIC;
  signal n_36_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_370_gt_wrapper_i : STD_LOGIC;
  signal n_371_gt_wrapper_i : STD_LOGIC;
  signal n_372_gt_wrapper_i : STD_LOGIC;
  signal n_373_gt_wrapper_i : STD_LOGIC;
  signal n_374_gt_wrapper_i : STD_LOGIC;
  signal n_375_gt_wrapper_i : STD_LOGIC;
  signal n_376_gt_wrapper_i : STD_LOGIC;
  signal n_37_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_38_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_39_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_39_core_reset_logic_i : STD_LOGIC;
  signal n_3_aurora_8b10b_0_tx_ll_i : STD_LOGIC;
  signal n_40_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_41_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_42_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_43_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_44_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_49_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_82_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_83_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_84_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_85_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_86_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_87_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_88_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_89_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_90_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_91_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_92_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_93_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_94_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_95_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_96_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_97_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_98_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal n_99_aurora_8b10b_0_aurora_lane_4byte_0_i : STD_LOGIC;
  signal reset_channel_i : STD_LOGIC;
  signal reset_lanes_i : STD_LOGIC;
  signal rx_char_is_comma_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_char_is_k_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rx_data_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal rx_disp_err_i : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rx_ecp_striped_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S1\ : STD_LOGIC;
  signal \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S11_in\ : STD_LOGIC;
  signal \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_c\ : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_r\ : STD_LOGIC;
  signal rx_ll_rst : STD_LOGIC;
  signal rx_polarity_i : STD_LOGIC;
  signal rx_realign_i : STD_LOGIC;
  signal \^rx_resetdone_out\ : STD_LOGIC;
  signal rx_scp_striped_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal rxfsm_data_valid_r : STD_LOGIC;
  signal soft_err_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal start_rx_i : STD_LOGIC;
  signal \^sys_reset_out\ : STD_LOGIC;
  signal tx_char_is_k_i : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal tx_data_i : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tx_dst_rdy : STD_LOGIC;
  signal \tx_ll_control_i/reset_i\ : STD_LOGIC;
  signal tx_pe_data_i : STD_LOGIC_VECTOR ( 0 to 31 );
  signal tx_pe_data_v_i : STD_LOGIC_VECTOR ( 0 to 1 );
  signal \tx_resetdone_cdc_sync/s_level_out_bus_d1_cdc_to\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tx_resetdone_cdc_sync/s_level_out_bus_d2\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tx_resetdone_cdc_sync/s_level_out_bus_d3\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tx_resetdone_cdc_sync/s_level_out_bus_d4\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tx_resetdone_cdc_sync/s_level_out_bus_d5\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tx_resetdone_cdc_sync/s_level_out_bus_d6\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tx_resetdone_cdc_sync/s_out_d1_cdc_to\ : STD_LOGIC;
  signal \tx_resetdone_cdc_sync/s_out_d2\ : STD_LOGIC;
  signal \tx_resetdone_cdc_sync/s_out_d3\ : STD_LOGIC;
  signal \tx_resetdone_cdc_sync/s_out_d4\ : STD_LOGIC;
  signal \tx_resetdone_cdc_sync/s_out_d5\ : STD_LOGIC;
  signal \tx_resetdone_cdc_sync/s_out_d6\ : STD_LOGIC;
  signal \tx_resetdone_cdc_sync/s_out_d7\ : STD_LOGIC;
  signal \^tx_resetdone_out\ : STD_LOGIC;
begin
  channel_up <= \^channel_up\;
  gt0_qpllreset_out <= \<const0>\;
  lane_up <= \^lane_up\;
  link_reset_out <= \^link_reset_out\;
  m_axi_rx_tkeep(0) <= \<const1>\;
  m_axi_rx_tkeep(1 to 3) <= \^m_axi_rx_tkeep\(1 to 3);
  rx_resetdone_out <= \^rx_resetdone_out\;
  sys_reset_out <= \^sys_reset_out\;
  tx_resetdone_out <= \^tx_resetdone_out\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
aurora_8b10b_0_aurora_lane_4byte_0_i: entity work.aurora_8b10b_0aurora_8b10b_0_AURORA_LANE_4BYTE
    port map (
      D(1) => n_30_aurora_8b10b_0_aurora_lane_4byte_0_i,
      D(0) => n_31_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I1 => n_3_aurora_8b10b_0_tx_ll_i,
      I10(2) => gen_v_i(1),
      I10(1) => gen_v_i(2),
      I10(0) => gen_v_i(3),
      I11(3) => gen_r_i(0),
      I11(2) => gen_r_i(1),
      I11(1) => gen_r_i(2),
      I11(0) => gen_r_i(3),
      I12(3) => gen_k_i(0),
      I12(2) => gen_k_i(1),
      I12(1) => gen_k_i(2),
      I12(0) => gen_k_i(3),
      I13(7) => n_362_gt_wrapper_i,
      I13(6) => n_363_gt_wrapper_i,
      I13(5) => n_364_gt_wrapper_i,
      I13(4) => n_365_gt_wrapper_i,
      I13(3) => n_366_gt_wrapper_i,
      I13(2) => n_367_gt_wrapper_i,
      I13(1) => n_368_gt_wrapper_i,
      I13(0) => n_369_gt_wrapper_i,
      I14(7) => n_354_gt_wrapper_i,
      I14(6) => n_355_gt_wrapper_i,
      I14(5) => n_356_gt_wrapper_i,
      I14(4) => n_357_gt_wrapper_i,
      I14(3) => n_358_gt_wrapper_i,
      I14(2) => n_359_gt_wrapper_i,
      I14(1) => n_360_gt_wrapper_i,
      I14(0) => n_361_gt_wrapper_i,
      I15 => n_370_gt_wrapper_i,
      I16 => n_371_gt_wrapper_i,
      I17 => n_372_gt_wrapper_i,
      I18 => n_373_gt_wrapper_i,
      I19(31) => tx_pe_data_i(0),
      I19(30) => tx_pe_data_i(1),
      I19(29) => tx_pe_data_i(2),
      I19(28) => tx_pe_data_i(3),
      I19(27) => tx_pe_data_i(4),
      I19(26) => tx_pe_data_i(5),
      I19(25) => tx_pe_data_i(6),
      I19(24) => tx_pe_data_i(7),
      I19(23) => tx_pe_data_i(8),
      I19(22) => tx_pe_data_i(9),
      I19(21) => tx_pe_data_i(10),
      I19(20) => tx_pe_data_i(11),
      I19(19) => tx_pe_data_i(12),
      I19(18) => tx_pe_data_i(13),
      I19(17) => tx_pe_data_i(14),
      I19(16) => tx_pe_data_i(15),
      I19(15) => tx_pe_data_i(16),
      I19(14) => tx_pe_data_i(17),
      I19(13) => tx_pe_data_i(18),
      I19(12) => tx_pe_data_i(19),
      I19(11) => tx_pe_data_i(20),
      I19(10) => tx_pe_data_i(21),
      I19(9) => tx_pe_data_i(22),
      I19(8) => tx_pe_data_i(23),
      I19(7) => tx_pe_data_i(24),
      I19(6) => tx_pe_data_i(25),
      I19(5) => tx_pe_data_i(26),
      I19(4) => tx_pe_data_i(27),
      I19(3) => tx_pe_data_i(28),
      I19(2) => tx_pe_data_i(29),
      I19(1) => tx_pe_data_i(30),
      I19(0) => tx_pe_data_i(31),
      I2 => n_375_gt_wrapper_i,
      I3 => n_376_gt_wrapper_i,
      I4 => n_351_gt_wrapper_i,
      I5 => n_352_gt_wrapper_i,
      I6 => n_374_gt_wrapper_i,
      I7(3 downto 0) => rx_char_is_comma_i(3 downto 0),
      I8(1) => gen_pad_i(0),
      I8(0) => gen_pad_i(1),
      I9(1) => tx_pe_data_v_i(0),
      I9(0) => tx_pe_data_v_i(1),
      O1 => \^lane_up\,
      O10 => n_34_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O11(7) => n_36_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O11(6) => n_37_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O11(5) => n_38_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O11(4) => n_39_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O11(3) => n_40_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O11(2) => n_41_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O11(1) => n_42_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O11(0) => n_43_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O12 => n_44_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O13(1) => rx_ecp_striped_i(0),
      O13(0) => rx_ecp_striped_i(1),
      O14(1) => rx_scp_striped_i(0),
      O14(0) => rx_scp_striped_i(1),
      O15 => n_49_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(7) => n_82_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(6) => n_83_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(5) => n_84_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(4) => n_85_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(3) => n_86_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(2) => n_87_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(1) => n_88_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(0) => n_89_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(7) => n_90_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(6) => n_91_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(5) => n_92_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(4) => n_93_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(3) => n_94_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(2) => n_95_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(1) => n_96_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(0) => n_97_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(7) => n_98_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(6) => n_99_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(5) => n_100_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(4) => n_101_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(3) => n_102_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(2) => n_103_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(1) => n_104_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(0) => n_105_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(7) => n_106_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(6) => n_107_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(5) => n_108_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(4) => n_109_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(3) => n_110_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(2) => n_111_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(1) => n_112_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(0) => n_113_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O2(1 downto 0) => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O20(1) => soft_err_i(0),
      O20(0) => soft_err_i(1),
      O3(1 downto 0) => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O4(1 downto 0) => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O5(1 downto 0) => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O6(1 downto 0) => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O7 => n_25_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O8 => n_26_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O9 => n_32_aurora_8b10b_0_aurora_lane_4byte_0_i,
      Q(0) => \aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r\(0),
      RXCHARISK(3 downto 0) => rx_char_is_k_i(3 downto 0),
      RXDATA(31 downto 0) => rx_data_i(31 downto 0),
      RXDISPERR(1 downto 0) => rx_disp_err_i(1 downto 0),
      S1 => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S1\,
      S11_in => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S11_in\,
      TXCHARISK(3 downto 0) => tx_char_is_k_i(3 downto 0),
      TXDATA(31 downto 0) => tx_data_i(31 downto 0),
      ena_comma_align_i => ena_comma_align_i,
      gen_a_i => gen_a_i,
      gen_cc_i => gen_cc_i,
      gen_scp_i => gen_scp_i,
      got_v_i => got_v_i,
      hard_err_gt0 => \aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0\,
      hard_err_i => hard_err_i,
      in_frame_c(0 to 1) => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_c\(0 to 1),
      init_clk_in => init_clk_in,
      link_reset_out => \^link_reset_out\,
      \out\(1 downto 0) => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      reset_lanes_i => reset_lanes_i,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      s_out_d1_cdc_to => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d1_cdc_to\,
      s_out_d2 => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d2\,
      s_out_d3 => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d3\,
      s_out_d4 => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d4\,
      s_out_d5 => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d5\,
      s_out_d6 => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d6\,
      s_out_d7 => \aurora_8b10b_0_hotplug_i/rx_cc_cdc_sync/s_out_d7\,
      user_clk => user_clk
    );
aurora_8b10b_0_global_logic_i: entity work.aurora_8b10b_0aurora_8b10b_0_GLOBAL_LOGIC
    port map (
      D(1) => soft_err_i(0),
      D(0) => soft_err_i(1),
      I1 => n_39_core_reset_logic_i,
      I10(2) => gen_v_i(1),
      I10(1) => gen_v_i(2),
      I10(0) => gen_v_i(3),
      I11(3) => gen_r_i(0),
      I11(2) => gen_r_i(1),
      I11(1) => gen_r_i(2),
      I11(0) => gen_r_i(3),
      I12(3) => gen_k_i(0),
      I12(2) => gen_k_i(1),
      I12(1) => gen_k_i(2),
      I12(0) => gen_k_i(3),
      I5(1) => n_20_aurora_8b10b_0_global_logic_i,
      I5(0) => n_21_aurora_8b10b_0_global_logic_i,
      O1 => \^channel_up\,
      SR(0) => rx_ll_rst,
      SS(0) => \channel_init_sm_i/wait_for_lane_up_r0\,
      gen_a_i => gen_a_i,
      got_v_i => got_v_i,
      hard_err => hard_err,
      hard_err_i => hard_err_i,
      in_frame_c(0) => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_c\(0),
      in_frame_r => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_r\,
      lane_up => \^lane_up\,
      power_down => power_down,
      reset_channel_i => reset_channel_i,
      reset_i => \tx_ll_control_i/reset_i\,
      reset_lanes_i => reset_lanes_i,
      soft_err => soft_err,
      start_rx_i => start_rx_i,
      sys_reset_out => \^sys_reset_out\,
      user_clk => user_clk,
      wait_for_lane_up_r => \channel_init_sm_i/wait_for_lane_up_r\
    );
aurora_8b10b_0_rx_ll_i: entity work.aurora_8b10b_0aurora_8b10b_0_RX_LL
    port map (
      D(1) => rx_scp_striped_i(0),
      D(0) => rx_scp_striped_i(1),
      I1 => n_49_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I2 => n_44_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I3 => n_32_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I4(1) => n_30_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I4(0) => n_31_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I5(1) => n_20_aurora_8b10b_0_global_logic_i,
      I5(0) => n_21_aurora_8b10b_0_global_logic_i,
      I6(1) => rx_ecp_striped_i(0),
      I6(0) => rx_ecp_striped_i(1),
      O16(7) => n_82_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(6) => n_83_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(5) => n_84_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(4) => n_85_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(3) => n_86_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(2) => n_87_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(1) => n_88_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O16(0) => n_89_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(7) => n_90_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(6) => n_91_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(5) => n_92_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(4) => n_93_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(3) => n_94_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(2) => n_95_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(1) => n_96_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O17(0) => n_97_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(7) => n_98_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(6) => n_99_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(5) => n_100_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(4) => n_101_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(3) => n_102_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(2) => n_103_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(1) => n_104_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O18(0) => n_105_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(7) => n_106_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(6) => n_107_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(5) => n_108_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(4) => n_109_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(3) => n_110_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(2) => n_111_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(1) => n_112_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O19(0) => n_113_aurora_8b10b_0_aurora_lane_4byte_0_i,
      S1 => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S1\,
      S11_in => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/S11_in\,
      SR(0) => rx_ll_rst,
      frame_err => frame_err,
      in_frame_c(0 to 1) => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_c\(0 to 1),
      in_frame_r => \rx_ll_pdu_datapath_i/stage_1_rx_ll_deframer_i/in_frame_r\,
      m_axi_rx_tdata(0 to 31) => m_axi_rx_tdata(0 to 31),
      m_axi_rx_tkeep(2) => \^m_axi_rx_tkeep\(1),
      m_axi_rx_tkeep(1) => \^m_axi_rx_tkeep\(2),
      m_axi_rx_tkeep(0) => \^m_axi_rx_tkeep\(3),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      start_rx_i => start_rx_i,
      user_clk => user_clk
    );
aurora_8b10b_0_tx_ll_i: entity work.aurora_8b10b_0aurora_8b10b_0_TX_LL
    port map (
      D(1) => tx_pe_data_v_i(0),
      D(0) => tx_pe_data_v_i(1),
      I1 => n_1_axi_to_ll_pdu_i,
      I2 => n_0_axi_to_ll_pdu_i,
      I3 => \^channel_up\,
      O1 => n_3_aurora_8b10b_0_tx_ll_i,
      O2(1) => gen_pad_i(0),
      O2(0) => gen_pad_i(1),
      Q(31) => tx_pe_data_i(0),
      Q(30) => tx_pe_data_i(1),
      Q(29) => tx_pe_data_i(2),
      Q(28) => tx_pe_data_i(3),
      Q(27) => tx_pe_data_i(4),
      Q(26) => tx_pe_data_i(5),
      Q(25) => tx_pe_data_i(6),
      Q(24) => tx_pe_data_i(7),
      Q(23) => tx_pe_data_i(8),
      Q(22) => tx_pe_data_i(9),
      Q(21) => tx_pe_data_i(10),
      Q(20) => tx_pe_data_i(11),
      Q(19) => tx_pe_data_i(12),
      Q(18) => tx_pe_data_i(13),
      Q(17) => tx_pe_data_i(14),
      Q(16) => tx_pe_data_i(15),
      Q(15) => tx_pe_data_i(16),
      Q(14) => tx_pe_data_i(17),
      Q(13) => tx_pe_data_i(18),
      Q(12) => tx_pe_data_i(19),
      Q(11) => tx_pe_data_i(20),
      Q(10) => tx_pe_data_i(21),
      Q(9) => tx_pe_data_i(22),
      Q(8) => tx_pe_data_i(23),
      Q(7) => tx_pe_data_i(24),
      Q(6) => tx_pe_data_i(25),
      Q(5) => tx_pe_data_i(26),
      Q(4) => tx_pe_data_i(27),
      Q(3) => tx_pe_data_i(28),
      Q(2) => tx_pe_data_i(29),
      Q(1) => tx_pe_data_i(30),
      Q(0) => tx_pe_data_i(31),
      do_cc => do_cc,
      gen_cc_i => gen_cc_i,
      gen_scp_i => gen_scp_i,
      reset_i => \tx_ll_control_i/reset_i\,
      s_axi_tx_tdata(0 to 31) => s_axi_tx_tdata(0 to 31),
      s_axi_tx_tkeep(0 to 3) => s_axi_tx_tkeep(0 to 3),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      tx_dst_rdy => tx_dst_rdy,
      user_clk => user_clk
    );
axi_to_ll_pdu_i: entity work.aurora_8b10b_0aurora_8b10b_0_AXI_TO_LL
    port map (
      I1 => \^channel_up\,
      O1 => n_0_axi_to_ll_pdu_i,
      O2 => n_1_axi_to_ll_pdu_i,
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      sys_reset_out => \^sys_reset_out\,
      tx_dst_rdy => tx_dst_rdy,
      user_clk => user_clk
    );
core_reset_logic_i: entity work.aurora_8b10b_0aurora_8b10b_0_RESET_LOGIC
    port map (
      O1(1 downto 0) => \tx_resetdone_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O10(1 downto 0) => \link_reset_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O11(1 downto 0) => \link_reset_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O12 => n_39_core_reset_logic_i,
      O2(1 downto 0) => \tx_resetdone_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O3(1 downto 0) => \tx_resetdone_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O4(1 downto 0) => \tx_resetdone_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O5(1 downto 0) => \tx_resetdone_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O6(1 downto 0) => \link_reset_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O7(1 downto 0) => \link_reset_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O8(1 downto 0) => \link_reset_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O9(1 downto 0) => \link_reset_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      SS(0) => \channel_init_sm_i/wait_for_lane_up_r0\,
      init_clk_in => init_clk_in,
      link_reset_out => \^link_reset_out\,
      \out\(1 downto 0) => \tx_resetdone_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      reset => reset,
      reset_channel_i => reset_channel_i,
      rx_resetdone_out => \^rx_resetdone_out\,
      s_out_d1_cdc_to => \tx_resetdone_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_0 => \link_reset_cdc_sync/s_out_d1_cdc_to\,
      s_out_d2 => \tx_resetdone_cdc_sync/s_out_d2\,
      s_out_d2_1 => \link_reset_cdc_sync/s_out_d2\,
      s_out_d3 => \tx_resetdone_cdc_sync/s_out_d3\,
      s_out_d3_2 => \link_reset_cdc_sync/s_out_d3\,
      s_out_d4 => \tx_resetdone_cdc_sync/s_out_d4\,
      s_out_d4_3 => \link_reset_cdc_sync/s_out_d4\,
      s_out_d5 => \tx_resetdone_cdc_sync/s_out_d5\,
      s_out_d5_4 => \link_reset_cdc_sync/s_out_d5\,
      s_out_d6 => \tx_resetdone_cdc_sync/s_out_d6\,
      s_out_d6_5 => \link_reset_cdc_sync/s_out_d6\,
      s_out_d7 => \tx_resetdone_cdc_sync/s_out_d7\,
      s_out_d7_6 => \link_reset_cdc_sync/s_out_d7\,
      sys_reset_out => \^sys_reset_out\,
      tx_resetdone_out => \^tx_resetdone_out\,
      user_clk => user_clk,
      wait_for_lane_up_r => \channel_init_sm_i/wait_for_lane_up_r\
    );
gt_wrapper_i: entity work.aurora_8b10b_0aurora_8b10b_0_GT_WRAPPER
    port map (
      D(3 downto 0) => rx_char_is_comma_i(3 downto 0),
      I1 => n_26_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I2 => n_25_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I3(7) => n_36_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I3(6) => n_37_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I3(5) => n_38_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I3(4) => n_39_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I3(3) => n_40_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I3(2) => n_41_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I3(1) => n_42_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I3(0) => n_43_aurora_8b10b_0_aurora_lane_4byte_0_i,
      I4 => n_34_aurora_8b10b_0_aurora_lane_4byte_0_i,
      O1(1 downto 0) => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O10(1 downto 0) => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O100 => n_376_gt_wrapper_i,
      O11(1 downto 0) => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O12(1 downto 0) => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O13(1 downto 0) => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O14(1 downto 0) => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O15(1 downto 0) => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O16(1 downto 0) => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O17(1 downto 0) => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O18(1 downto 0) => \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O19(1 downto 0) => \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O2(1 downto 0) => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O20(1 downto 0) => \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O21(1 downto 0) => \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O22(1 downto 0) => \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O23(1 downto 0) => \gt_txresetfsm_i/txresetdone_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O24(1 downto 0) => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O25(1 downto 0) => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O26(1 downto 0) => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O27(1 downto 0) => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O28(1 downto 0) => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O29(1 downto 0) => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O3(1 downto 0) => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O30(1 downto 0) => \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O31(1 downto 0) => \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O32(1 downto 0) => \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O33(1 downto 0) => \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O34(1 downto 0) => \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O35(1 downto 0) => \gt_txresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O36(1 downto 0) => \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O37(1 downto 0) => \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O38(1 downto 0) => \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O39(1 downto 0) => \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O4(1 downto 0) => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O40(1 downto 0) => \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O41(1 downto 0) => \gt_txresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O42(1 downto 0) => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O43(1 downto 0) => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O44(1 downto 0) => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O45(1 downto 0) => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O46(1 downto 0) => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O47(1 downto 0) => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O48(1 downto 0) => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O49(1 downto 0) => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O5(1 downto 0) => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O50(1 downto 0) => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O51(1 downto 0) => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O52(1 downto 0) => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O53(1 downto 0) => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O54(1 downto 0) => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O55(1 downto 0) => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O56(1 downto 0) => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O57(1 downto 0) => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O58(1 downto 0) => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O59(1 downto 0) => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O6(1 downto 0) => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O60(1 downto 0) => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O61(1 downto 0) => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O62(1 downto 0) => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O63(1 downto 0) => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O64(1 downto 0) => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O65(1 downto 0) => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O66(1 downto 0) => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O67(1 downto 0) => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O68(1 downto 0) => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O69(1 downto 0) => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O7(1 downto 0) => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O70(1 downto 0) => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O71(1 downto 0) => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O72(1 downto 0) => \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O73(1 downto 0) => \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O74(1 downto 0) => \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O75(1 downto 0) => \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O76(1 downto 0) => \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O77(1 downto 0) => \gt_rxresetfsm_i/data_valid_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O78(1 downto 0) => \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O79(1 downto 0) => \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O8(1 downto 0) => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O80(1 downto 0) => \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O81(1 downto 0) => \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O82(1 downto 0) => \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O83(1 downto 0) => \gt_rxresetfsm_i/cplllock_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O84(1 downto 0) => \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      O85(1 downto 0) => \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d2\(1 downto 0),
      O86(1 downto 0) => \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d3\(1 downto 0),
      O87(1 downto 0) => \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O88(1 downto 0) => \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d5\(1 downto 0),
      O89(1 downto 0) => \gt_rxresetfsm_i/qplllock_cdc_sync/s_level_out_bus_d6\(1 downto 0),
      O9(1 downto 0) => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_level_out_bus_d4\(1 downto 0),
      O90 => n_351_gt_wrapper_i,
      O91 => n_352_gt_wrapper_i,
      O92(7) => n_354_gt_wrapper_i,
      O92(6) => n_355_gt_wrapper_i,
      O92(5) => n_356_gt_wrapper_i,
      O92(4) => n_357_gt_wrapper_i,
      O92(3) => n_358_gt_wrapper_i,
      O92(2) => n_359_gt_wrapper_i,
      O92(1) => n_360_gt_wrapper_i,
      O92(0) => n_361_gt_wrapper_i,
      O93(7) => n_362_gt_wrapper_i,
      O93(6) => n_363_gt_wrapper_i,
      O93(5) => n_364_gt_wrapper_i,
      O93(4) => n_365_gt_wrapper_i,
      O93(3) => n_366_gt_wrapper_i,
      O93(2) => n_367_gt_wrapper_i,
      O93(1) => n_368_gt_wrapper_i,
      O93(0) => n_369_gt_wrapper_i,
      O94 => n_370_gt_wrapper_i,
      O95 => n_371_gt_wrapper_i,
      O96 => n_372_gt_wrapper_i,
      O97 => n_373_gt_wrapper_i,
      O98 => n_374_gt_wrapper_i,
      O99 => n_375_gt_wrapper_i,
      Q(0) => \aurora_8b10b_0_sym_dec_4byte_i/previous_cycle_control_r\(0),
      RXCHARISK(3 downto 0) => rx_char_is_k_i(3 downto 0),
      RXDATA(31 downto 0) => rx_data_i(31 downto 0),
      RXDISPERR(1 downto 0) => rx_disp_err_i(1 downto 0),
      TXCHARISK(3 downto 0) => tx_char_is_k_i(3 downto 0),
      TXDATA(31 downto 0) => tx_data_i(31 downto 0),
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      ena_comma_align_i => ena_comma_align_i,
      gt_qpllclk_quad2_in => gt_qpllclk_quad2_in,
      gt_qpllrefclk_quad2_in => gt_qpllrefclk_quad2_in,
      gt_refclk1 => gt_refclk1,
      gt_reset => gt_reset,
      hard_err_gt0 => \aurora_8b10b_0_err_detect_4byte_i/hard_err_gt0\,
      init_clk_in => init_clk_in,
      link_reset_out => \^link_reset_out\,
      loopback(2 downto 0) => loopback(2 downto 0),
      \out\(1 downto 0) => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_level_out_bus_d1_cdc_to\(1 downto 0),
      power_down => power_down,
      rx_polarity_i => rx_polarity_i,
      rx_realign_i => rx_realign_i,
      rx_resetdone_out => \^rx_resetdone_out\,
      rxfsm_data_valid_r => rxfsm_data_valid_r,
      rxn => rxn,
      rxp => rxp,
      s_out_d1_cdc_to => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_0 => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_14 => \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_21 => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_28 => \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_35 => \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_42 => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_49 => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_56 => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_63 => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_7 => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_70 => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_77 => \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_84 => \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d1_cdc_to\,
      s_out_d1_cdc_to_91 => \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d1_cdc_to\,
      s_out_d2 => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d2\,
      s_out_d2_1 => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d2\,
      s_out_d2_15 => \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d2\,
      s_out_d2_22 => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d2\,
      s_out_d2_29 => \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d2\,
      s_out_d2_36 => \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d2\,
      s_out_d2_43 => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d2\,
      s_out_d2_50 => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d2\,
      s_out_d2_57 => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d2\,
      s_out_d2_64 => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d2\,
      s_out_d2_71 => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d2\,
      s_out_d2_78 => \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d2\,
      s_out_d2_8 => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d2\,
      s_out_d2_85 => \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d2\,
      s_out_d2_92 => \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d2\,
      s_out_d3 => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d3\,
      s_out_d3_16 => \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d3\,
      s_out_d3_2 => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d3\,
      s_out_d3_23 => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d3\,
      s_out_d3_30 => \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d3\,
      s_out_d3_37 => \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d3\,
      s_out_d3_44 => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d3\,
      s_out_d3_51 => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d3\,
      s_out_d3_58 => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d3\,
      s_out_d3_65 => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d3\,
      s_out_d3_72 => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d3\,
      s_out_d3_79 => \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d3\,
      s_out_d3_86 => \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d3\,
      s_out_d3_9 => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d3\,
      s_out_d3_93 => \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d3\,
      s_out_d4 => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d4\,
      s_out_d4_10 => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d4\,
      s_out_d4_17 => \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d4\,
      s_out_d4_24 => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d4\,
      s_out_d4_3 => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d4\,
      s_out_d4_31 => \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d4\,
      s_out_d4_38 => \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d4\,
      s_out_d4_45 => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d4\,
      s_out_d4_52 => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d4\,
      s_out_d4_59 => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d4\,
      s_out_d4_66 => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d4\,
      s_out_d4_73 => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d4\,
      s_out_d4_80 => \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d4\,
      s_out_d4_87 => \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d4\,
      s_out_d4_94 => \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d4\,
      s_out_d5 => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d5\,
      s_out_d5_11 => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d5\,
      s_out_d5_18 => \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d5\,
      s_out_d5_25 => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d5\,
      s_out_d5_32 => \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d5\,
      s_out_d5_39 => \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d5\,
      s_out_d5_4 => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d5\,
      s_out_d5_46 => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d5\,
      s_out_d5_53 => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d5\,
      s_out_d5_60 => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d5\,
      s_out_d5_67 => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d5\,
      s_out_d5_74 => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d5\,
      s_out_d5_81 => \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d5\,
      s_out_d5_88 => \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d5\,
      s_out_d5_95 => \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d5\,
      s_out_d6 => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d6\,
      s_out_d6_12 => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d6\,
      s_out_d6_19 => \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d6\,
      s_out_d6_26 => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d6\,
      s_out_d6_33 => \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d6\,
      s_out_d6_40 => \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d6\,
      s_out_d6_47 => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d6\,
      s_out_d6_5 => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d6\,
      s_out_d6_54 => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d6\,
      s_out_d6_61 => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d6\,
      s_out_d6_68 => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d6\,
      s_out_d6_75 => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d6\,
      s_out_d6_82 => \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d6\,
      s_out_d6_89 => \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d6\,
      s_out_d6_96 => \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d6\,
      s_out_d7 => \gt_txresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d7\,
      s_out_d7_13 => \gt_txresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d7\,
      s_out_d7_20 => \gt_txresetfsm_i/txresetdone_cdc_sync/s_out_d7\,
      s_out_d7_27 => \gt_txresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d7\,
      s_out_d7_34 => \gt_txresetfsm_i/cplllock_cdc_sync/s_out_d7\,
      s_out_d7_41 => \gt_txresetfsm_i/qplllock_cdc_sync/s_out_d7\,
      s_out_d7_48 => \gt_rxresetfsm_i/run_phase_alignment_int_cdc_sync/s_out_d7\,
      s_out_d7_55 => \gt_rxresetfsm_i/rx_fsm_reset_done_int_cdc_sync/s_out_d7\,
      s_out_d7_6 => \gt_txresetfsm_i/tx_fsm_reset_done_int_cdc_sync/s_out_d7\,
      s_out_d7_62 => \gt_rxresetfsm_i/time_out_wait_bypass_cdc_sync/s_out_d7\,
      s_out_d7_69 => \gt_rxresetfsm_i/rxresetdone_cdc_sync/s_out_d7\,
      s_out_d7_76 => \gt_rxresetfsm_i/mmcm_lock_reclocked_cdc_sync/s_out_d7\,
      s_out_d7_83 => \gt_rxresetfsm_i/data_valid_cdc_sync/s_out_d7\,
      s_out_d7_90 => \gt_rxresetfsm_i/cplllock_cdc_sync/s_out_d7\,
      s_out_d7_97 => \gt_rxresetfsm_i/qplllock_cdc_sync/s_out_d7\,
      sync_clk => sync_clk,
      tx_lock => tx_lock,
      tx_out_clk => tx_out_clk,
      tx_resetdone_out => \^tx_resetdone_out\,
      txn => txn,
      txp => txp,
      user_clk => user_clk
    );
rxfsm_data_valid_r_reg: unisim.vcomponents.FDRE
    port map (
      C => user_clk,
      CE => \<const1>\,
      D => \^lane_up\,
      Q => rxfsm_data_valid_r,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity aurora_8b10b_0 is
  port (
    s_axi_tx_tdata : in STD_LOGIC_VECTOR ( 0 to 31 );
    s_axi_tx_tkeep : in STD_LOGIC_VECTOR ( 0 to 3 );
    s_axi_tx_tvalid : in STD_LOGIC;
    s_axi_tx_tlast : in STD_LOGIC;
    s_axi_tx_tready : out STD_LOGIC;
    m_axi_rx_tdata : out STD_LOGIC_VECTOR ( 0 to 31 );
    m_axi_rx_tkeep : out STD_LOGIC_VECTOR ( 0 to 3 );
    m_axi_rx_tvalid : out STD_LOGIC;
    m_axi_rx_tlast : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    gt_refclk1 : in STD_LOGIC;
    frame_err : out STD_LOGIC;
    hard_err : out STD_LOGIC;
    soft_err : out STD_LOGIC;
    lane_up : out STD_LOGIC;
    channel_up : out STD_LOGIC;
    warn_cc : in STD_LOGIC;
    do_cc : in STD_LOGIC;
    user_clk : in STD_LOGIC;
    sync_clk : in STD_LOGIC;
    gt_reset : in STD_LOGIC;
    reset : in STD_LOGIC;
    sys_reset_out : out STD_LOGIC;
    power_down : in STD_LOGIC;
    loopback : in STD_LOGIC_VECTOR ( 2 downto 0 );
    tx_lock : out STD_LOGIC;
    init_clk_in : in STD_LOGIC;
    tx_resetdone_out : out STD_LOGIC;
    rx_resetdone_out : out STD_LOGIC;
    link_reset_out : out STD_LOGIC;
    drpclk_in : in STD_LOGIC;
    drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    drpen_in : in STD_LOGIC;
    drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    drprdy_out : out STD_LOGIC;
    drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    drpwe_in : in STD_LOGIC;
    gt0_qplllock_in : in STD_LOGIC;
    gt0_qpllrefclklost_in : in STD_LOGIC;
    gt0_qpllreset_out : out STD_LOGIC;
    gt_qpllclk_quad2_in : in STD_LOGIC;
    gt_qpllrefclk_quad2_in : in STD_LOGIC;
    tx_out_clk : out STD_LOGIC;
    pll_not_locked : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of aurora_8b10b_0 : entity is true;
  attribute core_generation_info : string;
  attribute core_generation_info of aurora_8b10b_0 : entity is "aurora_8b10b_0,aurora_8b10b_v10_1,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ1,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=1,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=45000,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=90000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}";
end aurora_8b10b_0;

architecture STRUCTURE of aurora_8b10b_0 is
  attribute SIM_GTRESET_SPEEDUP : string;
  attribute SIM_GTRESET_SPEEDUP of inst : label is "FALSE";
  attribute core_generation_info of inst : label is "aurora_8b10b_0,aurora_8b10b_v10_1,{user_interface=AXI_4_Streaming,backchannel_mode=Sidebands,c_aurora_lanes=1,c_column_used=left,c_gt_clock_1=GTXQ1,c_gt_clock_2=None,c_gt_loc_1=X,c_gt_loc_10=X,c_gt_loc_11=X,c_gt_loc_12=X,c_gt_loc_13=X,c_gt_loc_14=X,c_gt_loc_15=X,c_gt_loc_16=X,c_gt_loc_17=X,c_gt_loc_18=X,c_gt_loc_19=X,c_gt_loc_2=X,c_gt_loc_20=X,c_gt_loc_21=X,c_gt_loc_22=X,c_gt_loc_23=X,c_gt_loc_24=X,c_gt_loc_25=X,c_gt_loc_26=X,c_gt_loc_27=X,c_gt_loc_28=X,c_gt_loc_29=X,c_gt_loc_3=X,c_gt_loc_30=X,c_gt_loc_31=X,c_gt_loc_32=X,c_gt_loc_33=X,c_gt_loc_34=X,c_gt_loc_35=X,c_gt_loc_36=X,c_gt_loc_37=X,c_gt_loc_38=X,c_gt_loc_39=X,c_gt_loc_4=X,c_gt_loc_40=X,c_gt_loc_41=X,c_gt_loc_42=X,c_gt_loc_43=X,c_gt_loc_44=X,c_gt_loc_45=X,c_gt_loc_46=X,c_gt_loc_47=X,c_gt_loc_48=X,c_gt_loc_5=1,c_gt_loc_6=X,c_gt_loc_7=X,c_gt_loc_8=X,c_gt_loc_9=X,c_lane_width=4,c_line_rate=45000,c_nfc=false,c_nfc_mode=IMM,c_refclk_frequency=90000,c_simplex=false,c_simplex_mode=TX,c_stream=false,c_ufc=false,flow_mode=None,interface_mode=Framing,dataflow_config=Duplex}";
begin
inst: entity work.aurora_8b10b_0aurora_8b10b_0_core
    port map (
      channel_up => channel_up,
      do_cc => do_cc,
      drpaddr_in(8 downto 0) => drpaddr_in(8 downto 0),
      drpclk_in => drpclk_in,
      drpdi_in(15 downto 0) => drpdi_in(15 downto 0),
      drpdo_out(15 downto 0) => drpdo_out(15 downto 0),
      drpen_in => drpen_in,
      drprdy_out => drprdy_out,
      drpwe_in => drpwe_in,
      frame_err => frame_err,
      gt0_qplllock_in => gt0_qplllock_in,
      gt0_qpllrefclklost_in => gt0_qpllrefclklost_in,
      gt0_qpllreset_out => gt0_qpllreset_out,
      gt_qpllclk_quad2_in => gt_qpllclk_quad2_in,
      gt_qpllrefclk_quad2_in => gt_qpllrefclk_quad2_in,
      gt_refclk1 => gt_refclk1,
      gt_reset => gt_reset,
      hard_err => hard_err,
      init_clk_in => init_clk_in,
      lane_up => lane_up,
      link_reset_out => link_reset_out,
      loopback(2 downto 0) => loopback(2 downto 0),
      m_axi_rx_tdata(0 to 31) => m_axi_rx_tdata(0 to 31),
      m_axi_rx_tkeep(0 to 3) => m_axi_rx_tkeep(0 to 3),
      m_axi_rx_tlast => m_axi_rx_tlast,
      m_axi_rx_tvalid => m_axi_rx_tvalid,
      pll_not_locked => pll_not_locked,
      power_down => power_down,
      reset => reset,
      rx_resetdone_out => rx_resetdone_out,
      rxn => rxn,
      rxp => rxp,
      s_axi_tx_tdata(0 to 31) => s_axi_tx_tdata(0 to 31),
      s_axi_tx_tkeep(0 to 3) => s_axi_tx_tkeep(0 to 3),
      s_axi_tx_tlast => s_axi_tx_tlast,
      s_axi_tx_tready => s_axi_tx_tready,
      s_axi_tx_tvalid => s_axi_tx_tvalid,
      soft_err => soft_err,
      sync_clk => sync_clk,
      sys_reset_out => sys_reset_out,
      tx_lock => tx_lock,
      tx_out_clk => tx_out_clk,
      tx_resetdone_out => tx_resetdone_out,
      txn => txn,
      txp => txp,
      user_clk => user_clk,
      warn_cc => warn_cc
    );
end STRUCTURE;
