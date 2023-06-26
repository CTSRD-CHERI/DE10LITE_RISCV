# TCL File Generated by Component Editor 18.1
# Fri Jun 02 17:05:35 BST 2023
# DO NOT MODIFY


# 
# flute "flute" v1.0
#  2023.06.02.17:05:35
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module flute
# 
set_module_property DESCRIPTION ""
set_module_property NAME cheriflute
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME cheriflute
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL mkP2_Core
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false

add_fileset_file RevertReg.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/RevertReg.v
add_fileset_file FIFO20.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/FIFO20.v
add_fileset_file MakeReset0.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/MakeReset0.v
add_fileset_file ClockGen.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/ClockGen.v
add_fileset_file RegFile.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/RegFile.v
add_fileset_file ASSIGN1.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/ASSIGN1.v
add_fileset_file FIFO10.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/FIFO10.v
add_fileset_file MakeClock.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/MakeClock.v
add_fileset_file FIFO1.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/FIFO1.v
add_fileset_file SizedFIFO.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/SizedFIFO.v
add_fileset_file FIFOL1.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/FIFOL1.v
add_fileset_file SyncWire.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/SyncWire.v
add_fileset_file SyncResetA.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/SyncResetA.v
add_fileset_file SyncFIFOLevel.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/SyncFIFOLevel.v
add_fileset_file FIFO2.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/FIFO2.v
add_fileset_file SyncHandshake.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/SyncHandshake.v
add_fileset_file SizedFIFO0.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/SizedFIFO0.v
add_fileset_file BRAM2.v VERILOG PATH ../CheriFlute/src_SSITH_P2/altera_ip/hdl/BRAM2.v
add_fileset_file mkMMU_DCache.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkMMU_DCache.v
add_fileset_file mkTagController.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkTagController.v
add_fileset_file mkNear_Mem_IO_AXI4.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkNear_Mem_IO_AXI4.v
add_fileset_file mkRISCV_MBox.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkRISCV_MBox.v
add_fileset_file mkCSR_RegFile.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkCSR_RegFile.v
add_fileset_file mkMMU_ICache.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkMMU_ICache.v
add_fileset_file mkNear_Mem.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkNear_Mem.v
add_fileset_file mkGPR_RegFile.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkGPR_RegFile.v
add_fileset_file mkCPU.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkCPU.v
add_fileset_file mkCSR_MIP.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkCSR_MIP.v
add_fileset_file mkCore.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkCore.v
add_fileset_file mkIntMul_64.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkIntMul_64.v
add_fileset_file mkP2_Core.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkP2_Core.v
add_fileset_file mkIntMul_32.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkIntMul_32.v
add_fileset_file mkBranch_Predictor.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkBranch_Predictor.v
add_fileset_file mkSoC_Map.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkSoC_Map.v
add_fileset_file mkShifter_Box.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkShifter_Box.v
add_fileset_file mkPLIC_16_2_7.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkPLIC_16_2_7.v
add_fileset_file mkTLB.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkTLB.v
add_fileset_file mkCore_Synth.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkCore_Synth.v
add_fileset_file mkCSR_MIE.v VERILOG PATH ../CheriFlute/src_SSITH_P2/Verilog_RTL/mkCSR_MIE.v

# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock CLK clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset RST_N reset_n Input 1


# 
# connection point master0
# 
add_interface master0 axi4 start
set_interface_property master0 associatedClock clock
set_interface_property master0 associatedReset reset
set_interface_property master0 readIssuingCapability 1
set_interface_property master0 writeIssuingCapability 1
set_interface_property master0 combinedIssuingCapability 1
set_interface_property master0 ENABLED true
set_interface_property master0 EXPORT_OF ""
set_interface_property master0 PORT_NAME_MAP ""
set_interface_property master0 CMSIS_SVD_VARIABLES ""
set_interface_property master0 SVD_ADDRESS_GROUP ""

