@echo off
set xv_path=D:\\Xilinx\\Vivado\\2014.4\\bin
call %xv_path%/xelab  -wto 1f5f0bc8296943cfa16ac9b53b4cb138 -m64 --debug typical --relax --include "../../../project_2.srcs/sources_1/ip/link_axis_data_fifo/axis_infrastructure_v1_1/hdl/verilog" -L gig_ethernet_pcs_pma_v14_3 -L fifo_generator_v12_0 -L xil_defaultlib -L axis_infrastructure_v1_1 -L axis_data_fifo_v1_1 -L unisims_ver -L unimacro_ver -L secureip --snapshot aurora_sim_tb_behav xil_defaultlib.aurora_sim_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
