-- Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
-- Date        : Fri Jul 18 14:09:16 2014
-- Host        : PC210 running 64-bit Service Pack 1  (build 7601)
-- Command     : write_vhdl -force -mode funcsim
--               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/fill_num_axis_data_fifo/fill_num_axis_data_fifo_funcsim.vhdl
-- Design      : fill_num_axis_data_fifo
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k160tfbg676-1
-- --------------------------------------------------------------------------------
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifoblk_mem_gen_prim_wrapper is
  port (
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    ram_rd_en_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end fill_num_axis_data_fifoblk_mem_gen_prim_wrapper;

architecture STRUCTURE of fill_num_axis_data_fifoblk_mem_gen_prim_wrapper is
  signal \<const0>\ : STD_LOGIC;
  signal \n_0_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  signal \n_16_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  signal \n_17_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  signal \n_1_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  signal \n_24_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  signal \n_25_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  signal \n_32_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  signal \n_33_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  signal \n_34_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  signal \n_35_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  signal \n_8_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  signal \n_9_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : STD_LOGIC;
  attribute box_type : string;
  attribute box_type of \DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\ : label is "PRIMITIVE";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\: unisim.vcomponents.RAMB18E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_A => X"00000",
      INIT_B => X"00000",
      INIT_FILE => "NONE",
      IS_CLKARDCLK_INVERTED => '0',
      IS_CLKBWRCLK_INVERTED => '0',
      IS_ENARDEN_INVERTED => '0',
      IS_ENBWREN_INVERTED => '0',
      IS_RSTRAMARSTRAM_INVERTED => '0',
      IS_RSTRAMB_INVERTED => '0',
      IS_RSTREGARSTREG_INVERTED => '0',
      IS_RSTREGB_INVERTED => '0',
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"00000",
      SRVAL_B => X"00000",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36
    )
    port map (
      ADDRARDADDR(13 downto 5) => O3(8 downto 0),
      ADDRARDADDR(4) => \<const0>\,
      ADDRARDADDR(3) => \<const0>\,
      ADDRARDADDR(2) => \<const0>\,
      ADDRARDADDR(1) => \<const0>\,
      ADDRARDADDR(0) => \<const0>\,
      ADDRBWRADDR(13 downto 5) => Q(8 downto 0),
      ADDRBWRADDR(4) => \<const0>\,
      ADDRBWRADDR(3) => \<const0>\,
      ADDRBWRADDR(2) => \<const0>\,
      ADDRBWRADDR(1) => \<const0>\,
      ADDRBWRADDR(0) => \<const0>\,
      CLKARDCLK => s_axis_aclk,
      CLKBWRCLK => s_axis_aclk,
      DIADI(15) => \<const0>\,
      DIADI(14) => \<const0>\,
      DIADI(13 downto 8) => s_axis_tdata(11 downto 6),
      DIADI(7) => \<const0>\,
      DIADI(6) => \<const0>\,
      DIADI(5 downto 0) => s_axis_tdata(5 downto 0),
      DIBDI(15) => \<const0>\,
      DIBDI(14) => \<const0>\,
      DIBDI(13 downto 8) => s_axis_tdata(23 downto 18),
      DIBDI(7) => \<const0>\,
      DIBDI(6) => \<const0>\,
      DIBDI(5 downto 0) => s_axis_tdata(17 downto 12),
      DIPADIP(1) => \<const0>\,
      DIPADIP(0) => \<const0>\,
      DIPBDIP(1) => \<const0>\,
      DIPBDIP(0) => \<const0>\,
      DOADO(15) => \n_0_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      DOADO(14) => \n_1_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      DOADO(13 downto 8) => D(11 downto 6),
      DOADO(7) => \n_8_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      DOADO(6) => \n_9_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      DOADO(5 downto 0) => D(5 downto 0),
      DOBDO(15) => \n_16_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      DOBDO(14) => \n_17_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      DOBDO(13 downto 8) => D(23 downto 18),
      DOBDO(7) => \n_24_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      DOBDO(6) => \n_25_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      DOBDO(5 downto 0) => D(17 downto 12),
      DOPADOP(1) => \n_32_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      DOPADOP(0) => \n_33_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      DOPBDOP(1) => \n_34_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      DOPBDOP(0) => \n_35_DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram\,
      ENARDEN => ram_rd_en_i,
      ENBWREN => E(0),
      REGCEAREGCE => \<const0>\,
      REGCEB => \<const0>\,
      RSTRAMARSTRAM => \<const0>\,
      RSTRAMB => \<const0>\,
      RSTREGARSTREG => \<const0>\,
      RSTREGB => \<const0>\,
      WEA(1) => \<const0>\,
      WEA(0) => \<const0>\,
      WEBWE(3) => E(0),
      WEBWE(2) => E(0),
      WEBWE(1) => E(0),
      WEBWE(0) => E(0)
    );
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifocompare is
  port (
    comp0 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I1 : in STD_LOGIC
  );
end fill_num_axis_data_fifocompare;

architecture STRUCTURE of fill_num_axis_data_fifocompare is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal \n_0_gmux.gm[3].gms.ms\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => lopt,
      CO(3) => \n_0_gmux.gm[3].gms.ms\,
      CO(2 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \<const1>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[0].gm1.m1_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_gmux.gm[3].gms.ms\,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => lopt_1,
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => \<const0>\,
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => I1
    );
\gmux.gm[4].gms.ms_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifocompare_0 is
  port (
    comp1 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I2 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fill_num_axis_data_fifocompare_0 : entity is "compare";
end fill_num_axis_data_fifocompare_0;

architecture STRUCTURE of fill_num_axis_data_fifocompare_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal \n_0_gmux.gm[3].gms.ms\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => lopt,
      CO(3) => \n_0_gmux.gm[3].gms.ms\,
      CO(2 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \<const1>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[0].gm1.m1_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_gmux.gm[3].gms.ms\,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => lopt_1,
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => \<const0>\,
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => I2
    );
\gmux.gm[4].gms.ms_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifocompare_1 is
  port (
    comp0 : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    O1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fill_num_axis_data_fifocompare_1 : entity is "compare";
end fill_num_axis_data_fifocompare_1;

architecture STRUCTURE of fill_num_axis_data_fifocompare_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal \n_0_gmux.gm[3].gms.ms\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => lopt,
      CO(3) => \n_0_gmux.gm[3].gms.ms\,
      CO(2 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \<const1>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg(3 downto 0)
    );
\gmux.gm[0].gm1.m1_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_gmux.gm[3].gms.ms\,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp0,
      CYINIT => lopt_1,
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => \<const0>\,
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => O1
    );
\gmux.gm[4].gms.ms_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifocompare_2 is
  port (
    comp1 : out STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of fill_num_axis_data_fifocompare_2 : entity is "compare";
end fill_num_axis_data_fifocompare_2;

architecture STRUCTURE of fill_num_axis_data_fifocompare_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal lopt : STD_LOGIC;
  signal lopt_1 : STD_LOGIC;
  signal \n_0_gmux.gm[3].gms.ms\ : STD_LOGIC;
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \gmux.gm[0].gm1.m1_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type : string;
  attribute box_type of \gmux.gm[0].gm1.m1_CARRY4\ : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM of \gmux.gm[4].gms.ms_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \gmux.gm[4].gms.ms_CARRY4\ : label is "PRIMITIVE";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\gmux.gm[0].gm1.m1_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => lopt,
      CO(3) => \n_0_gmux.gm[3].gms.ms\,
      CO(2 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_CO_UNCONNECTED\(2 downto 0),
      CYINIT => \<const1>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \<const0>\,
      O(3 downto 0) => \NLW_gmux.gm[0].gm1.m1_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 0) => v1_reg_0(3 downto 0)
    );
\gmux.gm[0].gm1.m1_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt
    );
\gmux.gm[4].gms.ms_CARRY4\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_gmux.gm[3].gms.ms\,
      CO(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => comp1,
      CYINIT => lopt_1,
      DI(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => \<const0>\,
      O(3 downto 0) => \NLW_gmux.gm[4].gms.ms_CARRY4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => \NLW_gmux.gm[4].gms.ms_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => I1
    );
\gmux.gm[4].gms.ms_CARRY4_GND\: unisim.vcomponents.GND
    port map (
      G => lopt_1
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fiford_bin_cntr is
  port (
    O1 : out STD_LOGIC;
    O3 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O2 : out STD_LOGIC;
    O5 : out STD_LOGIC;
    ram_full_comb : out STD_LOGIC;
    O4 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 7 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    comp0 : in STD_LOGIC;
    rst_full_gen_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    comp1 : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    p_17_out : in STD_LOGIC;
    comp0_0 : in STD_LOGIC;
    comp1_1 : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    I3 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end fill_num_axis_data_fiford_bin_cntr;

architecture STRUCTURE of fill_num_axis_data_fiford_bin_cntr is
  signal \^o3\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \n_0_gc0.count[8]_i_2\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 8 to 8 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gc0.count[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gc0.count[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gc0.count[7]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gc0.count[8]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gc0.count[8]_i_2\ : label is "soft_lutpair0";
  attribute counter : integer;
  attribute counter of \gc0.count_reg[0]\ : label is 4;
  attribute counter of \gc0.count_reg[1]\ : label is 4;
  attribute counter of \gc0.count_reg[2]\ : label is 4;
  attribute counter of \gc0.count_reg[3]\ : label is 4;
  attribute counter of \gc0.count_reg[4]\ : label is 4;
  attribute counter of \gc0.count_reg[5]\ : label is 4;
  attribute counter of \gc0.count_reg[6]\ : label is 4;
  attribute counter of \gc0.count_reg[7]\ : label is 4;
  attribute counter of \gc0.count_reg[8]\ : label is 4;
begin
  O3(8 downto 0) <= \^o3\(8 downto 0);
  Q(7 downto 0) <= \^q\(7 downto 0);
\gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^q\(0),
      O => plusOp(0)
    );
\gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => plusOp(1)
    );
\gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      I2 => \^q\(2),
      O => plusOp(2)
    );
\gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \^q\(2),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(3),
      O => plusOp(3)
    );
\gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \^q\(1),
      I1 => \^q\(0),
      I2 => \^q\(2),
      I3 => \^q\(3),
      I4 => \^q\(4),
      O => plusOp(4)
    );
\gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      I0 => \^q\(2),
      I1 => \^q\(4),
      I2 => \^q\(0),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \^q\(5),
      O => plusOp(5)
    );
\gc0.count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \n_0_gc0.count[8]_i_2\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      O => plusOp(6)
    );
\gc0.count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \n_0_gc0.count[8]_i_2\,
      I1 => \^q\(5),
      I2 => \^q\(6),
      I3 => \^q\(7),
      O => plusOp(7)
    );
\gc0.count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \n_0_gc0.count[8]_i_2\,
      I1 => \^q\(6),
      I2 => \^q\(7),
      I3 => \^q\(5),
      I4 => rd_pntr_plus1(8),
      O => plusOp(8)
    );
\gc0.count[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => \^q\(3),
      I1 => \^q\(1),
      I2 => \^q\(0),
      I3 => \^q\(4),
      I4 => \^q\(2),
      O => \n_0_gc0.count[8]_i_2\
    );
\gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => \^q\(0),
      Q => \^o3\(0)
    );
\gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => \^q\(1),
      Q => \^o3\(1)
    );
\gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => \^q\(2),
      Q => \^o3\(2)
    );
\gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => \^q\(3),
      Q => \^o3\(3)
    );
\gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => \^q\(4),
      Q => \^o3\(4)
    );
\gc0.count_d1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => \^q\(5),
      Q => \^o3\(5)
    );
\gc0.count_d1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => \^q\(6),
      Q => \^o3\(6)
    );
\gc0.count_d1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => \^q\(7),
      Q => \^o3\(7)
    );
\gc0.count_d1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => rd_pntr_plus1(8),
      Q => \^o3\(8)
    );
\gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      D => plusOp(0),
      PRE => I3(0),
      Q => \^q\(0)
    );
\gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => plusOp(1),
      Q => \^q\(1)
    );
\gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => plusOp(2),
      Q => \^q\(2)
    );
\gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => plusOp(3),
      Q => \^q\(3)
    );
\gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => plusOp(4),
      Q => \^q\(4)
    );
\gc0.count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => plusOp(5),
      Q => \^q\(5)
    );
\gc0.count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => plusOp(6),
      Q => \^q\(6)
    );
\gc0.count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => plusOp(7),
      Q => \^q\(7)
    );
\gc0.count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => I3(0),
      D => plusOp(8),
      Q => rd_pntr_plus1(8)
    );
\gmux.gm[4].gms.ms_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \^o3\(8),
      I1 => I1(0),
      O => O1
    );
\gmux.gm[4].gms.ms_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => rd_pntr_plus1(8),
      I1 => I1(0),
      O => O2
    );
\gmux.gm[4].gms.ms_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \^o3\(8),
      I1 => I2(0),
      O => O5
    );
ram_empty_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FAFA22FAAAAA22AA"
    )
    port map (
      I0 => p_17_out,
      I1 => comp0_0,
      I2 => E(0),
      I3 => s_axis_tvalid,
      I4 => p_1_out,
      I5 => comp1_1,
      O => O4
    );
ram_full_fb_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"131313130F000000"
    )
    port map (
      I0 => comp0,
      I1 => rst_full_gen_i,
      I2 => E(0),
      I3 => comp1,
      I4 => s_axis_tvalid,
      I5 => p_1_out,
      O => ram_full_comb
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fiford_fwft is
  port (
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_rd_en_i : out STD_LOGIC;
    O1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC;
    O2 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    p_17_out : in STD_LOGIC
  );
end fill_num_axis_data_fiford_fwft;

architecture STRUCTURE of fill_num_axis_data_fiford_fwft is
  signal \<const1>\ : STD_LOGIC;
  signal curr_fwft_state : STD_LOGIC_VECTOR ( 0 to 0 );
  signal empty_fwft_fb : STD_LOGIC;
  signal empty_fwft_i : STD_LOGIC;
  signal empty_fwft_i0 : STD_LOGIC;
  signal \n_0_gpregsm1.curr_fwft_state_reg[1]\ : STD_LOGIC;
  signal next_fwft_state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal valid_fwft : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of empty_fwft_fb_reg : label is "no";
  attribute equivalent_register_removal of empty_fwft_i_reg : label is "no";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gc0.count_d1[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \goreg_bm.dout_i[23]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gpregsm1.curr_fwft_state[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gpregsm1.curr_fwft_state[1]_i_1\ : label is "soft_lutpair3";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \gpregsm1.curr_fwft_state_reg[1]\ : label is "no";
  attribute equivalent_register_removal of \gpregsm1.user_valid_reg\ : label is "no";
begin
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
    port map (
      I0 => curr_fwft_state(0),
      I1 => m_axis_tready,
      I2 => \n_0_gpregsm1.curr_fwft_state_reg[1]\,
      I3 => p_17_out,
      O => ram_rd_en_i
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\count[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => m_axis_tready,
      I1 => valid_fwft,
      O => DI(1)
    );
\count[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => valid_fwft,
      I1 => m_axis_tready,
      O => DI(0)
    );
\count[3]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => valid_fwft,
      I1 => m_axis_tready,
      I2 => O2(1),
      O => S(1)
    );
\count[3]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => valid_fwft,
      I1 => m_axis_tready,
      I2 => O2(0),
      O => S(0)
    );
\count[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8878"
    )
    port map (
      I0 => valid_fwft,
      I1 => m_axis_tready,
      I2 => s_axis_tvalid,
      I3 => p_1_out,
      O => E(0)
    );
empty_fwft_fb_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88EA"
    )
    port map (
      I0 => empty_fwft_fb,
      I1 => curr_fwft_state(0),
      I2 => m_axis_tready,
      I3 => \n_0_gpregsm1.curr_fwft_state_reg[1]\,
      O => empty_fwft_i0
    );
empty_fwft_fb_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => empty_fwft_i0,
      PRE => Q(1),
      Q => empty_fwft_fb
    );
empty_fwft_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => empty_fwft_i0,
      PRE => Q(1),
      Q => empty_fwft_i
    );
\gc0.count_d1[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
    port map (
      I0 => \n_0_gpregsm1.curr_fwft_state_reg[1]\,
      I1 => m_axis_tready,
      I2 => curr_fwft_state(0),
      I3 => p_17_out,
      O => O1(0)
    );
\goreg_bm.dout_i[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4404"
    )
    port map (
      I0 => Q(0),
      I1 => \n_0_gpregsm1.curr_fwft_state_reg[1]\,
      I2 => curr_fwft_state(0),
      I3 => m_axis_tready,
      O => O3(0)
    );
\gpregsm1.curr_fwft_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AE"
    )
    port map (
      I0 => \n_0_gpregsm1.curr_fwft_state_reg[1]\,
      I1 => curr_fwft_state(0),
      I2 => m_axis_tready,
      O => next_fwft_state(0)
    );
\gpregsm1.curr_fwft_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"20FF"
    )
    port map (
      I0 => \n_0_gpregsm1.curr_fwft_state_reg[1]\,
      I1 => m_axis_tready,
      I2 => curr_fwft_state(0),
      I3 => p_17_out,
      O => next_fwft_state(1)
    );
\gpregsm1.curr_fwft_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      CLR => Q(1),
      D => next_fwft_state(0),
      Q => curr_fwft_state(0)
    );
\gpregsm1.curr_fwft_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      CLR => Q(1),
      D => next_fwft_state(1),
      Q => \n_0_gpregsm1.curr_fwft_state_reg[1]\
    );
\gpregsm1.user_valid_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      CLR => Q(1),
      D => next_fwft_state(0),
      Q => valid_fwft
    );
m_axis_tvalid_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => empty_fwft_i,
      O => m_axis_tvalid
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fiforeset_blk_ramfifo is
  port (
    rst_full_gen_i : out STD_LOGIC;
    AR : out STD_LOGIC_VECTOR ( 0 to 0 );
    rst_d2 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    I1 : in STD_LOGIC
  );
end fill_num_axis_data_fiforeset_blk_ramfifo;

