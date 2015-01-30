----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:25:43 01/28/2012 
-- Design Name: 
-- Module Name:    miniCTR - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_misc.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;
Library UNIMACRO;
use UNIMACRO.vcomponents.all;

entity DAQ_Link_7S is
		Generic (
-- REFCLK frequency, select one among 100, 125, 200 and 250
-- If your REFCLK frequency is not in the list, please contact wusx@bu.edu
					 F_REFCLK	: integer	:= 125;
					 SYSCLK_IN_period : integer := 10; -- unit is ns
-- If you do not use the trigger port, set it to false
					 USE_TRIGGER_PORT : boolean := true;
					 simulation : boolean := false);
    Port ( 
           reset : in  STD_LOGIC; -- asynchronous reset, assert reset until GTX REFCLK stable
-- GTX signals
           GTX_REFCLK : in  STD_LOGIC;
           GTX_RXN : in  STD_LOGIC;
           GTX_RXP : in  STD_LOGIC;
           GTX_TXN : out  STD_LOGIC;
           GTX_TXP : out  STD_LOGIC;
-- TRIGGER port
           TTCclk : in  STD_LOGIC;
           BcntRes : in  STD_LOGIC;
           trig : in  STD_LOGIC_VECTOR (7 downto 0);
-- TTS port
           TTSclk : in  STD_LOGIC; -- clock source which clocks TTS signals
           TTS : in  STD_LOGIC_VECTOR (3 downto 0);
-- SYSCLK_IN is required by the GTX ip core, you can connect any clock source(e.g. TTSclk, TTCclk or EventDataClk) as long as its period is in the range of 8-250ns
-- do not forget to specify its period in the generic port
           SYSCLK_IN : in  STD_LOGIC;
-- Data port
					 EventDataClk : in  STD_LOGIC;
           EventData_valid : in  STD_LOGIC; -- used as data write enable
           EventData_header : in  STD_LOGIC; -- first data word
           EventData_trailer : in  STD_LOGIC; -- last data word
           EventData : in  STD_LOGIC_VECTOR (63 downto 0);
           AlmostFull : out  STD_LOGIC; -- buffer almost full
           Ready : out  STD_LOGIC);
end DAQ_Link_7S;

architecture Behavioral of DAQ_Link_7S is
COMPONENT crc16D16
	PORT(
		clk : IN std_logic;
		init_crc : IN std_logic;
		we_crc : IN std_logic;
		d : IN std_logic_vector(15 downto 0);          
		crc : OUT std_logic_vector(15 downto 0)
		);
END COMPONENT;
COMPONENT EthernetCRCD32
	PORT(
		clk : IN std_logic;
		init : IN std_logic;
		ce : IN std_logic;
		d : IN std_logic_vector(31 downto 0);          
		crc : OUT std_logic_vector(31 downto 0);
		bad_crc : OUT std_logic
		);
END COMPONENT;
COMPONENT TTS_TRIG_if
	Generic (USE_TRIGGER_PORT : boolean := true);
	PORT(
		reset : IN std_logic;
		UsrClk : IN std_logic;
		TTCclk : IN std_logic;
		BcntRes : IN std_logic;
		trig : IN std_logic_vector(7 downto 0);
		TTSclk : IN std_logic;
		TTS : IN std_logic_vector(3 downto 0);
		RXCHARISK : IN std_logic_vector(1 downto 0);
		RXDATA : IN std_logic_vector(15 downto 0);          
		sel_TTS_TRIG : OUT std_logic;
		TTS_TRIG_data : OUT std_logic_vector(17 downto 0)
		);
END COMPONENT;
component DAQLINK_7S_init 
generic
(
    -- Simulation attributes
    EXAMPLE_SIM_GTRESET_SPEEDUP    : string    := "FALSE";    -- Set to 1 to speed up sim reset
    EXAMPLE_SIMULATION             : integer   := 0;          -- Set to 1 for simulation
    STABLE_CLOCK_PERIOD            : integer   := 16;    --Period of the stable clock driving this state-machine, unit is [ns]
    EXAMPLE_USE_CHIPSCOPE          : integer   := 0;           -- Set to 1 to use Chipscope to drive resets
		-- REFCLK frequency, select one among 100, 125, 200 and 250 If your REFCLK frequency is not in the list, please contact wusx@bu.edu
		F_REFCLK																: integer		 := 125

);
port
(
    SYSCLK_IN                               : in   std_logic;
    SOFT_RESET_IN                           : in   std_logic;
    DONT_RESET_ON_DATA_ERROR_IN             : in   std_logic;
    GT0_TX_FSM_RESET_DONE_OUT               : out  std_logic;
    GT0_RX_FSM_RESET_DONE_OUT               : out  std_logic;
    GT0_DATA_VALID_IN                       : in   std_logic;

    --_________________________________________________________________________
    --GT0  (X1Y0)
    --____________________________CHANNEL PORTS________________________________
    --------------------------------- CPLL Ports -------------------------------
    GT0_CPLLFBCLKLOST_OUT                   : out  std_logic;
    GT0_CPLLLOCK_OUT                        : out  std_logic;
    GT0_CPLLLOCKDETCLK_IN                   : in   std_logic;
    GT0_CPLLRESET_IN                        : in   std_logic;
    -------------------------- Channel - Clocking Ports ------------------------
    GT0_GTREFCLK0_IN                        : in   std_logic;
    ---------------------------- Channel - DRP Ports  --------------------------
    GT0_DRPADDR_IN                          : in   std_logic_vector(8 downto 0);
    GT0_DRPCLK_IN                           : in   std_logic;
    GT0_DRPDI_IN                            : in   std_logic_vector(15 downto 0);
    GT0_DRPDO_OUT                           : out  std_logic_vector(15 downto 0);
    GT0_DRPEN_IN                            : in   std_logic;
    GT0_DRPRDY_OUT                          : out  std_logic;
    GT0_DRPWE_IN                            : in   std_logic;
    ------------------------------- Loopback Ports -----------------------------
    GT0_LOOPBACK_IN                         : in   std_logic_vector(2 downto 0);
    --------------------- RX Initialization and Reset Ports --------------------
    GT0_RXUSERRDY_IN                        : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    GT0_EYESCANDATAERROR_OUT                : out  std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    GT0_RXCDRLOCK_OUT                       : out  std_logic;
    ------------------- Receive Ports - Clock Correction Ports -----------------
    GT0_RXCLKCORCNT_OUT                     : out  std_logic_vector(1 downto 0);
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    GT0_RXUSRCLK_IN                         : in   std_logic;
    GT0_RXUSRCLK2_IN                        : in   std_logic;
    ------------------ Receive Ports - FPGA RX interface Ports -----------------
    GT0_RXDATA_OUT                          : out  std_logic_vector(15 downto 0);
    ------------------- Receive Ports - Pattern Checker Ports ------------------
    GT0_RXPRBSERR_OUT                       : out  std_logic;
    GT0_RXPRBSSEL_IN                        : in   std_logic_vector(2 downto 0);
    ------------------- Receive Ports - Pattern Checker ports ------------------
    GT0_RXPRBSCNTRESET_IN                   : in   std_logic;
    ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
    GT0_RXDISPERR_OUT                       : out  std_logic_vector(1 downto 0);
    GT0_RXNOTINTABLE_OUT                    : out  std_logic_vector(1 downto 0);
    --------------------------- Receive Ports - RX AFE -------------------------
    GT0_GTXRXP_IN                           : in   std_logic;
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    GT0_GTXRXN_IN                           : in   std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    GT0_RXMCOMMAALIGNEN_IN                  : in   std_logic;
    GT0_RXPCOMMAALIGNEN_IN                  : in   std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    GT0_GTRXRESET_IN                        : in   std_logic;
    GT0_RXPMARESET_IN                       : in   std_logic;
    ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
    GT0_RXCHARISCOMMA_OUT                   : out  std_logic_vector(1 downto 0);
    GT0_RXCHARISK_OUT                       : out  std_logic_vector(1 downto 0);
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    GT0_RXRESETDONE_OUT                     : out  std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    GT0_GTTXRESET_IN                        : in   std_logic;
    GT0_TXUSERRDY_IN                        : in   std_logic;
    ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
    GT0_TXUSRCLK_IN                         : in   std_logic;
    GT0_TXUSRCLK2_IN                        : in   std_logic;
    --------------- Transmit Ports - TX Configurable Driver Ports --------------
    GT0_TXDIFFCTRL_IN                       : in   std_logic_vector(3 downto 0);
    ------------------ Transmit Ports - TX Data Path interface -----------------
    GT0_TXDATA_IN                           : in   std_logic_vector(15 downto 0);
    ---------------- Transmit Ports - TX Driver and OOB signaling --------------
    GT0_GTXTXN_OUT                          : out  std_logic;
    GT0_GTXTXP_OUT                          : out  std_logic;
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    GT0_TXOUTCLK_OUT                        : out  std_logic;
    GT0_TXOUTCLKFABRIC_OUT                  : out  std_logic;
    GT0_TXOUTCLKPCS_OUT                     : out  std_logic;
    --------------------- Transmit Ports - TX Gearbox Ports --------------------
    GT0_TXCHARISK_IN                        : in   std_logic_vector(1 downto 0);
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    GT0_TXRESETDONE_OUT                     : out  std_logic;
    ------------------ Transmit Ports - pattern Generator Ports ----------------
    GT0_TXPRBSSEL_IN                        : in   std_logic_vector(2 downto 0);
   

    --____________________________COMMON PORTS________________________________
    ---------------------- Common Block  - Ref Clock Ports ---------------------
    GT0_GTREFCLK0_COMMON_IN                 : in   std_logic;
    ------------------------- Common Block - QPLL Ports ------------------------
    GT0_QPLLLOCK_OUT                        : out  std_logic;
    GT0_QPLLLOCKDETCLK_IN                   : in   std_logic;
    GT0_QPLLRESET_IN                        : in   std_logic


);
end component;
COMPONENT FIFO_RESET_7S
	PORT(
		reset : IN std_logic;
		clk : IN std_logic;          
		fifo_rst : OUT std_logic;
		fifo_en : OUT std_logic
		);
