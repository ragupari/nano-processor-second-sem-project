# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/.Xil/Vivado-13200-KOBI-PC/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7a35tcpg236-1

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_vhdl -lib xil_defaultlib {
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/sources_1/new/Add_Sub.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Project/3bit_Add/3bit_Add.srcs/sources_1/new/Adder_3bit.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Project/ProgramCounter/ProgramCounter.srcs/sources_1/imports/new/D_FF.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Project/Registers/Registers.srcs/sources_1/imports/new/Decoder_2_to_4.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Project/Registers/Registers.srcs/sources_1/imports/new/Decoder_3_to_8.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/sources_1/imports/new/FA.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/sources_1/imports/new/HA.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/new/Instruction_Decoder.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/new/LUT_16_7.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Project/Multiplexer/Multiplexer.srcs/sources_1/new/Mux_2_to_1_3bit.sv}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Project/Multiplexer/Multiplexer.srcs/sources_1/new/Mux_2_to_1_4bit.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Project/Multiplexer/Multiplexer.srcs/sources_1/new/Mux_8_to_1_4bit.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Desktop/NanoProcessor.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Project/ProgramCounter/ProgramCounter.srcs/sources_1/new/PC.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Project/Program_ROM/Program_ROM.srcs/sources_1/new/Program_ROM.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/sources_1/imports/new/RCA.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Project/Registers/Registers.srcs/sources_1/new/Register_4bit.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/imports/Project/Registers/Registers.srcs/sources_1/new/Register_Bank.vhd}
      {E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/project_1.srcs/sources_1/new/OurProcessor.vhd}
    }
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top OurProcessor
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "E:/Semester 2/Computer Organization and Digital Design/Lab/Temp/Project1/project_1/.Xil/Vivado-13200-KOBI-PC/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}