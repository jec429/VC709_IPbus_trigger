-- Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
-- Date        : Fri Jul 18 14:12:18 2014
-- Host        : PC210 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/axis_switch_tx/axis_switch_tx_funcsim.vhdl
-- Design      : axis_switch_tx
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_txaxis_register_slice_v1_1_axisc_register_slice is
  port (
    state_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 33 downto 0 );
    I1 : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    areset_r : in STD_LOGIC;
    tready_or_decode_err : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 33 downto 0 );
    I3 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i2_out : in STD_LOGIC
  );
end axis_switch_txaxis_register_slice_v1_1_axisc_register_slice;

architecture STRUCTURE of axis_switch_txaxis_register_slice_v1_1_axisc_register_slice is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal areset_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \n_0_FSM_onehot_state[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[1]_i_1__0\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[3]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[3]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[3]_i_3__0\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[3]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[0]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[1]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[2]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[3]\ : STD_LOGIC;
  signal n_0_s_ready_i_i_1 : STD_LOGIC;
  signal n_0_s_ready_i_i_2 : STD_LOGIC;
  signal \n_0_storage_data1[0]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[10]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[11]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[12]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[13]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[14]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[15]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[16]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[17]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[18]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[19]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[1]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[20]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[21]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[22]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[23]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[24]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[25]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[26]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[27]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[28]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[29]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[2]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[30]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[31]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[31]_i_2\ : STD_LOGIC;
  signal \n_0_storage_data1[32]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[33]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[3]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[4]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[5]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[6]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[7]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[8]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[9]_i_1\ : STD_LOGIC;
  signal \^s_axis_tready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal s_ready_i15_out : STD_LOGIC;
  signal \^state_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal storage_data2 : STD_LOGIC_VECTOR ( 33 downto 0 );
  signal storage_data2_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_5\ : label is "soft_lutpair1";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \areset_d_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \areset_d_reg[1]\ : label is "no";
  attribute SOFT_HLUTNM of s_ready_i_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of s_ready_i_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of s_ready_i_i_8 : label is "soft_lutpair2";
begin
  s_axis_tready(0) <= \^s_axis_tready\(0);
  state_reg(0) <= \^state_reg\(0);
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEBFFEB"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[3]\,
      I1 => \n_0_FSM_onehot_state_reg[0]\,
      I2 => \n_0_FSM_onehot_state_reg[2]\,
      I3 => \n_0_FSM_onehot_state_reg[1]\,
      I4 => I3,
      O => \n_0_FSM_onehot_state[0]_i_1\
    );
\FSM_onehot_state[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011100000001000"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[3]\,
      I2 => tready_or_decode_err,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[0]\,
      I5 => s_axis_tvalid(0),
      O => \n_0_FSM_onehot_state[1]_i_1__0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[0]\,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      I2 => \n_0_FSM_onehot_state_reg[3]\,
      I3 => I3,
      I4 => \n_0_FSM_onehot_state_reg[1]\,
      O => \n_0_FSM_onehot_state[2]_i_1\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => areset_r,
      I1 => areset_d(0),
      I2 => areset_d(1),
      O => \n_0_FSM_onehot_state[3]_i_1\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FF0000B8330000"
    )
    port map (
      I0 => I1,
      I1 => \n_0_FSM_onehot_state[3]_i_5\,
      I2 => s_axis_tvalid(0),
      I3 => \^state_reg\(0),
      I4 => s_ready_i15_out,
      I5 => I2,
      O => \n_0_FSM_onehot_state[3]_i_2\
    );
\FSM_onehot_state[3]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000110100"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[3]\,
      I2 => tready_or_decode_err,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[0]\,
      I5 => s_axis_tvalid(0),
      O => \n_0_FSM_onehot_state[3]_i_3__0\
    );
\FSM_onehot_state[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      O => \n_0_FSM_onehot_state[3]_i_5\
    );
\FSM_onehot_state[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => areset_d(0),
      I1 => areset_d(1),
      O => s_ready_i15_out
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => aclk,
      CE => \n_0_FSM_onehot_state[3]_i_2\,
      D => \n_0_FSM_onehot_state[0]_i_1\,
      Q => \n_0_FSM_onehot_state_reg[0]\,
      S => \n_0_FSM_onehot_state[3]_i_1\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_FSM_onehot_state[3]_i_2\,
      D => \n_0_FSM_onehot_state[1]_i_1__0\,
      Q => \n_0_FSM_onehot_state_reg[1]\,
      R => \n_0_FSM_onehot_state[3]_i_1\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_FSM_onehot_state[3]_i_2\,
      D => \n_0_FSM_onehot_state[2]_i_1\,
      Q => \n_0_FSM_onehot_state_reg[2]\,
      R => \n_0_FSM_onehot_state[3]_i_1\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_FSM_onehot_state[3]_i_2\,
      D => \n_0_FSM_onehot_state[3]_i_3__0\,
      Q => \n_0_FSM_onehot_state_reg[3]\,
      R => \n_0_FSM_onehot_state[3]_i_1\
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\areset_d_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => areset_r,
      Q => areset_d(0),
      R => \<const0>\
    );
