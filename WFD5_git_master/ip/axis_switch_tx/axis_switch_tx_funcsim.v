// Copyright 1986-1999, 2001-2013 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2013.4 (win64) Build 353583 Mon Dec  9 17:49:19 MST 2013
// Date        : Fri Jul 18 14:12:18 2014
// Host        : PC210 running 64-bit Service Pack 1  (build 7601)
// Command     : write_verilog -force -mode funcsim
//               c:/USER_LOCAL/crs/Gminus2/Xilinx/WFD5_git_master/ip/axis_switch_tx/axis_switch_tx_funcsim.v
// Design      : axis_switch_tx
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k160tfbg676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* x_core_info = "axis_switch_v1_1_axis_switch,Vivado 2013.4" *) (* CHECK_LICENSE_TYPE = "axis_switch_tx,axis_switch_v1_1_axis_switch,{}" *) (* core_generation_info = "axis_switch_tx,axis_switch_v1_1_axis_switch,{x_ipProduct=Vivado 2013.4,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axis_switch,x_ipVersion=1.1,x_ipCoreRevision=1,x_ipLanguage=VERILOG,C_FAMILY=kintex7,C_NUM_SI_SLOTS=1,C_LOG_SI_SLOTS=1,C_NUM_MI_SLOTS=2,C_AXIS_TDATA_WIDTH=32,C_AXIS_TID_WIDTH=1,C_AXIS_TDEST_WIDTH=1,C_AXIS_TUSER_WIDTH=1,C_AXIS_SIGNAL_SET=0b01010011,C_ARB_ON_MAX_XFERS=1,C_ARB_ON_NUM_CYCLES=0,C_ARB_ON_TLAST=0,C_INCLUDE_ARBITER=1,C_ARB_ALGORITHM=0,C_OUTPUT_REG=0,C_DECODER_REG=1,C_M_AXIS_CONNECTIVITY_ARRAY=0b11,C_M_AXIS_BASETDEST_ARRAY=0b10,C_M_AXIS_HIGHTDEST_ARRAY=0b10}" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
(* NotValidForBitStream *)
module axis_switch_tx
   (aclk,
    aresetn,
    s_axis_tvalid,
    s_axis_tready,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tdest,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tdest,
    s_decode_err);
  input aclk;
  input aresetn;
  input [0:0]s_axis_tvalid;
  output [0:0]s_axis_tready;
  input [31:0]s_axis_tdata;
  input [0:0]s_axis_tlast;
  input [0:0]s_axis_tdest;
  output [1:0]m_axis_tvalid;
  input [1:0]m_axis_tready;
  output [63:0]m_axis_tdata;
  output [1:0]m_axis_tlast;
  output [1:0]m_axis_tdest;
  output [0:0]s_decode_err;

  wire aclk;
  wire aresetn;
  wire [31:0]\^m_axis_tdata ;
  wire [0:0]\^m_axis_tdest ;
  wire [0:0]\^m_axis_tlast ;
  wire [1:0]m_axis_tready;
  wire [1:0]m_axis_tvalid;
  wire [31:0]s_axis_tdata;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tlast;
  wire [0:0]s_axis_tready;
  wire [0:0]s_axis_tvalid;
  wire [0:0]s_decode_err;

  assign m_axis_tdata[63:32] = \^m_axis_tdata [31:0];
  assign m_axis_tdata[31:0] = \^m_axis_tdata [31:0];
  assign m_axis_tdest[1] = \^m_axis_tdest [0];
  assign m_axis_tdest[0] = \^m_axis_tdest [0];
  assign m_axis_tlast[1] = \^m_axis_tlast [0];
  assign m_axis_tlast[0] = \^m_axis_tlast [0];
axis_switch_txaxis_switch_v1_1_axis_switch inst
       (.D({s_axis_tlast,s_axis_tdata}),
        .O1(s_decode_err),
        .Q({\^m_axis_tdest ,\^m_axis_tlast ,\^m_axis_tdata }),
        .aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tdest(s_axis_tdest),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module axis_switch_txaxis_register_slice_v1_1_axisc_register_slice
   (state_reg,
    O1,
    s_axis_tready,
    Q,
    I1,
    s_axis_tvalid,
    I2,
    areset_r,
    tready_or_decode_err,
    D,
    I3,
    aclk,
    s_ready_i2_out);
  output [0:0]state_reg;
  output O1;
  output [0:0]s_axis_tready;
  output [33:0]Q;
  input I1;
  input [0:0]s_axis_tvalid;
  input I2;
  input areset_r;
  input tready_or_decode_err;
  input [33:0]D;
  input I3;
  input aclk;
  input s_ready_i2_out;

  wire \<const0> ;
  wire \<const1> ;
  wire [33:0]D;
  wire I1;
  wire I2;
  wire I3;
  wire O1;
  wire [33:0]Q;
  wire aclk;
  wire [1:0]areset_d;
  wire areset_r;
  wire \n_0_FSM_onehot_state[0]_i_1 ;
  wire \n_0_FSM_onehot_state[1]_i_1__0 ;
  wire \n_0_FSM_onehot_state[2]_i_1 ;
  wire \n_0_FSM_onehot_state[3]_i_1 ;
  wire \n_0_FSM_onehot_state[3]_i_2 ;
  wire \n_0_FSM_onehot_state[3]_i_3__0 ;
  wire \n_0_FSM_onehot_state[3]_i_5 ;
  wire \n_0_FSM_onehot_state_reg[0] ;
  wire \n_0_FSM_onehot_state_reg[1] ;
  wire \n_0_FSM_onehot_state_reg[2] ;
  wire \n_0_FSM_onehot_state_reg[3] ;
  wire n_0_s_ready_i_i_1;
  wire n_0_s_ready_i_i_2;
  wire \n_0_storage_data1[0]_i_1 ;
  wire \n_0_storage_data1[10]_i_1 ;
  wire \n_0_storage_data1[11]_i_1 ;
  wire \n_0_storage_data1[12]_i_1 ;
  wire \n_0_storage_data1[13]_i_1 ;
  wire \n_0_storage_data1[14]_i_1 ;
  wire \n_0_storage_data1[15]_i_1 ;
  wire \n_0_storage_data1[16]_i_1 ;
  wire \n_0_storage_data1[17]_i_1 ;
  wire \n_0_storage_data1[18]_i_1 ;
  wire \n_0_storage_data1[19]_i_1 ;
  wire \n_0_storage_data1[1]_i_1 ;
  wire \n_0_storage_data1[20]_i_1 ;
  wire \n_0_storage_data1[21]_i_1 ;
  wire \n_0_storage_data1[22]_i_1 ;
  wire \n_0_storage_data1[23]_i_1 ;
  wire \n_0_storage_data1[24]_i_1 ;
  wire \n_0_storage_data1[25]_i_1 ;
  wire \n_0_storage_data1[26]_i_1 ;
  wire \n_0_storage_data1[27]_i_1 ;
  wire \n_0_storage_data1[28]_i_1 ;
  wire \n_0_storage_data1[29]_i_1 ;
  wire \n_0_storage_data1[2]_i_1 ;
  wire \n_0_storage_data1[30]_i_1 ;
  wire \n_0_storage_data1[31]_i_1 ;
  wire \n_0_storage_data1[31]_i_2 ;
  wire \n_0_storage_data1[32]_i_1 ;
  wire \n_0_storage_data1[33]_i_1 ;
  wire \n_0_storage_data1[3]_i_1 ;
  wire \n_0_storage_data1[4]_i_1 ;
  wire \n_0_storage_data1[5]_i_1 ;
  wire \n_0_storage_data1[6]_i_1 ;
  wire \n_0_storage_data1[7]_i_1 ;
  wire \n_0_storage_data1[8]_i_1 ;
  wire \n_0_storage_data1[9]_i_1 ;
  wire [0:0]s_axis_tready;
  wire [0:0]s_axis_tvalid;
  wire s_ready_i15_out;
  wire s_ready_i2_out;
  wire [0:0]state_reg;
  wire [33:0]storage_data2;
  wire storage_data2_0;
  wire tready_or_decode_err;

(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT5 #(
    .INIT(32'hFEEBFFEB)) 
     \FSM_onehot_state[0]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[0] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .I4(I3),
        .O(\n_0_FSM_onehot_state[0]_i_1 ));
LUT6 #(
    .INIT(64'h0011100000001000)) 
     \FSM_onehot_state[1]_i_1__0 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(tready_or_decode_err),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[0] ),
        .I5(s_axis_tvalid),
        .O(\n_0_FSM_onehot_state[1]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h01000000)) 
     \FSM_onehot_state[2]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[0] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(I3),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .O(\n_0_FSM_onehot_state[2]_i_1 ));
LUT3 #(
    .INIT(8'hBA)) 
     \FSM_onehot_state[3]_i_1 
       (.I0(areset_r),
        .I1(areset_d[0]),
        .I2(areset_d[1]),
        .O(\n_0_FSM_onehot_state[3]_i_1 ));
LUT6 #(
    .INIT(64'hB8FF0000B8330000)) 
     \FSM_onehot_state[3]_i_2 
       (.I0(I1),
        .I1(\n_0_FSM_onehot_state[3]_i_5 ),
        .I2(s_axis_tvalid),
        .I3(state_reg),
        .I4(s_ready_i15_out),
        .I5(I2),
        .O(\n_0_FSM_onehot_state[3]_i_2 ));
LUT6 #(
    .INIT(64'h0000010000110100)) 
     \FSM_onehot_state[3]_i_3__0 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(tready_or_decode_err),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[0] ),
        .I5(s_axis_tvalid),
        .O(\n_0_FSM_onehot_state[3]_i_3__0 ));
(* SOFT_HLUTNM = "soft_lutpair1" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[3]_i_5 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .O(\n_0_FSM_onehot_state[3]_i_5 ));
LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_state[3]_i_6 
       (.I0(areset_d[0]),
        .I1(areset_d[1]),
        .O(s_ready_i15_out));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(\n_0_FSM_onehot_state[3]_i_2 ),
        .D(\n_0_FSM_onehot_state[0]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[0] ),
        .S(\n_0_FSM_onehot_state[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(\n_0_FSM_onehot_state[3]_i_2 ),
        .D(\n_0_FSM_onehot_state[1]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[1] ),
        .R(\n_0_FSM_onehot_state[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(\n_0_FSM_onehot_state[3]_i_2 ),
        .D(\n_0_FSM_onehot_state[2]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[2] ),
        .R(\n_0_FSM_onehot_state[3]_i_1 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(\n_0_FSM_onehot_state[3]_i_2 ),
        .D(\n_0_FSM_onehot_state[3]_i_3__0 ),
        .Q(\n_0_FSM_onehot_state_reg[3] ),
        .R(\n_0_FSM_onehot_state[3]_i_1 ));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* equivalent_register_removal = "no" *) 
   FDRE \areset_d_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(areset_r),
        .Q(areset_d[0]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   FDRE \areset_d_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h00000000CECEFECE)) 
     s_ready_i_i_1
       (.I0(s_axis_tready),
        .I1(n_0_s_ready_i_i_2),
        .I2(s_ready_i2_out),
        .I3(tready_or_decode_err),
        .I4(state_reg),
        .I5(areset_r),
        .O(n_0_s_ready_i_i_1));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT2 #(
    .INIT(4'h2)) 
     s_ready_i_i_2
       (.I0(areset_d[1]),
        .I1(areset_d[0]),
        .O(n_0_s_ready_i_i_2));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     s_ready_i_i_5
       (.I0(\n_0_FSM_onehot_state_reg[0] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .O(state_reg));
(* SOFT_HLUTNM = "soft_lutpair2" *) 
   LUT4 #(
    .INIT(16'hFFF1)) 
     s_ready_i_i_8
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(areset_d[1]),
        .I3(areset_d[0]),
        .O(O1));
FDRE s_ready_i_reg
       (.C(aclk),
        .CE(\<const1> ),
        .D(n_0_s_ready_i_i_1),
        .Q(s_axis_tready),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[0]_i_1 
       (.I0(storage_data2[0]),
        .I1(D[0]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[0]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[10]_i_1 
       (.I0(storage_data2[10]),
        .I1(D[10]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[10]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[11]_i_1 
       (.I0(storage_data2[11]),
        .I1(D[11]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[11]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[12]_i_1 
       (.I0(storage_data2[12]),
        .I1(D[12]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[12]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[13]_i_1 
       (.I0(storage_data2[13]),
        .I1(D[13]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[13]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[14]_i_1 
       (.I0(storage_data2[14]),
        .I1(D[14]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[14]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[15]_i_1 
       (.I0(storage_data2[15]),
        .I1(D[15]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[15]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[16]_i_1 
       (.I0(storage_data2[16]),
        .I1(D[16]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[16]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[17]_i_1 
       (.I0(storage_data2[17]),
        .I1(D[17]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[17]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[18]_i_1 
       (.I0(storage_data2[18]),
        .I1(D[18]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[18]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[19]_i_1 
       (.I0(storage_data2[19]),
        .I1(D[19]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[19]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[1]_i_1 
       (.I0(storage_data2[1]),
        .I1(D[1]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[1]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[20]_i_1 
       (.I0(storage_data2[20]),
        .I1(D[20]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[20]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[21]_i_1 
       (.I0(storage_data2[21]),
        .I1(D[21]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[21]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[22]_i_1 
       (.I0(storage_data2[22]),
        .I1(D[22]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[22]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[23]_i_1 
       (.I0(storage_data2[23]),
        .I1(D[23]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[23]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[24]_i_1 
       (.I0(storage_data2[24]),
        .I1(D[24]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[24]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[25]_i_1 
       (.I0(storage_data2[25]),
        .I1(D[25]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[25]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[26]_i_1 
       (.I0(storage_data2[26]),
        .I1(D[26]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[26]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[27]_i_1 
       (.I0(storage_data2[27]),
        .I1(D[27]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[27]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[28]_i_1 
       (.I0(storage_data2[28]),
        .I1(D[28]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[28]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[29]_i_1 
       (.I0(storage_data2[29]),
        .I1(D[29]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[29]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[2]_i_1 
       (.I0(storage_data2[2]),
        .I1(D[2]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[2]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[30]_i_1 
       (.I0(storage_data2[30]),
        .I1(D[30]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[30]_i_1 ));
LUT6 #(
    .INIT(64'h888A888ACCC0CC8A)) 
     \storage_data1[31]_i_1 
       (.I0(s_axis_tvalid),
        .I1(tready_or_decode_err),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[31]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[31]_i_2 
       (.I0(storage_data2[31]),
        .I1(D[31]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[31]_i_2 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[32]_i_1 
       (.I0(storage_data2[32]),
        .I1(D[32]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[32]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[33]_i_1 
       (.I0(storage_data2[33]),
        .I1(D[33]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[33]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[3]_i_1 
       (.I0(storage_data2[3]),
        .I1(D[3]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[3]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[4]_i_1 
       (.I0(storage_data2[4]),
        .I1(D[4]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[4]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[5]_i_1 
       (.I0(storage_data2[5]),
        .I1(D[5]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[5]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[6]_i_1 
       (.I0(storage_data2[6]),
        .I1(D[6]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[6]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[7]_i_1 
       (.I0(storage_data2[7]),
        .I1(D[7]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[7]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[8]_i_1 
       (.I0(storage_data2[8]),
        .I1(D[8]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[8]_i_1 ));
LUT6 #(
    .INIT(64'hCCCCCCCCAAACAACC)) 
     \storage_data1[9]_i_1 
       (.I0(storage_data2[9]),
        .I1(D[9]),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[9]_i_1 ));
FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[0]_i_1 ),
        .Q(Q[0]),
        .R(\<const0> ));
FDRE \storage_data1_reg[10] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[10]_i_1 ),
        .Q(Q[10]),
        .R(\<const0> ));
FDRE \storage_data1_reg[11] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[11]_i_1 ),
        .Q(Q[11]),
        .R(\<const0> ));
FDRE \storage_data1_reg[12] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[12]_i_1 ),
        .Q(Q[12]),
        .R(\<const0> ));
FDRE \storage_data1_reg[13] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[13]_i_1 ),
        .Q(Q[13]),
        .R(\<const0> ));
FDRE \storage_data1_reg[14] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[14]_i_1 ),
        .Q(Q[14]),
        .R(\<const0> ));
FDRE \storage_data1_reg[15] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[15]_i_1 ),
        .Q(Q[15]),
        .R(\<const0> ));
FDRE \storage_data1_reg[16] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[16]_i_1 ),
        .Q(Q[16]),
        .R(\<const0> ));
FDRE \storage_data1_reg[17] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[17]_i_1 ),
        .Q(Q[17]),
        .R(\<const0> ));
FDRE \storage_data1_reg[18] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[18]_i_1 ),
        .Q(Q[18]),
        .R(\<const0> ));
FDRE \storage_data1_reg[19] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[19]_i_1 ),
        .Q(Q[19]),
        .R(\<const0> ));
FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[1]_i_1 ),
        .Q(Q[1]),
        .R(\<const0> ));
FDRE \storage_data1_reg[20] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[20]_i_1 ),
        .Q(Q[20]),
        .R(\<const0> ));
FDRE \storage_data1_reg[21] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[21]_i_1 ),
        .Q(Q[21]),
        .R(\<const0> ));
FDRE \storage_data1_reg[22] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[22]_i_1 ),
        .Q(Q[22]),
        .R(\<const0> ));
FDRE \storage_data1_reg[23] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[23]_i_1 ),
        .Q(Q[23]),
        .R(\<const0> ));
FDRE \storage_data1_reg[24] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[24]_i_1 ),
        .Q(Q[24]),
        .R(\<const0> ));
FDRE \storage_data1_reg[25] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[25]_i_1 ),
        .Q(Q[25]),
        .R(\<const0> ));
FDRE \storage_data1_reg[26] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[26]_i_1 ),
        .Q(Q[26]),
        .R(\<const0> ));
FDRE \storage_data1_reg[27] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[27]_i_1 ),
        .Q(Q[27]),
        .R(\<const0> ));
FDRE \storage_data1_reg[28] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[28]_i_1 ),
        .Q(Q[28]),
        .R(\<const0> ));
FDRE \storage_data1_reg[29] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[29]_i_1 ),
        .Q(Q[29]),
        .R(\<const0> ));
FDRE \storage_data1_reg[2] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[2]_i_1 ),
        .Q(Q[2]),
        .R(\<const0> ));
FDRE \storage_data1_reg[30] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[30]_i_1 ),
        .Q(Q[30]),
        .R(\<const0> ));
FDRE \storage_data1_reg[31] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[31]_i_2 ),
        .Q(Q[31]),
        .R(\<const0> ));
FDRE \storage_data1_reg[32] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[32]_i_1 ),
        .Q(Q[32]),
        .R(\<const0> ));
FDRE \storage_data1_reg[33] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[33]_i_1 ),
        .Q(Q[33]),
        .R(\<const0> ));
FDRE \storage_data1_reg[3] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[3]_i_1 ),
        .Q(Q[3]),
        .R(\<const0> ));
FDRE \storage_data1_reg[4] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[4]_i_1 ),
        .Q(Q[4]),
        .R(\<const0> ));
FDRE \storage_data1_reg[5] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[5]_i_1 ),
        .Q(Q[5]),
        .R(\<const0> ));
FDRE \storage_data1_reg[6] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[6]_i_1 ),
        .Q(Q[6]),
        .R(\<const0> ));
FDRE \storage_data1_reg[7] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[7]_i_1 ),
        .Q(Q[7]),
        .R(\<const0> ));
FDRE \storage_data1_reg[8] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[8]_i_1 ),
        .Q(Q[8]),
        .R(\<const0> ));
FDRE \storage_data1_reg[9] 
       (.C(aclk),
        .CE(\n_0_storage_data1[31]_i_1 ),
        .D(\n_0_storage_data1[9]_i_1 ),
        .Q(Q[9]),
        .R(\<const0> ));
LUT2 #(
    .INIT(4'h8)) 
     \storage_data2[33]_i_1 
       (.I0(s_axis_tvalid),
        .I1(s_axis_tready),
        .O(storage_data2_0));
FDRE \storage_data2_reg[0] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[0]),
        .Q(storage_data2[0]),
        .R(\<const0> ));
FDRE \storage_data2_reg[10] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[10]),
        .Q(storage_data2[10]),
        .R(\<const0> ));
FDRE \storage_data2_reg[11] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[11]),
        .Q(storage_data2[11]),
        .R(\<const0> ));
