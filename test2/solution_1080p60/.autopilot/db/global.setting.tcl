
set TopModule "gray8_gauss2d_3x3"
set ClockPeriod 6.734
set ClockList ap_clk
set HasVivadoClockPeriod 0
set CombLogicFlag 0
set PipelineFlag 0
set DataflowTaskPipelineFlag 1
set TrivialPipelineFlag 0
set noPortSwitchingFlag 0
set FloatingPointFlag 0
set FftOrFirFlag 0
set NbRWValue 0
set intNbAccess 0
set NewDSPMapping 1
set HasDSPModule 0
set ResetLevelFlag 1
set ResetStyle control
set ResetSyncFlag 1
set ResetRegisterFlag 0
set ResetVariableFlag 0
set FsmEncStyle onehot
set MaxFanout 0
set RtlPrefix {}
set ExtraCCFlags {}
set ExtraCLdFlags {}
set SynCheckOptions {}
set PresynOptions {}
set PreprocOptions {}
set SchedOptions {}
set BindOptions {}
set RtlGenOptions {}
set RtlWriterOptions {}
set CbcGenFlag {}
set CasGenFlag {}
set CasMonitorFlag {}
set AutoSimOptions {}
set ExportMCPathFlag 0
set SCTraceFileName mytrace
set SCTraceFileFormat vcd
set SCTraceOption all
set TargetInfo xc7a35t:fgg484:-2
set SourceFiles {sc {} c ../../../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3.cpp}
set SourceFlags {sc {} c {{}}}
set DirectiveFile E:/FPGA-project/test2/solution_1080p60/solution_1080p60.directive
set TBFiles {verilog ../../../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3_tb.cpp bc ../../../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3_tb.cpp vhdl ../../../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3_tb.cpp sc ../../../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3_tb.cpp cas ../../../gauss_src/gray8_gauss2d_3x3/gray8_gauss2d_3x3_tb.cpp c {}}
set SpecLanguage C
set TVInFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TVOutFiles {bc {} c {} sc {} cas {} vhdl {} verilog {}}
set TBTops {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set TBInstNames {verilog {} bc {} vhdl {} sc {} cas {} c {}}
set XDCFiles {}
set ExtraGlobalOptions {"area_timing" 1 "clock_gate" 1 "impl_flow" map "power_gate" 0}
set TBTVFileNotFound {}
set AppFile ../vivado_hls.app
set ApsFile solution_1080p60.aps
set AvePath ../..
set DefaultPlatform DefaultPlatform
set multiClockList {}
set SCPortClockMap {}
set intNbAccess 0
set PlatformFiles {{DefaultPlatform {xilinx/artix7/artix7 xilinx/artix7/artix7_fpv6}}}
set HPFPO 0
