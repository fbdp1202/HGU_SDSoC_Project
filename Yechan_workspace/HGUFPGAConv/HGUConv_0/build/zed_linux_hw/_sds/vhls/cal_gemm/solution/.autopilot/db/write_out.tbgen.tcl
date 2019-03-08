set moduleName write_out
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
set C_modelName {write_out}
set C_modelType { void 0 }
set C_modelArgList {
	{ lout_0 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_1 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_2 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_3 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_4 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_5 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_6 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_7 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_8 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_9 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_10 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_11 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_12 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_13 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_14 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_15 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_16 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_17 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_18 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_19 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_20 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_21 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_22 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_23 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_24 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_25 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_26 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_27 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_28 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_29 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_30 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ lout_31 float 32 regular {array 169 { 1 3 } 1 1 }  }
	{ C float 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "lout_0", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_4", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_5", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_6", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_7", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_8", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_9", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_10", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_11", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_12", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_13", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_14", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_15", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_16", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_17", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_18", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_19", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_20", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_21", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_22", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_23", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_24", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_25", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_26", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_27", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_28", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_29", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_30", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "lout_31", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "C", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 105
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ lout_0_address0 sc_out sc_lv 8 signal 0 } 
	{ lout_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ lout_0_q0 sc_in sc_lv 32 signal 0 } 
	{ lout_1_address0 sc_out sc_lv 8 signal 1 } 
	{ lout_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ lout_1_q0 sc_in sc_lv 32 signal 1 } 
	{ lout_2_address0 sc_out sc_lv 8 signal 2 } 
	{ lout_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ lout_2_q0 sc_in sc_lv 32 signal 2 } 
	{ lout_3_address0 sc_out sc_lv 8 signal 3 } 
	{ lout_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ lout_3_q0 sc_in sc_lv 32 signal 3 } 
	{ lout_4_address0 sc_out sc_lv 8 signal 4 } 
	{ lout_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ lout_4_q0 sc_in sc_lv 32 signal 4 } 
	{ lout_5_address0 sc_out sc_lv 8 signal 5 } 
	{ lout_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ lout_5_q0 sc_in sc_lv 32 signal 5 } 
	{ lout_6_address0 sc_out sc_lv 8 signal 6 } 
	{ lout_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ lout_6_q0 sc_in sc_lv 32 signal 6 } 
	{ lout_7_address0 sc_out sc_lv 8 signal 7 } 
	{ lout_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ lout_7_q0 sc_in sc_lv 32 signal 7 } 
	{ lout_8_address0 sc_out sc_lv 8 signal 8 } 
	{ lout_8_ce0 sc_out sc_logic 1 signal 8 } 
	{ lout_8_q0 sc_in sc_lv 32 signal 8 } 
	{ lout_9_address0 sc_out sc_lv 8 signal 9 } 
	{ lout_9_ce0 sc_out sc_logic 1 signal 9 } 
	{ lout_9_q0 sc_in sc_lv 32 signal 9 } 
	{ lout_10_address0 sc_out sc_lv 8 signal 10 } 
	{ lout_10_ce0 sc_out sc_logic 1 signal 10 } 
	{ lout_10_q0 sc_in sc_lv 32 signal 10 } 
	{ lout_11_address0 sc_out sc_lv 8 signal 11 } 
	{ lout_11_ce0 sc_out sc_logic 1 signal 11 } 
	{ lout_11_q0 sc_in sc_lv 32 signal 11 } 
	{ lout_12_address0 sc_out sc_lv 8 signal 12 } 
	{ lout_12_ce0 sc_out sc_logic 1 signal 12 } 
	{ lout_12_q0 sc_in sc_lv 32 signal 12 } 
	{ lout_13_address0 sc_out sc_lv 8 signal 13 } 
	{ lout_13_ce0 sc_out sc_logic 1 signal 13 } 
	{ lout_13_q0 sc_in sc_lv 32 signal 13 } 
	{ lout_14_address0 sc_out sc_lv 8 signal 14 } 
	{ lout_14_ce0 sc_out sc_logic 1 signal 14 } 
	{ lout_14_q0 sc_in sc_lv 32 signal 14 } 
	{ lout_15_address0 sc_out sc_lv 8 signal 15 } 
	{ lout_15_ce0 sc_out sc_logic 1 signal 15 } 
	{ lout_15_q0 sc_in sc_lv 32 signal 15 } 
	{ lout_16_address0 sc_out sc_lv 8 signal 16 } 
	{ lout_16_ce0 sc_out sc_logic 1 signal 16 } 
	{ lout_16_q0 sc_in sc_lv 32 signal 16 } 
	{ lout_17_address0 sc_out sc_lv 8 signal 17 } 
	{ lout_17_ce0 sc_out sc_logic 1 signal 17 } 
	{ lout_17_q0 sc_in sc_lv 32 signal 17 } 
	{ lout_18_address0 sc_out sc_lv 8 signal 18 } 
	{ lout_18_ce0 sc_out sc_logic 1 signal 18 } 
	{ lout_18_q0 sc_in sc_lv 32 signal 18 } 
	{ lout_19_address0 sc_out sc_lv 8 signal 19 } 
	{ lout_19_ce0 sc_out sc_logic 1 signal 19 } 
	{ lout_19_q0 sc_in sc_lv 32 signal 19 } 
	{ lout_20_address0 sc_out sc_lv 8 signal 20 } 
	{ lout_20_ce0 sc_out sc_logic 1 signal 20 } 
	{ lout_20_q0 sc_in sc_lv 32 signal 20 } 
	{ lout_21_address0 sc_out sc_lv 8 signal 21 } 
	{ lout_21_ce0 sc_out sc_logic 1 signal 21 } 
	{ lout_21_q0 sc_in sc_lv 32 signal 21 } 
	{ lout_22_address0 sc_out sc_lv 8 signal 22 } 
	{ lout_22_ce0 sc_out sc_logic 1 signal 22 } 
	{ lout_22_q0 sc_in sc_lv 32 signal 22 } 
	{ lout_23_address0 sc_out sc_lv 8 signal 23 } 
	{ lout_23_ce0 sc_out sc_logic 1 signal 23 } 
	{ lout_23_q0 sc_in sc_lv 32 signal 23 } 
	{ lout_24_address0 sc_out sc_lv 8 signal 24 } 
	{ lout_24_ce0 sc_out sc_logic 1 signal 24 } 
	{ lout_24_q0 sc_in sc_lv 32 signal 24 } 
	{ lout_25_address0 sc_out sc_lv 8 signal 25 } 
	{ lout_25_ce0 sc_out sc_logic 1 signal 25 } 
	{ lout_25_q0 sc_in sc_lv 32 signal 25 } 
	{ lout_26_address0 sc_out sc_lv 8 signal 26 } 
	{ lout_26_ce0 sc_out sc_logic 1 signal 26 } 
	{ lout_26_q0 sc_in sc_lv 32 signal 26 } 
	{ lout_27_address0 sc_out sc_lv 8 signal 27 } 
	{ lout_27_ce0 sc_out sc_logic 1 signal 27 } 
	{ lout_27_q0 sc_in sc_lv 32 signal 27 } 
	{ lout_28_address0 sc_out sc_lv 8 signal 28 } 
	{ lout_28_ce0 sc_out sc_logic 1 signal 28 } 
	{ lout_28_q0 sc_in sc_lv 32 signal 28 } 
	{ lout_29_address0 sc_out sc_lv 8 signal 29 } 
	{ lout_29_ce0 sc_out sc_logic 1 signal 29 } 
	{ lout_29_q0 sc_in sc_lv 32 signal 29 } 
	{ lout_30_address0 sc_out sc_lv 8 signal 30 } 
	{ lout_30_ce0 sc_out sc_logic 1 signal 30 } 
	{ lout_30_q0 sc_in sc_lv 32 signal 30 } 
	{ lout_31_address0 sc_out sc_lv 8 signal 31 } 
	{ lout_31_ce0 sc_out sc_logic 1 signal 31 } 
	{ lout_31_q0 sc_in sc_lv 32 signal 31 } 
	{ C_din sc_out sc_lv 32 signal 32 } 
	{ C_full_n sc_in sc_logic 1 signal 32 } 
	{ C_write sc_out sc_logic 1 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "lout_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_0", "role": "address0" }} , 
 	{ "name": "lout_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_0", "role": "ce0" }} , 
 	{ "name": "lout_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_0", "role": "q0" }} , 
 	{ "name": "lout_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_1", "role": "address0" }} , 
 	{ "name": "lout_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_1", "role": "ce0" }} , 
 	{ "name": "lout_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_1", "role": "q0" }} , 
 	{ "name": "lout_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_2", "role": "address0" }} , 
 	{ "name": "lout_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_2", "role": "ce0" }} , 
 	{ "name": "lout_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_2", "role": "q0" }} , 
 	{ "name": "lout_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_3", "role": "address0" }} , 
 	{ "name": "lout_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_3", "role": "ce0" }} , 
 	{ "name": "lout_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_3", "role": "q0" }} , 
 	{ "name": "lout_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_4", "role": "address0" }} , 
 	{ "name": "lout_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_4", "role": "ce0" }} , 
 	{ "name": "lout_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_4", "role": "q0" }} , 
 	{ "name": "lout_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_5", "role": "address0" }} , 
 	{ "name": "lout_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_5", "role": "ce0" }} , 
 	{ "name": "lout_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_5", "role": "q0" }} , 
 	{ "name": "lout_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_6", "role": "address0" }} , 
 	{ "name": "lout_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_6", "role": "ce0" }} , 
 	{ "name": "lout_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_6", "role": "q0" }} , 
 	{ "name": "lout_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_7", "role": "address0" }} , 
 	{ "name": "lout_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_7", "role": "ce0" }} , 
 	{ "name": "lout_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_7", "role": "q0" }} , 
 	{ "name": "lout_8_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_8", "role": "address0" }} , 
 	{ "name": "lout_8_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_8", "role": "ce0" }} , 
 	{ "name": "lout_8_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_8", "role": "q0" }} , 
 	{ "name": "lout_9_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_9", "role": "address0" }} , 
 	{ "name": "lout_9_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_9", "role": "ce0" }} , 
 	{ "name": "lout_9_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_9", "role": "q0" }} , 
 	{ "name": "lout_10_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_10", "role": "address0" }} , 
 	{ "name": "lout_10_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_10", "role": "ce0" }} , 
 	{ "name": "lout_10_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_10", "role": "q0" }} , 
 	{ "name": "lout_11_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_11", "role": "address0" }} , 
 	{ "name": "lout_11_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_11", "role": "ce0" }} , 
 	{ "name": "lout_11_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_11", "role": "q0" }} , 
 	{ "name": "lout_12_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_12", "role": "address0" }} , 
 	{ "name": "lout_12_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_12", "role": "ce0" }} , 
 	{ "name": "lout_12_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_12", "role": "q0" }} , 
 	{ "name": "lout_13_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_13", "role": "address0" }} , 
 	{ "name": "lout_13_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_13", "role": "ce0" }} , 
 	{ "name": "lout_13_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_13", "role": "q0" }} , 
 	{ "name": "lout_14_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_14", "role": "address0" }} , 
 	{ "name": "lout_14_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_14", "role": "ce0" }} , 
 	{ "name": "lout_14_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_14", "role": "q0" }} , 
 	{ "name": "lout_15_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_15", "role": "address0" }} , 
 	{ "name": "lout_15_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_15", "role": "ce0" }} , 
 	{ "name": "lout_15_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_15", "role": "q0" }} , 
 	{ "name": "lout_16_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_16", "role": "address0" }} , 
 	{ "name": "lout_16_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_16", "role": "ce0" }} , 
 	{ "name": "lout_16_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_16", "role": "q0" }} , 
 	{ "name": "lout_17_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_17", "role": "address0" }} , 
 	{ "name": "lout_17_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_17", "role": "ce0" }} , 
 	{ "name": "lout_17_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_17", "role": "q0" }} , 
 	{ "name": "lout_18_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_18", "role": "address0" }} , 
 	{ "name": "lout_18_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_18", "role": "ce0" }} , 
 	{ "name": "lout_18_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_18", "role": "q0" }} , 
 	{ "name": "lout_19_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_19", "role": "address0" }} , 
 	{ "name": "lout_19_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_19", "role": "ce0" }} , 
 	{ "name": "lout_19_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_19", "role": "q0" }} , 
 	{ "name": "lout_20_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_20", "role": "address0" }} , 
 	{ "name": "lout_20_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_20", "role": "ce0" }} , 
 	{ "name": "lout_20_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_20", "role": "q0" }} , 
 	{ "name": "lout_21_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_21", "role": "address0" }} , 
 	{ "name": "lout_21_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_21", "role": "ce0" }} , 
 	{ "name": "lout_21_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_21", "role": "q0" }} , 
 	{ "name": "lout_22_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_22", "role": "address0" }} , 
 	{ "name": "lout_22_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_22", "role": "ce0" }} , 
 	{ "name": "lout_22_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_22", "role": "q0" }} , 
 	{ "name": "lout_23_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_23", "role": "address0" }} , 
 	{ "name": "lout_23_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_23", "role": "ce0" }} , 
 	{ "name": "lout_23_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_23", "role": "q0" }} , 
 	{ "name": "lout_24_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_24", "role": "address0" }} , 
 	{ "name": "lout_24_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_24", "role": "ce0" }} , 
 	{ "name": "lout_24_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_24", "role": "q0" }} , 
 	{ "name": "lout_25_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_25", "role": "address0" }} , 
 	{ "name": "lout_25_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_25", "role": "ce0" }} , 
 	{ "name": "lout_25_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_25", "role": "q0" }} , 
 	{ "name": "lout_26_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_26", "role": "address0" }} , 
 	{ "name": "lout_26_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_26", "role": "ce0" }} , 
 	{ "name": "lout_26_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_26", "role": "q0" }} , 
 	{ "name": "lout_27_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_27", "role": "address0" }} , 
 	{ "name": "lout_27_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_27", "role": "ce0" }} , 
 	{ "name": "lout_27_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_27", "role": "q0" }} , 
 	{ "name": "lout_28_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_28", "role": "address0" }} , 
 	{ "name": "lout_28_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_28", "role": "ce0" }} , 
 	{ "name": "lout_28_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_28", "role": "q0" }} , 
 	{ "name": "lout_29_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_29", "role": "address0" }} , 
 	{ "name": "lout_29_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_29", "role": "ce0" }} , 
 	{ "name": "lout_29_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_29", "role": "q0" }} , 
 	{ "name": "lout_30_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_30", "role": "address0" }} , 
 	{ "name": "lout_30_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_30", "role": "ce0" }} , 
 	{ "name": "lout_30_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_30", "role": "q0" }} , 
 	{ "name": "lout_31_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "lout_31", "role": "address0" }} , 
 	{ "name": "lout_31_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "lout_31", "role": "ce0" }} , 
 	{ "name": "lout_31_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "lout_31", "role": "q0" }} , 
 	{ "name": "C_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "din" }} , 
 	{ "name": "C_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "full_n" }} , 
 	{ "name": "C_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "write_out",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "5411", "EstimateLatencyMax" : "5411",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "lout_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lout_31", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "C_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cal_gemm_mux_325_dEe_U395", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	write_out {
		lout_0 {Type I LastRead 1 FirstWrite -1}
		lout_1 {Type I LastRead 1 FirstWrite -1}
		lout_2 {Type I LastRead 1 FirstWrite -1}
		lout_3 {Type I LastRead 1 FirstWrite -1}
		lout_4 {Type I LastRead 1 FirstWrite -1}
		lout_5 {Type I LastRead 1 FirstWrite -1}
		lout_6 {Type I LastRead 1 FirstWrite -1}
		lout_7 {Type I LastRead 1 FirstWrite -1}
		lout_8 {Type I LastRead 1 FirstWrite -1}
		lout_9 {Type I LastRead 1 FirstWrite -1}
		lout_10 {Type I LastRead 1 FirstWrite -1}
		lout_11 {Type I LastRead 1 FirstWrite -1}
		lout_12 {Type I LastRead 1 FirstWrite -1}
		lout_13 {Type I LastRead 1 FirstWrite -1}
		lout_14 {Type I LastRead 1 FirstWrite -1}
		lout_15 {Type I LastRead 1 FirstWrite -1}
		lout_16 {Type I LastRead 1 FirstWrite -1}
		lout_17 {Type I LastRead 1 FirstWrite -1}
		lout_18 {Type I LastRead 1 FirstWrite -1}
		lout_19 {Type I LastRead 1 FirstWrite -1}
		lout_20 {Type I LastRead 1 FirstWrite -1}
		lout_21 {Type I LastRead 1 FirstWrite -1}
		lout_22 {Type I LastRead 1 FirstWrite -1}
		lout_23 {Type I LastRead 1 FirstWrite -1}
		lout_24 {Type I LastRead 1 FirstWrite -1}
		lout_25 {Type I LastRead 1 FirstWrite -1}
		lout_26 {Type I LastRead 1 FirstWrite -1}
		lout_27 {Type I LastRead 1 FirstWrite -1}
		lout_28 {Type I LastRead 1 FirstWrite -1}
		lout_29 {Type I LastRead 1 FirstWrite -1}
		lout_30 {Type I LastRead 1 FirstWrite -1}
		lout_31 {Type I LastRead 1 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 3}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "5411", "Max" : "5411"}
	, {"Name" : "Interval", "Min" : "5411", "Max" : "5411"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	lout_0 { ap_memory {  { lout_0_address0 mem_address 1 8 }  { lout_0_ce0 mem_ce 1 1 }  { lout_0_q0 mem_dout 0 32 } } }
	lout_1 { ap_memory {  { lout_1_address0 mem_address 1 8 }  { lout_1_ce0 mem_ce 1 1 }  { lout_1_q0 mem_dout 0 32 } } }
	lout_2 { ap_memory {  { lout_2_address0 mem_address 1 8 }  { lout_2_ce0 mem_ce 1 1 }  { lout_2_q0 mem_dout 0 32 } } }
	lout_3 { ap_memory {  { lout_3_address0 mem_address 1 8 }  { lout_3_ce0 mem_ce 1 1 }  { lout_3_q0 mem_dout 0 32 } } }
	lout_4 { ap_memory {  { lout_4_address0 mem_address 1 8 }  { lout_4_ce0 mem_ce 1 1 }  { lout_4_q0 mem_dout 0 32 } } }
	lout_5 { ap_memory {  { lout_5_address0 mem_address 1 8 }  { lout_5_ce0 mem_ce 1 1 }  { lout_5_q0 mem_dout 0 32 } } }
	lout_6 { ap_memory {  { lout_6_address0 mem_address 1 8 }  { lout_6_ce0 mem_ce 1 1 }  { lout_6_q0 mem_dout 0 32 } } }
	lout_7 { ap_memory {  { lout_7_address0 mem_address 1 8 }  { lout_7_ce0 mem_ce 1 1 }  { lout_7_q0 mem_dout 0 32 } } }
	lout_8 { ap_memory {  { lout_8_address0 mem_address 1 8 }  { lout_8_ce0 mem_ce 1 1 }  { lout_8_q0 mem_dout 0 32 } } }
	lout_9 { ap_memory {  { lout_9_address0 mem_address 1 8 }  { lout_9_ce0 mem_ce 1 1 }  { lout_9_q0 mem_dout 0 32 } } }
	lout_10 { ap_memory {  { lout_10_address0 mem_address 1 8 }  { lout_10_ce0 mem_ce 1 1 }  { lout_10_q0 mem_dout 0 32 } } }
	lout_11 { ap_memory {  { lout_11_address0 mem_address 1 8 }  { lout_11_ce0 mem_ce 1 1 }  { lout_11_q0 mem_dout 0 32 } } }
	lout_12 { ap_memory {  { lout_12_address0 mem_address 1 8 }  { lout_12_ce0 mem_ce 1 1 }  { lout_12_q0 mem_dout 0 32 } } }
	lout_13 { ap_memory {  { lout_13_address0 mem_address 1 8 }  { lout_13_ce0 mem_ce 1 1 }  { lout_13_q0 mem_dout 0 32 } } }
	lout_14 { ap_memory {  { lout_14_address0 mem_address 1 8 }  { lout_14_ce0 mem_ce 1 1 }  { lout_14_q0 mem_dout 0 32 } } }
	lout_15 { ap_memory {  { lout_15_address0 mem_address 1 8 }  { lout_15_ce0 mem_ce 1 1 }  { lout_15_q0 mem_dout 0 32 } } }
	lout_16 { ap_memory {  { lout_16_address0 mem_address 1 8 }  { lout_16_ce0 mem_ce 1 1 }  { lout_16_q0 mem_dout 0 32 } } }
	lout_17 { ap_memory {  { lout_17_address0 mem_address 1 8 }  { lout_17_ce0 mem_ce 1 1 }  { lout_17_q0 mem_dout 0 32 } } }
	lout_18 { ap_memory {  { lout_18_address0 mem_address 1 8 }  { lout_18_ce0 mem_ce 1 1 }  { lout_18_q0 mem_dout 0 32 } } }
	lout_19 { ap_memory {  { lout_19_address0 mem_address 1 8 }  { lout_19_ce0 mem_ce 1 1 }  { lout_19_q0 mem_dout 0 32 } } }
	lout_20 { ap_memory {  { lout_20_address0 mem_address 1 8 }  { lout_20_ce0 mem_ce 1 1 }  { lout_20_q0 mem_dout 0 32 } } }
	lout_21 { ap_memory {  { lout_21_address0 mem_address 1 8 }  { lout_21_ce0 mem_ce 1 1 }  { lout_21_q0 mem_dout 0 32 } } }
	lout_22 { ap_memory {  { lout_22_address0 mem_address 1 8 }  { lout_22_ce0 mem_ce 1 1 }  { lout_22_q0 mem_dout 0 32 } } }
	lout_23 { ap_memory {  { lout_23_address0 mem_address 1 8 }  { lout_23_ce0 mem_ce 1 1 }  { lout_23_q0 mem_dout 0 32 } } }
	lout_24 { ap_memory {  { lout_24_address0 mem_address 1 8 }  { lout_24_ce0 mem_ce 1 1 }  { lout_24_q0 mem_dout 0 32 } } }
	lout_25 { ap_memory {  { lout_25_address0 mem_address 1 8 }  { lout_25_ce0 mem_ce 1 1 }  { lout_25_q0 mem_dout 0 32 } } }
	lout_26 { ap_memory {  { lout_26_address0 mem_address 1 8 }  { lout_26_ce0 mem_ce 1 1 }  { lout_26_q0 mem_dout 0 32 } } }
	lout_27 { ap_memory {  { lout_27_address0 mem_address 1 8 }  { lout_27_ce0 mem_ce 1 1 }  { lout_27_q0 mem_dout 0 32 } } }
	lout_28 { ap_memory {  { lout_28_address0 mem_address 1 8 }  { lout_28_ce0 mem_ce 1 1 }  { lout_28_q0 mem_dout 0 32 } } }
	lout_29 { ap_memory {  { lout_29_address0 mem_address 1 8 }  { lout_29_ce0 mem_ce 1 1 }  { lout_29_q0 mem_dout 0 32 } } }
	lout_30 { ap_memory {  { lout_30_address0 mem_address 1 8 }  { lout_30_ce0 mem_ce 1 1 }  { lout_30_q0 mem_dout 0 32 } } }
	lout_31 { ap_memory {  { lout_31_address0 mem_address 1 8 }  { lout_31_ce0 mem_ce 1 1 }  { lout_31_q0 mem_dout 0 32 } } }
	C { ap_fifo {  { C_din fifo_data 1 32 }  { C_full_n fifo_status 0 1 }  { C_write fifo_update 1 1 } } }
}