architecture STRUCTURE of fill_num_axis_data_fiforeset_blk_ramfifo is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal inverted_reset : STD_LOGIC;
  signal \n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\ : STD_LOGIC;
  signal \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\ : STD_LOGIC;
  signal \n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\ : STD_LOGIC;
  signal \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1\ : STD_LOGIC;
  signal rd_rst_asreg : STD_LOGIC;
  signal rd_rst_asreg_d1 : STD_LOGIC;
  signal rd_rst_asreg_d2 : STD_LOGIC;
  signal rst_d1 : STD_LOGIC;
  signal \^rst_d2\ : STD_LOGIC;
  signal rst_d3 : STD_LOGIC;
  signal wr_rst_asreg : STD_LOGIC;
  signal wr_rst_asreg_d1 : STD_LOGIC;
  signal wr_rst_asreg_d2 : STD_LOGIC;
  attribute ASYNC_REG : boolean;
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is true;
  attribute msgon : string;
  attribute msgon of \grstd1.grst_full.grst_f.rst_d1_reg\ : label is "true";
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is true;
  attribute msgon of \grstd1.grst_full.grst_f.rst_d2_reg\ : label is "true";
  attribute ASYNC_REG of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is true;
  attribute msgon of \grstd1.grst_full.grst_f.rst_d3_reg\ : label is "true";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg\ : label is true;
  attribute msgon of \ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg\ : label is "true";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg\ : label is true;
  attribute msgon of \ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg\ : label is "true";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ : label is true;
  attribute msgon of \ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\ : label is "true";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\ : label is "no";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg\ : label is true;
  attribute msgon of \ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg\ : label is "true";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg\ : label is true;
  attribute msgon of \ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg\ : label is "true";
  attribute ASYNC_REG of \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ : label is true;
  attribute msgon of \ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\ : label is "true";
  attribute equivalent_register_removal of \ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\ : label is "no";
begin
  rst_d2 <= \^rst_d2\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
\grstd1.grst_full.grst_f.RST_FULL_GEN_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => I1,
      O => inverted_reset
    );
\grstd1.grst_full.grst_f.RST_FULL_GEN_reg\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      CLR => inverted_reset,
      D => rst_d3,
      Q => rst_full_gen_i
    );
\grstd1.grst_full.grst_f.rst_d1_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => \<const0>\,
      PRE => inverted_reset,
      Q => rst_d1
    );
\grstd1.grst_full.grst_f.rst_d2_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => rst_d1,
      PRE => inverted_reset,
      Q => \^rst_d2\
    );
\grstd1.grst_full.grst_f.rst_d3_reg\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => \^rst_d2\,
      PRE => inverted_reset,
      Q => rst_d3
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => rd_rst_asreg,
      Q => rd_rst_asreg_d1,
      R => \<const0>\
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => rd_rst_asreg_d1,
      Q => rd_rst_asreg_d2,
      R => \<const0>\
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d1,
      O => \n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\
    );
\ngwrdrst.grst.g7serrst.rd_rst_asreg_reg\: unisim.vcomponents.FDPE
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => \n_0_ngwrdrst.grst.g7serrst.rd_rst_asreg_i_1\,
      PRE => inverted_reset,
      Q => rd_rst_asreg
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => rd_rst_asreg,
      I1 => rd_rst_asreg_d2,
      O => \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => \<const0>\,
      PRE => \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\,
      Q => Q(0)
    );
\ngwrdrst.grst.g7serrst.rd_rst_reg_reg[2]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => \<const0>\,
      PRE => \n_0_ngwrdrst.grst.g7serrst.rd_rst_reg[2]_i_1\,
      Q => Q(1)
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d1_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => wr_rst_asreg,
      Q => wr_rst_asreg_d1,
      R => \<const0>\
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_d2_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => wr_rst_asreg_d1,
      Q => wr_rst_asreg_d2,
      R => \<const0>\
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d1,
      O => \n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\
    );
\ngwrdrst.grst.g7serrst.wr_rst_asreg_reg\: unisim.vcomponents.FDPE
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => \n_0_ngwrdrst.grst.g7serrst.wr_rst_asreg_i_1\,
      PRE => inverted_reset,
      Q => wr_rst_asreg
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => wr_rst_asreg,
      I1 => wr_rst_asreg_d2,
      O => \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1\
    );
\ngwrdrst.grst.g7serrst.wr_rst_reg_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => \<const0>\,
      PRE => \n_0_ngwrdrst.grst.g7serrst.wr_rst_reg[1]_i_1\,
      Q => AR(0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifoupdn_cntr is
  port (
    O2 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end fill_num_axis_data_fifoupdn_cntr;

architecture STRUCTURE of fill_num_axis_data_fifoupdn_cntr is
  signal \<const0>\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \n_0_count[3]_i_4\ : STD_LOGIC;
  signal \n_0_count[3]_i_7\ : STD_LOGIC;
  signal \n_0_count[7]_i_2\ : STD_LOGIC;
  signal \n_0_count[7]_i_3\ : STD_LOGIC;
  signal \n_0_count[7]_i_4\ : STD_LOGIC;
  signal \n_0_count[7]_i_5\ : STD_LOGIC;
  signal \n_0_count[9]_i_3\ : STD_LOGIC;
  signal \n_0_count[9]_i_4\ : STD_LOGIC;
  signal \n_0_count_reg[3]_i_1\ : STD_LOGIC;
  signal \n_0_count_reg[7]_i_1\ : STD_LOGIC;
  signal \n_1_count_reg[3]_i_1\ : STD_LOGIC;
  signal \n_1_count_reg[7]_i_1\ : STD_LOGIC;
  signal \n_2_count_reg[3]_i_1\ : STD_LOGIC;
  signal \n_2_count_reg[7]_i_1\ : STD_LOGIC;
  signal \n_3_count_reg[3]_i_1\ : STD_LOGIC;
  signal \n_3_count_reg[7]_i_1\ : STD_LOGIC;
  signal \n_3_count_reg[9]_i_2\ : STD_LOGIC;
  signal \n_4_count_reg[3]_i_1\ : STD_LOGIC;
  signal \n_4_count_reg[7]_i_1\ : STD_LOGIC;
  signal \n_5_count_reg[3]_i_1\ : STD_LOGIC;
  signal \n_5_count_reg[7]_i_1\ : STD_LOGIC;
  signal \n_6_count_reg[3]_i_1\ : STD_LOGIC;
  signal \n_6_count_reg[7]_i_1\ : STD_LOGIC;
  signal \n_6_count_reg[9]_i_2\ : STD_LOGIC;
  signal \n_7_count_reg[3]_i_1\ : STD_LOGIC;
  signal \n_7_count_reg[7]_i_1\ : STD_LOGIC;
  signal \n_7_count_reg[9]_i_2\ : STD_LOGIC;
  signal \NLW_count_reg[9]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_count_reg[9]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute counter : integer;
  attribute counter of \count_reg[0]\ : label is 3;
  attribute counter of \count_reg[1]\ : label is 3;
  attribute counter of \count_reg[2]\ : label is 3;
  attribute counter of \count_reg[3]\ : label is 3;
  attribute counter of \count_reg[4]\ : label is 3;
  attribute counter of \count_reg[5]\ : label is 3;
  attribute counter of \count_reg[6]\ : label is 3;
  attribute counter of \count_reg[7]\ : label is 3;
  attribute counter of \count_reg[8]\ : label is 3;
  attribute counter of \count_reg[9]\ : label is 3;
begin
  O2(9 downto 0) <= \^o2\(9 downto 0);
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\count[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \^o2\(2),
      I1 => \^o2\(3),
      O => \n_0_count[3]_i_4\
    );
\count[3]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => \^o2\(0),
      O => \n_0_count[3]_i_7\
    );
\count[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \^o2\(6),
      I1 => \^o2\(7),
      O => \n_0_count[7]_i_2\
    );
\count[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \^o2\(5),
      I1 => \^o2\(6),
      O => \n_0_count[7]_i_3\
    );
\count[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \^o2\(4),
      I1 => \^o2\(5),
      O => \n_0_count[7]_i_4\
    );
\count[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \^o2\(3),
      I1 => \^o2\(4),
      O => \n_0_count[7]_i_5\
    );
\count[9]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \^o2\(8),
      I1 => \^o2\(9),
      O => \n_0_count[9]_i_3\
    );
\count[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => \^o2\(7),
      I1 => \^o2\(8),
      O => \n_0_count[9]_i_4\
    );
\count_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => Q(0),
      D => \n_7_count_reg[3]_i_1\,
      Q => \^o2\(0)
    );
\count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => Q(0),
      D => \n_6_count_reg[3]_i_1\,
      Q => \^o2\(1)
    );
\count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => Q(0),
      D => \n_5_count_reg[3]_i_1\,
      Q => \^o2\(2)
    );
\count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => Q(0),
      D => \n_4_count_reg[3]_i_1\,
      Q => \^o2\(3)
    );
\count_reg[3]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \<const0>\,
      CO(3) => \n_0_count_reg[3]_i_1\,
      CO(2) => \n_1_count_reg[3]_i_1\,
      CO(1) => \n_2_count_reg[3]_i_1\,
      CO(0) => \n_3_count_reg[3]_i_1\,
      CYINIT => \<const0>\,
      DI(3) => \^o2\(2),
      DI(2 downto 1) => DI(1 downto 0),
      DI(0) => \^o2\(0),
      O(3) => \n_4_count_reg[3]_i_1\,
      O(2) => \n_5_count_reg[3]_i_1\,
      O(1) => \n_6_count_reg[3]_i_1\,
      O(0) => \n_7_count_reg[3]_i_1\,
      S(3) => \n_0_count[3]_i_4\,
      S(2 downto 1) => S(1 downto 0),
      S(0) => \n_0_count[3]_i_7\
    );
