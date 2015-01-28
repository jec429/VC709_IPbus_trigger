-- Contains the instantiation of the Xilinx MAC & 1000baseX pcs/pma & GTP transceiver cores
--
-- Do not change signal names in here without correspondig alteration to the timing contraints file
--
-- Dave Newbold, April 2011

-- Modified by Nic Eggert, Feb 2014
-- Use Mr. Wu's emac instead of Xilinx IP

--
-- $Id$

library ieee;
use ieee.std_logic_1164.all;

library unisim;
use unisim.VComponents.all;
use work.emac_hostbus_decl.all;

entity eth_k7_1000basex is
	port(
		gt_clkp, gt_clkn: in std_logic;
		gt_txp, gt_txn: out std_logic;
		gt_rxp, gt_rxn: in std_logic;
		sig_detn: in std_logic := '0';
		clk200_bufg_in: in std_logic;
		gtrefclk_out: out std_logic;
		clk125_out: out std_logic;
		phy_rst: in std_logic;
		mac_rst: in std_logic;
		locked: out std_logic;
		tx_data: in std_logic_vector(7 downto 0);
		tx_valid: in std_logic;
		tx_last: in std_logic;
		tx_error: in std_logic;
		tx_ready: out std_logic;
		rx_data: out std_logic_vector(7 downto 0);
		rx_valid: out std_logic;
		rx_last: out std_logic;
		rx_error: out std_logic;
		hostbus_in: in emac_hostbus_in := ('0', "00", "0000000000", X"00000000", '0', '0', '0');
		hostbus_out: out emac_hostbus_out;
		link_status: out std_logic;
		phy_status_vector: out std_logic_vector(15 downto 0)
	);

end eth_k7_1000basex;

