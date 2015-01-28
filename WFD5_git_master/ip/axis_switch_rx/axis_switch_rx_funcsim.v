// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Fri Jul 18 14:11:31 2014
// Host        : PC210 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/axis_switch_rx/axis_switch_rx_funcsim.v
// Design      : axis_switch_rx
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* x_core_info = "axis_switch_v1_1_axis_switch,Vivado 2013.4" *) (* CHECK_LICENSE_TYPE = "axis_switch_rx,axis_switch_v1_1_axis_switch,{}" *) (* core_generation_info = "axis_switch_rx,axis_switch_v1_1_axis_switch,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_switch,x_ipVersion=1.1,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_FAMILY=kintex7,C_NUM_SI_SLOTS=2,C_LOG_SI_SLOTS=1,C_NUM_MI_SLOTS=1,C_AXIS_TDATA_WIDTH=32,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b00010011,C_ARB_ON_MAX_XFERS=1024,C_ARB_ON_NUM_CYCLES=1,C_ARB_ON_TLAST=0,C_INCLUDE_ARBITER=1,C_ARB_ALGORITHM=1,C_OUTPUT_REG=0,C_DECODER_REG=0,C_M_AXIS_CONNECTIVITY_ARRAY=11,C_M_AXIS_BASETDEST_ARRAY=1,C_M_AXIS_HIGHTDEST_ARRAY=0}" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
(* NotValidForBitStream *)
module axis_switch_rx
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    s_req_suppress,
    s_decode_err);
  input aclk;
  input aresetn;
  input [1:0]s_axis_tvalid;
  output [1:0]s_axis_tready;
  input [63:0]s_axis_tdata;
  input [1:0]s_axis_tlast;
  output [0:0]m_axis_tvalid;
  input [0:0]m_axis_tready;
  output [31:0]m_axis_tdata;
  output [0:0]m_axis_tlast;
  input [1:0]s_req_suppress;
  output [1:0]s_decode_err;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire [31:0]m_axis_tdata;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;
  wire [63:0]s_axis_tdata;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_req_suppress;

  assign s_decode_err[1] = \<const0> ;
  assign s_decode_err[0] = \<const0> ;
GND GND
       (.G(\<const0> ));
axis_switch_rxaxis_switch_v1_1_axis_switch inst
       (.O1(m_axis_tvalid),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .s_req_suppress(s_req_suppress));
endmodule

module axis_switch_rxaxis_switch_v1_1_arb_rr
   (arb_busy_r,
    O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    O7,
    arb_req_i,
    m_axis_tlast,
    m_axis_tdata,
    areset_r,
    arb_busy_ns,
    aclk,
    s_axis_tvalid,
    busy_r,
    arb_sel_r0,
    s_req_suppress,
    I1,
    I2,
    s_axis_tlast,
    s_axis_tdata);
  output arb_busy_r;
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output [0:0]arb_req_i;
  output [0:0]m_axis_tlast;
  output [31:0]m_axis_tdata;
  input areset_r;
  input arb_busy_ns;
  input aclk;
  input [1:0]s_axis_tvalid;
  input [1:0]busy_r;
  input arb_sel_r0;
  input [1:0]s_req_suppress;
  input I1;
  input I2;
  input [1:0]s_axis_tlast;
  input [63:0]s_axis_tdata;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire [0:0]arb_req_i;
  wire arb_sel_r0;
  wire areset_r;
  wire [1:0]busy_r;
  wire [31:0]m_axis_tdata;
  wire [0:0]m_axis_tlast;
  wire \n_0_arb_gnt_r[0]_i_1 ;
  wire \n_0_arb_gnt_r[1]_i_1 ;
  wire \n_0_arb_sel_r[0]_i_1 ;
  wire [63:0]s_axis_tdata;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_req_suppress;
  wire sel_i;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'hFFFF0010)) 
     arb_busy_r_i_2
       (.I0(O4),
        .I1(s_req_suppress[1]),
        .I2(s_axis_tvalid[1]),
        .I3(I1),
        .I4(arb_req_i),
        .O(O7));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     arb_busy_r_i_3
       (.I0(s_req_suppress[0]),
        .I1(s_axis_tvalid[0]),
        .I2(O6),
        .I3(I2),
        .O(arb_req_i));
FDRE arb_busy_r_reg
       (.C(aclk),
        .CE(\<const1> ),
        .D(arb_busy_ns),
        .Q(arb_busy_r),
        .R(areset_r));