add_interface_port master0 master0_araddr araddr Output 64
add_interface_port master0 master0_arburst arburst Output 2
add_interface_port master0 master0_arcache arcache Output 4
add_interface_port master0 master0_arid arid Output 5
add_interface_port master0 master0_arlen arlen Output 8
add_interface_port master0 master0_arlock arlock Output 1
add_interface_port master0 master0_arprot arprot Output 3
add_interface_port master0 master0_arqos arqos Output 4
add_interface_port master0 master0_arready arready Input 1
add_interface_port master0 master0_arregion arregion Output 4
add_interface_port master0 master0_arsize arsize Output 3
add_interface_port master0 master0_arvalid arvalid Output 1
add_interface_port master0 master0_awaddr awaddr Output 64
add_interface_port master0 master0_awburst awburst Output 2
add_interface_port master0 master0_awcache awcache Output 4
add_interface_port master0 master0_awid awid Output 5
add_interface_port master0 master0_awlen awlen Output 8
add_interface_port master0 master0_awlock awlock Output 1
add_interface_port master0 master0_awprot awprot Output 3
add_interface_port master0 master0_awqos awqos Output 4
add_interface_port master0 master0_awready awready Input 1
add_interface_port master0 master0_awregion awregion Output 4
add_interface_port master0 master0_awsize awsize Output 3
add_interface_port master0 master0_awvalid awvalid Output 1
add_interface_port master0 master0_bid bid Input 5
add_interface_port master0 master0_bready bready Output 1
add_interface_port master0 master0_bresp bresp Input 2
add_interface_port master0 master0_bvalid bvalid Input 1
add_interface_port master0 master0_rdata rdata Input 64
add_interface_port master0 master0_rid rid Input 5
add_interface_port master0 master0_rlast rlast Input 1
add_interface_port master0 master0_rready rready Output 1
add_interface_port master0 master0_rresp rresp Input 2
add_interface_port master0 master0_rvalid rvalid Input 1
add_interface_port master0 master0_wdata wdata Output 64
add_interface_port master0 master0_wlast wlast Output 1
add_interface_port master0 master0_wready wready Input 1
add_interface_port master0 master0_wstrb wstrb Output 8
add_interface_port master0 master0_wvalid wvalid Output 1


# 
# connection point master1
# 
add_interface master1 axi4 start
set_interface_property master1 associatedClock clock
set_interface_property master1 associatedReset reset
set_interface_property master1 readIssuingCapability 1
set_interface_property master1 writeIssuingCapability 1
set_interface_property master1 combinedIssuingCapability 1
set_interface_property master1 ENABLED true
set_interface_property master1 EXPORT_OF ""
set_interface_property master1 PORT_NAME_MAP ""
set_interface_property master1 CMSIS_SVD_VARIABLES ""
set_interface_property master1 SVD_ADDRESS_GROUP ""

add_interface_port master1 master1_araddr araddr Output 64
add_interface_port master1 master1_arburst arburst Output 2
add_interface_port master1 master1_arcache arcache Output 4
add_interface_port master1 master1_arid arid Output 6
add_interface_port master1 master1_arlen arlen Output 8
add_interface_port master1 master1_arlock arlock Output 1
add_interface_port master1 master1_arprot arprot Output 3
add_interface_port master1 master1_arqos arqos Output 4
add_interface_port master1 master1_arready arready Input 1
add_interface_port master1 master1_arregion arregion Output 4
add_interface_port master1 master1_arsize arsize Output 3
add_interface_port master1 master1_arvalid arvalid Output 1
add_interface_port master1 master1_awaddr awaddr Output 64
add_interface_port master1 master1_awburst awburst Output 2
add_interface_port master1 master1_awcache awcache Output 4
add_interface_port master1 master1_awid awid Output 6
add_interface_port master1 master1_awlen awlen Output 8
add_interface_port master1 master1_awlock awlock Output 1
add_interface_port master1 master1_awprot awprot Output 3
add_interface_port master1 master1_awqos awqos Output 4
add_interface_port master1 master1_awready awready Input 1
add_interface_port master1 master1_awregion awregion Output 4
add_interface_port master1 master1_awsize awsize Output 3
add_interface_port master1 master1_awvalid awvalid Output 1
add_interface_port master1 master1_bid bid Input 6
add_interface_port master1 master1_bready bready Output 1
add_interface_port master1 master1_bresp bresp Input 2
add_interface_port master1 master1_bvalid bvalid Input 1
add_interface_port master1 master1_rdata rdata Input 64
add_interface_port master1 master1_rid rid Input 6
add_interface_port master1 master1_rlast rlast Input 1
add_interface_port master1 master1_rready rready Output 1
add_interface_port master1 master1_rresp rresp Input 2
add_interface_port master1 master1_rvalid rvalid Input 1
add_interface_port master1 master1_wdata wdata Output 64
add_interface_port master1 master1_wlast wlast Output 1
add_interface_port master1 master1_wready wready Input 1
add_interface_port master1 master1_wstrb wstrb Output 8
add_interface_port master1 master1_wvalid wvalid Output 1


# 
# connection point cpu_external_interrupt
# 
add_interface cpu_external_interrupt interrupt start
set_interface_property cpu_external_interrupt associatedAddressablePoint ""
set_interface_property cpu_external_interrupt associatedClock clock
set_interface_property cpu_external_interrupt associatedReset reset
set_interface_property cpu_external_interrupt irqScheme INDIVIDUAL_REQUESTS
set_interface_property cpu_external_interrupt ENABLED true
set_interface_property cpu_external_interrupt EXPORT_OF ""
set_interface_property cpu_external_interrupt PORT_NAME_MAP ""
set_interface_property cpu_external_interrupt CMSIS_SVD_VARIABLES ""
set_interface_property cpu_external_interrupt SVD_ADDRESS_GROUP ""

add_interface_port cpu_external_interrupt cpu_external_interrupt_req irq Input 16