architecture rtl of eth_k7_1000basex is

	COMPONENT soft_emac
	Port ( reset : in  STD_LOGIC;
           emacphytxd : out  STD_LOGIC_VECTOR (7 downto 0);
           emacphytxen : out  STD_LOGIC;
           emacphytxer : out  STD_LOGIC;
           phyemacrxd : in  STD_LOGIC_VECTOR (7 downto 0);
           phyemacrxdv : in  STD_LOGIC;
           phyemacrxer : in  STD_LOGIC;
           clientemactxd : in  STD_LOGIC_VECTOR (7 downto 0);
           clientemactxdvld : in  STD_LOGIC;
           clientemactxdlast : in  STD_LOGIC;
    	   clientemactxerr: in std_logic;
    	   emacclienttxready: out std_logic;
    	   emacclientrxd: out std_logic_vector(7 downto 0);
    	   emacclientrxdvld: out std_logic;
    	   emacclientrxdlast: out std_logic;
    	   emacclientrxerr: out std_logic;
    	   txgmiimiiclk: in std_logic;
    	   rxgmiimiiclk: in std_logic
          );
	END COMPONENT;
	
	COMPONENT gig_ethernet_pcs_pma_0
	  PORT (
	    gtrefclk_p : IN STD_LOGIC;
	    gtrefclk_n : IN STD_LOGIC;
	    gtrefclk_out : OUT STD_LOGIC;
	    txn : OUT STD_LOGIC;
	    txp : OUT STD_LOGIC;
	    rxn : IN STD_LOGIC;
	    rxp : IN STD_LOGIC;
	    independent_clock_bufg : IN STD_LOGIC;
	    userclk_out : OUT STD_LOGIC;
	    userclk2_out : OUT STD_LOGIC;
	    rxuserclk_out : OUT STD_LOGIC;
	    rxuserclk2_out : OUT STD_LOGIC;
	    resetdone : OUT STD_LOGIC;
	    pma_reset_out : OUT STD_LOGIC;
	    mmcm_locked_out : OUT STD_LOGIC;
	    gmii_txd : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	    gmii_tx_en : IN STD_LOGIC;
	    gmii_tx_er : IN STD_LOGIC;
	    gmii_rxd : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	    gmii_rx_dv : OUT STD_LOGIC;
	    gmii_rx_er : OUT STD_LOGIC;
	    gmii_isolate : OUT STD_LOGIC;
	    configuration_vector : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	    status_vector : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	    reset : IN STD_LOGIC;
	    signal_detect : IN STD_LOGIC;
	    gt0_qplloutclk_out : OUT STD_LOGIC;
	    gt0_qplloutrefclk_out : OUT STD_LOGIC;
	    gt0_rxchariscomma_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	    gt0_rxcharisk_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	    gt0_rxbyteisaligned_out : OUT STD_LOGIC;
	    gt0_rxbyterealign_out : OUT STD_LOGIC;
	    gt0_rxcommadet_out : OUT STD_LOGIC;
	    gt0_txpolarity_in : IN STD_LOGIC;
	    gt0_txdiffctrl_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	    gt0_txpostcursor_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	    gt0_txprecursor_in : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	    gt0_rxpolarity_in : IN STD_LOGIC;
	    gt0_txprbssel_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	    gt0_txprbsforceerr_in : IN STD_LOGIC;
	    gt0_rxprbscntreset_in : IN STD_LOGIC;
	    gt0_rxprbserr_out : OUT STD_LOGIC;
	    gt0_rxprbssel_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	    gt0_loopback_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	    gt0_txresetdone_out : OUT STD_LOGIC;
	    gt0_rxresetdone_out : OUT STD_LOGIC;
	    gt0_rxpmaresetdone_out : OUT STD_LOGIC;
	    gt0_rxdisperr_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	    gt0_txbufstatus_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	    gt0_rxnotintable_out : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	    gt0_eyescanreset_in : IN STD_LOGIC;
	    gt0_eyescandataerror_out : OUT STD_LOGIC;
	    gt0_eyescantrigger_in : IN STD_LOGIC;
	    gt0_rxcdrhold_in : IN STD_LOGIC;
	    gt0_rxpmareset_in : IN STD_LOGIC;
	    gt0_txpmareset_in : IN STD_LOGIC;
	    gt0_rxpcsreset_in : IN STD_LOGIC;
	    gt0_txpcsreset_in : IN STD_LOGIC;
	    gt0_rxbufreset_in : IN STD_LOGIC;
	    gt0_rxbufstatus_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	    gt0_rxdfelpmreset_in : IN STD_LOGIC;
	    gt0_rxdfeagcovrden_in : IN STD_LOGIC;
	    gt0_rxlpmen_in : IN STD_LOGIC;
	    gt0_rxmonitorout_out : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	    gt0_rxmonitorsel_in : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	    gt0_drpaddr_in : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	    gt0_drpclk_in : IN STD_LOGIC;
	    gt0_drpdi_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	    gt0_drpdo_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	    gt0_drpen_in : IN STD_LOGIC;
	    gt0_drprdy_out : OUT STD_LOGIC;
	    gt0_drpwe_in : IN STD_LOGIC;
	    gt0_dmonitorout_out : OUT STD_LOGIC_VECTOR(16 DOWNTO 0)
	  );
	END COMPONENT;
	ATTRIBUTE SYN_BLACK_BOX : BOOLEAN;
	ATTRIBUTE SYN_BLACK_BOX OF gig_ethernet_pcs_pma_0 : COMPONENT IS TRUE;
	ATTRIBUTE BLACK_BOX_PAD_PIN : STRING;
	ATTRIBUTE BLACK_BOX_PAD_PIN OF gig_ethernet_pcs_pma_0 : COMPONENT IS "gtrefclk_p,gtrefclk_n,gtrefclk_out,txn,txp,rxn,rxp,independent_clock_bufg,userclk_out,userclk2_out,rxuserclk_out,rxuserclk2_out,resetdone,pma_reset_out,mmcm_locked_out,gmii_txd[7:0],gmii_tx_en,gmii_tx_er,gmii_rxd[7:0],gmii_rx_dv,gmii_rx_er,gmii_isolate,configuration_vector[4:0],status_vector[15:0],reset,signal_detect,gt0_qplloutclk_out,gt0_qplloutrefclk_out,gt0_rxchariscomma_out[1:0],gt0_rxcharisk_out[1:0],gt0_rxbyteisaligned_out,gt0_rxbyterealign_out,gt0_rxcommadet_out,gt0_txpolarity_in,gt0_txdiffctrl_in[3:0],gt0_txpostcursor_in[4:0],gt0_txprecursor_in[4:0],gt0_rxpolarity_in,gt0_txprbssel_in[2:0],gt0_txprbsforceerr_in,gt0_rxprbscntreset_in,gt0_rxprbserr_out,gt0_rxprbssel_in[2:0],gt0_loopback_in[2:0],gt0_txresetdone_out,gt0_rxresetdone_out,gt0_rxpmaresetdone_out,gt0_rxdisperr_out[1:0],gt0_txbufstatus_out[1:0],gt0_rxnotintable_out[1:0],gt0_eyescanreset_in,gt0_eyescandataerror_out,gt0_eyescantrigger_in,gt0_rxcdrhold_in,gt0_rxpmareset_in,gt0_txpmareset_in,gt0_rxpcsreset_in,gt0_txpcsreset_in,gt0_rxbufreset_in,gt0_rxbufstatus_out[2:0],gt0_rxdfelpmreset_in,gt0_rxdfeagcovrden_in,gt0_rxlpmen_in,gt0_rxmonitorout_out[6:0],gt0_rxmonitorsel_in[1:0],gt0_drpaddr_in[8:0],gt0_drpclk_in,gt0_drpdi_in[15:0],gt0_drpdo_out[15:0],gt0_drpen_in,gt0_drprdy_out,gt0_drpwe_in,gt0_dmonitorout_out[16:0]";
	
	signal gmii_txd, gmii_rxd: std_logic_vector(7 downto 0);
	signal gmii_tx_en, gmii_tx_er, gmii_rx_dv, gmii_rx_er: std_logic;
	signal clk125: std_logic;
	signal mac_rst_int, phy_done, mmcm_locked, locked_int, sig_det: std_logic;
	signal status: std_logic_vector(15 downto 0);
	signal phy_config: std_logic_vector(4 downto 0) := (others => '0');