\count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => Q(0),
      D => \n_7_count_reg[7]_i_1\,
      Q => \^o2\(4)
    );
\count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => Q(0),
      D => \n_6_count_reg[7]_i_1\,
      Q => \^o2\(5)
    );
\count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => Q(0),
      D => \n_5_count_reg[7]_i_1\,
      Q => \^o2\(6)
    );
\count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => Q(0),
      D => \n_4_count_reg[7]_i_1\,
      Q => \^o2\(7)
    );
\count_reg[7]_i_1\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_reg[3]_i_1\,
      CO(3) => \n_0_count_reg[7]_i_1\,
      CO(2) => \n_1_count_reg[7]_i_1\,
      CO(1) => \n_2_count_reg[7]_i_1\,
      CO(0) => \n_3_count_reg[7]_i_1\,
      CYINIT => \<const0>\,
      DI(3 downto 0) => \^o2\(6 downto 3),
      O(3) => \n_4_count_reg[7]_i_1\,
      O(2) => \n_5_count_reg[7]_i_1\,
      O(1) => \n_6_count_reg[7]_i_1\,
      O(0) => \n_7_count_reg[7]_i_1\,
      S(3) => \n_0_count[7]_i_2\,
      S(2) => \n_0_count[7]_i_3\,
      S(1) => \n_0_count[7]_i_4\,
      S(0) => \n_0_count[7]_i_5\
    );
\count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => Q(0),
      D => \n_7_count_reg[9]_i_2\,
      Q => \^o2\(8)
    );
\count_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => Q(0),
      D => \n_6_count_reg[9]_i_2\,
      Q => \^o2\(9)
    );
\count_reg[9]_i_2\: unisim.vcomponents.CARRY4
    port map (
      CI => \n_0_count_reg[7]_i_1\,
      CO(3 downto 1) => \NLW_count_reg[9]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \n_3_count_reg[9]_i_2\,
      CYINIT => \<const0>\,
      DI(3) => \<const0>\,
      DI(2) => \<const0>\,
      DI(1) => \<const0>\,
      DI(0) => \^o2\(7),
      O(3 downto 2) => \NLW_count_reg[9]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1) => \n_6_count_reg[9]_i_2\,
      O(0) => \n_7_count_reg[9]_i_2\,
      S(3) => \<const0>\,
      S(2) => \<const0>\,
      S(1) => \n_0_count[9]_i_3\,
      S(0) => \n_0_count[9]_i_4\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifowr_bin_cntr is
  port (
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg_1 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_2 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aclk : in STD_LOGIC;
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end fill_num_axis_data_fifowr_bin_cntr;

architecture STRUCTURE of fill_num_axis_data_fifowr_bin_cntr is
  signal \^o1\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \n_0_gcc0.gc0.count[8]_i_2\ : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal wr_pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gcc0.gc0.count[2]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[4]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gcc0.gc0.count[8]_i_2\ : label is "soft_lutpair5";
  attribute counter : integer;
  attribute counter of \gcc0.gc0.count_reg[0]\ : label is 5;
  attribute counter of \gcc0.gc0.count_reg[1]\ : label is 5;
  attribute counter of \gcc0.gc0.count_reg[2]\ : label is 5;
  attribute counter of \gcc0.gc0.count_reg[3]\ : label is 5;
  attribute counter of \gcc0.gc0.count_reg[4]\ : label is 5;
  attribute counter of \gcc0.gc0.count_reg[5]\ : label is 5;
  attribute counter of \gcc0.gc0.count_reg[6]\ : label is 5;
  attribute counter of \gcc0.gc0.count_reg[7]\ : label is 5;
  attribute counter of \gcc0.gc0.count_reg[8]\ : label is 5;
begin
  O1(8 downto 0) <= \^o1\(8 downto 0);
  Q(0) <= \^q\(0);
\gcc0.gc0.count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => wr_pntr_plus1(0),
      O => \plusOp__0\(0)
    );
\gcc0.gc0.count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => wr_pntr_plus1(0),
      I1 => wr_pntr_plus1(1),
      O => \plusOp__0\(1)
    );
\gcc0.gc0.count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => wr_pntr_plus1(0),
      I1 => wr_pntr_plus1(1),
      I2 => wr_pntr_plus1(2),
      O => \plusOp__0\(2)
    );
\gcc0.gc0.count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => wr_pntr_plus1(2),
      I1 => wr_pntr_plus1(1),
      I2 => wr_pntr_plus1(0),
      I3 => wr_pntr_plus1(3),
      O => \plusOp__0\(3)
    );
\gcc0.gc0.count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => wr_pntr_plus1(1),
      I1 => wr_pntr_plus1(0),
      I2 => wr_pntr_plus1(2),
      I3 => wr_pntr_plus1(3),
      I4 => wr_pntr_plus1(4),
      O => \plusOp__0\(4)
    );
\gcc0.gc0.count[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
    port map (
      I0 => wr_pntr_plus1(2),
      I1 => wr_pntr_plus1(4),
      I2 => wr_pntr_plus1(0),
      I3 => wr_pntr_plus1(1),
      I4 => wr_pntr_plus1(3),
      I5 => wr_pntr_plus1(5),
      O => \plusOp__0\(5)
    );
\gcc0.gc0.count[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
    port map (
      I0 => \n_0_gcc0.gc0.count[8]_i_2\,
      I1 => wr_pntr_plus1(5),
      I2 => wr_pntr_plus1(6),
      O => \plusOp__0\(6)
    );
\gcc0.gc0.count[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
    port map (
      I0 => \n_0_gcc0.gc0.count[8]_i_2\,
      I1 => wr_pntr_plus1(5),
      I2 => wr_pntr_plus1(6),
      I3 => wr_pntr_plus1(7),
      O => \plusOp__0\(7)
    );
\gcc0.gc0.count[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
    port map (
      I0 => \n_0_gcc0.gc0.count[8]_i_2\,
      I1 => wr_pntr_plus1(6),
      I2 => wr_pntr_plus1(7),
      I3 => wr_pntr_plus1(5),
      I4 => \^q\(0),
      O => \plusOp__0\(8)
    );
\gcc0.gc0.count[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
    port map (
      I0 => wr_pntr_plus1(3),
      I1 => wr_pntr_plus1(1),
      I2 => wr_pntr_plus1(0),
      I3 => wr_pntr_plus1(4),
      I4 => wr_pntr_plus1(2),
      O => \n_0_gcc0.gc0.count[8]_i_2\
    );
\gcc0.gc0.count_d1_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus1(0),
      Q => \^o1\(0)
    );
\gcc0.gc0.count_d1_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus1(1),
      Q => \^o1\(1)
    );
\gcc0.gc0.count_d1_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus1(2),
      Q => \^o1\(2)
    );
\gcc0.gc0.count_d1_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus1(3),
      Q => \^o1\(3)
    );
\gcc0.gc0.count_d1_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus1(4),
      Q => \^o1\(4)
    );
\gcc0.gc0.count_d1_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus1(5),
      Q => \^o1\(5)
    );
\gcc0.gc0.count_d1_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus1(6),
      Q => \^o1\(6)
    );
\gcc0.gc0.count_d1_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => wr_pntr_plus1(7),
      Q => \^o1\(7)
    );
\gcc0.gc0.count_d1_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \^q\(0),
      Q => \^o1\(8)
    );
\gcc0.gc0.count_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      D => \plusOp__0\(0),
      PRE => AR(0),
      Q => wr_pntr_plus1(0)
    );
\gcc0.gc0.count_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(1),
      Q => wr_pntr_plus1(1)
    );
\gcc0.gc0.count_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(2),
      Q => wr_pntr_plus1(2)
    );
\gcc0.gc0.count_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(3),
      Q => wr_pntr_plus1(3)
    );
\gcc0.gc0.count_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(4),
      Q => wr_pntr_plus1(4)
    );
\gcc0.gc0.count_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(5),
      Q => wr_pntr_plus1(5)
    );
\gcc0.gc0.count_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(6),
      Q => wr_pntr_plus1(6)
    );
\gcc0.gc0.count_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(7),
      Q => wr_pntr_plus1(7)
    );
\gcc0.gc0.count_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => E(0),
      CLR => AR(0),
      D => \plusOp__0\(8),
      Q => \^q\(0)
    );
\gmux.gm[0].gm1.m1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(0),
      I1 => O3(0),
      I2 => \^o1\(1),
      I3 => O3(1),
      O => v1_reg(0)
    );
\gmux.gm[0].gm1.m1_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(0),
      I1 => O3(0),
      I2 => \^o1\(1),
      I3 => O3(1),
      O => v1_reg_1(0)
    );
\gmux.gm[0].gm1.m1_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(0),
      I1 => O4(0),
      I2 => \^o1\(1),
      I3 => O4(1),
      O => v1_reg_0(0)
    );
