-- Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
-- Date        : Fri Jul 18 14:11:31 2014
-- Host        : PC210 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/axis_switch_rx/axis_switch_rx_funcsim.vhdl
-- Design      : axis_switch_rx
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_rxaxis_switch_v1_1_arb_rr is
  port (
    arb_busy_r : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    arb_req_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    areset_r : in STD_LOGIC;
    arb_busy_ns : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    busy_r : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_sel_r0 : in STD_LOGIC;
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end axis_switch_rxaxis_switch_v1_1_arb_rr;

architecture STRUCTURE of axis_switch_rxaxis_switch_v1_1_arb_rr is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o4\ : STD_LOGIC;
  signal \^o6\ : STD_LOGIC;
  signal \^arb_req_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \n_0_arb_gnt_r[0]_i_1\ : STD_LOGIC;
  signal \n_0_arb_gnt_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_arb_sel_r[0]_i_1\ : STD_LOGIC;
  signal sel_i : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of arb_busy_r_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of arb_busy_r_i_3 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_5\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \arb_sel_r[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \busy_r[0]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axis_tdata[0]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[10]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tdata[11]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[12]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_axis_tdata[13]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[14]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[15]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[16]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_axis_tdata[17]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_axis_tdata[18]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[19]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axis_tdata[1]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_axis_tdata[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axis_tdata[21]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[22]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_axis_tdata[23]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[24]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axis_tdata[25]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[26]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axis_tdata[27]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[28]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_axis_tdata[29]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[2]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[30]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_axis_tdata[31]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_axis_tdata[3]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[4]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_axis_tdata[5]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_axis_tdata[6]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[7]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_axis_tdata[8]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_axis_tdata[9]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_axis_tlast[0]_INST_0\ : label is "soft_lutpair4";
begin
  O1 <= \^o1\;
  O4 <= \^o4\;
  O6 <= \^o6\;
  arb_req_i(0) <= \^arb_req_i\(0);
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
arb_busy_r_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
    port map (
      I0 => \^o4\,
      I1 => s_req_suppress(1),
      I2 => s_axis_tvalid(1),
      I3 => I1,
      I4 => \^arb_req_i\(0),
      O => O7
    );
arb_busy_r_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => s_req_suppress(0),
      I1 => s_axis_tvalid(0),
      I2 => \^o6\,
      I3 => I2,
      O => \^arb_req_i\(0)
    );
arb_busy_r_reg: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => arb_busy_ns,
      Q => arb_busy_r,
      R => areset_r
    );
\arb_gnt_r[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => areset_r,
      I1 => sel_i,
      I2 => arb_sel_r0,
      O => \n_0_arb_gnt_r[0]_i_1\
    );
\arb_gnt_r[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => areset_r,
      I1 => sel_i,
      I2 => arb_sel_r0,
      O => \n_0_arb_gnt_r[1]_i_1\
    );
\arb_gnt_r[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => I1,
      I1 => \^o4\,
      I2 => s_axis_tvalid(1),
      I3 => s_req_suppress(1),
      I4 => \^arb_req_i\(0),
      O => sel_i
    );
\arb_gnt_r[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
    port map (
      I0 => s_axis_tvalid(0),
      I1 => s_axis_tvalid(1),
      I2 => \^o1\,
      O => O2
    );
\arb_gnt_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_arb_gnt_r[0]_i_1\,
      Q => \^o6\,
      R => \<const0>\
    );
\arb_gnt_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_arb_gnt_r[1]_i_1\,
      Q => \^o4\,
      R => \<const0>\
    );
\arb_sel_r[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
    port map (
      I0 => \^o1\,
      I1 => arb_sel_r0,
      I2 => sel_i,
      I3 => areset_r,
      O => \n_0_arb_sel_r[0]_i_1\
    );
\arb_sel_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_arb_sel_r[0]_i_1\,
      Q => \^o1\,
      R => \<const0>\
    );
\busy_r[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^o6\,
      I1 => busy_r(0),
      O => O5
    );
\busy_r[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \^o4\,
      I1 => busy_r(1),
      O => O3
    );
\m_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(32),
      I1 => \^o1\,
      I2 => s_axis_tdata(0),
      O => m_axis_tdata(0)
    );
