#######################################################
#                                                     #
#  Encounter Command Logging File                     #
#  Created on Mon Jul 17 17:56:52 2017                #
#                                                     #
#######################################################

#@(#)CDS: Encounter v13.13-s017_1 (64bit) 07/30/2013 13:03 (Linux 2.6)
#@(#)CDS: NanoRoute v13.13-s005 NR130716-1135/13_10-UB (database version 2.30, 190.4.1) {superthreading v1.19}
#@(#)CDS: CeltIC v13.13-s001_1 (64bit) 07/19/2013 04:50:05 (Linux 2.6.18-194.el5)
#@(#)CDS: AAE 13.13-e003 (64bit) 07/30/2013 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 13.13-s004_1 (64bit) Jul 30 2013 05:44:27 (Linux 2.6.18-194.el5)
#@(#)CDS: CPE v13.13-s001
#@(#)CDS: IQRC/TQRC 12.1.1-s225 (64bit) Wed Jun 12 20:28:41 PDT 2013 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
win
set conf_ioOri R0
set conf_row_height 1.400000
set defHierChar /
set delaycal_input_transition_delay 0.1ps
set fpIsMaxIoHeight 0
set fp_core_height 61.600000
set fp_core_to_bottom 4.060000
set fp_core_to_left 4.180000
set fp_core_to_right 4.000000
set fp_core_to_top 4.000000
set fp_core_width 65.450000
set init_gnd_net gnd
set init_lef_file /software/dk/nangate45/lef/NangateOpenCellLibrary.lef
set init_mmmc_file viewDefinition.tcl
set init_oa_search_lib {}
set init_pwr_net vdd
set init_verilog dlx.v
set lsgOCPGainMult 1.000000
set_global lib_build_asynch_de_assert_arc "true"
set_global lib_build_timing_cond_default_arc "true"
set_global report_precision "3"
set_global timing_collection_result_display_limit "100"
set_global timing_report_enable_efficient_collection_handling "true"
set_global timing_report_slack_on_timing_point "false"
set_global timing_allow_input_delay_on_clock_source "false"
set_global timing_apply_default_primary_input_assertion "true"
set_global timing_build_all_hierarchical_pins "false"
set_global timing_case_analysis_for_sequential_propagation "false"
set_global timing_case_analysis_for_icg_propagation "false"
set_global timing_clock_phase_propagation "both"
set_global timing_continue_on_error "false"
set_global timing_cppr_threshold_ps "20"
set_global timing_pba_exhaustive_path_nworst_limit "10000"
set_global timing_cppr_transition_sense "normal"
set_global timing_cppr_self_loop_mode "false"
set_global timing_cppr_remove_clock_to_data_crp "false"
set_global timing_cppr_skip_clock_reconvergence "false"
set_global timing_default_opcond_per_lib "true"
set_global timing_disable_bus_contention_check "false"
set_global timing_disable_clockperiod_checks "false"
set_global timing_disable_floating_bus_check "false"
set_global timing_disable_inferred_clock_gating_checks "false"
set_global timing_enable_tristate_clock_gating "false"
set_global timing_disable_internal_inout_cell_paths "true"
set_global timing_disable_internal_inout_net_arcs "true"
set_global timing_disable_lib_pulsewidth_checks "false"
set_global timing_disable_library_data_to_data_checks "false"
set_global timing_disable_nochange_checks "false"
set_global timing_disable_recovery_removal_checks "false"
set_global timing_disable_set_case_analysis "false"
set_global timing_disable_skew_checks "false"
set_global timing_disable_test_signal_arc "false"
set_global timing_disable_tristate_disable_arcs "false"
set_global timing_disable_user_data_to_data_checks "false"
set_global timing_enable_default_delay_arc "true"
set_global timing_enable_power_ground_constants "false"
set_global timing_enable_case_analysis_conflict_warning "false"
set_global timing_enable_preset_clear_arcs "false"
set_global timing_enable_si_cppr "true"
set_global timing_enable_uncertainty_for_pulsewidth_checks "false"
set_global timing_extract_model_slew_propagation_mode "worst_slew"
set_global timing_io_use_clock_network_latency "ideal"
set_global timing_path_groups_for_clocks "false"
set_global timing_reduce_multi_drive_net_arcs "true"
set_global timing_reduce_multi_drive_net_arcs_threshold "10000"
set_global timing_remove_clock_reconvergence_pessimism "false"
set_global timing_self_loop_paths_no_skew "false"
set_global timing_self_loop_paths_no_skew_max_depth "10"
set_global timing_self_loop_paths_no_skew_max_slack "0"
set_global timing_set_scaling_for_negative_checks "default"
set_global timing_set_scaling_for_negative_delays "default"
set_global timing_use_latch_time_borrow "true"
set_global write_global_slack_worst_trigger_path_on_clocks "false"
set_global timing_disable_non_sequential_checks "false"
set_global timing_disable_clock_gating_checks "false"
set_global timing_enable_data_through_clock_gating "true"
set_global aocv_chip_size "1e+30"
set_global aocv_core_size "1e+30"
set_global aocv_stage_count_with_IO "true"
set_global aocv_inter_clock_use_worst_derate "false"
set_global timing_dynamic_loop_breaking "false"
set_global timing_enable_mmmc_loop_handling "true"
set_global timing_propagate_latch_data_uncertainty "false"
set_global timing_allow_useful_skew_latency_per_view "false"
set_global timing_suppress_ilm_constraint_mismatches "false"
set_global timing_disable_report_header_info "false"
set_global timing_hier_object_name_compatibility "true"
set_global timing_max_gclock_latency_loops "2"
set_global timing_enable_new_path_exception_overwriting "true"
set_global timing_report_launch_clock_path "false"
set_global timing_enable_simultaneous_setup_hold_mode "false"
set_global timing_null_collection_return_compatibility "false"
set_global timing_enable_get_object_escaped_name_backward_compatible "false"
set_global timing_report_use_worst_parallel_cell_arc "false"
set_global timing_report_generated_clock_info "true"
set_global timing_warn_precision_setting_masks_violation "false"
set_global timing_report_group_based_mode "false"
set_global timing_report_filter_user_paths_from_group "false"
set_global timing_report_enable_worst_interclock_skew "false"
set_global timing_report_enable_markers "true"
set_global timing_enable_caching_in_reports "false"
set_global timing_disable_bidi_output_timing_checks "true"
set_global timing_disable_timing_model_latch_inferencing "true"
set_global timing_enable_multifrequency_latch_analysis "false"
set_global timing_ignore_lumped_rc_assertions "false"
set_global timing_library_genclk_use_group_name "false"
set_global timing_library_zero_negative_timing_check_arcs "false"
set_global timing_prefix_module_name_with_library_genclk "true"
set_global timing_enable_path_delay_segmentation "false"
set_global timing_twf_include_clock_groups "false"
set_global timing_report_constraint_use_report_timing_format "false"
set_global timing_defer_mmmc_object_updates "false"
set_global timing_enable_genclk_edge_based_source_latency "true"
set_global timing_set_clock_source_to_output_as_data "false"
set_global latch_time_borrow_mode "max_borrow"
set_global timing_use_latch_early_launch_edge "true"
set_global timing_latch_budget_mode_compatibility "false"
set_global timing_report_timing_header_detail_info "default"
set_global timing_number_worker_thread "0"
set_global timing_path_based_recompute_noise "false"
set_global timing_path_based_recompute_use_incr_slew "false"
set_global timing_get_pins_of_nets_compatibility "false"
set_global timing_get_of_objects_hier_compatibility "false"
set_global timing_enable_multiedge_genclk_support "true"
set_global timing_enable_efficient_cppr_mode "true"
set_global timing_suppress_escape_characters "true"
set_global timing_disable_inferred_clock_gating_checks_sequential "true"
set_global timing_enable_pessimistic_cppr_for_reconvergent_clock_paths "false"
set_global timing_multifrequency_clock_rounding_factor "1e-05"
set_global timing_disable_drv_reports_on_constant_nets "false"
set_global timing_use_incremental_si_transition "false"
set_global timing_disable_default_arc "false"
set_global timing_enable_all_fanin_fanout_levels_compatibility "true"
set_global timing_clock_source_use_driving_cell "true"
set_global timing_disable_netlist_constants "false"
set_global timing_report_unconstrained_paths "false"
set_global timing_resolve_driver_conflicts "aggressive"
set_global timing_write_sdf_no_escape_backslash_control "false"
set_global timing_apply_exceptions_to_data_check_related_pin "false"
set_global timing_disable_library_tiehi_tielo "false"
set_global timing_enable_uncertainty_for_clock_checks "false"
set_global timing_create_clock_default_propagated "false"
set_global timing_disable_retime_clock_path_slew_propagation "true"
set_global timing_ssta_generate_sta_timing_report_format "false"
set_global timing_enable_backward_compatible_case_analysis_mode "false"
set_global timing_ipd_derate_flow_use_path_segment_delay_difference "false"
set_global timing_driving_cell_override_library "false"
set_global timing_path_based_use_min_max_clock_slew_for_check "true"
set_global timing_ssta_enable_nsigma_enumeration "false"
set_global timing_extract_model_compatibility_mode "false"
set_global timing_enable_efficient_reporting "false"
set_global timing_path_based_enable_efficient_mode "true"
set_global timing_path_based_enable_multithreading "false"
set_global timing_path_based_enable_multi_pass "false"
set_global timing_extract_model_aocv_mode "none"
set_global timing_extract_model_case_analysis_in_library "true"
set_global timing_extract_model_consider_design_level_drv "true"
set_global timing_extract_model_gating_as_nochange_arc "true"
set_global timing_extract_model_improved_characterization_point_selection "false"
set_global timing_extract_model_include_latency_and_uncertainty "false"
set_global timing_extract_model_rise_fall_cap_range "false"
set_global timing_extract_model_internal_power_ground_rails "false"
set_global timing_generated_clocks_inherit_ideal_latency "false"
set_global timing_path_based_enable_timing_window_pessimism_removal "false"
set_global timing_consider_false_path_in_timing_window "false"
set_global timing_path_based_enable_physical_branch_point "true"
set_global timing_enable_aocv_slack_based "false"
set_global timing_aocv_slack_threshold "0"
set_global timing_path_based_enable_transition_sense_based_branch_point "true"
set_global timing_derate_aocv_reference_point "1"
set_global timing_derate_ocv_reference_point "1"
set_global timing_all_registers_include_icg_cells "true"
set_global timing_enable_tcl_lists_with_collections "true"
set_global timing_enable_smart_ilm_constraint_messages "false"
set_global timing_report_enable_max_path_limit_crossed "false"
set_global timing_extract_model_ideal_clock_latency_arc "false"
set_global timing_extract_model_validate_unconstrained_paths "false"
set_global timing_enable_efficient_get_objects "false"
set_global timing_enable_efficient_non_regexp_token_based_search "false"
set_global timing_enable_efficient_non_regexp_token_based_filter "false"
set_global timing_constraint_enable_efficient_mode "false"
set_global timing_enable_multithreaded_sdc_reading "true"
set_global timing_stage_evaluation_high_fanout_net_compatibility "false"
set_global timing_enable_backward_compatible_loop_handling "false"
set_global timing_enable_backward_compatible_pulse_width_check "true"
set_global timing_disable_output_as_clock_port "false"
set_global timing_enable_efficient_input_output_delay_mode "true"
set_global timing_enable_backward_compatible_cppr_mode "true"
set_global timing_enable_aocv_accurate_mode "false"
set_global timing_enable_backward_compatible_pessimistic_cppr_mode "true"
set_global timing_enable_backward_compatible_cppr_preprocessing_mode "true"
create_library_set -name libsBC\
   -timing\
    [list /software/dk/nangate45/liberty/NangateOpenCellLibrary_fast_ecsm.lib]