\gmux.gm[0].gm1.m1_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => wr_pntr_plus1(0),
      I1 => O3(0),
      I2 => wr_pntr_plus1(1),
      I3 => O3(1),
      O => v1_reg_2(0)
    );
\gmux.gm[1].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(2),
      I1 => O3(2),
      I2 => \^o1\(3),
      I3 => O3(3),
      O => v1_reg(1)
    );
\gmux.gm[1].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(2),
      I1 => O3(2),
      I2 => \^o1\(3),
      I3 => O3(3),
      O => v1_reg_1(1)
    );
\gmux.gm[1].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(2),
      I1 => O4(2),
      I2 => \^o1\(3),
      I3 => O4(3),
      O => v1_reg_0(1)
    );
\gmux.gm[1].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => wr_pntr_plus1(2),
      I1 => O3(2),
      I2 => wr_pntr_plus1(3),
      I3 => O3(3),
      O => v1_reg_2(1)
    );
\gmux.gm[2].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(4),
      I1 => O3(4),
      I2 => \^o1\(5),
      I3 => O3(5),
      O => v1_reg(2)
    );
\gmux.gm[2].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(4),
      I1 => O3(4),
      I2 => \^o1\(5),
      I3 => O3(5),
      O => v1_reg_1(2)
    );
\gmux.gm[2].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(4),
      I1 => O4(4),
      I2 => \^o1\(5),
      I3 => O4(5),
      O => v1_reg_0(2)
    );
\gmux.gm[2].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => wr_pntr_plus1(4),
      I1 => O3(4),
      I2 => wr_pntr_plus1(5),
      I3 => O3(5),
      O => v1_reg_2(2)
    );
\gmux.gm[3].gms.ms_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(6),
      I1 => O3(6),
      I2 => \^o1\(7),
      I3 => O3(7),
      O => v1_reg(3)
    );
\gmux.gm[3].gms.ms_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(6),
      I1 => O3(6),
      I2 => \^o1\(7),
      I3 => O3(7),
      O => v1_reg_1(3)
    );
\gmux.gm[3].gms.ms_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => \^o1\(6),
      I1 => O4(6),
      I2 => \^o1\(7),
      I3 => O4(7),
      O => v1_reg_0(3)
    );