\areset_d_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => areset_d(0),
      Q => areset_d(1),
      R => \<const0>\
    );
s_ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CECEFECE"
    )
    port map (
      I0 => \^s_axis_tready\(0),
      I1 => n_0_s_ready_i_i_2,
      I2 => s_ready_i2_out,
      I3 => tready_or_decode_err,
      I4 => \^state_reg\(0),
      I5 => areset_r,
      O => n_0_s_ready_i_i_1
    );
s_ready_i_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => areset_d(1),
      I1 => areset_d(0),
      O => n_0_s_ready_i_i_2
    );
s_ready_i_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[0]\,
      I1 => \n_0_FSM_onehot_state_reg[3]\,
      I2 => \n_0_FSM_onehot_state_reg[2]\,
      O => \^state_reg\(0)
    );
s_ready_i_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[2]\,
      I1 => \n_0_FSM_onehot_state_reg[1]\,
      I2 => areset_d(1),
      I3 => areset_d(0),
      O => O1
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => n_0_s_ready_i_i_1,
      Q => \^s_axis_tready\(0),
      R => \<const0>\
    );
\storage_data1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(0),
      I1 => D(0),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[0]_i_1\
    );
\storage_data1[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(10),
      I1 => D(10),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[10]_i_1\
    );
\storage_data1[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(11),
      I1 => D(11),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[11]_i_1\
    );
\storage_data1[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(12),
      I1 => D(12),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[12]_i_1\
    );
\storage_data1[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(13),
      I1 => D(13),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[13]_i_1\
    );
\storage_data1[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(14),
      I1 => D(14),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[14]_i_1\
    );
\storage_data1[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(15),
      I1 => D(15),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[15]_i_1\
    );
\storage_data1[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(16),
      I1 => D(16),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[16]_i_1\
    );
\storage_data1[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(17),
      I1 => D(17),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[17]_i_1\
    );
\storage_data1[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(18),
      I1 => D(18),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[18]_i_1\
    );
\storage_data1[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(19),
      I1 => D(19),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[19]_i_1\
    );
\storage_data1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(1),
      I1 => D(1),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[1]_i_1\
    );
\storage_data1[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(20),
      I1 => D(20),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[20]_i_1\
    );
\storage_data1[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(21),
      I1 => D(21),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[21]_i_1\
    );
\storage_data1[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(22),
      I1 => D(22),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[22]_i_1\
    );
\storage_data1[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(23),
      I1 => D(23),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[23]_i_1\
    );
\storage_data1[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(24),
      I1 => D(24),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[24]_i_1\
    );
\storage_data1[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(25),
      I1 => D(25),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[25]_i_1\
    );
\storage_data1[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(26),
      I1 => D(26),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[26]_i_1\
    );
\storage_data1[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(27),
      I1 => D(27),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[27]_i_1\
    );
\storage_data1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(28),
      I1 => D(28),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[28]_i_1\
    );
\storage_data1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(29),
      I1 => D(29),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[29]_i_1\
    );
\storage_data1[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(2),
      I1 => D(2),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[2]_i_1\
    );
\storage_data1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(30),
      I1 => D(30),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[30]_i_1\
    );
\storage_data1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888A888ACCC0CC8A"
    )
    port map (
      I0 => s_axis_tvalid(0),
      I1 => tready_or_decode_err,
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[31]_i_1\
    );
\storage_data1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(31),
      I1 => D(31),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[31]_i_2\
    );
\storage_data1[32]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(32),
      I1 => D(32),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[32]_i_1\
    );
\storage_data1[33]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(33),
      I1 => D(33),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[33]_i_1\
    );
\storage_data1[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(3),
      I1 => D(3),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[3]_i_1\
    );
\storage_data1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(4),
      I1 => D(4),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[4]_i_1\
    );
\storage_data1[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(5),
      I1 => D(5),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[5]_i_1\
    );