\m_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(42),
      I1 => \^o1\,
      I2 => s_axis_tdata(10),
      O => m_axis_tdata(10)
    );
\m_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(43),
      I1 => \^o1\,
      I2 => s_axis_tdata(11),
      O => m_axis_tdata(11)
    );
\m_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(44),
      I1 => \^o1\,
      I2 => s_axis_tdata(12),
      O => m_axis_tdata(12)
    );
\m_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(45),
      I1 => \^o1\,
      I2 => s_axis_tdata(13),
      O => m_axis_tdata(13)
    );
\m_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(46),
      I1 => \^o1\,
      I2 => s_axis_tdata(14),
      O => m_axis_tdata(14)
    );
\m_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(47),
      I1 => \^o1\,
      I2 => s_axis_tdata(15),
      O => m_axis_tdata(15)
    );
\m_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(48),
      I1 => \^o1\,
      I2 => s_axis_tdata(16),
      O => m_axis_tdata(16)
    );
\m_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(49),
      I1 => \^o1\,
      I2 => s_axis_tdata(17),
      O => m_axis_tdata(17)
    );
\m_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(50),
      I1 => \^o1\,
      I2 => s_axis_tdata(18),
      O => m_axis_tdata(18)
    );
\m_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(51),
      I1 => \^o1\,
      I2 => s_axis_tdata(19),
      O => m_axis_tdata(19)
    );
\m_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(33),
      I1 => \^o1\,
      I2 => s_axis_tdata(1),
      O => m_axis_tdata(1)
    );
\m_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(52),
      I1 => \^o1\,
      I2 => s_axis_tdata(20),
      O => m_axis_tdata(20)
    );
\m_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(53),
      I1 => \^o1\,
      I2 => s_axis_tdata(21),
      O => m_axis_tdata(21)
    );
\m_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(54),
      I1 => \^o1\,
      I2 => s_axis_tdata(22),
      O => m_axis_tdata(22)
    );
\m_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(55),
      I1 => \^o1\,
      I2 => s_axis_tdata(23),
      O => m_axis_tdata(23)
    );
\m_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(56),
      I1 => \^o1\,
      I2 => s_axis_tdata(24),
      O => m_axis_tdata(24)
    );
\m_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(57),
      I1 => \^o1\,
      I2 => s_axis_tdata(25),
      O => m_axis_tdata(25)
    );
\m_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(58),
      I1 => \^o1\,
      I2 => s_axis_tdata(26),
      O => m_axis_tdata(26)
    );
\m_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(59),
      I1 => \^o1\,
      I2 => s_axis_tdata(27),
      O => m_axis_tdata(27)
    );
\m_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(60),
      I1 => \^o1\,
      I2 => s_axis_tdata(28),
      O => m_axis_tdata(28)
    );
\m_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(61),
      I1 => \^o1\,
      I2 => s_axis_tdata(29),
      O => m_axis_tdata(29)
    );
\m_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(34),
      I1 => \^o1\,
      I2 => s_axis_tdata(2),
      O => m_axis_tdata(2)
    );
\m_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(62),
      I1 => \^o1\,
      I2 => s_axis_tdata(30),
      O => m_axis_tdata(30)
    );
\m_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(63),
      I1 => \^o1\,
      I2 => s_axis_tdata(31),
      O => m_axis_tdata(31)
    );
\m_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(35),
      I1 => \^o1\,
      I2 => s_axis_tdata(3),
      O => m_axis_tdata(3)
    );
\m_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(36),
      I1 => \^o1\,
      I2 => s_axis_tdata(4),
      O => m_axis_tdata(4)
    );
\m_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(37),
      I1 => \^o1\,
      I2 => s_axis_tdata(5),
      O => m_axis_tdata(5)
    );
\m_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(38),
      I1 => \^o1\,
      I2 => s_axis_tdata(6),
      O => m_axis_tdata(6)
    );
\m_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(39),
      I1 => \^o1\,
      I2 => s_axis_tdata(7),
      O => m_axis_tdata(7)
    );
\m_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(40),
      I1 => \^o1\,
      I2 => s_axis_tdata(8),
      O => m_axis_tdata(8)
    );
