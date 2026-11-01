set moduleName sharpen3x3
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
set C_modelName {sharpen3x3}
set C_modelType { void 0 }
set C_modelArgList {
	{ src_V_V int 8 regular {fifo 0 volatile }  }
	{ dst_V_V int 8 regular {fifo 1 volatile }  }
	{ width_V int 12 regular  }
	{ height_V int 12 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "src_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "READONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "src.V.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "dst_V_V", "interface" : "fifo", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "dst.V.V","cData": "uint8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "width_V", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "width.V","cData": "uint12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "height_V", "interface" : "wire", "bitwidth" : 12, "direction" : "READONLY", "bitSlice":[{"low":0,"up":11,"cElement": [{"cName": "height.V","cData": "uint12","bit_use": { "low": 0,"up": 11},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 14
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ src_V_V_dout sc_in sc_lv 8 signal 0 } 
	{ src_V_V_empty_n sc_in sc_logic 1 signal 0 } 
	{ src_V_V_read sc_out sc_logic 1 signal 0 } 
	{ dst_V_V_din sc_out sc_lv 8 signal 1 } 
	{ dst_V_V_full_n sc_in sc_logic 1 signal 1 } 
	{ dst_V_V_write sc_out sc_logic 1 signal 1 } 
	{ width_V sc_in sc_lv 12 signal 2 } 
	{ height_V sc_in sc_lv 12 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "src_V_V_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "src_V_V", "role": "dout" }} , 
 	{ "name": "src_V_V_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_V_V", "role": "empty_n" }} , 
 	{ "name": "src_V_V_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "src_V_V", "role": "read" }} , 
 	{ "name": "dst_V_V_din", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "dst_V_V", "role": "din" }} , 
 	{ "name": "dst_V_V_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_V", "role": "full_n" }} , 
 	{ "name": "dst_V_V_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dst_V_V", "role": "write" }} , 
 	{ "name": "width_V", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "width_V", "role": "default" }} , 
 	{ "name": "height_V", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "height_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "sharpen3x3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "16777221",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_54", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_78", "FromFinalSV" : "3", "FromAddress" : "wlb_lb_val_V_0_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_99", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_99", "ToFinalSV" : "4", "ToAddress" : "wlb_lb_val_V_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../sharpen3x3/sharpen3x3.cpp:24:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_56", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_80", "FromFinalSV" : "3", "FromAddress" : "wlb_lb_val_V_1_address0", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_84", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_84", "ToFinalSV" : "3", "ToAddress" : "wlb_lb_val_V_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../sharpen3x3/sharpen3x3.cpp:24:1)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_84", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_84", "FromFinalSV" : "3", "FromAddress" : "wlb_lb_val_V_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_56", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_80", "ToFinalSV" : "3", "ToAddress" : "wlb_lb_val_V_1_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../sharpen3x3/sharpen3x3.cpp:24:1)", "Type" : "RAW"},
			{"FromInitialState" : "ap_enable_state5_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_99", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_99", "FromFinalSV" : "4", "FromAddress" : "wlb_lb_val_V_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_54", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_78", "ToFinalSV" : "3", "ToAddress" : "wlb_lb_val_V_0_address0", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(../sharpen3x3/sharpen3x3.cpp:24:1)", "Type" : "RAW"}],
		"Port" : [
			{"Name" : "src_V_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "src_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "dst_V_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "dst_V_V_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "width_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "height_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "wlb_xsize_V", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "col", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wlb_w_val_V_0_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wlb_w_val_V_0_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "wlb_w_val_V_0_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wlb_w_val_V_1_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wlb_w_val_V_1_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "wlb_w_val_V_1_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wlb_w_val_V_2_1", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wlb_w_val_V_2_2", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "wlb_w_val_V_2_0", "Type" : "OVld", "Direction" : "IO"},
			{"Name" : "wlb_lb_val_V_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "wlb_lb_val_V_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "wlb_lb_val_V_2", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wlb_lb_val_V_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wlb_lb_val_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.wlb_lb_val_V_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sharpen3x3_am_addeOg_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sharpen3x3 {
		src_V_V {Type I LastRead 3 FirstWrite -1}
		dst_V_V {Type O LastRead -1 FirstWrite 5}
		width_V {Type I LastRead 0 FirstWrite -1}
		height_V {Type I LastRead 1 FirstWrite -1}
		wlb_xsize_V {Type IO LastRead -1 FirstWrite -1}
		col {Type IO LastRead -1 FirstWrite -1}
		wlb_w_val_V_0_1 {Type IO LastRead -1 FirstWrite -1}
		wlb_w_val_V_0_2 {Type O LastRead -1 FirstWrite -1}
		wlb_w_val_V_0_0 {Type IO LastRead -1 FirstWrite -1}
		wlb_w_val_V_1_1 {Type IO LastRead -1 FirstWrite -1}
		wlb_w_val_V_1_2 {Type O LastRead -1 FirstWrite -1}
		wlb_w_val_V_1_0 {Type IO LastRead -1 FirstWrite -1}
		wlb_w_val_V_2_1 {Type IO LastRead -1 FirstWrite -1}
		wlb_w_val_V_2_2 {Type O LastRead -1 FirstWrite -1}
		wlb_w_val_V_2_0 {Type IO LastRead -1 FirstWrite -1}
		wlb_lb_val_V_0 {Type IO LastRead -1 FirstWrite -1}
		wlb_lb_val_V_1 {Type IO LastRead -1 FirstWrite -1}
		wlb_lb_val_V_2 {Type O LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "16777221"}
	, {"Name" : "Interval", "Min" : "7", "Max" : "16777222"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	src_V_V { ap_fifo {  { src_V_V_dout fifo_data 0 8 }  { src_V_V_empty_n fifo_status 0 1 }  { src_V_V_read fifo_update 1 1 } } }
	dst_V_V { ap_fifo {  { dst_V_V_din fifo_data 1 8 }  { dst_V_V_full_n fifo_status 0 1 }  { dst_V_V_write fifo_update 1 1 } } }
	width_V { ap_none {  { width_V in_data 0 12 } } }
	height_V { ap_none {  { height_V in_data 0 12 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
	src_V_V { fifo_read 1 has_conditional }
	dst_V_V { fifo_write 1 has_conditional }
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
