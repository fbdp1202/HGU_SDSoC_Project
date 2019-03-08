set moduleName read_A
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {read_A}
set C_modelType { void 0 }
set C_modelArgList {
	{ A float 32 regular {fifo 0 volatile }  }
	{ la_0 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_1 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_2 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_3 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_4 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_5 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_6 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_7 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_8 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_9 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_10 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_11 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_12 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_13 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_14 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_15 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_16 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_17 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_18 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_19 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_20 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_21 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_22 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_23 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_24 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_25 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_26 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_27 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_28 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_29 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_30 float 32 regular {array 144 { 0 3 } 0 1 }  }
	{ la_31 float 32 regular {array 144 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "la_0", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_4", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_5", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_6", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_7", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_8", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_9", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_10", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_11", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_12", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_13", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_14", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_15", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_16", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_17", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_18", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_19", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_20", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_21", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_22", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_23", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_24", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_25", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_26", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_27", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_28", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_29", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_30", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "la_31", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 138
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_dout sc_in sc_lv 32 signal 0 } 
	{ A_empty_n sc_in sc_logic 1 signal 0 } 
	{ A_read sc_out sc_logic 1 signal 0 } 
	{ la_0_address0 sc_out sc_lv 8 signal 1 } 
	{ la_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ la_0_we0 sc_out sc_logic 1 signal 1 } 
	{ la_0_d0 sc_out sc_lv 32 signal 1 } 
	{ la_1_address0 sc_out sc_lv 8 signal 2 } 
	{ la_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ la_1_we0 sc_out sc_logic 1 signal 2 } 
	{ la_1_d0 sc_out sc_lv 32 signal 2 } 
	{ la_2_address0 sc_out sc_lv 8 signal 3 } 
	{ la_2_ce0 sc_out sc_logic 1 signal 3 } 
	{ la_2_we0 sc_out sc_logic 1 signal 3 } 
	{ la_2_d0 sc_out sc_lv 32 signal 3 } 
	{ la_3_address0 sc_out sc_lv 8 signal 4 } 
	{ la_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ la_3_we0 sc_out sc_logic 1 signal 4 } 
	{ la_3_d0 sc_out sc_lv 32 signal 4 } 
	{ la_4_address0 sc_out sc_lv 8 signal 5 } 
	{ la_4_ce0 sc_out sc_logic 1 signal 5 } 
	{ la_4_we0 sc_out sc_logic 1 signal 5 } 
	{ la_4_d0 sc_out sc_lv 32 signal 5 } 
	{ la_5_address0 sc_out sc_lv 8 signal 6 } 
	{ la_5_ce0 sc_out sc_logic 1 signal 6 } 
	{ la_5_we0 sc_out sc_logic 1 signal 6 } 
	{ la_5_d0 sc_out sc_lv 32 signal 6 } 
	{ la_6_address0 sc_out sc_lv 8 signal 7 } 
	{ la_6_ce0 sc_out sc_logic 1 signal 7 } 
	{ la_6_we0 sc_out sc_logic 1 signal 7 } 
	{ la_6_d0 sc_out sc_lv 32 signal 7 } 
	{ la_7_address0 sc_out sc_lv 8 signal 8 } 
	{ la_7_ce0 sc_out sc_logic 1 signal 8 } 
	{ la_7_we0 sc_out sc_logic 1 signal 8 } 
	{ la_7_d0 sc_out sc_lv 32 signal 8 } 
	{ la_8_address0 sc_out sc_lv 8 signal 9 } 
	{ la_8_ce0 sc_out sc_logic 1 signal 9 } 
	{ la_8_we0 sc_out sc_logic 1 signal 9 } 
	{ la_8_d0 sc_out sc_lv 32 signal 9 } 
	{ la_9_address0 sc_out sc_lv 8 signal 10 } 
	{ la_9_ce0 sc_out sc_logic 1 signal 10 } 
	{ la_9_we0 sc_out sc_logic 1 signal 10 } 
	{ la_9_d0 sc_out sc_lv 32 signal 10 } 
	{ la_10_address0 sc_out sc_lv 8 signal 11 } 
	{ la_10_ce0 sc_out sc_logic 1 signal 11 } 
	{ la_10_we0 sc_out sc_logic 1 signal 11 } 
	{ la_10_d0 sc_out sc_lv 32 signal 11 } 
	{ la_11_address0 sc_out sc_lv 8 signal 12 } 
	{ la_11_ce0 sc_out sc_logic 1 signal 12 } 
	{ la_11_we0 sc_out sc_logic 1 signal 12 } 
	{ la_11_d0 sc_out sc_lv 32 signal 12 } 
	{ la_12_address0 sc_out sc_lv 8 signal 13 } 
	{ la_12_ce0 sc_out sc_logic 1 signal 13 } 
	{ la_12_we0 sc_out sc_logic 1 signal 13 } 
	{ la_12_d0 sc_out sc_lv 32 signal 13 } 
	{ la_13_address0 sc_out sc_lv 8 signal 14 } 
	{ la_13_ce0 sc_out sc_logic 1 signal 14 } 
	{ la_13_we0 sc_out sc_logic 1 signal 14 } 
	{ la_13_d0 sc_out sc_lv 32 signal 14 } 
	{ la_14_address0 sc_out sc_lv 8 signal 15 } 
	{ la_14_ce0 sc_out sc_logic 1 signal 15 } 
	{ la_14_we0 sc_out sc_logic 1 signal 15 } 
	{ la_14_d0 sc_out sc_lv 32 signal 15 } 
	{ la_15_address0 sc_out sc_lv 8 signal 16 } 
	{ la_15_ce0 sc_out sc_logic 1 signal 16 } 
	{ la_15_we0 sc_out sc_logic 1 signal 16 } 
	{ la_15_d0 sc_out sc_lv 32 signal 16 } 
	{ la_16_address0 sc_out sc_lv 8 signal 17 } 
	{ la_16_ce0 sc_out sc_logic 1 signal 17 } 
	{ la_16_we0 sc_out sc_logic 1 signal 17 } 
	{ la_16_d0 sc_out sc_lv 32 signal 17 } 
	{ la_17_address0 sc_out sc_lv 8 signal 18 } 
	{ la_17_ce0 sc_out sc_logic 1 signal 18 } 
	{ la_17_we0 sc_out sc_logic 1 signal 18 } 
	{ la_17_d0 sc_out sc_lv 32 signal 18 } 
	{ la_18_address0 sc_out sc_lv 8 signal 19 } 
	{ la_18_ce0 sc_out sc_logic 1 signal 19 } 
	{ la_18_we0 sc_out sc_logic 1 signal 19 } 
	{ la_18_d0 sc_out sc_lv 32 signal 19 } 
	{ la_19_address0 sc_out sc_lv 8 signal 20 } 
	{ la_19_ce0 sc_out sc_logic 1 signal 20 } 
	{ la_19_we0 sc_out sc_logic 1 signal 20 } 
	{ la_19_d0 sc_out sc_lv 32 signal 20 } 
	{ la_20_address0 sc_out sc_lv 8 signal 21 } 
	{ la_20_ce0 sc_out sc_logic 1 signal 21 } 
	{ la_20_we0 sc_out sc_logic 1 signal 21 } 
	{ la_20_d0 sc_out sc_lv 32 signal 21 } 
	{ la_21_address0 sc_out sc_lv 8 signal 22 } 
	{ la_21_ce0 sc_out sc_logic 1 signal 22 } 
	{ la_21_we0 sc_out sc_logic 1 signal 22 } 
	{ la_21_d0 sc_out sc_lv 32 signal 22 } 
	{ la_22_address0 sc_out sc_lv 8 signal 23 } 
	{ la_22_ce0 sc_out sc_logic 1 signal 23 } 
	{ la_22_we0 sc_out sc_logic 1 signal 23 } 
	{ la_22_d0 sc_out sc_lv 32 signal 23 } 
	{ la_23_address0 sc_out sc_lv 8 signal 24 } 
	{ la_23_ce0 sc_out sc_logic 1 signal 24 } 
	{ la_23_we0 sc_out sc_logic 1 signal 24 } 
	{ la_23_d0 sc_out sc_lv 32 signal 24 } 
	{ la_24_address0 sc_out sc_lv 8 signal 25 } 
	{ la_24_ce0 sc_out sc_logic 1 signal 25 } 
	{ la_24_we0 sc_out sc_logic 1 signal 25 } 
	{ la_24_d0 sc_out sc_lv 32 signal 25 } 
	{ la_25_address0 sc_out sc_lv 8 signal 26 } 
	{ la_25_ce0 sc_out sc_logic 1 signal 26 } 
	{ la_25_we0 sc_out sc_logic 1 signal 26 } 
	{ la_25_d0 sc_out sc_lv 32 signal 26 } 
	{ la_26_address0 sc_out sc_lv 8 signal 27 } 
	{ la_26_ce0 sc_out sc_logic 1 signal 27 } 
	{ la_26_we0 sc_out sc_logic 1 signal 27 } 
	{ la_26_d0 sc_out sc_lv 32 signal 27 } 
	{ la_27_address0 sc_out sc_lv 8 signal 28 } 
	{ la_27_ce0 sc_out sc_logic 1 signal 28 } 
	{ la_27_we0 sc_out sc_logic 1 signal 28 } 
	{ la_27_d0 sc_out sc_lv 32 signal 28 } 
	{ la_28_address0 sc_out sc_lv 8 signal 29 } 
	{ la_28_ce0 sc_out sc_logic 1 signal 29 } 
	{ la_28_we0 sc_out sc_logic 1 signal 29 } 
	{ la_28_d0 sc_out sc_lv 32 signal 29 } 
	{ la_29_address0 sc_out sc_lv 8 signal 30 } 
	{ la_29_ce0 sc_out sc_logic 1 signal 30 } 
	{ la_29_we0 sc_out sc_logic 1 signal 30 } 
	{ la_29_d0 sc_out sc_lv 32 signal 30 } 
	{ la_30_address0 sc_out sc_lv 8 signal 31 } 
	{ la_30_ce0 sc_out sc_logic 1 signal 31 } 
	{ la_30_we0 sc_out sc_logic 1 signal 31 } 
	{ la_30_d0 sc_out sc_lv 32 signal 31 } 
	{ la_31_address0 sc_out sc_lv 8 signal 32 } 
	{ la_31_ce0 sc_out sc_logic 1 signal 32 } 
	{ la_31_we0 sc_out sc_logic 1 signal 32 } 
	{ la_31_d0 sc_out sc_lv 32 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "dout" }} , 
 	{ "name": "A_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "empty_n" }} , 
 	{ "name": "A_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "read" }} , 
 	{ "name": "la_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_0", "role": "address0" }} , 
 	{ "name": "la_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_0", "role": "ce0" }} , 
 	{ "name": "la_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_0", "role": "we0" }} , 
 	{ "name": "la_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_0", "role": "d0" }} , 
 	{ "name": "la_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_1", "role": "address0" }} , 
 	{ "name": "la_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_1", "role": "ce0" }} , 
 	{ "name": "la_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_1", "role": "we0" }} , 
 	{ "name": "la_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_1", "role": "d0" }} , 
 	{ "name": "la_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_2", "role": "address0" }} , 
 	{ "name": "la_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_2", "role": "ce0" }} , 
 	{ "name": "la_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_2", "role": "we0" }} , 
 	{ "name": "la_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_2", "role": "d0" }} , 
 	{ "name": "la_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_3", "role": "address0" }} , 
 	{ "name": "la_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_3", "role": "ce0" }} , 
 	{ "name": "la_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_3", "role": "we0" }} , 
 	{ "name": "la_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_3", "role": "d0" }} , 
 	{ "name": "la_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_4", "role": "address0" }} , 
 	{ "name": "la_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_4", "role": "ce0" }} , 
 	{ "name": "la_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_4", "role": "we0" }} , 
 	{ "name": "la_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_4", "role": "d0" }} , 
 	{ "name": "la_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_5", "role": "address0" }} , 
 	{ "name": "la_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_5", "role": "ce0" }} , 
 	{ "name": "la_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_5", "role": "we0" }} , 
 	{ "name": "la_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_5", "role": "d0" }} , 
 	{ "name": "la_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_6", "role": "address0" }} , 
 	{ "name": "la_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_6", "role": "ce0" }} , 
 	{ "name": "la_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_6", "role": "we0" }} , 
 	{ "name": "la_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_6", "role": "d0" }} , 
 	{ "name": "la_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_7", "role": "address0" }} , 
 	{ "name": "la_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_7", "role": "ce0" }} , 
 	{ "name": "la_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_7", "role": "we0" }} , 
 	{ "name": "la_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_7", "role": "d0" }} , 
 	{ "name": "la_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_8", "role": "address0" }} , 
 	{ "name": "la_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_8", "role": "ce0" }} , 
 	{ "name": "la_8_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_8", "role": "we0" }} , 
 	{ "name": "la_8_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_8", "role": "d0" }} , 
 	{ "name": "la_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_9", "role": "address0" }} , 
 	{ "name": "la_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_9", "role": "ce0" }} , 
 	{ "name": "la_9_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_9", "role": "we0" }} , 
 	{ "name": "la_9_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_9", "role": "d0" }} , 
 	{ "name": "la_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_10", "role": "address0" }} , 
 	{ "name": "la_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_10", "role": "ce0" }} , 
 	{ "name": "la_10_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_10", "role": "we0" }} , 
 	{ "name": "la_10_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_10", "role": "d0" }} , 
 	{ "name": "la_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_11", "role": "address0" }} , 
 	{ "name": "la_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_11", "role": "ce0" }} , 
 	{ "name": "la_11_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_11", "role": "we0" }} , 
 	{ "name": "la_11_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_11", "role": "d0" }} , 
 	{ "name": "la_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_12", "role": "address0" }} , 
 	{ "name": "la_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_12", "role": "ce0" }} , 
 	{ "name": "la_12_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_12", "role": "we0" }} , 
 	{ "name": "la_12_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_12", "role": "d0" }} , 
 	{ "name": "la_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_13", "role": "address0" }} , 
 	{ "name": "la_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_13", "role": "ce0" }} , 
 	{ "name": "la_13_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_13", "role": "we0" }} , 
 	{ "name": "la_13_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_13", "role": "d0" }} , 
 	{ "name": "la_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_14", "role": "address0" }} , 
 	{ "name": "la_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_14", "role": "ce0" }} , 
 	{ "name": "la_14_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_14", "role": "we0" }} , 
 	{ "name": "la_14_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_14", "role": "d0" }} , 
 	{ "name": "la_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_15", "role": "address0" }} , 
 	{ "name": "la_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_15", "role": "ce0" }} , 
 	{ "name": "la_15_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_15", "role": "we0" }} , 
 	{ "name": "la_15_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_15", "role": "d0" }} , 
 	{ "name": "la_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_16", "role": "address0" }} , 
 	{ "name": "la_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_16", "role": "ce0" }} , 
 	{ "name": "la_16_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_16", "role": "we0" }} , 
 	{ "name": "la_16_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_16", "role": "d0" }} , 
 	{ "name": "la_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_17", "role": "address0" }} , 
 	{ "name": "la_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_17", "role": "ce0" }} , 
 	{ "name": "la_17_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_17", "role": "we0" }} , 
 	{ "name": "la_17_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_17", "role": "d0" }} , 
 	{ "name": "la_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_18", "role": "address0" }} , 
 	{ "name": "la_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_18", "role": "ce0" }} , 
 	{ "name": "la_18_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_18", "role": "we0" }} , 
 	{ "name": "la_18_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_18", "role": "d0" }} , 
 	{ "name": "la_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_19", "role": "address0" }} , 
 	{ "name": "la_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_19", "role": "ce0" }} , 
 	{ "name": "la_19_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_19", "role": "we0" }} , 
 	{ "name": "la_19_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_19", "role": "d0" }} , 
 	{ "name": "la_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_20", "role": "address0" }} , 
 	{ "name": "la_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_20", "role": "ce0" }} , 
 	{ "name": "la_20_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_20", "role": "we0" }} , 
 	{ "name": "la_20_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_20", "role": "d0" }} , 
 	{ "name": "la_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_21", "role": "address0" }} , 
 	{ "name": "la_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_21", "role": "ce0" }} , 
 	{ "name": "la_21_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_21", "role": "we0" }} , 
 	{ "name": "la_21_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_21", "role": "d0" }} , 
 	{ "name": "la_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_22", "role": "address0" }} , 
 	{ "name": "la_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_22", "role": "ce0" }} , 
 	{ "name": "la_22_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_22", "role": "we0" }} , 
 	{ "name": "la_22_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_22", "role": "d0" }} , 
 	{ "name": "la_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_23", "role": "address0" }} , 
 	{ "name": "la_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_23", "role": "ce0" }} , 
 	{ "name": "la_23_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_23", "role": "we0" }} , 
 	{ "name": "la_23_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_23", "role": "d0" }} , 
 	{ "name": "la_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_24", "role": "address0" }} , 
 	{ "name": "la_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_24", "role": "ce0" }} , 
 	{ "name": "la_24_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_24", "role": "we0" }} , 
 	{ "name": "la_24_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_24", "role": "d0" }} , 
 	{ "name": "la_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_25", "role": "address0" }} , 
 	{ "name": "la_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_25", "role": "ce0" }} , 
 	{ "name": "la_25_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_25", "role": "we0" }} , 
 	{ "name": "la_25_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_25", "role": "d0" }} , 
 	{ "name": "la_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_26", "role": "address0" }} , 
 	{ "name": "la_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_26", "role": "ce0" }} , 
 	{ "name": "la_26_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_26", "role": "we0" }} , 
 	{ "name": "la_26_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_26", "role": "d0" }} , 
 	{ "name": "la_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_27", "role": "address0" }} , 
 	{ "name": "la_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_27", "role": "ce0" }} , 
 	{ "name": "la_27_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_27", "role": "we0" }} , 
 	{ "name": "la_27_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_27", "role": "d0" }} , 
 	{ "name": "la_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_28", "role": "address0" }} , 
 	{ "name": "la_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_28", "role": "ce0" }} , 
 	{ "name": "la_28_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_28", "role": "we0" }} , 
 	{ "name": "la_28_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_28", "role": "d0" }} , 
 	{ "name": "la_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_29", "role": "address0" }} , 
 	{ "name": "la_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_29", "role": "ce0" }} , 
 	{ "name": "la_29_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_29", "role": "we0" }} , 
 	{ "name": "la_29_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_29", "role": "d0" }} , 
 	{ "name": "la_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_30", "role": "address0" }} , 
 	{ "name": "la_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_30", "role": "ce0" }} , 
 	{ "name": "la_30_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_30", "role": "we0" }} , 
 	{ "name": "la_30_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_30", "role": "d0" }} , 
 	{ "name": "la_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "la_31", "role": "address0" }} , 
 	{ "name": "la_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_31", "role": "ce0" }} , 
 	{ "name": "la_31_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "la_31", "role": "we0" }} , 
 	{ "name": "la_31_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "la_31", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "read_A",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4610", "EstimateLatencyMax" : "4610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "la_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "la_31", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	read_A {
		A {Type I LastRead 2 FirstWrite -1}
		la_0 {Type O LastRead -1 FirstWrite 2}
		la_1 {Type O LastRead -1 FirstWrite 2}
		la_2 {Type O LastRead -1 FirstWrite 2}
		la_3 {Type O LastRead -1 FirstWrite 2}
		la_4 {Type O LastRead -1 FirstWrite 2}
		la_5 {Type O LastRead -1 FirstWrite 2}
		la_6 {Type O LastRead -1 FirstWrite 2}
		la_7 {Type O LastRead -1 FirstWrite 2}
		la_8 {Type O LastRead -1 FirstWrite 2}
		la_9 {Type O LastRead -1 FirstWrite 2}
		la_10 {Type O LastRead -1 FirstWrite 2}
		la_11 {Type O LastRead -1 FirstWrite 2}
		la_12 {Type O LastRead -1 FirstWrite 2}
		la_13 {Type O LastRead -1 FirstWrite 2}
		la_14 {Type O LastRead -1 FirstWrite 2}
		la_15 {Type O LastRead -1 FirstWrite 2}
		la_16 {Type O LastRead -1 FirstWrite 2}
		la_17 {Type O LastRead -1 FirstWrite 2}
		la_18 {Type O LastRead -1 FirstWrite 2}
		la_19 {Type O LastRead -1 FirstWrite 2}
		la_20 {Type O LastRead -1 FirstWrite 2}
		la_21 {Type O LastRead -1 FirstWrite 2}
		la_22 {Type O LastRead -1 FirstWrite 2}
		la_23 {Type O LastRead -1 FirstWrite 2}
		la_24 {Type O LastRead -1 FirstWrite 2}
		la_25 {Type O LastRead -1 FirstWrite 2}
		la_26 {Type O LastRead -1 FirstWrite 2}
		la_27 {Type O LastRead -1 FirstWrite 2}
		la_28 {Type O LastRead -1 FirstWrite 2}
		la_29 {Type O LastRead -1 FirstWrite 2}
		la_30 {Type O LastRead -1 FirstWrite 2}
		la_31 {Type O LastRead -1 FirstWrite 2}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4610", "Max" : "4610"}
	, {"Name" : "Interval", "Min" : "4610", "Max" : "4610"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A { ap_fifo {  { A_dout fifo_data 0 32 }  { A_empty_n fifo_status 0 1 }  { A_read fifo_update 1 1 } } }
	la_0 { ap_memory {  { la_0_address0 mem_address 1 8 }  { la_0_ce0 mem_ce 1 1 }  { la_0_we0 mem_we 1 1 }  { la_0_d0 mem_din 1 32 } } }
	la_1 { ap_memory {  { la_1_address0 mem_address 1 8 }  { la_1_ce0 mem_ce 1 1 }  { la_1_we0 mem_we 1 1 }  { la_1_d0 mem_din 1 32 } } }
	la_2 { ap_memory {  { la_2_address0 mem_address 1 8 }  { la_2_ce0 mem_ce 1 1 }  { la_2_we0 mem_we 1 1 }  { la_2_d0 mem_din 1 32 } } }
	la_3 { ap_memory {  { la_3_address0 mem_address 1 8 }  { la_3_ce0 mem_ce 1 1 }  { la_3_we0 mem_we 1 1 }  { la_3_d0 mem_din 1 32 } } }
	la_4 { ap_memory {  { la_4_address0 mem_address 1 8 }  { la_4_ce0 mem_ce 1 1 }  { la_4_we0 mem_we 1 1 }  { la_4_d0 mem_din 1 32 } } }
	la_5 { ap_memory {  { la_5_address0 mem_address 1 8 }  { la_5_ce0 mem_ce 1 1 }  { la_5_we0 mem_we 1 1 }  { la_5_d0 mem_din 1 32 } } }
	la_6 { ap_memory {  { la_6_address0 mem_address 1 8 }  { la_6_ce0 mem_ce 1 1 }  { la_6_we0 mem_we 1 1 }  { la_6_d0 mem_din 1 32 } } }
	la_7 { ap_memory {  { la_7_address0 mem_address 1 8 }  { la_7_ce0 mem_ce 1 1 }  { la_7_we0 mem_we 1 1 }  { la_7_d0 mem_din 1 32 } } }
	la_8 { ap_memory {  { la_8_address0 mem_address 1 8 }  { la_8_ce0 mem_ce 1 1 }  { la_8_we0 mem_we 1 1 }  { la_8_d0 mem_din 1 32 } } }
	la_9 { ap_memory {  { la_9_address0 mem_address 1 8 }  { la_9_ce0 mem_ce 1 1 }  { la_9_we0 mem_we 1 1 }  { la_9_d0 mem_din 1 32 } } }
	la_10 { ap_memory {  { la_10_address0 mem_address 1 8 }  { la_10_ce0 mem_ce 1 1 }  { la_10_we0 mem_we 1 1 }  { la_10_d0 mem_din 1 32 } } }
	la_11 { ap_memory {  { la_11_address0 mem_address 1 8 }  { la_11_ce0 mem_ce 1 1 }  { la_11_we0 mem_we 1 1 }  { la_11_d0 mem_din 1 32 } } }
	la_12 { ap_memory {  { la_12_address0 mem_address 1 8 }  { la_12_ce0 mem_ce 1 1 }  { la_12_we0 mem_we 1 1 }  { la_12_d0 mem_din 1 32 } } }
	la_13 { ap_memory {  { la_13_address0 mem_address 1 8 }  { la_13_ce0 mem_ce 1 1 }  { la_13_we0 mem_we 1 1 }  { la_13_d0 mem_din 1 32 } } }
	la_14 { ap_memory {  { la_14_address0 mem_address 1 8 }  { la_14_ce0 mem_ce 1 1 }  { la_14_we0 mem_we 1 1 }  { la_14_d0 mem_din 1 32 } } }
	la_15 { ap_memory {  { la_15_address0 mem_address 1 8 }  { la_15_ce0 mem_ce 1 1 }  { la_15_we0 mem_we 1 1 }  { la_15_d0 mem_din 1 32 } } }
	la_16 { ap_memory {  { la_16_address0 mem_address 1 8 }  { la_16_ce0 mem_ce 1 1 }  { la_16_we0 mem_we 1 1 }  { la_16_d0 mem_din 1 32 } } }
	la_17 { ap_memory {  { la_17_address0 mem_address 1 8 }  { la_17_ce0 mem_ce 1 1 }  { la_17_we0 mem_we 1 1 }  { la_17_d0 mem_din 1 32 } } }
	la_18 { ap_memory {  { la_18_address0 mem_address 1 8 }  { la_18_ce0 mem_ce 1 1 }  { la_18_we0 mem_we 1 1 }  { la_18_d0 mem_din 1 32 } } }
	la_19 { ap_memory {  { la_19_address0 mem_address 1 8 }  { la_19_ce0 mem_ce 1 1 }  { la_19_we0 mem_we 1 1 }  { la_19_d0 mem_din 1 32 } } }
	la_20 { ap_memory {  { la_20_address0 mem_address 1 8 }  { la_20_ce0 mem_ce 1 1 }  { la_20_we0 mem_we 1 1 }  { la_20_d0 mem_din 1 32 } } }
	la_21 { ap_memory {  { la_21_address0 mem_address 1 8 }  { la_21_ce0 mem_ce 1 1 }  { la_21_we0 mem_we 1 1 }  { la_21_d0 mem_din 1 32 } } }
	la_22 { ap_memory {  { la_22_address0 mem_address 1 8 }  { la_22_ce0 mem_ce 1 1 }  { la_22_we0 mem_we 1 1 }  { la_22_d0 mem_din 1 32 } } }
	la_23 { ap_memory {  { la_23_address0 mem_address 1 8 }  { la_23_ce0 mem_ce 1 1 }  { la_23_we0 mem_we 1 1 }  { la_23_d0 mem_din 1 32 } } }
	la_24 { ap_memory {  { la_24_address0 mem_address 1 8 }  { la_24_ce0 mem_ce 1 1 }  { la_24_we0 mem_we 1 1 }  { la_24_d0 mem_din 1 32 } } }
	la_25 { ap_memory {  { la_25_address0 mem_address 1 8 }  { la_25_ce0 mem_ce 1 1 }  { la_25_we0 mem_we 1 1 }  { la_25_d0 mem_din 1 32 } } }
	la_26 { ap_memory {  { la_26_address0 mem_address 1 8 }  { la_26_ce0 mem_ce 1 1 }  { la_26_we0 mem_we 1 1 }  { la_26_d0 mem_din 1 32 } } }
	la_27 { ap_memory {  { la_27_address0 mem_address 1 8 }  { la_27_ce0 mem_ce 1 1 }  { la_27_we0 mem_we 1 1 }  { la_27_d0 mem_din 1 32 } } }
	la_28 { ap_memory {  { la_28_address0 mem_address 1 8 }  { la_28_ce0 mem_ce 1 1 }  { la_28_we0 mem_we 1 1 }  { la_28_d0 mem_din 1 32 } } }
	la_29 { ap_memory {  { la_29_address0 mem_address 1 8 }  { la_29_ce0 mem_ce 1 1 }  { la_29_we0 mem_we 1 1 }  { la_29_d0 mem_din 1 32 } } }
	la_30 { ap_memory {  { la_30_address0 mem_address 1 8 }  { la_30_ce0 mem_ce 1 1 }  { la_30_we0 mem_we 1 1 }  { la_30_d0 mem_din 1 32 } } }
	la_31 { ap_memory {  { la_31_address0 mem_address 1 8 }  { la_31_ce0 mem_ce 1 1 }  { la_31_we0 mem_we 1 1 }  { la_31_d0 mem_din 1 32 } } }
}