\m_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tdata(41),
      I1 => \^o1\,
      I2 => s_axis_tdata(9),
      O => m_axis_tdata(9)
    );
\m_axis_tlast[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => s_axis_tlast(1),
      I1 => \^o1\,
      I2 => s_axis_tlast(0),
      O => m_axis_tlast(0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_rxaxis_switch_v1_1_axisc_arb_responder is
  port (
    busy_ns : out STD_LOGIC;
    O1 : out STD_LOGIC;
    busy_ns_0 : out STD_LOGIC;
    arb_sel_r0 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_busy_ns : out STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    arb_req_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    I6 : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_busy_r : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC
  );
end axis_switch_rxaxis_switch_v1_1_axisc_arb_responder;

architecture STRUCTURE of axis_switch_rxaxis_switch_v1_1_axisc_arb_responder is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \n_0_arb_gnt_r[1]_i_4\ : STD_LOGIC;
  signal \n_0_arb_gnt_r[1]_i_6\ : STD_LOGIC;
  signal \n_0_busy_r[0]_i_1__1\ : STD_LOGIC;
  signal \n_0_busy_r[1]_i_1\ : STD_LOGIC;
  signal \n_0_busy_r[1]_i_3\ : STD_LOGIC;
  signal \n_0_busy_r[1]_i_4\ : STD_LOGIC;
  signal \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[6]_i_2\ : STD_LOGIC;
  signal \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\ : STD_LOGIC;
  signal \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4\ : STD_LOGIC;
  signal \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1\ : STD_LOGIC;
  signal \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_3\ : STD_LOGIC;
  signal \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\ : STD_LOGIC;
  signal \n_0_gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1\ : STD_LOGIC;
  signal \n_0_m_axis_tvalid[0]_INST_0_i_1\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_1_in : STD_LOGIC;
  signal timeout_cnt : STD_LOGIC;
  signal timeout_done_ns : STD_LOGIC;
  signal timeout_done_r : STD_LOGIC;
  signal xfer_cnt0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \arb_gnt_r[1]_i_6\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \busy_r[1]_i_3\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \busy_r[1]_i_4\ : label is "soft_lutpair25";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1\ : label is true;
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[6]_i_2\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[8]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_3\ : label is "soft_lutpair21";
  attribute counter : integer;
  attribute counter of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[0]\ : label is 1;
  attribute counter of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[1]\ : label is 1;
  attribute counter of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[2]\ : label is 1;
  attribute counter of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[3]\ : label is 1;
  attribute counter of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[4]\ : label is 1;
  attribute counter of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[5]\ : label is 1;
  attribute counter of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[6]\ : label is 1;
  attribute counter of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[7]\ : label is 1;
  attribute counter of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[8]\ : label is 1;
  attribute counter of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[9]\ : label is 1;
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_1\ : label is "soft_lutpair23";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
arb_busy_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABABABABABABABA"
    )
    port map (
      I0 => I7,
      I1 => timeout_done_r,
      I2 => arb_busy_r,
      I3 => \^o1\,
      I4 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      I5 => m_axis_tready(0),
      O => arb_busy_ns
    );
\arb_gnt_r[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB08FB08FB080000"
    )
    port map (
      I0 => \n_0_arb_gnt_r[1]_i_4\,
      I1 => \n_0_m_axis_tvalid[0]_INST_0_i_1\,
      I2 => I5,
      I3 => \n_0_arb_gnt_r[1]_i_6\,
      I4 => arb_req_i(0),
      I5 => I6,
      O => arb_sel_r0
    );
\arb_gnt_r[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => arb_busy_r,
      I1 => timeout_done_r,
      I2 => m_axis_tready(0),
      I3 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      O => \n_0_arb_gnt_r[1]_i_4\
    );
\arb_gnt_r[1]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => timeout_done_r,
      I1 => arb_busy_r,
      O => \n_0_arb_gnt_r[1]_i_6\
    );
\busy_r[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F7F7F00"
    )
    port map (
      I0 => \^o1\,
      I1 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      I2 => m_axis_tready(0),
      I3 => I1,
      I4 => I2,
      I5 => timeout_done_r,
      O => busy_ns
    );