\storage_data1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(6),
      I1 => D(6),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[6]_i_1\
    );
\storage_data1[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(7),
      I1 => D(7),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[7]_i_1\
    );
\storage_data1[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(8),
      I1 => D(8),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[8]_i_1\
    );
\storage_data1[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCCCCAAACAACC"
    )
    port map (
      I0 => storage_data2(9),
      I1 => D(9),
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[3]\,
      I5 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[9]_i_1\
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[0]_i_1\,
      Q => Q(0),
      R => \<const0>\
    );
\storage_data1_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[10]_i_1\,
      Q => Q(10),
      R => \<const0>\
    );
\storage_data1_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[11]_i_1\,
      Q => Q(11),
      R => \<const0>\
    );
\storage_data1_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[12]_i_1\,
      Q => Q(12),
      R => \<const0>\
    );
\storage_data1_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[13]_i_1\,
      Q => Q(13),
      R => \<const0>\
    );
\storage_data1_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[14]_i_1\,
      Q => Q(14),
      R => \<const0>\
    );
\storage_data1_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[15]_i_1\,
      Q => Q(15),
      R => \<const0>\
    );
\storage_data1_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[16]_i_1\,
      Q => Q(16),
      R => \<const0>\
    );
\storage_data1_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[17]_i_1\,
      Q => Q(17),
      R => \<const0>\
    );
\storage_data1_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[18]_i_1\,
      Q => Q(18),
      R => \<const0>\
    );
\storage_data1_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[19]_i_1\,
      Q => Q(19),
      R => \<const0>\
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[1]_i_1\,
      Q => Q(1),
      R => \<const0>\
    );
\storage_data1_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[20]_i_1\,
      Q => Q(20),
      R => \<const0>\
    );
\storage_data1_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[21]_i_1\,
      Q => Q(21),
      R => \<const0>\
    );
\storage_data1_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[22]_i_1\,
      Q => Q(22),
      R => \<const0>\
    );
\storage_data1_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[23]_i_1\,
      Q => Q(23),
      R => \<const0>\
    );
\storage_data1_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[24]_i_1\,
      Q => Q(24),
      R => \<const0>\
    );
\storage_data1_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[25]_i_1\,
      Q => Q(25),
      R => \<const0>\
    );
\storage_data1_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[26]_i_1\,
      Q => Q(26),
      R => \<const0>\
    );
\storage_data1_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[27]_i_1\,
      Q => Q(27),
      R => \<const0>\
    );
\storage_data1_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[28]_i_1\,
      Q => Q(28),
      R => \<const0>\
    );
\storage_data1_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[29]_i_1\,
      Q => Q(29),
      R => \<const0>\
    );
\storage_data1_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[2]_i_1\,
      Q => Q(2),
      R => \<const0>\
    );
\storage_data1_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[30]_i_1\,
      Q => Q(30),
      R => \<const0>\
    );
\storage_data1_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[31]_i_2\,
      Q => Q(31),
      R => \<const0>\
    );
\storage_data1_reg[32]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[32]_i_1\,
      Q => Q(32),
      R => \<const0>\
    );
\storage_data1_reg[33]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[33]_i_1\,
      Q => Q(33),
      R => \<const0>\
    );
\storage_data1_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[3]_i_1\,
      Q => Q(3),
      R => \<const0>\
    );
\storage_data1_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[4]_i_1\,
      Q => Q(4),
      R => \<const0>\
    );
\storage_data1_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[5]_i_1\,
      Q => Q(5),
      R => \<const0>\
    );
\storage_data1_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[6]_i_1\,
      Q => Q(6),
      R => \<const0>\
    );
\storage_data1_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[7]_i_1\,
      Q => Q(7),
      R => \<const0>\
    );
\storage_data1_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[8]_i_1\,
      Q => Q(8),
      R => \<const0>\
    );
\storage_data1_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \n_0_storage_data1[31]_i_1\,
      D => \n_0_storage_data1[9]_i_1\,
      Q => Q(9),
      R => \<const0>\
    );
\storage_data2[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => s_axis_tvalid(0),
      I1 => \^s_axis_tready\(0),
      O => storage_data2_0
    );
\storage_data2_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(0),
      Q => storage_data2(0),
      R => \<const0>\
    );
\storage_data2_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(10),
      Q => storage_data2(10),
      R => \<const0>\
    );
\storage_data2_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(11),
      Q => storage_data2(11),
      R => \<const0>\
    );
\storage_data2_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(12),
      Q => storage_data2(12),
      R => \<const0>\
    );
