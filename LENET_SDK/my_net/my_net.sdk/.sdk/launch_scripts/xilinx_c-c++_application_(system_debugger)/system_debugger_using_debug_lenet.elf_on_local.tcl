connect -url tcp:127.0.0.1:3121
source C:/Users/Administrator/Desktop/lenet/LENET_SDK/my_net/my_net.sdk/design_1_wrapper_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39B88"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248A39B88" && level==0} -index 1
fpga -file C:/Users/Administrator/Desktop/lenet/LENET_SDK/my_net/my_net.sdk/design_1_wrapper_hw_platform_0/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39B88"} -index 0
loadhw -hw C:/Users/Administrator/Desktop/lenet/LENET_SDK/my_net/my_net.sdk/design_1_wrapper_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent Zed 210248A39B88"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A39B88"} -index 0
dow C:/Users/Administrator/Desktop/lenet/LENET_SDK/my_net/my_net.sdk/lenet/Debug/lenet.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent Zed 210248A39B88"} -index 0
con