\busy_r[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007F7F7F00"
    )
    port map (
      I0 => \^o1\,
      I1 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      I2 => m_axis_tready(0),
      I3 => I3,
      I4 => I4,
      I5 => timeout_done_r,
      O => busy_ns_0
    );
\busy_r[0]_i_1__1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002A2A2A2"
    )
    port map (
      I0 => I9,
      I1 => \n_0_busy_r[1]_i_3\,
      I2 => \^o1\,
      I3 => m_axis_tready(0),
      I4 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      I5 => \n_0_busy_r[1]_i_4\,
      O => \n_0_busy_r[0]_i_1__1\
    );
\busy_r[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002A2A2A2"
    )
    port map (
      I0 => I8,
      I1 => \n_0_busy_r[1]_i_3\,
      I2 => \^o1\,
      I3 => m_axis_tready(0),
      I4 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      I5 => \n_0_busy_r[1]_i_4\,
      O => \n_0_busy_r[1]_i_1\
    );
\busy_r[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => \^o3\,
      I1 => \^o2\,
      I2 => timeout_cnt,
      O => \n_0_busy_r[1]_i_3\
    );
\busy_r[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => timeout_done_r,
      I1 => areset_r,
      O => \n_0_busy_r[1]_i_4\
    );
\busy_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_busy_r[0]_i_1__1\,
      Q => \^o2\,
      R => \<const0>\
    );
\busy_r_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_busy_r[1]_i_1\,
      Q => \^o3\,
      R => \<const0>\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(0),
      O => p_0_in(0)
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(0),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(1),
      O => p_0_in(1)
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(0),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(1),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(2),
      O => p_0_in(2)
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(2),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(1),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(0),
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(3),
      O => p_0_in(3)
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(1),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(0),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(2),
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(3),
      I4 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(4),
      O => p_0_in(4)
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(2),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(4),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(0),
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(1),
      I4 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(3),
      I5 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(5),
      O => p_0_in(5)
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(4),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(2),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(5),
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(3),
      I4 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[6]_i_2\,
      I5 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(6),
      O => p_0_in(6)
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(1),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(0),
      O => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[6]_i_2\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(6),
      I1 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4\,
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(7),
      O => p_0_in(7)
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(6),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(7),
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(8),
      O => p_0_in(8)
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF80"
    )
    port map (
      I0 => m_axis_tready(0),
      I1 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      I2 => \^o1\,
      I3 => areset_r,
      I4 => timeout_done_r,
      O => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => m_axis_tready(0),
      I1 => \^o1\,
      O => xfer_cnt0
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4\,
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(8),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(6),
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(7),
      I4 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(9),
      O => p_0_in(9)
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(0),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(1),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(3),
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(5),
      I4 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(2),
      I5 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(4),
      O => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => xfer_cnt0,
      D => p_0_in(0),
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(0),
      R => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => xfer_cnt0,
      D => p_0_in(1),
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(1),
      R => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => xfer_cnt0,
      D => p_0_in(2),
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(2),
      R => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => xfer_cnt0,
      D => p_0_in(3),
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(3),
      R => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => xfer_cnt0,
      D => p_0_in(4),
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(4),
      R => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => xfer_cnt0,
      D => p_0_in(5),
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(5),
      R => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => xfer_cnt0,
      D => p_0_in(6),
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(6),
      R => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => xfer_cnt0,
      D => p_0_in(7),
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(7),
      R => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => xfer_cnt0,
      D => p_0_in(8),
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(8),
      R => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => xfer_cnt0,
      D => p_0_in(9),
      Q => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(9),
      R => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0003020003030000"
    )
    port map (
      I0 => p_1_in,
      I1 => timeout_done_r,
      I2 => areset_r,
      I3 => \^o1\,
      I4 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      I5 => m_axis_tready(0),
      O => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(8),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(0),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(3),
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(2),
      I4 => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_3\,
      O => p_1_in
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(6),
      I1 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(5),
      I2 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(1),
      I3 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(9),
      I4 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(7),
      I5 => \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0\(4),
      O => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_3\
    );
