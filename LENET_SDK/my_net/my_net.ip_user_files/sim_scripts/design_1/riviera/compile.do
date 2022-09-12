vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_vip_v1_1_5
vlib riviera/processing_system7_vip_v1_0_7
vlib riviera/blk_mem_gen_v8_4_3
vlib riviera/axi_bram_ctrl_v4_1_1
vlib riviera/xbip_utils_v3_0_10
vlib riviera/axi_utils_v2_0_6
vlib riviera/xbip_pipe_v3_0_6
vlib riviera/xbip_dsp48_wrapper_v3_0_4
vlib riviera/xbip_dsp48_addsub_v3_0_6
vlib riviera/xbip_dsp48_multadd_v3_0_6
vlib riviera/xbip_bram18k_v3_0_6
vlib riviera/mult_gen_v12_0_15
vlib riviera/floating_point_v7_1_8
vlib riviera/xlconstant_v1_1_6
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/smartconnect_v1_0

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_5 riviera/axi_vip_v1_1_5
vmap processing_system7_vip_v1_0_7 riviera/processing_system7_vip_v1_0_7
vmap blk_mem_gen_v8_4_3 riviera/blk_mem_gen_v8_4_3
vmap axi_bram_ctrl_v4_1_1 riviera/axi_bram_ctrl_v4_1_1
vmap xbip_utils_v3_0_10 riviera/xbip_utils_v3_0_10
vmap axi_utils_v2_0_6 riviera/axi_utils_v2_0_6
vmap xbip_pipe_v3_0_6 riviera/xbip_pipe_v3_0_6
vmap xbip_dsp48_wrapper_v3_0_4 riviera/xbip_dsp48_wrapper_v3_0_4
vmap xbip_dsp48_addsub_v3_0_6 riviera/xbip_dsp48_addsub_v3_0_6
vmap xbip_dsp48_multadd_v3_0_6 riviera/xbip_dsp48_multadd_v3_0_6
vmap xbip_bram18k_v3_0_6 riviera/xbip_bram18k_v3_0_6
vmap mult_gen_v12_0_15 riviera/mult_gen_v12_0_15
vmap floating_point_v7_1_8 riviera/floating_point_v7_1_8
vmap xlconstant_v1_1_6 riviera/xlconstant_v1_1_6
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 riviera/smartconnect_v1_0

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"E:/design/vivado2019/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/design/vivado2019/Vivado/2019.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/design/vivado2019/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/design/vivado2019/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_5  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/d4a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_7  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work blk_mem_gen_v8_4_3  -v2k5 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/c001/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_1/sim/design_1_blk_mem_gen_0_1.v" \

vcom -work axi_bram_ctrl_v4_1_1 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/70bf/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_1/sim/design_1_axi_bram_ctrl_0_1.vhd" \
"../../../bd/design_1/ip/design_1_axi_bram_ctrl_0_2/sim/design_1_axi_bram_ctrl_0_2.vhd" \

vcom -work xbip_utils_v3_0_10 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1123/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work axi_utils_v2_0_6 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1971/hdl/axi_utils_v2_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_6 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/7468/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_wrapper_v3_0_4 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/cdbf/hdl/xbip_dsp48_wrapper_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_addsub_v3_0_6 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/910d/hdl/xbip_dsp48_addsub_v3_0_vh_rfs.vhd" \

vcom -work xbip_dsp48_multadd_v3_0_6 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b0ac/hdl/xbip_dsp48_multadd_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_6 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/d367/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_15 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/d4d2/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work floating_point_v7_1_8 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/83a3/hdl/floating_point_v7_1_vh_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/conv2.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/conv2_1.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/conv2_1_conv1_weibkb.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/conv2_conv2_weight.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_am_addmul_g8j.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_conv1_bias.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_conv1_output.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_conv2_bias.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_conv2_output.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_CRTL_BUS_s_axi.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fadd_32ns_ibs.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fc1_bias.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fc1_output.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fc1_weight1.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fc1_weight2.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fc2_bias.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fc2_output.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fc2_weight.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fc3_bias.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fc3_output.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fc3_weight.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fdiv_32ns_jbC.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_fexp_32ns_lbW.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_hadd_16ns_cud.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_hcmp_16ns_eOg.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_hmul_16ns_dEe.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_hptosp_16nncg.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_hsub_16ns_ocq.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_input1.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_mul_mul_5nfYi.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_output1.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_output1_1.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_pool1_output.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_pool2_output.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_sitofp_32nkbM.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net_sptohp_32nmb6.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/pool.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/pool_1.v" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/verilog/my_net.v" \

vcom -work xil_defaultlib -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/ip/my_net_ap_fadd_3_full_dsp_32.vhd" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/ip/my_net_ap_fdiv_14_no_dsp_32.vhd" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/ip/my_net_ap_fexp_7_full_dsp_32.vhd" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/ip/my_net_ap_hadd_3_full_dsp_16.vhd" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/ip/my_net_ap_hcmp_0_no_dsp_16.vhd" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/ip/my_net_ap_hmul_2_max_dsp_16.vhd" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/ip/my_net_ap_hptosp_0_no_dsp_16.vhd" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/ip/my_net_ap_hsub_3_full_dsp_16.vhd" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/ip/my_net_ap_sitofp_4_no_dsp_32.vhd" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/190e/hdl/ip/my_net_ap_sptohp_0_no_dsp_32.vhd" \
"../../../bd/design_1/ip/design_1_my_net_0_1/sim/design_1_my_net_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/sim/design_1.v" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_6  -v2k5 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/66e7/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/f85e/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ca72/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/7de4/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b387/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_m00e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m01s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m01arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m01rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m01awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_27/sim/bd_afc3_m01wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_28/sim/bd_afc3_m01bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_29/sim/bd_afc3_m01e_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_30/sim/bd_afc3_m02s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_31/sim/bd_afc3_m02arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_32/sim/bd_afc3_m02rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_33/sim/bd_afc3_m02awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_34/sim/bd_afc3_m02wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_35/sim/bd_afc3_m02bn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_36/sim/bd_afc3_m02e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/8c62/hdl" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/1ddd/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ipshared/b2d0/hdl/verilog" "+incdir+../../../../my_net.srcs/sources_1/bd/design_1/ip/design_1_processing_system7_0_0" "+incdir+E:/design/vivado2019/Vivado/2019.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_1/sim/design_1_rst_ps7_0_100M_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