create_library_set -name libsWC\
   -timing\
    [list /software/dk/nangate45/liberty/NangateOpenCellLibrary_slow_ecsm.lib]
create_library_set -name libsTYP\
   -timing\
    [list /software/dk/nangate45/liberty/NangateOpenCellLibrary_typical_ecsm_nowlm.lib]
create_rc_corner -name high\
   -cap_table /software/dk/nangate45/lef/captables/NCSU_FreePDK_45nm.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 400
create_rc_corner -name standard\
   -cap_table /software/dk/nangate45/lef/captables/NCSU_FreePDK_45nm.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 300
create_rc_corner -name low\
   -cap_table /software/dk/nangate45/lef/captables/NCSU_FreePDK_45nm.capTbl\
   -preRoute_res 1\
   -postRoute_res 1\
   -preRoute_cap 1\
   -postRoute_cap 1\
   -postRoute_xcap 1\
   -preRoute_clkres 0\
   -preRoute_clkcap 0\
   -T 240
create_delay_corner -name std-typ\
   -library_set libsTYP\
   -rc_corner standard
create_delay_corner -name lt-bc\
   -library_set libsBC\
   -rc_corner low
create_delay_corner -name ht-wc\
   -library_set libsWC\
   -rc_corner high
create_constraint_mode -name coherent-synthesis\
   -sdc_files\
    [list dlx.sdc]