\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1\,
      Q => \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg\,
      R => \<const0>\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \^o1\,
      I1 => areset_r,
      I2 => timeout_cnt,
      O => \n_0_gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => \n_0_gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1\,
      Q => timeout_cnt,
      R => \<const0>\
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00A8"
    )
    port map (
      I0 => timeout_cnt,
      I1 => \^o2\,
      I2 => \^o3\,
      I3 => \^o1\,
      O => timeout_done_ns
    );
\gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => timeout_done_ns,
      Q => timeout_done_r,
      R => areset_r
    );
\m_axis_tvalid[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => \n_0_m_axis_tvalid[0]_INST_0_i_1\,
      I1 => arb_sel_i,
      I2 => s_axis_tvalid(1),
      I3 => s_axis_tvalid(0),
      O => \^o1\
    );
\m_axis_tvalid[0]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \^o2\,
      I1 => \^o3\,
      I2 => I2,
      I3 => I4,
      O => \n_0_m_axis_tvalid[0]_INST_0_i_1\
    );
\s_axis_tready[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => s_axis_tvalid(0),
      I1 => m_axis_tready(0),
      I2 => \^o2\,
      I3 => I4,
      O => s_axis_tready(0)
    );
\s_axis_tready[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => s_axis_tvalid(1),
      I1 => m_axis_tready(0),
      I2 => \^o3\,
      I3 => I2,
      O => s_axis_tready(1)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_rxaxis_switch_v1_1_axisc_decoder is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    areset_r : in STD_LOGIC;
    busy_ns : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC
  );
end axis_switch_rxaxis_switch_v1_1_axisc_decoder;

architecture STRUCTURE of axis_switch_rxaxis_switch_v1_1_axisc_decoder is
  signal \<const1>\ : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
begin
  O1 <= \^o1\;
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\arb_gnt_r[1]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => \^o1\,
      I1 => s_axis_tvalid(0),
      I2 => s_req_suppress(0),
      I3 => I1,
      O => O2
    );