FDRE \storage_data2_reg[12] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[12]),
        .Q(storage_data2[12]),
        .R(\<const0> ));
FDRE \storage_data2_reg[13] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[13]),
        .Q(storage_data2[13]),
        .R(\<const0> ));
FDRE \storage_data2_reg[14] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[14]),
        .Q(storage_data2[14]),
        .R(\<const0> ));
FDRE \storage_data2_reg[15] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[15]),
        .Q(storage_data2[15]),
        .R(\<const0> ));
FDRE \storage_data2_reg[16] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[16]),
        .Q(storage_data2[16]),
        .R(\<const0> ));
FDRE \storage_data2_reg[17] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[17]),
        .Q(storage_data2[17]),
        .R(\<const0> ));
FDRE \storage_data2_reg[18] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[18]),
        .Q(storage_data2[18]),
        .R(\<const0> ));
FDRE \storage_data2_reg[19] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[19]),
        .Q(storage_data2[19]),
        .R(\<const0> ));
FDRE \storage_data2_reg[1] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[1]),
        .Q(storage_data2[1]),
        .R(\<const0> ));
FDRE \storage_data2_reg[20] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[20]),
        .Q(storage_data2[20]),
        .R(\<const0> ));
FDRE \storage_data2_reg[21] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[21]),
        .Q(storage_data2[21]),
        .R(\<const0> ));