\storage_data2_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(13),
      Q => storage_data2(13),
      R => \<const0>\
    );
\storage_data2_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(14),
      Q => storage_data2(14),
      R => \<const0>\
    );
\storage_data2_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(15),
      Q => storage_data2(15),
      R => \<const0>\
    );
\storage_data2_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(16),
      Q => storage_data2(16),
      R => \<const0>\
    );
\storage_data2_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(17),
      Q => storage_data2(17),
      R => \<const0>\
    );
\storage_data2_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(18),
      Q => storage_data2(18),
      R => \<const0>\
    );
\storage_data2_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(19),
      Q => storage_data2(19),
      R => \<const0>\
    );
\storage_data2_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(1),
      Q => storage_data2(1),
      R => \<const0>\
    );
\storage_data2_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(20),
      Q => storage_data2(20),
      R => \<const0>\
    );
\storage_data2_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(21),
      Q => storage_data2(21),
      R => \<const0>\
    );
\storage_data2_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(22),
      Q => storage_data2(22),
      R => \<const0>\
    );
\storage_data2_reg[23]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(23),
      Q => storage_data2(23),
      R => \<const0>\
    );
\storage_data2_reg[24]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(24),
      Q => storage_data2(24),
      R => \<const0>\
    );
\storage_data2_reg[25]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(25),
      Q => storage_data2(25),
      R => \<const0>\
    );
\storage_data2_reg[26]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(26),
      Q => storage_data2(26),
      R => \<const0>\
    );
\storage_data2_reg[27]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(27),
      Q => storage_data2(27),
      R => \<const0>\
    );
\storage_data2_reg[28]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(28),
      Q => storage_data2(28),
      R => \<const0>\
    );
\storage_data2_reg[29]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(29),
      Q => storage_data2(29),
      R => \<const0>\
    );
\storage_data2_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(2),
      Q => storage_data2(2),
      R => \<const0>\
    );
\storage_data2_reg[30]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(30),
      Q => storage_data2(30),
      R => \<const0>\
    );
\storage_data2_reg[31]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(31),
      Q => storage_data2(31),
      R => \<const0>\
    );
\storage_data2_reg[32]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(32),
      Q => storage_data2(32),
      R => \<const0>\
    );
\storage_data2_reg[33]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(33),
      Q => storage_data2(33),
      R => \<const0>\
    );
\storage_data2_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(3),
      Q => storage_data2(3),
      R => \<const0>\
    );
\storage_data2_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(4),
      Q => storage_data2(4),
      R => \<const0>\
    );
\storage_data2_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(5),
      Q => storage_data2(5),
      R => \<const0>\
    );
\storage_data2_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(6),
      Q => storage_data2(6),
      R => \<const0>\
    );
\storage_data2_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(7),
      Q => storage_data2(7),
      R => \<const0>\
    );
\storage_data2_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(8),
      Q => storage_data2(8),
      R => \<const0>\
    );
