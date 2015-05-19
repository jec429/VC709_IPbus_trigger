`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:47:38 08/12/2013
// Design Name:   verilog_trigger_top
// Module Name:   C:/USER_LOCAL/crs/CMS_trigger/Xilinx/glib/prj/sim1/verilog_trigger_top_test1.v
// Project Name:  sim1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: verilog_trigger_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module verilog_trigger_top_test1;

	// Inputs
	reg reset;
	reg cross_clk;
	reg ipb_clk;
	reg ipb_strobe;
	reg [31:0] ipb_addr;
	reg ipb_write;
	reg [31:0] ipb_wdata;
	reg en_proc; 

	// Outputs
	wire [31:0] ipb_rdata;
	wire ipb_ack;
	wire ipb_err;
		

	// Instantiate the Unit Under Test (UUT)
	verilog_trigger_top uut(
		.reset(reset), 
		.clk200(cross_clk),
		.en_proc_switch(en_proc), 
		.ipb_clk(ipb_clk), 
		.ipb_strobe(ipb_strobe), 
		.ipb_addr(ipb_addr), 
		.ipb_write(ipb_write), 
		.ipb_wdata(ipb_wdata), 
		.ipb_rdata(ipb_rdata), 
		.ipb_ack(ipb_ack), 
		.ipb_err(ipb_err)
	);

	
	
	initial begin
		// Initialize Inputs
		reset = 0;
		cross_clk = 0;
		en_proc = 0;
		ipb_clk = 0;
		ipb_strobe = 0;
		ipb_addr = 0;
		ipb_write = 0;
		ipb_wdata = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end

	// Add stimulus here
	// clocks
	always begin
		#4 ipb_clk = ~ipb_clk;   // 125 MHz
	end
	always begin
		//#3 cross_clk = ~cross_clk;   	// 166 MHz
		#2.5 cross_clk = ~cross_clk;		// 250 MHz
	end

	// reset
	initial begin
	   #110
		reset = 1'b1;
	   #10
		reset = 1'b0;
	end

	reg [50*20:1] str;
	integer fdi;
	integer fdo;
	integer fdo2;
	integer fdo3;
	integer fdo4;
	integer dummy;
	integer val;
	reg [31:0] data_in0;
	reg [31:0] add_0;
    reg [31:0] data_in1;
    reg [31:0] add_1;
	// start processing
	initial begin
        // Write the data
        #310;
        ////////////////////////////////////////
        // Input from a file
       /* fdi = $fopen("/home/Margaret/MargaretVC709/CombinedVC709/VC709_IPbus_trigger/project_2/data_in.dat","r");
        fdo = $fopen("/mnt/Ddrive/GLIB Firmware/python_scripts/stubs_out.dat","w"); 
        fdo2 = $fopen("/mnt/Ddrive/GLIB Firmware/python_scripts/data_out.dat","w"); 
        fdo3 = $fopen("/mnt/Ddrive/GLIB Firmware/python_scripts/proj_out.dat","w"); 
        fdo4 = $fopen("/mnt/Ddrive/GLIB Firmware/python_scripts/res_out.dat","w"); 
        */ 
        # 900
        #2  ipb_addr = 32'h55000000;
            ipb_wdata=32'h0; ipb_write = 1'b1;
        #4  ipb_strobe = 1'b1;
            while (ipb_ack == 1'b0) begin #4; end
        #2  ipb_strobe=1'b0; ipb_write=1'b0;
        /*
        while (!$feof(fdi)) begin
            val = $fgets(str, fdi);
            dummy = $sscanf(str, "%x %x %x %x", data_in0, data_in1, add_0, add_1);
            #2  ipb_addr = add_0;
                ipb_wdata= data_in0; ipb_write = 1'b1;
            #4  ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
            #2  ipb_strobe=1'b0; ipb_write=1'b0;
        
            #2  ipb_addr = add_1;
                ipb_wdata=data_in1; ipb_write = 1'b1;
            #4  ipb_strobe = 1'b1;
                while (ipb_ack == 1'b0) begin #4; end
            #2  ipb_strobe=1'b0; ipb_write=1'b0;
            @(posedge cross_clk);
        end       
        $fclose(fdo);             
        $fclose(fdi);*/
        
        #2  ipb_addr = 32'h59000000;
            ipb_wdata= 32'hbabababa; ipb_write = 1'b1;
        #4  ipb_strobe = 1'b1;
            while (ipb_ack == 1'b0) begin #4; end
        #2  ipb_strobe=1'b0; ipb_write=1'b0;
        
        //////////////////////////////////////////////////////////////////////////////
		
        #10	en_proc = 1'b1;
        #2  ipb_addr = 32'h55000000;
            ipb_wdata=32'h1; ipb_write = 1'b1;
        #4  ipb_strobe = 1'b1;
            while (ipb_ack == 1'b0) begin #4; end
        #2  ipb_strobe=1'b0; ipb_write=1'b0;
        
//        #950
//        #2  ipb_addr = 32'h5d00000e;
//            ipb_wdata=32'h1; ipb_write = 1'b1;
//        #4  ipb_strobe = 1'b1;
//            while (ipb_ack == 1'b0) begin #4; end
//        #2  ipb_strobe=1'b0; ipb_write=1'b0;
        
        
        
    end
	
	always @(posedge cross_clk) begin
//        $fwrite(fdo, "%x %x %x %x\n",uut.tracklet_processing_phi0.R1VMRouteL1.stubinLink1, 
//                uut.tracklet_processing_phi0.R1VMRouteL1.stubinLink2, 
//                uut.tracklet_processing_phi0.R1VMRouteL1.stubinLink3, 
//                uut.tracklet_processing_phi0.R1VMRouteL1.allstuboutn1);
//        $fwrite(fdo2, "%x %x %x\n",uut.tracklet_processing_phi0.TC_L1L2.innerallstubin, 
//                    uut.tracklet_processing_phi0.TC_L1L2.outerallstubin, 
//                    uut.tracklet_processing_phi0.TC_L1L2.trackpar);
//        $fwrite(fdo3, "%x %x %x %x %x\n",uut.tracklet_processing_phi0.TC_L1D3L2D3.trackpar, 
//            uut.tracklet_processing_phi0.TC_L1D3L2D3.projection1.projection,
//            uut.tracklet_processing_phi0.TC_L1D3L2D3.projection2.projection,
//            uut.tracklet_processing_phi0.TC_L1D3L2D3.projection3.projection,
//            uut.tracklet_processing_phi0.TC_L1D3L2D3.projection4.projection
//            );
//        $fwrite(fdo4, "%x %x %x %x %x %x %x %x %x %x %x %x\n",uut.tracklet_processing_phi0.ProjCombL3_L1L2.allstubin,
//            uut.tracklet_processing_phi0.ProjCombL3_L1L2.allprojin,
//            uut.tracklet_processing_phi0.ProjCombL3_L1L2.projout,
//            uut.tracklet_processing_phi0.ProjCombL4_L1L2.allstubin,
//            uut.tracklet_processing_phi0.ProjCombL4_L1L2.allprojin,
//            uut.tracklet_processing_phi0.ProjCombL4_L1L2.projout,
//            uut.tracklet_processing_phi0.ProjCombL5_L1L2.allstubin,
//            uut.tracklet_processing_phi0.ProjCombL5_L1L2.allprojin,
//            uut.tracklet_processing_phi0.ProjCombL5_L1L2.projout,
//            uut.tracklet_processing_phi0.ProjCombL6_L1L2.allstubin,
//            uut.tracklet_processing_phi0.ProjCombL6_L1L2.allprojin,
//            uut.tracklet_processing_phi0.ProjCombL6_L1L2.projout
//            );

    end 
    
     
    
endmodule