create_analysis_view -name worst -constraint_mode coherent-synthesis -delay_corner ht-wc
create_analysis_view -name best -constraint_mode coherent-synthesis -delay_corner lt-bc
create_analysis_view -name default -constraint_mode coherent-synthesis -delay_corner std-typ
set_analysis_view -setup [list default] -hold [list default]
init_design
zoomSelected
zoomSelected
zoomOut
zoomOut
zoomOut
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -coreMarginsBy die -site FreePDK45_38x28_10R_NP_162NW_34O -r 0.997063380119 0.700001 4 4 4.0 4.0
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingNets {}
set sprCreateIeRingLayers {}
set sprCreateIeRingWidth 1.0
set sprCreateIeRingSpacing 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
addRing -stacked_via_top_layer metal10 -around core -jog_distance 0.095 -threshold 0.095 -nets {vdd gnd} -stacked_via_bottom_layer metal1 -layer {bottom metal9 top metal9 right metal10 left metal10} -width 0.8 -spacing 0.8 -offset 0.095
set sprCreateIeStripeNets {}
set sprCreateIeStripeLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeSpacing 2.0
set sprCreateIeStripeThreshold 1.0
addStripe -block_ring_top_layer_limit metal10 -max_same_layer_jog_length 1.6 -padcore_ring_bottom_layer_limit metal9 -set_to_set_distance 100 -stacked_via_top_layer metal10 -padcore_ring_top_layer_limit metal10 -spacing 0.8 -xright_offset 15 -merge_stripes_value 0.095 -layer metal10 -block_ring_bottom_layer_limit metal9 -width 0.8 -nets {gnd vdd} -stacked_via_bottom_layer metal1
undo
addStripe -block_ring_top_layer_limit metal10 -max_same_layer_jog_length 1.6 -padcore_ring_bottom_layer_limit metal9 -set_to_set_distance 50 -stacked_via_top_layer metal10 -padcore_ring_top_layer_limit metal10 -spacing 0.8 -xright_offset 15 -merge_stripes_value 0.095 -layer metal10 -block_ring_bottom_layer_limit metal9 -width 0.8 -nets {gnd vdd} -stacked_via_bottom_layer metal1
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { metal1 metal10 } -blockPinTarget { nearestRingStripe nearestTarget } -padPinPortConnect { allPort oneGeom } -stripeSCpinTarget { blockring padring ring stripe ringpin blockpin } -checkAlignedSecondaryPin 1 -blockPin useLef -allowJogging 1 -crossoverViaBottomLayer metal1 -allowLayerChange 1 -targetViaTopLayer metal10 -crossoverViaTopLayer metal10 -targetViaBottomLayer metal1 -nets { gnd vdd }
setPlaceMode -reset
setPlaceMode -congEffort medium -timingDriven 1 -modulePlan 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 1 -placeIOPins 1 -moduleAwareSpare 0 -checkPinLayerForAccess {  1 } -preserveRouting 0 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
placeDesign -prePlaceOpt
zoomIn
zoomOut
undo
fit
setPlaceMode -fp false
placeDesign -prePlaceOpt
zoomIn
zoomOut
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -preCTS
createClockTreeSpec -bufferList {CLKBUF_X1 CLKBUF_X2 CLKBUF_X3} -file Clock.ctstch
clockDesign -specFile Clock.ctstch -outDir clock_report -fixedInstBeforeCTS
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
getFillerMode -quiet
addFiller -cell FILLCELL_X8 FILLCELL_X4 FILLCELL_X32 FILLCELL_X2 FILLCELL_X16 FILLCELL_X1 -prefix FILLER
trialRoute -maxRouteLayer 10
setDrawView place
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven false
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setAnalysisMode -analysisType onChipVariation
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
optDesign -postRoute -hold
saveDesign dlx.enc
win
dumpToGIF dlx_layoutgif
set_analysis_view -setup {default} -hold {default}
rcOut -setload dlx.setload -rc_corner standard
rcOut -setres dlx.setres -rc_corner standard
rcOut -spf dlx.spf -rc_corner standard
rcOut -spef dlx.spef -rc_corner standard
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -pathReports -drvReports -slackReports -numPaths 50 -prefix dlx_postRoute -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postRoute -hold -pathReports -slackReports -numPaths 50 -prefix dlx_postRoute -outDir timingReports
get_time_unit
report_timing -machine_readable -max_points 10000 -max_slack 0.75 -path_exceptions all > top.mtarpt
load_timing_debug_report -name default_report top.mtarpt
verifyConnectivity -type all -error 1000 -warning 50
fit
reportGateCount -level 5 -limit 100 -outfile dlx.gateCount
saveNetlist dlx.v
all_hold_analysis_views 
all_setup_analysis_views 
write_sdf  -ideal_clock_network dlx.sdf
write_sdf  -ideal_clock_network dlx.sdf
deselectAll
setVerifyGeometryMode -area { 0 0 0 0 } -minWidth true -minSpacing true -minArea true -sameNet true -short true -overlap true -offRGrid false -offMGrid true -mergedMGridCheck true -minHole true -implantCheck true -minimumCut true -minStep true -viaEnclosure true -antenna false -insuffMetalOverlap true -pinInBlkg false -diffCellViol true -sameCellViol false -padFillerCellsOverlap true -routingBlkgPinOverlap true -routingCellBlkgOverlap true -regRoutingOnly false -stackedViasOnRegNet false -wireExt true -useNonDefaultSpacing false -maxWidth true -maxNonPrefLength -1 -error 1000 -warning 50
verifyGeometry
setVerifyGeometryMode -area { 0 0 0 0 }
summaryReport -outdir summaryReport
setDrawView ameba
setDrawView fplan
setDrawView ameba
setDrawView place
setDrawView place
reportSelect