\storage_data2_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => storage_data2_0,
      D => D(9),
      Q => storage_data2(9),
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \axis_switch_txaxis_register_slice_v1_1_axisc_register_slice__parameterized0\ is
  port (
    s_ready_i2_out : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    tready_or_decode_err : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC;
    state_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axis_switch_txaxis_register_slice_v1_1_axisc_register_slice__parameterized0\ : entity is "axis_register_slice_v1_1_axisc_register_slice";
end \axis_switch_txaxis_register_slice_v1_1_axisc_register_slice__parameterized0\;

architecture STRUCTURE of \axis_switch_txaxis_register_slice_v1_1_axisc_register_slice__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal arb_req_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal areset_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal m_axis_tvalid_req : STD_LOGIC;
  signal m_tready_from_decoded_slave : STD_LOGIC;
  signal m_tready_from_decoded_slave0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \n_0_FSM_onehot_state[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[2]_i_1__0\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[3]_i_1__0\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[3]_i_2__0\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state[3]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[0]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[1]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[2]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_state_reg[3]\ : STD_LOGIC;
  signal n_0_s_ready_i_i_1 : STD_LOGIC;
  signal \n_0_s_ready_i_i_2__0\ : STD_LOGIC;
  signal \n_0_s_ready_i_i_4__0\ : STD_LOGIC;
  signal n_0_s_ready_i_reg : STD_LOGIC;
  signal \n_0_storage_data1[0]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[1]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data1[1]_i_2\ : STD_LOGIC;
  signal \n_0_storage_data1[1]_i_3\ : STD_LOGIC;
  signal \n_0_storage_data2[0]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data2[1]_i_1\ : STD_LOGIC;
  signal \n_0_storage_data2_reg[0]\ : STD_LOGIC;
  signal \n_0_storage_data2_reg[1]\ : STD_LOGIC;
  signal s_ready_i15_out : STD_LOGIC;
  signal s_ready_i2_out_0 : STD_LOGIC;
  signal state_reg_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^tready_or_decode_err\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[0]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_state[2]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_5__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_6__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_7\ : label is "soft_lutpair11";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \areset_d_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \areset_d_reg[1]\ : label is "no";
  attribute SOFT_HLUTNM of \m_axis_tvalid[0]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tvalid[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_ready_i_i_2__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_ready_i_i_4 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \s_ready_i_i_4__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of s_ready_i_i_6 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of s_ready_i_i_7 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \storage_data1[1]_i_2\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \storage_data2[0]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \storage_data2[1]_i_1\ : label is "soft_lutpair9";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  tready_or_decode_err <= \^tready_or_decode_err\;
\FSM_onehot_state[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEBFFEB"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[3]\,
      I1 => \n_0_FSM_onehot_state_reg[0]\,
      I2 => \n_0_FSM_onehot_state_reg[2]\,
      I3 => \n_0_FSM_onehot_state_reg[1]\,
      I4 => \^o3\,
      O => \n_0_FSM_onehot_state[0]_i_1__0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0011100000001000"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[3]\,
      I2 => \^tready_or_decode_err\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[0]\,
      I5 => s_axis_tvalid(0),
      O => \n_0_FSM_onehot_state[1]_i_1\
    );
\FSM_onehot_state[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[0]\,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      I2 => \n_0_FSM_onehot_state_reg[3]\,
      I3 => \^o3\,
      I4 => \n_0_FSM_onehot_state_reg[1]\,
      O => \n_0_FSM_onehot_state[2]_i_1__0\
    );
\FSM_onehot_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => I1,
      I1 => s_axis_tvalid(0),
      I2 => m_tready_from_decoded_slave0(1),
      I3 => m_tready_from_decoded_slave0(0),
      O => \^o3\
    );
\FSM_onehot_state[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
    port map (
      I0 => areset_r,
      I1 => areset_d(0),
      I2 => areset_d(1),
      O => \n_0_FSM_onehot_state[3]_i_1__0\
    );
\FSM_onehot_state[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8FF0000B8330000"
    )
    port map (
      I0 => \^o1\,
      I1 => m_axis_tvalid_req,
      I2 => s_axis_tvalid(0),
      I3 => state_reg_1(1),
      I4 => s_ready_i15_out,
      I5 => \^o2\,
      O => \n_0_FSM_onehot_state[3]_i_2__0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000010000110100"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[3]\,
      I2 => \^tready_or_decode_err\,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[0]\,
      I5 => s_axis_tvalid(0),
      O => \n_0_FSM_onehot_state[3]_i_3\
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5556"
    )
    port map (
      I0 => s_axis_tvalid(0),
      I1 => m_tready_from_decoded_slave0(0),
      I2 => m_tready_from_decoded_slave0(1),
      I3 => I1,
      O => \^o1\
    );
\FSM_onehot_state[3]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      O => m_axis_tvalid_req
    );
\FSM_onehot_state[3]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AB"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[0]\,
      I1 => \n_0_FSM_onehot_state_reg[3]\,
      I2 => \n_0_FSM_onehot_state_reg[2]\,
      O => state_reg_1(1)
    );
\FSM_onehot_state[3]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => areset_d(0),
      I1 => areset_d(1),
      O => s_ready_i15_out
    );
\FSM_onehot_state[3]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I1,
      I1 => m_tready_from_decoded_slave,
      O => \^o2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => aclk,
      CE => \n_0_FSM_onehot_state[3]_i_2__0\,
      D => \n_0_FSM_onehot_state[0]_i_1__0\,
      Q => \n_0_FSM_onehot_state_reg[0]\,
      S => \n_0_FSM_onehot_state[3]_i_1__0\
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_FSM_onehot_state[3]_i_2__0\,
      D => \n_0_FSM_onehot_state[1]_i_1\,
      Q => \n_0_FSM_onehot_state_reg[1]\,
      R => \n_0_FSM_onehot_state[3]_i_1__0\
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_FSM_onehot_state[3]_i_2__0\,
      D => \n_0_FSM_onehot_state[2]_i_1__0\,
      Q => \n_0_FSM_onehot_state_reg[2]\,
      R => \n_0_FSM_onehot_state[3]_i_1__0\
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => aclk,
      CE => \n_0_FSM_onehot_state[3]_i_2__0\,
      D => \n_0_FSM_onehot_state[3]_i_3\,
      Q => \n_0_FSM_onehot_state_reg[3]\,
      R => \n_0_FSM_onehot_state[3]_i_1__0\
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\areset_d_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => areset_r,
      Q => areset_d(0),
      R => \<const0>\
    );