\busy_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => busy_ns,
      Q => \^o1\,
      R => areset_r
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_rxaxis_switch_v1_1_axisc_decoder_0 is
  port (
    O1 : out STD_LOGIC;
    areset_r : in STD_LOGIC;
    busy_ns : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axis_switch_rxaxis_switch_v1_1_axisc_decoder_0 : entity is "axis_switch_v1_1_axisc_decoder";
end axis_switch_rxaxis_switch_v1_1_axisc_decoder_0;

architecture STRUCTURE of axis_switch_rxaxis_switch_v1_1_axisc_decoder_0 is
  signal \<const1>\ : STD_LOGIC;
begin
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\busy_r_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => aclk,
      CE => \<const1>\,
      D => busy_ns,
      Q => O1,
      R => areset_r
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_rxaxis_switch_v1_1_axis_switch_arbiter is
  port (
    arb_busy_r : out STD_LOGIC;
    arb_sel_i : out STD_LOGIC;
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    arb_req_i : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    areset_r : in STD_LOGIC;
    arb_busy_ns : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    busy_r : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_sel_r0 : in STD_LOGIC;
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );
end axis_switch_rxaxis_switch_v1_1_axis_switch_arbiter;

architecture STRUCTURE of axis_switch_rxaxis_switch_v1_1_axis_switch_arbiter is
begin
\gen_mi_arb[0].gen_default_arb.arb_rr_0\: entity work.axis_switch_rxaxis_switch_v1_1_arb_rr
    port map (
      I1 => I1,
      I2 => I2,
      O1 => arb_sel_i,
      O2 => O1,
      O3 => O2,
      O4 => O3,
      O5 => O4,
      O6 => O5,
      O7 => O6,
      aclk => aclk,
      arb_busy_ns => arb_busy_ns,
      arb_busy_r => arb_busy_r,
      arb_req_i(0) => arb_req_i(0),
      arb_sel_r0 => arb_sel_r0,
      areset_r => areset_r,
      busy_r(1 downto 0) => busy_r(1 downto 0),
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tlast(1 downto 0) => s_axis_tlast(1 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0),
      s_req_suppress(1 downto 0) => s_req_suppress(1 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_rxaxis_switch_v1_1_axisc_transfer_mux is
  port (
    busy_ns : out STD_LOGIC;
    O1 : out STD_LOGIC;
    busy_ns_0 : out STD_LOGIC;
    arb_sel_r0 : out STD_LOGIC;
    busy_r : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_busy_ns : out STD_LOGIC;
    areset_r : in STD_LOGIC;
    aclk : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    I5 : in STD_LOGIC;
    arb_req_i : in STD_LOGIC_VECTOR ( 0 to 0 );
    I6 : in STD_LOGIC;
    arb_sel_i : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    arb_busy_r : in STD_LOGIC;
    I7 : in STD_LOGIC;
    I8 : in STD_LOGIC;
    I9 : in STD_LOGIC
  );
end axis_switch_rxaxis_switch_v1_1_axisc_transfer_mux;

architecture STRUCTURE of axis_switch_rxaxis_switch_v1_1_axisc_transfer_mux is
begin
axisc_arb_responder: entity work.axis_switch_rxaxis_switch_v1_1_axisc_arb_responder
    port map (
      I1 => I1,
      I2 => I2,
      I3 => I3,
      I4 => I4,
      I5 => I5,
      I6 => I6,
      I7 => I7,
      I8 => I8,
      I9 => I9,
      O1 => O1,
      O2 => busy_r(0),
      O3 => busy_r(1),
      aclk => aclk,
      arb_busy_ns => arb_busy_ns,
      arb_busy_r => arb_busy_r,
      arb_req_i(0) => arb_req_i(0),
      arb_sel_i => arb_sel_i,
      arb_sel_r0 => arb_sel_r0,
      areset_r => areset_r,
      busy_ns => busy_ns,
      busy_ns_0 => busy_ns_0,
      m_axis_tready(0) => m_axis_tready(0),
      s_axis_tready(1 downto 0) => s_axis_tready(1 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_rxaxis_switch_v1_1_axis_switch is
  port (
    O1 : out STD_LOGIC;
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    aresetn : in STD_LOGIC
  );
end axis_switch_rxaxis_switch_v1_1_axis_switch;

architecture STRUCTURE of axis_switch_rxaxis_switch_v1_1_axis_switch is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal arb_sel_i : STD_LOGIC;
  signal areset_r : STD_LOGIC;
  signal busy_ns : STD_LOGIC;
  signal busy_ns_0 : STD_LOGIC;
  signal busy_r : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_ns\ : STD_LOGIC;
  signal \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_r\ : STD_LOGIC;
  signal \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_req_i\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_sel_r0\ : STD_LOGIC;
  signal n_0_areset_r_i_1 : STD_LOGIC;
  signal \n_0_gen_decoder[0].axisc_decoder_0\ : STD_LOGIC;
  signal \n_0_gen_decoder[1].axisc_decoder_0\ : STD_LOGIC;
  signal \n_1_gen_decoder[1].axisc_decoder_0\ : STD_LOGIC;
  signal \n_2_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\ : STD_LOGIC;
  signal \n_3_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\ : STD_LOGIC;
  signal \n_4_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\ : STD_LOGIC;
  signal \n_5_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\ : STD_LOGIC;
  signal \n_6_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\ : STD_LOGIC;
  signal \n_7_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\ : STD_LOGIC;
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
\gen_decoder[0].axisc_decoder_0\: entity work.axis_switch_rxaxis_switch_v1_1_axisc_decoder_0
    port map (
      O1 => \n_0_gen_decoder[0].axisc_decoder_0\,
      aclk => aclk,
      areset_r => areset_r,
      busy_ns => busy_ns
    );
\gen_decoder[1].axisc_decoder_0\: entity work.axis_switch_rxaxis_switch_v1_1_axisc_decoder
    port map (
      I1 => \n_4_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      O1 => \n_0_gen_decoder[1].axisc_decoder_0\,
      O2 => \n_1_gen_decoder[1].axisc_decoder_0\,
      aclk => aclk,
      areset_r => areset_r,
      busy_ns => busy_ns_0,
      s_axis_tvalid(0) => s_axis_tvalid(1),
      s_req_suppress(0) => s_req_suppress(1)
    );
\gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\: entity work.axis_switch_rxaxis_switch_v1_1_axis_switch_arbiter
    port map (
      I1 => \n_0_gen_decoder[1].axisc_decoder_0\,
      I2 => \n_0_gen_decoder[0].axisc_decoder_0\,
      O1 => \n_2_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      O2 => \n_3_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      O3 => \n_4_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      O4 => \n_5_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      O5 => \n_6_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      O6 => \n_7_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      aclk => aclk,
      arb_busy_ns => \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_ns\,
      arb_busy_r => \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_r\,
      arb_req_i(0) => \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_req_i\(0),
      arb_sel_i => arb_sel_i,
      arb_sel_r0 => \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_sel_r0\,
      areset_r => areset_r,
      busy_r(1 downto 0) => busy_r(1 downto 0),
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tlast(1 downto 0) => s_axis_tlast(1 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0),
      s_req_suppress(1 downto 0) => s_req_suppress(1 downto 0)
    );
\gen_transfer_mux[0].axisc_transfer_mux_0\: entity work.axis_switch_rxaxis_switch_v1_1_axisc_transfer_mux
    port map (
      I1 => \n_0_gen_decoder[1].axisc_decoder_0\,
      I2 => \n_4_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      I3 => \n_0_gen_decoder[0].axisc_decoder_0\,
      I4 => \n_6_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      I5 => \n_2_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      I6 => \n_1_gen_decoder[1].axisc_decoder_0\,
      I7 => \n_7_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      I8 => \n_3_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      I9 => \n_5_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter\,
      O1 => O1,
      aclk => aclk,
      arb_busy_ns => \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_ns\,
      arb_busy_r => \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_r\,
      arb_req_i(0) => \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_req_i\(0),
      arb_sel_i => arb_sel_i,
      arb_sel_r0 => \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_sel_r0\,
      areset_r => areset_r,
      busy_ns => busy_ns_0,
      busy_ns_0 => busy_ns,
      busy_r(1 downto 0) => busy_r(1 downto 0),
      m_axis_tready(0) => m_axis_tready(0),
      s_axis_tready(1 downto 0) => s_axis_tready(1 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity axis_switch_rx is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tready : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axis_tlast : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_req_suppress : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_decode_err : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axis_switch_rx : entity is true;
  attribute x_core_info : string;
  attribute x_core_info of axis_switch_rx : entity is "axis_switch_v1_1_axis_switch,Vivado 2013.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axis_switch_rx : entity is "axis_switch_rx,axis_switch_v1_1_axis_switch,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of axis_switch_rx : entity is "axis_switch_rx,axis_switch_v1_1_axis_switch,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_switch,x_ipVersion=1.1,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_FAMILY=kintex7,C_NUM_SI_SLOTS=2,C_LOG_SI_SLOTS=1,C_NUM_MI_SLOTS=1,C_AXIS_TDATA_WIDTH=32,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00010011,C_ARB_ON_MAX_XFERS=1024,C_ARB_ON_NUM_CYCLES=1,C_ARB_ON_TLAST=0,C_INCLUDE_ARBITER=1,C_ARB_ALGORITHM=1,C_OUTPUT_REG=0,C_DECODER_REG=0,C_M_AXIS_CONNECTIVITY_ARRAY=11,C_M_AXIS_BASETDEST_ARRAY=1,C_M_AXIS_HIGHTDEST_ARRAY=0}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of axis_switch_rx : entity is "yes";
end axis_switch_rx;

architecture STRUCTURE of axis_switch_rx is
  signal \<const0>\ : STD_LOGIC;
begin
  s_decode_err(1) <= \<const0>\;
  s_decode_err(0) <= \<const0>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
inst: entity work.axis_switch_rxaxis_switch_v1_1_axis_switch
    port map (
      O1 => m_axis_tvalid(0),
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tdata(31 downto 0) => m_axis_tdata(31 downto 0),
      m_axis_tlast(0) => m_axis_tlast(0),
      m_axis_tready(0) => m_axis_tready(0),
      s_axis_tdata(63 downto 0) => s_axis_tdata(63 downto 0),
      s_axis_tlast(1 downto 0) => s_axis_tlast(1 downto 0),
      s_axis_tready(1 downto 0) => s_axis_tready(1 downto 0),
      s_axis_tvalid(1 downto 0) => s_axis_tvalid(1 downto 0),
      s_req_suppress(1 downto 0) => s_req_suppress(1 downto 0)
    );
end STRUCTURE;