LUT3 #(
    .INIT(8'h10)) 
     \arb_gnt_r[0]_i_1 
       (.I0(areset_r),
        .I1(sel_i),
        .I2(arb_sel_r0),
        .O(\n_0_arb_gnt_r[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT3 #(
    .INIT(8'h40)) 
     \arb_gnt_r[1]_i_1 
       (.I0(areset_r),
        .I1(sel_i),
        .I2(arb_sel_r0),
        .O(\n_0_arb_gnt_r[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00000010)) 
     \arb_gnt_r[1]_i_2 
       (.I0(I1),
        .I1(O4),
        .I2(s_axis_tvalid[1]),
        .I3(s_req_suppress[1]),
        .I4(arb_req_i),
        .O(sel_i));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'h35)) 
     \arb_gnt_r[1]_i_5 
       (.I0(s_axis_tvalid[0]),
        .I1(s_axis_tvalid[1]),
        .I2(O1),
        .O(O2));
FDRE \arb_gnt_r_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_arb_gnt_r[0]_i_1 ),
        .Q(O6),
        .R(\<const0> ));
FDRE \arb_gnt_r_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_arb_gnt_r[1]_i_1 ),
        .Q(O4),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'h00E2)) 
     \arb_sel_r[0]_i_1 
       (.I0(O1),
        .I1(arb_sel_r0),
        .I2(sel_i),
        .I3(areset_r),
        .O(\n_0_arb_sel_r[0]_i_1 ));
FDRE \arb_sel_r_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_arb_sel_r[0]_i_1 ),
        .Q(O1),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \busy_r[0]_i_2 
       (.I0(O6),
        .I1(busy_r[0]),
        .O(O5));
LUT2 #(
    .INIT(4'hE)) 
     \busy_r[1]_i_2 
       (.I0(O4),
        .I1(busy_r[1]),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[0]_INST_0 
       (.I0(s_axis_tdata[32]),
        .I1(O1),
        .I2(s_axis_tdata[0]),
        .O(m_axis_tdata[0]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[10]_INST_0 
       (.I0(s_axis_tdata[42]),
        .I1(O1),
        .I2(s_axis_tdata[10]),
        .O(m_axis_tdata[10]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[11]_INST_0 
       (.I0(s_axis_tdata[43]),
        .I1(O1),
        .I2(s_axis_tdata[11]),
        .O(m_axis_tdata[11]));
(* SOFT_HLUTNM = "soft_lutpair14" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[12]_INST_0 
       (.I0(s_axis_tdata[44]),
        .I1(O1),
        .I2(s_axis_tdata[12]),
        .O(m_axis_tdata[12]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[13]_INST_0 
       (.I0(s_axis_tdata[45]),
        .I1(O1),
        .I2(s_axis_tdata[13]),
        .O(m_axis_tdata[13]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[14]_INST_0 
       (.I0(s_axis_tdata[46]),
        .I1(O1),
        .I2(s_axis_tdata[14]),
        .O(m_axis_tdata[14]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[15]_INST_0 
       (.I0(s_axis_tdata[47]),
        .I1(O1),
        .I2(s_axis_tdata[15]),
        .O(m_axis_tdata[15]));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[16]_INST_0 
       (.I0(s_axis_tdata[48]),
        .I1(O1),
        .I2(s_axis_tdata[16]),
        .O(m_axis_tdata[16]));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[17]_INST_0 
       (.I0(s_axis_tdata[49]),
        .I1(O1),
        .I2(s_axis_tdata[17]),
        .O(m_axis_tdata[17]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[18]_INST_0 
       (.I0(s_axis_tdata[50]),
        .I1(O1),
        .I2(s_axis_tdata[18]),
        .O(m_axis_tdata[18]));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[19]_INST_0 
       (.I0(s_axis_tdata[51]),
        .I1(O1),
        .I2(s_axis_tdata[19]),
        .O(m_axis_tdata[19]));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[1]_INST_0 
       (.I0(s_axis_tdata[33]),
        .I1(O1),
        .I2(s_axis_tdata[1]),
        .O(m_axis_tdata[1]));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[20]_INST_0 
       (.I0(s_axis_tdata[52]),
        .I1(O1),
        .I2(s_axis_tdata[20]),
        .O(m_axis_tdata[20]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[21]_INST_0 
       (.I0(s_axis_tdata[53]),
        .I1(O1),
        .I2(s_axis_tdata[21]),
        .O(m_axis_tdata[21]));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[22]_INST_0 
       (.I0(s_axis_tdata[54]),
        .I1(O1),
        .I2(s_axis_tdata[22]),
        .O(m_axis_tdata[22]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[23]_INST_0 
       (.I0(s_axis_tdata[55]),
        .I1(O1),
        .I2(s_axis_tdata[23]),
        .O(m_axis_tdata[23]));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[24]_INST_0 
       (.I0(s_axis_tdata[56]),
        .I1(O1),
        .I2(s_axis_tdata[24]),
        .O(m_axis_tdata[24]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[25]_INST_0 
       (.I0(s_axis_tdata[57]),
        .I1(O1),
        .I2(s_axis_tdata[25]),
        .O(m_axis_tdata[25]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[26]_INST_0 
       (.I0(s_axis_tdata[58]),
        .I1(O1),
        .I2(s_axis_tdata[26]),
        .O(m_axis_tdata[26]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[27]_INST_0 
       (.I0(s_axis_tdata[59]),
        .I1(O1),
        .I2(s_axis_tdata[27]),
        .O(m_axis_tdata[27]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[28]_INST_0 
       (.I0(s_axis_tdata[60]),
        .I1(O1),
        .I2(s_axis_tdata[28]),
        .O(m_axis_tdata[28]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[29]_INST_0 
       (.I0(s_axis_tdata[61]),
        .I1(O1),
        .I2(s_axis_tdata[29]),
        .O(m_axis_tdata[29]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[2]_INST_0 
       (.I0(s_axis_tdata[34]),
        .I1(O1),
        .I2(s_axis_tdata[2]),
        .O(m_axis_tdata[2]));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[30]_INST_0 
       (.I0(s_axis_tdata[62]),
        .I1(O1),
        .I2(s_axis_tdata[30]),
        .O(m_axis_tdata[30]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[31]_INST_0 
       (.I0(s_axis_tdata[63]),
        .I1(O1),
        .I2(s_axis_tdata[31]),
        .O(m_axis_tdata[31]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[3]_INST_0 
       (.I0(s_axis_tdata[35]),
        .I1(O1),
        .I2(s_axis_tdata[3]),
        .O(m_axis_tdata[3]));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[4]_INST_0 
       (.I0(s_axis_tdata[36]),
        .I1(O1),
        .I2(s_axis_tdata[4]),
        .O(m_axis_tdata[4]));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[5]_INST_0 
       (.I0(s_axis_tdata[37]),
        .I1(O1),
        .I2(s_axis_tdata[5]),
        .O(m_axis_tdata[5]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[6]_INST_0 
       (.I0(s_axis_tdata[38]),
        .I1(O1),
        .I2(s_axis_tdata[6]),
        .O(m_axis_tdata[6]));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[7]_INST_0 
       (.I0(s_axis_tdata[39]),
        .I1(O1),
        .I2(s_axis_tdata[7]),
        .O(m_axis_tdata[7]));
(* SOFT_HLUTNM = "soft_lutpair13" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[8]_INST_0 
       (.I0(s_axis_tdata[40]),
        .I1(O1),
        .I2(s_axis_tdata[8]),
        .O(m_axis_tdata[8]));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tdata[9]_INST_0 
       (.I0(s_axis_tdata[41]),
        .I1(O1),
        .I2(s_axis_tdata[9]),
        .O(m_axis_tdata[9]));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hB8)) 
     \m_axis_tlast[0]_INST_0 
       (.I0(s_axis_tlast[1]),
        .I1(O1),
        .I2(s_axis_tlast[0]),
        .O(m_axis_tlast));
endmodule

module axis_switch_rxaxis_switch_v1_1_axis_switch
   (O1,
    s_axis_tready,
    m_axis_tlast,
    m_axis_tdata,
    m_axis_tready,
    s_axis_tvalid,
    aclk,
    s_req_suppress,
    s_axis_tlast,
    s_axis_tdata,
    aresetn);
  output O1;
  output [1:0]s_axis_tready;
  output [0:0]m_axis_tlast;
  output [31:0]m_axis_tdata;
  input [0:0]m_axis_tready;
  input [1:0]s_axis_tvalid;
  input aclk;
  input [1:0]s_req_suppress;
  input [1:0]s_axis_tlast;
  input [63:0]s_axis_tdata;
  input aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire O1;
  wire aclk;
  wire arb_sel_i;
  wire areset_r;
  wire aresetn;
  wire busy_ns;
  wire busy_ns_0;
  wire [1:0]busy_r;
  wire \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_ns ;
  wire \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_r ;
  wire [0:0]\gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_req_i ;
  wire \gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_sel_r0 ;
  wire [31:0]m_axis_tdata;
  wire [0:0]m_axis_tlast;
  wire [0:0]m_axis_tready;
  wire n_0_areset_r_i_1;
  wire \n_0_gen_decoder[0].axisc_decoder_0 ;
  wire \n_0_gen_decoder[1].axisc_decoder_0 ;
  wire \n_1_gen_decoder[1].axisc_decoder_0 ;
  wire \n_2_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ;
  wire \n_3_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ;
  wire \n_4_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ;
  wire \n_5_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ;
  wire \n_6_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ;
  wire \n_7_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ;
  wire [63:0]s_axis_tdata;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tready;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_req_suppress;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT1 #(
    .INIT(2'h1)) 
     areset_r_i_1
       (.I0(aresetn),
        .O(n_0_areset_r_i_1));
FDRE areset_r_reg
       (.C(aclk),
        .CE(\<const1> ),
        .D(n_0_areset_r_i_1),
        .Q(areset_r),
        .R(\<const0> ));
axis_switch_rxaxis_switch_v1_1_axisc_decoder_0 \gen_decoder[0].axisc_decoder_0 
       (.O1(\n_0_gen_decoder[0].axisc_decoder_0 ),
        .aclk(aclk),
        .areset_r(areset_r),
        .busy_ns(busy_ns));
axis_switch_rxaxis_switch_v1_1_axisc_decoder \gen_decoder[1].axisc_decoder_0 
       (.I1(\n_4_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .O1(\n_0_gen_decoder[1].axisc_decoder_0 ),
        .O2(\n_1_gen_decoder[1].axisc_decoder_0 ),
        .aclk(aclk),
        .areset_r(areset_r),
        .busy_ns(busy_ns_0),
        .s_axis_tvalid(s_axis_tvalid[1]),
        .s_req_suppress(s_req_suppress[1]));
axis_switch_rxaxis_switch_v1_1_axis_switch_arbiter \gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter 
       (.I1(\n_0_gen_decoder[1].axisc_decoder_0 ),
        .I2(\n_0_gen_decoder[0].axisc_decoder_0 ),
        .O1(\n_2_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .O2(\n_3_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .O3(\n_4_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .O4(\n_5_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .O5(\n_6_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .O6(\n_7_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .aclk(aclk),
        .arb_busy_ns(\gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_ns ),
        .arb_busy_r(\gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_r ),
        .arb_req_i(\gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_req_i ),
        .arb_sel_i(arb_sel_i),
        .arb_sel_r0(\gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_sel_r0 ),
        .areset_r(areset_r),
        .busy_r(busy_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .s_req_suppress(s_req_suppress));
axis_switch_rxaxis_switch_v1_1_axisc_transfer_mux \gen_transfer_mux[0].axisc_transfer_mux_0 
       (.I1(\n_0_gen_decoder[1].axisc_decoder_0 ),
        .I2(\n_4_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .I3(\n_0_gen_decoder[0].axisc_decoder_0 ),
        .I4(\n_6_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .I5(\n_2_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .I6(\n_1_gen_decoder[1].axisc_decoder_0 ),
        .I7(\n_7_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .I8(\n_3_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .I9(\n_5_gen_int_arbiter.gen_arbiter.axis_switch_v1_1_axis_switch_arbiter ),
        .O1(O1),
        .aclk(aclk),
        .arb_busy_ns(\gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_ns ),
        .arb_busy_r(\gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_busy_r ),
        .arb_req_i(\gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_req_i ),
        .arb_sel_i(arb_sel_i),
        .arb_sel_r0(\gen_mi_arb[0].gen_default_arb.arb_rr_0/arb_sel_r0 ),
        .areset_r(areset_r),
        .busy_ns(busy_ns_0),
        .busy_ns_0(busy_ns),
        .busy_r(busy_r),
        .m_axis_tready(m_axis_tready),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module axis_switch_rxaxis_switch_v1_1_axis_switch_arbiter
   (arb_busy_r,
    arb_sel_i,
    O1,
    O2,
    O3,
    O4,
    O5,
    O6,
    arb_req_i,
    m_axis_tlast,
    m_axis_tdata,
    areset_r,
    arb_busy_ns,
    aclk,
    s_axis_tvalid,
    busy_r,
    arb_sel_r0,
    s_req_suppress,
    I1,
    I2,
    s_axis_tlast,
    s_axis_tdata);
  output arb_busy_r;
  output arb_sel_i;
  output O1;
  output O2;
  output O3;
  output O4;
  output O5;
  output O6;
  output [0:0]arb_req_i;
  output [0:0]m_axis_tlast;
  output [31:0]m_axis_tdata;
  input areset_r;
  input arb_busy_ns;
  input aclk;
  input [1:0]s_axis_tvalid;
  input [1:0]busy_r;
  input arb_sel_r0;
  input [1:0]s_req_suppress;
  input I1;
  input I2;
  input [1:0]s_axis_tlast;
  input [63:0]s_axis_tdata;

  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire [0:0]arb_req_i;
  wire arb_sel_i;
  wire arb_sel_r0;
  wire areset_r;
  wire [1:0]busy_r;
  wire [31:0]m_axis_tdata;
  wire [0:0]m_axis_tlast;
  wire [63:0]s_axis_tdata;
  wire [1:0]s_axis_tlast;
  wire [1:0]s_axis_tvalid;
  wire [1:0]s_req_suppress;

axis_switch_rxaxis_switch_v1_1_arb_rr \gen_mi_arb[0].gen_default_arb.arb_rr_0 
       (.I1(I1),
        .I2(I2),
        .O1(arb_sel_i),
        .O2(O1),
        .O3(O2),
        .O4(O3),
        .O5(O4),
        .O6(O5),
        .O7(O6),
        .aclk(aclk),
        .arb_busy_ns(arb_busy_ns),
        .arb_busy_r(arb_busy_r),
        .arb_req_i(arb_req_i),
        .arb_sel_r0(arb_sel_r0),
        .areset_r(areset_r),
        .busy_r(busy_r),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tlast(m_axis_tlast),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tlast(s_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid),
        .s_req_suppress(s_req_suppress));
endmodule

module axis_switch_rxaxis_switch_v1_1_axisc_arb_responder
   (busy_ns,
    O1,
    busy_ns_0,
    arb_sel_r0,
    O2,
    O3,
    s_axis_tready,
    arb_busy_ns,
    areset_r,
    aclk,
    m_axis_tready,
    I1,
    I2,
    I3,
    I4,
    I5,
    arb_req_i,
    I6,
    arb_sel_i,
    s_axis_tvalid,
    arb_busy_r,
    I7,
    I8,
    I9);
  output busy_ns;
  output O1;
  output busy_ns_0;
  output arb_sel_r0;
  output O2;
  output O3;
  output [1:0]s_axis_tready;
  output arb_busy_ns;
  input areset_r;
  input aclk;
  input [0:0]m_axis_tready;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input [0:0]arb_req_i;
  input I6;
  input arb_sel_i;
  input [1:0]s_axis_tvalid;
  input arb_busy_r;
  input I7;
  input I8;
  input I9;

  wire \<const0> ;
  wire \<const1> ;
  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire O2;
  wire O3;
  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire [0:0]arb_req_i;
  wire arb_sel_i;
  wire arb_sel_r0;
  wire areset_r;
  wire busy_ns;
  wire busy_ns_0;
  wire [9:0]\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 ;
  wire [0:0]m_axis_tready;
  wire \n_0_arb_gnt_r[1]_i_4 ;
  wire \n_0_arb_gnt_r[1]_i_6 ;
  wire \n_0_busy_r[0]_i_1__1 ;
  wire \n_0_busy_r[1]_i_1 ;
  wire \n_0_busy_r[1]_i_3 ;
  wire \n_0_busy_r[1]_i_4 ;
  wire \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[6]_i_2 ;
  wire \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ;
  wire \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4 ;
  wire \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1 ;
  wire \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_3 ;
  wire \n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ;
  wire \n_0_gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1 ;
  wire \n_0_m_axis_tvalid[0]_INST_0_i_1 ;
  wire [9:0]p_0_in;
  wire p_1_in;
  wire [1:0]s_axis_tready;
  wire [1:0]s_axis_tvalid;
  wire timeout_cnt;
  wire timeout_done_ns;
  wire timeout_done_r;
  wire xfer_cnt0;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
LUT6 #(
    .INIT(64'hAABABABABABABABA)) 
     arb_busy_r_i_1
       (.I0(I7),
        .I1(timeout_done_r),
        .I2(arb_busy_r),
        .I3(O1),
        .I4(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .I5(m_axis_tready),
        .O(arb_busy_ns));
LUT6 #(
    .INIT(64'hFB08FB08FB080000)) 
     \arb_gnt_r[1]_i_3 
       (.I0(\n_0_arb_gnt_r[1]_i_4 ),
        .I1(\n_0_m_axis_tvalid[0]_INST_0_i_1 ),
        .I2(I5),
        .I3(\n_0_arb_gnt_r[1]_i_6 ),
        .I4(arb_req_i),
        .I5(I6),
        .O(arb_sel_r0));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT4 #(
    .INIT(16'hFDDD)) 
     \arb_gnt_r[1]_i_4 
       (.I0(arb_busy_r),
        .I1(timeout_done_r),
        .I2(m_axis_tready),
        .I3(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .O(\n_0_arb_gnt_r[1]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair24" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \arb_gnt_r[1]_i_6 
       (.I0(timeout_done_r),
        .I1(arb_busy_r),
        .O(\n_0_arb_gnt_r[1]_i_6 ));
LUT6 #(
    .INIT(64'h000000007F7F7F00)) 
     \busy_r[0]_i_1 
       (.I0(O1),
        .I1(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .I2(m_axis_tready),
        .I3(I1),
        .I4(I2),
        .I5(timeout_done_r),
        .O(busy_ns));
LUT6 #(
    .INIT(64'h000000007F7F7F00)) 
     \busy_r[0]_i_1__0 
       (.I0(O1),
        .I1(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .I2(m_axis_tready),
        .I3(I3),
        .I4(I4),
        .I5(timeout_done_r),
        .O(busy_ns_0));
LUT6 #(
    .INIT(64'h0000000002A2A2A2)) 
     \busy_r[0]_i_1__1 
       (.I0(I9),
        .I1(\n_0_busy_r[1]_i_3 ),
        .I2(O1),
        .I3(m_axis_tready),
        .I4(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .I5(\n_0_busy_r[1]_i_4 ),
        .O(\n_0_busy_r[0]_i_1__1 ));
LUT6 #(
    .INIT(64'h0000000002A2A2A2)) 
     \busy_r[1]_i_1 
       (.I0(I8),
        .I1(\n_0_busy_r[1]_i_3 ),
        .I2(O1),
        .I3(m_axis_tready),
        .I4(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .I5(\n_0_busy_r[1]_i_4 ),
        .O(\n_0_busy_r[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \busy_r[1]_i_3 
       (.I0(O3),
        .I1(O2),
        .I2(timeout_cnt),
        .O(\n_0_busy_r[1]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \busy_r[1]_i_4 
       (.I0(timeout_done_r),
        .I1(areset_r),
        .O(\n_0_busy_r[1]_i_4 ));
FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_busy_r[0]_i_1__1 ),
        .Q(O2),
        .R(\<const0> ));
FDRE \busy_r_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_busy_r[1]_i_1 ),
        .Q(O3),
        .R(\<const0> ));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[0]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [0]),
        .O(p_0_in[0]));
LUT2 #(
    .INIT(4'h6)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[1]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [0]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [1]),
        .O(p_0_in[1]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT3 #(
    .INIT(8'h78)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[2]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [0]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [1]),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [2]),
        .O(p_0_in[2]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[3]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [2]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [1]),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [0]),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [3]),
        .O(p_0_in[3]));
(* SOFT_HLUTNM = "soft_lutpair22" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[4]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [1]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [0]),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [2]),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [3]),
        .I4(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [4]),
        .O(p_0_in[4]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[5]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [2]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [4]),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [0]),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [1]),
        .I4(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [3]),
        .I5(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [5]),
        .O(p_0_in[5]));
LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[6]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [4]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [2]),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [5]),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [3]),
        .I4(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[6]_i_2 ),
        .I5(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [6]),
        .O(p_0_in[6]));
(* SOFT_HLUTNM = "soft_lutpair26" *) 
   LUT2 #(
    .INIT(4'h8)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[6]_i_2 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [1]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [0]),
        .O(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[6]_i_2 ));
LUT3 #(
    .INIT(8'h78)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[7]_i_1 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [6]),
        .I1(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4 ),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [7]),
        .O(p_0_in[7]));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h7F80)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[8]_i_1 
       (.I0(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4 ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [6]),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [7]),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [8]),
        .O(p_0_in[8]));
LUT5 #(
    .INIT(32'hFFFFFF80)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 
       (.I0(m_axis_tready),
        .I1(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .I2(O1),
        .I3(areset_r),
        .I4(timeout_done_r),
        .O(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ));
LUT2 #(
    .INIT(4'h8)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_2 
       (.I0(m_axis_tready),
        .I1(O1),
        .O(xfer_cnt0));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT5 #(
    .INIT(32'h7FFF8000)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_3 
       (.I0(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4 ),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [8]),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [6]),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [7]),
        .I4(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [9]),
        .O(p_0_in[9]));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [0]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [1]),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [3]),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [5]),
        .I4(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [2]),
        .I5(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [4]),
        .O(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_4 ));
(* counter = "1" *) 
   FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[0] 
       (.C(aclk),
        .CE(xfer_cnt0),
        .D(p_0_in[0]),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [0]),
        .R(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ));
(* counter = "1" *) 
   FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[1] 
       (.C(aclk),
        .CE(xfer_cnt0),
        .D(p_0_in[1]),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [1]),
        .R(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ));
(* counter = "1" *) 
   FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[2] 
       (.C(aclk),
        .CE(xfer_cnt0),
        .D(p_0_in[2]),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [2]),
        .R(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ));
(* counter = "1" *) 
   FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[3] 
       (.C(aclk),
        .CE(xfer_cnt0),
        .D(p_0_in[3]),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [3]),
        .R(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ));
(* counter = "1" *) 
   FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[4] 
       (.C(aclk),
        .CE(xfer_cnt0),
        .D(p_0_in[4]),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [4]),
        .R(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ));
(* counter = "1" *) 
   FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[5] 
       (.C(aclk),
        .CE(xfer_cnt0),
        .D(p_0_in[5]),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [5]),
        .R(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ));
(* counter = "1" *) 
   FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[6] 
       (.C(aclk),
        .CE(xfer_cnt0),
        .D(p_0_in[6]),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [6]),
        .R(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ));
(* counter = "1" *) 
   FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[7] 
       (.C(aclk),
        .CE(xfer_cnt0),
        .D(p_0_in[7]),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [7]),
        .R(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ));
(* counter = "1" *) 
   FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[8] 
       (.C(aclk),
        .CE(xfer_cnt0),
        .D(p_0_in[8]),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [8]),
        .R(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ));
(* counter = "1" *) 
   FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg[9] 
       (.C(aclk),
        .CE(xfer_cnt0),
        .D(p_0_in[9]),
        .Q(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [9]),
        .R(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt[9]_i_1 ));
LUT6 #(
    .INIT(64'h0003020003030000)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1 
       (.I0(p_1_in),
        .I1(timeout_done_r),
        .I2(areset_r),
        .I3(O1),
        .I4(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .I5(m_axis_tready),
        .O(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT5 #(
    .INIT(32'h20000000)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_2 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [8]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [0]),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [3]),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [2]),
        .I4(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_3 ),
        .O(p_1_in));
LUT6 #(
    .INIT(64'h8000000000000000)) 
     \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_3 
       (.I0(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [6]),
        .I1(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [5]),
        .I2(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [1]),
        .I3(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [9]),
        .I4(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [7]),
        .I5(\gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_cnt_reg__0 [4]),
        .O(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_3 ));
FDRE \gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_i_1 ),
        .Q(\n_0_gen_configurable_response.gen_max_xfer_per_arb_cntr.xfer_done_r_reg ),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair25" *) 
   LUT3 #(
    .INIT(8'h01)) 
     \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1 
       (.I0(O1),
        .I1(areset_r),
        .I2(timeout_cnt),
        .O(\n_0_gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1 ));
FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_cnt[0]_i_1 ),
        .Q(timeout_cnt),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT4 #(
    .INIT(16'h00A8)) 
     \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_i_1 
       (.I0(timeout_cnt),
        .I1(O2),
        .I2(O3),
        .I3(O1),
        .O(timeout_done_ns));
FDRE \gen_configurable_response.gen_num_cycles_timeout_cntr.timeout_done_r_reg 
       (.C(aclk),
        .CE(\<const1> ),
        .D(timeout_done_ns),
        .Q(timeout_done_r),
        .R(areset_r));
LUT4 #(
    .INIT(16'hA280)) 
     \m_axis_tvalid[0]_INST_0 
       (.I0(\n_0_m_axis_tvalid[0]_INST_0_i_1 ),
        .I1(arb_sel_i),
        .I2(s_axis_tvalid[1]),
        .I3(s_axis_tvalid[0]),
        .O(O1));
LUT4 #(
    .INIT(16'hFFFE)) 
     \m_axis_tvalid[0]_INST_0_i_1 
       (.I0(O2),
        .I1(O3),
        .I2(I2),
        .I3(I4),
        .O(\n_0_m_axis_tvalid[0]_INST_0_i_1 ));
LUT4 #(
    .INIT(16'h8880)) 
     \s_axis_tready[0]_INST_0 
       (.I0(s_axis_tvalid[0]),
        .I1(m_axis_tready),
        .I2(O2),
        .I3(I4),
        .O(s_axis_tready[0]));
LUT4 #(
    .INIT(16'h8880)) 
     \s_axis_tready[1]_INST_0 
       (.I0(s_axis_tvalid[1]),
        .I1(m_axis_tready),
        .I2(O3),
        .I3(I2),
        .O(s_axis_tready[1]));
endmodule

module axis_switch_rxaxis_switch_v1_1_axisc_decoder
   (O1,
    O2,
    areset_r,
    busy_ns,
    aclk,
    s_axis_tvalid,
    s_req_suppress,
    I1);
  output O1;
  output O2;
  input areset_r;
  input busy_ns;
  input aclk;
  input [0:0]s_axis_tvalid;
  input [0:0]s_req_suppress;
  input I1;

  wire \<const1> ;
  wire I1;
  wire O1;
  wire O2;
  wire aclk;
  wire areset_r;
  wire busy_ns;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_req_suppress;

VCC VCC
       (.P(\<const1> ));
LUT4 #(
    .INIT(16'h0004)) 
     \arb_gnt_r[1]_i_7 
       (.I0(O1),
        .I1(s_axis_tvalid),
        .I2(s_req_suppress),
        .I3(I1),
        .O(O2));
FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(busy_ns),
        .Q(O1),
        .R(areset_r));
endmodule

(* ORIG_REF_NAME = "axis_switch_v1_1_axisc_decoder" *) 
module axis_switch_rxaxis_switch_v1_1_axisc_decoder_0
   (O1,
    areset_r,
    busy_ns,
    aclk);
  output O1;
  input areset_r;
  input busy_ns;
  input aclk;

  wire \<const1> ;
  wire O1;
  wire aclk;
  wire areset_r;
  wire busy_ns;

VCC VCC
       (.P(\<const1> ));
FDRE \busy_r_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(busy_ns),
        .Q(O1),
        .R(areset_r));
endmodule

module axis_switch_rxaxis_switch_v1_1_axisc_transfer_mux
   (busy_ns,
    O1,
    busy_ns_0,
    arb_sel_r0,
    busy_r,
    s_axis_tready,
    arb_busy_ns,
    areset_r,
    aclk,
    m_axis_tready,
    I1,
    I2,
    I3,
    I4,
    I5,
    arb_req_i,
    I6,
    arb_sel_i,
    s_axis_tvalid,
    arb_busy_r,
    I7,
    I8,
    I9);
  output busy_ns;
  output O1;
  output busy_ns_0;
  output arb_sel_r0;
  output [1:0]busy_r;
  output [1:0]s_axis_tready;
  output arb_busy_ns;
  input areset_r;
  input aclk;
  input [0:0]m_axis_tready;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input [0:0]arb_req_i;
  input I6;
  input arb_sel_i;
  input [1:0]s_axis_tvalid;
  input arb_busy_r;
  input I7;
  input I8;
  input I9;

  wire I1;
  wire I2;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire O1;
  wire aclk;
  wire arb_busy_ns;
  wire arb_busy_r;
  wire [0:0]arb_req_i;
  wire arb_sel_i;
  wire arb_sel_r0;
  wire areset_r;
  wire busy_ns;
  wire busy_ns_0;
  wire [1:0]busy_r;
  wire [0:0]m_axis_tready;
  wire [1:0]s_axis_tready;
  wire [1:0]s_axis_tvalid;

axis_switch_rxaxis_switch_v1_1_axisc_arb_responder axisc_arb_responder
       (.I1(I1),
        .I2(I2),
        .I3(I3),
        .I4(I4),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .O1(O1),
        .O2(busy_r[0]),
        .O3(busy_r[1]),
        .aclk(aclk),
        .arb_busy_ns(arb_busy_ns),
        .arb_busy_r(arb_busy_r),
        .arb_req_i(arb_req_i),
        .arb_sel_i(arb_sel_i),
        .arb_sel_r0(arb_sel_r0),
        .areset_r(areset_r),
        .busy_ns(busy_ns),
        .busy_ns_0(busy_ns_0),
        .m_axis_tready(m_axis_tready),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