\areset_d_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => areset_d(0),
      Q => areset_d(1),
      R => \<const0>\
    );
decode_err_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000054"
    )
    port map (
      I0 => I1,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      I2 => \n_0_FSM_onehot_state_reg[1]\,
      I3 => arb_req_out(0),
      I4 => arb_req_out(1),
      I5 => areset_r,
      O => O4
    );
\m_axis_tvalid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[2]\,
      I1 => \n_0_FSM_onehot_state_reg[1]\,
      I2 => arb_req_out(0),
      O => m_axis_tvalid(0)
    );
\m_axis_tvalid[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[2]\,
      I1 => \n_0_FSM_onehot_state_reg[1]\,
      I2 => arb_req_out(1),
      O => m_axis_tvalid(1)
    );
s_ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000CECEFECE"
    )
    port map (
      I0 => n_0_s_ready_i_reg,
      I1 => \n_0_s_ready_i_i_2__0\,
      I2 => s_ready_i2_out_0,
      I3 => \^tready_or_decode_err\,
      I4 => state_reg_1(1),
      I5 => areset_r,
      O => n_0_s_ready_i_i_1
    );
\s_ready_i_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => areset_d(1),
      I1 => areset_d(0),
      O => \n_0_s_ready_i_i_2__0\
    );
s_ready_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FE00FE"
    )
    port map (
      I0 => I1,
      I1 => m_tready_from_decoded_slave0(1),
      I2 => m_tready_from_decoded_slave0(0),
      I3 => state_reg(0),
      I4 => s_axis_tvalid(0),
      I5 => I2,
      O => s_ready_i2_out
    );
\s_ready_i_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001FE00FE"
    )
    port map (
      I0 => I1,
      I1 => m_tready_from_decoded_slave0(1),
      I2 => m_tready_from_decoded_slave0(0),
      I3 => state_reg_1(1),
      I4 => s_axis_tvalid(0),
      I5 => \n_0_s_ready_i_i_4__0\,
      O => s_ready_i2_out_0
    );
s_ready_i_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => m_tready_from_decoded_slave,
      I1 => I1,
      O => \^tready_or_decode_err\
    );
\s_ready_i_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF1"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[2]\,
      I1 => \n_0_FSM_onehot_state_reg[1]\,
      I2 => areset_d(1),
      I3 => areset_d(0),
      O => \n_0_s_ready_i_i_4__0\
    );
s_ready_i_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      I2 => m_axis_tready(1),
      I3 => arb_req_out(1),
      O => m_tready_from_decoded_slave0(1)
    );
s_ready_i_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      I2 => m_axis_tready(0),
      I3 => arb_req_out(0),
      O => m_tready_from_decoded_slave0(0)
    );
s_ready_i_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888F8880000"
    )
    port map (
      I0 => arb_req_out(1),
      I1 => m_axis_tready(1),
      I2 => arb_req_out(0),
      I3 => m_axis_tready(0),
      I4 => \n_0_FSM_onehot_state_reg[2]\,
      I5 => \n_0_FSM_onehot_state_reg[1]\,
      O => m_tready_from_decoded_slave
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => n_0_s_ready_i_i_1,
      Q => n_0_s_ready_i_reg,
      R => \<const0>\
    );
\storage_data1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"88B8FFFF88B80000"
    )
    port map (
      I0 => \n_0_storage_data2_reg[0]\,
      I1 => \n_0_storage_data1[1]_i_2\,
      I2 => s_axis_tvalid(0),
      I3 => D(0),
      I4 => \n_0_storage_data1[1]_i_3\,
      I5 => arb_req_out(0),
      O => \n_0_storage_data1[0]_i_1\
    );
\storage_data1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B888FFFFB8880000"
    )
    port map (
      I0 => \n_0_storage_data2_reg[1]\,
      I1 => \n_0_storage_data1[1]_i_2\,
      I2 => s_axis_tvalid(0),
      I3 => D(0),
      I4 => \n_0_storage_data1[1]_i_3\,
      I5 => arb_req_out(1),
      O => \n_0_storage_data1[1]_i_1\
    );