FDRE \storage_data2_reg[22] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[22]),
        .Q(storage_data2[22]),
        .R(\<const0> ));
FDRE \storage_data2_reg[23] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[23]),
        .Q(storage_data2[23]),
        .R(\<const0> ));
FDRE \storage_data2_reg[24] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[24]),
        .Q(storage_data2[24]),
        .R(\<const0> ));
FDRE \storage_data2_reg[25] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[25]),
        .Q(storage_data2[25]),
        .R(\<const0> ));
FDRE \storage_data2_reg[26] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[26]),
        .Q(storage_data2[26]),
        .R(\<const0> ));
FDRE \storage_data2_reg[27] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[27]),
        .Q(storage_data2[27]),
        .R(\<const0> ));
FDRE \storage_data2_reg[28] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[28]),
        .Q(storage_data2[28]),
        .R(\<const0> ));
FDRE \storage_data2_reg[29] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[29]),
        .Q(storage_data2[29]),
        .R(\<const0> ));
FDRE \storage_data2_reg[2] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[2]),
        .Q(storage_data2[2]),
        .R(\<const0> ));
FDRE \storage_data2_reg[30] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[30]),
        .Q(storage_data2[30]),
        .R(\<const0> ));
FDRE \storage_data2_reg[31] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[31]),
        .Q(storage_data2[31]),
        .R(\<const0> ));