END COMPONENT;
function GTXRESET_SPEEDUP(is_sim : boolean) return string is
	begin
		if(is_sim)then
			return "TRUE";
		else
			return "FALSE";
		end if;
	end function;
constant N : integer := 8;
constant Acknowledge : std_logic_vector(7 downto 0) := x"12";
constant version : std_logic_vector(7 downto 0) := x"03";
constant data : std_logic_vector(7 downto 0) := x"34";
constant InitRqst : std_logic_vector(7 downto 0) := x"56";
constant Counter : std_logic_vector(7 downto 0) := x"78";
constant K_word : std_logic_vector(15 downto 0) := x"3cbc"; -- sequence K28.5 K28.1
constant R_word : std_logic_vector(15 downto 0) := x"dcfb"; -- sequence K27.7 K28.6
constant eof_word : std_logic_vector(15 downto 0) := x"5cf7"; -- sequence K23.7 K28.2
constant IDLE : std_logic_vector(3 downto 0) := x"0"; -- TxState
constant SendK : std_logic_vector(3 downto 0) := x"1"; -- TxState sending comma
constant SendType : std_logic_vector(3 downto 0) := x"2"; -- TxState sending event data words
constant SendSEQ : std_logic_vector(3 downto 0) := x"3"; -- TxState sending sequence number
constant SendWC : std_logic_vector(3 downto 0) := x"4"; -- TxState sending payload word count
constant WaitCRC : std_logic_vector(3 downto 0) := x"5"; -- TxState same as IDLE
constant WaitData : std_logic_vector(3 downto 0) := x"6"; -- TxState same as IDLE, used during sending packets
constant SendCRC : std_logic_vector(3 downto 0) := x"7"; -- TxState sending CRC
constant SendData : std_logic_vector(3 downto 0) := x"8"; -- TxState sending event data words
constant SendCntr : std_logic_vector(3 downto 0) := x"9"; -- TxState sending event data words
constant SendEOF : std_logic_vector(3 downto 0) := x"a"; -- TxState sending EOF
signal TxState: std_logic_vector(3 downto 0) := (others => '0');
--signal w : positive := 16;
signal sel_TTS_TRIG : std_logic := '0';
signal bcnt_err_cnt : std_logic_vector(3 downto 0) := (others => '0');
signal UsrClk : std_logic := '0';
signal reset_SyncRegs : std_logic_vector(3 downto 0) := (others => '0');
signal RxResetDoneSyncRegs : std_logic_vector(2 downto 0) := (others => '0');
--signal rst_cdr : std_logic := '0';
signal DATA_VALID : std_logic := '0';
--signal rst_wait : std_logic := '0';
signal RXNOTINTABLE : std_logic_vector(1 downto 0) := (others => '0');
--signal wait_cntr : std_logic_vector(16 downto 0) := (others => '0');
signal UsrClkDiv : std_logic_vector(1 downto 0) := (others => '0');
signal TTS_TRIG_data : std_logic_vector(17 downto 0) := (others => '0');
signal fifo_reset : std_logic := '0';
signal AlmostFull_i : std_logic := '0';
signal AlmostFull_sync : std_logic_vector(2 downto 0) := (others => '0');
signal Init_EventCRC : std_logic := '0';
signal ce_EventCRC : std_logic := '0';
signal EventCRC_d : std_logic_vector(31 downto 0) := (others => '0');
signal EventCRC : std_logic_vector(31 downto 0) := (others => '0');
signal BoE : std_logic := '0';
signal EoE : std_logic := '0';
--type ram_32768X17 is array(0 to 32767) of std_logic_vector(16 downto 0);
--signal dataBufRAM : ram_32768X17;
signal FillDataBuf : std_logic := '0';
signal dataBuf_WrEn : std_logic := '0';
signal DataBuf_wa : std_logic_vector(14 downto 0) := (others => '0');
signal DataBuf_ra : std_logic_vector(14 downto 0) := (others => '0');
signal DataBuf_start : std_logic_vector(14 downto 0) := (others => '0');
signal DataBuf_Din : std_logic_vector(16 downto 0) := (others => '0');
--signal DataBuf_Do : std_logic_vector(16 downto 0) := (others => '0');
signal DataBuf_Dout : std_logic_vector(16 downto 0) := (others => '0');
signal ec_DataBuf_ra : std_logic := '0';
signal ec_DataBuf_ra_q : std_logic := '0';
signal DataBuf_full : std_logic := '0';
signal DataBuf_used : std_logic_vector(14 downto 0) := (others => '0');
signal DataBuf_wc : std_logic_vector(14 downto 0) := (others => '0');
signal ReSendQueOut_q : std_logic_vector(14 downto 0) := (others => '0');
signal ReSendQue_a : std_logic_vector(1 downto 0) := (others => '1');
signal ReSendQue_empty : std_logic := '1';
signal we_DataPipe : std_logic := '0';
signal DataPipeDo : std_logic_vector(16 downto 0) := (others => '0');
signal DataPipe_a : std_logic_vector(3 downto 0) := (others => '1');
signal DataPipe_empty : std_logic := '1';
signal EventStatus_empty : std_logic := '1';
signal DataPipe_full : std_logic := '0';
signal InitLink : std_logic := '0';
signal InitACK : std_logic := '0';
signal ReSend : std_logic := '0';
signal Ready_i : std_logic := '1';
signal FoundEOF : std_logic := '0';
signal ACK : std_logic := '0';
signal CntrACK : std_logic := '0';
signal L1Aabort : std_logic := '0';
signal timer : std_logic_vector(N downto 0) := (others => '0');
signal we_ReSendQue : std_logic := '0';
signal we_TxCRC : std_logic := '0';
signal Init_TxCRC : std_logic := '0';
signal R_word_cnt : std_logic_vector(11 downto 0) := (others => '0');
signal TxCRC : std_logic_vector(15 downto 0) := (others => '0');
signal R_word_sent : std_logic := '0';
signal sel_cntr : std_logic := '0';
signal we_TxFIFO : std_logic := '0';
signal TxFIFO_empty : std_logic := '0';
signal TxFIFO_full : std_logic := '0';
signal TxFIFO_a : std_logic_vector(3 downto 0) := (others => '1');
signal TxFIFO_Dip : std_logic_vector(15 downto 0) := (others => '0');
signal TxFIFO_Di : std_logic_vector(16 downto 0) := (others => '0');
signal TxFIFO_Do : std_logic_vector(16 downto 0) := (others => '0');
signal packet_wc : std_logic_vector(15 downto 0) := (others => '0');
signal ACKNUM_IN : std_logic_vector(7 downto 0) := x"00";
signal RxSEQNUM : std_logic_vector(7 downto 0) := x"00";
signal SEQNUM : std_logic_vector(7 downto 0) := x"00";
signal NextSEQNUM : std_logic_vector(7 downto 0) := x"00";
signal ACKNUM : std_logic_vector(7 downto 0) := (others => '0');
signal bad_K : std_logic := '0';
signal SEQ_OK : std_logic := '0';
signal IllegalSeq : std_logic := '0';
signal CRC_OK : std_logic := '0';
signal frame_OK : std_logic := '0';
signal TypeInit : std_logic := '0';
signal TypeACK : std_logic := '0';
signal TypeData : std_logic := '0';
signal TypeCntr : std_logic := '0';
signal Receiving : std_logic := '0';
signal Header2 : std_logic := '0';
signal TxType : std_logic_vector(7 downto 0) := (others => '0');
signal AMC_ID : std_logic_vector(7 downto 0) := (others => '0');
signal RxType : std_logic_vector(15 downto 0) := (others => '0');
signal RxWC : std_logic_vector(2 downto 0) := (others => '0');
signal check_packet : std_logic := '0';
signal WC_OKp : std_logic := '0';
signal WC_OK : std_logic := '0';
signal L1Ainfo : std_logic := '0';
signal ACK_OK : std_logic := '0';
signal we_ACKNUM : std_logic := '0';
signal accept : std_logic := '0';
signal IsACK : std_logic := '0';
signal IsCntr : std_logic := '0';
signal IsData : std_logic := '0';
signal CntrSent : std_logic := '0';
--signal PacketLength : std_logic_vector(11 downto 0) := (others => '0');
signal ReSendQueIn : std_logic_vector(27 downto 0) := (others => '0');
signal ReSendQueOut : std_logic_vector(27 downto 0) := (others => '0');
signal ACKNUM_full : std_logic := '0';
signal ACKNUM_empty : std_logic := '1';
signal AMC_info : std_logic_vector(7 downto 0) := (others => '0');
signal ACKNUM_l : std_logic_vector(7 downto 0) := (others => '0');
signal ACKNUM_a : std_logic_vector(1 downto 0) := (others => '1');
signal we_RxCRC : std_logic := '0';
signal Init_RxCRC : std_logic := '0';
signal RxCRC : std_logic_vector(15 downto 0) := (others => '0');
--type ram_1024X16 is array(0 to 1023) of std_logic_vector(15 downto 0);
--signal AMCinfoRAM : ram_1024X16;
signal AMCinfo_WrEn : std_logic := '0';
signal AMCinfo_wa : std_logic_vector(9 downto 0) := (others => '0');
signal AMCinfo_sel : std_logic_vector(2 downto 0) := (others => '0');
signal AMCinfo_Di : std_logic_vector(15 downto 0) := (others => '0');
signal AMCinfo_Do : std_logic_vector(15 downto 0) := (others => '0');
--signal AMCinfo : std_logic_vector(15 downto 0) := (others => '0');
signal evnLSB : std_logic_vector(7 downto 0) := (others => '0');
signal bad_ID : std_logic := '0';
signal AMC_header : std_logic := '0';
--signal AMC_header_Index : std_logic_vector(2 downto 0) := (others => '0');
--signal L1AinfoRAM : ram_1024X16;
signal L1Ainfo_WrEn : std_logic := '0';
signal OldL1Ainfo_wa : std_logic_vector(7 downto 0) := (others => '0');
signal L1Ainfo_wa : std_logic_vector(9 downto 0) := (others => '0');
signal info_ra : std_logic_vector(9 downto 0) := (others => '0');
signal L1Ainfo_Di : std_logic_vector(15 downto 0) := (others => '0');
signal L1Ainfo_Do : std_logic_vector(15 downto 0) := (others => '0');
signal L1Ainfo_empty : std_logic := '1';
signal RxL1Ainfo : std_logic := '0';
signal AMCinfo_empty : std_logic := '1';
signal ce_info_ra : std_logic := '0';
--signal ce_AMCinfo_ra : std_logic := '0';
signal check_L1Ainfo : std_logic := '0';
signal check_L1Ainfo_q : std_logic := '0';
signal L1AinfoMM : std_logic := '0';
signal info_ra_q : std_logic_vector(1 downto 0) := (others => '0');
signal we_EventStatus : std_logic := '0';
signal EventData2Send : std_logic := '0';
signal UnknownEventLength : std_logic := '1';
signal bad_EventLength : std_logic := '1';
signal EventLength : std_logic_vector(19 downto 0) := (others => '0');
signal EventWC : std_logic_vector(19 downto 0) := (others => '0');
signal EventCnt : std_logic_vector(4 downto 0) := (others => '0');
signal WrEventCnt : std_logic_vector(4 downto 0) := (others => '0');
signal RdEventCnt : std_logic_vector(4 downto 0) := (others => '0');
signal EventStatus : std_logic_vector(7 downto 0) := (others => '0');
signal EventStatus_Di : std_logic_vector(7 downto 0) := (others => '0');
signal EventStatusCnt : std_logic_vector(4 downto 0) := (others => '1');
signal EventStatus_wa : std_logic_vector(4 downto 0) := (others => '1');
signal EventStatus_ra : std_logic_vector(4 downto 0) := (others => '1');
signal idle_cntr : std_logic_vector(3 downto 0) := (others => '0');
signal CntrTimeout : std_logic := '0';
signal cntr_timer : std_logic_vector(15 downto 0) := (others => '0');
signal cntrs : std_logic_vector(15 downto 0) := (others => '0');
signal cntr0 : std_logic_vector(15 downto 0) := (others => '0');
signal cntr1 : std_logic_vector(15 downto 0) := (others => '0');
signal cntr2 : std_logic_vector(15 downto 0) := (others => '0');
signal cntr3 : std_logic_vector(15 downto 0) := (others => '0');
signal cntr4 : std_logic_vector(15 downto 0) := (others => '0');
signal cntr5 : std_logic_vector(15 downto 0) := (others => '0');
signal cntr6 : std_logic_vector(15 downto 0) := (others => '0');
signal cntr7 : std_logic_vector(15 downto 0) := (others => '0');
signal cntr8 : std_logic_vector(15 downto 0) := (others => '0');
signal cntr9 : std_logic_vector(15 downto 0) := (others => '0');
signal cntra : std_logic_vector(15 downto 0) := (others => '0');
signal cntrb : std_logic_vector(15 downto 0) := (others => '0');
signal cntrc : std_logic_vector(15 downto 0) := (others => '0');
signal cntrd : std_logic_vector(15 downto 0) := (others => '0');
signal cntre : std_logic_vector(15 downto 0) := (others => '0');
signal cntrf : std_logic_vector(15 downto 0) := (others => '0');
signal input_word_cntr : std_logic_vector(15 downto 0) := (others => '0');
signal input_header_cntr : std_logic_vector(15 downto 0) := (others => '0');
signal input_trailer_cntr : std_logic_vector(15 downto 0) := (others => '0');
signal input_evnErr_cntr : std_logic_vector(15 downto 0) := (others => '0');
signal input_evn : std_logic_vector(23 downto 0) := (others => '0');
signal sample_sync : std_logic_vector(3 downto 0) := (others => '0');
signal sample : std_logic := '0';
signal FIFO_ovf : std_logic := '0';
--signal RXENPCOMMAALIGN : std_logic := '0';
--signal RXENMCOMMAALIGN : std_logic := '0';
signal cplllock : std_logic := '0';
--signal RXCDRRESET : std_logic := '0';
signal TXOUTCLK : std_logic := '0';
signal RxResetDone : std_logic := '0';
--signal RxPllLock : std_logic := '0';
signal txfsmresetdone : std_logic := '0';
--signal mgtrefclkrx : std_logic_vector(1 downto 0) := (others => '0');
signal LoopBack : std_logic_vector(2 downto 0) := (others => '0');
signal RXCHARISCOMMA : std_logic_vector(1 downto 0) := (others => '0');
signal RXCHARISK : std_logic_vector(1 downto 0) := (others => '0');
--signal RXLOSSOFSYNC : std_logic_vector(1 downto 0) := (others => '0');
signal RXDATA : std_logic_vector(15 downto 0) := (others => '0');
--signal TXPOSTEMPHASIS : std_logic_vector(4 downto 0) := (others => '0');
--signal TXPREEMPHASIS : std_logic_vector(3 downto 0) := (others => '0');
--signal RXEQMIX : std_logic_vector(2 downto 0) := (others => '0');
signal TXDIFFCTRL : std_logic_vector(3 downto 0) := x"b"; -- 790mV drive
signal TXCHARISK : std_logic_vector(1 downto 0) := (others => '0');
signal TXDATA : std_logic_vector(15 downto 0) := (others => '0');
signal RXCHARISK_q : std_logic_vector(1 downto 0) := (others => '1');
signal RXCHARISCOMMA_q : std_logic_vector(1 downto 0) := (others => '1');
--signal RXLOSSOFSYNC_q : std_logic_vector(1 downto 0) := (others => '1');
signal RXDATA_q : std_logic_vector(15 downto 0) := (others => '1');
signal FIFO_rst : std_logic := '0';
signal FIFO_en : std_logic := '0';
signal DataFIFO_EMPTY : std_logic := '0';
signal DataFIFO_WRERR : std_logic := '0';
signal DataFIFO_RdEn : std_logic := '0';
signal DataFIFO_WrEn : std_logic := '0';
signal DataFIFO_di : std_logic_vector(65 downto 0) := (others => '0');
signal DataFIFO_do : std_logic_vector(65 downto 0) := (others => '0');
signal RDCOUNT : std_logic_vector(8 downto 0) := (others => '0');
signal WRCOUNT : std_logic_vector(8 downto 0) := (others => '0');
begin
Ready <= fifo_en;
AlmostFull <= AlmostFull_i;
i_FIFO_RESET_7S: FIFO_RESET_7S PORT MAP(
		reset => fifo_reset,
		clk => EventDataClk,
		fifo_rst => fifo_rst,
		fifo_en => fifo_en
	);