\storage_data1[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EC"
    )
    port map (
      I0 => \n_0_FSM_onehot_state_reg[1]\,
      I1 => \n_0_FSM_onehot_state_reg[2]\,
      I2 => \n_0_FSM_onehot_state_reg[3]\,
      I3 => \n_0_FSM_onehot_state_reg[0]\,
      O => \n_0_storage_data1[1]_i_2\
    );
\storage_data1[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8A8AAFCFCFC00"
    )
    port map (
      I0 => s_axis_tvalid(0),
      I1 => I1,
      I2 => m_tready_from_decoded_slave,
      I3 => \n_0_FSM_onehot_state_reg[2]\,
      I4 => \n_0_FSM_onehot_state_reg[1]\,
      I5 => state_reg_1(1),
      O => \n_0_storage_data1[1]_i_3\
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_storage_data1[0]_i_1\,
      Q => arb_req_out(0),
      R => \<const0>\
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_storage_data1[1]_i_1\,
      Q => arb_req_out(1),
      R => \<const0>\
    );
\storage_data2[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F40"
    )
    port map (
      I0 => D(0),
      I1 => s_axis_tvalid(0),
      I2 => n_0_s_ready_i_reg,
      I3 => \n_0_storage_data2_reg[0]\,
      O => \n_0_storage_data2[0]_i_1\
    );
\storage_data2[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
    port map (
      I0 => D(0),
      I1 => s_axis_tvalid(0),
      I2 => n_0_s_ready_i_reg,
      I3 => \n_0_storage_data2_reg[1]\,
      O => \n_0_storage_data2[1]_i_1\
    );
\storage_data2_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_storage_data2[0]_i_1\,
      Q => \n_0_storage_data2_reg[0]\,
      R => \<const0>\
    );
\storage_data2_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_storage_data2[1]_i_1\,
      Q => \n_0_storage_data2_reg[1]\,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_txaxis_switch_v1_1_axisc_decoder is
  port (
    O1 : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    areset_r : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 33 downto 0 )
  );
end axis_switch_txaxis_switch_v1_1_axisc_decoder;

architecture STRUCTURE of axis_switch_txaxis_switch_v1_1_axisc_decoder is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \n_1_gen_tdest_decoder.axisc_register_slice_0\ : STD_LOGIC;
  signal \n_1_gen_tdest_decoder.axisc_register_slice_1\ : STD_LOGIC;
  signal \n_2_gen_tdest_decoder.axisc_register_slice_1\ : STD_LOGIC;
  signal \n_3_gen_tdest_decoder.axisc_register_slice_1\ : STD_LOGIC;
  signal \n_4_gen_tdest_decoder.axisc_register_slice_1\ : STD_LOGIC;
  signal s_ready_i2_out : STD_LOGIC;
  signal state_reg : STD_LOGIC_VECTOR ( 1 to 1 );
  signal tready_or_decode_err : STD_LOGIC;
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
decode_err_r_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_4_gen_tdest_decoder.axisc_register_slice_1\,
      Q => \^o1\,
      R => \<const0>\
    );
\gen_tdest_decoder.axisc_register_slice_0\: entity work.axis_switch_txaxis_register_slice_v1_1_axisc_register_slice
    port map (
      D(33 downto 0) => D(33 downto 0),
      I1 => \n_1_gen_tdest_decoder.axisc_register_slice_1\,
      I2 => \n_2_gen_tdest_decoder.axisc_register_slice_1\,
      I3 => \n_3_gen_tdest_decoder.axisc_register_slice_1\,
      O1 => \n_1_gen_tdest_decoder.axisc_register_slice_0\,
      Q(33 downto 0) => Q(33 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      s_axis_tready(0) => s_axis_tready(0),
      s_axis_tvalid(0) => s_axis_tvalid(0),
      s_ready_i2_out => s_ready_i2_out,
      state_reg(0) => state_reg(1),
      tready_or_decode_err => tready_or_decode_err
    );
\gen_tdest_decoder.axisc_register_slice_1\: entity work.\axis_switch_txaxis_register_slice_v1_1_axisc_register_slice__parameterized0\
    port map (
      D(0) => D(33),
      I1 => \^o1\,
      I2 => \n_1_gen_tdest_decoder.axisc_register_slice_0\,
      O1 => \n_1_gen_tdest_decoder.axisc_register_slice_1\,
      O2 => \n_2_gen_tdest_decoder.axisc_register_slice_1\,
      O3 => \n_3_gen_tdest_decoder.axisc_register_slice_1\,
      O4 => \n_4_gen_tdest_decoder.axisc_register_slice_1\,
      aclk => aclk,
      areset_r => areset_r,
      m_axis_tready(1 downto 0) => m_axis_tready(1 downto 0),
      m_axis_tvalid(1 downto 0) => m_axis_tvalid(1 downto 0),
      s_axis_tvalid(0) => s_axis_tvalid(0),
      s_ready_i2_out => s_ready_i2_out,
      state_reg(0) => state_reg(1),
      tready_or_decode_err => tready_or_decode_err
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_txaxis_switch_v1_1_axis_switch is
  port (
    O1 : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 33 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 32 downto 0 );
    aresetn : in STD_LOGIC
  );
end axis_switch_txaxis_switch_v1_1_axis_switch;

architecture STRUCTURE of axis_switch_txaxis_switch_v1_1_axis_switch is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal areset_r : STD_LOGIC;
  signal n_0_areset_r_i_1 : STD_LOGIC;
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
areset_r_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => aresetn,
      O => n_0_areset_r_i_1
    );
