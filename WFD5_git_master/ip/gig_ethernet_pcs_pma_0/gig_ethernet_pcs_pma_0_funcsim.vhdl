-- Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
-- Date        : Fri Jul 18 14:05:35 2014
-- Host        : PC210 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/gig_ethernet_pcs_pma_0/gig_ethernet_pcs_pma_0_funcsim.vhdl
-- Design      : gig_ethernet_pcs_pma_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0RX__parameterized0\ is
  port (
    gmii_rx_er : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    I350_in : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    SYNC_STATUS_REG0 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 );
    p_55_in : in STD_LOGIC;
    RXEVEN : in STD_LOGIC;
    D_0 : in STD_LOGIC;
    RXNOTINTABLE_INT : in STD_LOGIC;
    I4 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    I5 : in STD_LOGIC;
    I6 : in STD_LOGIC;
    I7 : in STD_LOGIC;
    p_0_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0RX__parameterized0\ : entity is "RX";
end \gig_ethernet_pcs_pma_0RX__parameterized0\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0RX__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal C : STD_LOGIC;
  signal C0 : STD_LOGIC;
  signal CARRIER_DETECT : STD_LOGIC;
  signal CGBAD : STD_LOGIC;
  signal CGBAD_REG1 : STD_LOGIC;
  signal CGBAD_REG2 : STD_LOGIC;
  signal CGBAD_REG3 : STD_LOGIC;
  signal C_HDR_REMOVED : STD_LOGIC;
  signal C_HDR_REMOVED_REG : STD_LOGIC;
  signal C_REG1 : STD_LOGIC;
  signal C_REG2 : STD_LOGIC;
  signal C_REG3 : STD_LOGIC;
  signal D0p0 : STD_LOGIC;
  signal D0p0_REG : STD_LOGIC;
  signal EOP : STD_LOGIC;
  signal EOP0 : STD_LOGIC;
  signal EOP_REG1 : STD_LOGIC;
  signal EOP_REG10 : STD_LOGIC;
  signal EXTEND0 : STD_LOGIC;
  signal EXTEND_ERR : STD_LOGIC;
  signal EXTEND_ERR0 : STD_LOGIC;
  signal EXTEND_REG1 : STD_LOGIC;
  signal EXTEND_REG2 : STD_LOGIC;
  signal EXTEND_REG3 : STD_LOGIC;
  signal EXT_ILLEGAL_K : STD_LOGIC;
  signal EXT_ILLEGAL_K0 : STD_LOGIC;
  signal EXT_ILLEGAL_K_REG1 : STD_LOGIC;
  signal EXT_ILLEGAL_K_REG2 : STD_LOGIC;
  signal FALSE_CARRIER : STD_LOGIC;
  signal FALSE_CARRIER0 : STD_LOGIC;
  signal FALSE_CARRIER_REG1 : STD_LOGIC;
  signal FALSE_CARRIER_REG2 : STD_LOGIC;
  signal FALSE_CARRIER_REG3 : STD_LOGIC;
  signal FALSE_DATA : STD_LOGIC;
  signal FALSE_DATA0 : STD_LOGIC;
  signal FALSE_K : STD_LOGIC;
  signal FALSE_K0 : STD_LOGIC;
  signal FALSE_NIT : STD_LOGIC;
  signal FALSE_NIT0 : STD_LOGIC;
  signal FROM_IDLE_D : STD_LOGIC;
  signal FROM_IDLE_D0 : STD_LOGIC;
  signal FROM_RX_CX : STD_LOGIC;
  signal FROM_RX_CX0 : STD_LOGIC;
  signal FROM_RX_K : STD_LOGIC;
  signal FROM_RX_K0 : STD_LOGIC;
  signal I : STD_LOGIC;
  signal I0 : STD_LOGIC;
  signal \^i350_in\ : STD_LOGIC;
  signal ILLEGAL_K : STD_LOGIC;
  signal ILLEGAL_K0 : STD_LOGIC;
  signal ILLEGAL_K_REG1 : STD_LOGIC;
  signal ILLEGAL_K_REG2 : STD_LOGIC;
  signal K23p7 : STD_LOGIC;
  signal K28p5 : STD_LOGIC;
  signal K28p5_REG1 : STD_LOGIC;
  signal K28p5_REG2 : STD_LOGIC;
  signal K29p7 : STD_LOGIC;
  signal R : STD_LOGIC;
  signal RUDI_C0 : STD_LOGIC;
  signal RUDI_I0 : STD_LOGIC;
  signal RXCHARISK_REG1 : STD_LOGIC;
  signal RXDATA_REG5 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal RX_CONFIG_VALID_INT : STD_LOGIC;
  signal RX_CONFIG_VALID_INT0 : STD_LOGIC;
  signal RX_DATA_ERROR : STD_LOGIC;
  signal RX_DATA_ERROR0 : STD_LOGIC;
  signal RX_DV0 : STD_LOGIC;
  signal RX_ER0 : STD_LOGIC;
  signal RX_INVALID0 : STD_LOGIC;
  signal R_REG1 : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0 : STD_LOGIC;
  signal S2 : STD_LOGIC;
  signal SOP : STD_LOGIC;
  signal SOP0 : STD_LOGIC;
  signal SOP_REG1 : STD_LOGIC;
  signal SOP_REG2 : STD_LOGIC;
  signal SOP_REG3 : STD_LOGIC;
  signal SYNC_STATUS_REG : STD_LOGIC;
  signal T : STD_LOGIC;
  signal T_REG1 : STD_LOGIC;
  signal T_REG2 : STD_LOGIC;
  signal WAIT_FOR_K : STD_LOGIC;
  signal \^gmii_rx_dv\ : STD_LOGIC;
  signal n_0_C_i_3 : STD_LOGIC;
  signal n_0_C_i_4 : STD_LOGIC;
  signal n_0_D0p0_REG_i_2 : STD_LOGIC;
  signal n_0_EOP_i_2 : STD_LOGIC;
  signal n_0_EXTEND_i_1 : STD_LOGIC;
  signal n_0_EXTEND_reg : STD_LOGIC;
  signal n_0_FALSE_CARRIER_i_1 : STD_LOGIC;
  signal n_0_FALSE_DATA_i_2 : STD_LOGIC;
  signal n_0_FALSE_DATA_i_3 : STD_LOGIC;
  signal n_0_FALSE_DATA_i_4 : STD_LOGIC;
  signal n_0_FALSE_K_i_2 : STD_LOGIC;
  signal n_0_FALSE_NIT_i_2 : STD_LOGIC;
  signal n_0_FALSE_NIT_i_3 : STD_LOGIC;
  signal n_0_FALSE_NIT_i_4 : STD_LOGIC;
  signal n_0_FALSE_NIT_i_5 : STD_LOGIC;
  signal n_0_FALSE_NIT_i_6 : STD_LOGIC;
  signal n_0_FALSE_NIT_i_7 : STD_LOGIC;
  signal n_0_FROM_RX_CX_i_2 : STD_LOGIC;
  signal \n_0_IDLE_REG_reg[0]\ : STD_LOGIC;
  signal \n_0_IDLE_REG_reg[2]\ : STD_LOGIC;
  signal n_0_I_REG_reg : STD_LOGIC;
  signal n_0_RECEIVE_i_1 : STD_LOGIC;
  signal n_0_RECEIVE_reg : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[0]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[1]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[2]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[3]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[4]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[5]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[6]_srl4\ : STD_LOGIC;
  signal \n_0_RXDATA_REG4_reg[7]_srl4\ : STD_LOGIC;
  signal \n_0_RXD[0]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[1]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[2]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[3]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[4]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[5]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[6]_i_1\ : STD_LOGIC;
  signal \n_0_RXD[7]_i_1\ : STD_LOGIC;
  signal n_0_RX_CONFIG_VALID_INT_i_2 : STD_LOGIC;
  signal \n_0_RX_CONFIG_VALID_REG_reg[0]\ : STD_LOGIC;
  signal \n_0_RX_CONFIG_VALID_REG_reg[3]\ : STD_LOGIC;
  signal n_0_RX_DATA_ERROR_i_2 : STD_LOGIC;
  signal n_0_RX_DATA_ERROR_i_3 : STD_LOGIC;
  signal n_0_RX_DATA_ERROR_i_4 : STD_LOGIC;
  signal n_0_RX_DV_i_1 : STD_LOGIC;
  signal n_0_RX_ER_i_2 : STD_LOGIC;
  signal n_0_RX_INVALID_i_1 : STD_LOGIC;
  signal n_0_S_i_2 : STD_LOGIC;
  signal n_0_WAIT_FOR_K_i_1 : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in2_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_52_in : STD_LOGIC;
  signal p_62_in : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of CGBAD_i_1 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of C_i_3 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of C_i_4 : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of D0p0_REG_i_2 : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of EOP_i_2 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of FALSE_DATA_i_3 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of FALSE_DATA_i_4 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of FALSE_DATA_i_5 : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of FALSE_K_i_2 : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of FALSE_NIT_i_3 : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of FALSE_NIT_i_7 : label is "soft_lutpair71";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \RXDATA_REG4_reg[0]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name : string;
  attribute srl_name of \RXDATA_REG4_reg[0]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[0]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[1]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[1]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[1]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[2]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[2]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[2]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[3]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[3]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[3]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[4]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[4]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[4]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[5]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[5]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[5]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[6]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[6]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[6]_srl4 ";
  attribute srl_bus_name of \RXDATA_REG4_reg[7]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg ";
  attribute srl_name of \RXDATA_REG4_reg[7]_srl4\ : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/RECEIVER/RXDATA_REG4_reg[7]_srl4 ";
  attribute SOFT_HLUTNM of \RXD[1]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \RXD[2]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \RXD[3]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \RXD[4]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \RXD[5]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \RXD[6]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \RXD[7]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of RX_CONFIG_VALID_INT_i_2 : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of RX_DATA_ERROR_i_3 : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of RX_ER_i_2 : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of R_i_2 : label is "soft_lutpair80";
begin
  I350_in <= \^i350_in\;
  gmii_rx_dv <= \^gmii_rx_dv\;
  status_vector(2 downto 0) <= \^status_vector\(2 downto 0);
CGBAD_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => CGBAD,
      Q => CGBAD_REG1,
      R => \<const0>\
    );
CGBAD_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => CGBAD_REG1,
      Q => CGBAD_REG2,
      R => \<const0>\
    );
CGBAD_REG3_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => CGBAD_REG2,
      Q => CGBAD_REG3,
      R => I2
    );
CGBAD_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => RXNOTINTABLE_INT,
      I1 => D_0,
      I2 => p_0_in,
      O => S2
    );
CGBAD_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => S2,
      Q => CGBAD,
      R => I2
    );
C_HDR_REMOVED_REG_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => I6,
      I1 => I7,
      I2 => C_REG2,
      O => C_HDR_REMOVED
    );
C_HDR_REMOVED_REG_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => C_HDR_REMOVED,
      Q => C_HDR_REMOVED_REG,
      R => \<const0>\
    );
C_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => C,
      Q => C_REG1,
      R => \<const0>\
    );
C_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => C_REG1,
      Q => C_REG2,
      R => \<const0>\
    );
C_REG3_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => C_REG2,
      Q => C_REG3,
      R => \<const0>\
    );
C_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => \^i350_in\,
      I1 => K28p5_REG1,
      O => C0
    );
C_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000083000000800"
    )
    port map (
      I0 => n_0_C_i_3,
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(3),
      I5 => n_0_C_i_4,
      O => \^i350_in\
    );
C_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => Q(6),
      I1 => Q(5),
      I2 => Q(7),
      I3 => I3,
      I4 => Q(4),
      O => n_0_C_i_3
    );
C_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => Q(7),
      I1 => Q(6),
      I2 => Q(5),
      I3 => Q(4),
      I4 => I3,
      O => n_0_C_i_4
    );
C_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => C0,
      Q => C,
      R => \<const0>\
    );
D0p0_REG_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => n_0_D0p0_REG_i_2,
      I3 => Q(7),
      I4 => Q(3),
      I5 => Q(2),
      O => D0p0
    );
D0p0_REG_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Q(6),
      I1 => Q(4),
      I2 => Q(5),
      I3 => I3,
      O => n_0_D0p0_REG_i_2
    );
D0p0_REG_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => D0p0,
      Q => D0p0_REG,
      R => \<const0>\
    );
EOP_REG1_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => n_0_EXTEND_reg,
      I1 => EXTEND_REG1,
      I2 => EOP,
      O => EOP_REG10
    );
EOP_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => EOP_REG10,
      Q => EOP_REG1,
      R => I2
    );
EOP_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFF8888888"
    )
    port map (
      I0 => n_0_I_REG_reg,
      I1 => K28p5_REG1,
      I2 => D0p0_REG,
      I3 => C_REG1,
      I4 => RXEVEN,
      I5 => n_0_EOP_i_2,
      O => EOP0
    );
EOP_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808080"
    )
    port map (
      I0 => T_REG2,
      I1 => R_REG1,
      I2 => R,
      I3 => K28p5_REG1,
      I4 => RXEVEN,
      O => n_0_EOP_i_2
    );
EOP_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => EOP0,
      Q => EOP,
      R => I2
    );
EXTEND_ERR_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => EXTEND_REG3,
      I1 => CGBAD_REG3,
      I2 => EXT_ILLEGAL_K_REG2,
      O => EXTEND_ERR0
    );
EXTEND_ERR_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => EXTEND_ERR0,
      Q => EXTEND_ERR,
      R => SYNC_STATUS_REG0
    );
EXTEND_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_EXTEND_reg,
      Q => EXTEND_REG1,
      R => \<const0>\
    );
EXTEND_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => EXTEND_REG1,
      Q => EXTEND_REG2,
      R => \<const0>\
    );
EXTEND_REG3_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => EXTEND_REG2,
      Q => EXTEND_REG3,
      R => \<const0>\
    );
EXTEND_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F00070F0F0000"
    )
    port map (
      I0 => RXEVEN,
      I1 => K28p5_REG1,
      I2 => SYNC_STATUS_REG0,
      I3 => S,
      I4 => EXTEND0,
      I5 => n_0_EXTEND_reg,
      O => n_0_EXTEND_i_1
    );
EXTEND_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => R_REG1,
      I1 => R,
      I2 => n_0_RECEIVE_reg,
      O => EXTEND0
    );
EXTEND_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_EXTEND_i_1,
      Q => n_0_EXTEND_reg,
      R => \<const0>\
    );
EXT_ILLEGAL_K_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => EXT_ILLEGAL_K,
      Q => EXT_ILLEGAL_K_REG1,
      R => SYNC_STATUS_REG0
    );
EXT_ILLEGAL_K_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => EXT_ILLEGAL_K_REG1,
      Q => EXT_ILLEGAL_K_REG2,
      R => SYNC_STATUS_REG0
    );
EXT_ILLEGAL_K_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040404"
    )
    port map (
      I0 => S,
      I1 => EXTEND_REG1,
      I2 => R,
      I3 => K28p5_REG1,
      I4 => RXEVEN,
      O => EXT_ILLEGAL_K0
    );
EXT_ILLEGAL_K_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => EXT_ILLEGAL_K0,
      Q => EXT_ILLEGAL_K,
      R => SYNC_STATUS_REG0
    );
FALSE_CARRIER_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => FALSE_CARRIER,
      Q => FALSE_CARRIER_REG1,
      R => \<const0>\
    );
FALSE_CARRIER_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => FALSE_CARRIER_REG1,
      Q => FALSE_CARRIER_REG2,
      R => \<const0>\
    );
FALSE_CARRIER_REG3_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => FALSE_CARRIER_REG2,
      Q => FALSE_CARRIER_REG3,
      R => SYNC_STATUS_REG0
    );
FALSE_CARRIER_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444044444440000"
    )
    port map (
      I0 => I2,
      I1 => p_55_in,
      I2 => K28p5_REG1,
      I3 => RXEVEN,
      I4 => FALSE_CARRIER0,
      I5 => FALSE_CARRIER,
      O => n_0_FALSE_CARRIER_i_1
    );
FALSE_CARRIER_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00200000"
    )
    port map (
      I0 => p_55_in,
      I1 => K28p5_REG1,
      I2 => n_0_I_REG_reg,
      I3 => S,
      I4 => CARRIER_DETECT,
      O => FALSE_CARRIER0
    );
FALSE_CARRIER_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_FALSE_CARRIER_i_1,
      Q => FALSE_CARRIER,
      R => \<const0>\
    );
FALSE_DATA_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => I3,
      I1 => RXNOTINTABLE_INT,
      I2 => n_0_FALSE_DATA_i_2,
      O => FALSE_DATA0
    );
FALSE_DATA_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF10101070707070"
    )
    port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => n_0_FALSE_DATA_i_3,
      I3 => n_0_FALSE_DATA_i_4,
      I4 => p_52_in,
      I5 => Q(2),
      O => n_0_FALSE_DATA_i_2
    );
FALSE_DATA_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
    port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => Q(7),
      I3 => Q(6),
      I4 => Q(5),
      O => n_0_FALSE_DATA_i_3
    );
FALSE_DATA_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"100E"
    )
    port map (
      I0 => Q(4),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      O => n_0_FALSE_DATA_i_4
    );
FALSE_DATA_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Q(7),
      I1 => Q(5),
      I2 => Q(6),
      O => p_52_in
    );
FALSE_DATA_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => FALSE_DATA0,
      Q => FALSE_DATA,
      R => I2
    );
FALSE_K_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000400000000"
    )
    port map (
      I0 => RXNOTINTABLE_INT,
      I1 => I3,
      I2 => n_0_FALSE_K_i_2,
      I3 => Q(5),
      I4 => Q(6),
      I5 => Q(7),
      O => FALSE_K0
    );
FALSE_K_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFFFFFF"
    )
    port map (
      I0 => Q(4),
      I1 => Q(0),
      I2 => Q(1),
      I3 => Q(2),
      I4 => Q(3),
      O => n_0_FALSE_K_i_2
    );
FALSE_K_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => FALSE_K0,
      Q => FALSE_K,
      R => I2
    );
FALSE_NIT_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A8A8AAA8AAA8A8A8"
    )
    port map (
      I0 => RXNOTINTABLE_INT,
      I1 => n_0_FALSE_NIT_i_2,
      I2 => n_0_FALSE_NIT_i_3,
      I3 => n_0_FALSE_NIT_i_4,
      I4 => D_0,
      I5 => Q(7),
      O => FALSE_NIT0
    );
FALSE_NIT_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6000000000000000"
    )
    port map (
      I0 => Q(0),
      I1 => Q(1),
      I2 => n_0_D0p0_REG_i_2,
      I3 => n_0_FALSE_NIT_i_5,
      I4 => Q(7),
      I5 => D_0,
      O => n_0_FALSE_NIT_i_2
    );
FALSE_NIT_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08800000"
    )
    port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => n_0_FALSE_NIT_i_6,
      O => n_0_FALSE_NIT_i_3
    );
FALSE_NIT_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4400000344000000"
    )
    port map (
      I0 => n_0_FALSE_K_i_2,
      I1 => Q(6),
      I2 => Q(4),
      I3 => Q(5),
      I4 => I3,
      I5 => n_0_FALSE_NIT_i_7,
      O => n_0_FALSE_NIT_i_4
    );
FALSE_NIT_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => Q(3),
      I1 => Q(2),
      O => n_0_FALSE_NIT_i_5
    );
FALSE_NIT_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => Q(5),
      I1 => Q(6),
      I2 => I3,
      I3 => D_0,
      I4 => Q(4),
      I5 => Q(7),
      O => n_0_FALSE_NIT_i_6
    );
FALSE_NIT_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => Q(2),
      I1 => Q(3),
      I2 => Q(0),
      I3 => Q(1),
      O => n_0_FALSE_NIT_i_7
    );
FALSE_NIT_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => FALSE_NIT0,
      Q => FALSE_NIT,
      R => I2
    );
FROM_IDLE_D_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => WAIT_FOR_K,
      I1 => n_0_I_REG_reg,
      I2 => K28p5_REG1,
      I3 => p_55_in,
      O => FROM_IDLE_D0
    );
FROM_IDLE_D_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => FROM_IDLE_D0,
      Q => FROM_IDLE_D,
      R => SYNC_STATUS_REG0
    );
FROM_RX_CX_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EECEEEEE"
    )
    port map (
      I0 => C_REG3,
      I1 => n_0_FROM_RX_CX_i_2,
      I2 => K28p5_REG1,
      I3 => CGBAD,
      I4 => RXEVEN,
      O => FROM_RX_CX0
    );
FROM_RX_CX_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
    port map (
      I0 => C_REG2,
      I1 => C_REG1,
      I2 => CGBAD,
      I3 => RXCHARISK_REG1,
      O => n_0_FROM_RX_CX_i_2
    );
FROM_RX_CX_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => FROM_RX_CX0,
      Q => FROM_RX_CX,
      R => SYNC_STATUS_REG0
    );
FROM_RX_K_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4440"
    )
    port map (
      I0 => p_55_in,
      I1 => K28p5_REG2,
      I2 => RXCHARISK_REG1,
      I3 => CGBAD,
      O => FROM_RX_K0
    );
FROM_RX_K_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => FROM_RX_K0,
      Q => FROM_RX_K,
      R => SYNC_STATUS_REG0
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\IDLE_REG_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_I_REG_reg,
      Q => \n_0_IDLE_REG_reg[0]\,
      R => I2
    );
\IDLE_REG_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_IDLE_REG_reg[0]\,
      Q => p_0_in1_in,
      R => I2
    );
\IDLE_REG_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => p_0_in1_in,
      Q => \n_0_IDLE_REG_reg[2]\,
      R => I2
    );
ILLEGAL_K_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => ILLEGAL_K,
      Q => ILLEGAL_K_REG1,
      R => SYNC_STATUS_REG0
    );
ILLEGAL_K_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => ILLEGAL_K_REG1,
      Q => ILLEGAL_K_REG2,
      R => SYNC_STATUS_REG0
    );
ILLEGAL_K_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => R,
      I1 => RXCHARISK_REG1,
      I2 => K28p5_REG1,
      I3 => T,
      O => ILLEGAL_K0
    );
ILLEGAL_K_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => ILLEGAL_K0,
      Q => ILLEGAL_K,
      R => SYNC_STATUS_REG0
    );
I_REG_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => I,
      Q => n_0_I_REG_reg,
      R => \<const0>\
    );
I_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F0F000F02020000"
    )
    port map (
      I0 => n_0_I_REG_reg,
      I1 => CARRIER_DETECT,
      I2 => I4,
      I3 => I3,
      I4 => p_55_in,
      I5 => K28p5_REG1,
      O => I0
    );
I_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => FALSE_K,
      I1 => FALSE_DATA,
      I2 => FALSE_NIT,
      O => CARRIER_DETECT
    );
I_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => I0,
      Q => I,
      R => \<const0>\
    );
K28p5_REG1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => I3,
      I1 => Q(7),
      I2 => Q(5),
      I3 => Q(6),
      I4 => n_0_FALSE_K_i_2,
      O => K28p5
    );
K28p5_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => K28p5,
      Q => K28p5_REG1,
      R => \<const0>\
    );
K28p5_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => K28p5_REG1,
      Q => K28p5_REG2,
      R => \<const0>\
    );
RECEIVE_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44044400"
    )
    port map (
      I0 => I2,
      I1 => p_55_in,
      I2 => EOP,
      I3 => SOP_REG2,
      I4 => n_0_RECEIVE_reg,
      O => n_0_RECEIVE_i_1
    );
RECEIVE_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_RECEIVE_i_1,
      Q => n_0_RECEIVE_reg,
      R => \<const0>\
    );
RUDI_C_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => p_1_in,
      I1 => \n_0_RX_CONFIG_VALID_REG_reg[0]\,
      I2 => \n_0_RX_CONFIG_VALID_REG_reg[3]\,
      I3 => p_0_in2_in,
      O => RUDI_C0
    );
RUDI_C_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => RUDI_C0,
      Q => \^status_vector\(0),
      R => I2
    );
RUDI_I_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_IDLE_REG_reg[2]\,
      I1 => p_0_in1_in,
      O => RUDI_I0
    );
RUDI_I_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => RUDI_I0,
      Q => \^status_vector\(1),
      R => I2
    );
RXCHARISK_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => I3,
      Q => RXCHARISK_REG1,
      R => \<const0>\
    );
\RXDATA_REG4_reg[0]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => I1,
      D => Q(0),
      Q => \n_0_RXDATA_REG4_reg[0]_srl4\
    );
\RXDATA_REG4_reg[1]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => I1,
      D => Q(1),
      Q => \n_0_RXDATA_REG4_reg[1]_srl4\
    );
\RXDATA_REG4_reg[2]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => I1,
      D => Q(2),
      Q => \n_0_RXDATA_REG4_reg[2]_srl4\
    );
\RXDATA_REG4_reg[3]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => I1,
      D => Q(3),
      Q => \n_0_RXDATA_REG4_reg[3]_srl4\
    );
\RXDATA_REG4_reg[4]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => I1,
      D => Q(4),
      Q => \n_0_RXDATA_REG4_reg[4]_srl4\
    );
\RXDATA_REG4_reg[5]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => I1,
      D => Q(5),
      Q => \n_0_RXDATA_REG4_reg[5]_srl4\
    );
\RXDATA_REG4_reg[6]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => I1,
      D => Q(6),
      Q => \n_0_RXDATA_REG4_reg[6]_srl4\
    );
\RXDATA_REG4_reg[7]_srl4\: unisim.vcomponents.SRL16E
    port map (
      A0 => \<const1>\,
      A1 => \<const1>\,
      A2 => \<const0>\,
      A3 => \<const0>\,
      CE => \<const1>\,
      CLK => I1,
      D => Q(7),
      Q => \n_0_RXDATA_REG4_reg[7]_srl4\
    );
\RXDATA_REG5_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXDATA_REG4_reg[0]_srl4\,
      Q => RXDATA_REG5(0),
      R => \<const0>\
    );
\RXDATA_REG5_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXDATA_REG4_reg[1]_srl4\,
      Q => RXDATA_REG5(1),
      R => \<const0>\
    );
\RXDATA_REG5_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXDATA_REG4_reg[2]_srl4\,
      Q => RXDATA_REG5(2),
      R => \<const0>\
    );
\RXDATA_REG5_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXDATA_REG4_reg[3]_srl4\,
      Q => RXDATA_REG5(3),
      R => \<const0>\
    );
\RXDATA_REG5_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXDATA_REG4_reg[4]_srl4\,
      Q => RXDATA_REG5(4),
      R => \<const0>\
    );
\RXDATA_REG5_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXDATA_REG4_reg[5]_srl4\,
      Q => RXDATA_REG5(5),
      R => \<const0>\
    );
\RXDATA_REG5_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXDATA_REG4_reg[6]_srl4\,
      Q => RXDATA_REG5(6),
      R => \<const0>\
    );
\RXDATA_REG5_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXDATA_REG4_reg[7]_srl4\,
      Q => RXDATA_REG5(7),
      R => \<const0>\
    );
\RXD[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AFAE"
    )
    port map (
      I0 => SOP_REG3,
      I1 => EXTEND_REG1,
      I2 => FALSE_CARRIER_REG3,
      I3 => RXDATA_REG5(0),
      O => \n_0_RXD[0]_i_1\
    );
\RXD[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
    port map (
      I0 => RXDATA_REG5(1),
      I1 => EXTEND_REG1,
      I2 => FALSE_CARRIER_REG3,
      I3 => SOP_REG3,
      O => \n_0_RXD[1]_i_1\
    );
\RXD[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => SOP_REG3,
      I1 => EXTEND_REG1,
      I2 => FALSE_CARRIER_REG3,
      I3 => RXDATA_REG5(2),
      O => \n_0_RXD[2]_i_1\
    );
\RXD[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
    port map (
      I0 => RXDATA_REG5(3),
      I1 => EXTEND_REG1,
      I2 => FALSE_CARRIER_REG3,
      I3 => SOP_REG3,
      O => \n_0_RXD[3]_i_1\
    );
\RXD[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFAEAAAE"
    )
    port map (
      I0 => SOP_REG3,
      I1 => RXDATA_REG5(4),
      I2 => FALSE_CARRIER_REG3,
      I3 => EXTEND_REG1,
      I4 => EXTEND_ERR,
      O => \n_0_RXD[4]_i_1\
    );
\RXD[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => RXDATA_REG5(5),
      I1 => SOP_REG3,
      I2 => EXTEND_REG1,
      I3 => FALSE_CARRIER_REG3,
      O => \n_0_RXD[5]_i_1\
    );
\RXD[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF10"
    )
    port map (
      I0 => EXTEND_REG1,
      I1 => FALSE_CARRIER_REG3,
      I2 => RXDATA_REG5(6),
      I3 => SOP_REG3,
      O => \n_0_RXD[6]_i_1\
    );
\RXD[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => RXDATA_REG5(7),
      I1 => SOP_REG3,
      I2 => EXTEND_REG1,
      I3 => FALSE_CARRIER_REG3,
      O => \n_0_RXD[7]_i_1\
    );
\RXD_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXD[0]_i_1\,
      Q => gmii_rxd(0),
      R => SR(0)
    );
\RXD_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXD[1]_i_1\,
      Q => gmii_rxd(1),
      R => SR(0)
    );
\RXD_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXD[2]_i_1\,
      Q => gmii_rxd(2),
      R => SR(0)
    );
\RXD_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXD[3]_i_1\,
      Q => gmii_rxd(3),
      R => SR(0)
    );
\RXD_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXD[4]_i_1\,
      Q => gmii_rxd(4),
      R => SR(0)
    );
\RXD_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXD[5]_i_1\,
      Q => gmii_rxd(5),
      R => SR(0)
    );
\RXD_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXD[6]_i_1\,
      Q => gmii_rxd(6),
      R => SR(0)
    );
\RXD_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RXD[7]_i_1\,
      Q => gmii_rxd(7),
      R => SR(0)
    );
RX_CONFIG_VALID_INT_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
    port map (
      I0 => CGBAD,
      I1 => RXCHARISK_REG1,
      I2 => I3,
      I3 => p_55_in,
      I4 => n_0_RX_CONFIG_VALID_INT_i_2,
      O => RX_CONFIG_VALID_INT0
    );
RX_CONFIG_VALID_INT_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF1"
    )
    port map (
      I0 => C_REG1,
      I1 => C_HDR_REMOVED_REG,
      I2 => p_0_in,
      I3 => D_0,
      I4 => RXNOTINTABLE_INT,
      O => n_0_RX_CONFIG_VALID_INT_i_2
    );
RX_CONFIG_VALID_INT_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => RX_CONFIG_VALID_INT0,
      Q => RX_CONFIG_VALID_INT,
      R => I2
    );
\RX_CONFIG_VALID_REG_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => RX_CONFIG_VALID_INT,
      Q => \n_0_RX_CONFIG_VALID_REG_reg[0]\,
      R => I2
    );
\RX_CONFIG_VALID_REG_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_RX_CONFIG_VALID_REG_reg[0]\,
      Q => p_0_in2_in,
      R => I2
    );
\RX_CONFIG_VALID_REG_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => p_0_in2_in,
      Q => p_1_in,
      R => I2
    );
\RX_CONFIG_VALID_REG_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => p_1_in,
      Q => \n_0_RX_CONFIG_VALID_REG_reg[3]\,
      R => I2
    );
RX_DATA_ERROR_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8880888088888880"
    )
    port map (
      I0 => n_0_RECEIVE_reg,
      I1 => n_0_RX_DATA_ERROR_i_2,
      I2 => n_0_RX_DATA_ERROR_i_3,
      I3 => n_0_RX_DATA_ERROR_i_4,
      I4 => R,
      I5 => T_REG1,
      O => RX_DATA_ERROR0
    );
RX_DATA_ERROR_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
    port map (
      I0 => n_0_I_REG_reg,
      I1 => R_REG1,
      I2 => C_REG1,
      I3 => CGBAD_REG3,
      I4 => n_0_RX_DATA_ERROR_i_3,
      I5 => ILLEGAL_K_REG2,
      O => n_0_RX_DATA_ERROR_i_2
    );
RX_DATA_ERROR_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => T_REG2,
      I1 => R,
      I2 => K28p5_REG1,
      I3 => RXEVEN,
      O => n_0_RX_DATA_ERROR_i_3
    );
RX_DATA_ERROR_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => CGBAD_REG3,
      I1 => ILLEGAL_K_REG2,
      I2 => K28p5_REG1,
      I3 => n_0_I_REG_reg,
      I4 => C_REG1,
      I5 => T_REG2,
      O => n_0_RX_DATA_ERROR_i_4
    );
RX_DATA_ERROR_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => RX_DATA_ERROR0,
      Q => RX_DATA_ERROR,
      R => SYNC_STATUS_REG0
    );
RX_DV_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF000E00FF0000"
    )
    port map (
      I0 => p_55_in,
      I1 => n_0_RECEIVE_reg,
      I2 => EOP_REG1,
      I3 => I2,
      I4 => RX_DV0,
      I5 => \^gmii_rx_dv\,
      O => n_0_RX_DV_i_1
    );
RX_DV_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => SR(0),
      I1 => SOP_REG3,
      I2 => I5,
      I3 => p_55_in,
      O => RX_DV0
    );
RX_DV_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_RX_DV_i_1,
      Q => \^gmii_rx_dv\,
      R => \<const0>\
    );
RX_ER_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1110111011100010"
    )
    port map (
      I0 => SR(0),
      I1 => I5,
      I2 => n_0_RECEIVE_reg,
      I3 => p_55_in,
      I4 => RX_DATA_ERROR,
      I5 => n_0_RX_ER_i_2,
      O => RX_ER0
    );
RX_ER_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => EXTEND_REG1,
      I1 => FALSE_CARRIER_REG3,
      O => n_0_RX_ER_i_2
    );
RX_ER_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => RX_ER0,
      Q => gmii_rx_er,
      R => I2
    );
RX_INVALID_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44044400"
    )
    port map (
      I0 => I2,
      I1 => p_55_in,
      I2 => K28p5_REG1,
      I3 => RX_INVALID0,
      I4 => \^status_vector\(2),
      O => n_0_RX_INVALID_i_1
    );
RX_INVALID_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F5F4"
    )
    port map (
      I0 => p_55_in,
      I1 => FROM_RX_K,
      I2 => FROM_RX_CX,
      I3 => FROM_IDLE_D,
      O => RX_INVALID0
    );
RX_INVALID_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_RX_INVALID_i_1,
      Q => \^status_vector\(2),
      R => \<const0>\
    );
R_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => R,
      Q => R_REG1,
      R => \<const0>\
    );
R_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
    port map (
      I0 => I3,
      I1 => Q(3),
      I2 => p_62_in,
      I3 => Q(1),
      I4 => Q(0),
      I5 => Q(2),
      O => K23p7
    );
R_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Q(4),
      I1 => Q(7),
      I2 => Q(5),
      I3 => Q(6),
      O => p_62_in
    );
R_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => K23p7,
      Q => R,
      R => \<const0>\
    );
SOP_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => SOP,
      Q => SOP_REG1,
      R => \<const0>\
    );
SOP_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => SOP_REG1,
      Q => SOP_REG2,
      R => \<const0>\
    );
SOP_REG3_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => SOP_REG2,
      Q => SOP_REG3,
      R => \<const0>\
    );
SOP_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40404000"
    )
    port map (
      I0 => WAIT_FOR_K,
      I1 => p_55_in,
      I2 => S,
      I3 => n_0_EXTEND_reg,
      I4 => n_0_I_REG_reg,
      O => SOP0
    );
SOP_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => SOP0,
      Q => SOP,
      R => I2
    );
SYNC_STATUS_REG_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \<const1>\,
      Q => SYNC_STATUS_REG,
      R => SYNC_STATUS_REG0
    );
S_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0400000000000000"
    )
    port map (
      I0 => S2,
      I1 => n_0_S_i_2,
      I2 => Q(2),
      I3 => I3,
      I4 => Q(3),
      I5 => p_62_in,
      O => S0
    );
S_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Q(1),
      I1 => Q(0),
      O => n_0_S_i_2
    );
S_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => S0,
      Q => S,
      R => \<const0>\
    );
T_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => T,
      Q => T_REG1,
      R => \<const0>\
    );
T_REG2_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => T_REG1,
      Q => T_REG2,
      R => \<const0>\
    );
T_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
    port map (
      I0 => Q(3),
      I1 => Q(1),
      I2 => p_62_in,
      I3 => I3,
      I4 => Q(0),
      I5 => Q(2),
      O => K29p7
    );
T_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => K29p7,
      Q => T,
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
WAIT_FOR_K_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444400004444"
    )
    port map (
      I0 => I2,
      I1 => p_55_in,
      I2 => K28p5_REG1,
      I3 => RXEVEN,
      I4 => SYNC_STATUS_REG,
      I5 => WAIT_FOR_K,
      O => n_0_WAIT_FOR_K_i_1
    );
WAIT_FOR_K_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_WAIT_FOR_K_i_1,
      Q => WAIT_FOR_K,
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity gig_ethernet_pcs_pma_0SYNCHRONISE is
  port (
    RXEVEN : out STD_LOGIC;
    p_55_in : out STD_LOGIC;
    SYNC_STATUS_REG0 : out STD_LOGIC;
    O1 : out STD_LOGIC;
    encommaalign : out STD_LOGIC;
    SIGNAL_DETECT_MOD : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    I3 : in STD_LOGIC;
    I4 : in STD_LOGIC;
    LOOPBACK_INT : in STD_LOGIC;
    D_0 : in STD_LOGIC;
    RXNOTINTABLE_INT : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    I350_in : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0SYNCHRONISE;

architecture STRUCTURE of gig_ethernet_pcs_pma_0SYNCHRONISE is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal CGBAD : STD_LOGIC;
  signal GOOD_CGS : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^rxeven\ : STD_LOGIC;
  signal SIGNAL_DETECT_REG : STD_LOGIC;
  signal STATE_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal SYNC_STATUS0 : STD_LOGIC;
  signal \^encommaalign\ : STD_LOGIC;
  signal n_0_ENCOMMAALIGN_i_1 : STD_LOGIC;
  signal n_0_EVEN_i_1 : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_11\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_12\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_13\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_14\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_15\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[0]_i_9\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[10]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[11]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_11\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_12\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_13\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_14\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_15\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_16\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_17\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_18\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_19\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_20\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_21\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_22\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[12]_i_9\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[2]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[3]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[4]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[4]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[5]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[6]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[6]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[7]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[8]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE[9]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[0]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[10]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[11]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[12]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[1]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[2]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[3]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[4]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[5]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[6]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[6]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[7]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[8]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_STATE_reg[9]\ : STD_LOGIC;
  signal \n_0_GOOD_CGS[0]_i_1\ : STD_LOGIC;
  signal \n_0_GOOD_CGS[1]_i_1\ : STD_LOGIC;
  signal \n_0_GOOD_CGS[1]_i_2\ : STD_LOGIC;
  signal n_0_SYNC_STATUS_i_1 : STD_LOGIC;
  signal n_0_SYNC_STATUS_i_2 : STD_LOGIC;
  signal \^p_55_in\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of ENCOMMAALIGN_i_1 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of EVEN_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[0]_i_10\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[0]_i_11\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[0]_i_14\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[0]_i_15\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[0]_i_5\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[11]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[12]_i_10\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[12]_i_11\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[12]_i_12\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[12]_i_14\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[12]_i_15\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[12]_i_16\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[12]_i_19\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[12]_i_8\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[2]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \FSM_onehot_STATE[4]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \GOOD_CGS[0]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \GOOD_CGS[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of SYNC_STATUS_REG_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of SYNC_STATUS_i_1 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of SYNC_STATUS_i_4 : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of SYNC_STATUS_i_5 : label is "soft_lutpair86";
begin
  RXEVEN <= \^rxeven\;
  encommaalign <= \^encommaalign\;
  p_55_in <= \^p_55_in\;
ENCOMMAALIGN_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => \^encommaalign\,
      I1 => n_0_SYNC_STATUS_i_2,
      I2 => SYNC_STATUS0,
      O => n_0_ENCOMMAALIGN_i_1
    );
ENCOMMAALIGN_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_ENCOMMAALIGN_i_1,
      Q => \^encommaalign\,
      R => \<const0>\
    );
EVEN_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"4F"
    )
    port map (
      I0 => \^p_55_in\,
      I1 => I4,
      I2 => \^rxeven\,
      O => n_0_EVEN_i_1
    );
EVEN_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_EVEN_i_1,
      Q => \^rxeven\,
      R => I2
    );
\FSM_onehot_STATE[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFE540000FE54"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I1 => \n_0_FSM_onehot_STATE[0]_i_2\,
      I2 => \n_0_FSM_onehot_STATE[0]_i_3\,
      I3 => \n_0_FSM_onehot_STATE[0]_i_4\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_5\,
      I5 => \n_0_FSM_onehot_STATE[0]_i_5\,
      O => \n_0_FSM_onehot_STATE[0]_i_1\
    );
\FSM_onehot_STATE[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_20\,
      I1 => \n_0_FSM_onehot_STATE_reg[0]\,
      I2 => \n_0_FSM_onehot_STATE_reg[1]\,
      O => \n_0_FSM_onehot_STATE[0]_i_10\
    );
\FSM_onehot_STATE[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0FFFDFF"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_19\,
      I1 => \n_0_FSM_onehot_STATE_reg[1]\,
      I2 => \n_0_FSM_onehot_STATE_reg[0]\,
      I3 => \n_0_FSM_onehot_STATE[12]_i_20\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_18\,
      O => \n_0_FSM_onehot_STATE[0]_i_11\
    );
\FSM_onehot_STATE[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_11\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_12\,
      I2 => \n_0_FSM_onehot_STATE_reg[12]\,
      I3 => \n_0_FSM_onehot_STATE_reg[1]\,
      I4 => \n_0_FSM_onehot_STATE_reg[0]\,
      I5 => \n_0_FSM_onehot_STATE_reg[2]\,
      O => \n_0_FSM_onehot_STATE[0]_i_12\
    );
\FSM_onehot_STATE[0]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_9\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_11\,
      I2 => \n_0_FSM_onehot_STATE[12]_i_12\,
      I3 => \n_0_FSM_onehot_STATE_reg[12]\,
      I4 => \n_0_FSM_onehot_STATE_reg[1]\,
      I5 => \n_0_FSM_onehot_STATE_reg[0]\,
      O => \n_0_FSM_onehot_STATE[0]_i_13\
    );
\FSM_onehot_STATE[0]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[5]\,
      I1 => \n_0_FSM_onehot_STATE_reg[4]\,
      I2 => \n_0_FSM_onehot_STATE_reg[9]\,
      I3 => \n_0_FSM_onehot_STATE_reg[8]\,
      O => \n_0_FSM_onehot_STATE[0]_i_14\
    );
\FSM_onehot_STATE[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[9]\,
      I1 => \n_0_FSM_onehot_STATE_reg[11]\,
      O => \n_0_FSM_onehot_STATE[0]_i_15\
    );
\FSM_onehot_STATE[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I1 => CGBAD,
      I2 => I3,
      O => \n_0_FSM_onehot_STATE[0]_i_2\
    );
\FSM_onehot_STATE[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AB00AB00AB"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[0]_i_6\,
      I1 => \n_0_FSM_onehot_STATE[0]_i_7\,
      I2 => \n_0_FSM_onehot_STATE[0]_i_8\,
      I3 => \n_0_FSM_onehot_STATE[0]_i_9\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_19\,
      I5 => \n_0_FSM_onehot_STATE[0]_i_10\,
      O => \n_0_FSM_onehot_STATE[0]_i_3\
    );
\FSM_onehot_STATE[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000003F3F1500"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[0]_i_11\,
      I1 => \n_0_FSM_onehot_STATE[0]_i_12\,
      I2 => \n_0_FSM_onehot_STATE[12]_i_10\,
      I3 => I3,
      I4 => CGBAD,
      I5 => \n_0_FSM_onehot_STATE[0]_i_13\,
      O => \n_0_FSM_onehot_STATE[0]_i_4\
    );
\FSM_onehot_STATE[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F080"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I2 => CGBAD,
      I3 => \n_0_FSM_onehot_STATE[12]_i_4\,
      O => \n_0_FSM_onehot_STATE[0]_i_5\
    );
\FSM_onehot_STATE[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C0C0400000000000"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[2]\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_13\,
      I2 => \n_0_FSM_onehot_STATE[0]_i_14\,
      I3 => \n_0_FSM_onehot_STATE[12]_i_10\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_9\,
      I5 => CGBAD,
      O => \n_0_FSM_onehot_STATE[0]_i_6\
    );
\FSM_onehot_STATE[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[2]\,
      I1 => \n_0_FSM_onehot_STATE_reg[0]\,
      I2 => \n_0_FSM_onehot_STATE_reg[1]\,
      I3 => \n_0_FSM_onehot_STATE_reg[12]\,
      I4 => \n_0_FSM_onehot_STATE[0]_i_14\,
      I5 => \n_0_FSM_onehot_STATE[12]_i_10\,
      O => \n_0_FSM_onehot_STATE[0]_i_7\
    );
\FSM_onehot_STATE[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF01000000"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[0]\,
      I1 => \n_0_FSM_onehot_STATE_reg[1]\,
      I2 => \n_0_FSM_onehot_STATE_reg[12]\,
      I3 => \n_0_FSM_onehot_STATE[0]_i_14\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_9\,
      I5 => I4,
      O => \n_0_FSM_onehot_STATE[0]_i_8\
    );
\FSM_onehot_STATE[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[0]_i_15\,
      I1 => \n_0_FSM_onehot_STATE_reg[7]\,
      I2 => \n_0_FSM_onehot_STATE_reg[1]\,
      I3 => \n_0_FSM_onehot_STATE[12]_i_21\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_20\,
      I5 => \n_0_FSM_onehot_STATE_reg[0]\,
      O => \n_0_FSM_onehot_STATE[0]_i_9\
    );
\FSM_onehot_STATE[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000222000"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_5\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I2 => \n_0_FSM_onehot_STATE[12]_i_7\,
      I3 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I5 => CGBAD,
      O => \n_0_FSM_onehot_STATE[10]_i_1\
    );
\FSM_onehot_STATE[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02200000"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_5\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I2 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I3 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I4 => CGBAD,
      O => \n_0_FSM_onehot_STATE[11]_i_1\
    );
\FSM_onehot_STATE[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => LOOPBACK_INT,
      I1 => SIGNAL_DETECT_REG,
      I2 => I2,
      O => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE[12]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[11]\,
      I1 => \n_0_FSM_onehot_STATE_reg[10]\,
      I2 => \n_0_FSM_onehot_STATE_reg[7]\,
      I3 => \n_0_FSM_onehot_STATE_reg[6]\,
      I4 => \n_0_FSM_onehot_STATE_reg[3]\,
      O => \n_0_FSM_onehot_STATE[12]_i_10\
    );
\FSM_onehot_STATE[12]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[4]\,
      I1 => \n_0_FSM_onehot_STATE_reg[5]\,
      O => \n_0_FSM_onehot_STATE[12]_i_11\
    );
\FSM_onehot_STATE[12]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[8]\,
      I1 => \n_0_FSM_onehot_STATE_reg[9]\,
      O => \n_0_FSM_onehot_STATE[12]_i_12\
    );
\FSM_onehot_STATE[12]_i_13\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[12]\,
      I1 => \n_0_FSM_onehot_STATE_reg[1]\,
      I2 => \n_0_FSM_onehot_STATE_reg[0]\,
      O => \n_0_FSM_onehot_STATE[12]_i_13\
    );
\FSM_onehot_STATE[12]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[4]\,
      I1 => \n_0_FSM_onehot_STATE_reg[5]\,
      I2 => \n_0_FSM_onehot_STATE_reg[12]\,
      I3 => \n_0_FSM_onehot_STATE_reg[6]\,
      I4 => \n_0_FSM_onehot_STATE_reg[7]\,
      O => \n_0_FSM_onehot_STATE[12]_i_14\
    );
\FSM_onehot_STATE[12]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[1]\,
      I1 => \n_0_FSM_onehot_STATE_reg[2]\,
      I2 => \n_0_FSM_onehot_STATE_reg[3]\,
      O => \n_0_FSM_onehot_STATE[12]_i_15\
    );
\FSM_onehot_STATE[12]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[10]\,
      I1 => \n_0_FSM_onehot_STATE_reg[11]\,
      O => \n_0_FSM_onehot_STATE[12]_i_16\
    );
\FSM_onehot_STATE[12]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_21\,
      I1 => \n_0_FSM_onehot_STATE_reg[0]\,
      I2 => \n_0_FSM_onehot_STATE[12]_i_22\,
      I3 => \n_0_FSM_onehot_STATE_reg[1]\,
      I4 => \n_0_FSM_onehot_STATE_reg[4]\,
      I5 => \n_0_FSM_onehot_STATE_reg[2]\,
      O => \n_0_FSM_onehot_STATE[12]_i_17\
    );
\FSM_onehot_STATE[12]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[3]\,
      I1 => \n_0_FSM_onehot_STATE_reg[5]\,
      I2 => \n_0_FSM_onehot_STATE_reg[1]\,
      I3 => \n_0_FSM_onehot_STATE_reg[7]\,
      I4 => \n_0_FSM_onehot_STATE_reg[9]\,
      I5 => \n_0_FSM_onehot_STATE_reg[11]\,
      O => \n_0_FSM_onehot_STATE[12]_i_18\
    );
\FSM_onehot_STATE[12]_i_19\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010116"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[7]\,
      I1 => \n_0_FSM_onehot_STATE_reg[11]\,
      I2 => \n_0_FSM_onehot_STATE_reg[9]\,
      I3 => \n_0_FSM_onehot_STATE_reg[5]\,
      I4 => \n_0_FSM_onehot_STATE_reg[3]\,
      O => \n_0_FSM_onehot_STATE[12]_i_19\
    );
\FSM_onehot_STATE[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00E0002000C00000"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I2 => \n_0_FSM_onehot_STATE[12]_i_5\,
      I3 => CGBAD,
      I4 => \n_0_FSM_onehot_STATE[12]_i_7\,
      I5 => \n_0_FSM_onehot_STATE[12]_i_8\,
      O => \n_0_FSM_onehot_STATE[12]_i_2\
    );
\FSM_onehot_STATE[12]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[10]\,
      I1 => \n_0_FSM_onehot_STATE_reg[8]\,
      I2 => \n_0_FSM_onehot_STATE_reg[6]\,
      I3 => \n_0_FSM_onehot_STATE_reg[12]\,
      I4 => \n_0_FSM_onehot_STATE_reg[2]\,
      I5 => \n_0_FSM_onehot_STATE_reg[4]\,
      O => \n_0_FSM_onehot_STATE[12]_i_20\
    );
\FSM_onehot_STATE[12]_i_21\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[3]\,
      I1 => \n_0_FSM_onehot_STATE_reg[5]\,
      O => \n_0_FSM_onehot_STATE[12]_i_21\
    );
\FSM_onehot_STATE[12]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[6]\,
      I1 => \n_0_FSM_onehot_STATE_reg[7]\,
      O => \n_0_FSM_onehot_STATE[12]_i_22\
    );
\FSM_onehot_STATE[12]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000A0000000E0000"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_9\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_10\,
      I2 => \n_0_FSM_onehot_STATE[12]_i_11\,
      I3 => \n_0_FSM_onehot_STATE[12]_i_12\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_13\,
      I5 => \n_0_FSM_onehot_STATE_reg[2]\,
      O => \n_0_FSM_onehot_STATE[12]_i_3\
    );
\FSM_onehot_STATE[12]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_14\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_15\,
      I2 => \n_0_FSM_onehot_STATE_reg[0]\,
      I3 => \n_0_FSM_onehot_STATE[12]_i_16\,
      I4 => \n_0_FSM_onehot_STATE_reg[9]\,
      I5 => \n_0_FSM_onehot_STATE_reg[8]\,
      O => \n_0_FSM_onehot_STATE[12]_i_4\
    );
\FSM_onehot_STATE[12]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001011600000000"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[8]\,
      I1 => \n_0_FSM_onehot_STATE_reg[9]\,
      I2 => \n_0_FSM_onehot_STATE_reg[12]\,
      I3 => \n_0_FSM_onehot_STATE_reg[10]\,
      I4 => \n_0_FSM_onehot_STATE_reg[11]\,
      I5 => \n_0_FSM_onehot_STATE[12]_i_17\,
      O => \n_0_FSM_onehot_STATE[12]_i_5\
    );
\FSM_onehot_STATE[12]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEA"
    )
    port map (
      I0 => D_0,
      I1 => I4,
      I2 => \^rxeven\,
      I3 => RXNOTINTABLE_INT,
      I4 => p_0_in,
      O => CGBAD
    );
\FSM_onehot_STATE[12]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => GOOD_CGS(0),
      I1 => GOOD_CGS(1),
      O => \n_0_FSM_onehot_STATE[12]_i_7\
    );
\FSM_onehot_STATE[12]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A000E0"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_18\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_19\,
      I2 => \n_0_FSM_onehot_STATE[12]_i_20\,
      I3 => \n_0_FSM_onehot_STATE_reg[0]\,
      I4 => \n_0_FSM_onehot_STATE_reg[1]\,
      O => \n_0_FSM_onehot_STATE[12]_i_8\
    );
\FSM_onehot_STATE[12]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000002"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[2]\,
      I1 => \n_0_FSM_onehot_STATE_reg[6]\,
      I2 => \n_0_FSM_onehot_STATE_reg[3]\,
      I3 => \n_0_FSM_onehot_STATE_reg[7]\,
      I4 => \n_0_FSM_onehot_STATE_reg[10]\,
      I5 => \n_0_FSM_onehot_STATE_reg[11]\,
      O => \n_0_FSM_onehot_STATE[12]_i_9\
    );
\FSM_onehot_STATE[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I2 => I4,
      I3 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_5\,
      O => \n_0_FSM_onehot_STATE[1]_i_1\
    );
\FSM_onehot_STATE[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[2]_i_2\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_5\,
      O => \n_0_FSM_onehot_STATE[2]_i_1\
    );
\FSM_onehot_STATE[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000101000C"
    )
    port map (
      I0 => I4,
      I1 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I2 => CGBAD,
      I3 => I3,
      I4 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I5 => \n_0_FSM_onehot_STATE[12]_i_4\,
      O => \n_0_FSM_onehot_STATE[2]_i_2\
    );
\FSM_onehot_STATE[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I2 => CGBAD,
      I3 => I4,
      I4 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I5 => \n_0_FSM_onehot_STATE[12]_i_5\,
      O => \n_0_FSM_onehot_STATE[3]_i_1\
    );
\FSM_onehot_STATE[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[4]_i_2\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_5\,
      O => \n_0_FSM_onehot_STATE[4]_i_1\
    );
\FSM_onehot_STATE[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000110000030000"
    )
    port map (
      I0 => I3,
      I1 => CGBAD,
      I2 => I4,
      I3 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I5 => \n_0_FSM_onehot_STATE[12]_i_3\,
      O => \n_0_FSM_onehot_STATE[4]_i_2\
    );
\FSM_onehot_STATE[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000200"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I2 => CGBAD,
      I3 => I4,
      I4 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I5 => \n_0_FSM_onehot_STATE[12]_i_5\,
      O => \n_0_FSM_onehot_STATE[5]_i_1\
    );
\FSM_onehot_STATE[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"11000200"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I1 => CGBAD,
      I2 => I3,
      I3 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_3\,
      O => \n_0_FSM_onehot_STATE[6]_i_2\
    );
\FSM_onehot_STATE[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I1 => CGBAD,
      I2 => GOOD_CGS(0),
      I3 => GOOD_CGS(1),
      I4 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I5 => \n_0_FSM_onehot_STATE[12]_i_4\,
      O => \n_0_FSM_onehot_STATE[6]_i_3\
    );
\FSM_onehot_STATE[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300000000400"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_7\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_5\,
      I2 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I3 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I4 => \n_0_FSM_onehot_STATE[12]_i_8\,
      I5 => CGBAD,
      O => \n_0_FSM_onehot_STATE[7]_i_1\
    );
\FSM_onehot_STATE[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000300000000008"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_7\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_5\,
      I2 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I3 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I4 => CGBAD,
      I5 => \n_0_FSM_onehot_STATE[12]_i_8\,
      O => \n_0_FSM_onehot_STATE[8]_i_1\
    );
\FSM_onehot_STATE[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"30004040000C4040"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE[12]_i_7\,
      I1 => \n_0_FSM_onehot_STATE[12]_i_5\,
      I2 => \n_0_FSM_onehot_STATE[12]_i_4\,
      I3 => \n_0_FSM_onehot_STATE[12]_i_3\,
      I4 => CGBAD,
      I5 => \n_0_FSM_onehot_STATE[12]_i_8\,
      O => \n_0_FSM_onehot_STATE[9]_i_1\
    );
\FSM_onehot_STATE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[0]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[0]\,
      S => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[10]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[10]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[11]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[11]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[12]_i_2\,
      Q => \n_0_FSM_onehot_STATE_reg[12]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[1]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[1]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[2]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[2]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[3]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[3]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[4]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[4]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[5]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[5]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE_reg[6]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[6]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[6]_i_1\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_FSM_onehot_STATE[6]_i_2\,
      I1 => \n_0_FSM_onehot_STATE[6]_i_3\,
      O => \n_0_FSM_onehot_STATE_reg[6]_i_1\,
      S => \n_0_FSM_onehot_STATE[12]_i_5\
    );
\FSM_onehot_STATE_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[7]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[7]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[8]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[8]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
\FSM_onehot_STATE_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_STATE[9]_i_1\,
      Q => \n_0_FSM_onehot_STATE_reg[9]\,
      R => \n_0_FSM_onehot_STATE[12]_i_1\
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\GOOD_CGS[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
    port map (
      I0 => GOOD_CGS(0),
      I1 => CGBAD,
      I2 => \n_0_GOOD_CGS[1]_i_2\,
      O => \n_0_GOOD_CGS[0]_i_1\
    );
\GOOD_CGS[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"009A"
    )
    port map (
      I0 => GOOD_CGS(1),
      I1 => CGBAD,
      I2 => GOOD_CGS(0),
      I3 => \n_0_GOOD_CGS[1]_i_2\,
      O => \n_0_GOOD_CGS[1]_i_1\
    );
\GOOD_CGS[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFAAAAA"
    )
    port map (
      I0 => I2,
      I1 => STATE_reg(1),
      I2 => STATE_reg(3),
      I3 => STATE_reg(2),
      I4 => STATE_reg(0),
      O => \n_0_GOOD_CGS[1]_i_2\
    );
\GOOD_CGS_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_GOOD_CGS[0]_i_1\,
      Q => GOOD_CGS(0),
      R => \<const0>\
    );
\GOOD_CGS_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_GOOD_CGS[1]_i_1\,
      Q => GOOD_CGS(1),
      R => \<const0>\
    );
I_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => I350_in,
      I1 => \^rxeven\,
      O => O1
    );
SIGNAL_DETECT_REG_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => SIGNAL_DETECT_MOD,
      Q => SIGNAL_DETECT_REG,
      R => \<const0>\
    );
SYNC_STATUS_REG_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => I2,
      I1 => \^p_55_in\,
      O => SYNC_STATUS_REG0
    );
SYNC_STATUS_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
    port map (
      I0 => n_0_SYNC_STATUS_i_2,
      I1 => \^p_55_in\,
      I2 => SYNC_STATUS0,
      O => n_0_SYNC_STATUS_i_1
    );
SYNC_STATUS_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000083"
    )
    port map (
      I0 => CGBAD,
      I1 => STATE_reg(2),
      I2 => STATE_reg(3),
      I3 => STATE_reg(1),
      I4 => STATE_reg(0),
      O => n_0_SYNC_STATUS_i_2
    );
SYNC_STATUS_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001000000"
    )
    port map (
      I0 => STATE_reg(1),
      I1 => I3,
      I2 => CGBAD,
      I3 => STATE_reg(0),
      I4 => STATE_reg(2),
      I5 => STATE_reg(3),
      O => SYNC_STATUS0
    );
SYNC_STATUS_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[6]\,
      I1 => \n_0_FSM_onehot_STATE_reg[7]\,
      I2 => \n_0_FSM_onehot_STATE_reg[12]\,
      I3 => \n_0_FSM_onehot_STATE_reg[5]\,
      I4 => \n_0_FSM_onehot_STATE_reg[4]\,
      O => STATE_reg(2)
    );
SYNC_STATUS_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[10]\,
      I1 => \n_0_FSM_onehot_STATE_reg[11]\,
      I2 => \n_0_FSM_onehot_STATE_reg[12]\,
      I3 => \n_0_FSM_onehot_STATE_reg[9]\,
      I4 => \n_0_FSM_onehot_STATE_reg[8]\,
      O => STATE_reg(3)
    );
SYNC_STATUS_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[2]\,
      I1 => \n_0_FSM_onehot_STATE_reg[3]\,
      I2 => \n_0_FSM_onehot_STATE_reg[10]\,
      I3 => \n_0_FSM_onehot_STATE_reg[11]\,
      I4 => \n_0_FSM_onehot_STATE_reg[6]\,
      I5 => \n_0_FSM_onehot_STATE_reg[7]\,
      O => STATE_reg(1)
    );
SYNC_STATUS_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_STATE_reg[7]\,
      I1 => \n_0_FSM_onehot_STATE_reg[1]\,
      I2 => \n_0_FSM_onehot_STATE_reg[9]\,
      I3 => \n_0_FSM_onehot_STATE_reg[11]\,
      I4 => \n_0_FSM_onehot_STATE_reg[3]\,
      I5 => \n_0_FSM_onehot_STATE_reg[5]\,
      O => STATE_reg(0)
    );
SYNC_STATUS_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_SYNC_STATUS_i_1,
      Q => \^p_55_in\,
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0TX__parameterized0\ is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O4 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    O8 : out STD_LOGIC;
    O9 : out STD_LOGIC;
    O10 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O11 : out STD_LOGIC;
    gmii_tx_en : in STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    LOOPBACK_INT : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_rxcharisk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxchariscomma_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    I3 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0TX__parameterized0\ : entity is "TX";
end \gig_ethernet_pcs_pma_0TX__parameterized0\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0TX__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal CODE_GRPISK : STD_LOGIC;
  signal CODE_GRPISK_0 : STD_LOGIC;
  signal CONFIG_K28p5 : STD_LOGIC;
  signal CONFIG_K28p5_1 : STD_LOGIC;
  signal DISP5 : STD_LOGIC;
  signal DISPARITY : STD_LOGIC;
  signal K28p5 : STD_LOGIC;
  signal S : STD_LOGIC;
  signal S0 : STD_LOGIC;
  signal T : STD_LOGIC;
  signal T0 : STD_LOGIC;
  signal TRIGGER_S : STD_LOGIC;
  signal TRIGGER_S0 : STD_LOGIC;
  signal TRIGGER_T : STD_LOGIC;
  signal TXCHARDISPMODE_INT : STD_LOGIC;
  signal TXCHARDISPVAL : STD_LOGIC;
  signal TXCHARISK_INT : STD_LOGIC;
  signal TXDATA : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TXD_REG1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal TX_EN_REG1 : STD_LOGIC;
  signal TX_ER_REG1 : STD_LOGIC;
  signal TX_EVEN : STD_LOGIC;
  signal XMIT_CONFIG_INT : STD_LOGIC;
  signal n_0_C1_OR_C2_i_1 : STD_LOGIC;
  signal n_0_C1_OR_C2_reg : STD_LOGIC;
  signal n_0_CODE_GRPISK_i_1 : STD_LOGIC;
  signal \n_0_CODE_GRP[0]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[0]_i_2\ : STD_LOGIC;
  signal \n_0_CODE_GRP[1]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[1]_i_2\ : STD_LOGIC;
  signal \n_0_CODE_GRP[2]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[2]_i_2\ : STD_LOGIC;
  signal \n_0_CODE_GRP[3]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[3]_i_2\ : STD_LOGIC;
  signal \n_0_CODE_GRP[4]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[5]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[6]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP[6]_i_2\ : STD_LOGIC;
  signal \n_0_CODE_GRP[7]_i_1\ : STD_LOGIC;
  signal \n_0_CODE_GRP_CNT_reg[1]\ : STD_LOGIC;
  signal \n_0_CODE_GRP_reg[0]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA[0]_i_1\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA[1]_i_1\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA[3]_i_1\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA[6]_i_1\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA[7]_i_1\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[0]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[1]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[2]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[3]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[4]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[5]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[6]\ : STD_LOGIC;
  signal \n_0_CONFIG_DATA_reg[7]\ : STD_LOGIC;
  signal n_0_INSERT_IDLE_i_1 : STD_LOGIC;
  signal n_0_INSERT_IDLE_i_2 : STD_LOGIC;
  signal n_0_INSERT_IDLE_reg : STD_LOGIC;
  signal n_0_K28p5_i_1 : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXCHARISK_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[0]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[1]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[2]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[3]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[4]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[5]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[6]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DATA.TXDATA[7]_i_1\ : STD_LOGIC;
  signal \n_0_NO_QSGMII_DISP.DISPARITY_i_1\ : STD_LOGIC;
  signal \n_0_R_i_1__0\ : STD_LOGIC;
  signal n_0_R_reg : STD_LOGIC;
  signal n_0_SYNC_DISPARITY_i_1 : STD_LOGIC;
  signal n_0_SYNC_DISPARITY_reg : STD_LOGIC;
  signal n_0_TX_PACKET_i_1 : STD_LOGIC;
  signal n_0_TX_PACKET_reg : STD_LOGIC;
  signal n_0_V_i_1 : STD_LOGIC;
  signal n_0_V_i_2 : STD_LOGIC;
  signal n_0_V_i_3 : STD_LOGIC;
  signal n_0_V_i_4 : STD_LOGIC;
  signal n_0_V_reg : STD_LOGIC;
  signal n_0_XMIT_CONFIG_INT_i_1 : STD_LOGIC;
  signal n_0_XMIT_DATA_INT_i_1 : STD_LOGIC;
  signal n_0_XMIT_DATA_INT_reg : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in18_in : STD_LOGIC;
  signal p_0_in37_in : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_1_in1_in : STD_LOGIC;
  signal p_1_in36_in : STD_LOGIC;
  signal p_35_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_49_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of C1_OR_C2_i_1 : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \CODE_GRP[0]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \CODE_GRP[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \CODE_GRP[3]_i_2\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \CODE_GRP[6]_i_2\ : label is "soft_lutpair48";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \CODE_GRP_CNT[0]_i_1\ : label is true;
  attribute SOFT_HLUTNM of \CODE_GRP_CNT[0]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \CODE_GRP_CNT[1]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \CONFIG_DATA[0]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \CONFIG_DATA[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \CONFIG_DATA[3]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \CONFIG_DATA[6]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \CONFIG_DATA[7]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of CONFIG_K28p5_i_1 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of INSERT_IDLE_i_2 : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of K28p5_i_1 : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \NO_QSGMII_CHAR.TXCHARDISPMODE_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \NO_QSGMII_CHAR.TXCHARDISPVAL_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXCHARISK_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXDATA[1]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXDATA[3]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXDATA[5]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \NO_QSGMII_DATA.TXDATA[6]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of TRIGGER_S_i_1 : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of TRIGGER_T_i_1 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXCHARISK_INT_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[2]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[3]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[4]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[5]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[6]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDATA_INT[7]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXCHARDISPMODE_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXCHARDISPVAL_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXCHARISK_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[0]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[1]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[2]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[4]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[5]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[6]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[7]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.TXDATA[7]_i_2\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of V_i_3 : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of XMIT_CONFIG_INT_i_1 : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of XMIT_DATA_INT_i_1 : label is "soft_lutpair56";
begin
C1_OR_C2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00006A2A"
    )
    port map (
      I0 => n_0_C1_OR_C2_reg,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      I2 => TX_EVEN,
      I3 => XMIT_CONFIG_INT,
      I4 => I2,
      O => n_0_C1_OR_C2_i_1
    );
C1_OR_C2_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_C1_OR_C2_i_1,
      Q => n_0_C1_OR_C2_reg,
      R => \<const0>\
    );
CODE_GRPISK_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30FF3055"
    )
    port map (
      I0 => n_0_TX_PACKET_reg,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      I2 => TX_EVEN,
      I3 => XMIT_CONFIG_INT,
      I4 => CODE_GRPISK_0,
      O => n_0_CODE_GRPISK_i_1
    );
CODE_GRPISK_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_CODE_GRPISK_i_1,
      Q => CODE_GRPISK,
      R => \<const0>\
    );
\CODE_GRP[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA0C0C000C"
    )
    port map (
      I0 => \n_0_CONFIG_DATA_reg[0]\,
      I1 => \n_0_CODE_GRP[0]_i_2\,
      I2 => SR(0),
      I3 => n_0_V_reg,
      I4 => S,
      I5 => XMIT_CONFIG_INT,
      O => \n_0_CODE_GRP[0]_i_1\
    );
\CODE_GRP[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEFE"
    )
    port map (
      I0 => T,
      I1 => S,
      I2 => n_0_R_reg,
      I3 => n_0_TX_PACKET_reg,
      I4 => TXD_REG1(0),
      O => \n_0_CODE_GRP[0]_i_2\
    );
\CODE_GRP[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A0AC"
    )
    port map (
      I0 => \n_0_CONFIG_DATA_reg[1]\,
      I1 => \n_0_CODE_GRP[1]_i_2\,
      I2 => XMIT_CONFIG_INT,
      I3 => SR(0),
      O => \n_0_CODE_GRP[1]_i_1\
    );
\CODE_GRP[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFFCFEFCFEFCFE"
    )
    port map (
      I0 => n_0_R_reg,
      I1 => S,
      I2 => n_0_V_reg,
      I3 => T,
      I4 => n_0_TX_PACKET_reg,
      I5 => TXD_REG1(1),
      O => \n_0_CODE_GRP[1]_i_2\
    );
\CODE_GRP[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF100F1"
    )
    port map (
      I0 => S,
      I1 => \n_0_CODE_GRP[2]_i_2\,
      I2 => SR(0),
      I3 => XMIT_CONFIG_INT,
      I4 => \n_0_CONFIG_DATA_reg[2]\,
      O => \n_0_CODE_GRP[2]_i_1\
    );
\CODE_GRP[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => T,
      I1 => n_0_V_reg,
      I2 => n_0_R_reg,
      I3 => TXD_REG1(2),
      I4 => n_0_TX_PACKET_reg,
      O => \n_0_CODE_GRP[2]_i_2\
    );
\CODE_GRP[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBB8BBB8BBBB"
    )
    port map (
      I0 => \n_0_CONFIG_DATA_reg[3]\,
      I1 => XMIT_CONFIG_INT,
      I2 => \n_0_CODE_GRP[3]_i_2\,
      I3 => SR(0),
      I4 => n_0_R_reg,
      I5 => n_0_TX_PACKET_reg,
      O => \n_0_CODE_GRP[3]_i_1\
    );
\CODE_GRP[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFEFE"
    )
    port map (
      I0 => T,
      I1 => S,
      I2 => n_0_V_reg,
      I3 => n_0_R_reg,
      I4 => TXD_REG1(3),
      O => \n_0_CODE_GRP[3]_i_2\
    );
\CODE_GRP[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBB8BB"
    )
    port map (
      I0 => \n_0_CONFIG_DATA_reg[4]\,
      I1 => XMIT_CONFIG_INT,
      I2 => TXD_REG1(4),
      I3 => n_0_TX_PACKET_reg,
      I4 => CODE_GRPISK_0,
      O => \n_0_CODE_GRP[4]_i_1\
    );
\CODE_GRP[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBB8BB"
    )
    port map (
      I0 => \n_0_CONFIG_DATA_reg[5]\,
      I1 => XMIT_CONFIG_INT,
      I2 => TXD_REG1(5),
      I3 => n_0_TX_PACKET_reg,
      I4 => CODE_GRPISK_0,
      O => \n_0_CODE_GRP[5]_i_1\
    );
\CODE_GRP[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000AAAAFFC0"
    )
    port map (
      I0 => \n_0_CONFIG_DATA_reg[6]\,
      I1 => n_0_TX_PACKET_reg,
      I2 => TXD_REG1(6),
      I3 => \n_0_CODE_GRP[6]_i_2\,
      I4 => XMIT_CONFIG_INT,
      I5 => SR(0),
      O => \n_0_CODE_GRP[6]_i_1\
    );
\CODE_GRP[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => n_0_R_reg,
      I1 => n_0_V_reg,
      I2 => S,
      I3 => T,
      O => \n_0_CODE_GRP[6]_i_2\
    );
\CODE_GRP[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BBBBB8BB"
    )
    port map (
      I0 => \n_0_CONFIG_DATA_reg[7]\,
      I1 => XMIT_CONFIG_INT,
      I2 => TXD_REG1(7),
      I3 => n_0_TX_PACKET_reg,
      I4 => CODE_GRPISK_0,
      O => \n_0_CODE_GRP[7]_i_1\
    );
\CODE_GRP[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => T,
      I1 => S,
      I2 => n_0_V_reg,
      I3 => n_0_R_reg,
      I4 => SR(0),
      O => CODE_GRPISK_0
    );
\CODE_GRP_CNT[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => TX_EVEN,
      O => plusOp(0)
    );
\CODE_GRP_CNT[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => TX_EVEN,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      O => plusOp(1)
    );
\CODE_GRP_CNT_reg[0]\: unisim.vcomponents.FDSE
    port map (
      C => I1,
      CE => \<const1>\,
      D => plusOp(0),
      Q => TX_EVEN,
      S => I2
    );
\CODE_GRP_CNT_reg[1]\: unisim.vcomponents.FDSE
    port map (
      C => I1,
      CE => \<const1>\,
      D => plusOp(1),
      Q => \n_0_CODE_GRP_CNT_reg[1]\,
      S => I2
    );
\CODE_GRP_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CODE_GRP[0]_i_1\,
      Q => \n_0_CODE_GRP_reg[0]\,
      R => \<const0>\
    );
\CODE_GRP_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CODE_GRP[1]_i_1\,
      Q => p_1_in,
      R => \<const0>\
    );
\CODE_GRP_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CODE_GRP[2]_i_1\,
      Q => p_0_in18_in,
      R => \<const0>\
    );
\CODE_GRP_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CODE_GRP[3]_i_1\,
      Q => p_0_in,
      R => \<const0>\
    );
\CODE_GRP_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CODE_GRP[4]_i_1\,
      Q => p_1_in1_in,
      R => \<const0>\
    );
\CODE_GRP_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CODE_GRP[5]_i_1\,
      Q => p_1_in36_in,
      R => \<const0>\
    );
\CODE_GRP_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CODE_GRP[6]_i_1\,
      Q => p_35_in,
      R => \<const0>\
    );
\CODE_GRP_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CODE_GRP[7]_i_1\,
      Q => p_0_in37_in,
      R => \<const0>\
    );
\CONFIG_DATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => \n_0_CODE_GRP_CNT_reg[1]\,
      I1 => TX_EVEN,
      I2 => n_0_C1_OR_C2_reg,
      O => \n_0_CONFIG_DATA[0]_i_1\
    );
\CONFIG_DATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => TX_EVEN,
      I1 => n_0_C1_OR_C2_reg,
      I2 => \n_0_CODE_GRP_CNT_reg[1]\,
      O => \n_0_CONFIG_DATA[1]_i_1\
    );
\CONFIG_DATA[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => TX_EVEN,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      O => \n_0_CONFIG_DATA[3]_i_1\
    );
\CONFIG_DATA[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => TX_EVEN,
      I1 => n_0_C1_OR_C2_reg,
      I2 => \n_0_CODE_GRP_CNT_reg[1]\,
      O => \n_0_CONFIG_DATA[6]_i_1\
    );
\CONFIG_DATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
    port map (
      I0 => TX_EVEN,
      I1 => n_0_C1_OR_C2_reg,
      I2 => \n_0_CODE_GRP_CNT_reg[1]\,
      O => \n_0_CONFIG_DATA[7]_i_1\
    );
\CONFIG_DATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CONFIG_DATA[0]_i_1\,
      Q => \n_0_CONFIG_DATA_reg[0]\,
      R => I2
    );
\CONFIG_DATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CONFIG_DATA[1]_i_1\,
      Q => \n_0_CONFIG_DATA_reg[1]\,
      R => I2
    );
\CONFIG_DATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CONFIG_DATA[7]_i_1\,
      Q => \n_0_CONFIG_DATA_reg[2]\,
      R => I2
    );
\CONFIG_DATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CONFIG_DATA[3]_i_1\,
      Q => \n_0_CONFIG_DATA_reg[3]\,
      R => I2
    );
\CONFIG_DATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CONFIG_DATA[7]_i_1\,
      Q => \n_0_CONFIG_DATA_reg[4]\,
      R => I2
    );
\CONFIG_DATA_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CONFIG_DATA[7]_i_1\,
      Q => \n_0_CONFIG_DATA_reg[5]\,
      R => I2
    );
\CONFIG_DATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CONFIG_DATA[6]_i_1\,
      Q => \n_0_CONFIG_DATA_reg[6]\,
      R => I2
    );
\CONFIG_DATA_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_CONFIG_DATA[7]_i_1\,
      Q => \n_0_CONFIG_DATA_reg[7]\,
      R => I2
    );
CONFIG_K28p5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => TX_EVEN,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      O => CONFIG_K28p5_1
    );
CONFIG_K28p5_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => CONFIG_K28p5_1,
      Q => CONFIG_K28p5,
      R => I2
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
INSERT_IDLE_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAAB"
    )
    port map (
      I0 => SR(0),
      I1 => n_0_INSERT_IDLE_i_2,
      I2 => n_0_V_reg,
      I3 => n_0_R_reg,
      I4 => n_0_TX_PACKET_reg,
      I5 => XMIT_CONFIG_INT,
      O => n_0_INSERT_IDLE_i_1
    );
INSERT_IDLE_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => T,
      I1 => S,
      O => n_0_INSERT_IDLE_i_2
    );
INSERT_IDLE_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_INSERT_IDLE_i_1,
      Q => n_0_INSERT_IDLE_reg,
      R => \<const0>\
    );
K28p5_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => XMIT_CONFIG_INT,
      I1 => CONFIG_K28p5,
      O => n_0_K28p5_i_1
    );
K28p5_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_K28p5_i_1,
      Q => K28p5,
      R => \<const0>\
    );
\NO_QSGMII_CHAR.TXCHARDISPMODE_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => n_0_SYNC_DISPARITY_reg,
      I1 => TX_EVEN,
      O => p_12_out
    );
\NO_QSGMII_CHAR.TXCHARDISPMODE_reg\: unisim.vcomponents.FDSE
    port map (
      C => I1,
      CE => \<const1>\,
      D => p_12_out,
      Q => TXCHARDISPMODE_INT,
      S => I2
    );
\NO_QSGMII_CHAR.TXCHARDISPVAL_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => DISPARITY,
      I1 => n_0_SYNC_DISPARITY_reg,
      I2 => TX_EVEN,
      O => p_10_out
    );
\NO_QSGMII_CHAR.TXCHARDISPVAL_reg\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => p_10_out,
      Q => TXCHARDISPVAL,
      R => I2
    );
\NO_QSGMII_DATA.TXCHARISK_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => CODE_GRPISK,
      I1 => I2,
      I2 => TX_EVEN,
      I3 => n_0_INSERT_IDLE_reg,
      O => \n_0_NO_QSGMII_DATA.TXCHARISK_i_1\
    );
\NO_QSGMII_DATA.TXCHARISK_reg\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_QSGMII_DATA.TXCHARISK_i_1\,
      Q => TXCHARISK_INT,
      R => \<const0>\
    );
\NO_QSGMII_DATA.TXDATA[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BF0080"
    )
    port map (
      I0 => DISPARITY,
      I1 => n_0_INSERT_IDLE_reg,
      I2 => TX_EVEN,
      I3 => I2,
      I4 => \n_0_CODE_GRP_reg[0]\,
      O => \n_0_NO_QSGMII_DATA.TXDATA[0]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => p_1_in,
      I1 => I2,
      I2 => TX_EVEN,
      I3 => n_0_INSERT_IDLE_reg,
      O => \n_0_NO_QSGMII_DATA.TXDATA[1]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BF0080"
    )
    port map (
      I0 => DISPARITY,
      I1 => n_0_INSERT_IDLE_reg,
      I2 => TX_EVEN,
      I3 => I2,
      I4 => p_0_in18_in,
      O => \n_0_NO_QSGMII_DATA.TXDATA[2]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => p_0_in,
      I1 => I2,
      I2 => TX_EVEN,
      I3 => n_0_INSERT_IDLE_reg,
      O => \n_0_NO_QSGMII_DATA.TXDATA[3]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"007F0040"
    )
    port map (
      I0 => DISPARITY,
      I1 => n_0_INSERT_IDLE_reg,
      I2 => TX_EVEN,
      I3 => I2,
      I4 => p_1_in1_in,
      O => \n_0_NO_QSGMII_DATA.TXDATA[4]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0222"
    )
    port map (
      I0 => p_1_in36_in,
      I1 => I2,
      I2 => TX_EVEN,
      I3 => n_0_INSERT_IDLE_reg,
      O => \n_0_NO_QSGMII_DATA.TXDATA[5]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => p_35_in,
      I1 => I2,
      I2 => TX_EVEN,
      I3 => n_0_INSERT_IDLE_reg,
      O => \n_0_NO_QSGMII_DATA.TXDATA[6]_i_1\
    );
\NO_QSGMII_DATA.TXDATA[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00BF0080"
    )
    port map (
      I0 => DISPARITY,
      I1 => n_0_INSERT_IDLE_reg,
      I2 => TX_EVEN,
      I3 => I2,
      I4 => p_0_in37_in,
      O => \n_0_NO_QSGMII_DATA.TXDATA[7]_i_1\
    );
\NO_QSGMII_DATA.TXDATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_QSGMII_DATA.TXDATA[0]_i_1\,
      Q => TXDATA(0),
      R => \<const0>\
    );
\NO_QSGMII_DATA.TXDATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_QSGMII_DATA.TXDATA[1]_i_1\,
      Q => TXDATA(1),
      R => \<const0>\
    );
\NO_QSGMII_DATA.TXDATA_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_QSGMII_DATA.TXDATA[2]_i_1\,
      Q => TXDATA(2),
      R => \<const0>\
    );
\NO_QSGMII_DATA.TXDATA_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_QSGMII_DATA.TXDATA[3]_i_1\,
      Q => TXDATA(3),
      R => \<const0>\
    );
\NO_QSGMII_DATA.TXDATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_QSGMII_DATA.TXDATA[4]_i_1\,
      Q => TXDATA(4),
      R => \<const0>\
    );
\NO_QSGMII_DATA.TXDATA_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_QSGMII_DATA.TXDATA[5]_i_1\,
      Q => TXDATA(5),
      R => \<const0>\
    );
\NO_QSGMII_DATA.TXDATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_QSGMII_DATA.TXDATA[6]_i_1\,
      Q => TXDATA(6),
      R => \<const0>\
    );
\NO_QSGMII_DATA.TXDATA_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_QSGMII_DATA.TXDATA[7]_i_1\,
      Q => TXDATA(7),
      R => \<const0>\
    );
\NO_QSGMII_DISP.DISPARITY_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF152A"
    )
    port map (
      I0 => DISPARITY,
      I1 => TX_EVEN,
      I2 => n_0_INSERT_IDLE_reg,
      I3 => p_3_out,
      I4 => I2,
      O => \n_0_NO_QSGMII_DISP.DISPARITY_i_1\
    );
\NO_QSGMII_DISP.DISPARITY_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF6AA5"
    )
    port map (
      I0 => DISP5,
      I1 => p_0_in37_in,
      I2 => p_35_in,
      I3 => p_1_in36_in,
      I4 => K28p5,
      O => p_3_out
    );
\NO_QSGMII_DISP.DISPARITY_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E9818117"
    )
    port map (
      I0 => p_0_in18_in,
      I1 => p_1_in,
      I2 => \n_0_CODE_GRP_reg[0]\,
      I3 => p_1_in1_in,
      I4 => p_0_in,
      O => DISP5
    );
\NO_QSGMII_DISP.DISPARITY_reg\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_QSGMII_DISP.DISPARITY_i_1\,
      Q => DISPARITY,
      R => \<const0>\
    );
\R_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B0B0B0A0A0A0A0A"
    )
    port map (
      I0 => T,
      I1 => S,
      I2 => I2,
      I3 => TX_EVEN,
      I4 => TX_ER_REG1,
      I5 => n_0_R_reg,
      O => \n_0_R_i_1__0\
    );
R_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_R_i_1__0\,
      Q => n_0_R_reg,
      R => \<const0>\
    );
SYNC_DISPARITY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F2F2F2F2020202F"
    )
    port map (
      I0 => TX_EVEN,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      I2 => XMIT_CONFIG_INT,
      I3 => n_0_TX_PACKET_reg,
      I4 => \n_0_CODE_GRP[6]_i_2\,
      I5 => SR(0),
      O => n_0_SYNC_DISPARITY_i_1
    );
SYNC_DISPARITY_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_SYNC_DISPARITY_i_1,
      Q => n_0_SYNC_DISPARITY_reg,
      R => \<const0>\
    );
\S_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA00AA00AAA2AA00"
    )
    port map (
      I0 => n_0_XMIT_DATA_INT_reg,
      I1 => TX_EVEN,
      I2 => TX_ER_REG1,
      I3 => TRIGGER_S,
      I4 => gmii_tx_en,
      I5 => TX_EN_REG1,
      O => S0
    );
S_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => S0,
      Q => S,
      R => I2
    );
TRIGGER_S_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => TX_ER_REG1,
      I1 => gmii_tx_en,
      I2 => TX_EN_REG1,
      I3 => TX_EVEN,
      O => TRIGGER_S0
    );
TRIGGER_S_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => TRIGGER_S0,
      Q => TRIGGER_S,
      R => I2
    );
TRIGGER_T_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => TX_EN_REG1,
      I1 => gmii_tx_en,
      O => p_49_in
    );
TRIGGER_T_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => p_49_in,
      Q => TRIGGER_T,
      R => I2
    );
\TXD_REG1_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gmii_txd(0),
      Q => TXD_REG1(0),
      R => \<const0>\
    );
\TXD_REG1_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gmii_txd(1),
      Q => TXD_REG1(1),
      R => \<const0>\
    );
\TXD_REG1_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gmii_txd(2),
      Q => TXD_REG1(2),
      R => \<const0>\
    );
\TXD_REG1_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gmii_txd(3),
      Q => TXD_REG1(3),
      R => \<const0>\
    );
\TXD_REG1_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gmii_txd(4),
      Q => TXD_REG1(4),
      R => \<const0>\
    );
\TXD_REG1_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gmii_txd(5),
      Q => TXD_REG1(5),
      R => \<const0>\
    );
\TXD_REG1_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gmii_txd(6),
      Q => TXD_REG1(6),
      R => \<const0>\
    );
\TXD_REG1_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gmii_txd(7),
      Q => TXD_REG1(7),
      R => \<const0>\
    );
TX_EN_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gmii_tx_en,
      Q => TX_EN_REG1,
      R => \<const0>\
    );
TX_ER_REG1_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gmii_tx_er,
      Q => TX_ER_REG1,
      R => \<const0>\
    );
TX_PACKET_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0B0A"
    )
    port map (
      I0 => S,
      I1 => T,
      I2 => I2,
      I3 => n_0_TX_PACKET_reg,
      O => n_0_TX_PACKET_i_1
    );
TX_PACKET_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_TX_PACKET_i_1,
      Q => n_0_TX_PACKET_reg,
      R => \<const0>\
    );
\T_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF222022202220"
    )
    port map (
      I0 => TX_EN_REG1,
      I1 => gmii_tx_en,
      I2 => S,
      I3 => n_0_TX_PACKET_reg,
      I4 => TRIGGER_T,
      I5 => n_0_V_reg,
      O => T0
    );
T_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => T0,
      Q => T,
      R => I2
    );
\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXCHARISK_INT,
      I1 => LOOPBACK_INT,
      I2 => gt0_rxchariscomma_out(0),
      O => O9
    );
\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXCHARISK_INT,
      I1 => LOOPBACK_INT,
      I2 => gt0_rxcharisk_out(0),
      O => O8
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(0),
      I1 => LOOPBACK_INT,
      I2 => I3(0),
      O => O10(0)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(1),
      I1 => LOOPBACK_INT,
      I2 => I3(1),
      O => O10(1)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(2),
      I1 => LOOPBACK_INT,
      I2 => I3(2),
      O => O10(2)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(3),
      I1 => LOOPBACK_INT,
      I2 => I3(3),
      O => O10(3)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(4),
      I1 => LOOPBACK_INT,
      I2 => I3(4),
      O => O10(4)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(5),
      I1 => LOOPBACK_INT,
      I2 => I3(5),
      O => O10(5)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(6),
      I1 => LOOPBACK_INT,
      I2 => I3(6),
      O => O10(6)
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TXDATA(7),
      I1 => LOOPBACK_INT,
      I2 => I3(7),
      O => O10(7)
    );
\USE_ROCKET_IO.TXCHARDISPMODE_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TX_EVEN,
      I1 => LOOPBACK_INT,
      I2 => TXCHARDISPMODE_INT,
      O => O2
    );
\USE_ROCKET_IO.TXCHARDISPVAL_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXCHARDISPVAL,
      I1 => I2,
      I2 => LOOPBACK_INT,
      O => O1
    );
\USE_ROCKET_IO.TXCHARISK_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => TX_EVEN,
      I1 => LOOPBACK_INT,
      I2 => TXCHARISK_INT,
      O => O7
    );
\USE_ROCKET_IO.TXDATA[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(0),
      I1 => I2,
      I2 => LOOPBACK_INT,
      O => D(0)
    );
\USE_ROCKET_IO.TXDATA[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(1),
      I1 => I2,
      I2 => LOOPBACK_INT,
      O => D(1)
    );
\USE_ROCKET_IO.TXDATA[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(2),
      I1 => I2,
      I2 => LOOPBACK_INT,
      O => O6
    );
\USE_ROCKET_IO.TXDATA[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(3),
      I1 => I2,
      I2 => LOOPBACK_INT,
      O => O5
    );
\USE_ROCKET_IO.TXDATA[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => TXDATA(4),
      I1 => I2,
      I2 => LOOPBACK_INT,
      O => D(2)
    );
\USE_ROCKET_IO.TXDATA[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(5),
      I1 => I2,
      I2 => LOOPBACK_INT,
      O => O4
    );
\USE_ROCKET_IO.TXDATA[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0704"
    )
    port map (
      I0 => TX_EVEN,
      I1 => LOOPBACK_INT,
      I2 => I2,
      I3 => TXDATA(6),
      O => D(3)
    );
\USE_ROCKET_IO.TXDATA[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
    port map (
      I0 => I2,
      I1 => LOOPBACK_INT,
      I2 => TX_EVEN,
      O => O11
    );
\USE_ROCKET_IO.TXDATA[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => TXDATA(7),
      I1 => I2,
      I2 => LOOPBACK_INT,
      O => O3
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
V_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00F80088"
    )
    port map (
      I0 => n_0_V_i_2,
      I1 => n_0_XMIT_DATA_INT_reg,
      I2 => S,
      I3 => I2,
      I4 => n_0_V_reg,
      O => n_0_V_i_1
    );
V_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAFFBFAAAA"
    )
    port map (
      I0 => n_0_V_i_3,
      I1 => gmii_txd(0),
      I2 => gmii_txd(1),
      I3 => n_0_V_i_4,
      I4 => gmii_tx_er,
      I5 => gmii_tx_en,
      O => n_0_V_i_2
    );
V_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8F808080"
    )
    port map (
      I0 => gmii_tx_en,
      I1 => gmii_tx_er,
      I2 => n_0_TX_PACKET_reg,
      I3 => TX_EN_REG1,
      I4 => TX_ER_REG1,
      O => n_0_V_i_3
    );
V_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
    port map (
      I0 => gmii_txd(2),
      I1 => gmii_txd(3),
      I2 => gmii_txd(7),
      I3 => gmii_txd(6),
      I4 => gmii_txd(4),
      I5 => gmii_txd(5),
      O => n_0_V_i_4
    );
V_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_V_i_1,
      Q => n_0_V_reg,
      R => \<const0>\
    );
XMIT_CONFIG_INT_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
    port map (
      I0 => TX_EVEN,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      I2 => XMIT_CONFIG_INT,
      O => n_0_XMIT_CONFIG_INT_i_1
    );
XMIT_CONFIG_INT_reg: unisim.vcomponents.FDSE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_XMIT_CONFIG_INT_i_1,
      Q => XMIT_CONFIG_INT,
      S => I2
    );
XMIT_DATA_INT_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => TX_EVEN,
      I1 => \n_0_CODE_GRP_CNT_reg[1]\,
      I2 => n_0_XMIT_DATA_INT_reg,
      O => n_0_XMIT_DATA_INT_i_1
    );
XMIT_DATA_INT_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_XMIT_DATA_INT_i_1,
      Q => n_0_XMIT_DATA_INT_reg,
      R => I2
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_GT__parameterized0\ is
  port (
    resetdone : out STD_LOGIC;
    CPLLREFCLKLOST : out STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    O1 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    O2 : out STD_LOGIC;
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    CPLL_RESET : in STD_LOGIC;
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpen_in : in STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    gt0_gtrxreset_in1_out : in STD_LOGIC;
    gt0_gttxreset_in0_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    RXDFELFHOLD : in STD_LOGIC;
    gt0_rxdfeagcovrden_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxmcommaalignen_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    RXUSERRDY : in STD_LOGIC;
    CLK : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    TXUSERRDY : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_GT__parameterized0\ : entity is "gig_ethernet_pcs_pma_0_GTWIZARD_GT";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_GT__parameterized0\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_GT__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal n_0_gtxe2_i : STD_LOGIC;
  signal n_11_gtxe2_i : STD_LOGIC;
  signal n_38_gtxe2_i : STD_LOGIC;
  signal n_39_gtxe2_i : STD_LOGIC;
  signal rxoutclk : STD_LOGIC;
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
  signal NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHARISK_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXCHBONDO_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXDATA_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 16 );
  signal NLW_gtxe2_i_RXDISPERR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXHEADER_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_gtxe2_i_RXSTATUS_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_gtxe2_i_TSTOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 9 downto 0 );
  attribute box_type : string;
  attribute box_type of gtxe2_i : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
gtxe2_i: unisim.vcomponents.GTXE2_CHANNEL
    generic map(
      ALIGN_COMMA_DOUBLE => "FALSE",
      ALIGN_COMMA_ENABLE => B"0001111111",
      ALIGN_COMMA_WORD => 2,
      ALIGN_MCOMMA_DET => "TRUE",
      ALIGN_MCOMMA_VALUE => B"1010000011",
      ALIGN_PCOMMA_DET => "TRUE",
      ALIGN_PCOMMA_VALUE => B"0101111100",
      CBCC_DATA_SOURCE_SEL => "DECODED",
      CHAN_BOND_KEEP_ALIGN => "FALSE",
      CHAN_BOND_MAX_SKEW => 1,
      CHAN_BOND_SEQ_1_1 => B"0000000000",
      CHAN_BOND_SEQ_1_2 => B"0000000000",
      CHAN_BOND_SEQ_1_3 => B"0000000000",
      CHAN_BOND_SEQ_1_4 => B"0000000000",
      CHAN_BOND_SEQ_1_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_1 => B"0000000000",
      CHAN_BOND_SEQ_2_2 => B"0000000000",
      CHAN_BOND_SEQ_2_3 => B"0000000000",
      CHAN_BOND_SEQ_2_4 => B"0000000000",
      CHAN_BOND_SEQ_2_ENABLE => B"1111",
      CHAN_BOND_SEQ_2_USE => "FALSE",
      CHAN_BOND_SEQ_LEN => 1,
      CLK_CORRECT_USE => "TRUE",
      CLK_COR_KEEP_IDLE => "FALSE",
      CLK_COR_MAX_LAT => 36,
      CLK_COR_MIN_LAT => 33,
      CLK_COR_PRECEDENCE => "TRUE",
      CLK_COR_REPEAT_WAIT => 0,
      CLK_COR_SEQ_1_1 => B"0110111100",
      CLK_COR_SEQ_1_2 => B"0001010000",
      CLK_COR_SEQ_1_3 => B"0000000000",
      CLK_COR_SEQ_1_4 => B"0000000000",
      CLK_COR_SEQ_1_ENABLE => B"1111",
      CLK_COR_SEQ_2_1 => B"0110111100",
      CLK_COR_SEQ_2_2 => B"0010110101",
      CLK_COR_SEQ_2_3 => B"0000000000",
      CLK_COR_SEQ_2_4 => B"0000000000",
      CLK_COR_SEQ_2_ENABLE => B"1111",
      CLK_COR_SEQ_2_USE => "TRUE",
      CLK_COR_SEQ_LEN => 2,
      CPLL_CFG => X"BC07DC",
      CPLL_FBDIV => 4,
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
      RXBUF_THRESH_UNDFLW => 8,
      RXCDRFREQRESET_TIME => B"00001",
      RXCDRPHRESET_TIME => B"00001",
      RXCDR_CFG => X"03000023FF40080020",
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
      RXOUT_DIV => 4,
      RXPCSRESET_TIME => B"00001",
      RXPHDLY_CFG => X"084020",
      RXPH_CFG => X"000000",
      RXPH_MONITOR_SEL => B"00000",
      RXPMARESET_TIME => B"00011",
      RXPRBS_ERR_LOOPBACK => '1',
      RXSLIDE_AUTO_WAIT => 7,
      RXSLIDE_MODE => "OFF",
      RX_BIAS_CFG => B"000000000100",
      RX_BUFFER_CFG => B"000000",
      RX_CLK25_DIV => 5,
      RX_CLKMUX_PD => '1',
      RX_CM_SEL => B"11",
      RX_CM_TRIM => B"010",
      RX_DATA_WIDTH => 20,
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
      RX_INT_DATAWIDTH => 0,
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
      SIM_RESET_SPEEDUP => "TRUE",
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
      TXOUT_DIV => 4,
      TXPCSRESET_TIME => B"00001",
      TXPHDLY_CFG => X"084020",
      TXPH_CFG => X"0780",
      TXPH_MONITOR_SEL => B"00000",
      TXPMARESET_TIME => B"00001",
      TX_CLK25_DIV => 5,
      TX_CLKMUX_PD => '1',
      TX_DATA_WIDTH => 20,
      TX_DEEMPH0 => B"00000",
      TX_DEEMPH1 => B"00000",
      TX_DRIVE_MODE => "DIRECT",
      TX_EIDLE_ASSERT_DELAY => B"110",
      TX_EIDLE_DEASSERT_DELAY => B"100",
      TX_INT_DATAWIDTH => 0,
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
      CPLLLOCK => resetdone,
      CPLLLOCKDETCLK => independent_clock_bufg,
      CPLLLOCKEN => \<const1>\,
      CPLLPD => \<const0>\,
      CPLLREFCLKLOST => CPLLREFCLKLOST,
      CPLLREFCLKSEL(2) => \<const0>\,
      CPLLREFCLKSEL(1) => \<const0>\,
      CPLLREFCLKSEL(0) => \<const1>\,
      CPLLRESET => CPLL_RESET,
      DMONITOROUT(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      DRPADDR(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      DRPCLK => gt0_drpclk_in,
      DRPDI(15 downto 0) => gt0_drpdi_in(15 downto 0),
      DRPDO(15 downto 0) => gt0_drpdo_out(15 downto 0),
      DRPEN => gt0_drpen_in,
      DRPRDY => gt0_drprdy_out,
      DRPWE => gt0_drpwe_in,
      EYESCANDATAERROR => gt0_eyescandataerror_out,
      EYESCANMODE => \<const0>\,
      EYESCANRESET => gt0_eyescanreset_in,
      EYESCANTRIGGER => gt0_eyescantrigger_in,
      GTGREFCLK => \<const0>\,
      GTNORTHREFCLK0 => \<const0>\,
      GTNORTHREFCLK1 => \<const0>\,
      GTREFCLK0 => gtrefclk_out,
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
      GTRXRESET => gt0_gtrxreset_in1_out,
      GTSOUTHREFCLK0 => \<const0>\,
      GTSOUTHREFCLK1 => \<const0>\,
      GTTXRESET => gt0_gttxreset_in0_out,
      GTXRXN => rxn,
      GTXRXP => rxp,
      GTXTXN => txn,
      GTXTXP => txp,
      LOOPBACK(2 downto 0) => gt0_loopback_in(2 downto 0),
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
      QPLLCLK => gt0_qplloutclk_out,
      QPLLREFCLK => gt0_qplloutrefclk_out,
      RESETOVRD => \<const0>\,
      RX8B10BEN => \<const1>\,
      RXBUFRESET => gt0_rxbufreset_in,
      RXBUFSTATUS(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      RXBYTEISALIGNED => gt0_rxbyteisaligned_out,
      RXBYTEREALIGN => gt0_rxbyterealign_out,
      RXCDRFREQRESET => \<const0>\,
      RXCDRHOLD => \<const0>\,
      RXCDRLOCK => n_11_gtxe2_i,
      RXCDROVRDEN => \<const0>\,
      RXCDRRESET => \<const0>\,
      RXCDRRESETRSV => \<const0>\,
      RXCHANBONDSEQ => NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED,
      RXCHANISALIGNED => NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED,
      RXCHANREALIGN => NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED,
      RXCHARISCOMMA(7 downto 2) => NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED(7 downto 2),
      RXCHARISCOMMA(1 downto 0) => O4(1 downto 0),
      RXCHARISK(7 downto 2) => NLW_gtxe2_i_RXCHARISK_UNCONNECTED(7 downto 2),
      RXCHARISK(1 downto 0) => O5(1 downto 0),
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
      RXCLKCORCNT(1 downto 0) => D(1 downto 0),
      RXCOMINITDET => NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED,
      RXCOMMADET => gt0_rxcommadet_out,
      RXCOMMADETEN => \<const1>\,
      RXCOMSASDET => NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED,
      RXCOMWAKEDET => NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED,
      RXDATA(63 downto 16) => NLW_gtxe2_i_RXDATA_UNCONNECTED(63 downto 16),
      RXDATA(15 downto 0) => O3(15 downto 0),
      RXDATAVALID => NLW_gtxe2_i_RXDATAVALID_UNCONNECTED,
      RXDDIEN => \<const0>\,
      RXDFEAGCHOLD => RXDFELFHOLD,
      RXDFEAGCOVRDEN => gt0_rxdfeagcovrden_in,
      RXDFECM1EN => \<const0>\,
      RXDFELFHOLD => RXDFELFHOLD,
      RXDFELFOVRDEN => \<const1>\,
      RXDFELPMRESET => gt0_rxdfelpmreset_in,
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
      RXDISPERR(7 downto 2) => NLW_gtxe2_i_RXDISPERR_UNCONNECTED(7 downto 2),
      RXDISPERR(1 downto 0) => O6(1 downto 0),
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
      RXLPMEN => gt0_rxlpmen_in,
      RXLPMHFHOLD => \<const0>\,
      RXLPMHFOVRDEN => \<const0>\,
      RXLPMLFHOLD => \<const0>\,
      RXLPMLFKLOVRDEN => \<const0>\,
      RXMCOMMAALIGNEN => gt0_rxmcommaalignen_in,
      RXMONITOROUT(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      RXMONITORSEL(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      RXNOTINTABLE(7 downto 2) => NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED(7 downto 2),
      RXNOTINTABLE(1 downto 0) => O7(1 downto 0),
      RXOOBRESET => \<const0>\,
      RXOSHOLD => \<const0>\,
      RXOSOVRDEN => \<const0>\,
      RXOUTCLK => rxoutclk,
      RXOUTCLKFABRIC => NLW_gtxe2_i_RXOUTCLKFABRIC_UNCONNECTED,
      RXOUTCLKPCS => NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED,
      RXOUTCLKSEL(2) => \<const0>\,
      RXOUTCLKSEL(1) => \<const1>\,
      RXOUTCLKSEL(0) => \<const0>\,
      RXPCOMMAALIGNEN => gt0_rxmcommaalignen_in,
      RXPCSRESET => gt0_rxpcsreset_in,
      RXPD(1) => RXPD(0),
      RXPD(0) => RXPD(0),
      RXPHALIGN => \<const0>\,
      RXPHALIGNDONE => NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED,
      RXPHALIGNEN => \<const0>\,
      RXPHDLYPD => \<const0>\,
      RXPHDLYRESET => \<const0>\,
      RXPHMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED(4 downto 0),
      RXPHOVRDEN => \<const0>\,
      RXPHSLIPMONITOR(4 downto 0) => NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED(4 downto 0),
      RXPMARESET => gt0_rxpmareset_in,
      RXPOLARITY => gt0_rxpolarity_in,
      RXPRBSCNTRESET => gt0_rxprbscntreset_in,
      RXPRBSERR => gt0_rxprbserr_out,
      RXPRBSSEL(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
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
      RXUSERRDY => RXUSERRDY,
      RXUSRCLK => CLK,
      RXUSRCLK2 => CLK,
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
      TXBUFSTATUS(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      TXCHARDISPMODE(7) => \<const0>\,
      TXCHARDISPMODE(6) => \<const0>\,
      TXCHARDISPMODE(5) => \<const0>\,
      TXCHARDISPMODE(4) => \<const0>\,
      TXCHARDISPMODE(3) => \<const0>\,
      TXCHARDISPMODE(2) => \<const0>\,
      TXCHARDISPMODE(1 downto 0) => I1(1 downto 0),
      TXCHARDISPVAL(7) => \<const0>\,
      TXCHARDISPVAL(6) => \<const0>\,
      TXCHARDISPVAL(5) => \<const0>\,
      TXCHARDISPVAL(4) => \<const0>\,
      TXCHARDISPVAL(3) => \<const0>\,
      TXCHARDISPVAL(2) => \<const0>\,
      TXCHARDISPVAL(1 downto 0) => I2(1 downto 0),
      TXCHARISK(7) => \<const0>\,
      TXCHARISK(6) => \<const0>\,
      TXCHARISK(5) => \<const0>\,
      TXCHARISK(4) => \<const0>\,
      TXCHARISK(3) => \<const0>\,
      TXCHARISK(2) => \<const0>\,
      TXCHARISK(1 downto 0) => I3(1 downto 0),
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
      TXDATA(31) => \<const0>\,
      TXDATA(30) => \<const0>\,
      TXDATA(29) => \<const0>\,
      TXDATA(28) => \<const0>\,
      TXDATA(27) => \<const0>\,
      TXDATA(26) => \<const0>\,
      TXDATA(25) => \<const0>\,
      TXDATA(24) => \<const0>\,
      TXDATA(23) => \<const0>\,
      TXDATA(22) => \<const0>\,
      TXDATA(21) => \<const0>\,
      TXDATA(20) => \<const0>\,
      TXDATA(19) => \<const0>\,
      TXDATA(18) => \<const0>\,
      TXDATA(17) => \<const0>\,
      TXDATA(16) => \<const0>\,
      TXDATA(15 downto 0) => Q(15 downto 0),
      TXDEEMPH => \<const0>\,
      TXDETECTRX => \<const0>\,
      TXDIFFCTRL(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      TXDIFFPD => \<const0>\,
      TXDLYBYPASS => \<const1>\,
      TXDLYEN => \<const0>\,
      TXDLYHOLD => \<const0>\,
      TXDLYOVRDEN => \<const0>\,
      TXDLYSRESET => \<const0>\,
      TXDLYSRESETDONE => NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED,
      TXDLYUPDOWN => \<const0>\,
      TXELECIDLE => TXPD(0),
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
      TXOUTCLK => txoutclk,
      TXOUTCLKFABRIC => n_38_gtxe2_i,
      TXOUTCLKPCS => n_39_gtxe2_i,
      TXOUTCLKSEL(2) => \<const1>\,
      TXOUTCLKSEL(1) => \<const0>\,
      TXOUTCLKSEL(0) => \<const0>\,
      TXPCSRESET => gt0_txpcsreset_in,
      TXPD(1) => TXPD(0),
      TXPD(0) => TXPD(0),
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
      TXPMARESET => gt0_txpmareset_in,
      TXPOLARITY => gt0_txpolarity_in,
      TXPOSTCURSOR(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      TXPOSTCURSORINV => \<const0>\,
      TXPRBSFORCEERR => gt0_txprbsforceerr_in,
      TXPRBSSEL(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      TXPRECURSOR(4 downto 0) => gt0_txprecursor_in(4 downto 0),
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
      TXUSERRDY => TXUSERRDY,
      TXUSRCLK => CLK,
      TXUSRCLK2 => CLK
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_clocking is
  port (
    AS : out STD_LOGIC_VECTOR ( 0 to 0 );
    mmcm_locked : out STD_LOGIC;
    O1 : out STD_LOGIC;
    gtrefclk_out : out STD_LOGIC;
    rxuserclk2 : out STD_LOGIC;
    userclk2 : out STD_LOGIC;
    reset : in STD_LOGIC;
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    txoutclk : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_clocking;

architecture STRUCTURE of gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_clocking is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal clkfbout : STD_LOGIC;
  signal clkout0 : STD_LOGIC;
  signal clkout1 : STD_LOGIC;
  signal \^mmcm_locked\ : STD_LOGIC;
  signal txoutclk_bufg : STD_LOGIC;
  signal NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_PSDONE_UNCONNECTED : STD_LOGIC;
  signal NLW_mmcm_adv_inst_DO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \MGT_RESET.RESET_INT_i_1\ : label is "soft_lutpair0";
  attribute box_type : string;
  attribute box_type of bufg_txoutclk : label is "PRIMITIVE";
  attribute box_type of bufg_userclk : label is "PRIMITIVE";
  attribute box_type of bufg_userclk2 : label is "PRIMITIVE";
  attribute box_type of ibufds_gtrefclk : label is "PRIMITIVE";
  attribute box_type of mmcm_adv_inst : label is "PRIMITIVE";
  attribute SOFT_HLUTNM of \pma_reset_pipe[3]_i_1\ : label is "soft_lutpair0";
begin
  mmcm_locked <= \^mmcm_locked\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\MGT_RESET.RESET_INT_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => reset,
      I1 => \^mmcm_locked\,
      O => O1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
bufg_txoutclk: unisim.vcomponents.BUFG
    port map (
      I => txoutclk,
      O => txoutclk_bufg
    );
bufg_userclk: unisim.vcomponents.BUFG
    port map (
      I => clkout1,
      O => rxuserclk2
    );
bufg_userclk2: unisim.vcomponents.BUFG
    port map (
      I => clkout0,
      O => userclk2
    );
ibufds_gtrefclk: unisim.vcomponents.IBUFDS_GTE2
    generic map(
      CLKCM_CFG => true,
      CLKRCV_TRST => true,
      CLKSWING_CFG => B"11"
    )
    port map (
      CEB => \<const0>\,
      I => gtrefclk_p,
      IB => gtrefclk_n,
      O => gtrefclk_out,
      ODIV2 => NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED
    );
mmcm_adv_inst: unisim.vcomponents.MMCME2_ADV
    generic map(
      BANDWIDTH => "OPTIMIZED",
      CLKFBOUT_MULT_F => 16.000000,
      CLKFBOUT_PHASE => 0.000000,
      CLKFBOUT_USE_FINE_PS => false,
      CLKIN1_PERIOD => 16.000000,
      CLKIN2_PERIOD => 0.000000,
      CLKOUT0_DIVIDE_F => 8.000000,
      CLKOUT0_DUTY_CYCLE => 0.500000,
      CLKOUT0_PHASE => 0.000000,
      CLKOUT0_USE_FINE_PS => false,
      CLKOUT1_DIVIDE => 16,
      CLKOUT1_DUTY_CYCLE => 0.500000,
      CLKOUT1_PHASE => 0.000000,
      CLKOUT1_USE_FINE_PS => false,
      CLKOUT2_DIVIDE => 1,
      CLKOUT2_DUTY_CYCLE => 0.500000,
      CLKOUT2_PHASE => 0.000000,
      CLKOUT2_USE_FINE_PS => false,
      CLKOUT3_DIVIDE => 1,
      CLKOUT3_DUTY_CYCLE => 0.500000,
      CLKOUT3_PHASE => 0.000000,
      CLKOUT3_USE_FINE_PS => false,
      CLKOUT4_CASCADE => false,
      CLKOUT4_DIVIDE => 1,
      CLKOUT4_DUTY_CYCLE => 0.500000,
      CLKOUT4_PHASE => 0.000000,
      CLKOUT4_USE_FINE_PS => false,
      CLKOUT5_DIVIDE => 1,
      CLKOUT5_DUTY_CYCLE => 0.500000,
      CLKOUT5_PHASE => 0.000000,
      CLKOUT5_USE_FINE_PS => false,
      CLKOUT6_DIVIDE => 1,
      CLKOUT6_DUTY_CYCLE => 0.500000,
      CLKOUT6_PHASE => 0.000000,
      CLKOUT6_USE_FINE_PS => false,
      COMPENSATION => "INTERNAL",
      DIVCLK_DIVIDE => 1,
      IS_CLKINSEL_INVERTED => '0',
      IS_PSEN_INVERTED => '0',
      IS_PSINCDEC_INVERTED => '0',
      IS_PWRDWN_INVERTED => '0',
      IS_RST_INVERTED => '0',
      REF_JITTER1 => 0.010000,
      REF_JITTER2 => 0.000000,
      SS_EN => "FALSE",
      SS_MODE => "CENTER_HIGH",
      SS_MOD_PERIOD => 10000,
      STARTUP_WAIT => false
    )
    port map (
      CLKFBIN => clkfbout,
      CLKFBOUT => clkfbout,
      CLKFBOUTB => NLW_mmcm_adv_inst_CLKFBOUTB_UNCONNECTED,
      CLKFBSTOPPED => NLW_mmcm_adv_inst_CLKFBSTOPPED_UNCONNECTED,
      CLKIN1 => txoutclk_bufg,
      CLKIN2 => \<const0>\,
      CLKINSEL => \<const1>\,
      CLKINSTOPPED => NLW_mmcm_adv_inst_CLKINSTOPPED_UNCONNECTED,
      CLKOUT0 => clkout0,
      CLKOUT0B => NLW_mmcm_adv_inst_CLKOUT0B_UNCONNECTED,
      CLKOUT1 => clkout1,
      CLKOUT1B => NLW_mmcm_adv_inst_CLKOUT1B_UNCONNECTED,
      CLKOUT2 => NLW_mmcm_adv_inst_CLKOUT2_UNCONNECTED,
      CLKOUT2B => NLW_mmcm_adv_inst_CLKOUT2B_UNCONNECTED,
      CLKOUT3 => NLW_mmcm_adv_inst_CLKOUT3_UNCONNECTED,
      CLKOUT3B => NLW_mmcm_adv_inst_CLKOUT3B_UNCONNECTED,
      CLKOUT4 => NLW_mmcm_adv_inst_CLKOUT4_UNCONNECTED,
      CLKOUT5 => NLW_mmcm_adv_inst_CLKOUT5_UNCONNECTED,
      CLKOUT6 => NLW_mmcm_adv_inst_CLKOUT6_UNCONNECTED,
      DADDR(6) => \<const0>\,
      DADDR(5) => \<const0>\,
      DADDR(4) => \<const0>\,
      DADDR(3) => \<const0>\,
      DADDR(2) => \<const0>\,
      DADDR(1) => \<const0>\,
      DADDR(0) => \<const0>\,
      DCLK => \<const0>\,
      DEN => \<const0>\,
      DI(15) => \<const0>\,
      DI(14) => \<const0>\,
      DI(13) => \<const0>\,
      DI(12) => \<const0>\,
      DI(11) => \<const0>\,
      DI(10) => \<const0>\,
      DI(9) => \<const0>\,
      DI(8) => \<const0>\,
      DI(7) => \<const0>\,
      DI(6) => \<const0>\,
      DI(5) => \<const0>\,
      DI(4) => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      DO(15 downto 0) => NLW_mmcm_adv_inst_DO_UNCONNECTED(15 downto 0),
      DRDY => NLW_mmcm_adv_inst_DRDY_UNCONNECTED,
      DWE => \<const0>\,
      LOCKED => \^mmcm_locked\,
      PSCLK => \<const0>\,
      PSDONE => NLW_mmcm_adv_inst_PSDONE_UNCONNECTED,
      PSEN => \<const0>\,
      PSINCDEC => \<const0>\,
      PWRDWN => \<const0>\,
      RST => reset
    );
\pma_reset_pipe[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => reset,
      I1 => \^mmcm_locked\,
      O => AS(0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_gt_common is
  port (
    gt0_qplloutclk_out : out STD_LOGIC;
    gt0_qplloutrefclk_out : out STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_gt_common;

architecture STRUCTURE of gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_gt_common is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal n_2_gtxe2_common_0_i : STD_LOGIC;
  signal n_5_gtxe2_common_0_i : STD_LOGIC;
  signal NLW_gtxe2_common_0_i_DRPRDY_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_0_i_QPLLFBCLKLOST_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_0_i_REFCLKOUTMONITOR_UNCONNECTED : STD_LOGIC;
  signal NLW_gtxe2_common_0_i_DRPDO_UNCONNECTED : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_gtxe2_common_0_i_QPLLDMONITOR_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute box_type : string;
  attribute box_type of gtxe2_common_0_i : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
gtxe2_common_0_i: unisim.vcomponents.GTXE2_COMMON
    generic map(
      BIAS_CFG => X"0000040000001000",
      COMMON_CFG => X"00000000",
      IS_DRPCLK_INVERTED => '0',
      IS_GTGREFCLK_INVERTED => '0',
      IS_QPLLLOCKDETCLK_INVERTED => '0',
      QPLL_CFG => X"06801C1",
      QPLL_CLKOUT_CFG => B"0000",
      QPLL_COARSE_FREQ_OVRD => B"010000",
      QPLL_COARSE_FREQ_OVRD_EN => '0',
      QPLL_CP => B"0000011111",
      QPLL_CP_MONITOR_EN => '0',
      QPLL_DMONITOR_SEL => '0',
      QPLL_FBDIV => B"0000100000",
      QPLL_FBDIV_MONITOR_EN => '0',
      QPLL_FBDIV_RATIO => '1',
      QPLL_INIT_CFG => X"000006",
      QPLL_LOCK_CFG => X"21E8",
      QPLL_LPF => B"1111",
      QPLL_REFCLK_DIV => 1,
      SIM_QPLLREFCLK_SEL => B"001",
      SIM_RESET_SPEEDUP => "FALSE",
      SIM_VERSION => "4.0"
    )
    port map (
      BGBYPASSB => \<const1>\,
      BGMONITORENB => \<const1>\,
      BGPDB => \<const1>\,
      BGRCALOVRD(4) => \<const0>\,
      BGRCALOVRD(3) => \<const0>\,
      BGRCALOVRD(2) => \<const0>\,
      BGRCALOVRD(1) => \<const0>\,
      BGRCALOVRD(0) => \<const0>\,
      DRPADDR(7) => \<const0>\,
      DRPADDR(6) => \<const0>\,
      DRPADDR(5) => \<const0>\,
      DRPADDR(4) => \<const0>\,
      DRPADDR(3) => \<const0>\,
      DRPADDR(2) => \<const0>\,
      DRPADDR(1) => \<const0>\,
      DRPADDR(0) => \<const0>\,
      DRPCLK => \<const0>\,
      DRPDI(15) => \<const0>\,
      DRPDI(14) => \<const0>\,
      DRPDI(13) => \<const0>\,
      DRPDI(12) => \<const0>\,
      DRPDI(11) => \<const0>\,
      DRPDI(10) => \<const0>\,
      DRPDI(9) => \<const0>\,
      DRPDI(8) => \<const0>\,
      DRPDI(7) => \<const0>\,
      DRPDI(6) => \<const0>\,
      DRPDI(5) => \<const0>\,
      DRPDI(4) => \<const0>\,
      DRPDI(3) => \<const0>\,
      DRPDI(2) => \<const0>\,
      DRPDI(1) => \<const0>\,
      DRPDI(0) => \<const0>\,
      DRPDO(15 downto 0) => NLW_gtxe2_common_0_i_DRPDO_UNCONNECTED(15 downto 0),
      DRPEN => \<const0>\,
      DRPRDY => NLW_gtxe2_common_0_i_DRPRDY_UNCONNECTED,
      DRPWE => \<const0>\,
      GTGREFCLK => \<const0>\,
      GTNORTHREFCLK0 => \<const0>\,
      GTNORTHREFCLK1 => \<const0>\,
      GTREFCLK0 => gtrefclk_out,
      GTREFCLK1 => \<const0>\,
      GTSOUTHREFCLK0 => \<const0>\,
      GTSOUTHREFCLK1 => \<const0>\,
      PMARSVD(7) => \<const0>\,
      PMARSVD(6) => \<const0>\,
      PMARSVD(5) => \<const0>\,
      PMARSVD(4) => \<const0>\,
      PMARSVD(3) => \<const0>\,
      PMARSVD(2) => \<const0>\,
      PMARSVD(1) => \<const0>\,
      PMARSVD(0) => \<const0>\,
      QPLLDMONITOR(7 downto 0) => NLW_gtxe2_common_0_i_QPLLDMONITOR_UNCONNECTED(7 downto 0),
      QPLLFBCLKLOST => NLW_gtxe2_common_0_i_QPLLFBCLKLOST_UNCONNECTED,
      QPLLLOCK => n_2_gtxe2_common_0_i,
      QPLLLOCKDETCLK => independent_clock_bufg,
      QPLLLOCKEN => \<const1>\,
      QPLLOUTCLK => gt0_qplloutclk_out,
      QPLLOUTREFCLK => gt0_qplloutrefclk_out,
      QPLLOUTRESET => \<const0>\,
      QPLLPD => \<const1>\,
      QPLLREFCLKLOST => n_5_gtxe2_common_0_i,
      QPLLREFCLKSEL(2) => \<const0>\,
      QPLLREFCLKSEL(1) => \<const0>\,
      QPLLREFCLKSEL(0) => \<const1>\,
      QPLLRESET => Q(0),
      QPLLRSVD1(15) => \<const0>\,
      QPLLRSVD1(14) => \<const0>\,
      QPLLRSVD1(13) => \<const0>\,
      QPLLRSVD1(12) => \<const0>\,
      QPLLRSVD1(11) => \<const0>\,
      QPLLRSVD1(10) => \<const0>\,
      QPLLRSVD1(9) => \<const0>\,
      QPLLRSVD1(8) => \<const0>\,
      QPLLRSVD1(7) => \<const0>\,
      QPLLRSVD1(6) => \<const0>\,
      QPLLRSVD1(5) => \<const0>\,
      QPLLRSVD1(4) => \<const0>\,
      QPLLRSVD1(3) => \<const0>\,
      QPLLRSVD1(2) => \<const0>\,
      QPLLRSVD1(1) => \<const0>\,
      QPLLRSVD1(0) => \<const0>\,
      QPLLRSVD2(4) => \<const1>\,
      QPLLRSVD2(3) => \<const1>\,
      QPLLRSVD2(2) => \<const1>\,
      QPLLRSVD2(1) => \<const1>\,
      QPLLRSVD2(0) => \<const1>\,
      RCALENB => \<const1>\,
      REFCLKOUTMONITOR => NLW_gtxe2_common_0_i_REFCLKOUTMONITOR_UNCONNECTED
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync is
  port (
    reset_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset_out : out STD_LOGIC
  );
  attribute INITIALISE : string;
  attribute INITIALISE of gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync : entity is "2'b11";
  attribute dont_touch : string;
  attribute dont_touch of gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync : entity is "yes";
end gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync;

architecture STRUCTURE of gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync is
  signal \<const0>\ : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => \<const0>\,
      PRE => reset_in,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg1,
      PRE => reset_in,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg2,
      PRE => reset_in,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg3,
      PRE => reset_in,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg4,
      PRE => reset_in,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg5,
      PRE => \<const0>\,
      Q => reset_out
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__3\ is
  port (
    reset_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__3\ : entity is "gig_ethernet_pcs_pma_0_reset_sync";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__3\ : entity is "2'b11";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__3\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__3\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__3\ is
  signal \<const0>\ : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => \<const0>\,
      PRE => reset_in,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg1,
      PRE => reset_in,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg2,
      PRE => reset_in,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg3,
      PRE => reset_in,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg4,
      PRE => reset_in,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg5,
      PRE => \<const0>\,
      Q => reset_out
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__4\ is
  port (
    reset_in : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__4\ : entity is "gig_ethernet_pcs_pma_0_reset_sync";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__4\ : entity is "2'b11";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__4\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__4\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__4\ is
  signal \<const0>\ : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal reset_sync_reg1 : STD_LOGIC;
  signal reset_sync_reg2 : STD_LOGIC;
  signal reset_sync_reg3 : STD_LOGIC;
  signal reset_sync_reg4 : STD_LOGIC;
  signal reset_sync_reg5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of reset_sync1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of reset_sync1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of reset_sync1 : label is "FDP";
  attribute box_type : string;
  attribute box_type of reset_sync1 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync2 : label is true;
  attribute SHREG_EXTRACT of reset_sync2 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync2 : label is "FDP";
  attribute box_type of reset_sync2 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync3 : label is true;
  attribute SHREG_EXTRACT of reset_sync3 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync3 : label is "FDP";
  attribute box_type of reset_sync3 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync4 : label is true;
  attribute SHREG_EXTRACT of reset_sync4 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync4 : label is "FDP";
  attribute box_type of reset_sync4 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync5 : label is true;
  attribute SHREG_EXTRACT of reset_sync5 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync5 : label is "FDP";
  attribute box_type of reset_sync5 : label is "PRIMITIVE";
  attribute ASYNC_REG of reset_sync6 : label is true;
  attribute SHREG_EXTRACT of reset_sync6 : label is "no";
  attribute XILINX_LEGACY_PRIM of reset_sync6 : label is "FDP";
  attribute box_type of reset_sync6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
reset_sync1: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => \<const0>\,
      PRE => reset_in,
      Q => reset_sync_reg1
    );
reset_sync2: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg1,
      PRE => reset_in,
      Q => reset_sync_reg2
    );
reset_sync3: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg2,
      PRE => reset_in,
      Q => reset_sync_reg3
    );
reset_sync4: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg3,
      PRE => reset_in,
      Q => reset_sync_reg4
    );
reset_sync5: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg4,
      PRE => reset_in,
      Q => reset_sync_reg5
    );
reset_sync6: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => reset_sync_reg5,
      PRE => \<const0>\,
      Q => reset_out
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_resets is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    independent_clock_bufg : in STD_LOGIC;
    AS : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_resets;

architecture STRUCTURE of gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_resets is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal pma_reset_pipe : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \pma_reset_pipe_reg[0]\ : label is true;
  attribute ASYNC_REG of \pma_reset_pipe_reg[1]\ : label is true;
  attribute ASYNC_REG of \pma_reset_pipe_reg[2]\ : label is true;
  attribute ASYNC_REG of \pma_reset_pipe_reg[3]\ : label is true;
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\pma_reset_pipe_reg[0]\: unisim.vcomponents.FDPE
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \<const0>\,
      PRE => AS(0),
      Q => pma_reset_pipe(0)
    );
\pma_reset_pipe_reg[1]\: unisim.vcomponents.FDPE
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => pma_reset_pipe(0),
      PRE => AS(0),
      Q => pma_reset_pipe(1)
    );
\pma_reset_pipe_reg[2]\: unisim.vcomponents.FDPE
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => pma_reset_pipe(1),
      PRE => AS(0),
      Q => pma_reset_pipe(2)
    );
\pma_reset_pipe_reg[3]\: unisim.vcomponents.FDPE
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => pma_reset_pipe(2),
      PRE => AS(0),
      Q => Q(0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__17\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__17\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__17\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__17\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__17\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__17\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__18\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__18\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__18\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__18\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__18\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__18\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__19\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__19\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__19\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__19\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__19\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__19\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__20\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__20\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__20\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__20\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__20\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__20\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__21\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__21\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__21\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__21\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__21\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__21\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__22\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__22\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__22\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__22\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__22\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__22\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__23\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__23\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__23\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__23\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__23\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__23\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__24\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__24\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__24\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__24\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__24\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__24\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__25\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__25\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__25\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__25\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__25\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__25\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__26\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__26\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__26\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__26\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__26\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__26\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__27\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__27\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__27\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__27\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__27\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__27\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__28\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__28\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__28\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__28\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__28\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__28\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__29\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__29\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__29\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__29\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__29\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__29\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__30\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__30\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__30\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__30\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__30\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__30\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__31\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__31\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__31\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__31\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__31\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__31\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__32\ is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC;
    data_out : out STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__32\ : entity is "gig_ethernet_pcs_pma_0_sync_block";
  attribute INITIALISE : string;
  attribute INITIALISE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__32\ : entity is "2'b00";
  attribute dont_touch : string;
  attribute dont_touch of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__32\ : entity is "yes";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__32\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__32\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_in,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => clk,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0sync_block__parameterized0\ is
  port (
    SIGNAL_DETECT_MOD : out STD_LOGIC;
    I1 : in STD_LOGIC;
    signal_detect : in STD_LOGIC;
    I2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0sync_block__parameterized0\ : entity is "sync_block";
end \gig_ethernet_pcs_pma_0sync_block__parameterized0\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0sync_block__parameterized0\ is
  signal GND_1 : STD_LOGIC;
  signal VCC_1 : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal data_sync1 : STD_LOGIC;
  signal data_sync2 : STD_LOGIC;
  signal data_sync3 : STD_LOGIC;
  signal data_sync4 : STD_LOGIC;
  signal data_sync5 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of data_sync_reg1 : label is true;
  attribute SHREG_EXTRACT : string;
  attribute SHREG_EXTRACT of data_sync_reg1 : label is "no";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of data_sync_reg1 : label is "FD";
  attribute box_type : string;
  attribute box_type of data_sync_reg1 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg2 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg2 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg2 : label is "FD";
  attribute box_type of data_sync_reg2 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg3 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg3 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg3 : label is "FD";
  attribute box_type of data_sync_reg3 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg4 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg4 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg4 : label is "FD";
  attribute box_type of data_sync_reg4 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg5 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg5 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg5 : label is "FD";
  attribute box_type of data_sync_reg5 : label is "PRIMITIVE";
  attribute ASYNC_REG of data_sync_reg6 : label is true;
  attribute SHREG_EXTRACT of data_sync_reg6 : label is "no";
  attribute XILINX_LEGACY_PRIM of data_sync_reg6 : label is "FD";
  attribute box_type of data_sync_reg6 : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => GND_1
    );
SIGNAL_DETECT_REG_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => data_out,
      I1 => I1,
      O => SIGNAL_DETECT_MOD
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => VCC_1
    );
data_sync_reg1: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I2,
      CE => VCC_1,
      D => signal_detect,
      Q => data_sync1,
      R => GND_1
    );
data_sync_reg2: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I2,
      CE => VCC_1,
      D => data_sync1,
      Q => data_sync2,
      R => GND_1
    );
data_sync_reg3: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I2,
      CE => VCC_1,
      D => data_sync2,
      Q => data_sync3,
      R => GND_1
    );
data_sync_reg4: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I2,
      CE => VCC_1,
      D => data_sync3,
      Q => data_sync4,
      R => GND_1
    );
data_sync_reg5: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I2,
      CE => VCC_1,
      D => data_sync4,
      Q => data_sync5,
      R => GND_1
    );
data_sync_reg6: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I2,
      CE => VCC_1,
      D => data_sync5,
      Q => data_out,
      R => GND_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity gig_ethernet_pcs_pma_0GPCS_PMA_GEN is
  port (
    SS : out STD_LOGIC_VECTOR ( 0 to 0 );
    O1 : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 6 downto 0 );
    txchardispmode : out STD_LOGIC;
    txcharisk : out STD_LOGIC;
    gmii_rx_dv : out STD_LOGIC;
    txchardispval : out STD_LOGIC;
    O2 : out STD_LOGIC;
    O3 : out STD_LOGIC;
    O4 : out STD_LOGIC;
    encommaalign : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC;
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    I2 : in STD_LOGIC;
    txbuferr : in STD_LOGIC;
    rxbuferr : in STD_LOGIC;
    gt0_rxdisperr_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxnotintable_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_rxcharisk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxchariscomma_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    toggle : in STD_LOGIC;
    I3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    signal_detect : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 );
    I4 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end gig_ethernet_pcs_pma_0GPCS_PMA_GEN;

architecture STRUCTURE of gig_ethernet_pcs_pma_0GPCS_PMA_GEN is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal D_0 : STD_LOGIC;
  signal I350_in : STD_LOGIC;
  signal LOOPBACK_INT : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC;
  signal \^o3\ : STD_LOGIC;
  signal Q : STD_LOGIC;
  signal RESET_INT : STD_LOGIC;
  signal RESET_INT_PIPE : STD_LOGIC;
  signal RXEVEN : STD_LOGIC;
  signal RXNOTINTABLE_INT : STD_LOGIC;
  signal RXNOTINTABLE_SRL : STD_LOGIC;
  signal SIGNAL_DETECT_MOD : STD_LOGIC;
  signal SRESET : STD_LOGIC;
  signal SRESET_PIPE : STD_LOGIC;
  signal \^ss\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal SYNC_STATUS_REG0 : STD_LOGIC;
  signal TXBUFERR_INT : STD_LOGIC;
  signal VCC_2 : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[10]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[11]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[12]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[13]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_11\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_12\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_13\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_14\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_16\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_17\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_18\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_19\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_20\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_21\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_22\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_23\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_24\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_26\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_27\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_28\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_29\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_31\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_32\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_33\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_34\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_35\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_36\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_37\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_9\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[3]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[4]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[5]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[6]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[7]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[8]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[9]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[10]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[11]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[12]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[13]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_11\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_12\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_13\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_14\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_16\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_17\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_18\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_19\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_20\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_21\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_22\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_23\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_24\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_26\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_27\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_28\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_29\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_31\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_32\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_33\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_34\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_35\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_36\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_37\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_9\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[3]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[4]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[5]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[6]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[7]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[8]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[9]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\ : STD_LOGIC;
  signal \n_0_MGT_RESET.SRESET_i_1\ : STD_LOGIC;
  signal \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1\ : STD_LOGIC;
  signal \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1\ : STD_LOGIC;
  signal \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1\ : STD_LOGIC;
  signal n_0_STATUS_VECTOR_0_PRE_reg : STD_LOGIC;
  signal n_0_TRANSMITTER : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_1\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_4\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_5\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_1\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_4\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_5\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT[1]_i_1\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[0]_i_1\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[1]_i_1\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7]\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1\ : STD_LOGIC;
  signal \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\ : STD_LOGIC;
  signal n_10_TRANSMITTER : STD_LOGIC;
  signal n_11_TRANSMITTER : STD_LOGIC;
  signal n_12_TRANSMITTER : STD_LOGIC;
  signal n_13_TRANSMITTER : STD_LOGIC;
  signal n_14_TRANSMITTER : STD_LOGIC;
  signal n_15_TRANSMITTER : STD_LOGIC;
  signal n_16_TRANSMITTER : STD_LOGIC;
  signal n_17_TRANSMITTER : STD_LOGIC;
  signal n_18_TRANSMITTER : STD_LOGIC;
  signal n_19_TRANSMITTER : STD_LOGIC;
  signal n_1_TRANSMITTER : STD_LOGIC;
  signal n_20_TRANSMITTER : STD_LOGIC;
  signal n_21_TRANSMITTER : STD_LOGIC;
  signal n_2_TRANSMITTER : STD_LOGIC;
  signal n_3_SYNCHRONISATION : STD_LOGIC;
  signal n_3_TRANSMITTER : STD_LOGIC;
  signal n_4_TRANSMITTER : STD_LOGIC;
  signal n_5_TRANSMITTER : STD_LOGIC;
  signal n_6_TRANSMITTER : STD_LOGIC;
  signal n_7_TRANSMITTER : STD_LOGIC;
  signal n_8_TRANSMITTER : STD_LOGIC;
  signal n_9_TRANSMITTER : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_out : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_55_in : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of DELAY_RXDISPERR : label is "SRL16";
  attribute box_type : string;
  attribute box_type of DELAY_RXDISPERR : label is "PRIMITIVE";
  attribute srl_name : string;
  attribute srl_name of DELAY_RXDISPERR : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/DELAY_RXDISPERR ";
  attribute XILINX_LEGACY_PRIM of DELAY_RXNOTINTABLE : label is "SRL16";
  attribute box_type of DELAY_RXNOTINTABLE : label is "PRIMITIVE";
  attribute srl_name of DELAY_RXNOTINTABLE : label is "U0/\pcs_pma_block_i/gig_ethernet_pcs_pma_0_core/gpcs_pma_inst/DELAY_RXNOTINTABLE ";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[10]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[11]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[12]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[13]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_11\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_14\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_17\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_18\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_2\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_20\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_26\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_29\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_31\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_33\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_35\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_36\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_37\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[1]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[2]_i_1\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[3]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[4]_i_1\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[5]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[6]_i_1\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[7]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[8]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.RX_RST_SM[9]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[10]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[11]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[12]_i_1\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[13]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_11\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_14\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_17\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_18\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_2\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_20\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_26\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_29\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_31\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_33\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_35\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_36\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_37\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[1]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[2]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[3]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[4]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[5]_i_1\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[6]_i_1\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[7]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[8]_i_1\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \FSM_onehot_USE_ROCKET_IO.TX_RST_SM[9]_i_1\ : label is "soft_lutpair113";
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \MGT_RESET.RESET_INT_PIPE_reg\ : label is true;
  attribute ASYNC_REG of \MGT_RESET.RESET_INT_reg\ : label is true;
  attribute ASYNC_REG of \MGT_RESET.SRESET_PIPE_reg\ : label is true;
  attribute ASYNC_REG of \MGT_RESET.SRESET_reg\ : label is true;
  attribute SOFT_HLUTNM of \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.MGT_RX_RESET_INT_i_3\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.MGT_RX_RESET_INT_i_5\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.MGT_RX_RESET_INT_i_6\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.MGT_TX_RESET_INT_i_3\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.MGT_TX_RESET_INT_i_5\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.MGT_TX_RESET_INT_i_6\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT[1]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[0]_i_1\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\ : label is "soft_lutpair121";
begin
  O1 <= \^o1\;
  O2 <= \^o2\;
  O3 <= \^o3\;
  SS(0) <= \^ss\(0);
DELAY_RXDISPERR: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => \<const0>\,
      A1 => \<const0>\,
      A2 => \<const1>\,
      A3 => \<const0>\,
      CE => VCC_2,
      CLK => I1,
      D => D_0,
      Q => Q
    );
DELAY_RXNOTINTABLE: unisim.vcomponents.SRL16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => \<const0>\,
      A1 => \<const0>\,
      A2 => \<const1>\,
      A3 => \<const0>\,
      CE => VCC_2,
      CLK => I1,
      D => RXNOTINTABLE_INT,
      Q => RXNOTINTABLE_SRL
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[10]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[11]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[12]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[13]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => RESET_INT,
      I1 => p_0_in,
      O => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3\,
      I1 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6\,
      I2 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_10\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_11\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04040404040404FF"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_27\,
      I2 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_28\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_29\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_12\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE8"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_31\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_29\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_13\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_28\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_14\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      I5 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_16\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_32\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_17\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_18\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020200"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_33\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_19\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_2\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_20\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_21\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_34\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_22\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000100010001000F"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_35\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_36\,
      I3 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_37\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_23\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\,
      I2 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_34\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_24\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_26\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_27\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_28\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_29\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEEEFEEEEEAAAA"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_7\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_8\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_9\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_10\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_30\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_31\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_32\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_33\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_34\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_35\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_36\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEEE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_37\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAAABA00"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_11\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_12\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_13\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_14\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_16\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F01010F0F01000"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_17\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_18\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_19\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_20\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666FFFFF666F666"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_21\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_22\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_23\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_24\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_7\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFEE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_26\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_15\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_8\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000003"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      I1 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_26\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_25\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_9\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[1]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[2]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[3]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[4]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[5]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[6]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[7]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[8]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_6\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_4\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[9]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \<const0>\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[0]\,
      S => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[10]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[11]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[12]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[13]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[14]_i_2\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[1]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[1]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[2]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[3]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[4]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[5]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[6]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[7]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[8]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM[9]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      R => p_0_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[10]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[11]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[12]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[13]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => RESET_INT,
      I1 => TXBUFERR_INT,
      O => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3\,
      I1 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6\,
      I2 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_10\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_11\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"04040404040404FF"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_27\,
      I2 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_28\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_29\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_12\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFE8"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_31\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_29\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_13\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_28\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_14\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      I5 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_16\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_17\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_32\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_17\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_18\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_18\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000020200"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_33\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_19\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A800"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_2\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_20\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_20\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_21\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_34\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_22\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000100010001000F"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_35\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_36\,
      I3 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_37\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_23\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\,
      I2 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_34\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_24\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_26\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_26\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_27\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_28\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_29\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_29\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEFEEEFEEEEEAAAA"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_7\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_8\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_9\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_10\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_30\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_31\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_32\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_32\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_33\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_33\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_34\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_34\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_35\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_36\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_37\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEEE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_37\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBAAABA00"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_11\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_12\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_13\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_14\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_16\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F01010F0F01000"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_17\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_18\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_19\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_20\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F666FFFFF666F666"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_21\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_22\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_23\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_24\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_7\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFFEE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_26\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_15\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_8\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000003"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      I1 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_26\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_25\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_9\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[1]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[2]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[3]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[4]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[5]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[6]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[7]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[8]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_6\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_4\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_3\,
      O => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[9]_i_1\
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \<const0>\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[0]\,
      S => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[10]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[11]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[12]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[13]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[14]_i_2\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[1]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[1]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[2]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[3]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[4]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[5]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[6]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[7]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[8]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\,
      R => p_1_out
    );
\FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM[9]_i_1\,
      Q => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      R => p_1_out
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\MGT_RESET.RESET_INT_PIPE_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \<const0>\,
      PRE => I2,
      Q => RESET_INT_PIPE
    );
\MGT_RESET.RESET_INT_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => RESET_INT_PIPE,
      PRE => I2,
      Q => RESET_INT
    );
\MGT_RESET.SRESET_PIPE_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => RESET_INT,
      Q => SRESET_PIPE,
      R => \<const0>\
    );
\MGT_RESET.SRESET_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => SRESET_PIPE,
      I1 => RESET_INT,
      O => \n_0_MGT_RESET.SRESET_i_1\
    );
\MGT_RESET.SRESET_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_MGT_RESET.SRESET_i_1\,
      Q => SRESET,
      R => \<const0>\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => configuration_vector(0),
      I1 => SRESET,
      O => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => configuration_vector(1),
      I1 => SRESET,
      O => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => configuration_vector(2),
      I1 => SRESET,
      O => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[1]_i_1\,
      Q => LOOPBACK_INT,
      R => \<const0>\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[2]_i_1\,
      Q => \^o3\,
      R => \<const0>\
    );
\NO_MANAGEMENT.CONFIGURATION_VECTOR_REG_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_NO_MANAGEMENT.CONFIGURATION_VECTOR_REG[3]_i_1\,
      Q => \^o2\,
      R => \<const0>\
    );
RECEIVER: entity work.\gig_ethernet_pcs_pma_0RX__parameterized0\
    port map (
      D_0 => D_0,
      I1 => I1,
      I2 => \^o1\,
      I3 => \n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg\,
      I350_in => I350_in,
      I4 => n_3_SYNCHRONISATION,
      I5 => \^o3\,
      I6 => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0]\,
      I7 => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1]\,
      Q(7) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7]\,
      Q(6) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6]\,
      Q(5) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5]\,
      Q(4) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4]\,
      Q(3) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3]\,
      Q(2) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2]\,
      Q(1) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1]\,
      Q(0) => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0]\,
      RXEVEN => RXEVEN,
      RXNOTINTABLE_INT => RXNOTINTABLE_INT,
      SR(0) => \^o2\,
      SYNC_STATUS_REG0 => SYNC_STATUS_REG0,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      p_0_in => p_0_in,
      p_55_in => p_55_in,
      status_vector(2 downto 0) => status_vector(4 downto 2)
    );
RXDISPERR_REG_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => Q,
      Q => status_vector(5),
      R => \<const0>\
    );
RXNOTINTABLE_REG_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => RXNOTINTABLE_SRL,
      Q => status_vector(6),
      R => \<const0>\
    );
STATUS_VECTOR_0_PRE_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => p_55_in,
      Q => n_0_STATUS_VECTOR_0_PRE_reg,
      R => \<const0>\
    );
\STATUS_VECTOR_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_STATUS_VECTOR_0_PRE_reg,
      Q => status_vector(0),
      R => \<const0>\
    );
\STATUS_VECTOR_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_STATUS_VECTOR_0_PRE_reg,
      Q => status_vector(1),
      R => \<const0>\
    );
SYNCHRONISATION: entity work.gig_ethernet_pcs_pma_0SYNCHRONISE
    port map (
      D_0 => D_0,
      I1 => I1,
      I2 => \^o1\,
      I3 => \n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg\,
      I350_in => I350_in,
      I4 => \n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg\,
      LOOPBACK_INT => LOOPBACK_INT,
      O1 => n_3_SYNCHRONISATION,
      RXEVEN => RXEVEN,
      RXNOTINTABLE_INT => RXNOTINTABLE_INT,
      SIGNAL_DETECT_MOD => SIGNAL_DETECT_MOD,
      SYNC_STATUS_REG0 => SYNC_STATUS_REG0,
      encommaalign => encommaalign,
      p_0_in => p_0_in,
      p_55_in => p_55_in
    );
SYNC_SIGNAL_DETECT: entity work.\gig_ethernet_pcs_pma_0sync_block__parameterized0\
    port map (
      I1 => \^o3\,
      I2 => I1,
      SIGNAL_DETECT_MOD => SIGNAL_DETECT_MOD,
      signal_detect => signal_detect
    );
TRANSMITTER: entity work.\gig_ethernet_pcs_pma_0TX__parameterized0\
    port map (
      D(3) => n_3_TRANSMITTER,
      D(2) => n_4_TRANSMITTER,
      D(1) => n_5_TRANSMITTER,
      D(0) => n_6_TRANSMITTER,
      I1 => I1,
      I2 => \^ss\(0),
      I3(7 downto 0) => I3(7 downto 0),
      LOOPBACK_INT => LOOPBACK_INT,
      O1 => n_0_TRANSMITTER,
      O10(7) => n_13_TRANSMITTER,
      O10(6) => n_14_TRANSMITTER,
      O10(5) => n_15_TRANSMITTER,
      O10(4) => n_16_TRANSMITTER,
      O10(3) => n_17_TRANSMITTER,
      O10(2) => n_18_TRANSMITTER,
      O10(1) => n_19_TRANSMITTER,
      O10(0) => n_20_TRANSMITTER,
      O11 => n_21_TRANSMITTER,
      O2 => n_1_TRANSMITTER,
      O3 => n_2_TRANSMITTER,
      O4 => n_7_TRANSMITTER,
      O5 => n_8_TRANSMITTER,
      O6 => n_9_TRANSMITTER,
      O7 => n_10_TRANSMITTER,
      O8 => n_11_TRANSMITTER,
      O9 => n_12_TRANSMITTER,
      SR(0) => \^o2\,
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_rxchariscomma_out(0) => gt0_rxchariscomma_out(0),
      gt0_rxcharisk_out(0) => gt0_rxcharisk_out(0)
    );
\USE_ROCKET_IO.MGT_RX_RESET_INT_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0001"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[4]\,
      I3 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3\,
      I4 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_4\,
      I5 => p_0_out,
      O => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_1\
    );
\USE_ROCKET_IO.MGT_RX_RESET_INT_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[12]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[13]\,
      O => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2\
    );
\USE_ROCKET_IO.MGT_RX_RESET_INT_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[5]\,
      O => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_3\
    );
\USE_ROCKET_IO.MGT_RX_RESET_INT_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A0A00000A0B"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[9]\,
      I2 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6\,
      I3 => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_2\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[14]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[8]\,
      O => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_4\
    );
\USE_ROCKET_IO.MGT_RX_RESET_INT_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[7]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[6]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[3]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[2]\,
      O => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_5\
    );
\USE_ROCKET_IO.MGT_RX_RESET_INT_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[10]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.RX_RST_SM_reg[11]\,
      O => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_6\
    );
\USE_ROCKET_IO.MGT_RX_RESET_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_USE_ROCKET_IO.MGT_RX_RESET_INT_i_1\,
      Q => \^o1\,
      R => \<const0>\
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF0001"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[4]\,
      I3 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3\,
      I4 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_4\,
      I5 => p_1_out,
      O => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_1\
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[12]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[13]\,
      O => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2\
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[5]\,
      O => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_3\
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000A0A00000A0B"
    )
    port map (
      I0 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_5\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[9]\,
      I2 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6\,
      I3 => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_2\,
      I4 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[14]\,
      I5 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[8]\,
      O => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_4\
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[7]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[6]\,
      I2 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[3]\,
      I3 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[2]\,
      O => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_5\
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[10]\,
      I1 => \n_0_FSM_onehot_USE_ROCKET_IO.TX_RST_SM_reg[11]\,
      O => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_6\
    );
\USE_ROCKET_IO.MGT_TX_RESET_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_USE_ROCKET_IO.MGT_TX_RESET_INT_i_1\,
      Q => \^ss\(0),
      R => \<const0>\
    );
\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => rxbuferr,
      I1 => LOOPBACK_INT,
      I2 => \^o1\,
      O => \n_0_USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT[1]_i_1\
    );
\USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_USE_ROCKET_IO.NO_1588.RXBUFSTATUS_INT[1]_i_1\,
      Q => p_0_in,
      R => \<const0>\
    );
\USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_12_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXCHARISCOMMA_INT_reg\,
      R => \^o1\
    );
\USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_11_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXCHARISK_INT_reg\,
      R => \^o1\
    );
\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => I4(0),
      I1 => LOOPBACK_INT,
      I2 => \^o1\,
      O => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[0]_i_1\
    );
\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => I4(1),
      I1 => LOOPBACK_INT,
      I2 => \^o1\,
      O => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[1]_i_1\
    );
\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[0]_i_1\,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[0]\,
      R => \<const0>\
    );
\USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT[1]_i_1\,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXCLKCORCNT_INT_reg[1]\,
      R => \<const0>\
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_20_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[0]\,
      R => \^o1\
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_19_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[1]\,
      R => \^o1\
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_18_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[2]\,
      R => \^o1\
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_17_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[3]\,
      R => \^o1\
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_16_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[4]\,
      R => \^o1\
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_15_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[5]\,
      R => \^o1\
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_14_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[6]\,
      R => \^o1\
    );
\USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_13_TRANSMITTER,
      Q => \n_0_USE_ROCKET_IO.NO_1588.RXDATA_INT_reg[7]\,
      R => \^o1\
    );
\USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => gt0_rxdisperr_out(0),
      I1 => LOOPBACK_INT,
      I2 => \^o1\,
      O => \n_0_USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1\
    );
\USE_ROCKET_IO.NO_1588.RXDISPERR_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_USE_ROCKET_IO.NO_1588.RXDISPERR_INT_i_1\,
      Q => D_0,
      R => \<const0>\
    );
\USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => gt0_rxnotintable_out(0),
      I1 => LOOPBACK_INT,
      I2 => \^o1\,
      O => \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\
    );
\USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_USE_ROCKET_IO.NO_1588.RXNOTINTABLE_INT_i_1\,
      Q => RXNOTINTABLE_INT,
      R => \<const0>\
    );
\USE_ROCKET_IO.TXBUFERR_INT_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => txbuferr,
      Q => TXBUFERR_INT,
      R => \^ss\(0)
    );
\USE_ROCKET_IO.TXCHARDISPMODE_reg\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_1_TRANSMITTER,
      Q => txchardispmode,
      R => \^ss\(0)
    );
\USE_ROCKET_IO.TXCHARDISPVAL_reg\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_TRANSMITTER,
      Q => txchardispval,
      R => \<const0>\
    );
\USE_ROCKET_IO.TXCHARISK_reg\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_10_TRANSMITTER,
      Q => txcharisk,
      R => \^ss\(0)
    );
\USE_ROCKET_IO.TXDATA_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_6_TRANSMITTER,
      Q => D(0),
      R => \<const0>\
    );
\USE_ROCKET_IO.TXDATA_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_5_TRANSMITTER,
      Q => D(1),
      R => \<const0>\
    );
\USE_ROCKET_IO.TXDATA_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_9_TRANSMITTER,
      Q => D(2),
      S => n_21_TRANSMITTER
    );
\USE_ROCKET_IO.TXDATA_reg[3]\: unisim.vcomponents.FDSE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_8_TRANSMITTER,
      Q => D(3),
      S => n_21_TRANSMITTER
    );
\USE_ROCKET_IO.TXDATA_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_4_TRANSMITTER,
      Q => D(4),
      R => \<const0>\
    );
\USE_ROCKET_IO.TXDATA_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_7_TRANSMITTER,
      Q => D(5),
      S => n_21_TRANSMITTER
    );
\USE_ROCKET_IO.TXDATA_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_3_TRANSMITTER,
      Q => D(6),
      R => \<const0>\
    );
\USE_ROCKET_IO.TXDATA_reg[7]\: unisim.vcomponents.FDSE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_2_TRANSMITTER,
      Q => D(7),
      S => n_21_TRANSMITTER
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
VCC_1: unisim.vcomponents.VCC
    port map (
      P => VCC_2
    );
\txchardispmode_double[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \^ss\(0),
      I1 => toggle,
      O => O4
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt__parameterized0\ is
  port (
    resetdone : out STD_LOGIC;
    CPLLREFCLKLOST : out STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    O1 : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    O2 : out STD_LOGIC;
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O7 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    independent_clock_bufg : in STD_LOGIC;
    CPLL_RESET : in STD_LOGIC;
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpen_in : in STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    gt0_gtrxreset_in1_out : in STD_LOGIC;
    gt0_gttxreset_in0_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    RXDFELFHOLD : in STD_LOGIC;
    gt0_rxdfeagcovrden_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxmcommaalignen_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    RXUSERRDY : in STD_LOGIC;
    CLK : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    TXUSERRDY : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt__parameterized0\ : entity is "gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt__parameterized0\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt__parameterized0\ is
begin
gt0_GTWIZARD_i: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_GT__parameterized0\
    port map (
      CLK => CLK,
      CPLLREFCLKLOST => CPLLREFCLKLOST,
      CPLL_RESET => CPLL_RESET,
      D(1 downto 0) => D(1 downto 0),
      I1(1 downto 0) => I1(1 downto 0),
      I2(1 downto 0) => I2(1 downto 0),
      I3(1 downto 0) => I3(1 downto 0),
      O1 => O1,
      O2 => O2,
      O3(15 downto 0) => O3(15 downto 0),
      O4(1 downto 0) => O4(1 downto 0),
      O5(1 downto 0) => O5(1 downto 0),
      O6(1 downto 0) => O6(1 downto 0),
      O7(1 downto 0) => O7(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXDFELFHOLD => RXDFELFHOLD,
      RXPD(0) => RXPD(0),
      RXUSERRDY => RXUSERRDY,
      TXPD(0) => TXPD(0),
      TXUSERRDY => TXUSERRDY,
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr_in(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      gt0_drpclk_in => gt0_drpclk_in,
      gt0_drpdi_in(15 downto 0) => gt0_drpdi_in(15 downto 0),
      gt0_drpdo_out(15 downto 0) => gt0_drpdo_out(15 downto 0),
      gt0_drpen_in => gt0_drpen_in,
      gt0_drprdy_out => gt0_drprdy_out,
      gt0_drpwe_in => gt0_drpwe_in,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_gtrxreset_in1_out => gt0_gtrxreset_in1_out,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdfeagcovrden_in => gt0_rxdfeagcovrden_in,
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmcommaalignen_in => gt0_rxmcommaalignen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_txbufstatus_out(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gtrefclk_out => gtrefclk_out,
      independent_clock_bufg => independent_clock_bufg,
      resetdone => resetdone,
      rxn => rxn,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_RX_STARTUP_FSM__parameterized0\ is
  port (
    O1 : out STD_LOGIC;
    RXUSERRDY : out STD_LOGIC;
    RXDFELFHOLD : out STD_LOGIC;
    gt0_gtrxreset_in1_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    I1 : in STD_LOGIC;
    mmcm_locked_out : in STD_LOGIC;
    data_out : in STD_LOGIC;
    resetdone : in STD_LOGIC;
    CPLLREFCLKLOST : in STD_LOGIC;
    I4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_out0_in : in STD_LOGIC;
    rx_cdrlocked : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_RX_STARTUP_FSM__parameterized0\ : entity is "gig_ethernet_pcs_pma_0_RX_STARTUP_FSM";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_RX_STARTUP_FSM__parameterized0\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_RX_STARTUP_FSM__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal GTRXRESET : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^rxdfelfhold\ : STD_LOGIC;
  signal \^rxuserrdy\ : STD_LOGIC;
  signal adapt_count_reset : STD_LOGIC;
  signal \adapt_wait_hw.adapt_count_reg\ : STD_LOGIC_VECTOR ( 22 downto 0 );
  signal cplllock_sync : STD_LOGIC;
  signal data_out_0 : STD_LOGIC;
  signal data_valid_sync : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_11\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_12\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_13\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_14\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_15\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_16\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[10]_i_9\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[1]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[1]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[3]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[4]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[5]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[6]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[7]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[8]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state[9]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[0]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[10]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[1]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[2]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[3]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[4]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[5]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[6]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[7]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[8]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_rx_state_reg[9]\ : STD_LOGIC;
  signal n_0_RXDFEAGCHOLD_i_1 : STD_LOGIC;
  signal n_0_RXDFEAGCHOLD_i_2 : STD_LOGIC;
  signal n_0_RXUSERRDY_i_1 : STD_LOGIC;
  signal n_0_adapt_count_reset_i_1 : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[0]_i_6\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[12]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[12]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[12]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[12]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[16]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[16]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[16]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[16]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[20]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[20]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[20]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[4]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[4]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[4]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[4]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[8]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[8]_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[8]_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count[8]_i_5\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.time_out_adapt_i_1\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.time_out_adapt_i_2\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.time_out_adapt_i_3\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.time_out_adapt_i_4\ : STD_LOGIC;
  signal \n_0_adapt_wait_hw.time_out_adapt_i_5\ : STD_LOGIC;
  signal n_0_check_tlock_max_i_1 : STD_LOGIC;
  signal n_0_check_tlock_max_i_2 : STD_LOGIC;
  signal n_0_check_tlock_max_i_3 : STD_LOGIC;
  signal n_0_check_tlock_max_reg : STD_LOGIC;
  signal n_0_gtrxreset_i_i_1 : STD_LOGIC;
  signal \n_0_init_wait_count[6]_i_1__0\ : STD_LOGIC;
  signal \n_0_init_wait_count[6]_i_3__0\ : STD_LOGIC;
  signal \n_0_init_wait_count[6]_i_4__0\ : STD_LOGIC;
  signal \n_0_init_wait_done_i_1__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_1__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_2__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_4__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_5__0\ : STD_LOGIC;
  signal \n_0_mmcm_lock_reclocked_i_1__0\ : STD_LOGIC;
  signal \n_0_reset_time_out_i_1__0\ : STD_LOGIC;
  signal \n_0_reset_time_out_i_2__0\ : STD_LOGIC;
  signal n_0_reset_time_out_i_3 : STD_LOGIC;
  signal \n_0_reset_time_out_i_4__0\ : STD_LOGIC;
  signal n_0_reset_time_out_i_5 : STD_LOGIC;
  signal n_0_reset_time_out_reg : STD_LOGIC;
  signal \n_0_run_phase_alignment_int_i_1__0\ : STD_LOGIC;
  signal n_0_run_phase_alignment_int_reg : STD_LOGIC;
  signal n_0_run_phase_alignment_int_s3_reg : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_i_1 : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_i_2 : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_i_3 : STD_LOGIC;
  signal n_0_rx_fsm_reset_done_int_i_4 : STD_LOGIC;
  signal n_0_time_out_1us_i_1 : STD_LOGIC;
  signal n_0_time_out_1us_i_2 : STD_LOGIC;
  signal n_0_time_out_1us_i_3 : STD_LOGIC;
  signal n_0_time_out_1us_i_4 : STD_LOGIC;
  signal n_0_time_out_2ms_i_1 : STD_LOGIC;
  signal n_0_time_out_2ms_i_2 : STD_LOGIC;
  signal n_0_time_out_2ms_i_3 : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_1\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_10\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_3\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_4__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_5\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_6__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_7__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_8__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_9__0\ : STD_LOGIC;
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
  signal \n_0_time_out_wait_bypass_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_wait_bypass_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_wait_bypass_i_3__0\ : STD_LOGIC;
  signal n_0_time_out_wait_bypass_reg : STD_LOGIC;
  signal n_0_time_tlock_max_i_1 : STD_LOGIC;
  signal n_0_time_tlock_max_i_10 : STD_LOGIC;
  signal \n_0_time_tlock_max_i_3__0\ : STD_LOGIC;
  signal n_0_time_tlock_max_i_4 : STD_LOGIC;
  signal n_0_time_tlock_max_i_5 : STD_LOGIC;
  signal n_0_time_tlock_max_i_6 : STD_LOGIC;
  signal n_0_time_tlock_max_i_7 : STD_LOGIC;
  signal n_0_time_tlock_max_i_8 : STD_LOGIC;
  signal n_0_time_tlock_max_i_9 : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_2__0\ : STD_LOGIC;
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
  signal \n_0_wait_time_cnt[1]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[4]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_1__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_2__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_5__0\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_6__0\ : STD_LOGIC;
  signal \n_1_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal n_1_time_tlock_max_reg_i_2 : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_2_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal n_2_time_tlock_max_reg_i_2 : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_2_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_3_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal n_3_time_tlock_max_reg_i_2 : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_3_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_4_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_4_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_4_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_4_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_5_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_5_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_6_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_6_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[0]_i_2\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[16]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[20]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_adapt_wait_hw.adapt_count_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[0]_i_2__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[16]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_7_time_out_counter_reg[8]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[0]_i_3__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[12]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[4]_i_1__0\ : STD_LOGIC;
  signal \n_7_wait_bypass_count_reg[8]_i_1__0\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal recclk_mon_count_reset : STD_LOGIC;
  signal rx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal rx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal rxresetdone_s2 : STD_LOGIC;
  signal rxresetdone_s3 : STD_LOGIC;
  signal time_out_1us : STD_LOGIC;
  signal time_out_2ms : STD_LOGIC;
  signal time_out_adapt : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal time_tlock_max1 : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 12 downto 0 );
  signal \wait_time_cnt0__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \wait_time_cnt_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_sync_cpllrefclklost_data_out_UNCONNECTED : STD_LOGIC;
  signal \NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_time_tlock_max_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[10]_i_12\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[10]_i_15\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[10]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[10]_i_5\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[10]_i_8\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[1]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[1]_i_3\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_onehot_rx_state[9]_i_1\ : label is "soft_lutpair1";
  attribute counter : integer;
  attribute counter of \adapt_wait_hw.adapt_count_reg[0]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[10]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[11]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[12]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[13]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[14]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[15]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[16]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[17]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[18]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[19]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[1]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[20]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[21]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[22]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[2]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[3]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[4]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[5]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[6]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[7]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[8]\ : label is 18;
  attribute counter of \adapt_wait_hw.adapt_count_reg[9]\ : label is 18;
  attribute SOFT_HLUTNM of check_tlock_max_i_2 : label is "soft_lutpair9";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \init_wait_count[0]_i_1__0\ : label is true;
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_4__0\ : label is "soft_lutpair5";
  attribute counter of \init_wait_count_reg[0]\ : label is 17;
  attribute counter of \init_wait_count_reg[1]\ : label is 17;
  attribute counter of \init_wait_count_reg[2]\ : label is 17;
  attribute counter of \init_wait_count_reg[3]\ : label is 17;
  attribute counter of \init_wait_count_reg[4]\ : label is 17;
  attribute counter of \init_wait_count_reg[5]\ : label is 17;
  attribute counter of \init_wait_count_reg[6]\ : label is 17;
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_3__0\ : label is "soft_lutpair2";
  attribute counter of \mmcm_lock_count_reg[0]\ : label is 22;
  attribute counter of \mmcm_lock_count_reg[1]\ : label is 22;
  attribute counter of \mmcm_lock_count_reg[2]\ : label is 22;
  attribute counter of \mmcm_lock_count_reg[3]\ : label is 22;
  attribute counter of \mmcm_lock_count_reg[4]\ : label is 22;
  attribute counter of \mmcm_lock_count_reg[5]\ : label is 22;
  attribute counter of \mmcm_lock_count_reg[6]\ : label is 22;
  attribute counter of \mmcm_lock_count_reg[7]\ : label is 22;
  attribute counter of \mmcm_lock_count_reg[8]\ : label is 22;
  attribute counter of \mmcm_lock_count_reg[9]\ : label is 22;
  attribute SOFT_HLUTNM of \reset_time_out_i_4__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of rx_fsm_reset_done_int_i_3 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of rx_fsm_reset_done_int_i_4 : label is "soft_lutpair12";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of sync_RXRESETDONE : label is true;
  attribute INITIALISE : string;
  attribute INITIALISE of sync_RXRESETDONE : label is "2'b00";
  attribute DONT_TOUCH of sync_cplllock : label is true;
  attribute INITIALISE of sync_cplllock : label is "2'b00";
  attribute DONT_TOUCH of sync_cpllrefclklost : label is true;
  attribute INITIALISE of sync_cpllrefclklost : label is "2'b00";
  attribute DONT_TOUCH of sync_data_valid : label is true;
  attribute INITIALISE of sync_data_valid : label is "2'b00";
  attribute DONT_TOUCH of sync_mmcm_lock_reclocked : label is true;
  attribute INITIALISE of sync_mmcm_lock_reclocked : label is "2'b00";
  attribute DONT_TOUCH of sync_run_phase_alignment_int : label is true;
  attribute INITIALISE of sync_run_phase_alignment_int : label is "2'b00";
  attribute DONT_TOUCH of sync_time_out_wait_bypass : label is true;
  attribute INITIALISE of sync_time_out_wait_bypass : label is "2'b00";
  attribute DONT_TOUCH of sync_tx_fsm_reset_done_int : label is true;
  attribute INITIALISE of sync_tx_fsm_reset_done_int : label is "2'b00";
  attribute SOFT_HLUTNM of time_out_2ms_i_1 : label is "soft_lutpair14";
  attribute counter of \time_out_counter_reg[0]\ : label is 15;
  attribute counter of \time_out_counter_reg[10]\ : label is 15;
  attribute counter of \time_out_counter_reg[11]\ : label is 15;
  attribute counter of \time_out_counter_reg[12]\ : label is 15;
  attribute counter of \time_out_counter_reg[13]\ : label is 15;
  attribute counter of \time_out_counter_reg[14]\ : label is 15;
  attribute counter of \time_out_counter_reg[15]\ : label is 15;
  attribute counter of \time_out_counter_reg[16]\ : label is 15;
  attribute counter of \time_out_counter_reg[17]\ : label is 15;
  attribute counter of \time_out_counter_reg[18]\ : label is 15;
  attribute counter of \time_out_counter_reg[1]\ : label is 15;
  attribute counter of \time_out_counter_reg[2]\ : label is 15;
  attribute counter of \time_out_counter_reg[3]\ : label is 15;
  attribute counter of \time_out_counter_reg[4]\ : label is 15;
  attribute counter of \time_out_counter_reg[5]\ : label is 15;
  attribute counter of \time_out_counter_reg[6]\ : label is 15;
  attribute counter of \time_out_counter_reg[7]\ : label is 15;
  attribute counter of \time_out_counter_reg[8]\ : label is 15;
  attribute counter of \time_out_counter_reg[9]\ : label is 15;
  attribute SOFT_HLUTNM of time_tlock_max_i_1 : label is "soft_lutpair12";
  attribute counter of \wait_bypass_count_reg[0]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[10]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[11]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[12]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[1]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[2]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[3]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[4]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[5]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[6]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[7]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[8]\ : label is 19;
  attribute counter of \wait_bypass_count_reg[9]\ : label is 19;
  attribute RETAIN_INVERTER of \wait_time_cnt[0]_i_1__0\ : label is true;
  attribute SOFT_HLUTNM of \wait_time_cnt[0]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1__0\ : label is "soft_lutpair4";
  attribute counter of \wait_time_cnt_reg[0]\ : label is 16;
  attribute counter of \wait_time_cnt_reg[1]\ : label is 16;
  attribute counter of \wait_time_cnt_reg[2]\ : label is 16;
  attribute counter of \wait_time_cnt_reg[3]\ : label is 16;
  attribute counter of \wait_time_cnt_reg[4]\ : label is 16;
  attribute counter of \wait_time_cnt_reg[5]\ : label is 16;
  attribute counter of \wait_time_cnt_reg[6]\ : label is 16;
begin
  O1 <= \^o1\;
  RXDFELFHOLD <= \^rxdfelfhold\;
  RXUSERRDY <= \^rxuserrdy\;
\FSM_onehot_rx_state[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFE0E"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[10]_i_3\,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_4\,
      I2 => \n_0_FSM_onehot_rx_state[10]_i_5\,
      I3 => \n_0_FSM_onehot_rx_state[10]_i_6\,
      I4 => \n_0_FSM_onehot_rx_state[10]_i_7\,
      O => \n_0_FSM_onehot_rx_state[10]_i_1\
    );
\FSM_onehot_rx_state[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000001160000"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[4]\,
      I4 => n_0_check_tlock_max_i_2,
      I5 => \n_0_FSM_onehot_rx_state[10]_i_13\,
      O => \n_0_FSM_onehot_rx_state[10]_i_10\
    );
\FSM_onehot_rx_state[10]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[0]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I2 => \n_0_FSM_onehot_rx_state[10]_i_15\,
      I3 => \n_0_FSM_onehot_rx_state[10]_i_5\,
      I4 => \n_0_FSM_onehot_rx_state[10]_i_16\,
      O => \n_0_FSM_onehot_rx_state[10]_i_11\
    );
\FSM_onehot_rx_state[10]_i_12\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
    port map (
      I0 => rxresetdone_s3,
      I1 => n_0_reset_time_out_reg,
      I2 => time_out_2ms,
      O => \n_0_FSM_onehot_rx_state[10]_i_12\
    );
\FSM_onehot_rx_state[10]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[1]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[0]\,
      O => \n_0_FSM_onehot_rx_state[10]_i_13\
    );
\FSM_onehot_rx_state[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[0]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[1]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[4]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I5 => \n_0_FSM_onehot_rx_state_reg[9]\,
      O => \n_0_FSM_onehot_rx_state[10]_i_14\
    );
\FSM_onehot_rx_state[10]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFEE8"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[1]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[9]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[5]\,
      O => \n_0_FSM_onehot_rx_state[10]_i_15\
    );
\FSM_onehot_rx_state[10]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[4]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[10]\,
      O => \n_0_FSM_onehot_rx_state[10]_i_16\
    );
\FSM_onehot_rx_state[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[10]_i_8\,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_9\,
      I2 => \n_0_FSM_onehot_rx_state[10]_i_10\,
      I3 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      O => \n_0_FSM_onehot_rx_state[10]_i_2\
    );
\FSM_onehot_rx_state[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFF20000FF00FF"
    )
    port map (
      I0 => time_tlock_max,
      I1 => n_0_reset_time_out_reg,
      I2 => mmcm_lock_reclocked,
      I3 => n_0_check_tlock_max_i_2,
      I4 => data_valid_sync,
      I5 => adapt_count_reset,
      O => \n_0_FSM_onehot_rx_state[10]_i_3\
    );
\FSM_onehot_rx_state[10]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0E0F0E0000000FF"
    )
    port map (
      I0 => time_out_2ms,
      I1 => cplllock_sync,
      I2 => n_0_check_tlock_max_i_2,
      I3 => adapt_count_reset,
      I4 => \n_0_FSM_onehot_rx_state[10]_i_12\,
      I5 => n_0_check_tlock_max_i_3,
      O => \n_0_FSM_onehot_rx_state[10]_i_4\
    );
\FSM_onehot_rx_state[10]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[9]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[1]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[3]\,
      O => \n_0_FSM_onehot_rx_state[10]_i_5\
    );
\FSM_onehot_rx_state[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"40F040F04FF040F0"
    )
    port map (
      I0 => n_0_check_tlock_max_i_3,
      I1 => rx_cdrlocked,
      I2 => adapt_count_reset,
      I3 => n_0_check_tlock_max_i_2,
      I4 => \n_0_wait_time_cnt[6]_i_6__0\,
      I5 => \wait_time_cnt_reg__0\(6),
      O => \n_0_FSM_onehot_rx_state[10]_i_6\
    );
\FSM_onehot_rx_state[10]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80833333"
    )
    port map (
      I0 => init_wait_done,
      I1 => n_0_check_tlock_max_i_2,
      I2 => adapt_count_reset,
      I3 => data_valid_sync,
      I4 => n_0_check_tlock_max_i_3,
      O => \n_0_FSM_onehot_rx_state[10]_i_7\
    );
\FSM_onehot_rx_state[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000228"
    )
    port map (
      I0 => n_0_check_tlock_max_i_3,
      I1 => \n_0_FSM_onehot_rx_state_reg[10]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[9]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I4 => \n_0_FSM_onehot_rx_state[10]_i_13\,
      O => \n_0_FSM_onehot_rx_state[10]_i_8\
    );
\FSM_onehot_rx_state[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFEE9"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[10]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I4 => \n_0_FSM_onehot_rx_state[10]_i_14\,
      I5 => \n_0_FSM_onehot_rx_state_reg[2]\,
      O => \n_0_FSM_onehot_rx_state[10]_i_9\
    );
\FSM_onehot_rx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555D5800000D580"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[10]_i_8\,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_9\,
      I2 => \n_0_FSM_onehot_rx_state[1]_i_2\,
      I3 => \n_0_FSM_onehot_rx_state[1]_i_3\,
      I4 => \n_0_FSM_onehot_rx_state[10]_i_10\,
      I5 => \n_0_FSM_onehot_rx_state[1]_i_4\,
      O => \n_0_FSM_onehot_rx_state[1]_i_1\
    );
\FSM_onehot_rx_state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_wait_bypass_s3,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      O => \n_0_FSM_onehot_rx_state[1]_i_2\
    );
\FSM_onehot_rx_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[10]_i_9\,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      I2 => time_out_2ms,
      O => \n_0_FSM_onehot_rx_state[1]_i_3\
    );
\FSM_onehot_rx_state[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00B00080"
    )
    port map (
      I0 => time_out_2ms,
      I1 => \n_0_FSM_onehot_rx_state[8]_i_3\,
      I2 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      I3 => n_0_reset_time_out_reg,
      I4 => time_tlock_max,
      O => \n_0_FSM_onehot_rx_state[1]_i_4\
    );
\FSM_onehot_rx_state[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      I1 => \n_0_FSM_onehot_rx_state[8]_i_3\,
      I2 => \n_0_FSM_onehot_rx_state[8]_i_2\,
      I3 => \n_0_FSM_onehot_rx_state[10]_i_8\,
      O => \n_0_FSM_onehot_rx_state[2]_i_1\
    );
\FSM_onehot_rx_state[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[8]_i_3\,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      I2 => \n_0_FSM_onehot_rx_state[8]_i_2\,
      I3 => \n_0_FSM_onehot_rx_state[10]_i_8\,
      O => \n_0_FSM_onehot_rx_state[3]_i_1\
    );
\FSM_onehot_rx_state[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[8]_i_3\,
      I1 => time_out_2ms,
      I2 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      I3 => \n_0_FSM_onehot_rx_state[8]_i_2\,
      I4 => \n_0_FSM_onehot_rx_state[10]_i_8\,
      O => \n_0_FSM_onehot_rx_state[4]_i_1\
    );
\FSM_onehot_rx_state[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[8]_i_2\,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      I2 => \n_0_FSM_onehot_rx_state[8]_i_3\,
      I3 => \n_0_FSM_onehot_rx_state[10]_i_8\,
      O => \n_0_FSM_onehot_rx_state[5]_i_1\
    );
\FSM_onehot_rx_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000005100"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[8]_i_2\,
      I1 => time_tlock_max,
      I2 => n_0_reset_time_out_reg,
      I3 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      I4 => \n_0_FSM_onehot_rx_state[8]_i_3\,
      I5 => \n_0_FSM_onehot_rx_state[10]_i_8\,
      O => \n_0_FSM_onehot_rx_state[6]_i_1\
    );
\FSM_onehot_rx_state[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[8]_i_2\,
      I1 => \n_0_FSM_onehot_rx_state[8]_i_3\,
      I2 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      I3 => \n_0_FSM_onehot_rx_state[10]_i_8\,
      O => \n_0_FSM_onehot_rx_state[7]_i_1\
    );
\FSM_onehot_rx_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000044040000"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[8]_i_2\,
      I1 => \n_0_FSM_onehot_rx_state[8]_i_3\,
      I2 => time_out_2ms,
      I3 => n_0_reset_time_out_reg,
      I4 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      I5 => \n_0_FSM_onehot_rx_state[10]_i_8\,
      O => \n_0_FSM_onehot_rx_state[8]_i_1\
    );
\FSM_onehot_rx_state[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[10]_i_10\,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_9\,
      I2 => \n_0_FSM_onehot_rx_state[10]_i_8\,
      O => \n_0_FSM_onehot_rx_state[8]_i_2\
    );
\FSM_onehot_rx_state[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000010116"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[10]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[2]\,
      I5 => \n_0_FSM_onehot_rx_state[10]_i_14\,
      O => \n_0_FSM_onehot_rx_state[8]_i_3\
    );
\FSM_onehot_rx_state[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAA222A"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state[10]_i_8\,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_9\,
      I2 => \n_0_FSM_onehot_rx_state[10]_i_11\,
      I3 => time_out_wait_bypass_s3,
      I4 => \n_0_FSM_onehot_rx_state[10]_i_10\,
      O => \n_0_FSM_onehot_rx_state[9]_i_1\
    );
\FSM_onehot_rx_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_rx_state[10]_i_1\,
      D => \<const0>\,
      Q => \n_0_FSM_onehot_rx_state_reg[0]\,
      S => I4(0)
    );
\FSM_onehot_rx_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_rx_state[10]_i_1\,
      D => \n_0_FSM_onehot_rx_state[10]_i_2\,
      Q => \n_0_FSM_onehot_rx_state_reg[10]\,
      R => I4(0)
    );
\FSM_onehot_rx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_rx_state[10]_i_1\,
      D => \n_0_FSM_onehot_rx_state[1]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[1]\,
      R => I4(0)
    );
\FSM_onehot_rx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_rx_state[10]_i_1\,
      D => \n_0_FSM_onehot_rx_state[2]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[2]\,
      R => I4(0)
    );
\FSM_onehot_rx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_rx_state[10]_i_1\,
      D => \n_0_FSM_onehot_rx_state[3]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[3]\,
      R => I4(0)
    );
\FSM_onehot_rx_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_rx_state[10]_i_1\,
      D => \n_0_FSM_onehot_rx_state[4]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[4]\,
      R => I4(0)
    );
\FSM_onehot_rx_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_rx_state[10]_i_1\,
      D => \n_0_FSM_onehot_rx_state[5]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[5]\,
      R => I4(0)
    );
\FSM_onehot_rx_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_rx_state[10]_i_1\,
      D => \n_0_FSM_onehot_rx_state[6]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[6]\,
      R => I4(0)
    );
\FSM_onehot_rx_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_rx_state[10]_i_1\,
      D => \n_0_FSM_onehot_rx_state[7]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[7]\,
      R => I4(0)
    );
\FSM_onehot_rx_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_rx_state[10]_i_1\,
      D => \n_0_FSM_onehot_rx_state[8]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[8]\,
      R => I4(0)
    );
\FSM_onehot_rx_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_rx_state[10]_i_1\,
      D => \n_0_FSM_onehot_rx_state[9]_i_1\,
      Q => \n_0_FSM_onehot_rx_state_reg[9]\,
      R => I4(0)
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
RXDFEAGCHOLD_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000BAAAAAAA"
    )
    port map (
      I0 => \^rxdfelfhold\,
      I1 => adapt_count_reset,
      I2 => n_0_check_tlock_max_i_3,
      I3 => time_out_adapt,
      I4 => n_0_RXDFEAGCHOLD_i_2,
      I5 => I4(0),
      O => n_0_RXDFEAGCHOLD_i_1
    );
RXDFEAGCHOLD_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[1]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[9]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I5 => n_0_check_tlock_max_i_2,
      O => n_0_RXDFEAGCHOLD_i_2
    );
RXDFEAGCHOLD_reg: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_RXDFEAGCHOLD_i_1,
      Q => \^rxdfelfhold\,
      R => \<const0>\
    );
RXUSERRDY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA2BAA"
    )
    port map (
      I0 => \^rxuserrdy\,
      I1 => adapt_count_reset,
      I2 => n_0_check_tlock_max_i_3,
      I3 => n_0_check_tlock_max_i_2,
      I4 => \n_0_FSM_onehot_rx_state[10]_i_5\,
      I5 => I4(0),
      O => n_0_RXUSERRDY_i_1
    );
RXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_RXUSERRDY_i_1,
      Q => \^rxuserrdy\,
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
adapt_count_reset_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFBABA8AAA"
    )
    port map (
      I0 => recclk_mon_count_reset,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_5\,
      I2 => \n_0_reset_time_out_i_4__0\,
      I3 => cplllock_sync,
      I4 => adapt_count_reset,
      I5 => I4(0),
      O => n_0_adapt_count_reset_i_1
    );
adapt_count_reset_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_adapt_count_reset_i_1,
      Q => recclk_mon_count_reset,
      R => \<const0>\
    );
\adapt_wait_hw.adapt_count[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => \n_0_adapt_wait_hw.time_out_adapt_i_2\,
      I1 => \n_0_adapt_wait_hw.time_out_adapt_i_3\,
      I2 => \n_0_adapt_wait_hw.time_out_adapt_i_4\,
      I3 => \n_0_adapt_wait_hw.time_out_adapt_i_5\,
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_1\
    );
\adapt_wait_hw.adapt_count[0]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(3),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_3\
    );
\adapt_wait_hw.adapt_count[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(2),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_4\
    );
\adapt_wait_hw.adapt_count[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(1),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_5\
    );
\adapt_wait_hw.adapt_count[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(0),
      O => \n_0_adapt_wait_hw.adapt_count[0]_i_6\
    );
\adapt_wait_hw.adapt_count[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(15),
      O => \n_0_adapt_wait_hw.adapt_count[12]_i_2\
    );
\adapt_wait_hw.adapt_count[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(14),
      O => \n_0_adapt_wait_hw.adapt_count[12]_i_3\
    );
\adapt_wait_hw.adapt_count[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(13),
      O => \n_0_adapt_wait_hw.adapt_count[12]_i_4\
    );
\adapt_wait_hw.adapt_count[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(12),
      O => \n_0_adapt_wait_hw.adapt_count[12]_i_5\
    );
\adapt_wait_hw.adapt_count[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(19),
      O => \n_0_adapt_wait_hw.adapt_count[16]_i_2\
    );
\adapt_wait_hw.adapt_count[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(18),
      O => \n_0_adapt_wait_hw.adapt_count[16]_i_3\
    );
\adapt_wait_hw.adapt_count[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(17),
      O => \n_0_adapt_wait_hw.adapt_count[16]_i_4\
    );
\adapt_wait_hw.adapt_count[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(16),
      O => \n_0_adapt_wait_hw.adapt_count[16]_i_5\
    );
\adapt_wait_hw.adapt_count[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(22),
      O => \n_0_adapt_wait_hw.adapt_count[20]_i_2\
    );
\adapt_wait_hw.adapt_count[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(21),
      O => \n_0_adapt_wait_hw.adapt_count[20]_i_3\
    );
\adapt_wait_hw.adapt_count[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(20),
      O => \n_0_adapt_wait_hw.adapt_count[20]_i_4\
    );
\adapt_wait_hw.adapt_count[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(7),
      O => \n_0_adapt_wait_hw.adapt_count[4]_i_2\
    );
\adapt_wait_hw.adapt_count[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(6),
      O => \n_0_adapt_wait_hw.adapt_count[4]_i_3\
    );
\adapt_wait_hw.adapt_count[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(5),
      O => \n_0_adapt_wait_hw.adapt_count[4]_i_4\
    );
\adapt_wait_hw.adapt_count[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(4),
      O => \n_0_adapt_wait_hw.adapt_count[4]_i_5\
    );
\adapt_wait_hw.adapt_count[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(11),
      O => \n_0_adapt_wait_hw.adapt_count[8]_i_2\
    );
\adapt_wait_hw.adapt_count[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(10),
      O => \n_0_adapt_wait_hw.adapt_count[8]_i_3\
    );
\adapt_wait_hw.adapt_count[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(9),
      O => \n_0_adapt_wait_hw.adapt_count[8]_i_4\
    );
\adapt_wait_hw.adapt_count[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(8),
      O => \n_0_adapt_wait_hw.adapt_count[8]_i_5\
    );
\adapt_wait_hw.adapt_count_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      Q => \adapt_wait_hw.adapt_count_reg\(0),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[0]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \<const0>\,
      CO(3) => \n_0_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      CO(2) => \n_1_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const1>\,
      O(3) => \n_4_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      S(3) => \n_0_adapt_wait_hw.adapt_count[0]_i_3\,
      S(2) => \n_0_adapt_wait_hw.adapt_count[0]_i_4\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[0]_i_5\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[0]_i_6\
    );
\adapt_wait_hw.adapt_count_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(10),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_4_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(11),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(12),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      CO(3) => \n_0_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      CO(2) => \n_1_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      S(3) => \n_0_adapt_wait_hw.adapt_count[12]_i_2\,
      S(2) => \n_0_adapt_wait_hw.adapt_count[12]_i_3\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[12]_i_4\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[12]_i_5\
    );
\adapt_wait_hw.adapt_count_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(13),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(14),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_4_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(15),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(16),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[16]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_wait_hw.adapt_count_reg[12]_i_1\,
      CO(3) => \n_0_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      CO(2) => \n_1_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      S(3) => \n_0_adapt_wait_hw.adapt_count[16]_i_2\,
      S(2) => \n_0_adapt_wait_hw.adapt_count[16]_i_3\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[16]_i_4\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[16]_i_5\
    );
\adapt_wait_hw.adapt_count_reg[17]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(17),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[18]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(18),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[19]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_4_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(19),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      Q => \adapt_wait_hw.adapt_count_reg\(1),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[20]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(20),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[20]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_wait_hw.adapt_count_reg[16]_i_1\,
      CO(3 downto 2) => \NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \NLW_adapt_wait_hw.adapt_count_reg[20]_i_1_O_UNCONNECTED\(3),
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      S(3) => \<const0>\,
      S(2) => \n_0_adapt_wait_hw.adapt_count[20]_i_2\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[20]_i_3\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[20]_i_4\
    );
\adapt_wait_hw.adapt_count_reg[21]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(21),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[22]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[20]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(22),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      Q => \adapt_wait_hw.adapt_count_reg\(2),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_4_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      Q => \adapt_wait_hw.adapt_count_reg\(3),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(4),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[4]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_wait_hw.adapt_count_reg[0]_i_2\,
      CO(3) => \n_0_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      CO(2) => \n_1_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      S(3) => \n_0_adapt_wait_hw.adapt_count[4]_i_2\,
      S(2) => \n_0_adapt_wait_hw.adapt_count[4]_i_3\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[4]_i_4\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[4]_i_5\
    );
\adapt_wait_hw.adapt_count_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(5),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_5_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(6),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_4_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(7),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_7_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(8),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.adapt_count_reg[8]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_adapt_wait_hw.adapt_count_reg[4]_i_1\,
      CO(3) => \n_0_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      CO(2) => \n_1_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      CO(1) => \n_2_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      CO(0) => \n_3_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3) => \n_4_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      O(2) => \n_5_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      O(1) => \n_6_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      O(0) => \n_7_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      S(3) => \n_0_adapt_wait_hw.adapt_count[8]_i_2\,
      S(2) => \n_0_adapt_wait_hw.adapt_count[8]_i_3\,
      S(1) => \n_0_adapt_wait_hw.adapt_count[8]_i_4\,
      S(0) => \n_0_adapt_wait_hw.adapt_count[8]_i_5\
    );
\adapt_wait_hw.adapt_count_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_adapt_wait_hw.adapt_count[0]_i_1\,
      D => \n_6_adapt_wait_hw.adapt_count_reg[8]_i_1\,
      Q => \adapt_wait_hw.adapt_count_reg\(9),
      R => recclk_mon_count_reset
    );
\adapt_wait_hw.time_out_adapt_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF8000"
    )
    port map (
      I0 => \n_0_adapt_wait_hw.time_out_adapt_i_2\,
      I1 => \n_0_adapt_wait_hw.time_out_adapt_i_3\,
      I2 => \n_0_adapt_wait_hw.time_out_adapt_i_4\,
      I3 => \n_0_adapt_wait_hw.time_out_adapt_i_5\,
      I4 => time_out_adapt,
      I5 => recclk_mon_count_reset,
      O => \n_0_adapt_wait_hw.time_out_adapt_i_1\
    );
\adapt_wait_hw.time_out_adapt_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(6),
      I1 => \adapt_wait_hw.adapt_count_reg\(9),
      I2 => \adapt_wait_hw.adapt_count_reg\(5),
      I3 => \adapt_wait_hw.adapt_count_reg\(12),
      I4 => \adapt_wait_hw.adapt_count_reg\(19),
      I5 => \adapt_wait_hw.adapt_count_reg\(8),
      O => \n_0_adapt_wait_hw.time_out_adapt_i_2\
    );
\adapt_wait_hw.time_out_adapt_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(0),
      I1 => \adapt_wait_hw.adapt_count_reg\(4),
      I2 => \adapt_wait_hw.adapt_count_reg\(15),
      I3 => \adapt_wait_hw.adapt_count_reg\(7),
      I4 => \adapt_wait_hw.adapt_count_reg\(16),
      O => \n_0_adapt_wait_hw.time_out_adapt_i_3\
    );
\adapt_wait_hw.time_out_adapt_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(3),
      I1 => \adapt_wait_hw.adapt_count_reg\(11),
      I2 => \adapt_wait_hw.adapt_count_reg\(2),
      I3 => \adapt_wait_hw.adapt_count_reg\(20),
      I4 => \adapt_wait_hw.adapt_count_reg\(14),
      I5 => \adapt_wait_hw.adapt_count_reg\(21),
      O => \n_0_adapt_wait_hw.time_out_adapt_i_4\
    );
\adapt_wait_hw.time_out_adapt_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000004000"
    )
    port map (
      I0 => \adapt_wait_hw.adapt_count_reg\(10),
      I1 => \adapt_wait_hw.adapt_count_reg\(1),
      I2 => \adapt_wait_hw.adapt_count_reg\(22),
      I3 => \adapt_wait_hw.adapt_count_reg\(13),
      I4 => \adapt_wait_hw.adapt_count_reg\(18),
      I5 => \adapt_wait_hw.adapt_count_reg\(17),
      O => \n_0_adapt_wait_hw.time_out_adapt_i_5\
    );
\adapt_wait_hw.time_out_adapt_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_0_adapt_wait_hw.time_out_adapt_i_1\,
      Q => time_out_adapt,
      R => \<const0>\
    );
check_tlock_max_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A2AAAEAA"
    )
    port map (
      I0 => n_0_check_tlock_max_reg,
      I1 => n_0_check_tlock_max_i_2,
      I2 => \n_0_FSM_onehot_rx_state[10]_i_5\,
      I3 => adapt_count_reset,
      I4 => n_0_check_tlock_max_i_3,
      I5 => I4(0),
      O => n_0_check_tlock_max_i_1
    );
check_tlock_max_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[10]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[9]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[8]\,
      O => n_0_check_tlock_max_i_2
    );
check_tlock_max_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[5]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[4]\,
      O => n_0_check_tlock_max_i_3
    );
check_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_check_tlock_max_i_1,
      Q => n_0_check_tlock_max_reg,
      R => \<const0>\
    );
gtrxreset_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AE2AAAAA"
    )
    port map (
      I0 => GTRXRESET,
      I1 => adapt_count_reset,
      I2 => \n_0_FSM_onehot_rx_state[10]_i_5\,
      I3 => n_0_check_tlock_max_i_3,
      I4 => n_0_check_tlock_max_i_2,
      I5 => I4(0),
      O => n_0_gtrxreset_i_i_1
    );
gtrxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_gtrxreset_i_i_1,
      Q => GTRXRESET,
      R => \<const0>\
    );
gtxe2_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => GTRXRESET,
      I1 => \^o1\,
      I2 => reset_out0_in,
      O => gt0_gtrxreset_in1_out
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
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
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
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(3),
      O => \p_0_in__0\(4)
    );
\init_wait_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(2),
      I5 => \init_wait_count_reg__0\(4),
      O => \p_0_in__0\(5)
    );
\init_wait_count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \n_0_init_wait_count[6]_i_3__0\,
      O => \n_0_init_wait_count[6]_i_1__0\
    );
\init_wait_count[6]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \n_0_init_wait_count[6]_i_4__0\,
      I2 => \init_wait_count_reg__0\(5),
      O => \p_0_in__0\(6)
    );
\init_wait_count[6]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(4),
      I4 => \init_wait_count_reg__0\(2),
      I5 => \init_wait_count_reg__0\(0),
      O => \n_0_init_wait_count[6]_i_3__0\
    );
\init_wait_count[6]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(3),
      O => \n_0_init_wait_count[6]_i_4__0\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => I4(0),
      D => \p_0_in__0\(0),
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => I4(0),
      D => \p_0_in__0\(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => I4(0),
      D => \p_0_in__0\(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => I4(0),
      D => \p_0_in__0\(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => I4(0),
      D => \p_0_in__0\(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => I4(0),
      D => \p_0_in__0\(5),
      Q => \init_wait_count_reg__0\(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1__0\,
      CLR => I4(0),
      D => \p_0_in__0\(6),
      Q => \init_wait_count_reg__0\(6)
    );
\init_wait_done_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \n_0_init_wait_count[6]_i_3__0\,
      I2 => init_wait_done,
      O => \n_0_init_wait_done_i_1__0\
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      CLR => I4(0),
      D => \n_0_init_wait_done_i_1__0\,
      Q => init_wait_done
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
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__2\(2)
    );
\mmcm_lock_count[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__2\(3)
    );
\mmcm_lock_count[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(3),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__2\(4)
    );
\mmcm_lock_count[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(5),
      I1 => \mmcm_lock_count_reg__0\(4),
      I2 => \mmcm_lock_count_reg__0\(2),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(1),
      I5 => \mmcm_lock_count_reg__0\(3),
      O => \p_0_in__2\(5)
    );
\mmcm_lock_count[6]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \n_0_mmcm_lock_count[9]_i_5__0\,
      O => \p_0_in__2\(6)
    );
\mmcm_lock_count[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \n_0_mmcm_lock_count[9]_i_5__0\,
      O => \p_0_in__2\(7)
    );
\mmcm_lock_count[8]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \n_0_mmcm_lock_count[9]_i_5__0\,
      I3 => \mmcm_lock_count_reg__0\(6),
      O => \p_0_in__2\(8)
    );
\mmcm_lock_count[9]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => mmcm_lock_i,
      O => \n_0_mmcm_lock_count[9]_i_1__0\
    );
\mmcm_lock_count[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(1),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \n_0_mmcm_lock_count[9]_i_4__0\,
      I3 => \mmcm_lock_count_reg__0\(7),
      I4 => \mmcm_lock_count_reg__0\(8),
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \n_0_mmcm_lock_count[9]_i_2__0\
    );
\mmcm_lock_count[9]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \mmcm_lock_count_reg__0\(8),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \n_0_mmcm_lock_count[9]_i_5__0\,
      I4 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__2\(9)
    );
\mmcm_lock_count[9]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count_reg__0\(6),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(4),
      O => \n_0_mmcm_lock_count[9]_i_4__0\
    );
\mmcm_lock_count[9]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(5),
      O => \n_0_mmcm_lock_count[9]_i_5__0\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => \n_0_mmcm_lock_count[9]_i_1__0\
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => \n_0_mmcm_lock_count[9]_i_1__0\
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(2),
      Q => \mmcm_lock_count_reg__0\(2),
      R => \n_0_mmcm_lock_count[9]_i_1__0\
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(3),
      Q => \mmcm_lock_count_reg__0\(3),
      R => \n_0_mmcm_lock_count[9]_i_1__0\
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(4),
      Q => \mmcm_lock_count_reg__0\(4),
      R => \n_0_mmcm_lock_count[9]_i_1__0\
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(5),
      Q => \mmcm_lock_count_reg__0\(5),
      R => \n_0_mmcm_lock_count[9]_i_1__0\
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => \n_0_mmcm_lock_count[9]_i_1__0\
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => \n_0_mmcm_lock_count[9]_i_1__0\
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => \n_0_mmcm_lock_count[9]_i_1__0\
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2__0\,
      D => \p_0_in__2\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => \n_0_mmcm_lock_count[9]_i_1__0\
    );
\mmcm_lock_reclocked_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => mmcm_lock_i,
      I1 => \n_0_mmcm_lock_count[9]_i_2__0\,
      I2 => mmcm_lock_reclocked,
      O => \n_0_mmcm_lock_reclocked_i_1__0\
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_0_mmcm_lock_reclocked_i_1__0\,
      Q => mmcm_lock_reclocked,
      R => \<const0>\
    );
\reset_time_out_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFEEE2E2E2"
    )
    port map (
      I0 => n_0_reset_time_out_reg,
      I1 => \n_0_reset_time_out_i_2__0\,
      I2 => n_0_reset_time_out_i_3,
      I3 => cplllock_sync,
      I4 => \n_0_reset_time_out_i_4__0\,
      I5 => I4(0),
      O => \n_0_reset_time_out_i_1__0\
    );
\reset_time_out_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4A0AFAF0"
    )
    port map (
      I0 => n_0_check_tlock_max_i_3,
      I1 => rx_cdrlocked,
      I2 => n_0_check_tlock_max_i_2,
      I3 => adapt_count_reset,
      I4 => \n_0_FSM_onehot_rx_state[10]_i_5\,
      O => \n_0_reset_time_out_i_2__0\
    );
reset_time_out_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CBC88B88CBC8BBBB"
    )
    port map (
      I0 => n_0_reset_time_out_i_5,
      I1 => adapt_count_reset,
      I2 => n_0_check_tlock_max_i_3,
      I3 => rxresetdone_s3,
      I4 => n_0_check_tlock_max_i_2,
      I5 => data_valid_sync,
      O => n_0_reset_time_out_i_3
    );
\reset_time_out_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => n_0_check_tlock_max_i_3,
      I1 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[9]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[10]\,
      O => \n_0_reset_time_out_i_4__0\
    );
reset_time_out_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
    port map (
      I0 => rx_cdrlocked,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_5\,
      I2 => data_valid_sync,
      I3 => n_0_check_tlock_max_i_3,
      I4 => mmcm_lock_reclocked,
      O => n_0_reset_time_out_i_5
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_0_reset_time_out_i_1__0\,
      Q => n_0_reset_time_out_reg,
      R => \<const0>\
    );
\run_phase_alignment_int_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000B2AAAAAA"
    )
    port map (
      I0 => n_0_run_phase_alignment_int_reg,
      I1 => n_0_check_tlock_max_i_2,
      I2 => \n_0_FSM_onehot_rx_state[10]_i_5\,
      I3 => adapt_count_reset,
      I4 => n_0_check_tlock_max_i_3,
      I5 => I4(0),
      O => \n_0_run_phase_alignment_int_i_1__0\
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_0_run_phase_alignment_int_i_1__0\,
      Q => n_0_run_phase_alignment_int_reg,
      R => \<const0>\
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => \<const1>\,
      D => data_out_0,
      Q => n_0_run_phase_alignment_int_s3_reg,
      R => \<const0>\
    );
rx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => n_0_rx_fsm_reset_done_int_i_2,
      I1 => I4(0),
      O => n_0_rx_fsm_reset_done_int_i_1
    );
rx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF5FF5FF00008000"
    )
    port map (
      I0 => n_0_rx_fsm_reset_done_int_i_3,
      I1 => n_0_rx_fsm_reset_done_int_i_4,
      I2 => data_valid_sync,
      I3 => \n_0_FSM_onehot_rx_state[10]_i_5\,
      I4 => adapt_count_reset,
      I5 => \^o1\,
      O => n_0_rx_fsm_reset_done_int_i_2
    );
rx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => n_0_check_tlock_max_i_3,
      I1 => \n_0_FSM_onehot_rx_state_reg[8]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[9]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[10]\,
      O => n_0_rx_fsm_reset_done_int_i_3
    );
rx_fsm_reset_done_int_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_1us,
      I1 => n_0_reset_time_out_reg,
      O => n_0_rx_fsm_reset_done_int_i_4
    );
rx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_rx_fsm_reset_done_int_i_1,
      Q => \^o1\,
      R => \<const0>\
    );
rx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => \<const1>\,
      D => rx_fsm_reset_done_int_s2,
      Q => rx_fsm_reset_done_int_s3,
      R => \<const0>\
    );
rxresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => rxresetdone_s2,
      Q => rxresetdone_s3,
      R => \<const0>\
    );
sync_RXRESETDONE: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__26\
    port map (
      clk => independent_clock_bufg,
      data_in => I1,
      data_out => rxresetdone_s2
    );
sync_cplllock: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__30\
    port map (
      clk => independent_clock_bufg,
      data_in => resetdone,
      data_out => cplllock_sync
    );
sync_cpllrefclklost: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__31\
    port map (
      clk => independent_clock_bufg,
      data_in => CPLLREFCLKLOST,
      data_out => NLW_sync_cpllrefclklost_data_out_UNCONNECTED
    );
sync_data_valid: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__29\
    port map (
      clk => independent_clock_bufg,
      data_in => data_out,
      data_out => data_valid_sync
    );
sync_mmcm_lock_reclocked: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__28\
    port map (
      clk => independent_clock_bufg,
      data_in => mmcm_locked_out,
      data_out => mmcm_lock_i
    );
sync_run_phase_alignment_int: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__24\
    port map (
      clk => CLK,
      data_in => n_0_run_phase_alignment_int_reg,
      data_out => data_out_0
    );
sync_time_out_wait_bypass: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__27\
    port map (
      clk => independent_clock_bufg,
      data_in => n_0_time_out_wait_bypass_reg,
      data_out => time_out_wait_bypass_s2
    );
sync_tx_fsm_reset_done_int: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__25\
    port map (
      clk => CLK,
      data_in => \^o1\,
      data_out => rx_fsm_reset_done_int_s2
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
      INIT => X"0000000000000002"
    )
    port map (
      I0 => n_0_time_out_1us_i_3,
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(0),
      I3 => n_0_time_out_2ms_i_3,
      I4 => time_out_counter_reg(2),
      I5 => time_out_counter_reg(1),
      O => n_0_time_out_1us_i_2
    );
time_out_1us_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000000"
    )
    port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(12),
      I2 => time_out_counter_reg(6),
      I3 => time_out_counter_reg(9),
      I4 => time_out_counter_reg(17),
      I5 => n_0_time_out_1us_i_4,
      O => n_0_time_out_1us_i_3
    );
time_out_1us_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
    port map (
      I0 => time_out_counter_reg(8),
      I1 => time_out_counter_reg(4),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(3),
      I4 => time_out_counter_reg(10),
      I5 => time_out_counter_reg(18),
      O => n_0_time_out_1us_i_4
    );
time_out_1us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_time_out_1us_i_1,
      Q => time_out_1us,
      R => \<const0>\
    );
time_out_2ms_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => time_out_2ms,
      I1 => n_0_time_out_2ms_i_2,
      I2 => n_0_reset_time_out_reg,
      O => n_0_time_out_2ms_i_1
    );
time_out_2ms_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
    port map (
      I0 => \n_0_time_out_counter[0]_i_3\,
      I1 => time_out_counter_reg(7),
      I2 => time_out_counter_reg(18),
      I3 => n_0_time_out_2ms_i_3,
      I4 => \n_0_time_out_counter[0]_i_5\,
      O => n_0_time_out_2ms_i_2
    );
time_out_2ms_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(13),
      I3 => time_out_counter_reg(14),
      O => n_0_time_out_2ms_i_3
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_time_out_2ms_i_1,
      Q => time_out_2ms,
      R => \<const0>\
    );
\time_out_counter[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => \n_0_time_out_counter[0]_i_3\,
      I1 => \n_0_time_out_counter[0]_i_4__0\,
      I2 => \n_0_time_out_counter[0]_i_5\,
      O => \n_0_time_out_counter[0]_i_1\
    );
\time_out_counter[0]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(2),
      O => \n_0_time_out_counter[0]_i_10\
    );
\time_out_counter[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
    port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(11),
      I2 => \n_0_time_out_counter[0]_i_10\,
      I3 => time_out_counter_reg(17),
      I4 => time_out_counter_reg(6),
      I5 => time_out_counter_reg(12),
      O => \n_0_time_out_counter[0]_i_3\
    );
\time_out_counter[0]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFFFFFFFFFF"
    )
    port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(14),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(18),
      I5 => time_out_counter_reg(7),
      O => \n_0_time_out_counter[0]_i_4__0\
    );
\time_out_counter[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => time_out_counter_reg(5),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(10),
      I4 => time_out_counter_reg(3),
      I5 => time_out_counter_reg(4),
      O => \n_0_time_out_counter[0]_i_5\
    );
\time_out_counter[0]_i_6__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(3),
      O => \n_0_time_out_counter[0]_i_6__0\
    );
\time_out_counter[0]_i_7__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(2),
      O => \n_0_time_out_counter[0]_i_7__0\
    );
\time_out_counter[0]_i_8__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(1),
      O => \n_0_time_out_counter[0]_i_8__0\
    );
\time_out_counter[0]_i_9__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(0),
      O => \n_0_time_out_counter[0]_i_9__0\
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
      C => independent_clock_bufg,
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
      S(3) => \n_0_time_out_counter[0]_i_6__0\,
      S(2) => \n_0_time_out_counter[0]_i_7__0\,
      S(1) => \n_0_time_out_counter[0]_i_8__0\,
      S(0) => \n_0_time_out_counter[0]_i_9__0\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1\,
      D => \n_6_time_out_counter_reg[8]_i_1__0\,
      Q => time_out_counter_reg(9),
      R => n_0_reset_time_out_reg
    );
\time_out_wait_bypass_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000001000000"
    )
    port map (
      I0 => \n_0_time_out_wait_bypass_i_2__0\,
      I1 => \n_0_time_out_wait_bypass_i_3__0\,
      I2 => rx_fsm_reset_done_int_s3,
      I3 => wait_bypass_count_reg(7),
      I4 => n_0_run_phase_alignment_int_s3_reg,
      I5 => n_0_time_out_wait_bypass_reg,
      O => \n_0_time_out_wait_bypass_i_1__0\
    );
\time_out_wait_bypass_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(5),
      I1 => wait_bypass_count_reg(4),
      I2 => wait_bypass_count_reg(10),
      I3 => wait_bypass_count_reg(9),
      I4 => wait_bypass_count_reg(6),
      I5 => wait_bypass_count_reg(8),
      O => \n_0_time_out_wait_bypass_i_2__0\
    );
\time_out_wait_bypass_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FDFFFFFFFFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(12),
      I1 => wait_bypass_count_reg(11),
      I2 => wait_bypass_count_reg(3),
      I3 => wait_bypass_count_reg(2),
      I4 => wait_bypass_count_reg(0),
      I5 => wait_bypass_count_reg(1),
      O => \n_0_time_out_wait_bypass_i_3__0\
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => \<const1>\,
      D => \n_0_time_out_wait_bypass_i_1__0\,
      Q => n_0_time_out_wait_bypass_reg,
      R => \<const0>\
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => \<const0>\
    );
time_tlock_max_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EA"
    )
    port map (
      I0 => time_tlock_max,
      I1 => time_tlock_max1,
      I2 => n_0_check_tlock_max_reg,
      I3 => n_0_reset_time_out_reg,
      O => n_0_time_tlock_max_i_1
    );
time_tlock_max_i_10: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => time_out_counter_reg(4),
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(0),
      I3 => time_out_counter_reg(3),
      I4 => time_out_counter_reg(1),
      O => n_0_time_tlock_max_i_10
    );
\time_tlock_max_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(17),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(18),
      O => \n_0_time_tlock_max_i_3__0\
    );
time_tlock_max_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => time_out_counter_reg(14),
      I1 => time_out_counter_reg(13),
      I2 => time_out_counter_reg(12),
      O => n_0_time_tlock_max_i_4
    );
time_tlock_max_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => time_out_counter_reg(9),
      I1 => time_out_counter_reg(7),
      I2 => time_out_counter_reg(8),
      I3 => time_out_counter_reg(6),
      O => n_0_time_tlock_max_i_5
    );
time_tlock_max_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
    port map (
      I0 => time_out_counter_reg(1),
      I1 => time_out_counter_reg(0),
      I2 => time_out_counter_reg(4),
      I3 => time_out_counter_reg(2),
      I4 => time_out_counter_reg(3),
      O => n_0_time_tlock_max_i_6
    );
time_tlock_max_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(16),
      I2 => time_out_counter_reg(15),
      I3 => time_out_counter_reg(18),
      O => n_0_time_tlock_max_i_7
    );
time_tlock_max_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(14),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(11),
      O => n_0_time_tlock_max_i_8
    );
time_tlock_max_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
    port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(9),
      I2 => time_out_counter_reg(5),
      I3 => time_out_counter_reg(8),
      I4 => time_out_counter_reg(6),
      O => n_0_time_tlock_max_i_9
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_time_tlock_max_i_1,
      Q => time_tlock_max,
      R => \<const0>\
    );
time_tlock_max_reg_i_2: unisim.vcomponents.CARRY4
    port map (
      CI => \<const0>\,
      CO(3) => time_tlock_max1,
      CO(2) => n_1_time_tlock_max_reg_i_2,
      CO(1) => n_2_time_tlock_max_reg_i_2,
      CO(0) => n_3_time_tlock_max_reg_i_2,
      CYINIT => \<const0>\,
      DI(3) => \n_0_time_tlock_max_i_3__0\,
      DI(2) => n_0_time_tlock_max_i_4,
      DI(1) => n_0_time_tlock_max_i_5,
      DI(0) => n_0_time_tlock_max_i_6,
      O(3 downto 0) => NLW_time_tlock_max_reg_i_2_O_UNCONNECTED(3 downto 0),
      S(3) => n_0_time_tlock_max_i_7,
      S(2) => n_0_time_tlock_max_i_8,
      S(1) => n_0_time_tlock_max_i_9,
      S(0) => n_0_time_tlock_max_i_10
    );
\wait_bypass_count[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => n_0_run_phase_alignment_int_s3_reg,
      O => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count[0]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00EF"
    )
    port map (
      I0 => \n_0_time_out_wait_bypass_i_2__0\,
      I1 => \n_0_time_out_wait_bypass_i_3__0\,
      I2 => wait_bypass_count_reg(7),
      I3 => rx_fsm_reset_done_int_s3,
      O => \n_0_wait_bypass_count[0]_i_2__0\
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
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_7_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(0),
      R => \n_0_wait_bypass_count[0]_i_1__0\
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
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_5_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(10),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_4_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(11),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_7_wait_bypass_count_reg[12]_i_1__0\,
      Q => wait_bypass_count_reg(12),
      R => \n_0_wait_bypass_count[0]_i_1__0\
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
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_6_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(1),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_5_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(2),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_4_wait_bypass_count_reg[0]_i_3__0\,
      Q => wait_bypass_count_reg(3),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_7_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(4),
      R => \n_0_wait_bypass_count[0]_i_1__0\
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
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_6_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(5),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_5_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(6),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_4_wait_bypass_count_reg[4]_i_1__0\,
      Q => wait_bypass_count_reg(7),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_7_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(8),
      R => \n_0_wait_bypass_count[0]_i_1__0\
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
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2__0\,
      D => \n_6_wait_bypass_count_reg[8]_i_1__0\,
      Q => wait_bypass_count_reg(9),
      R => \n_0_wait_bypass_count[0]_i_1__0\
    );
\wait_time_cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(0),
      O => \wait_time_cnt0__0\(0)
    );
\wait_time_cnt[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(0),
      I1 => \wait_time_cnt_reg__0\(1),
      O => \n_0_wait_time_cnt[1]_i_1__0\
    );
\wait_time_cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(2),
      I1 => \wait_time_cnt_reg__0\(1),
      I2 => \wait_time_cnt_reg__0\(0),
      O => \wait_time_cnt0__0\(2)
    );
\wait_time_cnt[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(3),
      I1 => \wait_time_cnt_reg__0\(2),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(1),
      O => \wait_time_cnt0__0\(3)
    );
\wait_time_cnt[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(4),
      I1 => \wait_time_cnt_reg__0\(1),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(2),
      I4 => \wait_time_cnt_reg__0\(3),
      O => \n_0_wait_time_cnt[4]_i_1__0\
    );
\wait_time_cnt[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(5),
      I1 => \wait_time_cnt_reg__0\(3),
      I2 => \wait_time_cnt_reg__0\(2),
      I3 => \wait_time_cnt_reg__0\(0),
      I4 => \wait_time_cnt_reg__0\(1),
      I5 => \wait_time_cnt_reg__0\(4),
      O => \wait_time_cnt0__0\(5)
    );
\wait_time_cnt[6]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
    port map (
      I0 => adapt_count_reset,
      I1 => \n_0_FSM_onehot_rx_state[10]_i_5\,
      I2 => \n_0_FSM_onehot_rx_state_reg[10]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[9]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[8]\,
      O => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt[6]_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(6),
      I1 => \n_0_wait_time_cnt[6]_i_5__0\,
      O => \n_0_wait_time_cnt[6]_i_2__0\
    );
\wait_time_cnt[6]_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(6),
      I1 => \n_0_wait_time_cnt[6]_i_6__0\,
      O => \wait_time_cnt0__0\(6)
    );
\wait_time_cnt[6]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_rx_state_reg[3]\,
      I1 => \n_0_FSM_onehot_rx_state_reg[7]\,
      I2 => \n_0_FSM_onehot_rx_state_reg[6]\,
      I3 => \n_0_FSM_onehot_rx_state_reg[10]\,
      I4 => \n_0_FSM_onehot_rx_state_reg[2]\,
      O => adapt_count_reset
    );
\wait_time_cnt[6]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(1),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(2),
      I3 => \wait_time_cnt_reg__0\(3),
      I4 => \wait_time_cnt_reg__0\(4),
      I5 => \wait_time_cnt_reg__0\(5),
      O => \n_0_wait_time_cnt[6]_i_5__0\
    );
\wait_time_cnt[6]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(3),
      I1 => \wait_time_cnt_reg__0\(2),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(1),
      I4 => \wait_time_cnt_reg__0\(4),
      I5 => \wait_time_cnt_reg__0\(5),
      O => \n_0_wait_time_cnt[6]_i_6__0\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \wait_time_cnt0__0\(0),
      Q => \wait_time_cnt_reg__0\(0),
      R => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \n_0_wait_time_cnt[1]_i_1__0\,
      Q => \wait_time_cnt_reg__0\(1),
      R => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \wait_time_cnt0__0\(2),
      Q => \wait_time_cnt_reg__0\(2),
      S => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \wait_time_cnt0__0\(3),
      Q => \wait_time_cnt_reg__0\(3),
      R => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \n_0_wait_time_cnt[4]_i_1__0\,
      Q => \wait_time_cnt_reg__0\(4),
      R => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \wait_time_cnt0__0\(5),
      Q => \wait_time_cnt_reg__0\(5),
      S => \n_0_wait_time_cnt[6]_i_1__0\
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2__0\,
      D => \wait_time_cnt0__0\(6),
      Q => \wait_time_cnt_reg__0\(6),
      S => \n_0_wait_time_cnt[6]_i_1__0\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_TX_STARTUP_FSM__parameterized0\ is
  port (
    O1 : out STD_LOGIC;
    CPLL_RESET : out STD_LOGIC;
    TXUSERRDY : out STD_LOGIC;
    gt0_gttxreset_in0_out : out STD_LOGIC;
    CLK : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    I1 : in STD_LOGIC;
    mmcm_locked_out : in STD_LOGIC;
    resetdone : in STD_LOGIC;
    CPLLREFCLKLOST : in STD_LOGIC;
    I4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_TX_STARTUP_FSM__parameterized0\ : entity is "gig_ethernet_pcs_pma_0_TX_STARTUP_FSM";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_TX_STARTUP_FSM__parameterized0\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_TX_STARTUP_FSM__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^cpll_reset\ : STD_LOGIC;
  signal GTTXRESET : STD_LOGIC;
  signal \^o1\ : STD_LOGIC;
  signal \^txuserrdy\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal cplllock_sync : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal \init_wait_count_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal init_wait_done : STD_LOGIC;
  signal \mmcm_lock_count_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal mmcm_lock_i : STD_LOGIC;
  signal mmcm_lock_reclocked : STD_LOGIC;
  signal n_0_CPLL_RESET_i_1 : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_10\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_11\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_12\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_13\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_14\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_15\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_8\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[10]_i_9\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[1]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[1]_i_2\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[1]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[2]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[3]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[4]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[5]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[6]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[7]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[8]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[8]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[8]_i_4\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[8]_i_5\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[8]_i_6\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[8]_i_7\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state[9]_i_1\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[0]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[10]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[10]_i_3\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[1]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[2]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[3]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[4]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[5]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[6]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[7]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[8]\ : STD_LOGIC;
  signal \n_0_FSM_onehot_tx_state_reg[9]\ : STD_LOGIC;
  signal n_0_TXUSERRDY_i_1 : STD_LOGIC;
  signal n_0_gttxreset_i_i_1 : STD_LOGIC;
  signal \n_0_init_wait_count[6]_i_1\ : STD_LOGIC;
  signal \n_0_init_wait_count[6]_i_3\ : STD_LOGIC;
  signal \n_0_init_wait_count[6]_i_4\ : STD_LOGIC;
  signal n_0_init_wait_done_i_1 : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_1\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_2\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_4\ : STD_LOGIC;
  signal \n_0_mmcm_lock_count[9]_i_5\ : STD_LOGIC;
  signal n_0_mmcm_lock_reclocked_i_1 : STD_LOGIC;
  signal n_0_pll_reset_asserted_i_1 : STD_LOGIC;
  signal n_0_pll_reset_asserted_i_2 : STD_LOGIC;
  signal n_0_reset_time_out_i_1 : STD_LOGIC;
  signal n_0_reset_time_out_i_2 : STD_LOGIC;
  signal \n_0_reset_time_out_i_3__0\ : STD_LOGIC;
  signal n_0_reset_time_out_i_4 : STD_LOGIC;
  signal n_0_run_phase_alignment_int_i_1 : STD_LOGIC;
  signal n_0_run_phase_alignment_int_reg : STD_LOGIC;
  signal n_0_time_out_2ms_i_1 : STD_LOGIC;
  signal \n_0_time_out_2ms_i_2__0\ : STD_LOGIC;
  signal \n_0_time_out_2ms_i_3__0\ : STD_LOGIC;
  signal n_0_time_out_2ms_i_4 : STD_LOGIC;
  signal n_0_time_out_500us_i_1 : STD_LOGIC;
  signal n_0_time_out_500us_i_2 : STD_LOGIC;
  signal n_0_time_out_500us_i_3 : STD_LOGIC;
  signal n_0_time_out_500us_i_4 : STD_LOGIC;
  signal n_0_time_out_500us_i_5 : STD_LOGIC;
  signal n_0_time_out_500us_i_6 : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_10__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_1__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_3__0\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_4\ : STD_LOGIC;
  signal \n_0_time_out_counter[0]_i_5__0\ : STD_LOGIC;
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
  signal n_0_time_out_wait_bypass_i_1 : STD_LOGIC;
  signal n_0_time_out_wait_bypass_i_2 : STD_LOGIC;
  signal n_0_time_out_wait_bypass_i_3 : STD_LOGIC;
  signal n_0_time_out_wait_bypass_i_4 : STD_LOGIC;
  signal n_0_time_out_wait_bypass_reg : STD_LOGIC;
  signal n_0_time_tlock_max_i_1 : STD_LOGIC;
  signal n_0_time_tlock_max_i_2 : STD_LOGIC;
  signal n_0_time_tlock_max_i_3 : STD_LOGIC;
  signal \n_0_time_tlock_max_i_4__0\ : STD_LOGIC;
  signal n_0_tx_fsm_reset_done_int_i_1 : STD_LOGIC;
  signal n_0_tx_fsm_reset_done_int_i_2 : STD_LOGIC;
  signal n_0_tx_fsm_reset_done_int_i_3 : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_1\ : STD_LOGIC;
  signal \n_0_wait_bypass_count[0]_i_2\ : STD_LOGIC;
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
  signal \n_0_wait_time_cnt[1]_i_1\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_2\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_4\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_5\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_6\ : STD_LOGIC;
  signal \n_0_wait_time_cnt[6]_i_7\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[0]_i_2\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_time_out_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[0]_i_3\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[12]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_wait_bypass_count_reg[8]_i_1\ : STD_LOGIC;
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
  signal p_0_in : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pll_reset_asserted : STD_LOGIC;
  signal reset_time_out : STD_LOGIC;
  signal run_phase_alignment_int_s3 : STD_LOGIC;
  signal time_out_2ms : STD_LOGIC;
  signal time_out_500us : STD_LOGIC;
  signal time_out_counter_reg : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal time_out_wait_bypass_s2 : STD_LOGIC;
  signal time_out_wait_bypass_s3 : STD_LOGIC;
  signal time_tlock_max : STD_LOGIC;
  signal tx_fsm_reset_done_int_s2 : STD_LOGIC;
  signal tx_fsm_reset_done_int_s3 : STD_LOGIC;
  signal tx_state12_out : STD_LOGIC;
  signal tx_state13_out : STD_LOGIC;
  signal txresetdone_s2 : STD_LOGIC;
  signal txresetdone_s3 : STD_LOGIC;
  signal wait_bypass_count_reg : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal wait_time_cnt0 : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \wait_time_cnt_reg__0\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal NLW_sync_cpllrefclklost_data_out_UNCONNECTED : STD_LOGIC;
  signal \NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wait_bypass_count_reg[16]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[10]_i_11\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[10]_i_12\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[10]_i_13\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[10]_i_4\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[10]_i_8\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[1]_i_3\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[6]_i_2\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[8]_i_2\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[8]_i_5\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \FSM_onehot_tx_state[8]_i_7\ : label is "soft_lutpair27";
  attribute RETAIN_INVERTER : boolean;
  attribute RETAIN_INVERTER of \init_wait_count[0]_i_1\ : label is true;
  attribute SOFT_HLUTNM of \init_wait_count[0]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \init_wait_count[1]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \init_wait_count[2]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \init_wait_count[3]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \init_wait_count[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \init_wait_count[6]_i_4\ : label is "soft_lutpair24";
  attribute counter : integer;
  attribute counter of \init_wait_count_reg[0]\ : label is 11;
  attribute counter of \init_wait_count_reg[1]\ : label is 11;
  attribute counter of \init_wait_count_reg[2]\ : label is 11;
  attribute counter of \init_wait_count_reg[3]\ : label is 11;
  attribute counter of \init_wait_count_reg[4]\ : label is 11;
  attribute counter of \init_wait_count_reg[5]\ : label is 11;
  attribute counter of \init_wait_count_reg[6]\ : label is 11;
  attribute SOFT_HLUTNM of \mmcm_lock_count[1]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \mmcm_lock_count[2]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \mmcm_lock_count[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mmcm_lock_count[4]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \mmcm_lock_count[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mmcm_lock_count[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \mmcm_lock_count[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \mmcm_lock_count[9]_i_3\ : label is "soft_lutpair22";
  attribute counter of \mmcm_lock_count_reg[0]\ : label is 21;
  attribute counter of \mmcm_lock_count_reg[1]\ : label is 21;
  attribute counter of \mmcm_lock_count_reg[2]\ : label is 21;
  attribute counter of \mmcm_lock_count_reg[3]\ : label is 21;
  attribute counter of \mmcm_lock_count_reg[4]\ : label is 21;
  attribute counter of \mmcm_lock_count_reg[5]\ : label is 21;
  attribute counter of \mmcm_lock_count_reg[6]\ : label is 21;
  attribute counter of \mmcm_lock_count_reg[7]\ : label is 21;
  attribute counter of \mmcm_lock_count_reg[8]\ : label is 21;
  attribute counter of \mmcm_lock_count_reg[9]\ : label is 21;
  attribute SOFT_HLUTNM of mmcm_lock_reclocked_i_1 : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of pll_reset_asserted_i_2 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \reset_time_out_i_3__0\ : label is "soft_lutpair27";
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of sync_TXRESETDONE : label is true;
  attribute INITIALISE : string;
  attribute INITIALISE of sync_TXRESETDONE : label is "2'b00";
  attribute DONT_TOUCH of sync_cplllock : label is true;
  attribute INITIALISE of sync_cplllock : label is "2'b00";
  attribute DONT_TOUCH of sync_cpllrefclklost : label is true;
  attribute INITIALISE of sync_cpllrefclklost : label is "2'b00";
  attribute DONT_TOUCH of sync_mmcm_lock_reclocked : label is true;
  attribute INITIALISE of sync_mmcm_lock_reclocked : label is "2'b00";
  attribute DONT_TOUCH of sync_run_phase_alignment_int : label is true;
  attribute INITIALISE of sync_run_phase_alignment_int : label is "2'b00";
  attribute DONT_TOUCH of sync_time_out_wait_bypass : label is true;
  attribute INITIALISE of sync_time_out_wait_bypass : label is "2'b00";
  attribute DONT_TOUCH of sync_tx_fsm_reset_done_int : label is true;
  attribute INITIALISE of sync_tx_fsm_reset_done_int : label is "2'b00";
  attribute SOFT_HLUTNM of time_out_2ms_i_1 : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of time_out_500us_i_3 : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_4\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \time_out_counter[0]_i_5__0\ : label is "soft_lutpair33";
  attribute counter of \time_out_counter_reg[0]\ : label is 12;
  attribute counter of \time_out_counter_reg[10]\ : label is 12;
  attribute counter of \time_out_counter_reg[11]\ : label is 12;
  attribute counter of \time_out_counter_reg[12]\ : label is 12;
  attribute counter of \time_out_counter_reg[13]\ : label is 12;
  attribute counter of \time_out_counter_reg[14]\ : label is 12;
  attribute counter of \time_out_counter_reg[15]\ : label is 12;
  attribute counter of \time_out_counter_reg[16]\ : label is 12;
  attribute counter of \time_out_counter_reg[17]\ : label is 12;
  attribute counter of \time_out_counter_reg[18]\ : label is 12;
  attribute counter of \time_out_counter_reg[1]\ : label is 12;
  attribute counter of \time_out_counter_reg[2]\ : label is 12;
  attribute counter of \time_out_counter_reg[3]\ : label is 12;
  attribute counter of \time_out_counter_reg[4]\ : label is 12;
  attribute counter of \time_out_counter_reg[5]\ : label is 12;
  attribute counter of \time_out_counter_reg[6]\ : label is 12;
  attribute counter of \time_out_counter_reg[7]\ : label is 12;
  attribute counter of \time_out_counter_reg[8]\ : label is 12;
  attribute counter of \time_out_counter_reg[9]\ : label is 12;
  attribute SOFT_HLUTNM of time_tlock_max_i_1 : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of time_tlock_max_i_3 : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of tx_fsm_reset_done_int_i_3 : label is "soft_lutpair19";
  attribute counter of \wait_bypass_count_reg[0]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[10]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[11]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[12]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[13]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[14]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[15]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[16]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[1]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[2]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[3]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[4]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[5]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[6]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[7]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[8]\ : label is 14;
  attribute counter of \wait_bypass_count_reg[9]\ : label is 14;
  attribute RETAIN_INVERTER of \wait_time_cnt[0]_i_1\ : label is true;
  attribute SOFT_HLUTNM of \wait_time_cnt[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \wait_time_cnt[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \wait_time_cnt[3]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wait_time_cnt[4]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_3\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \wait_time_cnt[6]_i_4\ : label is "soft_lutpair25";
  attribute counter of \wait_time_cnt_reg[0]\ : label is 13;
  attribute counter of \wait_time_cnt_reg[1]\ : label is 13;
  attribute counter of \wait_time_cnt_reg[2]\ : label is 13;
  attribute counter of \wait_time_cnt_reg[3]\ : label is 13;
  attribute counter of \wait_time_cnt_reg[4]\ : label is 13;
  attribute counter of \wait_time_cnt_reg[5]\ : label is 13;
  attribute counter of \wait_time_cnt_reg[6]\ : label is 13;
begin
  CPLL_RESET <= \^cpll_reset\;
  O1 <= \^o1\;
  TXUSERRDY <= \^txuserrdy\;
CPLL_RESET_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000A2AAAEAA"
    )
    port map (
      I0 => \^cpll_reset\,
      I1 => \n_0_FSM_onehot_tx_state[10]_i_5\,
      I2 => n_0_tx_fsm_reset_done_int_i_3,
      I3 => n_0_tx_fsm_reset_done_int_i_2,
      I4 => pll_reset_asserted,
      I5 => I4(0),
      O => n_0_CPLL_RESET_i_1
    );
CPLL_RESET_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_CPLL_RESET_i_1,
      Q => \^cpll_reset\,
      R => \<const0>\
    );
\FSM_onehot_tx_state[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEE2EEFF22E2EEFF"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[10]_i_3\,
      I1 => n_0_tx_fsm_reset_done_int_i_3,
      I2 => \n_0_FSM_onehot_tx_state[10]_i_4\,
      I3 => n_0_tx_fsm_reset_done_int_i_2,
      I4 => \n_0_FSM_onehot_tx_state[10]_i_5\,
      I5 => init_wait_done,
      O => \n_0_FSM_onehot_tx_state[10]_i_1\
    );
\FSM_onehot_tx_state[10]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0EFE0E0E00000000"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[10]_i_15\,
      I1 => mmcm_lock_reclocked,
      I2 => \n_0_wait_time_cnt[6]_i_4\,
      I3 => cplllock_sync,
      I4 => pll_reset_asserted,
      I5 => \n_0_FSM_onehot_tx_state[10]_i_5\,
      O => \n_0_FSM_onehot_tx_state[10]_i_10\
    );
\FSM_onehot_tx_state[10]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[0]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[10]\,
      O => \n_0_FSM_onehot_tx_state[10]_i_11\
    );
\FSM_onehot_tx_state[10]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[3]\,
      O => \n_0_FSM_onehot_tx_state[10]_i_12\
    );
\FSM_onehot_tx_state[10]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[4]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[1]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[0]\,
      O => \n_0_FSM_onehot_tx_state[10]_i_13\
    );
\FSM_onehot_tx_state[10]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFD"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[10]_i_5\,
      I1 => \n_0_FSM_onehot_tx_state_reg[10]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[0]\,
      I5 => \n_0_FSM_onehot_tx_state_reg[1]\,
      O => \n_0_FSM_onehot_tx_state[10]_i_14\
    );
\FSM_onehot_tx_state[10]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_tlock_max,
      I1 => reset_time_out,
      O => \n_0_FSM_onehot_tx_state[10]_i_15\
    );
\FSM_onehot_tx_state[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[10]_i_6\,
      I1 => \n_0_FSM_onehot_tx_state[10]_i_7\,
      I2 => \n_0_FSM_onehot_tx_state[10]_i_8\,
      O => \n_0_FSM_onehot_tx_state[10]_i_2\
    );
\FSM_onehot_tx_state[10]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_wait_time_cnt[6]_i_7\,
      I1 => \wait_time_cnt_reg__0\(6),
      O => \n_0_FSM_onehot_tx_state[10]_i_4\
    );
\FSM_onehot_tx_state[10]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[8]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[9]\,
      O => \n_0_FSM_onehot_tx_state[10]_i_5\
    );
\FSM_onehot_tx_state[10]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000008000800000"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[10]_i_11\,
      I1 => \n_0_wait_time_cnt[6]_i_4\,
      I2 => \n_0_FSM_onehot_tx_state[10]_i_12\,
      I3 => \n_0_FSM_onehot_tx_state_reg[1]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[8]\,
      I5 => \n_0_FSM_onehot_tx_state_reg[9]\,
      O => \n_0_FSM_onehot_tx_state[10]_i_6\
    );
\FSM_onehot_tx_state[10]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000202000"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[8]_i_3\,
      I1 => \n_0_FSM_onehot_tx_state[10]_i_13\,
      I2 => \n_0_wait_time_cnt[6]_i_5\,
      I3 => \n_0_FSM_onehot_tx_state_reg[8]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[9]\,
      I5 => \n_0_FSM_onehot_tx_state_reg[10]\,
      O => \n_0_FSM_onehot_tx_state[10]_i_7\
    );
\FSM_onehot_tx_state[10]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000116"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[7]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[6]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[4]\,
      I4 => \n_0_FSM_onehot_tx_state[10]_i_14\,
      O => \n_0_FSM_onehot_tx_state[10]_i_8\
    );
\FSM_onehot_tx_state[10]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF2F2FF00F2F2"
    )
    port map (
      I0 => time_out_500us,
      I1 => reset_time_out,
      I2 => txresetdone_s3,
      I3 => time_out_2ms,
      I4 => \n_0_wait_time_cnt[6]_i_4\,
      I5 => cplllock_sync,
      O => \n_0_FSM_onehot_tx_state[10]_i_9\
    );
\FSM_onehot_tx_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"303030BB30303088"
    )
    port map (
      I0 => time_out_wait_bypass_s3,
      I1 => \n_0_FSM_onehot_tx_state[10]_i_6\,
      I2 => \n_0_FSM_onehot_tx_state[1]_i_2\,
      I3 => \n_0_FSM_onehot_tx_state[10]_i_8\,
      I4 => \n_0_FSM_onehot_tx_state[10]_i_7\,
      I5 => \n_0_FSM_onehot_tx_state[1]_i_3\,
      O => \n_0_FSM_onehot_tx_state[1]_i_1\
    );
\FSM_onehot_tx_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00004F0000004000"
    )
    port map (
      I0 => mmcm_lock_reclocked,
      I1 => time_tlock_max,
      I2 => \n_0_FSM_onehot_tx_state[8]_i_4\,
      I3 => \n_0_FSM_onehot_tx_state[8]_i_3\,
      I4 => reset_time_out,
      I5 => time_out_500us,
      O => \n_0_FSM_onehot_tx_state[1]_i_2\
    );
\FSM_onehot_tx_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[8]_i_4\,
      I1 => \n_0_FSM_onehot_tx_state[8]_i_3\,
      I2 => time_out_2ms,
      O => \n_0_FSM_onehot_tx_state[1]_i_3\
    );
\FSM_onehot_tx_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001000"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[10]_i_8\,
      I1 => \n_0_FSM_onehot_tx_state[10]_i_7\,
      I2 => \n_0_FSM_onehot_tx_state[8]_i_4\,
      I3 => \n_0_FSM_onehot_tx_state[8]_i_3\,
      I4 => \n_0_FSM_onehot_tx_state[10]_i_6\,
      O => \n_0_FSM_onehot_tx_state[2]_i_1\
    );
\FSM_onehot_tx_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[10]_i_8\,
      I1 => \n_0_FSM_onehot_tx_state[10]_i_7\,
      I2 => \n_0_FSM_onehot_tx_state[8]_i_4\,
      I3 => \n_0_FSM_onehot_tx_state[8]_i_3\,
      I4 => \n_0_FSM_onehot_tx_state[10]_i_6\,
      O => \n_0_FSM_onehot_tx_state[3]_i_1\
    );
\FSM_onehot_tx_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000100"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[10]_i_8\,
      I1 => \n_0_FSM_onehot_tx_state[10]_i_7\,
      I2 => time_out_2ms,
      I3 => \n_0_FSM_onehot_tx_state[8]_i_3\,
      I4 => \n_0_FSM_onehot_tx_state[8]_i_4\,
      I5 => \n_0_FSM_onehot_tx_state[10]_i_6\,
      O => \n_0_FSM_onehot_tx_state[4]_i_1\
    );
\FSM_onehot_tx_state[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002220"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[8]_i_4\,
      I1 => \n_0_FSM_onehot_tx_state[8]_i_3\,
      I2 => \n_0_FSM_onehot_tx_state[10]_i_8\,
      I3 => \n_0_FSM_onehot_tx_state[10]_i_7\,
      I4 => \n_0_FSM_onehot_tx_state[10]_i_6\,
      O => \n_0_FSM_onehot_tx_state[5]_i_1\
    );
\FSM_onehot_tx_state[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000020202000"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[8]_i_4\,
      I1 => tx_state13_out,
      I2 => \n_0_FSM_onehot_tx_state[8]_i_3\,
      I3 => \n_0_FSM_onehot_tx_state[10]_i_8\,
      I4 => \n_0_FSM_onehot_tx_state[10]_i_7\,
      I5 => \n_0_FSM_onehot_tx_state[10]_i_6\,
      O => \n_0_FSM_onehot_tx_state[6]_i_1\
    );
\FSM_onehot_tx_state[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => reset_time_out,
      I1 => time_tlock_max,
      I2 => mmcm_lock_reclocked,
      O => tx_state13_out
    );
\FSM_onehot_tx_state[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001110"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[8]_i_4\,
      I1 => \n_0_FSM_onehot_tx_state[8]_i_3\,
      I2 => \n_0_FSM_onehot_tx_state[10]_i_8\,
      I3 => \n_0_FSM_onehot_tx_state[10]_i_7\,
      I4 => \n_0_FSM_onehot_tx_state[10]_i_6\,
      O => \n_0_FSM_onehot_tx_state[7]_i_1\
    );
\FSM_onehot_tx_state[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000004040400"
    )
    port map (
      I0 => tx_state12_out,
      I1 => \n_0_FSM_onehot_tx_state[8]_i_3\,
      I2 => \n_0_FSM_onehot_tx_state[8]_i_4\,
      I3 => \n_0_FSM_onehot_tx_state[10]_i_8\,
      I4 => \n_0_FSM_onehot_tx_state[10]_i_7\,
      I5 => \n_0_FSM_onehot_tx_state[10]_i_6\,
      O => \n_0_FSM_onehot_tx_state[8]_i_1\
    );
\FSM_onehot_tx_state[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_500us,
      I1 => reset_time_out,
      O => tx_state12_out
    );
\FSM_onehot_tx_state[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[0]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[10]\,
      I2 => \n_0_FSM_onehot_tx_state[8]_i_5\,
      I3 => n_0_tx_fsm_reset_done_int_i_3,
      I4 => \n_0_FSM_onehot_tx_state[8]_i_6\,
      O => \n_0_FSM_onehot_tx_state[8]_i_3\
    );
\FSM_onehot_tx_state[8]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFEFEEF"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[8]_i_7\,
      I1 => \n_0_FSM_onehot_tx_state[10]_i_13\,
      I2 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[7]\,
      I5 => \n_0_FSM_onehot_tx_state_reg[6]\,
      O => \n_0_FSM_onehot_tx_state[8]_i_4\
    );
\FSM_onehot_tx_state[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010117"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[1]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[9]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[7]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[3]\,
      O => \n_0_FSM_onehot_tx_state[8]_i_5\
    );
\FSM_onehot_tx_state[8]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[8]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[4]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[6]\,
      O => \n_0_FSM_onehot_tx_state[8]_i_6\
    );
\FSM_onehot_tx_state[8]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[10]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[9]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[8]\,
      O => \n_0_FSM_onehot_tx_state[8]_i_7\
    );
\FSM_onehot_tx_state[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state[10]_i_6\,
      I1 => time_out_wait_bypass_s3,
      I2 => \n_0_FSM_onehot_tx_state[10]_i_8\,
      I3 => \n_0_FSM_onehot_tx_state[10]_i_7\,
      O => \n_0_FSM_onehot_tx_state[9]_i_1\
    );
\FSM_onehot_tx_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_tx_state[10]_i_1\,
      D => \<const0>\,
      Q => \n_0_FSM_onehot_tx_state_reg[0]\,
      S => I4(0)
    );
\FSM_onehot_tx_state_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_tx_state[10]_i_1\,
      D => \n_0_FSM_onehot_tx_state[10]_i_2\,
      Q => \n_0_FSM_onehot_tx_state_reg[10]\,
      R => I4(0)
    );
\FSM_onehot_tx_state_reg[10]_i_3\: unisim.vcomponents.MUXF7
    port map (
      I0 => \n_0_FSM_onehot_tx_state[10]_i_9\,
      I1 => \n_0_FSM_onehot_tx_state[10]_i_10\,
      O => \n_0_FSM_onehot_tx_state_reg[10]_i_3\,
      S => \n_0_wait_time_cnt[6]_i_5\
    );
\FSM_onehot_tx_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_tx_state[10]_i_1\,
      D => \n_0_FSM_onehot_tx_state[1]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[1]\,
      R => I4(0)
    );
\FSM_onehot_tx_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_tx_state[10]_i_1\,
      D => \n_0_FSM_onehot_tx_state[2]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[2]\,
      R => I4(0)
    );
\FSM_onehot_tx_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_tx_state[10]_i_1\,
      D => \n_0_FSM_onehot_tx_state[3]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[3]\,
      R => I4(0)
    );
\FSM_onehot_tx_state_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_tx_state[10]_i_1\,
      D => \n_0_FSM_onehot_tx_state[4]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[4]\,
      R => I4(0)
    );
\FSM_onehot_tx_state_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_tx_state[10]_i_1\,
      D => \n_0_FSM_onehot_tx_state[5]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[5]\,
      R => I4(0)
    );
\FSM_onehot_tx_state_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_tx_state[10]_i_1\,
      D => \n_0_FSM_onehot_tx_state[6]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[6]\,
      R => I4(0)
    );
\FSM_onehot_tx_state_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_tx_state[10]_i_1\,
      D => \n_0_FSM_onehot_tx_state[7]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[7]\,
      R => I4(0)
    );
\FSM_onehot_tx_state_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_tx_state[10]_i_1\,
      D => \n_0_FSM_onehot_tx_state[8]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[8]\,
      R => I4(0)
    );
\FSM_onehot_tx_state_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_FSM_onehot_tx_state[10]_i_1\,
      D => \n_0_FSM_onehot_tx_state[9]_i_1\,
      Q => \n_0_FSM_onehot_tx_state_reg[9]\,
      R => I4(0)
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
TXUSERRDY_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA2BAA"
    )
    port map (
      I0 => \^txuserrdy\,
      I1 => \n_0_wait_time_cnt[6]_i_5\,
      I2 => \n_0_wait_time_cnt[6]_i_4\,
      I3 => \n_0_FSM_onehot_tx_state[10]_i_5\,
      I4 => n_0_tx_fsm_reset_done_int_i_3,
      I5 => I4(0),
      O => n_0_TXUSERRDY_i_1
    );
TXUSERRDY_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_TXUSERRDY_i_1,
      Q => \^txuserrdy\,
      R => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
gttxreset_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000008EAAAAAA"
    )
    port map (
      I0 => GTTXRESET,
      I1 => \n_0_wait_time_cnt[6]_i_4\,
      I2 => n_0_tx_fsm_reset_done_int_i_3,
      I3 => \n_0_wait_time_cnt[6]_i_5\,
      I4 => \n_0_FSM_onehot_tx_state[10]_i_5\,
      I5 => I4(0),
      O => n_0_gttxreset_i_i_1
    );
gttxreset_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_gttxreset_i_i_1,
      Q => GTTXRESET,
      R => \<const0>\
    );
gtxe2_i_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => GTTXRESET,
      I1 => \^o1\,
      I2 => reset_out,
      O => gt0_gttxreset_in0_out
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
      I0 => \init_wait_count_reg__0\(1),
      I1 => \init_wait_count_reg__0\(0),
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
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(3),
      O => p_0_in(4)
    );
\init_wait_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(0),
      I4 => \init_wait_count_reg__0\(2),
      I5 => \init_wait_count_reg__0\(4),
      O => p_0_in(5)
    );
\init_wait_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \n_0_init_wait_count[6]_i_3\,
      O => \n_0_init_wait_count[6]_i_1\
    );
\init_wait_count[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \n_0_init_wait_count[6]_i_4\,
      I2 => \init_wait_count_reg__0\(5),
      O => p_0_in(6)
    );
\init_wait_count[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000800000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(6),
      I1 => \init_wait_count_reg__0\(3),
      I2 => \init_wait_count_reg__0\(1),
      I3 => \init_wait_count_reg__0\(4),
      I4 => \init_wait_count_reg__0\(2),
      I5 => \init_wait_count_reg__0\(0),
      O => \n_0_init_wait_count[6]_i_3\
    );
\init_wait_count[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \init_wait_count_reg__0\(4),
      I1 => \init_wait_count_reg__0\(2),
      I2 => \init_wait_count_reg__0\(0),
      I3 => \init_wait_count_reg__0\(1),
      I4 => \init_wait_count_reg__0\(3),
      O => \n_0_init_wait_count[6]_i_4\
    );
\init_wait_count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => I4(0),
      D => p_0_in(0),
      Q => \init_wait_count_reg__0\(0)
    );
\init_wait_count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => I4(0),
      D => p_0_in(1),
      Q => \init_wait_count_reg__0\(1)
    );
\init_wait_count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => I4(0),
      D => p_0_in(2),
      Q => \init_wait_count_reg__0\(2)
    );
\init_wait_count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => I4(0),
      D => p_0_in(3),
      Q => \init_wait_count_reg__0\(3)
    );
\init_wait_count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => I4(0),
      D => p_0_in(4),
      Q => \init_wait_count_reg__0\(4)
    );
\init_wait_count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => I4(0),
      D => p_0_in(5),
      Q => \init_wait_count_reg__0\(5)
    );
\init_wait_count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_init_wait_count[6]_i_1\,
      CLR => I4(0),
      D => p_0_in(6),
      Q => \init_wait_count_reg__0\(6)
    );
init_wait_done_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => \init_wait_count_reg__0\(5),
      I1 => \n_0_init_wait_count[6]_i_3\,
      I2 => init_wait_done,
      O => n_0_init_wait_done_i_1
    );
init_wait_done_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      CLR => I4(0),
      D => n_0_init_wait_done_i_1,
      Q => init_wait_done
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
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(0),
      O => \p_0_in__1\(2)
    );
\mmcm_lock_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(3),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      O => \p_0_in__1\(3)
    );
\mmcm_lock_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(3),
      I2 => \mmcm_lock_count_reg__0\(1),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(2),
      O => \p_0_in__1\(4)
    );
\mmcm_lock_count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(5),
      I1 => \mmcm_lock_count_reg__0\(4),
      I2 => \mmcm_lock_count_reg__0\(2),
      I3 => \mmcm_lock_count_reg__0\(0),
      I4 => \mmcm_lock_count_reg__0\(1),
      I5 => \mmcm_lock_count_reg__0\(3),
      O => \p_0_in__1\(5)
    );
\mmcm_lock_count[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(6),
      I1 => \n_0_mmcm_lock_count[9]_i_5\,
      O => \p_0_in__1\(6)
    );
\mmcm_lock_count[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(7),
      I1 => \mmcm_lock_count_reg__0\(6),
      I2 => \n_0_mmcm_lock_count[9]_i_5\,
      O => \p_0_in__1\(7)
    );
\mmcm_lock_count[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(8),
      I1 => \mmcm_lock_count_reg__0\(7),
      I2 => \n_0_mmcm_lock_count[9]_i_5\,
      I3 => \mmcm_lock_count_reg__0\(6),
      O => \p_0_in__1\(8)
    );
\mmcm_lock_count[9]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => mmcm_lock_i,
      O => \n_0_mmcm_lock_count[9]_i_1\
    );
\mmcm_lock_count[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(1),
      I1 => \mmcm_lock_count_reg__0\(0),
      I2 => \n_0_mmcm_lock_count[9]_i_4\,
      I3 => \mmcm_lock_count_reg__0\(7),
      I4 => \mmcm_lock_count_reg__0\(8),
      I5 => \mmcm_lock_count_reg__0\(9),
      O => \n_0_mmcm_lock_count[9]_i_2\
    );
\mmcm_lock_count[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(9),
      I1 => \mmcm_lock_count_reg__0\(8),
      I2 => \mmcm_lock_count_reg__0\(6),
      I3 => \n_0_mmcm_lock_count[9]_i_5\,
      I4 => \mmcm_lock_count_reg__0\(7),
      O => \p_0_in__1\(9)
    );
\mmcm_lock_count[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(2),
      I1 => \mmcm_lock_count_reg__0\(1),
      I2 => \mmcm_lock_count_reg__0\(5),
      I3 => \mmcm_lock_count_reg__0\(6),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(4),
      O => \n_0_mmcm_lock_count[9]_i_4\
    );
\mmcm_lock_count[9]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => \mmcm_lock_count_reg__0\(4),
      I1 => \mmcm_lock_count_reg__0\(2),
      I2 => \mmcm_lock_count_reg__0\(0),
      I3 => \mmcm_lock_count_reg__0\(1),
      I4 => \mmcm_lock_count_reg__0\(3),
      I5 => \mmcm_lock_count_reg__0\(5),
      O => \n_0_mmcm_lock_count[9]_i_5\
    );
\mmcm_lock_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__1\(0),
      Q => \mmcm_lock_count_reg__0\(0),
      R => \n_0_mmcm_lock_count[9]_i_1\
    );
\mmcm_lock_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__1\(1),
      Q => \mmcm_lock_count_reg__0\(1),
      R => \n_0_mmcm_lock_count[9]_i_1\
    );
\mmcm_lock_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__1\(2),
      Q => \mmcm_lock_count_reg__0\(2),
      R => \n_0_mmcm_lock_count[9]_i_1\
    );
\mmcm_lock_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__1\(3),
      Q => \mmcm_lock_count_reg__0\(3),
      R => \n_0_mmcm_lock_count[9]_i_1\
    );
\mmcm_lock_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__1\(4),
      Q => \mmcm_lock_count_reg__0\(4),
      R => \n_0_mmcm_lock_count[9]_i_1\
    );
\mmcm_lock_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__1\(5),
      Q => \mmcm_lock_count_reg__0\(5),
      R => \n_0_mmcm_lock_count[9]_i_1\
    );
\mmcm_lock_count_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__1\(6),
      Q => \mmcm_lock_count_reg__0\(6),
      R => \n_0_mmcm_lock_count[9]_i_1\
    );
\mmcm_lock_count_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__1\(7),
      Q => \mmcm_lock_count_reg__0\(7),
      R => \n_0_mmcm_lock_count[9]_i_1\
    );
\mmcm_lock_count_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__1\(8),
      Q => \mmcm_lock_count_reg__0\(8),
      R => \n_0_mmcm_lock_count[9]_i_1\
    );
\mmcm_lock_count_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \n_0_mmcm_lock_count[9]_i_2\,
      D => \p_0_in__1\(9),
      Q => \mmcm_lock_count_reg__0\(9),
      R => \n_0_mmcm_lock_count[9]_i_1\
    );
mmcm_lock_reclocked_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => mmcm_lock_i,
      I1 => \n_0_mmcm_lock_count[9]_i_2\,
      I2 => mmcm_lock_reclocked,
      O => n_0_mmcm_lock_reclocked_i_1
    );
mmcm_lock_reclocked_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_mmcm_lock_reclocked_i_1,
      Q => mmcm_lock_reclocked,
      R => \<const0>\
    );
pll_reset_asserted_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AABAAA8A"
    )
    port map (
      I0 => pll_reset_asserted,
      I1 => n_0_pll_reset_asserted_i_2,
      I2 => \n_0_wait_time_cnt[6]_i_4\,
      I3 => n_0_tx_fsm_reset_done_int_i_3,
      I4 => \n_0_wait_time_cnt[6]_i_5\,
      I5 => I4(0),
      O => n_0_pll_reset_asserted_i_1
    );
pll_reset_asserted_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFF02"
    )
    port map (
      I0 => pll_reset_asserted,
      I1 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[9]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[8]\,
      O => n_0_pll_reset_asserted_i_2
    );
pll_reset_asserted_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_pll_reset_asserted_i_1,
      Q => pll_reset_asserted,
      R => \<const0>\
    );
reset_time_out_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000EEE2"
    )
    port map (
      I0 => reset_time_out,
      I1 => n_0_reset_time_out_i_2,
      I2 => \n_0_reset_time_out_i_3__0\,
      I3 => n_0_reset_time_out_i_4,
      I4 => I4(0),
      O => n_0_reset_time_out_i_1
    );
reset_time_out_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888CCCCFFCFCCCC"
    )
    port map (
      I0 => init_wait_done,
      I1 => n_0_tx_fsm_reset_done_int_i_2,
      I2 => \n_0_wait_time_cnt[6]_i_4\,
      I3 => cplllock_sync,
      I4 => \n_0_FSM_onehot_tx_state[10]_i_5\,
      I5 => n_0_tx_fsm_reset_done_int_i_3,
      O => n_0_reset_time_out_i_2
    );
\reset_time_out_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3338"
    )
    port map (
      I0 => init_wait_done,
      I1 => n_0_tx_fsm_reset_done_int_i_3,
      I2 => \n_0_FSM_onehot_tx_state_reg[9]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[8]\,
      O => \n_0_reset_time_out_i_3__0\
    );
reset_time_out_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
    port map (
      I0 => mmcm_lock_reclocked,
      I1 => \n_0_wait_time_cnt[6]_i_5\,
      I2 => cplllock_sync,
      I3 => \n_0_wait_time_cnt[6]_i_4\,
      I4 => txresetdone_s3,
      O => n_0_reset_time_out_i_4
    );
reset_time_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_reset_time_out_i_1,
      Q => reset_time_out,
      R => \<const0>\
    );
run_phase_alignment_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE8AAAA"
    )
    port map (
      I0 => n_0_run_phase_alignment_int_reg,
      I1 => n_0_tx_fsm_reset_done_int_i_3,
      I2 => \n_0_FSM_onehot_tx_state_reg[9]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[8]\,
      I4 => n_0_tx_fsm_reset_done_int_i_2,
      I5 => I4(0),
      O => n_0_run_phase_alignment_int_i_1
    );
run_phase_alignment_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_run_phase_alignment_int_i_1,
      Q => n_0_run_phase_alignment_int_reg,
      R => \<const0>\
    );
run_phase_alignment_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => \<const1>\,
      D => data_out,
      Q => run_phase_alignment_int_s3,
      R => \<const0>\
    );
sync_TXRESETDONE: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__19\
    port map (
      clk => independent_clock_bufg,
      data_in => I1,
      data_out => txresetdone_s2
    );
sync_cplllock: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__22\
    port map (
      clk => independent_clock_bufg,
      data_in => resetdone,
      data_out => cplllock_sync
    );
sync_cpllrefclklost: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__23\
    port map (
      clk => independent_clock_bufg,
      data_in => CPLLREFCLKLOST,
      data_out => NLW_sync_cpllrefclklost_data_out_UNCONNECTED
    );
sync_mmcm_lock_reclocked: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__21\
    port map (
      clk => independent_clock_bufg,
      data_in => mmcm_locked_out,
      data_out => mmcm_lock_i
    );
sync_run_phase_alignment_int: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__17\
    port map (
      clk => CLK,
      data_in => n_0_run_phase_alignment_int_reg,
      data_out => data_out
    );
sync_time_out_wait_bypass: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__20\
    port map (
      clk => independent_clock_bufg,
      data_in => n_0_time_out_wait_bypass_reg,
      data_out => time_out_wait_bypass_s2
    );
sync_tx_fsm_reset_done_int: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__18\
    port map (
      clk => CLK,
      data_in => \^o1\,
      data_out => tx_fsm_reset_done_int_s2
    );
time_out_2ms_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => time_out_2ms,
      I1 => \n_0_time_out_2ms_i_2__0\,
      I2 => reset_time_out,
      O => n_0_time_out_2ms_i_1
    );
\time_out_2ms_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
    port map (
      I0 => \n_0_time_out_counter[0]_i_5__0\,
      I1 => \n_0_time_out_2ms_i_3__0\,
      I2 => time_out_counter_reg(9),
      I3 => time_out_counter_reg(1),
      I4 => time_out_counter_reg(2),
      I5 => n_0_time_out_2ms_i_4,
      O => \n_0_time_out_2ms_i_2__0\
    );
\time_out_2ms_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(8),
      I2 => time_out_counter_reg(10),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(14),
      O => \n_0_time_out_2ms_i_3__0\
    );
time_out_2ms_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => time_out_counter_reg(16),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(15),
      O => n_0_time_out_2ms_i_4
    );
time_out_2ms_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
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
      INIT => X"00000008"
    )
    port map (
      I0 => n_0_time_out_500us_i_3,
      I1 => n_0_time_out_500us_i_4,
      I2 => n_0_time_out_500us_i_5,
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(14),
      O => n_0_time_out_500us_i_2
    );
time_out_500us_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => n_0_time_out_500us_i_6,
      I1 => time_out_counter_reg(2),
      I2 => time_out_counter_reg(1),
      O => n_0_time_out_500us_i_3
    );
time_out_500us_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000080"
    )
    port map (
      I0 => time_out_counter_reg(7),
      I1 => time_out_counter_reg(15),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(11),
      I4 => time_out_counter_reg(4),
      I5 => time_out_counter_reg(0),
      O => n_0_time_out_500us_i_4
    );
time_out_500us_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FB"
    )
    port map (
      I0 => time_out_counter_reg(12),
      I1 => time_out_counter_reg(5),
      I2 => time_out_counter_reg(8),
      O => n_0_time_out_500us_i_5
    );
time_out_500us_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
    port map (
      I0 => time_out_counter_reg(18),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(3),
      I3 => time_out_counter_reg(6),
      I4 => time_out_counter_reg(9),
      I5 => time_out_counter_reg(17),
      O => n_0_time_out_500us_i_6
    );
time_out_500us_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_time_out_500us_i_1,
      Q => time_out_500us,
      R => \<const0>\
    );
\time_out_counter[0]_i_10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000008000"
    )
    port map (
      I0 => time_out_counter_reg(17),
      I1 => time_out_counter_reg(18),
      I2 => time_out_counter_reg(7),
      I3 => time_out_counter_reg(12),
      I4 => time_out_counter_reg(6),
      I5 => time_out_counter_reg(5),
      O => \n_0_time_out_counter[0]_i_10__0\
    );
\time_out_counter[0]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFDFFFF"
    )
    port map (
      I0 => time_out_counter_reg(11),
      I1 => time_out_counter_reg(15),
      I2 => \n_0_time_out_counter[0]_i_3__0\,
      I3 => \n_0_time_out_counter[0]_i_4\,
      I4 => \n_0_time_out_counter[0]_i_5__0\,
      O => \n_0_time_out_counter[0]_i_1__0\
    );
\time_out_counter[0]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => time_out_counter_reg(3),
      I1 => time_out_counter_reg(10),
      I2 => time_out_counter_reg(14),
      I3 => time_out_counter_reg(13),
      I4 => time_out_counter_reg(8),
      I5 => time_out_counter_reg(16),
      O => \n_0_time_out_counter[0]_i_3__0\
    );
\time_out_counter[0]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
    port map (
      I0 => time_out_counter_reg(2),
      I1 => time_out_counter_reg(1),
      I2 => time_out_counter_reg(9),
      O => \n_0_time_out_counter[0]_i_4\
    );
\time_out_counter[0]_i_5__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
    port map (
      I0 => \n_0_time_out_counter[0]_i_10__0\,
      I1 => time_out_counter_reg(4),
      I2 => time_out_counter_reg(0),
      O => \n_0_time_out_counter[0]_i_5__0\
    );
\time_out_counter[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(3),
      O => \n_0_time_out_counter[0]_i_6\
    );
\time_out_counter[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(2),
      O => \n_0_time_out_counter[0]_i_7\
    );
\time_out_counter[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => time_out_counter_reg(1),
      O => \n_0_time_out_counter[0]_i_8\
    );
\time_out_counter[0]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => time_out_counter_reg(0),
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
      C => independent_clock_bufg,
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
      S(3) => \n_0_time_out_counter[0]_i_6\,
      S(2) => \n_0_time_out_counter[0]_i_7\,
      S(1) => \n_0_time_out_counter[0]_i_8\,
      S(0) => \n_0_time_out_counter[0]_i_9\
    );
\time_out_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
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
      C => independent_clock_bufg,
      CE => \n_0_time_out_counter[0]_i_1__0\,
      D => \n_6_time_out_counter_reg[8]_i_1\,
      Q => time_out_counter_reg(9),
      R => reset_time_out
    );
time_out_wait_bypass_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000010000"
    )
    port map (
      I0 => n_0_time_out_wait_bypass_i_2,
      I1 => n_0_time_out_wait_bypass_i_3,
      I2 => n_0_time_out_wait_bypass_i_4,
      I3 => tx_fsm_reset_done_int_s3,
      I4 => run_phase_alignment_int_s3,
      I5 => n_0_time_out_wait_bypass_reg,
      O => n_0_time_out_wait_bypass_i_1
    );
time_out_wait_bypass_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(15),
      I1 => wait_bypass_count_reg(1),
      I2 => wait_bypass_count_reg(2),
      I3 => wait_bypass_count_reg(16),
      I4 => wait_bypass_count_reg(0),
      O => n_0_time_out_wait_bypass_i_2
    );
time_out_wait_bypass_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFDFFFFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(9),
      I1 => wait_bypass_count_reg(10),
      I2 => wait_bypass_count_reg(13),
      I3 => wait_bypass_count_reg(14),
      I4 => wait_bypass_count_reg(11),
      I5 => wait_bypass_count_reg(12),
      O => n_0_time_out_wait_bypass_i_3
    );
time_out_wait_bypass_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
    port map (
      I0 => wait_bypass_count_reg(4),
      I1 => wait_bypass_count_reg(3),
      I2 => wait_bypass_count_reg(8),
      I3 => wait_bypass_count_reg(7),
      I4 => wait_bypass_count_reg(5),
      I5 => wait_bypass_count_reg(6),
      O => n_0_time_out_wait_bypass_i_4
    );
time_out_wait_bypass_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => \<const1>\,
      D => n_0_time_out_wait_bypass_i_1,
      Q => n_0_time_out_wait_bypass_reg,
      R => \<const0>\
    );
time_out_wait_bypass_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => time_out_wait_bypass_s2,
      Q => time_out_wait_bypass_s3,
      R => \<const0>\
    );
time_tlock_max_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"0E"
    )
    port map (
      I0 => time_tlock_max,
      I1 => n_0_time_tlock_max_i_2,
      I2 => reset_time_out,
      O => n_0_time_tlock_max_i_1
    );
time_tlock_max_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000002000000000"
    )
    port map (
      I0 => n_0_time_out_500us_i_3,
      I1 => time_out_counter_reg(7),
      I2 => time_out_counter_reg(14),
      I3 => time_out_counter_reg(13),
      I4 => n_0_time_tlock_max_i_3,
      I5 => \n_0_time_tlock_max_i_4__0\,
      O => n_0_time_tlock_max_i_2
    );
time_tlock_max_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => time_out_counter_reg(0),
      I1 => time_out_counter_reg(4),
      O => n_0_time_tlock_max_i_3
    );
\time_tlock_max_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
    port map (
      I0 => time_out_counter_reg(15),
      I1 => time_out_counter_reg(11),
      I2 => time_out_counter_reg(16),
      I3 => time_out_counter_reg(8),
      I4 => time_out_counter_reg(5),
      I5 => time_out_counter_reg(12),
      O => \n_0_time_tlock_max_i_4__0\
    );
time_tlock_max_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_time_tlock_max_i_1,
      Q => time_tlock_max,
      R => \<const0>\
    );
tx_fsm_reset_done_int_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAEEEA"
    )
    port map (
      I0 => \^o1\,
      I1 => n_0_tx_fsm_reset_done_int_i_2,
      I2 => \n_0_FSM_onehot_tx_state_reg[8]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[9]\,
      I4 => n_0_tx_fsm_reset_done_int_i_3,
      I5 => I4(0),
      O => n_0_tx_fsm_reset_done_int_i_1
    );
tx_fsm_reset_done_int_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[6]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[7]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I5 => \n_0_FSM_onehot_tx_state_reg[4]\,
      O => n_0_tx_fsm_reset_done_int_i_2
    );
tx_fsm_reset_done_int_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[7]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[9]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I4 => \n_0_FSM_onehot_tx_state_reg[1]\,
      O => n_0_tx_fsm_reset_done_int_i_3
    );
tx_fsm_reset_done_int_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_tx_fsm_reset_done_int_i_1,
      Q => \^o1\,
      R => \<const0>\
    );
tx_fsm_reset_done_int_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => \<const1>\,
      D => tx_fsm_reset_done_int_s2,
      Q => tx_fsm_reset_done_int_s3,
      R => \<const0>\
    );
txresetdone_s3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => txresetdone_s2,
      Q => txresetdone_s3,
      R => \<const0>\
    );
\wait_bypass_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => run_phase_alignment_int_s3,
      O => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
    port map (
      I0 => n_0_time_out_wait_bypass_i_2,
      I1 => n_0_time_out_wait_bypass_i_3,
      I2 => n_0_time_out_wait_bypass_i_4,
      I3 => tx_fsm_reset_done_int_s3,
      O => \n_0_wait_bypass_count[0]_i_2\
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
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_7_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(0),
      R => \n_0_wait_bypass_count[0]_i_1\
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
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_5_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(10),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_4_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(11),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_7_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(12),
      R => \n_0_wait_bypass_count[0]_i_1\
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
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_6_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(13),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_5_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(14),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_4_wait_bypass_count_reg[12]_i_1\,
      Q => wait_bypass_count_reg(15),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[16]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_7_wait_bypass_count_reg[16]_i_1\,
      Q => wait_bypass_count_reg(16),
      R => \n_0_wait_bypass_count[0]_i_1\
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
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_6_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(1),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_5_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(2),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_4_wait_bypass_count_reg[0]_i_3\,
      Q => wait_bypass_count_reg(3),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_7_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(4),
      R => \n_0_wait_bypass_count[0]_i_1\
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
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_6_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(5),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_5_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(6),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_4_wait_bypass_count_reg[4]_i_1\,
      Q => wait_bypass_count_reg(7),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_bypass_count_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_7_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(8),
      R => \n_0_wait_bypass_count[0]_i_1\
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
    port map (
      C => CLK,
      CE => \n_0_wait_bypass_count[0]_i_2\,
      D => \n_6_wait_bypass_count_reg[8]_i_1\,
      Q => wait_bypass_count_reg(9),
      R => \n_0_wait_bypass_count[0]_i_1\
    );
\wait_time_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(0),
      O => wait_time_cnt0(0)
    );
\wait_time_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(0),
      I1 => \wait_time_cnt_reg__0\(1),
      O => \n_0_wait_time_cnt[1]_i_1\
    );
\wait_time_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(2),
      I1 => \wait_time_cnt_reg__0\(1),
      I2 => \wait_time_cnt_reg__0\(0),
      O => wait_time_cnt0(2)
    );
\wait_time_cnt[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(3),
      I1 => \wait_time_cnt_reg__0\(2),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(1),
      O => wait_time_cnt0(3)
    );
\wait_time_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(4),
      I1 => \wait_time_cnt_reg__0\(3),
      I2 => \wait_time_cnt_reg__0\(1),
      I3 => \wait_time_cnt_reg__0\(0),
      I4 => \wait_time_cnt_reg__0\(2),
      O => wait_time_cnt0(4)
    );
\wait_time_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(5),
      I1 => \wait_time_cnt_reg__0\(4),
      I2 => \wait_time_cnt_reg__0\(2),
      I3 => \wait_time_cnt_reg__0\(0),
      I4 => \wait_time_cnt_reg__0\(1),
      I5 => \wait_time_cnt_reg__0\(3),
      O => wait_time_cnt0(5)
    );
\wait_time_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01010100"
    )
    port map (
      I0 => n_0_tx_fsm_reset_done_int_i_3,
      I1 => \n_0_FSM_onehot_tx_state_reg[8]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[9]\,
      I3 => \n_0_wait_time_cnt[6]_i_4\,
      I4 => \n_0_wait_time_cnt[6]_i_5\,
      O => clear
    );
\wait_time_cnt[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(6),
      I1 => \n_0_wait_time_cnt[6]_i_6\,
      O => \n_0_wait_time_cnt[6]_i_2\
    );
\wait_time_cnt[6]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(6),
      I1 => \n_0_wait_time_cnt[6]_i_7\,
      O => wait_time_cnt0(6)
    );
\wait_time_cnt[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[7]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[6]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[5]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[4]\,
      O => \n_0_wait_time_cnt[6]_i_4\
    );
\wait_time_cnt[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => \n_0_FSM_onehot_tx_state_reg[3]\,
      I1 => \n_0_FSM_onehot_tx_state_reg[2]\,
      I2 => \n_0_FSM_onehot_tx_state_reg[7]\,
      I3 => \n_0_FSM_onehot_tx_state_reg[6]\,
      O => \n_0_wait_time_cnt[6]_i_5\
    );
\wait_time_cnt[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(1),
      I1 => \wait_time_cnt_reg__0\(0),
      I2 => \wait_time_cnt_reg__0\(2),
      I3 => \wait_time_cnt_reg__0\(3),
      I4 => \wait_time_cnt_reg__0\(4),
      I5 => \wait_time_cnt_reg__0\(5),
      O => \n_0_wait_time_cnt[6]_i_6\
    );
\wait_time_cnt[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
    port map (
      I0 => \wait_time_cnt_reg__0\(4),
      I1 => \wait_time_cnt_reg__0\(2),
      I2 => \wait_time_cnt_reg__0\(0),
      I3 => \wait_time_cnt_reg__0\(1),
      I4 => \wait_time_cnt_reg__0\(3),
      I5 => \wait_time_cnt_reg__0\(5),
      O => \n_0_wait_time_cnt[6]_i_7\
    );
\wait_time_cnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => wait_time_cnt0(0),
      Q => \wait_time_cnt_reg__0\(0),
      R => clear
    );
\wait_time_cnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => \n_0_wait_time_cnt[1]_i_1\,
      Q => \wait_time_cnt_reg__0\(1),
      R => clear
    );
\wait_time_cnt_reg[2]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => wait_time_cnt0(2),
      Q => \wait_time_cnt_reg__0\(2),
      S => clear
    );
\wait_time_cnt_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => wait_time_cnt0(3),
      Q => \wait_time_cnt_reg__0\(3),
      R => clear
    );
\wait_time_cnt_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => wait_time_cnt0(4),
      Q => \wait_time_cnt_reg__0\(4),
      R => clear
    );
\wait_time_cnt_reg[5]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => wait_time_cnt0(5),
      Q => \wait_time_cnt_reg__0\(5),
      S => clear
    );
\wait_time_cnt_reg[6]\: unisim.vcomponents.FDSE
    port map (
      C => independent_clock_bufg,
      CE => \n_0_wait_time_cnt[6]_i_2\,
      D => wait_time_cnt0(6),
      Q => \wait_time_cnt_reg__0\(6),
      S => clear
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_init__parameterized0\ is
  port (
    resetdone : out STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpen_in : in STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxdfeagcovrden_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxmcommaalignen_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    mmcm_locked_out : in STD_LOGIC;
    data_out : in STD_LOGIC;
    I4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_out0_in : in STD_LOGIC;
    reset_out : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_init__parameterized0\ : entity is "gig_ethernet_pcs_pma_0_GTWIZARD_init";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_init__parameterized0\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_init__parameterized0\ is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal CPLLREFCLKLOST : STD_LOGIC;
  signal CPLL_RESET : STD_LOGIC;
  signal RXDFELFHOLD : STD_LOGIC;
  signal RXUSERRDY : STD_LOGIC;
  signal TXUSERRDY : STD_LOGIC;
  signal data_out_0 : STD_LOGIC;
  signal gt0_gtrxreset_in1_out : STD_LOGIC;
  signal gt0_gttxreset_in0_out : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[0]_i_6\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[12]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[12]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[4]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_2\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_3\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_4\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter[8]_i_5\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[0]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[10]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[11]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[12]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[13]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[1]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[2]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[3]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[4]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[5]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[6]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[7]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[8]\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_0_rx_cdrlock_counter_reg[9]\ : STD_LOGIC;
  signal n_0_rx_cdrlocked_i_1 : STD_LOGIC;
  signal n_0_rx_cdrlocked_i_2 : STD_LOGIC;
  signal n_0_rx_cdrlocked_i_3 : STD_LOGIC;
  signal n_10_gtwizard_i : STD_LOGIC;
  signal n_12_gtwizard_i : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_1_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_2_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_3_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_4_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_5_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_6_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[0]_i_1\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[12]_i_1\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[4]_i_1\ : STD_LOGIC;
  signal \n_7_rx_cdrlock_counter_reg[8]_i_1\ : STD_LOGIC;
  signal \^resetdone\ : STD_LOGIC;
  signal rx_cdrlocked : STD_LOGIC;
  signal \NLW_rx_cdrlock_counter_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_rx_cdrlock_counter_reg[12]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute counter : integer;
  attribute counter of \rx_cdrlock_counter_reg[0]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[10]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[11]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[12]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[13]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[1]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[2]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[3]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[4]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[5]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[6]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[7]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[8]\ : label is 20;
  attribute counter of \rx_cdrlock_counter_reg[9]\ : label is 20;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of sync_block_gtrxreset : label is true;
  attribute INITIALISE : string;
  attribute INITIALISE of sync_block_gtrxreset : label is "2'b00";
begin
  resetdone <= \^resetdone\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
gt0_rxresetfsm_i: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_RX_STARTUP_FSM__parameterized0\
    port map (
      CLK => CLK,
      CPLLREFCLKLOST => CPLLREFCLKLOST,
      I1 => n_10_gtwizard_i,
      I4(0) => I4(0),
      O1 => O7,
      RXDFELFHOLD => RXDFELFHOLD,
      RXUSERRDY => RXUSERRDY,
      data_out => data_out,
      gt0_gtrxreset_in1_out => gt0_gtrxreset_in1_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked_out => mmcm_locked_out,
      reset_out0_in => reset_out0_in,
      resetdone => \^resetdone\,
      rx_cdrlocked => rx_cdrlocked
    );
gt0_txresetfsm_i: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_TX_STARTUP_FSM__parameterized0\
    port map (
      CLK => CLK,
      CPLLREFCLKLOST => CPLLREFCLKLOST,
      CPLL_RESET => CPLL_RESET,
      I1 => n_12_gtwizard_i,
      I4(0) => I4(0),
      O1 => O6,
      TXUSERRDY => TXUSERRDY,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked_out => mmcm_locked_out,
      reset_out => reset_out,
      resetdone => \^resetdone\
    );
gtwizard_i: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_multi_gt__parameterized0\
    port map (
      CLK => CLK,
      CPLLREFCLKLOST => CPLLREFCLKLOST,
      CPLL_RESET => CPLL_RESET,
      D(1 downto 0) => D(1 downto 0),
      I1(1 downto 0) => I1(1 downto 0),
      I2(1 downto 0) => I2(1 downto 0),
      I3(1 downto 0) => I3(1 downto 0),
      O1 => n_10_gtwizard_i,
      O2 => n_12_gtwizard_i,
      O3(15 downto 0) => O1(15 downto 0),
      O4(1 downto 0) => O2(1 downto 0),
      O5(1 downto 0) => O3(1 downto 0),
      O6(1 downto 0) => O4(1 downto 0),
      O7(1 downto 0) => O5(1 downto 0),
      Q(15 downto 0) => Q(15 downto 0),
      RXDFELFHOLD => RXDFELFHOLD,
      RXPD(0) => RXPD(0),
      RXUSERRDY => RXUSERRDY,
      TXPD(0) => TXPD(0),
      TXUSERRDY => TXUSERRDY,
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr_in(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      gt0_drpclk_in => gt0_drpclk_in,
      gt0_drpdi_in(15 downto 0) => gt0_drpdi_in(15 downto 0),
      gt0_drpdo_out(15 downto 0) => gt0_drpdo_out(15 downto 0),
      gt0_drpen_in => gt0_drpen_in,
      gt0_drprdy_out => gt0_drprdy_out,
      gt0_drpwe_in => gt0_drpwe_in,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_gtrxreset_in1_out => gt0_gtrxreset_in1_out,
      gt0_gttxreset_in0_out => gt0_gttxreset_in0_out,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdfeagcovrden_in => gt0_rxdfeagcovrden_in,
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmcommaalignen_in => gt0_rxmcommaalignen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_txbufstatus_out(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gtrefclk_out => gtrefclk_out,
      independent_clock_bufg => independent_clock_bufg,
      resetdone => \^resetdone\,
      rxn => rxn,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
\rx_cdrlock_counter[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDFF"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      O => \n_0_rx_cdrlock_counter[0]_i_2\
    );
\rx_cdrlock_counter[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0000"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[3]\,
      O => \n_0_rx_cdrlock_counter[0]_i_3\
    );
\rx_cdrlock_counter[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0000"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[2]\,
      O => \n_0_rx_cdrlock_counter[0]_i_4\
    );
\rx_cdrlock_counter[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0000"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[1]\,
      O => \n_0_rx_cdrlock_counter[0]_i_5\
    );
\rx_cdrlock_counter[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000FDFF"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[0]\,
      O => \n_0_rx_cdrlock_counter[0]_i_6\
    );
\rx_cdrlock_counter[12]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[13]\,
      O => \n_0_rx_cdrlock_counter[12]_i_2\
    );
\rx_cdrlock_counter[12]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0000"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[12]\,
      O => \n_0_rx_cdrlock_counter[12]_i_3\
    );
\rx_cdrlock_counter[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0000"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[7]\,
      O => \n_0_rx_cdrlock_counter[4]_i_2\
    );
\rx_cdrlock_counter[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter_reg[6]\,
      O => \n_0_rx_cdrlock_counter[4]_i_3\
    );
\rx_cdrlock_counter[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0000"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[5]\,
      O => \n_0_rx_cdrlock_counter[4]_i_4\
    );
\rx_cdrlock_counter[4]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[4]\,
      O => \n_0_rx_cdrlock_counter[4]_i_5\
    );
\rx_cdrlock_counter[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FDFF0000"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[11]\,
      O => \n_0_rx_cdrlock_counter[8]_i_2\
    );
\rx_cdrlock_counter[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[10]\,
      O => \n_0_rx_cdrlock_counter[8]_i_3\
    );
\rx_cdrlock_counter[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter_reg[9]\,
      O => \n_0_rx_cdrlock_counter[8]_i_4\
    );
\rx_cdrlock_counter[8]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0200"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => \n_0_rx_cdrlock_counter_reg[8]\,
      O => \n_0_rx_cdrlock_counter[8]_i_5\
    );
\rx_cdrlock_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[0]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[0]\,
      R => data_out_0
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
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_5_rx_cdrlock_counter_reg[8]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[10]\,
      R => data_out_0
    );
\rx_cdrlock_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_4_rx_cdrlock_counter_reg[8]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[11]\,
      R => data_out_0
    );
\rx_cdrlock_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[12]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[12]\,
      R => data_out_0
    );
\rx_cdrlock_counter_reg[12]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_rx_cdrlock_counter_reg[8]_i_1\,
      CO(3 downto 1) => \NLW_rx_cdrlock_counter_reg[12]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \n_3_rx_cdrlock_counter_reg[12]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3 downto 2) => \NLW_rx_cdrlock_counter_reg[12]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \n_6_rx_cdrlock_counter_reg[12]_i_1\,
      O(0) => \n_7_rx_cdrlock_counter_reg[12]_i_1\,
      S(3) => \<const0>\,
      S(2) => \<const0>\,
      S(1) => \n_0_rx_cdrlock_counter[12]_i_2\,
      S(0) => \n_0_rx_cdrlock_counter[12]_i_3\
    );
\rx_cdrlock_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[12]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[13]\,
      R => data_out_0
    );
\rx_cdrlock_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[0]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[1]\,
      R => data_out_0
    );
\rx_cdrlock_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_5_rx_cdrlock_counter_reg[0]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[2]\,
      R => data_out_0
    );
\rx_cdrlock_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_4_rx_cdrlock_counter_reg[0]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[3]\,
      R => data_out_0
    );
\rx_cdrlock_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[4]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[4]\,
      R => data_out_0
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
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[4]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[5]\,
      R => data_out_0
    );
\rx_cdrlock_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_5_rx_cdrlock_counter_reg[4]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[6]\,
      R => data_out_0
    );
\rx_cdrlock_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_4_rx_cdrlock_counter_reg[4]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[7]\,
      R => data_out_0
    );
\rx_cdrlock_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_7_rx_cdrlock_counter_reg[8]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[8]\,
      R => data_out_0
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
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => \n_6_rx_cdrlock_counter_reg[8]_i_1\,
      Q => \n_0_rx_cdrlock_counter_reg[9]\,
      R => data_out_0
    );
rx_cdrlocked_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFF0200"
    )
    port map (
      I0 => n_0_rx_cdrlocked_i_2,
      I1 => n_0_rx_cdrlocked_i_3,
      I2 => \n_0_rx_cdrlock_counter_reg[6]\,
      I3 => \n_0_rx_cdrlock_counter_reg[9]\,
      I4 => rx_cdrlocked,
      I5 => data_out_0,
      O => n_0_rx_cdrlocked_i_1
    );
rx_cdrlocked_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004000000000000"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter_reg[3]\,
      I1 => \n_0_rx_cdrlock_counter_reg[10]\,
      I2 => \n_0_rx_cdrlock_counter_reg[5]\,
      I3 => \n_0_rx_cdrlock_counter_reg[11]\,
      I4 => \n_0_rx_cdrlock_counter_reg[13]\,
      I5 => \n_0_rx_cdrlock_counter_reg[8]\,
      O => n_0_rx_cdrlocked_i_2
    );
rx_cdrlocked_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
    port map (
      I0 => \n_0_rx_cdrlock_counter_reg[0]\,
      I1 => \n_0_rx_cdrlock_counter_reg[1]\,
      I2 => \n_0_rx_cdrlock_counter_reg[7]\,
      I3 => \n_0_rx_cdrlock_counter_reg[2]\,
      I4 => \n_0_rx_cdrlock_counter_reg[12]\,
      I5 => \n_0_rx_cdrlock_counter_reg[4]\,
      O => n_0_rx_cdrlocked_i_3
    );
rx_cdrlocked_reg: unisim.vcomponents.FDRE
    port map (
      C => independent_clock_bufg,
      CE => \<const1>\,
      D => n_0_rx_cdrlocked_i_1,
      Q => rx_cdrlocked,
      R => \<const0>\
    );
sync_block_gtrxreset: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0__32\
    port map (
      clk => independent_clock_bufg,
      data_in => gt0_gtrxreset_in1_out,
      data_out => data_out_0
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_v14_1__parameterized0\ is
  port (
    txreset : out STD_LOGIC;
    rxreset : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 6 downto 0 );
    txchardispmode : out STD_LOGIC;
    txcharisk : out STD_LOGIC;
    gmii_rx_dv : out STD_LOGIC;
    txchardispval : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    powerdown : out STD_LOGIC;
    O1 : out STD_LOGIC;
    encommaalign : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    D : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC;
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    I2 : in STD_LOGIC;
    txbuferr : in STD_LOGIC;
    rxbuferr : in STD_LOGIC;
    gt0_rxdisperr_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxnotintable_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_rxcharisk_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxchariscomma_out : in STD_LOGIC_VECTOR ( 0 to 0 );
    toggle : in STD_LOGIC;
    O3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    signal_detect : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 );
    O4 : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_v14_1__parameterized0\ : entity is "gig_ethernet_pcs_pma_v14_1";
end \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_v14_1__parameterized0\;

architecture STRUCTURE of \gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_v14_1__parameterized0\ is
begin
gpcs_pma_inst: entity work.gig_ethernet_pcs_pma_0GPCS_PMA_GEN
    port map (
      D(7 downto 0) => D(7 downto 0),
      I1 => I1,
      I2 => I2,
      I3(7 downto 0) => O3(7 downto 0),
      I4(1 downto 0) => O4(1 downto 0),
      O1 => rxreset,
      O2 => SR(0),
      O3 => powerdown,
      O4 => O1,
      SS(0) => txreset,
      configuration_vector(2 downto 0) => configuration_vector(2 downto 0),
      encommaalign => encommaalign,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_rxchariscomma_out(0) => gt0_rxchariscomma_out(0),
      gt0_rxcharisk_out(0) => gt0_rxcharisk_out(0),
      gt0_rxdisperr_out(0) => gt0_rxdisperr_out(0),
      gt0_rxnotintable_out(0) => gt0_rxnotintable_out(0),
      rxbuferr => rxbuferr,
      signal_detect => signal_detect,
      status_vector(6 downto 0) => status_vector(6 downto 0),
      toggle => toggle,
      txbuferr => txbuferr,
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD is
  port (
    resetdone : out STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O2 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O5 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    O6 : out STD_LOGIC;
    O7 : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpen_in : in STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxdfeagcovrden_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxmcommaalignen_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    CLK : in STD_LOGIC;
    TXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    RXPD : in STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 15 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    I3 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    mmcm_locked_out : in STD_LOGIC;
    data_out : in STD_LOGIC;
    I4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    reset_out0_in : in STD_LOGIC;
    reset_out : in STD_LOGIC
  );
end gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD;

architecture STRUCTURE of gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD is
begin
U0: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD_init__parameterized0\
    port map (
      CLK => CLK,
      D(1 downto 0) => D(1 downto 0),
      I1(1 downto 0) => I1(1 downto 0),
      I2(1 downto 0) => I2(1 downto 0),
      I3(1 downto 0) => I3(1 downto 0),
      I4(0) => I4(0),
      O1(15 downto 0) => O1(15 downto 0),
      O2(1 downto 0) => O2(1 downto 0),
      O3(1 downto 0) => O3(1 downto 0),
      O4(1 downto 0) => O4(1 downto 0),
      O5(1 downto 0) => O5(1 downto 0),
      O6 => O6,
      O7 => O7,
      Q(15 downto 0) => Q(15 downto 0),
      RXPD(0) => RXPD(0),
      TXPD(0) => TXPD(0),
      data_out => data_out,
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr_in(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      gt0_drpclk_in => gt0_drpclk_in,
      gt0_drpdi_in(15 downto 0) => gt0_drpdi_in(15 downto 0),
      gt0_drpdo_out(15 downto 0) => gt0_drpdo_out(15 downto 0),
      gt0_drpen_in => gt0_drpen_in,
      gt0_drprdy_out => gt0_drprdy_out,
      gt0_drpwe_in => gt0_drpwe_in,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdfeagcovrden_in => gt0_rxdfeagcovrden_in,
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmcommaalignen_in => gt0_rxmcommaalignen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_txbufstatus_out(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gtrefclk_out => gtrefclk_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked_out => mmcm_locked_out,
      reset_out => reset_out,
      reset_out0_in => reset_out0_in,
      resetdone => resetdone,
      rxn => rxn,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_transceiver is
  port (
    resetdone : out STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC;
    gt0_rxnotintable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxdisperr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    toggle : out STD_LOGIC;
    gt0_rxchariscomma_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxcharisk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    rxbuferr : out STD_LOGIC;
    txbuferr : out STD_LOGIC;
    O3 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 1 downto 0 );
    encommaalign : in STD_LOGIC;
    CLK : in STD_LOGIC;
    txreset : in STD_LOGIC;
    rxreset : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpen_in : in STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxdfeagcovrden_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    mmcm_locked_out : in STD_LOGIC;
    txchardispmode : in STD_LOGIC;
    I1 : in STD_LOGIC;
    txchardispval : in STD_LOGIC;
    txcharisk : in STD_LOGIC;
    status_vector : in STD_LOGIC_VECTOR ( 0 to 0 );
    powerdown : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_transceiver;

architecture STRUCTURE of gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_transceiver is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal data_out : STD_LOGIC;
  signal data_valid_reg : STD_LOGIC;
  signal \^gt0_rxbufstatus_out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal gt0_rxchariscomma_out_3 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt0_rxcharisk_out_2 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt0_rxclkcorcnt_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt0_rxdata_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal gt0_rxdisperr_out_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal gt0_rxmcommaalignen_in : STD_LOGIC;
  signal gt0_rxnotintable_out_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^gt0_txbufstatus_out\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \n_0_rxbufstatus_reg_reg[2]\ : STD_LOGIC;
  signal n_0_rxchariscomma_i_1 : STD_LOGIC;
  signal n_0_rxcharisk_i_1 : STD_LOGIC;
  signal \n_0_rxdata[0]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[1]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[2]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[3]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[4]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[5]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[6]_i_1\ : STD_LOGIC;
  signal \n_0_rxdata[7]_i_1\ : STD_LOGIC;
  signal n_0_rxdisperr_i_1 : STD_LOGIC;
  signal n_0_rxnotintable_i_1 : STD_LOGIC;
  signal n_0_toggle_i_1 : STD_LOGIC;
  signal \n_0_txbufstatus_reg_reg[1]\ : STD_LOGIC;
  signal \n_0_txchardispmode_double_reg[0]\ : STD_LOGIC;
  signal \n_0_txchardispmode_double_reg[1]\ : STD_LOGIC;
  signal \n_0_txchardispval_double_reg[0]\ : STD_LOGIC;
  signal \n_0_txchardispval_double_reg[1]\ : STD_LOGIC;
  signal \n_0_txcharisk_double_reg[0]\ : STD_LOGIC;
  signal \n_0_txcharisk_double_reg[1]\ : STD_LOGIC;
  signal reset_out : STD_LOGIC;
  signal reset_out0_in : STD_LOGIC;
  signal rxchariscomma_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxchariscomma_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxcharisk_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxcharisk_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdata_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal rxdisperr_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxdisperr_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxnotintable_double : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \rxnotintable_reg__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxpowerdown : STD_LOGIC;
  signal rxpowerdown_double : STD_LOGIC;
  signal \rxpowerdown_reg__0\ : STD_LOGIC;
  signal \^toggle\ : STD_LOGIC;
  signal txchardispmode_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispmode_reg : STD_LOGIC;
  signal txchardispval_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txchardispval_reg : STD_LOGIC;
  signal txcharisk_int : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal txcharisk_reg : STD_LOGIC;
  signal txdata_double : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_int : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal txdata_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal txpowerdown : STD_LOGIC;
  signal txpowerdown_double : STD_LOGIC;
  signal \txpowerdown_reg__0\ : STD_LOGIC;
  attribute DONT_TOUCH : boolean;
  attribute DONT_TOUCH of reclock_encommaalign : label is true;
  attribute INITIALISE : string;
  attribute INITIALISE of reclock_encommaalign : label is "2'b11";
  attribute DONT_TOUCH of reclock_rxreset : label is true;
  attribute INITIALISE of reclock_rxreset : label is "2'b11";
  attribute DONT_TOUCH of reclock_txreset : label is true;
  attribute INITIALISE of reclock_txreset : label is "2'b11";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of rxchariscomma_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of rxcharisk_i_1 : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \rxdata[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rxdata[1]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \rxdata[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rxdata[3]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rxdata[4]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \rxdata[5]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \rxdata[6]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \rxdata[7]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of rxdisperr_i_1 : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of rxnotintable_i_1 : label is "soft_lutpair41";
  attribute DONT_TOUCH of sync_block_data_valid : label is true;
  attribute INITIALISE of sync_block_data_valid : label is "2'b00";
begin
  gt0_rxbufstatus_out(2 downto 0) <= \^gt0_rxbufstatus_out\(2 downto 0);
  gt0_txbufstatus_out(1 downto 0) <= \^gt0_txbufstatus_out\(1 downto 0);
  toggle <= \^toggle\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
data_valid_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => status_vector(0),
      Q => data_valid_reg,
      R => \<const0>\
    );
gtwizard_inst: entity work.gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_GTWIZARD
    port map (
      CLK => CLK,
      D(1 downto 0) => gt0_rxclkcorcnt_out(1 downto 0),
      I1(1 downto 0) => txchardispmode_int(1 downto 0),
      I2(1 downto 0) => txchardispval_int(1 downto 0),
      I3(1 downto 0) => txcharisk_int(1 downto 0),
      I4(0) => Q(0),
      O1(15 downto 0) => gt0_rxdata_out(15 downto 0),
      O2(1 downto 0) => gt0_rxchariscomma_out_3(1 downto 0),
      O3(1 downto 0) => gt0_rxcharisk_out_2(1 downto 0),
      O4(1 downto 0) => gt0_rxdisperr_out_1(1 downto 0),
      O5(1 downto 0) => gt0_rxnotintable_out_0(1 downto 0),
      O6 => O1,
      O7 => O2,
      Q(15 downto 0) => txdata_int(15 downto 0),
      RXPD(0) => rxpowerdown,
      TXPD(0) => txpowerdown,
      data_out => data_out,
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr_in(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      gt0_drpclk_in => gt0_drpclk_in,
      gt0_drpdi_in(15 downto 0) => gt0_drpdi_in(15 downto 0),
      gt0_drpdo_out(15 downto 0) => gt0_drpdo_out(15 downto 0),
      gt0_drpen_in => gt0_drpen_in,
      gt0_drprdy_out => gt0_drprdy_out,
      gt0_drpwe_in => gt0_drpwe_in,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => \^gt0_rxbufstatus_out\(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdfeagcovrden_in => gt0_rxdfeagcovrden_in,
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmcommaalignen_in => gt0_rxmcommaalignen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_txbufstatus_out(1 downto 0) => \^gt0_txbufstatus_out\(1 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gtrefclk_out => gtrefclk_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked_out => mmcm_locked_out,
      reset_out => reset_out,
      reset_out0_in => reset_out0_in,
      resetdone => resetdone,
      rxn => rxn,
      rxp => rxp,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
reclock_encommaalign: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__3\
    port map (
      clk => CLK,
      reset_in => encommaalign,
      reset_out => gt0_rxmcommaalignen_in
    );
reclock_rxreset: entity work.gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync
    port map (
      clk => CLK,
      reset_in => rxreset,
      reset_out => reset_out0_in
    );
reclock_txreset: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_reset_sync__4\
    port map (
      clk => CLK,
      reset_in => txreset,
      reset_out => reset_out
    );
rxbuferr_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_rxbufstatus_reg_reg[2]\,
      Q => rxbuferr,
      R => \<const0>\
    );
\rxbufstatus_reg_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => \^gt0_rxbufstatus_out\(2),
      Q => \n_0_rxbufstatus_reg_reg[2]\,
      R => \<const0>\
    );
\rxchariscomma_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => \rxchariscomma_reg__0\(0),
      Q => rxchariscomma_double(0),
      R => rxreset
    );
\rxchariscomma_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => \rxchariscomma_reg__0\(1),
      Q => rxchariscomma_double(1),
      R => rxreset
    );
rxchariscomma_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxchariscomma_double(1),
      I1 => \^toggle\,
      I2 => rxchariscomma_double(0),
      O => n_0_rxchariscomma_i_1
    );
rxchariscomma_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_rxchariscomma_i_1,
      Q => gt0_rxchariscomma_out(0),
      R => rxreset
    );
\rxchariscomma_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxchariscomma_out_3(0),
      Q => \rxchariscomma_reg__0\(0),
      R => \<const0>\
    );
\rxchariscomma_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxchariscomma_out_3(1),
      Q => \rxchariscomma_reg__0\(1),
      R => \<const0>\
    );
\rxcharisk_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => \rxcharisk_reg__0\(0),
      Q => rxcharisk_double(0),
      R => rxreset
    );
\rxcharisk_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => \rxcharisk_reg__0\(1),
      Q => rxcharisk_double(1),
      R => rxreset
    );
rxcharisk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxcharisk_double(1),
      I1 => \^toggle\,
      I2 => rxcharisk_double(0),
      O => n_0_rxcharisk_i_1
    );
rxcharisk_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_rxcharisk_i_1,
      Q => gt0_rxcharisk_out(0),
      R => rxreset
    );
\rxcharisk_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxcharisk_out_2(0),
      Q => \rxcharisk_reg__0\(0),
      R => \<const0>\
    );
\rxcharisk_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxcharisk_out_2(1),
      Q => \rxcharisk_reg__0\(1),
      R => \<const0>\
    );
\rxclkcorcnt_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gt0_rxclkcorcnt_out(0),
      Q => O4(0),
      R => \<const0>\
    );
\rxclkcorcnt_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => gt0_rxclkcorcnt_out(1),
      Q => O4(1),
      R => \<const0>\
    );
\rxdata[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxdata_double(8),
      I1 => \^toggle\,
      I2 => rxdata_double(0),
      O => \n_0_rxdata[0]_i_1\
    );
\rxdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxdata_double(9),
      I1 => \^toggle\,
      I2 => rxdata_double(1),
      O => \n_0_rxdata[1]_i_1\
    );
\rxdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxdata_double(10),
      I1 => \^toggle\,
      I2 => rxdata_double(2),
      O => \n_0_rxdata[2]_i_1\
    );
\rxdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxdata_double(11),
      I1 => \^toggle\,
      I2 => rxdata_double(3),
      O => \n_0_rxdata[3]_i_1\
    );
\rxdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxdata_double(12),
      I1 => \^toggle\,
      I2 => rxdata_double(4),
      O => \n_0_rxdata[4]_i_1\
    );
\rxdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxdata_double(13),
      I1 => \^toggle\,
      I2 => rxdata_double(5),
      O => \n_0_rxdata[5]_i_1\
    );
\rxdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxdata_double(14),
      I1 => \^toggle\,
      I2 => rxdata_double(6),
      O => \n_0_rxdata[6]_i_1\
    );
\rxdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxdata_double(15),
      I1 => \^toggle\,
      I2 => rxdata_double(7),
      O => \n_0_rxdata[7]_i_1\
    );
\rxdata_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(0),
      Q => rxdata_double(0),
      R => rxreset
    );
\rxdata_double_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(10),
      Q => rxdata_double(10),
      R => rxreset
    );
\rxdata_double_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(11),
      Q => rxdata_double(11),
      R => rxreset
    );
\rxdata_double_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(12),
      Q => rxdata_double(12),
      R => rxreset
    );
\rxdata_double_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(13),
      Q => rxdata_double(13),
      R => rxreset
    );
\rxdata_double_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(14),
      Q => rxdata_double(14),
      R => rxreset
    );
\rxdata_double_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(15),
      Q => rxdata_double(15),
      R => rxreset
    );
\rxdata_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(1),
      Q => rxdata_double(1),
      R => rxreset
    );
\rxdata_double_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(2),
      Q => rxdata_double(2),
      R => rxreset
    );
\rxdata_double_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(3),
      Q => rxdata_double(3),
      R => rxreset
    );
\rxdata_double_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(4),
      Q => rxdata_double(4),
      R => rxreset
    );
\rxdata_double_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(5),
      Q => rxdata_double(5),
      R => rxreset
    );
\rxdata_double_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(6),
      Q => rxdata_double(6),
      R => rxreset
    );
\rxdata_double_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(7),
      Q => rxdata_double(7),
      R => rxreset
    );
\rxdata_double_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(8),
      Q => rxdata_double(8),
      R => rxreset
    );
\rxdata_double_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => rxdata_reg(9),
      Q => rxdata_double(9),
      R => rxreset
    );
\rxdata_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_rxdata[0]_i_1\,
      Q => O3(0),
      R => rxreset
    );
\rxdata_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_rxdata[1]_i_1\,
      Q => O3(1),
      R => rxreset
    );
\rxdata_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_rxdata[2]_i_1\,
      Q => O3(2),
      R => rxreset
    );
\rxdata_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_rxdata[3]_i_1\,
      Q => O3(3),
      R => rxreset
    );
\rxdata_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_rxdata[4]_i_1\,
      Q => O3(4),
      R => rxreset
    );
\rxdata_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_rxdata[5]_i_1\,
      Q => O3(5),
      R => rxreset
    );
\rxdata_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_rxdata[6]_i_1\,
      Q => O3(6),
      R => rxreset
    );
\rxdata_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_rxdata[7]_i_1\,
      Q => O3(7),
      R => rxreset
    );
\rxdata_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(0),
      Q => rxdata_reg(0),
      R => \<const0>\
    );
\rxdata_reg_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(10),
      Q => rxdata_reg(10),
      R => \<const0>\
    );
\rxdata_reg_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(11),
      Q => rxdata_reg(11),
      R => \<const0>\
    );
\rxdata_reg_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(12),
      Q => rxdata_reg(12),
      R => \<const0>\
    );
\rxdata_reg_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(13),
      Q => rxdata_reg(13),
      R => \<const0>\
    );
\rxdata_reg_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(14),
      Q => rxdata_reg(14),
      R => \<const0>\
    );
\rxdata_reg_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(15),
      Q => rxdata_reg(15),
      R => \<const0>\
    );
\rxdata_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(1),
      Q => rxdata_reg(1),
      R => \<const0>\
    );
\rxdata_reg_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(2),
      Q => rxdata_reg(2),
      R => \<const0>\
    );
\rxdata_reg_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(3),
      Q => rxdata_reg(3),
      R => \<const0>\
    );
\rxdata_reg_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(4),
      Q => rxdata_reg(4),
      R => \<const0>\
    );
\rxdata_reg_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(5),
      Q => rxdata_reg(5),
      R => \<const0>\
    );
\rxdata_reg_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(6),
      Q => rxdata_reg(6),
      R => \<const0>\
    );
\rxdata_reg_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(7),
      Q => rxdata_reg(7),
      R => \<const0>\
    );
\rxdata_reg_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(8),
      Q => rxdata_reg(8),
      R => \<const0>\
    );
\rxdata_reg_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdata_out(9),
      Q => rxdata_reg(9),
      R => \<const0>\
    );
\rxdisperr_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => \rxdisperr_reg__0\(0),
      Q => rxdisperr_double(0),
      R => rxreset
    );
\rxdisperr_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => \rxdisperr_reg__0\(1),
      Q => rxdisperr_double(1),
      R => rxreset
    );
rxdisperr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxdisperr_double(1),
      I1 => \^toggle\,
      I2 => rxdisperr_double(0),
      O => n_0_rxdisperr_i_1
    );
rxdisperr_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_rxdisperr_i_1,
      Q => gt0_rxdisperr_out(0),
      R => rxreset
    );
\rxdisperr_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdisperr_out_1(0),
      Q => \rxdisperr_reg__0\(0),
      R => \<const0>\
    );
\rxdisperr_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxdisperr_out_1(1),
      Q => \rxdisperr_reg__0\(1),
      R => \<const0>\
    );
\rxnotintable_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => \rxnotintable_reg__0\(0),
      Q => rxnotintable_double(0),
      R => rxreset
    );
\rxnotintable_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \^toggle\,
      D => \rxnotintable_reg__0\(1),
      Q => rxnotintable_double(1),
      R => rxreset
    );
rxnotintable_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
    port map (
      I0 => rxnotintable_double(1),
      I1 => \^toggle\,
      I2 => rxnotintable_double(0),
      O => n_0_rxnotintable_i_1
    );
rxnotintable_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_rxnotintable_i_1,
      Q => gt0_rxnotintable_out(0),
      R => rxreset
    );
\rxnotintable_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxnotintable_out_0(0),
      Q => \rxnotintable_reg__0\(0),
      R => \<const0>\
    );
\rxnotintable_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => gt0_rxnotintable_out_0(1),
      Q => \rxnotintable_reg__0\(1),
      R => \<const0>\
    );
rxpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \^toggle\,
      D => \rxpowerdown_reg__0\,
      Q => rxpowerdown_double,
      R => rxreset
    );
rxpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => \<const1>\,
      D => rxpowerdown_double,
      Q => rxpowerdown,
      R => \<const0>\
    );
rxpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => powerdown,
      Q => \rxpowerdown_reg__0\,
      R => rxreset
    );
sync_block_data_valid: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_sync_block__parameterized0\
    port map (
      clk => independent_clock_bufg,
      data_in => data_valid_reg,
      data_out => data_out
    );
toggle_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^toggle\,
      O => n_0_toggle_i_1
    );
toggle_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => n_0_toggle_i_1,
      Q => \^toggle\,
      R => txreset
    );
txbuferr_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => \n_0_txbufstatus_reg_reg[1]\,
      Q => txbuferr,
      R => \<const0>\
    );
\txbufstatus_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => \^gt0_txbufstatus_out\(1),
      Q => \n_0_txbufstatus_reg_reg[1]\,
      R => \<const0>\
    );
\txchardispmode_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txchardispmode_reg,
      Q => \n_0_txchardispmode_double_reg[0]\,
      R => txreset
    );
\txchardispmode_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txchardispmode,
      Q => \n_0_txchardispmode_double_reg[1]\,
      R => txreset
    );
\txchardispmode_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => \n_0_txchardispmode_double_reg[0]\,
      Q => txchardispmode_int(0),
      R => \<const0>\
    );
\txchardispmode_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => \n_0_txchardispmode_double_reg[1]\,
      Q => txchardispmode_int(1),
      R => \<const0>\
    );
txchardispmode_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => txchardispmode,
      Q => txchardispmode_reg,
      R => txreset
    );
\txchardispval_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txchardispval_reg,
      Q => \n_0_txchardispval_double_reg[0]\,
      R => txreset
    );
\txchardispval_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txchardispval,
      Q => \n_0_txchardispval_double_reg[1]\,
      R => txreset
    );
\txchardispval_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => \n_0_txchardispval_double_reg[0]\,
      Q => txchardispval_int(0),
      R => \<const0>\
    );
\txchardispval_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => \n_0_txchardispval_double_reg[1]\,
      Q => txchardispval_int(1),
      R => \<const0>\
    );
txchardispval_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => txchardispval,
      Q => txchardispval_reg,
      R => txreset
    );
\txcharisk_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txcharisk_reg,
      Q => \n_0_txcharisk_double_reg[0]\,
      R => txreset
    );
\txcharisk_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txcharisk,
      Q => \n_0_txcharisk_double_reg[1]\,
      R => txreset
    );
\txcharisk_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => \n_0_txcharisk_double_reg[0]\,
      Q => txcharisk_int(0),
      R => \<const0>\
    );
\txcharisk_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => \n_0_txcharisk_double_reg[1]\,
      Q => txcharisk_int(1),
      R => \<const0>\
    );
txcharisk_reg_reg: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => txcharisk,
      Q => txcharisk_reg,
      R => txreset
    );
\txdata_double_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txdata_reg(0),
      Q => txdata_double(0),
      R => txreset
    );
\txdata_double_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => D(2),
      Q => txdata_double(10),
      R => txreset
    );
\txdata_double_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => D(3),
      Q => txdata_double(11),
      R => txreset
    );
\txdata_double_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => D(4),
      Q => txdata_double(12),
      R => txreset
    );
\txdata_double_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => D(5),
      Q => txdata_double(13),
      R => txreset
    );
\txdata_double_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => D(6),
      Q => txdata_double(14),
      R => txreset
    );
\txdata_double_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => D(7),
      Q => txdata_double(15),
      R => txreset
    );
\txdata_double_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txdata_reg(1),
      Q => txdata_double(1),
      R => txreset
    );
\txdata_double_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txdata_reg(2),
      Q => txdata_double(2),
      R => txreset
    );
\txdata_double_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txdata_reg(3),
      Q => txdata_double(3),
      R => txreset
    );
\txdata_double_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txdata_reg(4),
      Q => txdata_double(4),
      R => txreset
    );
\txdata_double_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txdata_reg(5),
      Q => txdata_double(5),
      R => txreset
    );
\txdata_double_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txdata_reg(6),
      Q => txdata_double(6),
      R => txreset
    );
\txdata_double_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => txdata_reg(7),
      Q => txdata_double(7),
      R => txreset
    );
\txdata_double_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => D(0),
      Q => txdata_double(8),
      R => txreset
    );
\txdata_double_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => I2,
      D => D(1),
      Q => txdata_double(9),
      R => txreset
    );
\txdata_int_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(0),
      Q => txdata_int(0),
      R => \<const0>\
    );
\txdata_int_reg[10]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(10),
      Q => txdata_int(10),
      R => \<const0>\
    );
\txdata_int_reg[11]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(11),
      Q => txdata_int(11),
      R => \<const0>\
    );
\txdata_int_reg[12]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(12),
      Q => txdata_int(12),
      R => \<const0>\
    );
\txdata_int_reg[13]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(13),
      Q => txdata_int(13),
      R => \<const0>\
    );
\txdata_int_reg[14]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(14),
      Q => txdata_int(14),
      R => \<const0>\
    );
\txdata_int_reg[15]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(15),
      Q => txdata_int(15),
      R => \<const0>\
    );
\txdata_int_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(1),
      Q => txdata_int(1),
      R => \<const0>\
    );
\txdata_int_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(2),
      Q => txdata_int(2),
      R => \<const0>\
    );
\txdata_int_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(3),
      Q => txdata_int(3),
      R => \<const0>\
    );
\txdata_int_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(4),
      Q => txdata_int(4),
      R => \<const0>\
    );
\txdata_int_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(5),
      Q => txdata_int(5),
      R => \<const0>\
    );
\txdata_int_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(6),
      Q => txdata_int(6),
      R => \<const0>\
    );
\txdata_int_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(7),
      Q => txdata_int(7),
      R => \<const0>\
    );
\txdata_int_reg[8]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(8),
      Q => txdata_int(8),
      R => \<const0>\
    );
\txdata_int_reg[9]\: unisim.vcomponents.FDRE
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txdata_double(9),
      Q => txdata_int(9),
      R => \<const0>\
    );
\txdata_reg_reg[0]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => D(0),
      Q => txdata_reg(0),
      R => txreset
    );
\txdata_reg_reg[1]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => D(1),
      Q => txdata_reg(1),
      R => txreset
    );
\txdata_reg_reg[2]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => D(2),
      Q => txdata_reg(2),
      R => txreset
    );
\txdata_reg_reg[3]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => D(3),
      Q => txdata_reg(3),
      R => txreset
    );
\txdata_reg_reg[4]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => D(4),
      Q => txdata_reg(4),
      R => txreset
    );
\txdata_reg_reg[5]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => D(5),
      Q => txdata_reg(5),
      R => txreset
    );
\txdata_reg_reg[6]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => D(6),
      Q => txdata_reg(6),
      R => txreset
    );
\txdata_reg_reg[7]\: unisim.vcomponents.FDRE
    port map (
      C => I1,
      CE => \<const1>\,
      D => D(7),
      Q => txdata_reg(7),
      R => txreset
    );
txpowerdown_double_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => \txpowerdown_reg__0\,
      Q => txpowerdown_double,
      R => txreset
    );
txpowerdown_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => \<const1>\,
      D => txpowerdown_double,
      Q => txpowerdown,
      R => \<const0>\
    );
txpowerdown_reg_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I1,
      CE => \<const1>\,
      D => powerdown,
      Q => \txpowerdown_reg__0\,
      R => txreset
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_block is
  port (
    resetdone : out STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    txn : out STD_LOGIC;
    txp : out STD_LOGIC;
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    txoutclk : out STD_LOGIC;
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gt0_txresetdone_out : out STD_LOGIC;
    gt0_rxresetdone_out : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    status_vector : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_rxnotintable_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxdisperr_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxchariscomma_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gt0_rxcharisk_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    gmii_rx_dv : out STD_LOGIC;
    O1 : out STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC;
    CLK : in STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpen_in : in STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gtrefclk_out : in STD_LOGIC;
    rxn : in STD_LOGIC;
    rxp : in STD_LOGIC;
    gt0_qplloutclk_out : in STD_LOGIC;
    gt0_qplloutrefclk_out : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxdfeagcovrden_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    mmcm_locked_out : in STD_LOGIC;
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    I2 : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    signal_detect : in STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_block;

architecture STRUCTURE of gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_block is
  signal encommaalign : STD_LOGIC;
  signal \^gt0_rxchariscomma_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gt0_rxcharisk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gt0_rxdisperr_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gt0_rxnotintable_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal n_16_gig_ethernet_pcs_pma_0_core : STD_LOGIC;
  signal n_26_gig_ethernet_pcs_pma_0_core : STD_LOGIC;
  signal n_27_gig_ethernet_pcs_pma_0_core : STD_LOGIC;
  signal n_28_gig_ethernet_pcs_pma_0_core : STD_LOGIC;
  signal n_29_gig_ethernet_pcs_pma_0_core : STD_LOGIC;
  signal n_30_gig_ethernet_pcs_pma_0_core : STD_LOGIC;
  signal n_31_gig_ethernet_pcs_pma_0_core : STD_LOGIC;
  signal n_32_gig_ethernet_pcs_pma_0_core : STD_LOGIC;
  signal n_33_gig_ethernet_pcs_pma_0_core : STD_LOGIC;
  signal powerdown : STD_LOGIC;
  signal rxbuferr : STD_LOGIC;
  signal rxclkcorcnt : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal rxdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rxreset : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal toggle : STD_LOGIC;
  signal txbuferr : STD_LOGIC;
  signal txchardispmode : STD_LOGIC;
  signal txchardispval : STD_LOGIC;
  signal txcharisk : STD_LOGIC;
  signal txreset : STD_LOGIC;
begin
  gt0_rxchariscomma_out(0) <= \^gt0_rxchariscomma_out\(0);
  gt0_rxcharisk_out(0) <= \^gt0_rxcharisk_out\(0);
  gt0_rxdisperr_out(0) <= \^gt0_rxdisperr_out\(0);
  gt0_rxnotintable_out(0) <= \^gt0_rxnotintable_out\(0);
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
gig_ethernet_pcs_pma_0_core: entity work.\gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_v14_1__parameterized0\
    port map (
      D(7) => n_26_gig_ethernet_pcs_pma_0_core,
      D(6) => n_27_gig_ethernet_pcs_pma_0_core,
      D(5) => n_28_gig_ethernet_pcs_pma_0_core,
      D(4) => n_29_gig_ethernet_pcs_pma_0_core,
      D(3) => n_30_gig_ethernet_pcs_pma_0_core,
      D(2) => n_31_gig_ethernet_pcs_pma_0_core,
      D(1) => n_32_gig_ethernet_pcs_pma_0_core,
      D(0) => n_33_gig_ethernet_pcs_pma_0_core,
      I1 => I1,
      I2 => I2,
      O1 => n_16_gig_ethernet_pcs_pma_0_core,
      O3(7 downto 0) => rxdata(7 downto 0),
      O4(1 downto 0) => rxclkcorcnt(1 downto 0),
      SR(0) => O1,
      configuration_vector(2 downto 0) => configuration_vector(2 downto 0),
      encommaalign => encommaalign,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_rxchariscomma_out(0) => \^gt0_rxchariscomma_out\(0),
      gt0_rxcharisk_out(0) => \^gt0_rxcharisk_out\(0),
      gt0_rxdisperr_out(0) => \^gt0_rxdisperr_out\(0),
      gt0_rxnotintable_out(0) => \^gt0_rxnotintable_out\(0),
      powerdown => powerdown,
      rxbuferr => rxbuferr,
      rxreset => rxreset,
      signal_detect => signal_detect,
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      toggle => toggle,
      txbuferr => txbuferr,
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txreset => txreset
    );
transceiver_inst: entity work.gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_transceiver
    port map (
      CLK => CLK,
      D(7) => n_26_gig_ethernet_pcs_pma_0_core,
      D(6) => n_27_gig_ethernet_pcs_pma_0_core,
      D(5) => n_28_gig_ethernet_pcs_pma_0_core,
      D(4) => n_29_gig_ethernet_pcs_pma_0_core,
      D(3) => n_30_gig_ethernet_pcs_pma_0_core,
      D(2) => n_31_gig_ethernet_pcs_pma_0_core,
      D(1) => n_32_gig_ethernet_pcs_pma_0_core,
      D(0) => n_33_gig_ethernet_pcs_pma_0_core,
      I1 => I1,
      I2 => n_16_gig_ethernet_pcs_pma_0_core,
      O1 => gt0_txresetdone_out,
      O2 => gt0_rxresetdone_out,
      O3(7 downto 0) => rxdata(7 downto 0),
      O4(1 downto 0) => rxclkcorcnt(1 downto 0),
      Q(0) => Q(0),
      encommaalign => encommaalign,
      gt0_dmonitorout_out(7 downto 0) => gt0_dmonitorout_out(7 downto 0),
      gt0_drpaddr_in(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      gt0_drpclk_in => gt0_drpclk_in,
      gt0_drpdi_in(15 downto 0) => gt0_drpdi_in(15 downto 0),
      gt0_drpdo_out(15 downto 0) => gt0_drpdo_out(15 downto 0),
      gt0_drpen_in => gt0_drpen_in,
      gt0_drprdy_out => gt0_drprdy_out,
      gt0_drpwe_in => gt0_drpwe_in,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxchariscomma_out(0) => \^gt0_rxchariscomma_out\(0),
      gt0_rxcharisk_out(0) => \^gt0_rxcharisk_out\(0),
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdfeagcovrden_in => gt0_rxdfeagcovrden_in,
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxdisperr_out(0) => \^gt0_rxdisperr_out\(0),
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxnotintable_out(0) => \^gt0_rxnotintable_out\(0),
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_txbufstatus_out(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gtrefclk_out => gtrefclk_out,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked_out => mmcm_locked_out,
      powerdown => powerdown,
      resetdone => resetdone,
      rxbuferr => rxbuferr,
      rxn => rxn,
      rxp => rxp,
      rxreset => rxreset,
      status_vector(0) => \^status_vector\(1),
      toggle => toggle,
      txbuferr => txbuferr,
      txchardispmode => txchardispmode,
      txchardispval => txchardispval,
      txcharisk => txcharisk,
      txn => txn,
      txoutclk => txoutclk,
      txp => txp,
      txreset => txreset
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_support is
  port (
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    gtrefclk_out : out STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    resetdone : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpen_in : in STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxpmaresetdone_out : out STD_LOGIC;
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    gt0_rxchariscomma_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxcharisk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txresetdone_out : out STD_LOGIC;
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_rxdisperr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxnotintable_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt0_rxdfeagcovrden_in : in STD_LOGIC;
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    signal_detect : in STD_LOGIC;
    gt0_qplloutclk_out : out STD_LOGIC;
    gt0_qplloutrefclk_out : out STD_LOGIC
  );
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_support : entity is "yes";
end gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_support;

architecture STRUCTURE of gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_support is
  signal \<const0>\ : STD_LOGIC;
  signal \^gt0_dmonitorout_out\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^gt0_qplloutclk_out\ : STD_LOGIC;
  signal \^gt0_qplloutrefclk_out\ : STD_LOGIC;
  signal \^gt0_rxchariscomma_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gt0_rxcharisk_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gt0_rxdisperr_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gt0_rxnotintable_out\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^gtrefclk_out\ : STD_LOGIC;
  signal \^mmcm_locked_out\ : STD_LOGIC;
  signal n_0_core_clocking_i : STD_LOGIC;
  signal n_2_core_clocking_i : STD_LOGIC;
  signal \^pma_reset_out\ : STD_LOGIC;
  signal \^rxuserclk2_out\ : STD_LOGIC;
  signal \^status_vector\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal txoutclk : STD_LOGIC;
  signal \^userclk2_out\ : STD_LOGIC;
begin
  gt0_dmonitorout_out(16) <= \<const0>\;
  gt0_dmonitorout_out(15) <= \<const0>\;
  gt0_dmonitorout_out(14) <= \<const0>\;
  gt0_dmonitorout_out(13) <= \<const0>\;
  gt0_dmonitorout_out(12) <= \<const0>\;
  gt0_dmonitorout_out(11) <= \<const0>\;
  gt0_dmonitorout_out(10) <= \<const0>\;
  gt0_dmonitorout_out(9) <= \<const0>\;
  gt0_dmonitorout_out(8) <= \<const0>\;
  gt0_dmonitorout_out(7 downto 0) <= \^gt0_dmonitorout_out\(7 downto 0);
  gt0_qplloutclk_out <= \^gt0_qplloutclk_out\;
  gt0_qplloutrefclk_out <= \^gt0_qplloutrefclk_out\;
  gt0_rxchariscomma_out(1) <= \<const0>\;
  gt0_rxchariscomma_out(0) <= \^gt0_rxchariscomma_out\(0);
  gt0_rxcharisk_out(1) <= \<const0>\;
  gt0_rxcharisk_out(0) <= \^gt0_rxcharisk_out\(0);
  gt0_rxdisperr_out(1) <= \<const0>\;
  gt0_rxdisperr_out(0) <= \^gt0_rxdisperr_out\(0);
  gt0_rxnotintable_out(1) <= \<const0>\;
  gt0_rxnotintable_out(0) <= \^gt0_rxnotintable_out\(0);
  gt0_rxpmaresetdone_out <= \<const0>\;
  gtrefclk_out <= \^gtrefclk_out\;
  mmcm_locked_out <= \^mmcm_locked_out\;
  pma_reset_out <= \^pma_reset_out\;
  rxuserclk2_out <= \^rxuserclk2_out\;
  rxuserclk_out <= \^rxuserclk2_out\;
  status_vector(15) <= \<const0>\;
  status_vector(14) <= \<const0>\;
  status_vector(13) <= \<const0>\;
  status_vector(12) <= \<const0>\;
  status_vector(11) <= \<const0>\;
  status_vector(10) <= \<const0>\;
  status_vector(9) <= \<const0>\;
  status_vector(8) <= \<const0>\;
  status_vector(7) <= \<const0>\;
  status_vector(6 downto 0) <= \^status_vector\(6 downto 0);
  userclk2_out <= \^userclk2_out\;
  userclk_out <= \^rxuserclk2_out\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
core_clocking_i: entity work.gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_clocking
    port map (
      AS(0) => n_0_core_clocking_i,
      O1 => n_2_core_clocking_i,
      gtrefclk_n => gtrefclk_n,
      gtrefclk_out => \^gtrefclk_out\,
      gtrefclk_p => gtrefclk_p,
      mmcm_locked => \^mmcm_locked_out\,
      reset => reset,
      rxuserclk2 => \^rxuserclk2_out\,
      txoutclk => txoutclk,
      userclk2 => \^userclk2_out\
    );
core_gt_common_i: entity work.gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_gt_common
    port map (
      Q(0) => \^pma_reset_out\,
      gt0_qplloutclk_out => \^gt0_qplloutclk_out\,
      gt0_qplloutrefclk_out => \^gt0_qplloutrefclk_out\,
      gtrefclk_out => \^gtrefclk_out\,
      independent_clock_bufg => independent_clock_bufg
    );
core_resets_i: entity work.gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_resets
    port map (
      AS(0) => n_0_core_clocking_i,
      Q(0) => \^pma_reset_out\,
      independent_clock_bufg => independent_clock_bufg
    );
pcs_pma_block_i: entity work.gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_block
    port map (
      CLK => \^rxuserclk2_out\,
      I1 => \^userclk2_out\,
      I2 => n_2_core_clocking_i,
      O1 => gmii_isolate,
      Q(0) => \^pma_reset_out\,
      configuration_vector(2 downto 0) => configuration_vector(3 downto 1),
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_dmonitorout_out(7 downto 0) => \^gt0_dmonitorout_out\(7 downto 0),
      gt0_drpaddr_in(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      gt0_drpclk_in => gt0_drpclk_in,
      gt0_drpdi_in(15 downto 0) => gt0_drpdi_in(15 downto 0),
      gt0_drpdo_out(15 downto 0) => gt0_drpdo_out(15 downto 0),
      gt0_drpen_in => gt0_drpen_in,
      gt0_drprdy_out => gt0_drprdy_out,
      gt0_drpwe_in => gt0_drpwe_in,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_qplloutclk_out => \^gt0_qplloutclk_out\,
      gt0_qplloutrefclk_out => \^gt0_qplloutrefclk_out\,
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxchariscomma_out(0) => \^gt0_rxchariscomma_out\(0),
      gt0_rxcharisk_out(0) => \^gt0_rxcharisk_out\(0),
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdfeagcovrden_in => gt0_rxdfeagcovrden_in,
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxdisperr_out(0) => \^gt0_rxdisperr_out\(0),
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxnotintable_out(0) => \^gt0_rxnotintable_out\(0),
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_rxresetdone_out => gt0_rxresetdone_out,
      gt0_txbufstatus_out(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gt0_txresetdone_out => gt0_txresetdone_out,
      gtrefclk_out => \^gtrefclk_out\,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked_out => \^mmcm_locked_out\,
      resetdone => resetdone,
      rxn => rxn,
      rxp => rxp,
      signal_detect => signal_detect,
      status_vector(6 downto 0) => \^status_vector\(6 downto 0),
      txn => txn,
      txoutclk => txoutclk,
      txp => txp
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity gig_ethernet_pcs_pma_0 is
  port (
    gtrefclk_p : in STD_LOGIC;
    gtrefclk_n : in STD_LOGIC;
    gtrefclk_out : out STD_LOGIC;
    txp : out STD_LOGIC;
    txn : out STD_LOGIC;
    rxp : in STD_LOGIC;
    rxn : in STD_LOGIC;
    resetdone : out STD_LOGIC;
    userclk_out : out STD_LOGIC;
    userclk2_out : out STD_LOGIC;
    rxuserclk_out : out STD_LOGIC;
    rxuserclk2_out : out STD_LOGIC;
    pma_reset_out : out STD_LOGIC;
    mmcm_locked_out : out STD_LOGIC;
    independent_clock_bufg : in STD_LOGIC;
    gmii_txd : in STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_tx_en : in STD_LOGIC;
    gmii_tx_er : in STD_LOGIC;
    gmii_rxd : out STD_LOGIC_VECTOR ( 7 downto 0 );
    gmii_rx_dv : out STD_LOGIC;
    gmii_rx_er : out STD_LOGIC;
    gmii_isolate : out STD_LOGIC;
    configuration_vector : in STD_LOGIC_VECTOR ( 4 downto 0 );
    status_vector : out STD_LOGIC_VECTOR ( 15 downto 0 );
    reset : in STD_LOGIC;
    gt0_txpmareset_in : in STD_LOGIC;
    gt0_txpcsreset_in : in STD_LOGIC;
    gt0_rxpmareset_in : in STD_LOGIC;
    gt0_rxpcsreset_in : in STD_LOGIC;
    gt0_rxbufreset_in : in STD_LOGIC;
    gt0_rxpmaresetdone_out : out STD_LOGIC;
    gt0_rxbufstatus_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txbufstatus_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_dmonitorout_out : out STD_LOGIC_VECTOR ( 16 downto 0 );
    gt0_drpaddr_in : in STD_LOGIC_VECTOR ( 8 downto 0 );
    gt0_drpclk_in : in STD_LOGIC;
    gt0_drpdi_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpdo_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    gt0_drpen_in : in STD_LOGIC;
    gt0_drprdy_out : out STD_LOGIC;
    gt0_drpwe_in : in STD_LOGIC;
    gt0_rxchariscomma_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxcharisk_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxbyteisaligned_out : out STD_LOGIC;
    gt0_rxbyterealign_out : out STD_LOGIC;
    gt0_rxcommadet_out : out STD_LOGIC;
    gt0_txpolarity_in : in STD_LOGIC;
    gt0_txdiffctrl_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gt0_txpostcursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_txprecursor_in : in STD_LOGIC_VECTOR ( 4 downto 0 );
    gt0_rxpolarity_in : in STD_LOGIC;
    gt0_rxdfelpmreset_in : in STD_LOGIC;
    gt0_rxdfeagcovrden_in : in STD_LOGIC;
    gt0_rxlpmen_in : in STD_LOGIC;
    gt0_txprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txprbsforceerr_in : in STD_LOGIC;
    gt0_rxprbscntreset_in : in STD_LOGIC;
    gt0_rxprbserr_out : out STD_LOGIC;
    gt0_rxprbssel_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_loopback_in : in STD_LOGIC_VECTOR ( 2 downto 0 );
    gt0_txresetdone_out : out STD_LOGIC;
    gt0_rxresetdone_out : out STD_LOGIC;
    gt0_rxdisperr_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_rxnotintable_out : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gt0_eyescanreset_in : in STD_LOGIC;
    gt0_eyescandataerror_out : out STD_LOGIC;
    gt0_eyescantrigger_in : in STD_LOGIC;
    gt0_rxcdrhold_in : in STD_LOGIC;
    gt0_rxmonitorout_out : out STD_LOGIC_VECTOR ( 6 downto 0 );
    gt0_rxmonitorsel_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    signal_detect : in STD_LOGIC;
    gt0_qplloutclk_out : out STD_LOGIC;
    gt0_qplloutrefclk_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of gig_ethernet_pcs_pma_0 : entity is true;
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of gig_ethernet_pcs_pma_0 : entity is "yes";
  attribute core_generation_info : string;
  attribute core_generation_info of gig_ethernet_pcs_pma_0 : entity is "gig_ethernet_pcs_pma_0,gig_ethernet_pcs_pma_v14_1,{x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=gig_ethernet_pcs_pma,x_ipVersion=14.1,x_ipLanguage=VHDL,c_family=kintex7,c_component_name=gig_ethernet_pcs_pma_0,c_is_sgmii=false,c_use_transceiver=true,c_use_tbi=false,c_use_lvds=false,c_has_an=false,c_has_mdio=false,c_sgmii_phy_mode=false,c_dynamic_switching=false,c_transceiver_mode=A,c_sgmii_fabric_buffer=true,c_1588=0,C_PHYADDR=1}";
  attribute x_core_info : string;
  attribute x_core_info of gig_ethernet_pcs_pma_0 : entity is "gig_ethernet_pcs_pma_0_support,Vivado 2013.4";
end gig_ethernet_pcs_pma_0;

architecture STRUCTURE of gig_ethernet_pcs_pma_0 is
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
begin
U0: entity work.gig_ethernet_pcs_pma_0gig_ethernet_pcs_pma_0_support
    port map (
      configuration_vector(4 downto 0) => configuration_vector(4 downto 0),
      gmii_isolate => gmii_isolate,
      gmii_rx_dv => gmii_rx_dv,
      gmii_rx_er => gmii_rx_er,
      gmii_rxd(7 downto 0) => gmii_rxd(7 downto 0),
      gmii_tx_en => gmii_tx_en,
      gmii_tx_er => gmii_tx_er,
      gmii_txd(7 downto 0) => gmii_txd(7 downto 0),
      gt0_dmonitorout_out(16 downto 0) => gt0_dmonitorout_out(16 downto 0),
      gt0_drpaddr_in(8 downto 0) => gt0_drpaddr_in(8 downto 0),
      gt0_drpclk_in => gt0_drpclk_in,
      gt0_drpdi_in(15 downto 0) => gt0_drpdi_in(15 downto 0),
      gt0_drpdo_out(15 downto 0) => gt0_drpdo_out(15 downto 0),
      gt0_drpen_in => gt0_drpen_in,
      gt0_drprdy_out => gt0_drprdy_out,
      gt0_drpwe_in => gt0_drpwe_in,
      gt0_eyescandataerror_out => gt0_eyescandataerror_out,
      gt0_eyescanreset_in => gt0_eyescanreset_in,
      gt0_eyescantrigger_in => gt0_eyescantrigger_in,
      gt0_loopback_in(2 downto 0) => gt0_loopback_in(2 downto 0),
      gt0_qplloutclk_out => gt0_qplloutclk_out,
      gt0_qplloutrefclk_out => gt0_qplloutrefclk_out,
      gt0_rxbufreset_in => gt0_rxbufreset_in,
      gt0_rxbufstatus_out(2 downto 0) => gt0_rxbufstatus_out(2 downto 0),
      gt0_rxbyteisaligned_out => gt0_rxbyteisaligned_out,
      gt0_rxbyterealign_out => gt0_rxbyterealign_out,
      gt0_rxcdrhold_in => gt0_rxcdrhold_in,
      gt0_rxchariscomma_out(1 downto 0) => gt0_rxchariscomma_out(1 downto 0),
      gt0_rxcharisk_out(1 downto 0) => gt0_rxcharisk_out(1 downto 0),
      gt0_rxcommadet_out => gt0_rxcommadet_out,
      gt0_rxdfeagcovrden_in => gt0_rxdfeagcovrden_in,
      gt0_rxdfelpmreset_in => gt0_rxdfelpmreset_in,
      gt0_rxdisperr_out(1 downto 0) => gt0_rxdisperr_out(1 downto 0),
      gt0_rxlpmen_in => gt0_rxlpmen_in,
      gt0_rxmonitorout_out(6 downto 0) => gt0_rxmonitorout_out(6 downto 0),
      gt0_rxmonitorsel_in(1 downto 0) => gt0_rxmonitorsel_in(1 downto 0),
      gt0_rxnotintable_out(1 downto 0) => gt0_rxnotintable_out(1 downto 0),
      gt0_rxpcsreset_in => gt0_rxpcsreset_in,
      gt0_rxpmareset_in => gt0_rxpmareset_in,
      gt0_rxpmaresetdone_out => gt0_rxpmaresetdone_out,
      gt0_rxpolarity_in => gt0_rxpolarity_in,
      gt0_rxprbscntreset_in => gt0_rxprbscntreset_in,
      gt0_rxprbserr_out => gt0_rxprbserr_out,
      gt0_rxprbssel_in(2 downto 0) => gt0_rxprbssel_in(2 downto 0),
      gt0_rxresetdone_out => gt0_rxresetdone_out,
      gt0_txbufstatus_out(1 downto 0) => gt0_txbufstatus_out(1 downto 0),
      gt0_txdiffctrl_in(3 downto 0) => gt0_txdiffctrl_in(3 downto 0),
      gt0_txpcsreset_in => gt0_txpcsreset_in,
      gt0_txpmareset_in => gt0_txpmareset_in,
      gt0_txpolarity_in => gt0_txpolarity_in,
      gt0_txpostcursor_in(4 downto 0) => gt0_txpostcursor_in(4 downto 0),
      gt0_txprbsforceerr_in => gt0_txprbsforceerr_in,
      gt0_txprbssel_in(2 downto 0) => gt0_txprbssel_in(2 downto 0),
      gt0_txprecursor_in(4 downto 0) => gt0_txprecursor_in(4 downto 0),
      gt0_txresetdone_out => gt0_txresetdone_out,
      gtrefclk_n => gtrefclk_n,
      gtrefclk_out => gtrefclk_out,
      gtrefclk_p => gtrefclk_p,
      independent_clock_bufg => independent_clock_bufg,
      mmcm_locked_out => mmcm_locked_out,
      pma_reset_out => pma_reset_out,
      reset => reset,
      resetdone => resetdone,
      rxn => rxn,
      rxp => rxp,
      rxuserclk2_out => rxuserclk2_out,
      rxuserclk_out => rxuserclk_out,
      signal_detect => signal_detect,
      status_vector(15 downto 0) => status_vector(15 downto 0),
      txn => txn,
      txp => txp,
      userclk2_out => userclk2_out,
      userclk_out => userclk_out
    );
end STRUCTURE;