fifo_reset <= not Ready_i;
i_DataFIFO : FIFO_DUALCLOCK_MACRO
   generic map (
      DEVICE => "7SERIES",            -- Target Device: "VIRTEX5", "VIRTEX6", "7SERIES" 
      ALMOST_FULL_OFFSET => X"0008",  -- Sets almost full threshold
      ALMOST_EMPTY_OFFSET => X"0080", -- Sets the almost empty threshold
      DATA_WIDTH => 66,   -- Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      FIFO_SIZE => "36Kb",            -- Target BRAM, "18Kb" or "36Kb" 
      FIRST_WORD_FALL_THROUGH => TRUE) -- Sets the FIFO FWFT to TRUE or FALSE
   port map (
      ALMOSTEMPTY => open,   -- 1-bit output almost empty
      ALMOSTFULL => AlmostFull_i,     -- 1-bit output almost full
      DO => DataFIFO_do,                     -- Output data, width defined by DATA_WIDTH parameter
      EMPTY => DataFIFO_EMPTY,               -- 1-bit output empty
      FULL => open,                 -- 1-bit output full
      RDCOUNT => RDCOUNT,           -- Output read count, width determined by FIFO depth
      RDERR => open,               -- 1-bit output read error
      WRCOUNT => WRCOUNT,           -- Output write count, width determined by FIFO depth
      WRERR => DataFIFO_WRERR,               -- 1-bit output write error
      DI => DataFIFO_di,                     -- Input data, width defined by DATA_WIDTH parameter
      RDCLK => UsrClk,               -- 1-bit input read clock
      RDEN => DataFIFO_RdEn,                 -- 1-bit input read enable
      RST => FIFO_rst,                   -- 1-bit input reset
      WRCLK => EventDataClk,               -- 1-bit input write clock
      WREN => DataFIFO_WrEn                  -- 1-bit input write enable
   );