areset_r_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => n_0_areset_r_i_1,
      Q => areset_r,
      R => \<const0>\
    );
\gen_decoder[0].axisc_decoder_0\: entity work.axis_switch_txaxis_switch_v1_1_axisc_decoder
    port map (
      D(33) => s_axis_tdest(0),
      D(32 downto 0) => D(32 downto 0),
      O1 => O1,
      Q(33 downto 0) => Q(33 downto 0),
      aclk => aclk,
      areset_r => areset_r,
      m_axis_tready(1 downto 0) => m_axis_tready(1 downto 0),
      m_axis_tvalid(1 downto 0) => m_axis_tvalid(1 downto 0),
      s_axis_tready(0) => s_axis_tready(0),
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_tx is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axis_switch_tx : entity is true;
  attribute x_core_info : string;
  attribute x_core_info of axis_switch_tx : entity is "axis_switch_v1_1_axis_switch,Vivado 2013.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axis_switch_tx : entity is "axis_switch_tx,axis_switch_v1_1_axis_switch,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of axis_switch_tx : entity is "axis_switch_tx,axis_switch_v1_1_axis_switch,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_switch,x_ipVersion=1.1,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_FAMILY=kintex7,C_NUM_SI_SLOTS=1,C_LOG_SI_SLOTS=1,C_NUM_MI_SLOTS=2,C_AXIS_TDATA_WIDTH=32,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b01010011,C_ARB_ON_MAX_XFERS=1,C_ARB_ON_NUM_CYCLES=0,C_ARB_ON_TLAST=0,C_INCLUDE_ARBITER=1,C_ARB_ALGORITHM=0,C_OUTPUT_REG=0,C_DECODER_REG=1,C_M_AXIS_CONNECTIVITY_ARRAY=0b11,C_M_AXIS_BASETDEST_ARRAY=0b10,C_M_AXIS_HIGHTDEST_ARRAY=0b10}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axis_switch_tx : entity is "yes";
end axis_switch_tx;

architecture STRUCTURE of axis_switch_tx is
  signal \^m_axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axis_tdest\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axis_tlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  m_axis_tdata(63 downto 32) <= \^m_axis_tdata\(31 downto 0);
  m_axis_tdata(31 downto 0) <= \^m_axis_tdata\(31 downto 0);
  m_axis_tdest(1) <= \^m_axis_tdest\(0);
  m_axis_tdest(0) <= \^m_axis_tdest\(0);
  m_axis_tlast(1) <= \^m_axis_tlast\(0);
  m_axis_tlast(0) <= \^m_axis_tlast\(0);
inst: entity work.axis_switch_txaxis_switch_v1_1_axis_switch
    port map (
      D(32) => s_axis_tlast(0),
      D(31 downto 0) => s_axis_tdata(31 downto 0),
      O1 => s_decode_err(0),
      Q(33) => \^m_axis_tdest\(0),
      Q(32) => \^m_axis_tlast\(0),
      Q(31 downto 0) => \^m_axis_tdata\(31 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tready(1 downto 0) => m_axis_tready(1 downto 0),
      m_axis_tvalid(1 downto 0) => m_axis_tvalid(1 downto 0),
      s_axis_tdest(0) => s_axis_tdest(0),
      s_axis_tready(0) => s_axis_tready(0),
      s_axis_tvalid(0) => s_axis_tvalid(0)
    );
end STRUCTURE;