FDRE \storage_data2_reg[32] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[32]),
        .Q(storage_data2[32]),
        .R(\<const0> ));
FDRE \storage_data2_reg[33] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[33]),
        .Q(storage_data2[33]),
        .R(\<const0> ));
FDRE \storage_data2_reg[3] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[3]),
        .Q(storage_data2[3]),
        .R(\<const0> ));
FDRE \storage_data2_reg[4] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[4]),
        .Q(storage_data2[4]),
        .R(\<const0> ));
FDRE \storage_data2_reg[5] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[5]),
        .Q(storage_data2[5]),
        .R(\<const0> ));
FDRE \storage_data2_reg[6] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[6]),
        .Q(storage_data2[6]),
        .R(\<const0> ));
FDRE \storage_data2_reg[7] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[7]),
        .Q(storage_data2[7]),
        .R(\<const0> ));
FDRE \storage_data2_reg[8] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[8]),
        .Q(storage_data2[8]),
        .R(\<const0> ));
FDRE \storage_data2_reg[9] 
       (.C(aclk),
        .CE(storage_data2_0),
        .D(D[9]),
        .Q(storage_data2[9]),
        .R(\<const0> ));
endmodule

(* ORIG_REF_NAME = "axis_register_slice_v1_1_axisc_register_slice" *) 
module axis_switch_txaxis_register_slice_v1_1_axisc_register_slice__parameterized0
   (s_ready_i2_out,
    O1,
    O2,
    O3,
    O4,
    tready_or_decode_err,
    m_axis_tvalid,
    I1,
    state_reg,
    s_axis_tvalid,
    I2,
    m_axis_tready,
    areset_r,
    aclk,
    D);
  output s_ready_i2_out;
  output O1;
  output O2;
  output O3;
  output O4;
  output tready_or_decode_err;
  output [1:0]m_axis_tvalid;
  input I1;
  input [0:0]state_reg;
  input [0:0]s_axis_tvalid;
  input I2;
  input [1:0]m_axis_tready;
  input areset_r;
  input aclk;
  input [0:0]D;

  wire \<const0> ;
  wire \<const1> ;
  wire [0:0]D;
  wire I1;
  wire I2;
  wire O1;
  wire O2;
  wire O3;
  wire O4;
  wire aclk;
  wire [1:0]arb_req_out;
  wire [1:0]areset_d;
  wire areset_r;
  wire [1:0]m_axis_tready;
  wire [1:0]m_axis_tvalid;
  wire m_axis_tvalid_req;
  wire m_tready_from_decoded_slave;
  wire [1:0]m_tready_from_decoded_slave0;
  wire \n_0_FSM_onehot_state[0]_i_1__0 ;
  wire \n_0_FSM_onehot_state[1]_i_1 ;
  wire \n_0_FSM_onehot_state[2]_i_1__0 ;
  wire \n_0_FSM_onehot_state[3]_i_1__0 ;
  wire \n_0_FSM_onehot_state[3]_i_2__0 ;
  wire \n_0_FSM_onehot_state[3]_i_3 ;
  wire \n_0_FSM_onehot_state_reg[0] ;
  wire \n_0_FSM_onehot_state_reg[1] ;
  wire \n_0_FSM_onehot_state_reg[2] ;
  wire \n_0_FSM_onehot_state_reg[3] ;
  wire n_0_s_ready_i_i_1;
  wire n_0_s_ready_i_i_2__0;
  wire n_0_s_ready_i_i_4__0;
  wire n_0_s_ready_i_reg;
  wire \n_0_storage_data1[0]_i_1 ;
  wire \n_0_storage_data1[1]_i_1 ;
  wire \n_0_storage_data1[1]_i_2 ;
  wire \n_0_storage_data1[1]_i_3 ;
  wire \n_0_storage_data2[0]_i_1 ;
  wire \n_0_storage_data2[1]_i_1 ;
  wire \n_0_storage_data2_reg[0] ;
  wire \n_0_storage_data2_reg[1] ;
  wire [0:0]s_axis_tvalid;
  wire s_ready_i15_out;
  wire s_ready_i2_out;
  wire s_ready_i2_out_0;
  wire [0:0]state_reg;
  wire [1:1]state_reg_1;
  wire tready_or_decode_err;