DataFIFO_WrEn <= FIFO_en and EventData_valid;
DataFIFO_di <= EventData_header & EventData_trailer & EventData;
process(UsrClk)
begin
	if(UsrClk'event and UsrClk = '1')then
		UsrClkDiv <= UsrClkDiv + 1;
		if(UsrClkDiv(1) = '0')then
			EventCRC_d <= DataFIFO_do(31 downto 0);
		elsif(DataFIFO_do(65) = '1')then
			EventCRC_d <= x"0" & AMC_ID(3 downto 0) & DataFIFO_do(55 downto 32);
		else
			EventCRC_d <= DataFIFO_do(63 downto 32);
		end if;
		if(DataFIFO_do(65) = '1' and DataFIFO_RdEn = '1')then
			EventLength <= DataFIFO_do(19 downto 0);
		end if;
		if(DataFIFO_RdEn = '1')then
			if(DataFIFO_do(65) = '1')then
				EventWC <= x"00002";
			else
				EventWC <= EventWC + 1;
			end if;
		end if;
		UnknownEventLength <= and_reduce(EventLength);
		if(DataFIFO_RdEn = '1' and DataFIFO_do(64) = '1' and (EventWC /= DataFIFO_do(19 downto 0) or (UnknownEventLength = '0' and EventLength /= EventWC)))then
			bad_EventLength <= '1';
		else
			bad_EventLength <= '0';
		end if;
		Init_EventCRC <= not UsrClkDiv(1) and not UsrClkDiv(0) and DataFIFO_do(65);
		if(FIFO_en = '0' or InitLink = '1' or DataFIFO_EMPTY = '1')then
			FillDataBuf <= '0';
		elsif(UsrClkDiv = "00")then
			if(DataBuf_full = '1' or EventCnt(4 downto 3) = "11")then
				FillDataBuf <= '0';
			else
				FillDataBuf <= '1';
			end if;
		end if;
		ce_EventCRC <= UsrClkDiv(0) and FillDataBuf;
		DataFIFO_RdEn <= UsrClkDiv(1) and not UsrClkDiv(0) and FillDataBuf and FIFO_en;
		DataBuf_wrEn <= FillDataBuf;
		BoE <= DataFIFO_do(65);
		EoE <= DataFIFO_do(64);
		if(BoE = '1' and ce_EventCRC = '1')then
			evnLSB <= EventCRC_d(7 downto 0);
		end if;
		if(EventCRC_d(31 downto 24) = evnLSB)then
			bad_ID <= '0';
		else
			bad_ID <= '1';
		end if;
		if(UsrClkDiv(0) = '1')then
			if(EoE = '1' and UsrClkDiv(1) = '1')then
				DataBuf_Din(15 downto 0) <= EventCRC(15 downto 0);
			else
				DataBuf_Din(15 downto 0) <= EventCRC_d(15 downto 0);
			end if;
		elsif(BoE = '1' and UsrClkDiv(1) = '0')then
			DataBuf_Din(15 downto 0) <= x"0" & AMC_ID(3 downto 0) & EventCRC_d(23 downto 16);
		elsif(EoE = '1' and UsrClkDiv(1) = '1')then
			DataBuf_Din(15 downto 0) <= EventCRC_d(31 downto 24) & x"0" & EventCRC_d(19 downto 16);
		elsif(EoE = '1' and UsrClkDiv(1) = '0')then
			DataBuf_Din(15 downto 0) <= EventCRC(31 downto 16);
		else
			DataBuf_Din(15 downto 0) <= EventCRC_d(31 downto 16);
		end if;
		DataBuf_Din(16) <= not UsrClkDiv(1) and not UsrClkDiv(0) and EoE;
	end if;
end process;
i_EventCRC: EthernetCRCD32 PORT MAP(
		clk => UsrClk,
		init => Init_EventCRC,
		ce => ce_EventCRC,
		d => EventCRC_d,
		crc => EventCRC,
		bad_crc => open
	);
process(UsrClk,RxResetDone)
begin
	if(RxResetDone = '0')then
		RxResetDoneSyncRegs <= (others => '0');
	elsif(UsrClk'event and UsrClk = '1')then
		RxResetDoneSyncRegs <= RxResetDoneSyncRegs(1 downto 0) & '1';
	end if;
end process;
process(UsrClk,reset,RxResetDone,txfsmresetdone,cplllock)
begin
	if(reset = '1' or RXRESETDONE = '0' or txfsmresetdone = '0' or cplllock = '0')then
		reset_SyncRegs <= (others => '1');
	elsif(UsrClk'event and UsrClk = '1')then
		reset_SyncRegs <= reset_SyncRegs(2 downto 0) & '0';
	end if;
end process;
process(UsrClk)
begin
	if(UsrClk'event and UsrClk = '1')then
		if(RxResetDoneSyncRegs(2) = '0' or or_reduce(RXNOTINTABLE) = '1' or bad_K = '1')then
			DATA_VALID <= '0';
		elsif(RXCHARISK(0) = '1' and RXDATA(7 downto 0) = x"bc")then
			DATA_VALID <= '1';
		end if;
		RXCHARISCOMMA_q <= RXCHARISCOMMA;
		RXCHARISK_q <= RXCHARISK;
		RXDATA_q <= RXDATA;
	end if;
end process;
process(EventDataClk,reset,InitLink)
begin
	if(reset = '1' or InitLink = '1')then
		sample_sync <= (others => '0');
		FIFO_ovf <= '0';
		cntrc <= (others => '0');
		cntrd <= (others => '0');
		cntre <= (others => '0');
		cntrf <= (others => '0');
		input_word_cntr <= (others => '0');
		input_header_cntr <= (others => '0');
		input_trailer_cntr <= (others => '0');
		input_evnErr_cntr <= (others => '0');
		input_evn <= x"000001";
	elsif(EventDataClk'event and EventDataClk = '1')then
		sample_sync <= sample_sync(2 downto 0) & sample;
		if(DataFIFO_WRERR = '1')then
			FIFO_ovf <= '1';
		end if;
		if(dataFIFO_WrEn = '1')then
			input_word_cntr <= input_word_cntr + 1;
			if(DataFIFO_di(65) = '1')then
				input_header_cntr <= input_header_cntr + 1;
				input_evn <= DataFIFO_di(55 downto 32);
				if(DataFIFO_di(55 downto 32) /= input_evn)then
					input_evnErr_cntr <= input_evnErr_cntr + 1;
				end if;
			end if;
			if(DataFIFO_di(64) = '1')then
				input_trailer_cntr <= input_trailer_cntr + 1;
				input_evn <= input_evn + 1;
			end if;
		end if;
		if(sample_sync(3) /= sample_sync(2))then -- update after Counters sent
			cntrc <= input_word_cntr;
			cntrd <= input_header_cntr;
			cntre <= input_trailer_cntr;
			cntrf <= input_evnErr_cntr;
		end if;
	end if;
end process;
process(UsrClk)
begin
	if(UsrClk'event and UsrClk = '1')then
		if(InitLink = '1')then
			DataBuf_wa <= (others => '0');
		elsif(DataBuf_wrEn = '1')then
			DataBuf_wa <= DataBuf_wa + 1;
		end if;
		if(InitLink = '1')then
			ReSendQueOut_q <= (others => '0');
		elsif(ReSendQue_a /= "11")then
			ReSendQueOut_q <= ReSendQueOut(14 downto 0);
		end if;
		DataBuf_used <= DataBuf_wa - ReSendQueOut_q;
		DataBuf_wc <= DataBuf_wa - DataBuf_ra;
		ec_DataBuf_ra_q <= ec_DataBuf_ra and not Resend;
		if(or_reduce(DataBuf_wc(14 downto 2)) = '0' and (DataBuf_wc(1 downto 0) = "00" or ec_DataBuf_ra = '1' or ec_DataBuf_ra_q = '1'))then
			ec_DataBuf_ra <= '0';
		else
			ec_DataBuf_ra <= not DataPipe_full and not Resend;
		end if;
		DataBuf_full <= and_reduce(DataBuf_used(14 downto 3));
		we_DataPipe <= ec_DataBuf_ra_q and not Resend;
		if(InitLink = '1' or Resend = '1')then
			DataPipe_a <= (others => '1');
		elsif(we_DataPipe = '1' and (TxFIFO_full = '1' or TxState /= SendData))then
			DataPipe_a <= DataPipe_a + 1;
		elsif(we_DataPipe = '0' and TxFIFO_full = '0' and TxState = SendData)then
			DataPipe_a <= DataPipe_a - 1;
		end if;
		if(DataPipe_a = x"f" or Resend = '1' or (DataPipe_a = x"0" and TxFIFO_full = '0' and TxState = SendData))then
			DataPipe_empty <= '1';
		else
			DataPipe_empty <= '0';
		end if;
		case DataPipe_a is
			when x"e" | x"d" | x"c"  | x"b" | x"a"  | x"9" | x"8" => DataPipe_full <= '1';
			when others => DataPipe_full <= '0';
		end case;
		if(Ready_i = '0' or InitLink = '1')then
			WrEventCnt <= (others => '0');
		elsif(DataBuf_Din(16) = '1' and DataBuf_wrEn = '1')then
			WrEventCnt <= WrEventCnt + 1;
		end if;
		if(Ready_i = '0' or InitLink = '1')then
			RdEventCnt <= (others => '0');
		elsif(ReSend = '1')then
			RdEventCnt <= ReSendQueOut(27 downto 23);
		elsif(TxState = SendEOF and TxFIFO_full = '0')then
			RdEventCnt <= RdEventCnt + 1;
		end if;
		if(WrEventCnt = RdEventCnt and DataBuf_wc(14 downto 12) = "000")then
			EventData2Send <= '0';
		else
			EventData2Send <= '1';
		end if;
		EventCnt <= WrEventCnt - RdEventCnt;
	end if;
end process;
g_DataBufPipe: for i in 0 to 16 generate
   i_DataBuf : BRAM_SDP_MACRO
   generic map (
      BRAM_SIZE => "36Kb", -- Target BRAM, "18Kb" or "36Kb" 
      DEVICE => "7SERIES", -- Target device: "VIRTEX5", "VIRTEX6", "7SERIES", "SPARTAN6" 
      WRITE_WIDTH => 1,    -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH => 1,     -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      DO_REG => 1) -- Optional output register (0 or 1)
    port map (
      DO => DataBuf_Dout(i downto i),         -- Output read data port, width defined by READ_WIDTH parameter
      DI => DataBuf_Din(i downto i),         -- Input write data port, width defined by WRITE_WIDTH parameter
      RDADDR => DataBuf_ra, -- Input read address, width defined by read port depth
      RDCLK => UsrClk,   -- 1-bit input read clock
      RDEN => '1',     -- 1-bit input read port enable
      REGCE => '1',   -- 1-bit input read output register enable
      RST => '0',       -- 1-bit input reset 
      WE => "1",         -- Input write enable, width defined by write port depth
      WRADDR => DataBuf_wa, -- Input write address, width defined by write port depth
      WRCLK => UsrClk,   -- 1-bit input write clock
      WREN => DataBuf_WrEn      -- 1-bit input write port enable
   );
   i_DataPipe : SRL16E
   port map (
      Q => DataPipeDo(i),       -- SRL data output
      A0 => DataPipe_a(0),     -- Select[0] input
      A1 => DataPipe_a(1),     -- Select[1] input
      A2 => DataPipe_a(2),     -- Select[2] input
      A3 => DataPipe_a(3),     -- Select[3] input
      CE => we_DataPipe,     -- Clock enable input
      CLK => UsrClk,   -- Clock input
      D => DataBuf_Dout(i)        -- SRL data input
   );
end generate;
g_TxFIFO : for i in 0 to 16 generate
   i_TxFIFO : SRL16E
   port map (
      Q => TxFIFO_Do(i),       -- SRL data output
      A0 => TxFIFO_a(0),     -- Select[0] input
      A1 => TxFIFO_a(1),     -- Select[1] input
      A2 => TxFIFO_a(2),     -- Select[2] input
      A3 => TxFIFO_a(3),     -- Select[3] input
      CE => we_TxFIFO,     -- Clock enable input
      CLK => UsrClk,   -- Clock input
      D => TxFIFO_Di(i)        -- SRL data input
   );
end generate;
TxFIFO_Di(15 downto 0) <= cntrs when sel_cntr = '1' else TxFIFO_Dip;
process(UsrClk)
begin
	if(UsrClk'event and UsrClk = '1')then
		if(TxFIFO_a = x"f" or (TxFIFO_a = x"0" and sel_TTS_TRIG = '0' and we_TxFIFO = '0'))then
			TxFIFO_empty <= '1';
		else
			TxFIFO_empty <= '0';
		end if;
		if(TxFIFO_empty = '0' or idle_cntr(3) = '1')then
			idle_cntr <= x"0";
		else
			idle_cntr <= idle_cntr + 1;
		end if;
		if(TxFIFO_a(3 downto 2) = "10")then
			TxFIFO_full <= '1';
		else
			TxFIFO_full <= '0';
		end if;
		if(InitLink = '1')then
			TxFIFO_a <= x"f";
		elsif((sel_TTS_TRIG = '1' or TxFIFO_empty = '1' or R_word_cnt(11) = '1') and we_TxFIFO = '1')then
			TxFIFO_a <= TxFIFO_a + 1;
		elsif(sel_TTS_TRIG = '0' and we_TxFIFO = '0' and TxFIFO_empty = '0' and R_word_cnt(11) = '0')then
			TxFIFO_a <= TxFIFO_a - 1;
		end if;
		if(sel_TTS_TRIG = '1')then
			TXCHARISK <= TTS_TRIG_data(17 downto 16);
			TXDATA <= TTS_TRIG_data(15 downto 0);
			R_word_sent <= '0';
		elsif(R_word_cnt(11) = '1' or TxFIFO_empty = '1')then
			TXCHARISK <= "11";
			TXDATA <= R_word;
			R_word_sent <= '1';
		else
			TXCHARISK <= TxFIFO_Do(16) & TxFIFO_Do(16);
			TXDATA <= TxFIFO_Do(15 downto 0);
			R_word_sent <= '0';
		end if;
		if(reset_SyncRegs(3) = '1')then
			InitLink <= '0';
		else
-- whenever a good initialization packet is received, (re)initializa miniCTR
			if(check_packet = '1' and CRC_OK = '1' and TypeInit = '1' and frame_OK = '1' and WC_OK = '1' and bad_K = '0')then
				InitLink <= '1';
			else
				InitLink <= '0';
			end if;
		end if;
		if(reset_SyncRegs(3) = '1' or InitLink = '1')then
			Ready_i <= '0';
		elsif(InitACK = '1')then
			Ready_i <= '1';
		end if;
		if(reset_SyncRegs(3) = '1' or ReSend = '1' or InitLink = '1')then
			ReSendQue_a <= (others => '1');
		else
			ReSendQue_a(1) <= ReSendQue_a(1) xor ((ReSendQue_a(0) and we_ReSendQue and not ACK) or (not ReSendQue_a(0) and not we_ReSendQue and ACK));
			ReSendQue_a(0) <= ReSendQue_a(0) xor we_ReSendQue xor ACK;
		end if;
		if(TxState = SendWC and TxFIFO_full = '0' and IsData = '1' and ReSend = '0')then
			we_ReSendQue <= '1';
		else
			we_ReSendQue <= '0';
		end if;
		if(reset_SyncRegs(3) = '1' or ReSend = '1' or InitLink = '1')then
			ReSendQue_empty <= '1';
		elsif(we_ReSendQue = '1')then
			ReSendQue_empty <= '0';
		elsif(ACK = '1' and ReSendQue_a = "00")then
			ReSendQue_empty <= '1';
		end if;
		if(InitLink = '1')then
			SEQNUM <= x"00";
		elsif(ReSend = '1')then
			SEQNUM <= ReSendQueOut(22 downto 15);
		elsif(we_ReSendQue = '1')then
			SEQNUM <= SEQNUM(6 downto 0) & not(SEQNUM(7) xor SEQNUM(5) xor SEQNUM(4) xor SEQNUM(3));
		end if;
		if(InitLink = '1')then
			InitACK <= '1';
		elsif(TxState = SendType)then
			InitACK <= '0';
		end if;
		if(InitACK = '1')then
			AMC_info <= version;
		else
			AMC_info <= EventStatus;
		end if;
		if(reset_SyncRegs(3) = '1' or InitLink = '1' or ReSend = '1')then
			TxState <= SendK;
		elsif(TxFIFO_full = '0')then
			case TxState is
				when IDLE => -- send R_word (idle)
					if((ReSendQue_a(1) = ReSendQue_a(0) and EventStatus_empty = '0' and EventData2Send = '1' and DataPipe_empty = '0') or ACKNUM_empty = '0' or CntrTimeout = '1')then
						TxState <= SendSEQ;
					elsif(idle_cntr(3) = '1')then
						TxState <= SendK;
					end if;
					if(InitACK = '1')then
						TxType <= InitRqst;
						IsData <= '0';
						IsCntr <= '0';
						IsACK <= '1';
					elsif(ACKNUM_empty = '0')then
						TxType <= Acknowledge;
						IsData <= '0';
						IsCntr <= '0';
						IsACK <= '1';
					elsif(CntrTimeout = '1')then
						IsData <= '0';
						IsCntr <= '1';
						IsACK <= '0';
						TxType <= Counter;
					else
						IsData <= '1';
						IsCntr <= '0';
						IsACK <= '0';
						TxType <= data;
					end if;
				when SendK => -- send K_word
					TxState <= IDLE;
				when SendSEQ => -- send packet_seq
					FoundEOF <= '0';
					TxState <= SendType;
				when SendType => -- send data type
					if(IsData = '1')then
						TxState <= SendData;
					elsif(IsCntr = '1')then
						TxState <= SendCntr;
					else
						TxState <= SendWC;
					end if;
				when SendWC => -- send packet_wc
					TxState <= WaitCRC;
				when WaitCRC => -- wait for CRC
					TxState <= SendCRC;
				when SendCntr => -- send counter data
					if(packet_wc(4) = '1' and packet_wc(2 downto 0) = "111")then -- 16 counters and 8 status words sent 
						TxState <= SendWC;
					end if;
				when SendData => -- send payload data
					if(and_reduce(packet_wc(10 downto 0)) = '1' or DataPipeDo(16) = '1')then -- 4K bytes limit or eof reached 
						TxState <= SendWC;
						FoundEOF <= DataPipeDo(16);
					elsif(DataPipe_a = x"0")then
						TxState <= WaitData;
					end if;
				when WaitData => -- wait for data
					if(DataPipe_empty = '0')then
						TxState <= SendData;
					end if;
				when SendCRC => -- send TxCRC
					if(FoundEOF = '1')then
						TxState <= SendEOF;
					else
						TxState <= SendK;
					end if;
				when SendEOF => -- send eof_word
					TxState <= SendK;
				when others => TxState <= x"0";
			end case;
		end if;
		case TxState is
			when SendK => TxFIFO_Dip <= K_word;
			when SendData => TxFIFO_Dip <= DataPipeDo(15 downto 0);
			when SendSEQ => TxFIFO_Dip <= SEQNUM & TxType;
			when SendType => TxFIFO_Dip <= ACKNUM_l & AMC_info;
			when SendWC => TxFIFO_Dip <= packet_wc;
			when SendCRC => TxFIFO_Dip <= TxCRC;
			when SendEOF => TxFIFO_Dip <= eof_word;
			when others => TxFIFO_Dip <= (others => '0');
		end case;
		if(InitLink = '1')then
			cntrs <= (others => '0');
		elsif(packet_wc(4) = '0')then
			case packet_wc(3 downto 0) is
				when x"0" => cntrs <= cntr0;
				when x"1" => cntrs <= cntr1;
				when x"2" => cntrs <= cntr2;
				when x"3" => cntrs <= cntr3;
				when x"4" => cntrs <= cntr4;
				when x"5" => cntrs <= cntr5;
				when x"6" => cntrs <= cntr6;
				when x"7" => cntrs <= cntr7;
				when x"8" => cntrs <= cntr8;
				when x"9" => cntrs <= cntr9;
				when x"a" => cntrs <= cntra;
				when x"b" => cntrs <= cntrb;
				when x"c" => cntrs <= cntrc;
				when x"d" => cntrs <= cntrd;
				when x"e" => cntrs <= cntre;
				when others => cntrs <= cntrf;
			end case;
		else
			case packet_wc(3 downto 0) is
				when x"0" => cntrs <= FIFO_ovf & "00" & EventStatus_ra & "000" & EventStatus_wa;
				when x"1" => cntrs <= '0' & DataBuf_wa;
				when x"2" => cntrs <= '0' & DataBuf_ra;
				when x"3" => cntrs <= "000000" & L1Ainfo_wa;
				when x"4" => cntrs <= "000000" & info_ra;
				when x"5" => cntrs <= "000000" & AMCinfo_wa;
				when x"7" => cntrs <= "0000000" & EventCnt & ReSendQue_a & AlmostFull_i & dataFIFO_Empty;
				when others => cntrs <= (others => '0');
			end case;
		end if;
		case TxState is
			when SendK | SendEOF | IDLE | WaitData | WaitCRC => TxFIFO_Di(16) <= '1';
			when others => TxFIFO_Di(16) <= '0';
		end case;
		if(InitLink = '1' or TxFIFO_full = '1')then
			we_TxFIFO <= '0';
		else
			case TxState is
				when IDLE | WaitData | WaitCRC => we_TxFIFO <= '0';
				when others => we_TxFIFO <= '1';
			end case;			
		end if;
		if(TxState = SendCntr)then
			sel_cntr <= '1';
		else
			sel_cntr <= '0';
		end if;
		if(InitLink = '1')then
			DataBuf_ra <= (others => '0');
		elsif(ReSend = '1' and ReSendQue_empty = '0')then
			DataBuf_ra <= ReSendQueOut_q;
		elsif(ec_DataBuf_ra = '1')then
			DataBuf_ra <= DataBuf_ra + 1;
		end if;
		if(TxState = SendK)then 
			packet_wc(11 downto 0) <= x"000";
		elsif(TxFIFO_full = '0' and (TxState = SendData or TxState = SendCntr))then
			packet_wc(11 downto 0) <= packet_wc(11 downto 0) + 1;
		end if;
		if(TxState = IDLE or TxState = SendK)then
			Init_TxCRC <= '1';
		else
			Init_TxCRC <= '0';
		end if;
		if(R_word_sent = '1')then
			R_word_cnt <= (others => '0');
		else
			R_word_cnt <= R_word_cnt + 1;
		end if;
	end if;
end process;
i_TxCRC: crc16D16 PORT MAP(
		clk => UsrClk,
		init_crc => Init_TxCRC,
		we_crc => we_TxCRC,
		d => TxFIFO_Di(15 downto 0),
		crc => TxCRC
	);
we_TxCRC <= not TxFIFO_Di(16) and we_TxFIFO;
-- ReSendQueue holds the starting address of the oldest unacknowledged packet
g_ReSendQueue : for i in 0 to 27 generate
   i_ReSendQueue : SRL16E
   port map (
      Q => ReSendQueOut(i),       -- SRL data output
      A0 => ReSendQue_a(0),     -- Select[0] input
      A1 => ReSendQue_a(1),     -- Select[1] input
      A2 => '0',     -- Select[2] input
      A3 => '0',     -- Select[3] input
      CE => we_ReSendQue,     -- Clock enable input
      CLK => UsrClk,   -- Clock input
      D => ReSendQueIn(i)        -- SRL data input
   );
end generate;
ReSendQueIn <= RdEventCnt & SEQNUM & DataBuf_start;
-- received data processing starts here
ReSend <= timer(N);
process(UsrClk)
begin
	if(UsrClk'event and UsrClk = '1')then
		if(timer(N) = '1' or ACK = '1' or ReSendQue_empty = '1')then
			timer <= (others => '0');
		else
			timer <= timer + 1;
		end if;
		if(InitLink = '1')then
			DataBuf_start <= (others => '0');
		elsif(Resend = '1')then
			DataBuf_start <= ReSendQueOut_q;
		elsif(we_ReSendQue = '1')then
			DataBuf_start <= DataBuf_start + packet_wc(14 downto 0);
		end if;
-- Comma ends a packet and after that, any D-word marks the beginning of a packet
		if(RXCHARISCOMMA_q  = "11")then
			Receiving <= '0';
			L1Ainfo <= '0';
		elsif(RXCHARISK_q = "00")then
			Receiving <= '1';
			if(Header2 = '1' and Ready_i = '1' and TypeData = '1')then
				L1Ainfo <= '1';
			end if;
		end if;
-- first word of a packet is the packet sequence number
		if(RXCHARISK_q = "00")then
			if(Receiving = '0')then
				bad_K <= '0';
				RxSEQNUM <= RXDATA_q(15 downto 8);
				if(RXDATA_q(7 downto 0) = InitRqst)then
					TypeInit <= '1';
				else
					TypeInit <= '0';
				end if;
				if(RXDATA_q(7 downto 0) = Acknowledge)then
					TypeACK <= '1';
				else
					TypeACK <= '0';
				end if;
				if(RXDATA_q(7 downto 0) = data)then
					TypeData <= '1';
				else
					TypeData <= '0';
				end if;
				if(RXDATA_q(7 downto 0) = Counter)then
					TypeCntr <= '1';
				else
					TypeCntr <= '0';
				end if;
				Header2 <= '1';
			else
				Header2 <= '0';
			end if;
			if(Header2 = '1')then
				RxType <= RXDATA_q;
				RxWC <= "000";
			else
				RxWC <= RxWC + 1;
			end if;
			if(RxWC = RXDATA_q(2 downto 0))then
				WC_OKp <= '1';
			else
				WC_OKp <= '0';
			end if;
			WC_OK <= WC_OKp;
		elsif(RXDATA_q(7 downto 0) = x"5c" and RXCHARISK_q = "01")then
-- acknowledge of TTS data, this will be processed by TTS_TRIG_if
		elsif((RXDATA_q /= R_word and RXCHARISCOMMA_q /= "11") or RXCHARISK_q(1) /= RXCHARISK_q(0))then
			bad_K <= '1';
		end if;
		if(Receiving = '0')then
			ACKNUM_IN <= RxSEQNUM;
		end if;
		if(TypeACK = '1' and RXType(15 downto 8) = ReSendQueOut(22 downto 15) and ReSendQue_empty = '0')then -- incoming acknowledge number is what waited for
			ACK_OK <= '1';
		else
			ACK_OK <= '0';
		end if;
		if(InitLink = '1')then
			AMC_ID <= RxType(7 downto 0);
		end if;
		if((RxSEQNUM = NextSEQNUM and TypeInit = '0') or (RxSEQNUM = x"00" and TypeInit = '1'))then -- incoming sequence number is what waited for 
			SEQ_OK <= '1';
		else
			SEQ_OK <= '0';
		end if;
		if(WC_OK = '1' and (TypeInit = '1' or TypeCntr = '1' or TypeData = '1' or TypeACK = '1'))then
			frame_OK <= '1';
		else
			frame_OK <= '0';
		end if;
		if(or_reduce(RxCRC) = '0')then
			CRC_OK <= '1';
		else
			CRC_OK <= '0';
		end if;
		if(RXCHARISCOMMA_q = "11" and Receiving = '1')then
			check_packet <= '1';
		else
			check_packet <= '0';
		end if;
		accept <= check_packet and SEQ_OK and CRC_OK and frame_OK and not bad_K and not ACKNUM_full and (TypeInit or TypeData);
-- acknowledge even received packet is not the expected one
		we_ACKNUM <= check_packet and CRC_OK and frame_OK and not bad_K and not ACKNUM_full and (TypeInit or TypeData);
		ACK <= check_packet and SEQ_OK and ACK_OK and CRC_OK and frame_OK and not bad_K;
		CntrACK <= check_packet and TypeCntr and CRC_OK and frame_OK and not bad_K;
		L1Aabort <= check_packet and TypeData and not(SEQ_OK and CRC_OK and frame_OK and not bad_K and not ACKNUM_full);
		if(reset_SyncRegs(3) = '1')then
			ACKNUM_a <= (others => '1');
		elsif(InitLink = '1')then
			ACKNUM_a <= (others => '0');
		elsif(we_ACKNUM = '1' and (TxFIFO_full = '1' or TxState /= SendCRC or IsACK = '0'))then
			ACKNUM_a <= ACKNUM_a + 1;
		elsif(we_ACKNUM = '0' and TxFIFO_full = '0' and TxState = SendCRC and IsACK = '1')then
			ACKNUM_a <= ACKNUM_a - 1;
		end if;
		if(InitLink = '1')then
			NextSEQNUM <= x"01";
		elsif(accept = '1')then
			NextSEQNUM <= NextSEQNUM(6 downto 0) & not(NextSEQNUM(7) xor NextSEQNUM(5) xor NextSEQNUM(4) xor NextSEQNUM(3));
		end if;
		if(ACKNUM_a = "11")then
			ACKNUM_empty <= '1';
		else
			ACKNUM_empty <= '0';
		end if;
		if(ACKNUM_a = "10")then
			ACKNUM_full <= '1';
		else
			ACKNUM_full <= '0';
		end if;
		if(ACKNUM_a /= "11")then
			ACKNUM_l <= ACKNUM;
		end if;
		if(InitLink = '1')then
			cntr0 <= (others => '0');
		elsif(accept = '1')then
			cntr0 <= cntr0 + 1;
		end if;
		if(InitLink = '1')then
			cntr1 <= (others => '0');
		elsif(ACK = '1')then
			cntr1 <= cntr1 + 1;
		end if;
		if(InitLink = '1')then
			cntr2 <= (others => '0');
		elsif(L1Aabort = '1')then
			cntr2 <= cntr2 + 1;
		end if;
		if(InitLink = '1')then
			cntr3 <= (others => '0');
			cntr4 <= (others => '0');
			cntr5 <= (others => '0');
			cntr6 <= (others => '0');
		elsif(we_EventStatus = '1')then
			if(EventStatus_Di(0) = '0')then
				cntr3 <= cntr3 + 1;
			end if;
			if(EventStatus_Di(1) = '0')then
				cntr4 <= cntr4 + 1;
			end if;
			if(EventStatus_Di(2) = '0')then
				cntr5 <= cntr5 + 1;
			end if;
			cntr6 <= cntr6 + 1;
		end if;
		if(InitLink = '1')then
			cntr7 <= (others => '0');
		elsif(CntrACK = '1')then
			cntr7 <= cntr7 + 1;
		end if;
		if(InitLink = '1')then
			cntr8 <= (others => '0');
		elsif(ReSend = '1')then
			cntr8 <= cntr8 + 1;
		end if;
		if(InitLink = '1')then
			cntr9 <= (others => '0');
		elsif(bad_EventLength = '1')then
			cntr9 <= cntr9 + 1;
		end if;
		if(InitLink = '1')then
			cntra <= (others => '0');
		elsif(EoE = '1' and UsrClkDiv(1) = '1' and bad_ID = '1')then
			cntra <= cntra + 1;
		end if;
		AlmostFull_sync <= AlmostFull_sync(1 downto 0) & AlmostFull_i;
		if(InitLink = '1')then
			cntrb <= (others => '0');
		elsif(AlmostFull_sync(2) = '1')then
			cntrb <= cntrb + 1;
		end if;
		if(ready_i = '0' or CntrACK = '1')then
			CntrSent <= '0';
		elsif(TxState = SendCRC and IsCntr = '1')then
			CntrSent <= '1';
		end if;
		if(ready_i = '0' or CntrACK = '1' or (TxState = SendCRC and IsCntr = '1'))then
			cntr_timer <= (others => '0');
		elsif(CntrTimeout = '0')then
			cntr_timer <= cntr_timer + 1;
		end if;
		if(CntrSent = '1')then
			CntrTimeout <= cntr_timer(8);
		elsif(simulation)then
			CntrTimeout <= cntr_timer(10);
		else
			CntrTimeout <= cntr_timer(15);
		end if;
		if(TxState = SendCRC and IsCntr = '1')then
			sample <= not sample;
		end if;
	end if;
end process;
i_RxCRC: crc16D16 PORT MAP(
		clk => UsrClk,
		init_crc => Init_RxCRC,
		we_crc => we_RxCRC,
		d => RXDATA_q,
		crc => RxCRC
	);
we_RxCRC <= '1' when RXCHARISK_q = "00" else '0';
Init_RxCRC <= '1' when RXCHARISCOMMA_q = "11" else '0';
g_ACKNUM : for i in 0 to 7 generate
   i_ACKNUM : SRL16E
   port map (
      Q => ACKNUM(i),       -- SRL data output
      A0 => ACKNUM_a(0),     -- Select[0] input
      A1 => ACKNUM_a(1),     -- Select[1] input
      A2 => '0',     -- Select[2] input
      A3 => '0',     -- Select[3] input
      CE => we_ACKNUM,     -- Clock enable input
      CLK => UsrClk,   -- Clock input
      D => ACKNUM_IN(i)        -- SRL data input
   );
end generate;
process(UsrClk)
begin
	if(UsrClk'event and UsrClk = '1')then
		if(Init_EventCRC = '1')then
			AMCinfo_sel <= "010";
		elsif(FillDataBuf = '1')then
			case AMCinfo_sel is
				when "010" => AMCinfo_sel <= "100";
				when "100" => AMCinfo_sel <= "101";
				when "101" => AMCinfo_sel <= "110";
				when "110" => AMCinfo_sel <= "011";
				when "011" => AMCinfo_sel <= "111";
				when others => AMCinfo_sel <= "000";
			end case;
		end if;
		AMCinfo_WrEn <= FillDataBuf and AMCinfo_sel(2);
		case AMCinfo_sel(1 downto 0) is
			when "00" => AMCinfo_Di <= DataBuf_Din(15 downto 4) & x"0";-- BX
			when "01" => AMCinfo_Di <= DataBuf_Din(15 downto 0);--evn(15 downto 0)
			when "10" => AMCinfo_Di <= x"00" & DataBuf_Din(7 downto 0);--evn(23 downto 16)
			when others => AMCinfo_Di <= DataBuf_Din(15 downto 0);--OrN(15 downto 0)
		end case;
		if(InitLink = '1')then
			AMCinfo_wa <= (others => '0');
		elsif(AMCinfo_WrEn = '1')then
			AMCinfo_wa <= AMCinfo_wa + 1;
		end if;
	end if;
end process;
i_AMCinfo : BRAM_SDP_MACRO
   generic map (
      BRAM_SIZE => "18Kb", -- Target BRAM, "18Kb" or "36Kb" 
      DEVICE => "7SERIES", -- Target device: "VIRTEX5", "VIRTEX6", "7SERIES", "SPARTAN6" 
      WRITE_WIDTH => 16,    -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH => 16)     -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
    port map (
      DO => AMCinfo_Do,         -- Output read data port, width defined by READ_WIDTH parameter
      DI => AMCinfo_Di,         -- Input write data port, width defined by WRITE_WIDTH parameter
      RDADDR => info_ra, -- Input read address, width defined by read port depth
      RDCLK => UsrClk,   -- 1-bit input read clock
      RDEN => '1',     -- 1-bit input read port enable
      REGCE => '1',   -- 1-bit input read output register enable
      RST => '0',       -- 1-bit input reset 
      WE => "11",         -- Input write enable, width defined by write port depth
      WRADDR => AMCinfo_wa, -- Input write address, width defined by write port depth
      WRCLK => UsrClk,   -- 1-bit input write clock
      WREN => AMCinfo_WrEn      -- 1-bit input write port enable
   );
process(UsrClk)
begin
	if(UsrClk'event and UsrClk = '1')then
		L1Ainfo_Di <= RXDATA_q;
		if(InitLink = '1')then
			OldL1Ainfo_wa <= (others => '0');
		elsif(accept = '1')then
			OldL1Ainfo_wa <= L1Ainfo_wa(9 downto 2);
		end if;
		if(InitLink = '1')then
			L1Ainfo_wa <= (others => '0');
		elsif(L1Aabort = '1')then
			L1Ainfo_wa(9 downto 2) <= OldL1Ainfo_wa;
		elsif(Receiving = '0')then
			L1Ainfo_wa(1 downto 0) <= "00";
		elsif(L1Ainfo_WrEn = '1')then
			L1Ainfo_wa <= L1Ainfo_wa + 1;
		end if;
		if(L1Ainfo = '1' and RXCHARISK_q = "00")then
			L1Ainfo_WrEn <= '1';
		else
			L1Ainfo_WrEn <= '0';
		end if;
	end if;
end process;
i_L1Ainfo : BRAM_SDP_MACRO
   generic map (
      BRAM_SIZE => "18Kb", -- Target BRAM, "18Kb" or "36Kb" 
      DEVICE => "7SERIES", -- Target device: "VIRTEX5", "VIRTEX6", "7SERIES", "SPARTAN6" 
      WRITE_WIDTH => 16,    -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
      READ_WIDTH => 16)     -- Valid values are 1-72 (37-72 only valid when BRAM_SIZE="36Kb")
    port map (
      DO => L1Ainfo_Do,         -- Output read data port, width defined by READ_WIDTH parameter
      DI => L1Ainfo_Di,         -- Input write data port, width defined by WRITE_WIDTH parameter
      RDADDR => info_ra, -- Input read address, width defined by read port depth
      RDCLK => UsrClk,   -- 1-bit input read clock
      RDEN => '1',     -- 1-bit input read port enable
      REGCE => '1',   -- 1-bit input read output register enable
      RST => '0',       -- 1-bit input reset 
      WE => "11",         -- Input write enable, width defined by write port depth
      WRADDR => L1Ainfo_wa, -- Input write address, width defined by write port depth
      WRCLK => UsrClk,   -- 1-bit input write clock
      WREN => L1Ainfo_WrEn      -- 1-bit input write port enable
   );
i_TTS_TRIG_if: TTS_TRIG_if generic map(USE_TRIGGER_PORT => USE_TRIGGER_PORT) PORT MAP(
		reset => reset,
		UsrClk => UsrClk,
		TTCclk => TTCclk,
		BcntRes => BcntRes,
		trig => trig,
		TTSclk => TTSclk,
		TTS => TTS,
		RXCHARISK => RXCHARISK,
		RXDATA => RXDATA,
		sel_TTS_TRIG => sel_TTS_TRIG,
		TTS_TRIG_data => TTS_TRIG_data
	);
process(UsrClk)
begin
	if(UsrClk'event and UsrClk = '1')then
		if(info_ra(9 downto 2) = L1Ainfo_wa(9 downto 2) or check_L1Ainfo = '1')then
			L1Ainfo_empty <= '1';
		elsif(RxL1Ainfo = '0')then
			L1Ainfo_empty <= '0';
		end if;
		if(Header2 = '1' and TypeData = '1')then
			RxL1Ainfo <= '1';
		elsif(accept = '1' or L1Aabort = '1')then
			RxL1Ainfo <= '0';
		end if;
		if(info_ra(9 downto 2) = AMCinfo_wa(9 downto 2) or check_L1Ainfo = '1')then
			AMCinfo_empty <= '1';
		else
			AMCinfo_empty <= '0';
		end if;
		if(info_ra(1 downto 0) = "11")then
			ce_info_ra <= '0';
		elsif(EventStatusCnt(4 downto 3) /= "11" and L1Ainfo_empty = '0' and AMCinfo_empty = '0')then
			ce_info_ra <= '1';
		end if;
		if(InitLink = '1')then
			info_ra <= (others => '0');
		elsif(ce_info_ra = '1')then
			info_ra <= info_ra + 1;
		end if;
		check_L1Ainfo <= ce_info_ra;
		check_L1Ainfo_q <= check_L1Ainfo;
		if(L1Ainfo_Do = AMCinfo_Do(15 downto 0))then
			L1AinfoMM <= '0';
		else
			L1AinfoMM <= '1';
		end if;
		we_EventStatus <= check_L1Ainfo_q and not check_L1Ainfo;
		info_ra_q <= info_ra(1 downto 0);
		if(check_L1Ainfo_q = '0')then
			EventStatus_Di(2 downto 0) <= "111";
		elsif(L1AinfoMM = '1')then
			case info_ra_q is
				when "00" => EventStatus_Di(2) <= '0'; -- BcN mismatch
				when "11" => EventStatus_Di(1) <= '0'; -- OrN mismatch
				when others => EventStatus_Di(0) <= '0'; -- EvN mismatch
			end case;
		end if;
		EventStatusCnt <= EventStatus_wa - EventStatus_ra;
		if(EventStatus_wa = EventStatus_ra)then
			EventStatus_empty <= '1';
		else
			EventStatus_empty <= '0';
		end if;
		if(Ready_i = '0' or InitLink = '1')then
			EventStatus_wa <= (others => '0');
		elsif(we_EventStatus = '1')then
			EventStatus_wa <= EventStatus_wa + 1;
		end if;
	end if;
end process;
g_EventStatus : for i in 0 to 2 generate
   i_EventStatus : RAM32X1D
   port map (
      DPO => EventStatus(i),     -- Read-only 1-bit data output
      SPO => open,     -- R/W 1-bit data output
      A0 => EventStatus_wa(0),       -- R/W address[0] input bit
      A1 => EventStatus_wa(1),       -- R/W address[1] input bit
      A2 => EventStatus_wa(2),       -- R/W address[2] input bit
      A3 => EventStatus_wa(3),       -- R/W address[3] input bit
      A4 => EventStatus_wa(4),       -- R/W address[4] input bit
      D => EventStatus_Di(i),         -- Write 1-bit data input
      DPRA0 => EventStatus_ra(0), -- Read-only address[0] input bit
      DPRA1 => EventStatus_ra(1), -- Read-only address[1] input bit
      DPRA2 => EventStatus_ra(2), -- Read-only address[2] input bit
      DPRA3 => EventStatus_ra(3), -- Read-only address[3] input bit
      DPRA4 => EventStatus_ra(4), -- Read-only address[4] input bit
      WCLK => UsrClk,   -- Write clock input
      WE => we_EventStatus       -- Write enable input
   );
end generate;
EventStatus(6 downto 3) <= (others => '0');
EventStatus_ra <= RdEventCnt;
i_DAQLINK_7S_init : DAQLINK_7S_init
    generic map
    (
        EXAMPLE_SIM_GTRESET_SPEEDUP     =>      GTXRESET_SPEEDUP(simulation),
        EXAMPLE_SIMULATION              =>      0,
        STABLE_CLOCK_PERIOD             =>      SYSCLK_IN_period,
        EXAMPLE_USE_CHIPSCOPE           =>      0,
				F_REFCLK												=>			F_REFCLK
    )
    port map
    (
        SYSCLK_IN                       =>      SYSCLK_IN,
        SOFT_RESET_IN                   =>      '0',
        DONT_RESET_ON_DATA_ERROR_IN     =>      '1',
        GT0_TX_FSM_RESET_DONE_OUT       =>      txfsmresetdone,
        GT0_RX_FSM_RESET_DONE_OUT       =>      open,
        GT0_DATA_VALID_IN               =>      DATA_VALID,

  
 
 
 
        --_____________________________________________________________________
        --_____________________________________________________________________
        --GT0  (X1Y0)

        --------------------------------- CPLL Ports -------------------------------
        GT0_CPLLFBCLKLOST_OUT           =>      open,
        GT0_CPLLLOCK_OUT                =>      cplllock,
        GT0_CPLLLOCKDETCLK_IN           =>      SYSCLK_IN,
        GT0_CPLLRESET_IN                =>      reset,
        -------------------------- Channel - Clocking Ports ------------------------
        GT0_GTREFCLK0_IN                =>      GTX_REFCLK,
        ---------------------------- Channel - DRP Ports  --------------------------
        GT0_DRPADDR_IN                  =>      (others => '0'),
        GT0_DRPCLK_IN                   =>      SYSCLK_IN,
        GT0_DRPDI_IN                    =>      (others => '0'),
        GT0_DRPDO_OUT                   =>      open,
        GT0_DRPEN_IN                    =>      '0',
        GT0_DRPRDY_OUT                  =>      open,
        GT0_DRPWE_IN                    =>      '0',
        ------------------------------- Loopback Ports -----------------------------
        GT0_LOOPBACK_IN                 =>      LOOPBACK,
        --------------------- RX Initialization and Reset Ports --------------------
        GT0_RXUSERRDY_IN                =>      '0',
        -------------------------- RX Margin Analysis Ports ------------------------
        GT0_EYESCANDATAERROR_OUT        =>      open,
        ------------------------- Receive Ports - CDR Ports ------------------------
        GT0_RXCDRLOCK_OUT               =>      open,
        ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        GT0_RXUSRCLK_IN                 =>      UsRClk,
        GT0_RXUSRCLK2_IN                =>      UsRClk,
        ------------------ Receive Ports - FPGA RX interface Ports -----------------
        GT0_RXDATA_OUT                  =>      RXDATA,
        ------------------- Receive Ports - Pattern Checker Ports ------------------
        GT0_RXPRBSERR_OUT               =>      open,
        GT0_RXPRBSSEL_IN                =>      (others => '0'),
        ------------------- Receive Ports - Pattern Checker ports ------------------
        GT0_RXPRBSCNTRESET_IN           =>      '0',
        ------------------ Receive Ports - RX 8B/10B Decoder Ports -----------------
        GT0_RXDISPERR_OUT               =>      open,
        GT0_RXNOTINTABLE_OUT            =>      RXNOTINTABLE,
        --------------------------- Receive Ports - RX AFE -------------------------
        GT0_GTXRXP_IN                   =>      GTX_RXP,
        ------------------------ Receive Ports - RX AFE Ports ----------------------
        GT0_GTXRXN_IN                   =>      GTX_RXN,
        -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
        GT0_RXMCOMMAALIGNEN_IN          =>      reset_SyncRegs(3),
        GT0_RXPCOMMAALIGNEN_IN          =>      reset_SyncRegs(3),
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GT0_GTRXRESET_IN                =>      reset,
        GT0_RXPMARESET_IN               =>      '0',
        ------------------- Receive Ports - RX8B/10B Decoder Ports -----------------
        GT0_RXCHARISCOMMA_OUT           =>      RXCHARISCOMMA,
        GT0_RXCHARISK_OUT               =>      RXCHARISK,
        -------------- Receive Ports -RX Initialization and Reset Ports ------------
        GT0_RXRESETDONE_OUT             =>      RXRESETDONE,
        --------------------- TX Initialization and Reset Ports --------------------
        GT0_GTTXRESET_IN                =>      reset,
        GT0_TXUSERRDY_IN                =>      '0',
        ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
        GT0_TXUSRCLK_IN                 =>      UsRClk,
        GT0_TXUSRCLK2_IN                =>      UsRClk,
        --------------- Transmit Ports - TX Configurable Driver Ports --------------
        GT0_TXDIFFCTRL_IN               =>      TXDIFFCTRL,
        ------------------ Transmit Ports - TX Data Path interface -----------------
        GT0_TXDATA_IN                   =>      TXDATA,
        ---------------- Transmit Ports - TX Driver and OOB signaling --------------
        GT0_GTXTXN_OUT                  =>      GTX_TXN,
        GT0_GTXTXP_OUT                  =>      GTX_TXP,
        ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        GT0_TXOUTCLK_OUT                =>      TXOUTCLK,
        GT0_TXOUTCLKFABRIC_OUT          =>      open,
        GT0_TXOUTCLKPCS_OUT             =>      open,
        --------------------- Transmit Ports - TX Gearbox Ports --------------------
        GT0_TXCHARISK_IN                =>      TXCHARISK,
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        GT0_TXRESETDONE_OUT             =>      open,
        ------------------ Transmit Ports - pattern Generator Ports ----------------
        GT0_TXPRBSSEL_IN                =>      "000",




    --____________________________COMMON PORTS________________________________
        ---------------------- Common Block  - Ref Clock Ports ---------------------
        GT0_GTREFCLK0_COMMON_IN         =>      '0',
        ------------------------- Common Block - QPLL Ports ------------------------
        GT0_QPLLLOCK_OUT                =>      open,
        GT0_QPLLLOCKDETCLK_IN           =>      '0',
        GT0_QPLLRESET_IN                =>      '0'

    );
i_UsrClk : BUFG
   port map (
      O => UsrClk,     -- Clock buffer output
      I => TXOUTCLK      -- Clock buffer input
   );
end Behavioral;
