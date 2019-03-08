set C_TypeInfoList {{ 
"cal_gemm" : [[], { "return": [[], "void"]} , [{"ExternC" : 1}], [ {"A": [[],{ "pointer":  {"scalar": "float"}}] }, {"B": [[],{ "pointer":  {"scalar": "float"}}] }, {"C": [[],{ "pointer":  {"scalar": "float"}}] }],[],""]
}}
set moduleName cal_gemm
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
set C_modelName {cal_gemm}
set C_modelType { void 0 }
set C_modelArgList {
	{ A float 32 regular {fifo 0 volatile }  }
	{ B float 32 regular {fifo 0 volatile }  }
	{ C float 32 regular {fifo 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "A","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "B", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "B","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "C", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":31,"cElement": [{"cName": "C","cData": "float","bit_use": { "low": 0,"up": 31},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 15
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ A_dout sc_in sc_lv 32 signal 0 } 
	{ A_empty_n sc_in sc_logic 1 signal 0 } 
	{ A_read sc_out sc_logic 1 signal 0 } 
	{ B_dout sc_in sc_lv 32 signal 1 } 
	{ B_empty_n sc_in sc_logic 1 signal 1 } 
	{ B_read sc_out sc_logic 1 signal 1 } 
	{ C_din sc_out sc_lv 32 signal 2 } 
	{ C_full_n sc_in sc_logic 1 signal 2 } 
	{ C_write sc_out sc_logic 1 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "A_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A", "role": "dout" }} , 
 	{ "name": "A_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "empty_n" }} , 
 	{ "name": "A_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "A", "role": "read" }} , 
 	{ "name": "B_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B", "role": "dout" }} , 
 	{ "name": "B_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "empty_n" }} , 
 	{ "name": "B_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "B", "role": "read" }} , 
 	{ "name": "C_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "C", "role": "din" }} , 
 	{ "name": "C_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "full_n" }} , 
 	{ "name": "C_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "C", "role": "write" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "134", "136"],
		"CDFG" : "cal_gemm",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34375", "EstimateLatencyMax" : "34375",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_stream_cal_fu_288"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_write_out_fu_358"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_cal_initial_fu_396"}],
		"Port" : [
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "136", "SubInstance" : "grp_cal_initial_fu_396", "Port" : "A"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "65", "SubInstance" : "grp_stream_cal_fu_288", "Port" : "B"}]},
			{"Name" : "C", "Type" : "Fifo", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "134", "SubInstance" : "grp_write_out_fu_358", "Port" : "C"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_16_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_17_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_18_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_19_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_20_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_21_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_22_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_23_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_24_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_25_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_26_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_27_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_28_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_29_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_30_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.la_31_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_0_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_1_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_2_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_3_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_4_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_5_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_6_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_7_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_8_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_9_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_10_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_11_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_12_U", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_13_U", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_14_U", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_15_U", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_16_U", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_17_U", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_18_U", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_19_U", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_20_U", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_21_U", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_22_U", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_23_U", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_24_U", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_25_U", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_26_U", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_27_U", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_28_U", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_29_U", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_30_U", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.lout_31_U", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288", "Parent" : "0", "Child" : ["66", "67", "133"],
		"CDFG" : "stream_cal",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24349", "EstimateLatencyMax" : "24349",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "67", "Name" : "calulation_U0", "ReadyCount" : "calulation_U0_ap_ready_count"},
			{"ID" : "66", "Name" : "stream_cal_Loop_1_pr_U0", "ReadyCount" : "stream_cal_Loop_1_pr_U0_ap_ready_count"}],
		"OutputProcess" : [
			{"ID" : "67", "Name" : "calulation_U0"}],
		"Port" : [
			{"Name" : "la_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_0"}]},
			{"Name" : "la_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_1"}]},
			{"Name" : "la_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_2"}]},
			{"Name" : "la_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_3"}]},
			{"Name" : "la_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_4"}]},
			{"Name" : "la_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_5"}]},
			{"Name" : "la_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_6"}]},
			{"Name" : "la_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_7"}]},
			{"Name" : "la_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_8"}]},
			{"Name" : "la_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_9"}]},
			{"Name" : "la_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_10"}]},
			{"Name" : "la_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_11"}]},
			{"Name" : "la_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_12"}]},
			{"Name" : "la_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_13"}]},
			{"Name" : "la_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_14"}]},
			{"Name" : "la_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_15"}]},
			{"Name" : "la_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_16"}]},
			{"Name" : "la_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_17"}]},
			{"Name" : "la_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_18"}]},
			{"Name" : "la_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_19"}]},
			{"Name" : "la_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_20"}]},
			{"Name" : "la_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_21"}]},
			{"Name" : "la_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_22"}]},
			{"Name" : "la_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_23"}]},
			{"Name" : "la_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_24"}]},
			{"Name" : "la_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_25"}]},
			{"Name" : "la_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_26"}]},
			{"Name" : "la_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_27"}]},
			{"Name" : "la_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_28"}]},
			{"Name" : "la_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_29"}]},
			{"Name" : "la_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_30"}]},
			{"Name" : "la_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "la_31"}]},
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "66", "SubInstance" : "stream_cal_Loop_1_pr_U0", "Port" : "B"}]},
			{"Name" : "lout_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_0"}]},
			{"Name" : "lout_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_1"}]},
			{"Name" : "lout_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_2"}]},
			{"Name" : "lout_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_3"}]},
			{"Name" : "lout_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_4"}]},
			{"Name" : "lout_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_5"}]},
			{"Name" : "lout_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_6"}]},
			{"Name" : "lout_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_7"}]},
			{"Name" : "lout_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_8"}]},
			{"Name" : "lout_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_9"}]},
			{"Name" : "lout_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_10"}]},
			{"Name" : "lout_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_11"}]},
			{"Name" : "lout_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_12"}]},
			{"Name" : "lout_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_13"}]},
			{"Name" : "lout_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_14"}]},
			{"Name" : "lout_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_15"}]},
			{"Name" : "lout_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_16"}]},
			{"Name" : "lout_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_17"}]},
			{"Name" : "lout_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_18"}]},
			{"Name" : "lout_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_19"}]},
			{"Name" : "lout_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_20"}]},
			{"Name" : "lout_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_21"}]},
			{"Name" : "lout_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_22"}]},
			{"Name" : "lout_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_23"}]},
			{"Name" : "lout_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_24"}]},
			{"Name" : "lout_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_25"}]},
			{"Name" : "lout_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_26"}]},
			{"Name" : "lout_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_27"}]},
			{"Name" : "lout_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_28"}]},
			{"Name" : "lout_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_29"}]},
			{"Name" : "lout_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_30"}]},
			{"Name" : "lout_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "67", "SubInstance" : "calulation_U0", "Port" : "lout_31"}]}]},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.stream_cal_Loop_1_pr_U0", "Parent" : "65",
		"CDFG" : "stream_cal_Loop_1_pr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24338", "EstimateLatencyMax" : "24338",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "B", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "B_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "inStream1_V", "Type" : "Fifo", "Direction" : "O", "DependentProc" : "68", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "inStream1_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0", "Parent" : "65", "Child" : ["68"],
		"CDFG" : "calulation",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24348", "EstimateLatencyMax" : "24348",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "68", "Name" : "calulation_Loop_1_pr_U0"}],
		"OutputProcess" : [
			{"ID" : "68", "Name" : "calulation_Loop_1_pr_U0"}],
		"Port" : [
			{"Name" : "inStream1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "133",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "inStream1_V"}]},
			{"Name" : "la_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_0"}]},
			{"Name" : "la_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_1"}]},
			{"Name" : "la_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_2"}]},
			{"Name" : "la_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_3"}]},
			{"Name" : "la_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_4"}]},
			{"Name" : "la_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_5"}]},
			{"Name" : "la_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_6"}]},
			{"Name" : "la_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_7"}]},
			{"Name" : "la_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_8"}]},
			{"Name" : "la_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_9"}]},
			{"Name" : "la_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_10"}]},
			{"Name" : "la_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_11"}]},
			{"Name" : "la_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_12"}]},
			{"Name" : "la_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_13"}]},
			{"Name" : "la_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_14"}]},
			{"Name" : "la_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_15"}]},
			{"Name" : "la_16", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_16"}]},
			{"Name" : "la_17", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_17"}]},
			{"Name" : "la_18", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_18"}]},
			{"Name" : "la_19", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_19"}]},
			{"Name" : "la_20", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_20"}]},
			{"Name" : "la_21", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_21"}]},
			{"Name" : "la_22", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_22"}]},
			{"Name" : "la_23", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_23"}]},
			{"Name" : "la_24", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_24"}]},
			{"Name" : "la_25", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_25"}]},
			{"Name" : "la_26", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_26"}]},
			{"Name" : "la_27", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_27"}]},
			{"Name" : "la_28", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_28"}]},
			{"Name" : "la_29", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_29"}]},
			{"Name" : "la_30", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_30"}]},
			{"Name" : "la_31", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "la_31"}]},
			{"Name" : "lout_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_0"}]},
			{"Name" : "lout_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_1"}]},
			{"Name" : "lout_2", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_2"}]},
			{"Name" : "lout_3", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_3"}]},
			{"Name" : "lout_4", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_4"}]},
			{"Name" : "lout_5", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_5"}]},
			{"Name" : "lout_6", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_6"}]},
			{"Name" : "lout_7", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_7"}]},
			{"Name" : "lout_8", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_8"}]},
			{"Name" : "lout_9", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_9"}]},
			{"Name" : "lout_10", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_10"}]},
			{"Name" : "lout_11", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_11"}]},
			{"Name" : "lout_12", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_12"}]},
			{"Name" : "lout_13", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_13"}]},
			{"Name" : "lout_14", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_14"}]},
			{"Name" : "lout_15", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_15"}]},
			{"Name" : "lout_16", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_16"}]},
			{"Name" : "lout_17", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_17"}]},
			{"Name" : "lout_18", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_18"}]},
			{"Name" : "lout_19", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_19"}]},
			{"Name" : "lout_20", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_20"}]},
			{"Name" : "lout_21", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_21"}]},
			{"Name" : "lout_22", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_22"}]},
			{"Name" : "lout_23", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_23"}]},
			{"Name" : "lout_24", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_24"}]},
			{"Name" : "lout_25", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_25"}]},
			{"Name" : "lout_26", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_26"}]},
			{"Name" : "lout_27", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_27"}]},
			{"Name" : "lout_28", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_28"}]},
			{"Name" : "lout_29", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_29"}]},
			{"Name" : "lout_30", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_30"}]},
			{"Name" : "lout_31", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "calulation_Loop_1_pr_U0", "Port" : "lout_31"}]}]},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0", "Parent" : "67", "Child" : ["69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132"],
		"CDFG" : "calulation_Loop_1_pr",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24348", "EstimateLatencyMax" : "24348",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "lout_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_2", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_3", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_4", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_5", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_6", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_7", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_8", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_9", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_10", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_11", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_12", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_13", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_14", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_15", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_16", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_17", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_18", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_19", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_20", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_21", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_22", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_23", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_24", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_25", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_26", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_27", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_28", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_29", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_30", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "lout_31", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "inStream1_V", "Type" : "Fifo", "Direction" : "I", "DependentProc" : "66", "DependentChan" : "133",
				"BlockSignal" : [
					{"Name" : "inStream1_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "la_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_15", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_16", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_17", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_18", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_19", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_20", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_21", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_22", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_23", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_24", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_25", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_26", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_27", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_28", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_29", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_30", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "la_31", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "69", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U133", "Parent" : "68"},
	{"ID" : "70", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U134", "Parent" : "68"},
	{"ID" : "71", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U135", "Parent" : "68"},
	{"ID" : "72", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U136", "Parent" : "68"},
	{"ID" : "73", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U137", "Parent" : "68"},
	{"ID" : "74", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U138", "Parent" : "68"},
	{"ID" : "75", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U139", "Parent" : "68"},
	{"ID" : "76", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U140", "Parent" : "68"},
	{"ID" : "77", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U141", "Parent" : "68"},
	{"ID" : "78", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U142", "Parent" : "68"},
	{"ID" : "79", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U143", "Parent" : "68"},
	{"ID" : "80", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U144", "Parent" : "68"},
	{"ID" : "81", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U145", "Parent" : "68"},
	{"ID" : "82", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U146", "Parent" : "68"},
	{"ID" : "83", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U147", "Parent" : "68"},
	{"ID" : "84", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U148", "Parent" : "68"},
	{"ID" : "85", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U149", "Parent" : "68"},
	{"ID" : "86", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U150", "Parent" : "68"},
	{"ID" : "87", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U151", "Parent" : "68"},
	{"ID" : "88", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U152", "Parent" : "68"},
	{"ID" : "89", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U153", "Parent" : "68"},
	{"ID" : "90", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U154", "Parent" : "68"},
	{"ID" : "91", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U155", "Parent" : "68"},
	{"ID" : "92", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U156", "Parent" : "68"},
	{"ID" : "93", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U157", "Parent" : "68"},
	{"ID" : "94", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U158", "Parent" : "68"},
	{"ID" : "95", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U159", "Parent" : "68"},
	{"ID" : "96", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U160", "Parent" : "68"},
	{"ID" : "97", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U161", "Parent" : "68"},
	{"ID" : "98", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U162", "Parent" : "68"},
	{"ID" : "99", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U163", "Parent" : "68"},
	{"ID" : "100", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fadd_32nbkb_U164", "Parent" : "68"},
	{"ID" : "101", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U165", "Parent" : "68"},
	{"ID" : "102", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U166", "Parent" : "68"},
	{"ID" : "103", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U167", "Parent" : "68"},
	{"ID" : "104", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U168", "Parent" : "68"},
	{"ID" : "105", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U169", "Parent" : "68"},
	{"ID" : "106", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U170", "Parent" : "68"},
	{"ID" : "107", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U171", "Parent" : "68"},
	{"ID" : "108", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U172", "Parent" : "68"},
	{"ID" : "109", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U173", "Parent" : "68"},
	{"ID" : "110", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U174", "Parent" : "68"},
	{"ID" : "111", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U175", "Parent" : "68"},
	{"ID" : "112", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U176", "Parent" : "68"},
	{"ID" : "113", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U177", "Parent" : "68"},
	{"ID" : "114", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U178", "Parent" : "68"},
	{"ID" : "115", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U179", "Parent" : "68"},
	{"ID" : "116", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U180", "Parent" : "68"},
	{"ID" : "117", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U181", "Parent" : "68"},
	{"ID" : "118", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U182", "Parent" : "68"},
	{"ID" : "119", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U183", "Parent" : "68"},
	{"ID" : "120", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U184", "Parent" : "68"},
	{"ID" : "121", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U185", "Parent" : "68"},
	{"ID" : "122", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U186", "Parent" : "68"},
	{"ID" : "123", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U187", "Parent" : "68"},
	{"ID" : "124", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U188", "Parent" : "68"},
	{"ID" : "125", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U189", "Parent" : "68"},
	{"ID" : "126", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U190", "Parent" : "68"},
	{"ID" : "127", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U191", "Parent" : "68"},
	{"ID" : "128", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U192", "Parent" : "68"},
	{"ID" : "129", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U193", "Parent" : "68"},
	{"ID" : "130", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U194", "Parent" : "68"},
	{"ID" : "131", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U195", "Parent" : "68"},
	{"ID" : "132", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.calulation_U0.calulation_Loop_1_pr_U0.cal_gemm_fmul_32ncud_U196", "Parent" : "68"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_stream_cal_fu_288.inStream1_V_U", "Parent" : "65"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_write_out_fu_358", "Parent" : "0", "Child" : ["135"],
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
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_write_out_fu_358.cal_gemm_mux_325_dEe_U395", "Parent" : "134"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_cal_initial_fu_396", "Parent" : "0", "Child" : ["137", "138"],
		"CDFG" : "cal_initial",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "Dataflow", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "1",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4610", "EstimateLatencyMax" : "4610",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "1",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"InputProcess" : [
			{"ID" : "138", "Name" : "read_A_U0"}],
		"OutputProcess" : [
			{"ID" : "138", "Name" : "read_A_U0"},
			{"ID" : "137", "Name" : "out_initial_U0"}],
		"Port" : [
			{"Name" : "A", "Type" : "Fifo", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "A"}]},
			{"Name" : "la_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_0"}]},
			{"Name" : "la_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_1"}]},
			{"Name" : "la_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_2"}]},
			{"Name" : "la_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_3"}]},
			{"Name" : "la_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_4"}]},
			{"Name" : "la_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_5"}]},
			{"Name" : "la_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_6"}]},
			{"Name" : "la_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_7"}]},
			{"Name" : "la_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_8"}]},
			{"Name" : "la_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_9"}]},
			{"Name" : "la_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_10"}]},
			{"Name" : "la_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_11"}]},
			{"Name" : "la_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_12"}]},
			{"Name" : "la_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_13"}]},
			{"Name" : "la_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_14"}]},
			{"Name" : "la_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_15"}]},
			{"Name" : "la_16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_16"}]},
			{"Name" : "la_17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_17"}]},
			{"Name" : "la_18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_18"}]},
			{"Name" : "la_19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_19"}]},
			{"Name" : "la_20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_20"}]},
			{"Name" : "la_21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_21"}]},
			{"Name" : "la_22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_22"}]},
			{"Name" : "la_23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_23"}]},
			{"Name" : "la_24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_24"}]},
			{"Name" : "la_25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_25"}]},
			{"Name" : "la_26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_26"}]},
			{"Name" : "la_27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_27"}]},
			{"Name" : "la_28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_28"}]},
			{"Name" : "la_29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_29"}]},
			{"Name" : "la_30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_30"}]},
			{"Name" : "la_31", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "138", "SubInstance" : "read_A_U0", "Port" : "la_31"}]},
			{"Name" : "lout_0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_0"}]},
			{"Name" : "lout_1", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_1"}]},
			{"Name" : "lout_2", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_2"}]},
			{"Name" : "lout_3", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_3"}]},
			{"Name" : "lout_4", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_4"}]},
			{"Name" : "lout_5", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_5"}]},
			{"Name" : "lout_6", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_6"}]},
			{"Name" : "lout_7", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_7"}]},
			{"Name" : "lout_8", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_8"}]},
			{"Name" : "lout_9", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_9"}]},
			{"Name" : "lout_10", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_10"}]},
			{"Name" : "lout_11", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_11"}]},
			{"Name" : "lout_12", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_12"}]},
			{"Name" : "lout_13", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_13"}]},
			{"Name" : "lout_14", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_14"}]},
			{"Name" : "lout_15", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_15"}]},
			{"Name" : "lout_16", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_16"}]},
			{"Name" : "lout_17", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_17"}]},
			{"Name" : "lout_18", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_18"}]},
			{"Name" : "lout_19", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_19"}]},
			{"Name" : "lout_20", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_20"}]},
			{"Name" : "lout_21", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_21"}]},
			{"Name" : "lout_22", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_22"}]},
			{"Name" : "lout_23", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_23"}]},
			{"Name" : "lout_24", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_24"}]},
			{"Name" : "lout_25", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_25"}]},
			{"Name" : "lout_26", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_26"}]},
			{"Name" : "lout_27", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_27"}]},
			{"Name" : "lout_28", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_28"}]},
			{"Name" : "lout_29", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_29"}]},
			{"Name" : "lout_30", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_30"}]},
			{"Name" : "lout_31", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "137", "SubInstance" : "out_initial_U0", "Port" : "lout_31"}]}]},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cal_initial_fu_396.out_initial_U0", "Parent" : "136",
		"CDFG" : "out_initial",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "1", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "171", "EstimateLatencyMax" : "171",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "1",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "lout_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_8", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_9", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_10", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_11", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_12", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_13", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_14", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_15", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_16", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_17", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_18", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_19", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_20", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_21", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_22", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_23", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_24", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_25", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_26", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_27", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_28", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_29", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_30", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "lout_31", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_cal_initial_fu_396.read_A_U0", "Parent" : "136",
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
	cal_gemm {
		A {Type I LastRead 2 FirstWrite -1}
		B {Type I LastRead 2 FirstWrite -1}
		C {Type O LastRead -1 FirstWrite 3}}
	stream_cal {
		la_0 {Type I LastRead 1 FirstWrite -1}
		la_1 {Type I LastRead 1 FirstWrite -1}
		la_2 {Type I LastRead 1 FirstWrite -1}
		la_3 {Type I LastRead 1 FirstWrite -1}
		la_4 {Type I LastRead 1 FirstWrite -1}
		la_5 {Type I LastRead 1 FirstWrite -1}
		la_6 {Type I LastRead 1 FirstWrite -1}
		la_7 {Type I LastRead 1 FirstWrite -1}
		la_8 {Type I LastRead 1 FirstWrite -1}
		la_9 {Type I LastRead 1 FirstWrite -1}
		la_10 {Type I LastRead 1 FirstWrite -1}
		la_11 {Type I LastRead 1 FirstWrite -1}
		la_12 {Type I LastRead 1 FirstWrite -1}
		la_13 {Type I LastRead 1 FirstWrite -1}
		la_14 {Type I LastRead 1 FirstWrite -1}
		la_15 {Type I LastRead 1 FirstWrite -1}
		la_16 {Type I LastRead 1 FirstWrite -1}
		la_17 {Type I LastRead 1 FirstWrite -1}
		la_18 {Type I LastRead 1 FirstWrite -1}
		la_19 {Type I LastRead 1 FirstWrite -1}
		la_20 {Type I LastRead 1 FirstWrite -1}
		la_21 {Type I LastRead 1 FirstWrite -1}
		la_22 {Type I LastRead 1 FirstWrite -1}
		la_23 {Type I LastRead 1 FirstWrite -1}
		la_24 {Type I LastRead 1 FirstWrite -1}
		la_25 {Type I LastRead 1 FirstWrite -1}
		la_26 {Type I LastRead 1 FirstWrite -1}
		la_27 {Type I LastRead 1 FirstWrite -1}
		la_28 {Type I LastRead 1 FirstWrite -1}
		la_29 {Type I LastRead 1 FirstWrite -1}
		la_30 {Type I LastRead 1 FirstWrite -1}
		la_31 {Type I LastRead 1 FirstWrite -1}
		B {Type I LastRead 2 FirstWrite -1}
		lout_0 {Type IO LastRead 5 FirstWrite 12}
		lout_1 {Type IO LastRead 5 FirstWrite 12}
		lout_2 {Type IO LastRead 5 FirstWrite 12}
		lout_3 {Type IO LastRead 5 FirstWrite 12}
		lout_4 {Type IO LastRead 5 FirstWrite 12}
		lout_5 {Type IO LastRead 5 FirstWrite 12}
		lout_6 {Type IO LastRead 5 FirstWrite 12}
		lout_7 {Type IO LastRead 5 FirstWrite 12}
		lout_8 {Type IO LastRead 5 FirstWrite 12}
		lout_9 {Type IO LastRead 5 FirstWrite 12}
		lout_10 {Type IO LastRead 5 FirstWrite 12}
		lout_11 {Type IO LastRead 5 FirstWrite 12}
		lout_12 {Type IO LastRead 5 FirstWrite 12}
		lout_13 {Type IO LastRead 5 FirstWrite 12}
		lout_14 {Type IO LastRead 5 FirstWrite 12}
		lout_15 {Type IO LastRead 5 FirstWrite 12}
		lout_16 {Type IO LastRead 5 FirstWrite 12}
		lout_17 {Type IO LastRead 5 FirstWrite 12}
		lout_18 {Type IO LastRead 5 FirstWrite 12}
		lout_19 {Type IO LastRead 5 FirstWrite 12}
		lout_20 {Type IO LastRead 5 FirstWrite 12}
		lout_21 {Type IO LastRead 5 FirstWrite 12}
		lout_22 {Type IO LastRead 5 FirstWrite 12}
		lout_23 {Type IO LastRead 5 FirstWrite 12}
		lout_24 {Type IO LastRead 5 FirstWrite 12}
		lout_25 {Type IO LastRead 5 FirstWrite 12}
		lout_26 {Type IO LastRead 5 FirstWrite 12}
		lout_27 {Type IO LastRead 5 FirstWrite 12}
		lout_28 {Type IO LastRead 5 FirstWrite 12}
		lout_29 {Type IO LastRead 5 FirstWrite 12}
		lout_30 {Type IO LastRead 5 FirstWrite 12}
		lout_31 {Type IO LastRead 5 FirstWrite 12}}
	stream_cal_Loop_1_pr {
		B {Type I LastRead 2 FirstWrite -1}
		inStream1_V {Type O LastRead -1 FirstWrite 2}}
	calulation {
		inStream1_V {Type I LastRead 2 FirstWrite -1}
		la_0 {Type I LastRead 1 FirstWrite -1}
		la_1 {Type I LastRead 1 FirstWrite -1}
		la_2 {Type I LastRead 1 FirstWrite -1}
		la_3 {Type I LastRead 1 FirstWrite -1}
		la_4 {Type I LastRead 1 FirstWrite -1}
		la_5 {Type I LastRead 1 FirstWrite -1}
		la_6 {Type I LastRead 1 FirstWrite -1}
		la_7 {Type I LastRead 1 FirstWrite -1}
		la_8 {Type I LastRead 1 FirstWrite -1}
		la_9 {Type I LastRead 1 FirstWrite -1}
		la_10 {Type I LastRead 1 FirstWrite -1}
		la_11 {Type I LastRead 1 FirstWrite -1}
		la_12 {Type I LastRead 1 FirstWrite -1}
		la_13 {Type I LastRead 1 FirstWrite -1}
		la_14 {Type I LastRead 1 FirstWrite -1}
		la_15 {Type I LastRead 1 FirstWrite -1}
		la_16 {Type I LastRead 1 FirstWrite -1}
		la_17 {Type I LastRead 1 FirstWrite -1}
		la_18 {Type I LastRead 1 FirstWrite -1}
		la_19 {Type I LastRead 1 FirstWrite -1}
		la_20 {Type I LastRead 1 FirstWrite -1}
		la_21 {Type I LastRead 1 FirstWrite -1}
		la_22 {Type I LastRead 1 FirstWrite -1}
		la_23 {Type I LastRead 1 FirstWrite -1}
		la_24 {Type I LastRead 1 FirstWrite -1}
		la_25 {Type I LastRead 1 FirstWrite -1}
		la_26 {Type I LastRead 1 FirstWrite -1}
		la_27 {Type I LastRead 1 FirstWrite -1}
		la_28 {Type I LastRead 1 FirstWrite -1}
		la_29 {Type I LastRead 1 FirstWrite -1}
		la_30 {Type I LastRead 1 FirstWrite -1}
		la_31 {Type I LastRead 1 FirstWrite -1}
		lout_0 {Type IO LastRead 5 FirstWrite 12}
		lout_1 {Type IO LastRead 5 FirstWrite 12}
		lout_2 {Type IO LastRead 5 FirstWrite 12}
		lout_3 {Type IO LastRead 5 FirstWrite 12}
		lout_4 {Type IO LastRead 5 FirstWrite 12}
		lout_5 {Type IO LastRead 5 FirstWrite 12}
		lout_6 {Type IO LastRead 5 FirstWrite 12}
		lout_7 {Type IO LastRead 5 FirstWrite 12}
		lout_8 {Type IO LastRead 5 FirstWrite 12}
		lout_9 {Type IO LastRead 5 FirstWrite 12}
		lout_10 {Type IO LastRead 5 FirstWrite 12}
		lout_11 {Type IO LastRead 5 FirstWrite 12}
		lout_12 {Type IO LastRead 5 FirstWrite 12}
		lout_13 {Type IO LastRead 5 FirstWrite 12}
		lout_14 {Type IO LastRead 5 FirstWrite 12}
		lout_15 {Type IO LastRead 5 FirstWrite 12}
		lout_16 {Type IO LastRead 5 FirstWrite 12}
		lout_17 {Type IO LastRead 5 FirstWrite 12}
		lout_18 {Type IO LastRead 5 FirstWrite 12}
		lout_19 {Type IO LastRead 5 FirstWrite 12}
		lout_20 {Type IO LastRead 5 FirstWrite 12}
		lout_21 {Type IO LastRead 5 FirstWrite 12}
		lout_22 {Type IO LastRead 5 FirstWrite 12}
		lout_23 {Type IO LastRead 5 FirstWrite 12}
		lout_24 {Type IO LastRead 5 FirstWrite 12}
		lout_25 {Type IO LastRead 5 FirstWrite 12}
		lout_26 {Type IO LastRead 5 FirstWrite 12}
		lout_27 {Type IO LastRead 5 FirstWrite 12}
		lout_28 {Type IO LastRead 5 FirstWrite 12}
		lout_29 {Type IO LastRead 5 FirstWrite 12}
		lout_30 {Type IO LastRead 5 FirstWrite 12}
		lout_31 {Type IO LastRead 5 FirstWrite 12}}
	calulation_Loop_1_pr {
		lout_0 {Type IO LastRead 5 FirstWrite 12}
		lout_1 {Type IO LastRead 5 FirstWrite 12}
		lout_2 {Type IO LastRead 5 FirstWrite 12}
		lout_3 {Type IO LastRead 5 FirstWrite 12}
		lout_4 {Type IO LastRead 5 FirstWrite 12}
		lout_5 {Type IO LastRead 5 FirstWrite 12}
		lout_6 {Type IO LastRead 5 FirstWrite 12}
		lout_7 {Type IO LastRead 5 FirstWrite 12}
		lout_8 {Type IO LastRead 5 FirstWrite 12}
		lout_9 {Type IO LastRead 5 FirstWrite 12}
		lout_10 {Type IO LastRead 5 FirstWrite 12}
		lout_11 {Type IO LastRead 5 FirstWrite 12}
		lout_12 {Type IO LastRead 5 FirstWrite 12}
		lout_13 {Type IO LastRead 5 FirstWrite 12}
		lout_14 {Type IO LastRead 5 FirstWrite 12}
		lout_15 {Type IO LastRead 5 FirstWrite 12}
		lout_16 {Type IO LastRead 5 FirstWrite 12}
		lout_17 {Type IO LastRead 5 FirstWrite 12}
		lout_18 {Type IO LastRead 5 FirstWrite 12}
		lout_19 {Type IO LastRead 5 FirstWrite 12}
		lout_20 {Type IO LastRead 5 FirstWrite 12}
		lout_21 {Type IO LastRead 5 FirstWrite 12}
		lout_22 {Type IO LastRead 5 FirstWrite 12}
		lout_23 {Type IO LastRead 5 FirstWrite 12}
		lout_24 {Type IO LastRead 5 FirstWrite 12}
		lout_25 {Type IO LastRead 5 FirstWrite 12}
		lout_26 {Type IO LastRead 5 FirstWrite 12}
		lout_27 {Type IO LastRead 5 FirstWrite 12}
		lout_28 {Type IO LastRead 5 FirstWrite 12}
		lout_29 {Type IO LastRead 5 FirstWrite 12}
		lout_30 {Type IO LastRead 5 FirstWrite 12}
		lout_31 {Type IO LastRead 5 FirstWrite 12}
		inStream1_V {Type I LastRead 2 FirstWrite -1}
		la_0 {Type I LastRead 1 FirstWrite -1}
		la_1 {Type I LastRead 1 FirstWrite -1}
		la_2 {Type I LastRead 1 FirstWrite -1}
		la_3 {Type I LastRead 1 FirstWrite -1}
		la_4 {Type I LastRead 1 FirstWrite -1}
		la_5 {Type I LastRead 1 FirstWrite -1}
		la_6 {Type I LastRead 1 FirstWrite -1}
		la_7 {Type I LastRead 1 FirstWrite -1}
		la_8 {Type I LastRead 1 FirstWrite -1}
		la_9 {Type I LastRead 1 FirstWrite -1}
		la_10 {Type I LastRead 1 FirstWrite -1}
		la_11 {Type I LastRead 1 FirstWrite -1}
		la_12 {Type I LastRead 1 FirstWrite -1}
		la_13 {Type I LastRead 1 FirstWrite -1}
		la_14 {Type I LastRead 1 FirstWrite -1}
		la_15 {Type I LastRead 1 FirstWrite -1}
		la_16 {Type I LastRead 1 FirstWrite -1}
		la_17 {Type I LastRead 1 FirstWrite -1}
		la_18 {Type I LastRead 1 FirstWrite -1}
		la_19 {Type I LastRead 1 FirstWrite -1}
		la_20 {Type I LastRead 1 FirstWrite -1}
		la_21 {Type I LastRead 1 FirstWrite -1}
		la_22 {Type I LastRead 1 FirstWrite -1}
		la_23 {Type I LastRead 1 FirstWrite -1}
		la_24 {Type I LastRead 1 FirstWrite -1}
		la_25 {Type I LastRead 1 FirstWrite -1}
		la_26 {Type I LastRead 1 FirstWrite -1}
		la_27 {Type I LastRead 1 FirstWrite -1}
		la_28 {Type I LastRead 1 FirstWrite -1}
		la_29 {Type I LastRead 1 FirstWrite -1}
		la_30 {Type I LastRead 1 FirstWrite -1}
		la_31 {Type I LastRead 1 FirstWrite -1}}
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
		C {Type O LastRead -1 FirstWrite 3}}
	cal_initial {
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
		la_31 {Type O LastRead -1 FirstWrite 2}
		lout_0 {Type O LastRead -1 FirstWrite 1}
		lout_1 {Type O LastRead -1 FirstWrite 1}
		lout_2 {Type O LastRead -1 FirstWrite 1}
		lout_3 {Type O LastRead -1 FirstWrite 1}
		lout_4 {Type O LastRead -1 FirstWrite 1}
		lout_5 {Type O LastRead -1 FirstWrite 1}
		lout_6 {Type O LastRead -1 FirstWrite 1}
		lout_7 {Type O LastRead -1 FirstWrite 1}
		lout_8 {Type O LastRead -1 FirstWrite 1}
		lout_9 {Type O LastRead -1 FirstWrite 1}
		lout_10 {Type O LastRead -1 FirstWrite 1}
		lout_11 {Type O LastRead -1 FirstWrite 1}
		lout_12 {Type O LastRead -1 FirstWrite 1}
		lout_13 {Type O LastRead -1 FirstWrite 1}
		lout_14 {Type O LastRead -1 FirstWrite 1}
		lout_15 {Type O LastRead -1 FirstWrite 1}
		lout_16 {Type O LastRead -1 FirstWrite 1}
		lout_17 {Type O LastRead -1 FirstWrite 1}
		lout_18 {Type O LastRead -1 FirstWrite 1}
		lout_19 {Type O LastRead -1 FirstWrite 1}
		lout_20 {Type O LastRead -1 FirstWrite 1}
		lout_21 {Type O LastRead -1 FirstWrite 1}
		lout_22 {Type O LastRead -1 FirstWrite 1}
		lout_23 {Type O LastRead -1 FirstWrite 1}
		lout_24 {Type O LastRead -1 FirstWrite 1}
		lout_25 {Type O LastRead -1 FirstWrite 1}
		lout_26 {Type O LastRead -1 FirstWrite 1}
		lout_27 {Type O LastRead -1 FirstWrite 1}
		lout_28 {Type O LastRead -1 FirstWrite 1}
		lout_29 {Type O LastRead -1 FirstWrite 1}
		lout_30 {Type O LastRead -1 FirstWrite 1}
		lout_31 {Type O LastRead -1 FirstWrite 1}}
	out_initial {
		lout_0 {Type O LastRead -1 FirstWrite 1}
		lout_1 {Type O LastRead -1 FirstWrite 1}
		lout_2 {Type O LastRead -1 FirstWrite 1}
		lout_3 {Type O LastRead -1 FirstWrite 1}
		lout_4 {Type O LastRead -1 FirstWrite 1}
		lout_5 {Type O LastRead -1 FirstWrite 1}
		lout_6 {Type O LastRead -1 FirstWrite 1}
		lout_7 {Type O LastRead -1 FirstWrite 1}
		lout_8 {Type O LastRead -1 FirstWrite 1}
		lout_9 {Type O LastRead -1 FirstWrite 1}
		lout_10 {Type O LastRead -1 FirstWrite 1}
		lout_11 {Type O LastRead -1 FirstWrite 1}
		lout_12 {Type O LastRead -1 FirstWrite 1}
		lout_13 {Type O LastRead -1 FirstWrite 1}
		lout_14 {Type O LastRead -1 FirstWrite 1}
		lout_15 {Type O LastRead -1 FirstWrite 1}
		lout_16 {Type O LastRead -1 FirstWrite 1}
		lout_17 {Type O LastRead -1 FirstWrite 1}
		lout_18 {Type O LastRead -1 FirstWrite 1}
		lout_19 {Type O LastRead -1 FirstWrite 1}
		lout_20 {Type O LastRead -1 FirstWrite 1}
		lout_21 {Type O LastRead -1 FirstWrite 1}
		lout_22 {Type O LastRead -1 FirstWrite 1}
		lout_23 {Type O LastRead -1 FirstWrite 1}
		lout_24 {Type O LastRead -1 FirstWrite 1}
		lout_25 {Type O LastRead -1 FirstWrite 1}
		lout_26 {Type O LastRead -1 FirstWrite 1}
		lout_27 {Type O LastRead -1 FirstWrite 1}
		lout_28 {Type O LastRead -1 FirstWrite 1}
		lout_29 {Type O LastRead -1 FirstWrite 1}
		lout_30 {Type O LastRead -1 FirstWrite 1}
		lout_31 {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "34375", "Max" : "34375"}
	, {"Name" : "Interval", "Min" : "34376", "Max" : "34376"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	A { ap_fifo {  { A_dout fifo_data 0 32 }  { A_empty_n fifo_status 0 1 }  { A_read fifo_update 1 1 } } }
	B { ap_fifo {  { B_dout fifo_data 0 32 }  { B_empty_n fifo_status 0 1 }  { B_read fifo_update 1 1 } } }
	C { ap_fifo {  { C_din fifo_data 1 32 }  { C_full_n fifo_status 0 1 }  { C_write fifo_update 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	A { fifo_read 1 no_conditional }
	B { fifo_read 1 no_conditional }
	C { fifo_write 1 no_conditional }
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