begin

	clk125_out <= clk125;

--	locked_int <= mmcm_locked and phy_done;
    locked_int <= mmcm_locked;
    
	locked <= locked_int;
	mac_rst_int <= (not locked_int) or mac_rst;

	link_status <= status(0);
	-- eth_rx_err <= status(6 downto 4); 

	phy_status_vector <= status;

	mac: soft_emac
		port map(
			reset => mac_rst_int,
			rxgmiimiiclk => clk125,
			emacclientrxd => rx_data,
			emacclientrxdvld => rx_valid,
			emacclientrxdlast => rx_last,
			emacclientrxerr => rx_error,
			txgmiimiiclk => clk125,
			clientemactxd => tx_data,
			clientemactxdvld => tx_valid,
			clientemactxdlast => tx_last,
			clientemactxerr => tx_error,
			emacclienttxready => tx_ready,
			emacphytxd => gmii_txd,
			emacphytxen => gmii_tx_en,
			emacphytxer => gmii_tx_er,
			phyemacrxd => gmii_rxd,
			phyemacrxdv => gmii_rx_dv,
			phyemacrxer => gmii_rx_er
		);

	hostbus_out.hostrddata <= (others => '0');
	hostbus_out.hostmiimrdy <= '0';

	sig_det <= not sig_detn;

	-- make sure phy is isolated when it first starts
	phy_config(3) <= not phy_done;
	-- phy_config(1) <= '1'; -- loopback

	phy: gig_ethernet_pcs_pma_0
		port map(
			gtrefclk_p => gt_clkp,
			gtrefclk_n => gt_clkn,
			gtrefclk_out => gtrefclk_out,
			txp => gt_txp,
			txn => gt_txn,
			rxp => gt_rxp,
			rxn => gt_rxn,
			independent_clock_bufg => clk200_bufg_in,
			userclk_out => open,
			userclk2_out => clk125,
			rxuserclk_out => open,
			rxuserclk2_out => open,
			resetdone => phy_done,
			pma_reset_out => open,
			mmcm_locked_out => mmcm_locked,
			gmii_txd => gmii_txd,
			gmii_tx_en => gmii_tx_en,
			gmii_tx_er => gmii_tx_er,
			gmii_rxd => gmii_rxd,
			gmii_rx_dv => gmii_rx_dv,
			gmii_rx_er => gmii_rx_er,
			gmii_isolate => open,
			configuration_vector => phy_config,
			status_vector => status,
			reset => phy_rst,
			signal_detect => sig_det,
			-- WFD1 has some pins accidentally swapped, so we need to reverse the polarity
			gt0_txpolarity_in => '1', 
			gt0_rxpolarity_in => '1',

			-- other low-level stuff that comes along with the polarity
			-- set to 0 per IP generated with this stuff turned off
			gt0_rxchariscomma_out => open,
		    gt0_rxcharisk_out => open,
		    gt0_rxbyteisaligned_out => open,
		    gt0_rxbyterealign_out => open,
		    gt0_rxcommadet_out => open,
		    gt0_txdiffctrl_in => (others=>'0'),
		    gt0_txpostcursor_in => (others=>'0'),
		    gt0_txprecursor_in => (others=>'0'),
		    gt0_txprbssel_in => (others=>'0'),
		    gt0_txprbsforceerr_in => '0',
		    gt0_rxprbscntreset_in => '0',
		    gt0_rxprbserr_out => open,
		    gt0_rxprbssel_in => (others=>'0'),
		    gt0_loopback_in => (others=>'0'),
		    gt0_txresetdone_out => open,
		    gt0_rxresetdone_out => open,
		    gt0_rxpmaresetdone_out => open,
		    gt0_rxdisperr_out => open,
		    gt0_txbufstatus_out => open,
		    gt0_rxnotintable_out => open,
		    gt0_eyescanreset_in => '0',
		    gt0_eyescandataerror_out => open,
		    gt0_eyescantrigger_in => '0',
		    gt0_rxcdrhold_in => '0',
		    gt0_rxpmareset_in => '0',
		    gt0_txpmareset_in => '0',
		    gt0_rxpcsreset_in => '0',
		    gt0_txpcsreset_in => '0',
		    gt0_rxbufreset_in => '0',
		    gt0_rxbufstatus_out => open,
		    gt0_rxdfelpmreset_in => '0',
		    gt0_rxdfeagcovrden_in => '0',
		    gt0_rxlpmen_in => '0',
		    gt0_rxmonitorout_out => open,
		    gt0_rxmonitorsel_in => (others=>'0'),
		    gt0_drpaddr_in => (others=>'0'),
		    gt0_drpclk_in => '0',
		    gt0_drpdi_in => (others=>'0'),
		    gt0_drpdo_out => open,
		    gt0_drpen_in => '0',

		    gt0_drprdy_out => open,
		    gt0_drpwe_in => '0',
		    gt0_dmonitorout_out => open
			);

end rtl;