(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'hFEEBFFEB)) 
     \FSM_onehot_state[0]_i_1__0 
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[0] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .I4(O3),
        .O(\n_0_FSM_onehot_state[0]_i_1__0 ));
LUT6 #(
    .INIT(64'h0011100000001000)) 
     \FSM_onehot_state[1]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(tready_or_decode_err),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[0] ),
        .I5(s_axis_tvalid),
        .O(\n_0_FSM_onehot_state[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT5 #(
    .INIT(32'h01000000)) 
     \FSM_onehot_state[2]_i_1__0 
       (.I0(\n_0_FSM_onehot_state_reg[0] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(O3),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .O(\n_0_FSM_onehot_state[2]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \FSM_onehot_state[2]_i_2 
       (.I0(I1),
        .I1(s_axis_tvalid),
        .I2(m_tready_from_decoded_slave0[1]),
        .I3(m_tready_from_decoded_slave0[0]),
        .O(O3));
LUT3 #(
    .INIT(8'hBA)) 
     \FSM_onehot_state[3]_i_1__0 
       (.I0(areset_r),
        .I1(areset_d[0]),
        .I2(areset_d[1]),
        .O(\n_0_FSM_onehot_state[3]_i_1__0 ));
LUT6 #(
    .INIT(64'hB8FF0000B8330000)) 
     \FSM_onehot_state[3]_i_2__0 
       (.I0(O1),
        .I1(m_axis_tvalid_req),
        .I2(s_axis_tvalid),
        .I3(state_reg_1),
        .I4(s_ready_i15_out),
        .I5(O2),
        .O(\n_0_FSM_onehot_state[3]_i_2__0 ));
LUT6 #(
    .INIT(64'h0000010000110100)) 
     \FSM_onehot_state[3]_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(tready_or_decode_err),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[0] ),
        .I5(s_axis_tvalid),
        .O(\n_0_FSM_onehot_state[3]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT4 #(
    .INIT(16'h5556)) 
     \FSM_onehot_state[3]_i_4 
       (.I0(s_axis_tvalid),
        .I1(m_tready_from_decoded_slave0[0]),
        .I2(m_tready_from_decoded_slave0[1]),
        .I3(I1),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[3]_i_4__0 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .O(m_axis_tvalid_req));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT3 #(
    .INIT(8'hAB)) 
     \FSM_onehot_state[3]_i_5__0 
       (.I0(\n_0_FSM_onehot_state_reg[0] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .O(state_reg_1));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_state[3]_i_6__0 
       (.I0(areset_d[0]),
        .I1(areset_d[1]),
        .O(s_ready_i15_out));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[3]_i_7 
       (.I0(I1),
        .I1(m_tready_from_decoded_slave),
        .O(O2));
FDSE #(
    .INIT(1'b1)) 
     \FSM_onehot_state_reg[0] 
       (.C(aclk),
        .CE(\n_0_FSM_onehot_state[3]_i_2__0 ),
        .D(\n_0_FSM_onehot_state[0]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[0] ),
        .S(\n_0_FSM_onehot_state[3]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[1] 
       (.C(aclk),
        .CE(\n_0_FSM_onehot_state[3]_i_2__0 ),
        .D(\n_0_FSM_onehot_state[1]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[1] ),
        .R(\n_0_FSM_onehot_state[3]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[2] 
       (.C(aclk),
        .CE(\n_0_FSM_onehot_state[3]_i_2__0 ),
        .D(\n_0_FSM_onehot_state[2]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[2] ),
        .R(\n_0_FSM_onehot_state[3]_i_1__0 ));
FDRE #(
    .INIT(1'b0)) 
     \FSM_onehot_state_reg[3] 
       (.C(aclk),
        .CE(\n_0_FSM_onehot_state[3]_i_2__0 ),
        .D(\n_0_FSM_onehot_state[3]_i_3 ),
        .Q(\n_0_FSM_onehot_state_reg[3] ),
        .R(\n_0_FSM_onehot_state[3]_i_1__0 ));
GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
(* equivalent_register_removal = "no" *) 
   FDRE \areset_d_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(areset_r),
        .Q(areset_d[0]),
        .R(\<const0> ));
(* equivalent_register_removal = "no" *) 
   FDRE \areset_d_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(areset_d[0]),
        .Q(areset_d[1]),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h0000000000000054)) 
     decode_err_r_i_1
       (.I0(I1),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(arb_req_out[0]),
        .I4(arb_req_out[1]),
        .I5(areset_r),
        .O(O4));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \m_axis_tvalid[0]_INST_0 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(arb_req_out[0]),
        .O(m_axis_tvalid[0]));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT3 #(
    .INIT(8'hE0)) 
     \m_axis_tvalid[1]_INST_0 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(arb_req_out[1]),
        .O(m_axis_tvalid[1]));
LUT6 #(
    .INIT(64'h00000000CECEFECE)) 
     s_ready_i_i_1
       (.I0(n_0_s_ready_i_reg),
        .I1(n_0_s_ready_i_i_2__0),
        .I2(s_ready_i2_out_0),
        .I3(tready_or_decode_err),
        .I4(state_reg_1),
        .I5(areset_r),
        .O(n_0_s_ready_i_i_1));
(* SOFT_HLUTNM = "soft_lutpair10" *) 
   LUT2 #(
    .INIT(4'h2)) 
     s_ready_i_i_2__0
       (.I0(areset_d[1]),
        .I1(areset_d[0]),
        .O(n_0_s_ready_i_i_2__0));
LUT6 #(
    .INIT(64'h0000000001FE00FE)) 
     s_ready_i_i_3
       (.I0(I1),
        .I1(m_tready_from_decoded_slave0[1]),
        .I2(m_tready_from_decoded_slave0[0]),
        .I3(state_reg),
        .I4(s_axis_tvalid),
        .I5(I2),
        .O(s_ready_i2_out));
LUT6 #(
    .INIT(64'h0000000001FE00FE)) 
     s_ready_i_i_3__0
       (.I0(I1),
        .I1(m_tready_from_decoded_slave0[1]),
        .I2(m_tready_from_decoded_slave0[0]),
        .I3(state_reg_1),
        .I4(s_axis_tvalid),
        .I5(n_0_s_ready_i_i_4__0),
        .O(s_ready_i2_out_0));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'hE)) 
     s_ready_i_i_4
       (.I0(m_tready_from_decoded_slave),
        .I1(I1),
        .O(tready_or_decode_err));
(* SOFT_HLUTNM = "soft_lutpair8" *) 
   LUT4 #(
    .INIT(16'hFFF1)) 
     s_ready_i_i_4__0
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(areset_d[1]),
        .I3(areset_d[0]),
        .O(n_0_s_ready_i_i_4__0));
(* SOFT_HLUTNM = "soft_lutpair6" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     s_ready_i_i_6
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(m_axis_tready[1]),
        .I3(arb_req_out[1]),
        .O(m_tready_from_decoded_slave0[1]));
(* SOFT_HLUTNM = "soft_lutpair7" *) 
   LUT4 #(
    .INIT(16'hE000)) 
     s_ready_i_i_7
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(m_axis_tready[0]),
        .I3(arb_req_out[0]),
        .O(m_tready_from_decoded_slave0[0]));
LUT6 #(
    .INIT(64'hF888F888F8880000)) 
     s_ready_i_i_9
       (.I0(arb_req_out[1]),
        .I1(m_axis_tready[1]),
        .I2(arb_req_out[0]),
        .I3(m_axis_tready[0]),
        .I4(\n_0_FSM_onehot_state_reg[2] ),
        .I5(\n_0_FSM_onehot_state_reg[1] ),
        .O(m_tready_from_decoded_slave));
FDRE s_ready_i_reg
       (.C(aclk),
        .CE(\<const1> ),
        .D(n_0_s_ready_i_i_1),
        .Q(n_0_s_ready_i_reg),
        .R(\<const0> ));
LUT6 #(
    .INIT(64'h88B8FFFF88B80000)) 
     \storage_data1[0]_i_1 
       (.I0(\n_0_storage_data2_reg[0] ),
        .I1(\n_0_storage_data1[1]_i_2 ),
        .I2(s_axis_tvalid),
        .I3(D),
        .I4(\n_0_storage_data1[1]_i_3 ),
        .I5(arb_req_out[0]),
        .O(\n_0_storage_data1[0]_i_1 ));
LUT6 #(
    .INIT(64'hB888FFFFB8880000)) 
     \storage_data1[1]_i_1 
       (.I0(\n_0_storage_data2_reg[1] ),
        .I1(\n_0_storage_data1[1]_i_2 ),
        .I2(s_axis_tvalid),
        .I3(D),
        .I4(\n_0_storage_data1[1]_i_3 ),
        .I5(arb_req_out[1]),
        .O(\n_0_storage_data1[1]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair3" *) 
   LUT4 #(
    .INIT(16'h00EC)) 
     \storage_data1[1]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[0] ),
        .O(\n_0_storage_data1[1]_i_2 ));
LUT6 #(
    .INIT(64'hA8A8A8AAFCFCFC00)) 
     \storage_data1[1]_i_3 
       (.I0(s_axis_tvalid),
        .I1(I1),
        .I2(m_tready_from_decoded_slave),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .I5(state_reg_1),
        .O(\n_0_storage_data1[1]_i_3 ));
FDRE \storage_data1_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_storage_data1[0]_i_1 ),
        .Q(arb_req_out[0]),
        .R(\<const0> ));
FDRE \storage_data1_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_storage_data1[1]_i_1 ),
        .Q(arb_req_out[1]),
        .R(\<const0> ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'h7F40)) 
     \storage_data2[0]_i_1 
       (.I0(D),
        .I1(s_axis_tvalid),
        .I2(n_0_s_ready_i_reg),
        .I3(\n_0_storage_data2_reg[0] ),
        .O(\n_0_storage_data2[0]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair9" *) 
   LUT4 #(
    .INIT(16'hBF80)) 
     \storage_data2[1]_i_1 
       (.I0(D),
        .I1(s_axis_tvalid),
        .I2(n_0_s_ready_i_reg),
        .I3(\n_0_storage_data2_reg[1] ),
        .O(\n_0_storage_data2[1]_i_1 ));
FDRE \storage_data2_reg[0] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_storage_data2[0]_i_1 ),
        .Q(\n_0_storage_data2_reg[0] ),
        .R(\<const0> ));
FDRE \storage_data2_reg[1] 
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_0_storage_data2[1]_i_1 ),
        .Q(\n_0_storage_data2_reg[1] ),
        .R(\<const0> ));
endmodule

module axis_switch_txaxis_switch_v1_1_axis_switch
   (O1,
    s_axis_tready,
    Q,
    m_axis_tvalid,
    s_axis_tvalid,
    m_axis_tready,
    aclk,
    s_axis_tdest,
    D,
    aresetn);
  output O1;
  output [0:0]s_axis_tready;
  output [33:0]Q;
  output [1:0]m_axis_tvalid;
  input [0:0]s_axis_tvalid;
  input [1:0]m_axis_tready;
  input aclk;
  input [0:0]s_axis_tdest;
  input [32:0]D;
  input aresetn;

  wire \<const0> ;
  wire \<const1> ;
  wire [32:0]D;
  wire O1;
  wire [33:0]Q;
  wire aclk;
  wire areset_r;
  wire aresetn;
  wire [1:0]m_axis_tready;
  wire [1:0]m_axis_tvalid;
  wire n_0_areset_r_i_1;
  wire [0:0]s_axis_tdest;
  wire [0:0]s_axis_tready;
  wire [0:0]s_axis_tvalid;

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
axis_switch_txaxis_switch_v1_1_axisc_decoder \gen_decoder[0].axisc_decoder_0 
       (.D({s_axis_tdest,D}),
        .O1(O1),
        .Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module axis_switch_txaxis_switch_v1_1_axisc_decoder
   (O1,
    s_axis_tready,
    Q,
    m_axis_tvalid,
    aclk,
    s_axis_tvalid,
    m_axis_tready,
    areset_r,
    D);
  output O1;
  output [0:0]s_axis_tready;
  output [33:0]Q;
  output [1:0]m_axis_tvalid;
  input aclk;
  input [0:0]s_axis_tvalid;
  input [1:0]m_axis_tready;
  input areset_r;
  input [33:0]D;

  wire \<const0> ;
  wire \<const1> ;
  wire [33:0]D;
  wire O1;
  wire [33:0]Q;
  wire aclk;
  wire areset_r;
  wire [1:0]m_axis_tready;
  wire [1:0]m_axis_tvalid;
  wire \n_1_gen_tdest_decoder.axisc_register_slice_0 ;
  wire \n_1_gen_tdest_decoder.axisc_register_slice_1 ;
  wire \n_2_gen_tdest_decoder.axisc_register_slice_1 ;
  wire \n_3_gen_tdest_decoder.axisc_register_slice_1 ;
  wire \n_4_gen_tdest_decoder.axisc_register_slice_1 ;
  wire [0:0]s_axis_tready;
  wire [0:0]s_axis_tvalid;
  wire s_ready_i2_out;
  wire [1:1]state_reg;
  wire tready_or_decode_err;

GND GND
       (.G(\<const0> ));
VCC VCC
       (.P(\<const1> ));
FDRE decode_err_r_reg
       (.C(aclk),
        .CE(\<const1> ),
        .D(\n_4_gen_tdest_decoder.axisc_register_slice_1 ),
        .Q(O1),
        .R(\<const0> ));
axis_switch_txaxis_register_slice_v1_1_axisc_register_slice \gen_tdest_decoder.axisc_register_slice_0 
       (.D(D),
        .I1(\n_1_gen_tdest_decoder.axisc_register_slice_1 ),
        .I2(\n_2_gen_tdest_decoder.axisc_register_slice_1 ),
        .I3(\n_3_gen_tdest_decoder.axisc_register_slice_1 ),
        .O1(\n_1_gen_tdest_decoder.axisc_register_slice_0 ),
        .Q(Q),
        .aclk(aclk),
        .areset_r(areset_r),
        .s_axis_tready(s_axis_tready),
        .s_axis_tvalid(s_axis_tvalid),
        .s_ready_i2_out(s_ready_i2_out),
        .state_reg(state_reg),
        .tready_or_decode_err(tready_or_decode_err));
axis_switch_txaxis_register_slice_v1_1_axisc_register_slice__parameterized0 \gen_tdest_decoder.axisc_register_slice_1 
       (.D(D[33]),
        .I1(O1),
        .I2(\n_1_gen_tdest_decoder.axisc_register_slice_0 ),
        .O1(\n_1_gen_tdest_decoder.axisc_register_slice_1 ),
        .O2(\n_2_gen_tdest_decoder.axisc_register_slice_1 ),
        .O3(\n_3_gen_tdest_decoder.axisc_register_slice_1 ),
        .O4(\n_4_gen_tdest_decoder.axisc_register_slice_1 ),
        .aclk(aclk),
        .areset_r(areset_r),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .s_axis_tvalid(s_axis_tvalid),
        .s_ready_i2_out(s_ready_i2_out),
        .state_reg(state_reg),
        .tready_or_decode_err(tready_or_decode_err));
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