\gmux.gm[3].gms.ms_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => wr_pntr_plus1(6),
      I1 => O3(6),
      I2 => wr_pntr_plus1(7),
      I3 => O3(7),
      O => v1_reg_2(3)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifoblk_mem_gen_prim_width is
  port (
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    ram_rd_en_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end fill_num_axis_data_fifoblk_mem_gen_prim_width;

architecture STRUCTURE of fill_num_axis_data_fifoblk_mem_gen_prim_width is
begin
\prim_noinit.ram\: entity work.fill_num_axis_data_fifoblk_mem_gen_prim_wrapper
    port map (
      D(23 downto 0) => D(23 downto 0),
      E(0) => E(0),
      O3(8 downto 0) => O3(8 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      ram_rd_en_i => ram_rd_en_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifodc_ss_fwft is
  port (
    O2 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    DI : in STD_LOGIC_VECTOR ( 1 downto 0 );
    S : in STD_LOGIC_VECTOR ( 1 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end fill_num_axis_data_fifodc_ss_fwft;

architecture STRUCTURE of fill_num_axis_data_fifodc_ss_fwft is
begin
dc: entity work.fill_num_axis_data_fifoupdn_cntr
    port map (
      DI(1 downto 0) => DI(1 downto 0),
      E(0) => E(0),
      O2(9 downto 0) => O2(9 downto 0),
      Q(0) => Q(0),
      S(1 downto 0) => S(1 downto 0),
      s_axis_aclk => s_axis_aclk
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fiford_status_flags_ss is
  port (
    comp0 : out STD_LOGIC;
    comp1 : out STD_LOGIC;
    p_17_out : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    O1 : in STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end fill_num_axis_data_fiford_status_flags_ss;

architecture STRUCTURE of fill_num_axis_data_fiford_status_flags_ss is
  signal \<const1>\ : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_empty_fb_i_reg : label is "no";
begin
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
c1: entity work.fill_num_axis_data_fifocompare_1
    port map (
      O1 => O1,
      comp0 => comp0,
      v1_reg(3 downto 0) => v1_reg(3 downto 0)
    );
c2: entity work.fill_num_axis_data_fifocompare_2
    port map (
      I1 => I1,
      comp1 => comp1,
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0)
    );
ram_empty_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => I2,
      PRE => Q(0),
      Q => p_17_out
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifowr_status_flags_ss is
  port (
    comp0 : out STD_LOGIC;
    comp1 : out STD_LOGIC;
    p_1_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tready : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I1 : in STD_LOGIC;
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    I2 : in STD_LOGIC;
    ram_full_comb : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    rst_d2 : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );
end fill_num_axis_data_fifowr_status_flags_ss;

architecture STRUCTURE of fill_num_axis_data_fifowr_status_flags_ss is
  signal \<const1>\ : STD_LOGIC;
  signal \^p_1_out\ : STD_LOGIC;
  signal ram_full_i : STD_LOGIC;
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of ram_full_fb_i_reg : label is "no";
  attribute equivalent_register_removal of ram_full_i_reg : label is "no";
begin
  p_1_out <= \^p_1_out\;
\DEVICE_7SERIES.NO_BMM_INFO.SDP.WIDE_PRIM18.ram_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => s_axis_tvalid,
      I1 => \^p_1_out\,
      O => E(0)
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
c0: entity work.fill_num_axis_data_fifocompare
    port map (
      I1 => I1,
      comp0 => comp0,
      v1_reg(3 downto 0) => v1_reg(3 downto 0)
    );
c1: entity work.fill_num_axis_data_fifocompare_0
    port map (
      I2 => I2,
      comp1 => comp1,
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0)
    );
ram_full_fb_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => ram_full_comb,
      PRE => rst_d2,
      Q => \^p_1_out\
    );
ram_full_i_reg: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
    port map (
      C => s_axis_aclk,
      CE => \<const1>\,
      D => ram_full_comb,
      PRE => rst_d2,
      Q => ram_full_i
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ram_full_i,
      O => s_axis_tready
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifoblk_mem_gen_generic_cstr is
  port (
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    ram_rd_en_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end fill_num_axis_data_fifoblk_mem_gen_generic_cstr;

architecture STRUCTURE of fill_num_axis_data_fifoblk_mem_gen_generic_cstr is
begin
\ramloop[0].ram.r\: entity work.fill_num_axis_data_fifoblk_mem_gen_prim_width
    port map (
      D(23 downto 0) => D(23 downto 0),
      E(0) => E(0),
      O3(8 downto 0) => O3(8 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      ram_rd_en_i => ram_rd_en_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fiford_logic is
  port (
    O1 : out STD_LOGIC;
    O2 : out STD_LOGIC_VECTOR ( 9 downto 0 );
    O3 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    O4 : out STD_LOGIC_VECTOR ( 7 downto 0 );
    O5 : out STD_LOGIC;
    ram_full_comb : out STD_LOGIC;
    ram_rd_en_i : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    v1_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    v1_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    p_1_out : in STD_LOGIC;
    I1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    I2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    comp0 : in STD_LOGIC;
    rst_full_gen_i : in STD_LOGIC;
    comp1 : in STD_LOGIC
  );
end fill_num_axis_data_fiford_logic;

architecture STRUCTURE of fill_num_axis_data_fiford_logic is
  signal \^o1\ : STD_LOGIC;
  signal \^o2\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal comp0_1 : STD_LOGIC;
  signal comp1_0 : STD_LOGIC;
  signal \n_0_gr1.rfwft\ : STD_LOGIC;
  signal n_10_rpntr : STD_LOGIC;
  signal n_13_rpntr : STD_LOGIC;
  signal \n_1_gr1.rfwft\ : STD_LOGIC;
  signal \n_2_gr1.rfwft\ : STD_LOGIC;
  signal \n_3_gr1.rfwft\ : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_17_out : STD_LOGIC;
  signal ram_rd_en_temp : STD_LOGIC;
begin
  O1 <= \^o1\;
  O2(9 downto 0) <= \^o2\(9 downto 0);
\gr1.gdcf.dc\: entity work.fill_num_axis_data_fifodc_ss_fwft
    port map (
      DI(1) => \n_3_gr1.rfwft\,
      DI(0) => ram_rd_en_temp,
      E(0) => \n_2_gr1.rfwft\,
      O2(9 downto 0) => \^o2\(9 downto 0),
      Q(0) => Q(1),
      S(1) => \n_0_gr1.rfwft\,
      S(0) => \n_1_gr1.rfwft\,
      s_axis_aclk => s_axis_aclk
    );
\gr1.rfwft\: entity work.fill_num_axis_data_fiford_fwft
    port map (
      DI(1) => \n_3_gr1.rfwft\,
      DI(0) => ram_rd_en_temp,
      E(0) => \n_2_gr1.rfwft\,
      O1(0) => p_13_out,
      O2(1 downto 0) => \^o2\(2 downto 1),
      O3(0) => E(0),
      Q(1 downto 0) => Q(1 downto 0),
      S(1) => \n_0_gr1.rfwft\,
      S(0) => \n_1_gr1.rfwft\,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      p_17_out => p_17_out,
      p_1_out => p_1_out,
      ram_rd_en_i => ram_rd_en_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_tvalid => s_axis_tvalid
    );
\grss.rsts\: entity work.fill_num_axis_data_fiford_status_flags_ss
    port map (
      I1 => n_10_rpntr,
      I2 => n_13_rpntr,
      O1 => \^o1\,
      Q(0) => Q(1),
      comp0 => comp0_1,
      comp1 => comp1_0,
      p_17_out => p_17_out,
      s_axis_aclk => s_axis_aclk,
      v1_reg(3 downto 0) => v1_reg(3 downto 0),
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0)
    );
rpntr: entity work.fill_num_axis_data_fiford_bin_cntr
    port map (
      E(0) => p_13_out,
      I1(0) => I1(0),
      I2(0) => I2(0),
      I3(0) => Q(1),
      O1 => \^o1\,
      O2 => n_10_rpntr,
      O3(8 downto 0) => O3(8 downto 0),
      O4 => n_13_rpntr,
      O5 => O5,
      Q(7 downto 0) => O4(7 downto 0),
      comp0 => comp0,
      comp0_0 => comp0_1,
      comp1 => comp1,
      comp1_1 => comp1_0,
      p_17_out => p_17_out,
      p_1_out => p_1_out,
      ram_full_comb => ram_full_comb,
      rst_full_gen_i => rst_full_gen_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifowr_logic is
  port (
    comp0 : out STD_LOGIC;
    comp1 : out STD_LOGIC;
    p_1_out : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    v1_reg : out STD_LOGIC_VECTOR ( 3 downto 0 );
    O1 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    v1_reg_0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axis_tready : out STD_LOGIC;
    I1 : in STD_LOGIC;
    I2 : in STD_LOGIC;
    ram_full_comb : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    rst_d2 : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    O3 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    O4 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    AR : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end fill_num_axis_data_fifowr_logic;

architecture STRUCTURE of fill_num_axis_data_fifowr_logic is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \c0/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \c1/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  E(0) <= \^e\(0);
\gwss.wsts\: entity work.fill_num_axis_data_fifowr_status_flags_ss
    port map (
      E(0) => \^e\(0),
      I1 => I1,
      I2 => I2,
      comp0 => comp0,
      comp1 => comp1,
      p_1_out => p_1_out,
      ram_full_comb => ram_full_comb,
      rst_d2 => rst_d2,
      s_axis_aclk => s_axis_aclk,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      v1_reg(3 downto 0) => \c0/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \c1/v1_reg\(3 downto 0)
    );
wpntr: entity work.fill_num_axis_data_fifowr_bin_cntr
    port map (
      AR(0) => AR(0),
      E(0) => \^e\(0),
      O1(8 downto 0) => O1(8 downto 0),
      O3(7 downto 0) => O3(7 downto 0),
      O4(7 downto 0) => O4(7 downto 0),
      Q(0) => Q(0),
      s_axis_aclk => s_axis_aclk,
      v1_reg(3 downto 0) => v1_reg(3 downto 0),
      v1_reg_0(3 downto 0) => v1_reg_0(3 downto 0),
      v1_reg_1(3 downto 0) => \c0/v1_reg\(3 downto 0),
      v1_reg_2(3 downto 0) => \c1/v1_reg\(3 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifoblk_mem_gen_top is
  port (
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    ram_rd_en_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end fill_num_axis_data_fifoblk_mem_gen_top;

architecture STRUCTURE of fill_num_axis_data_fifoblk_mem_gen_top is
begin
\valid.cstr\: entity work.fill_num_axis_data_fifoblk_mem_gen_generic_cstr
    port map (
      D(23 downto 0) => D(23 downto 0),
      E(0) => E(0),
      O3(8 downto 0) => O3(8 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      ram_rd_en_i => ram_rd_en_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifoblk_mem_gen_v8_1_synth is
  port (
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    ram_rd_en_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
end fill_num_axis_data_fifoblk_mem_gen_v8_1_synth;

architecture STRUCTURE of fill_num_axis_data_fifoblk_mem_gen_v8_1_synth is
begin
\gnativebmg.native_blk_mem_gen\: entity work.fill_num_axis_data_fifoblk_mem_gen_top
    port map (
      D(23 downto 0) => D(23 downto 0),
      E(0) => E(0),
      O3(8 downto 0) => O3(8 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      ram_rd_en_i => ram_rd_en_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity \fill_num_axis_data_fifoblk_mem_gen_v8_1__parameterized0\ is
  port (
    D : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    ram_rd_en_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \fill_num_axis_data_fifoblk_mem_gen_v8_1__parameterized0\ : entity is "blk_mem_gen_v8_1";
end \fill_num_axis_data_fifoblk_mem_gen_v8_1__parameterized0\;

architecture STRUCTURE of \fill_num_axis_data_fifoblk_mem_gen_v8_1__parameterized0\ is
begin
inst_blk_mem_gen: entity work.fill_num_axis_data_fifoblk_mem_gen_v8_1_synth
    port map (
      D(23 downto 0) => D(23 downto 0),
      E(0) => E(0),
      O3(8 downto 0) => O3(8 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      ram_rd_en_i => ram_rd_en_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0)
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifomemory is
  port (
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_aclk : in STD_LOGIC;
    ram_rd_en_i : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    O3 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    I1 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end fill_num_axis_data_fifomemory;

architecture STRUCTURE of fill_num_axis_data_fifomemory is
  signal \<const0>\ : STD_LOGIC;
  signal doutb : STD_LOGIC_VECTOR ( 23 downto 0 );
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\gbm.gbmg.gbmga.ngecc.bmg\: entity work.\fill_num_axis_data_fifoblk_mem_gen_v8_1__parameterized0\
    port map (
      D(23 downto 0) => doutb(23 downto 0),
      E(0) => E(0),
      O3(8 downto 0) => O3(8 downto 0),
      Q(8 downto 0) => Q(8 downto 0),
      ram_rd_en_i => ram_rd_en_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0)
    );
\goreg_bm.dout_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(0),
      Q => m_axis_tdata(0),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(10),
      Q => m_axis_tdata(10),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(11),
      Q => m_axis_tdata(11),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(12),
      Q => m_axis_tdata(12),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(13),
      Q => m_axis_tdata(13),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(14),
      Q => m_axis_tdata(14),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(15),
      Q => m_axis_tdata(15),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(16),
      Q => m_axis_tdata(16),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(17),
      Q => m_axis_tdata(17),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(18),
      Q => m_axis_tdata(18),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(19),
      Q => m_axis_tdata(19),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(1),
      Q => m_axis_tdata(1),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(20),
      Q => m_axis_tdata(20),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(21),
      Q => m_axis_tdata(21),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(22),
      Q => m_axis_tdata(22),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(23),
      Q => m_axis_tdata(23),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(2),
      Q => m_axis_tdata(2),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(3),
      Q => m_axis_tdata(3),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(4),
      Q => m_axis_tdata(4),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(5),
      Q => m_axis_tdata(5),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(6),
      Q => m_axis_tdata(6),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(7),
      Q => m_axis_tdata(7),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(8),
      Q => m_axis_tdata(8),
      R => \<const0>\
    );
\goreg_bm.dout_i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => s_axis_aclk,
      CE => I1(0),
      D => doutb(9),
      Q => m_axis_tdata(9),
      R => \<const0>\
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifofifo_generator_ramfifo is
  port (
    axis_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    I1 : in STD_LOGIC
  );
end fill_num_axis_data_fifofifo_generator_ramfifo;

architecture STRUCTURE of fill_num_axis_data_fifofifo_generator_ramfifo is
  signal RST : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \grss.rsts/c1/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \grss.rsts/c2/v1_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gwss.wsts/comp0\ : STD_LOGIC;
  signal \gwss.wsts/comp1\ : STD_LOGIC;
  signal \gwss.wsts/ram_full_comb\ : STD_LOGIC;
  signal \n_0_gntv_or_sync_fifo.gl0.rd\ : STD_LOGIC;
  signal \n_28_gntv_or_sync_fifo.gl0.rd\ : STD_LOGIC;
  signal \n_31_gntv_or_sync_fifo.gl0.rd\ : STD_LOGIC;
  signal n_4_rstblk : STD_LOGIC;
  signal p_19_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal p_1_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_8_out : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ram_rd_en_i : STD_LOGIC;
  signal rd_pntr_plus1 : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal rst_d2 : STD_LOGIC;
  signal rst_full_gen_i : STD_LOGIC;
  signal wr_pntr_plus1 : STD_LOGIC_VECTOR ( 8 to 8 );
begin
\gntv_or_sync_fifo.gl0.rd\: entity work.fill_num_axis_data_fiford_logic
    port map (
      E(0) => \n_31_gntv_or_sync_fifo.gl0.rd\,
      I1(0) => p_8_out(8),
      I2(0) => wr_pntr_plus1(8),
      O1 => \n_0_gntv_or_sync_fifo.gl0.rd\,
      O2(9 downto 0) => axis_data_count(9 downto 0),
      O3(8 downto 0) => p_19_out(8 downto 0),
      O4(7 downto 0) => rd_pntr_plus1(7 downto 0),
      O5 => \n_28_gntv_or_sync_fifo.gl0.rd\,
      Q(1) => clear,
      Q(0) => n_4_rstblk,
      comp0 => \gwss.wsts/comp0\,
      comp1 => \gwss.wsts/comp1\,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      p_1_out => p_1_out,
      ram_full_comb => \gwss.wsts/ram_full_comb\,
      ram_rd_en_i => ram_rd_en_i,
      rst_full_gen_i => rst_full_gen_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_tvalid => s_axis_tvalid,
      v1_reg(3 downto 0) => \grss.rsts/c1/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \grss.rsts/c2/v1_reg\(3 downto 0)
    );
\gntv_or_sync_fifo.gl0.wr\: entity work.fill_num_axis_data_fifowr_logic
    port map (
      AR(0) => RST,
      E(0) => p_3_out,
      I1 => \n_0_gntv_or_sync_fifo.gl0.rd\,
      I2 => \n_28_gntv_or_sync_fifo.gl0.rd\,
      O1(8 downto 0) => p_8_out(8 downto 0),
      O3(7 downto 0) => p_19_out(7 downto 0),
      O4(7 downto 0) => rd_pntr_plus1(7 downto 0),
      Q(0) => wr_pntr_plus1(8),
      comp0 => \gwss.wsts/comp0\,
      comp1 => \gwss.wsts/comp1\,
      p_1_out => p_1_out,
      ram_full_comb => \gwss.wsts/ram_full_comb\,
      rst_d2 => rst_d2,
      s_axis_aclk => s_axis_aclk,
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid,
      v1_reg(3 downto 0) => \grss.rsts/c1/v1_reg\(3 downto 0),
      v1_reg_0(3 downto 0) => \grss.rsts/c2/v1_reg\(3 downto 0)
    );
\gntv_or_sync_fifo.mem\: entity work.fill_num_axis_data_fifomemory
    port map (
      E(0) => p_3_out,
      I1(0) => \n_31_gntv_or_sync_fifo.gl0.rd\,
      O3(8 downto 0) => p_19_out(8 downto 0),
      Q(8 downto 0) => p_8_out(8 downto 0),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      ram_rd_en_i => ram_rd_en_i,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0)
    );
rstblk: entity work.fill_num_axis_data_fiforeset_blk_ramfifo
    port map (
      AR(0) => RST,
      I1 => I1,
      Q(1) => clear,
      Q(0) => n_4_rstblk,
      rst_d2 => rst_d2,
      rst_full_gen_i => rst_full_gen_i,
      s_axis_aclk => s_axis_aclk
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifofifo_generator_top is
  port (
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    I1 : in STD_LOGIC
  );
end fill_num_axis_data_fifofifo_generator_top;

architecture STRUCTURE of fill_num_axis_data_fifofifo_generator_top is
begin
\grf.rf\: entity work.fill_num_axis_data_fifofifo_generator_ramfifo
    port map (
      I1 => I1,
      axis_data_count(9 downto 0) => axis_rd_data_count(9 downto 0),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifofifo_generator_v11_0_synth is
  port (
    axis_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    I1 : in STD_LOGIC
  );
end fill_num_axis_data_fifofifo_generator_v11_0_synth;

architecture STRUCTURE of fill_num_axis_data_fifofifo_generator_v11_0_synth is
begin
\gaxis_fifo.gaxisf.axisf\: entity work.fill_num_axis_data_fifofifo_generator_top
    port map (
      I1 => I1,
      axis_rd_data_count(9 downto 0) => axis_data_count(9 downto 0),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifofifo_generator_v11_0 is
  port (
    axis_data_count : out STD_LOGIC_VECTOR ( 9 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tready : out STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    I1 : in STD_LOGIC
  );
end fill_num_axis_data_fifofifo_generator_v11_0;

architecture STRUCTURE of fill_num_axis_data_fifofifo_generator_v11_0 is
begin
inst_fifo_gen: entity work.fill_num_axis_data_fifofifo_generator_v11_0_synth
    port map (
      I1 => I1,
      axis_data_count(9 downto 0) => axis_data_count(9 downto 0),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo is
  port (
    s_axis_aresetn : in STD_LOGIC;
    m_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_aclk : in STD_LOGIC;
    m_axis_aclken : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_FAMILY : string;
  attribute C_FAMILY of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is "kintex7";
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 24;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is "32'b00000000000000000000000000000011";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 512;
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute C_IS_ACLK_ASYNC : integer;
  attribute C_IS_ACLK_ASYNC of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 2;
  attribute C_ACLKEN_CONV_MODE : integer;
  attribute C_ACLKEN_CONV_MODE of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 2;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 4;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 5;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 6;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 7;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 2;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 4;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 16;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 32;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 64;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 2;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute P_TREADY_EXISTS : integer;
  attribute P_TREADY_EXISTS of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute P_TDATA_EXISTS : integer;
  attribute P_TDATA_EXISTS of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute P_TSTRB_EXISTS : integer;
  attribute P_TSTRB_EXISTS of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute P_TKEEP_EXISTS : integer;
  attribute P_TKEEP_EXISTS of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute P_TLAST_EXISTS : integer;
  attribute P_TLAST_EXISTS of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute P_TID_EXISTS : integer;
  attribute P_TID_EXISTS of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute P_TDEST_EXISTS : integer;
  attribute P_TDEST_EXISTS of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute P_TUSER_EXISTS : integer;
  attribute P_TUSER_EXISTS of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute P_AXIS_PAYLOAD_WIDTH : integer;
  attribute P_AXIS_PAYLOAD_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 24;
  attribute P_WR_PNTR_WIDTH : integer;
  attribute P_WR_PNTR_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 9;
  attribute P_FIFO_COUNT_WIDTH : integer;
  attribute P_FIFO_COUNT_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 10;
  attribute P_FIFO_TYPE : integer;
  attribute P_FIFO_TYPE of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute P_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute P_IMPLEMENTATION_TYPE_AXIS of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute P_MSGON_VAL : integer;
  attribute P_MSGON_VAL of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute P_APPLICATION_TYPE_AXIS : integer;
  attribute P_APPLICATION_TYPE_AXIS of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute LP_S_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_S_ACLKEN_CAN_TOGGLE of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute LP_M_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_M_ACLKEN_CAN_TOGGLE of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 0;
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 18;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 10;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 10;
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 18;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 10;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 10;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 10;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 4;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 32;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 64;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 1;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 4;
  attribute C_RD_PNTR_WIDTH_RACH : integer;
  attribute C_RD_PNTR_WIDTH_RACH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 4;
  attribute C_RD_PNTR_WIDTH_RDCH : integer;
  attribute C_RD_PNTR_WIDTH_RDCH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 10;
  attribute C_RD_PNTR_WIDTH_WACH : integer;
  attribute C_RD_PNTR_WIDTH_WACH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 4;
  attribute C_RD_PNTR_WIDTH_WDCH : integer;
  attribute C_RD_PNTR_WIDTH_WDCH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 10;
  attribute C_RD_PNTR_WIDTH_WRCH : integer;
  attribute C_RD_PNTR_WIDTH_WRCH of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 4;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo : entity is 9;
end fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo;

architecture STRUCTURE of fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo is
  signal \<const0>\ : STD_LOGIC;
  signal \^axis_data_count\ : STD_LOGIC_VECTOR ( 9 downto 0 );
begin
  axis_data_count(31) <= \<const0>\;
  axis_data_count(30) <= \<const0>\;
  axis_data_count(29) <= \<const0>\;
  axis_data_count(28) <= \<const0>\;
  axis_data_count(27) <= \<const0>\;
  axis_data_count(26) <= \<const0>\;
  axis_data_count(25) <= \<const0>\;
  axis_data_count(24) <= \<const0>\;
  axis_data_count(23) <= \<const0>\;
  axis_data_count(22) <= \<const0>\;
  axis_data_count(21) <= \<const0>\;
  axis_data_count(20) <= \<const0>\;
  axis_data_count(19) <= \<const0>\;
  axis_data_count(18) <= \<const0>\;
  axis_data_count(17) <= \<const0>\;
  axis_data_count(16) <= \<const0>\;
  axis_data_count(15) <= \<const0>\;
  axis_data_count(14) <= \<const0>\;
  axis_data_count(13) <= \<const0>\;
  axis_data_count(12) <= \<const0>\;
  axis_data_count(11) <= \<const0>\;
  axis_data_count(10) <= \<const0>\;
  axis_data_count(9 downto 0) <= \^axis_data_count\(9 downto 0);
  axis_rd_data_count(31) <= \<const0>\;
  axis_rd_data_count(30) <= \<const0>\;
  axis_rd_data_count(29) <= \<const0>\;
  axis_rd_data_count(28) <= \<const0>\;
  axis_rd_data_count(27) <= \<const0>\;
  axis_rd_data_count(26) <= \<const0>\;
  axis_rd_data_count(25) <= \<const0>\;
  axis_rd_data_count(24) <= \<const0>\;
  axis_rd_data_count(23) <= \<const0>\;
  axis_rd_data_count(22) <= \<const0>\;
  axis_rd_data_count(21) <= \<const0>\;
  axis_rd_data_count(20) <= \<const0>\;
  axis_rd_data_count(19) <= \<const0>\;
  axis_rd_data_count(18) <= \<const0>\;
  axis_rd_data_count(17) <= \<const0>\;
  axis_rd_data_count(16) <= \<const0>\;
  axis_rd_data_count(15) <= \<const0>\;
  axis_rd_data_count(14) <= \<const0>\;
  axis_rd_data_count(13) <= \<const0>\;
  axis_rd_data_count(12) <= \<const0>\;
  axis_rd_data_count(11) <= \<const0>\;
  axis_rd_data_count(10) <= \<const0>\;
  axis_rd_data_count(9 downto 0) <= \^axis_data_count\(9 downto 0);
  axis_wr_data_count(31) <= \<const0>\;
  axis_wr_data_count(30) <= \<const0>\;
  axis_wr_data_count(29) <= \<const0>\;
  axis_wr_data_count(28) <= \<const0>\;
  axis_wr_data_count(27) <= \<const0>\;
  axis_wr_data_count(26) <= \<const0>\;
  axis_wr_data_count(25) <= \<const0>\;
  axis_wr_data_count(24) <= \<const0>\;
  axis_wr_data_count(23) <= \<const0>\;
  axis_wr_data_count(22) <= \<const0>\;
  axis_wr_data_count(21) <= \<const0>\;
  axis_wr_data_count(20) <= \<const0>\;
  axis_wr_data_count(19) <= \<const0>\;
  axis_wr_data_count(18) <= \<const0>\;
  axis_wr_data_count(17) <= \<const0>\;
  axis_wr_data_count(16) <= \<const0>\;
  axis_wr_data_count(15) <= \<const0>\;
  axis_wr_data_count(14) <= \<const0>\;
  axis_wr_data_count(13) <= \<const0>\;
  axis_wr_data_count(12) <= \<const0>\;
  axis_wr_data_count(11) <= \<const0>\;
  axis_wr_data_count(10) <= \<const0>\;
  axis_wr_data_count(9 downto 0) <= \^axis_data_count\(9 downto 0);
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tkeep(2) <= \<const0>\;
  m_axis_tkeep(1) <= \<const0>\;
  m_axis_tkeep(0) <= \<const0>\;
  m_axis_tlast <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
\gen_fifo_generator.fifo_generator_inst\: entity work.fill_num_axis_data_fifofifo_generator_v11_0
    port map (
      I1 => s_axis_aresetn,
      axis_data_count(9 downto 0) => \^axis_data_count\(9 downto 0),
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE; use IEEE.STD_LOGIC_1164.ALL;
library UNISIM; use UNISIM.VCOMPONENTS.ALL; 
entity fill_num_axis_data_fifo is
  port (
    s_axis_aresetn : in STD_LOGIC;
    s_axis_aclk : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 23 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 23 downto 0 );
    axis_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_wr_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_rd_data_count : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of fill_num_axis_data_fifo : entity is true;
  attribute x_core_info : string;
  attribute x_core_info of fill_num_axis_data_fifo : entity is "axis_data_fifo_v1_1_axis_data_fifo,Vivado 2013.4";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fill_num_axis_data_fifo : entity is "fill_num_axis_data_fifo,axis_data_fifo_v1_1_axis_data_fifo,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of fill_num_axis_data_fifo : entity is "fill_num_axis_data_fifo,axis_data_fifo_v1_1_axis_data_fifo,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_data_fifo,x_ipVersion=1.1,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_FAMILY=kintex7,C_AXIS_TDATA_WIDTH=24,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00000011,C_FIFO_DEPTH=512,C_FIFO_MODE=1,C_IS_ACLK_ASYNC=0,C_SYNCHRONIZER_STAGE=2,C_ACLKEN_CONV_MODE=0}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fill_num_axis_data_fifo : entity is "yes";
end fill_num_axis_data_fifo;

architecture STRUCTURE of fill_num_axis_data_fifo is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal NLW_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_ACLKEN_CONV_MODE : integer;
  attribute C_ACLKEN_CONV_MODE of inst : label is 0;
  attribute C_AXIS_SIGNAL_SET : string;
  attribute C_AXIS_SIGNAL_SET of inst : label is "32'b00000000000000000000000000000011";
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 24;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 4;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of inst : label is 10;
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of inst : label is 18;
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of inst : label is 18;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "kintex7";
  attribute C_FIFO_DEPTH : integer;
  attribute C_FIFO_DEPTH of inst : label is 512;
  attribute C_FIFO_MODE : integer;
  attribute C_FIFO_MODE of inst : label is 1;
  attribute C_IS_ACLK_ASYNC : integer;
  attribute C_IS_ACLK_ASYNC of inst : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of inst : label is 10;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of inst : label is 10;
  attribute C_RD_PNTR_WIDTH_RACH : integer;
  attribute C_RD_PNTR_WIDTH_RACH of inst : label is 4;
  attribute C_RD_PNTR_WIDTH_RDCH : integer;
  attribute C_RD_PNTR_WIDTH_RDCH of inst : label is 10;
  attribute C_RD_PNTR_WIDTH_WACH : integer;
  attribute C_RD_PNTR_WIDTH_WACH of inst : label is 4;
  attribute C_RD_PNTR_WIDTH_WDCH : integer;
  attribute C_RD_PNTR_WIDTH_WDCH of inst : label is 10;
  attribute C_RD_PNTR_WIDTH_WRCH : integer;
  attribute C_RD_PNTR_WIDTH_WRCH of inst : label is 4;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of inst : label is 2;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of inst : label is 10;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of inst : label is 10;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of inst : label is 9;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of inst : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of inst : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of inst : label is 4;
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute LP_M_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_M_ACLKEN_CAN_TOGGLE of inst : label is 0;
  attribute LP_S_ACLKEN_CAN_TOGGLE : integer;
  attribute LP_S_ACLKEN_CAN_TOGGLE of inst : label is 0;
  attribute P_APPLICATION_TYPE_AXIS : integer;
  attribute P_APPLICATION_TYPE_AXIS of inst : label is 0;
  attribute P_AXIS_PAYLOAD_WIDTH : integer;
  attribute P_AXIS_PAYLOAD_WIDTH of inst : label is 24;
  attribute P_COMMON_CLOCK : integer;
  attribute P_COMMON_CLOCK of inst : label is 1;
  attribute P_FIFO_COUNT_WIDTH : integer;
  attribute P_FIFO_COUNT_WIDTH of inst : label is 10;
  attribute P_FIFO_TYPE : integer;
  attribute P_FIFO_TYPE of inst : label is 1;
  attribute P_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute P_IMPLEMENTATION_TYPE_AXIS of inst : label is 1;
  attribute P_MSGON_VAL : integer;
  attribute P_MSGON_VAL of inst : label is 1;
  attribute P_TDATA_EXISTS : integer;
  attribute P_TDATA_EXISTS of inst : label is 1;
  attribute P_TDEST_EXISTS : integer;
  attribute P_TDEST_EXISTS of inst : label is 0;
  attribute P_TID_EXISTS : integer;
  attribute P_TID_EXISTS of inst : label is 0;
  attribute P_TKEEP_EXISTS : integer;
  attribute P_TKEEP_EXISTS of inst : label is 0;
  attribute P_TLAST_EXISTS : integer;
  attribute P_TLAST_EXISTS of inst : label is 0;
  attribute P_TREADY_EXISTS : integer;
  attribute P_TREADY_EXISTS of inst : label is 1;
  attribute P_TSTRB_EXISTS : integer;
  attribute P_TSTRB_EXISTS of inst : label is 0;
  attribute P_TUSER_EXISTS : integer;
  attribute P_TUSER_EXISTS of inst : label is 0;
  attribute P_WR_PNTR_WIDTH : integer;
  attribute P_WR_PNTR_WIDTH of inst : label is 9;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of inst : label is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
begin
GND: unisim.vcomponents.GND
    port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
    port map (
      P => \<const1>\
    );
inst: entity work.fill_num_axis_data_fifoaxis_data_fifo_v1_1_axis_data_fifo
    port map (
      axis_data_count(31 downto 0) => axis_data_count(31 downto 0),
      axis_rd_data_count(31 downto 0) => axis_rd_data_count(31 downto 0),
      axis_wr_data_count(31 downto 0) => axis_wr_data_count(31 downto 0),
      m_axis_aclk => \<const0>\,
      m_axis_aclken => \<const1>\,
      m_axis_aresetn => \<const0>\,
      m_axis_tdata(23 downto 0) => m_axis_tdata(23 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(2 downto 0) => NLW_inst_m_axis_tkeep_UNCONNECTED(2 downto 0),
      m_axis_tlast => NLW_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => m_axis_tready,
      m_axis_tstrb(2 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(2 downto 0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_aclk => s_axis_aclk,
      s_axis_aclken => \<const1>\,
      s_axis_aresetn => s_axis_aresetn,
      s_axis_tdata(23 downto 0) => s_axis_tdata(23 downto 0),
      s_axis_tdest(0) => \<const0>\,
      s_axis_tid(0) => \<const0>\,
      s_axis_tkeep(2) => \<const1>\,
      s_axis_tkeep(1) => \<const1>\,
      s_axis_tkeep(0) => \<const1>\,
      s_axis_tlast => \<const1>\,
      s_axis_tready => s_axis_tready,
      s_axis_tstrb(2) => \<const1>\,
      s_axis_tstrb(1) => \<const1>\,
      s_axis_tstrb(0) => \<const1>\,
      s_axis_tuser(0) => \<const0>\,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
