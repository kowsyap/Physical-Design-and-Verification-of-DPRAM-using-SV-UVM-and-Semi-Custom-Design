#######################################################
#                                                     
#  Innovus Command Logging File                     
#  Created on Mon Nov 16 23:22:32 2020                
#                                                     
#######################################################

#@(#)CDS: Innovus v17.12-s095_1 (64bit) 11/09/2017 12:10 (Linux 2.6.18-194.el5)
#@(#)CDS: NanoRoute 17.12-s095_1 NR171102-1913/17_12-UB (database version 2.30, 405.7.1) {superthreading v1.44}
#@(#)CDS: AAE 17.12-s040 (64bit) 11/09/2017 (Linux 2.6.18-194.el5)
#@(#)CDS: CTE 17.12-s036_1 () Nov  2 2017 09:33:40 ( )
#@(#)CDS: SYNTECH 17.12-s012_1 () Oct 31 2017 04:30:11 ( )
#@(#)CDS: CPE v17.12-s076
#@(#)CDS: IQRC/TQRC 16.1.1-s220 (64bit) Fri Aug  4 09:53:48 PDT 2017 (Linux 2.6.18-194.el5)

set_global _enable_mmmc_by_default_flow      $CTE::mmmc_default
suppressMessage ENCEXT-2799
getVersion
getVersion
getDrawView
loadWorkspace -name Physical
win
save_global Default.globals
set init_gnd_net VSS
set init_lef_file ../../install/FOUNDRY/digital/180nm/dig/lef/all.lef
set init_verilog dpram_netlist.v
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file ../../install/FOUNDRY/digital/180nm/dig/lef/all.lef
set init_verilog dpram_netlist.v
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file ../../install/FOUNDRY/digital/180nm/dig/lef/all.lef
set init_verilog dpram_netlist.v
set init_pwr_net VDD
init_design
save_global Default.globals
set init_gnd_net VSS
set init_lef_file ../../install/FOUNDRY/digital/180nm/dig/lef/all.lef
set init_verilog dpram_netlist.v
set init_pwr_net VDD
init_design
save_global Default.globals
set init_gnd_net VSS
set init_lef_file ../../install/FOUNDRY/digital/180nm/dig/lef/all.lef
set init_verilog dpram_netlist.v
set init_pwr_net VDD
init_design
set init_gnd_net VSS
set init_lef_file ../../install/FOUNDRY/digital/180nm/dig/lef/all.lef
set init_verilog dpram_netlist.v
set init_pwr_net VDD
init_design
save_global Default.globals
set init_gnd_net VSS
set init_lef_file ../../install/FOUNDRY/digital/180nm/dig/lef/all.lef
set init_verilog dpram_netlist.v
set init_pwr_net VDD
init_design
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site tsm3site -r 1 0.699994 10.0 10.0 10.0 10.0
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site tsm3site -r 0.981611960818 0.699683 10.56 10.08 10.56 10.08
uiSetTool select
getIoFlowFlag
fit
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site tsm3site -r 1 0.699683 20 20 20 20
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site tsm3site -r 0.981611960818 0.699683 20.46 20.16 20.46 20.16
uiSetTool select
getIoFlowFlag
fit
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal1 bottom Metal1 left Metal2 right Metal2} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal1 bottom Metal1 left Metal2 right Metal2} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 1.8 bottom 1.8 left 1.8 right 1.8} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal6 bottom Metal6 left Metal5 right Metal5} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.46 bottom 0.46 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal6 bottom Metal6 left Metal5 right Metal5} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.46 bottom 0.46 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 0 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal6 bottom Metal6 left Metal5 right Metal5} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.46 bottom 0.46 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal6 bottom Metal6 left Metal5 right Metal5} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.46 bottom 0.46 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site tsm3site -r 1 0.699683 30 30 30 30
uiSetTool select
getIoFlowFlag
fit
setIoFlowFlag 0
floorPlan -site tsm3site -r 0.981611960818 0.699683 30.36 30.24 30.36 30.24
uiSetTool select
getIoFlowFlag
fit
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal6 bottom Metal6 left Metal5 right Metal5} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.46 bottom 0.46 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
uiSetTool select
undo
gui_select -rect {65.050 326.592 133.285 324.111}
gui_select -rect {-28.616 409.093 412.423 12.716}
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deleteSelectedFromFPlan
selectWire 8.2900 8.0500 10.0900 374.9900 5 VSS
deleteSelectedFromFPlan
selectWire 10.3700 10.3100 12.1700 372.7300 5 VDD
deleteSelectedFromFPlan
selectWire 379.9700 8.0500 381.7700 374.9900 5 VSS
deleteSelectedFromFPlan
selectWire 10.3700 10.3100 379.6900 12.1100 6 VDD
deleteSelectedFromFPlan
selectWire 377.8900 10.3100 379.6900 372.7300 5 VDD
deleteSelectedFromFPlan
selectWire 8.2900 8.0500 381.7700 9.8500 6 VSS
deleteSelectedFromFPlan
getIoFlowFlag
setIoFlowFlag 0
floorPlan -site tsm3site -r 1 0.699683 30.36 30.24 30.36 30.24
uiSetTool select
getIoFlowFlag
fit
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal6 bottom Metal6 left Metal5 right Metal5} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.46 bottom 0.46 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal6 bottom Metal6 left Metal5 right Metal5} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.46 bottom 0.46 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
selectWire 13.2400 13.0900 15.0400 390.1100 5 VSS
deleteSelectedFromFPlan
selectWire 13.2400 13.0900 396.6200 14.8900 6 VSS
deleteSelectedFromFPlan
selectWire 15.3200 15.3500 394.5400 17.1500 6 VDD
deleteSelectedFromFPlan
selectWire 15.3200 15.3500 17.1200 387.8500 5 VDD
deleteSelectedFromFPlan
selectWire 15.3200 386.0500 394.5400 387.8500 6 VDD
deleteSelectedFromFPlan
selectWire 13.2400 388.3100 396.6200 390.1100 6 VSS
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deleteSelectedFromFPlan
deleteSelectedFromFPlan
selectWire 394.8200 13.0900 396.6200 390.1100 5 VSS
deleteSelectedFromFPlan
selectWire 392.7400 15.3500 394.5400 387.8500 5 VDD
deleteSelectedFromFPlan
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal6 bottom Metal6 left Metal5 right Metal5} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.46 bottom 0.46 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
setAddRingMode -ring_target default -extend_over_row 0 -ignore_rows 0 -avoid_short 0 -skip_crossing_trunks none -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size 1 -orthogonal_only true -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
addRing -nets {VDD VSS} -type core_rings -follow core -layer {top Metal6 bottom Metal6 left Metal5 right Metal5} -width {top 1.8 bottom 1.8 left 1.8 right 1.8} -spacing {top 0.46 bottom 0.46 left 0.28 right 0.28} -offset {top 1.8 bottom 1.8 left 1.8 right 1.8} -center 1 -extend_corner {} -threshold 0 -jog_distance 0 -snap_wire_center_to_grid None
gui_select -rect {70.640 69.647 223.564 88.103}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
set sprCreateIeRingOffset 1.0
set sprCreateIeRingThreshold 1.0
set sprCreateIeRingJogDistance 1.0
set sprCreateIeRingLayers {}
set sprCreateIeStripeWidth 10.0
set sprCreateIeStripeThreshold 1.0
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {VDD VSS} -layer Metal6 -direction horizontal -width 1.8 -spacing 0.46 -number_of_sets 10 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal6 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal6 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {VDD VSS} -layer Metal6 -direction horizontal -width 1.8 -spacing 0.46 -number_of_sets 10 -start_from bottom -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal6 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal6 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {VDD VSS} -layer Metal6 -direction vertical -width 1.8 -spacing 0.46 -number_of_sets 10 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal6 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal6 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setAddStripeMode -ignore_block_check false -break_at none -route_over_rows_only false -rows_without_stripes_only false -extend_to_closest_target none -stop_at_last_wire_for_area false -partial_set_thru_domain false -ignore_nondefault_domains false -trim_antenna_back_to_shape none -spacing_type edge_to_edge -spacing_from_block 0 -stripe_min_length 0 -stacked_via_top_layer Metal6 -stacked_via_bottom_layer Metal1 -via_using_exact_crossover_size false -split_vias false -orthogonal_only true -allow_jog { padcore_ring  block_ring }
addStripe -nets {VDD VSS} -layer Metal6 -direction vertical -width 1.8 -spacing 0.46 -number_of_sets 10 -start_from left -switch_layer_over_obs false -max_same_layer_jog_length 2 -padcore_ring_top_layer_limit Metal6 -padcore_ring_bottom_layer_limit Metal1 -block_ring_top_layer_limit Metal6 -block_ring_bottom_layer_limit Metal1 -use_wire_group 0 -snap_wire_center_to_grid None -skip_via_on_pin {  standardcell } -skip_via_on_wire_shape {  noshape }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal6(6) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal6(6) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal6(6) }
setSrouteMode -viaConnectToShape { noshape }
sroute -connect { blockPin padPin padRing corePin floatingStripe } -layerChangeRange { Metal1(1) Metal6(6) } -blockPinTarget { nearestTarget } -padPinPortConnect { allPort oneGeom } -padPinTarget { nearestTarget } -corePinTarget { firstAfterRowEnd } -floatingStripeTarget { blockring padring ring stripe ringpin blockpin followpin } -allowJogging 1 -crossoverViaLayerRange { Metal1(1) Metal6(6) } -nets { VDD VSS } -allowLayerChange 1 -blockPin useLef -targetViaLayerRange { Metal1(1) Metal6(6) }
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setNanoRouteMode -quiet -droutePostRouteSpreadWire 1
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X1 DLY3X1 DLY2X1 DLY1X1 CLKBUFXL CLKBUFX8 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 CLKBUFX1 BUFXL BUFX8 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 BUFX1 INVXL INVX8 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVXL CLKINVX8 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -modulePlan 1 -clkGateAware 1 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 0 -placeIOPins 1 -moduleAwareSpare 0 -preserveRouting 0 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X1 DLY3X1 DLY2X1 DLY1X1 CLKBUFXL CLKBUFX8 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 CLKBUFX1 BUFXL BUFX8 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 BUFX1 INVXL INVX8 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVXL CLKINVX8 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -fp false
report_message -start_cmd
getTrialRouteMode -maxRouteLayer -quiet
getTrialRouteMode -user -maxRouteLayer
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_exp_special_setup_for_nvidia -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -ignoreScan -quiet
setvar spgRptErrorForScanConnection 1
setPlaceMode -fp false
report_message -start_cmd
getTrialRouteMode -maxRouteLayer -quiet
getTrialRouteMode -user -maxRouteLayer
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_exp_special_setup_for_nvidia -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -ignoreScan -quiet
setvar spgRptErrorForScanConnection 1
setPlaceMode -fp false
report_message -start_cmd
getTrialRouteMode -maxRouteLayer -quiet
getTrialRouteMode -user -maxRouteLayer
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_exp_special_setup_for_nvidia -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -ignoreScan -quiet
setvar spgRptErrorForScanConnection 1
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {BUFX1 BUFX12 BUFX16 BUFX2 BUFX20 BUFX3 BUFX4 BUFX8 BUFXL CLKBUFX1 CLKBUFX12 CLKBUFX16 CLKBUFX2 CLKBUFX20 CLKBUFX3 CLKBUFX4 CLKBUFX8 CLKBUFXL DLY1X1 DLY2X1 DLY3X1 DLY4X1 CLKINVX1 CLKINVX12 CLKINVX16 CLKINVX2 CLKINVX20 CLKINVX3 CLKINVX4 CLKINVX8 CLKINVXL INVX1 INVX12 INVX16 INVX2 INVX20 INVX3 INVX4 INVX8 INVXL} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -modulePlan 1 -clkGateAware 0 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 1 -placeIOPins 1 -moduleAwareSpare 0 -checkPinLayerForAccess {  1 } -preserveRouting 0 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {BUFX1 BUFX12 BUFX16 BUFX2 BUFX20 BUFX3 BUFX4 BUFX8 BUFXL CLKBUFX1 CLKBUFX12 CLKBUFX16 CLKBUFX2 CLKBUFX20 CLKBUFX3 CLKBUFX4 CLKBUFX8 CLKBUFXL DLY1X1 DLY2X1 DLY3X1 DLY4X1 CLKINVX1 CLKINVX12 CLKINVX16 CLKINVX2 CLKINVX20 CLKINVX3 CLKINVX4 CLKINVX8 CLKINVXL INVX1 INVX12 INVX16 INVX2 INVX20 INVX3 INVX4 INVX8 INVXL} -maxAllowedDelay 1
setPlaceMode -reset
setPlaceMode -congEffort auto -timingDriven 1 -modulePlan 1 -clkGateAware 0 -powerDriven 0 -ignoreScan 1 -reorderScan 1 -ignoreSpare 1 -placeIOPins 1 -moduleAwareSpare 0 -checkPinLayerForAccess {  1 } -preserveRouting 0 -rmAffectedRouting 0 -checkRoute 0 -swapEEQ 0
setPlaceMode -fp false
report_message -start_cmd
getTrialRouteMode -maxRouteLayer -quiet
getTrialRouteMode -user -maxRouteLayer
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_exp_special_setup_for_nvidia -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -ignoreScan -quiet
setvar spgRptErrorForScanConnection 1
specifyScanChain
deleteScanChain
man IMPSp-9025
man IMPSP-9025
man IMPSP-9099
setPlaceMode -place_global_ignore_scan false
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X1 DLY3X1 DLY2X1 DLY1X1 CLKBUFXL CLKBUFX8 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 CLKBUFX1 BUFXL BUFX8 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 BUFX1 INVXL INVX8 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVXL CLKINVX8 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setRouteMode -earlyGlobalHonorMsvRouteConstraint false -earlyGlobalRoutePartitionPinGuide true
setEndCapMode -reset
setEndCapMode -boundary_tap false
setUsefulSkewMode -maxSkew false -noBoundary false -useCells {DLY4X1 DLY3X1 DLY2X1 DLY1X1 CLKBUFXL CLKBUFX8 CLKBUFX4 CLKBUFX3 CLKBUFX20 CLKBUFX2 CLKBUFX16 CLKBUFX12 CLKBUFX1 BUFXL BUFX8 BUFX4 BUFX3 BUFX20 BUFX2 BUFX16 BUFX12 BUFX1 INVXL INVX8 INVX4 INVX3 INVX20 INVX2 INVX16 INVX12 INVX1 CLKINVXL CLKINVX8 CLKINVX4 CLKINVX3 CLKINVX20 CLKINVX2 CLKINVX16 CLKINVX12 CLKINVX1} -maxAllowedDelay 1
setPlaceMode -fp false
report_message -start_cmd
getTrialRouteMode -maxRouteLayer -quiet
getTrialRouteMode -user -maxRouteLayer
getPlaceMode -user -maxRouteLayer
getPlaceMode -quiet -adaptiveFlowMode
getPlaceMode -timingDriven -quiet
getPlaceMode -adaptive -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -place_global_exp_special_setup_for_nvidia -quiet
um::push_snapshot_stack
getDesignMode -quiet -flowEffort
getDesignMode -highSpeedCore -quiet
getPlaceMode -quiet -adaptive
set spgFlowInInitialPlace 1
getPlaceMode -sdpAlignment -quiet
getPlaceMode -softGuide -quiet
getPlaceMode -useSdpGroup -quiet
getPlaceMode -sdpAlignment -quiet
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -sdpPlace -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -sdpPlace -quiet
getPlaceMode -groupHighLevelClkGate -quiet
setvar spgRptErrorForScanConnection 0
getPlaceMode -place_global_exp_allow_missing_scan_chain -quiet
getPlaceMode -ignoreScan -quiet
setvar spgRptErrorForScanConnection 2
getPlaceMode -place_check_library -quiet
getPlaceMode -trimView -quiet
getPlaceMode -expTrimOptBeforeTDGP -quiet
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -congEffort -quiet
getPlaceMode -relaxSoftBlockageMode -quiet
getPlaceMode -user -relaxSoftBlockageMode
getPlaceMode -ignoreScan -quiet
getPlaceMode -user -ignoreScan
getPlaceMode -repairPlace -quiet
getPlaceMode -user -repairPlace
getPlaceMode -congEffort -quiet
getPlaceMode -fp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -user -timingDriven
getPlaceMode -fastFp -quiet
getPlaceMode -clusterMode -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -inPlaceOptMode -quiet
getPlaceMode -quiet -bypassFlowEffortHighChecking
getPlaceMode -ultraCongEffortFlow -quiet
getPlaceMode -forceTiming -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -timingDriven -quiet
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -powerDriven -quiet
getExtractRCMode -quiet -engine
getAnalysisMode -quiet -clkSrcPath
getAnalysisMode -quiet -clockPropagation
getAnalysisMode -quiet -cppr
setExtractRCMode -engine preRoute
setAnalysisMode -clkSrcPath false -clockPropagation forcedIdeal
getPlaceMode -exp_slack_driven -quiet
isAnalysisModeSetup
getPlaceMode -tdgpResetCteTG -quiet
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -enableDistPlace -quiet
getPlaceMode -exp_slack_driven -quiet
spInternalUse TDGP ignoreTimingSpare
set gpsPrivate::coegIsGbSignedSeedNl 0
getPlaceMode -enableDistPlace -quiet
getPlaceMode -quiet -expNewFastMode
setPlaceMode -expHiddenFastMode 1
setPlaceMode -ignoreScan 0
getPlaceMode -quiet -place_global_exp_auto_finish_floorplan
getPlaceMode -quiet -IOSlackAdjust
getPlaceMode -quiet -useNonTimingDeleteBufferTree
getPlaceMode -quiet -prePlaceOptSimplifyNetlist
getPlaceMode -quiet -enablePrePlaceOptimizations
getPlaceMode -quiet -prePlaceOptDecloneInv
deleteBufferTree -decloneInv
getAnalysisMode -quiet -honorClockDomains
getPlaceMode -honorUserPathGroup -quiet
getAnalysisMode -quiet -honorClockDomains
set delaycal_use_default_delay_limit 101
set delaycal_default_net_delay 0
set delaycal_default_net_load 0
set delaycal_default_net_load_ignore_for_ilm 0
getAnalysisMode -clkSrcPath -quiet
getAnalysisMode -clockPropagation -quiet
getAnalysisMode -checkType -quiet
buildTimingGraph
getDelayCalMode -ignoreNetLoad -quiet
getDelayCalMode -ignoreNetLoad -quiet
setDelayCalMode -ignoreNetLoad true -quiet
get_global timing_enable_path_group_priority
get_global timing_constraint_enable_group_path_resetting
set_global timing_enable_path_group_priority false
set_global timing_constraint_enable_group_path_resetting false
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2reg_tmp.12861 -from {0x73 0x76} -to 0x77 -ignore_source_of_trigger_arc
getOptMode -allowPreCTSClkSrcPaths -quiet
set_global _is_ipo_interactive_path_groups 1
group_path -name in2out_tmp.12861 -from {0x7a 0x7d} -to 0x7e -ignore_source_of_trigger_arc
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2reg_tmp.12861 -from 0x80 -to 0x81
set_global _is_ipo_interactive_path_groups 1
group_path -name reg2out_tmp.12861 -from 0x84 -to 0x85
setPathGroupOptions reg2reg_tmp.12861 -effortLevel high
isAnalysisModeSetup
getAnalysisMode -analysisType -quiet
isAnalysisModeSetup
all_setup_analysis_views
all_hold_analysis_views
get_analysis_view $view -delay_corner
get_delay_corner $dcCorner -power_domain_list
get_delay_corner $dcCorner -library_set
get_library_set $libSetName -si
get_delay_corner $dcCorner -late_library_set
get_delay_corner $dcCorner -early_library_set
get_analysis_view $view -delay_corner
get_delay_corner $dcCorner -power_domain_list
get_delay_corner $dcCorner -library_set
get_library_set $libSetName -si
get_delay_corner $dcCorner -late_library_set
get_delay_corner $dcCorner -early_library_set
reset_path_group -name reg2out_tmp.12861
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2reg_tmp.12861
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name in2out_tmp.12861
set_global _is_ipo_interactive_path_groups 0
reset_path_group -name reg2reg_tmp.12861
set_global _is_ipo_interactive_path_groups 0
setDelayCalMode -ignoreNetLoad false
set delaycal_use_default_delay_limit 1000
set delaycal_default_net_delay 1000ps
set delaycal_default_net_load 0.5pf
set delaycal_default_net_load_ignore_for_ilm 0
getPlaceMode -exp_slack_driven -quiet
getAnalysisMode -quiet -honorClockDomains
setDelayCalMode -engine feDc
createBasicPathGroups -quiet
getTrialRouteMode -user -honorClockSpecNDR
getTrialRouteMode -user -clkNetRoutingDemandInTracks
getTrialRouteMode -user -maxRouteLayer
getTrialRouteMode -user -minRouteLayer
getTrialRouteMode -user -routeGuide
getTrialRouteMode -quiet -handlePreroute
getGlobalRouteMode -user -earlyGlobalMaxRouteLayer
getGlobalRouteMode -user -earlyGlobalMinRouteLayer
getGlobalRouteMode -user -earlyGlobalCapacityScreen
reset_path_group
set_global _is_ipo_interactive_path_groups 0
scanReorder
getExtractRCMode -relative_c_th -quiet
getExtractRCMode -coupling_c_th -quiet
getExtractRCMode -total_c_th -quiet
getDesignMode -thirdPartyCompatible -quiet
getExtractRCMode -lefTechFileMap -quiet
getExtractRCMode -coupled -quiet
setDelayCalMode -engine aae
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
get_ccopt_clock_trees *
getPlaceMode -exp_insert_guidance_clock_tree -quiet
getPlaceMode -exp_cluster_based_high_fanout_buffering -quiet
getPlaceMode -quiet -cong_repair_commit_clock_net_route_attr
getPlaceMode -enableDbSaveAreaPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
setPlaceMode -reset -improveWithPsp
getPlaceMode -quiet -debugGlobalPlace
getPlaceMode -congRepair -quiet
getPlaceMode -fp -quiet
getPlaceMode -congEffort -quiet
getPlaceMode -user -rplaceIncrNPClkGateAwareMode
getPlaceMode -user -congRepairMaxIter
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -rplaceIncrNPClkGateAwareMode 4
getPlaceMode -quiet -congEffort
setPlaceMode -congRepairMaxIter 1
getDesignMode -quiet -congEffort
getPlaceMode -quickCTS -quiet
get_proto_model -type_match {flex_module flex_instgroup} -committed -name -tcl
getPlaceMode -congRepairForceTrialRoute -quiet
getPlaceMode -user -congRepairForceTrialRoute
setPlaceMode -congRepairForceTrialRoute true
um::enable_metric
congRepair
um::enable_metric
um::enable_metric
um::enable_metric
setPlaceMode -reset -congRepairForceTrialRoute
getPlaceMode -quiet -congRepairPDClkGateMode4
setPlaceMode -reset -rplaceIncrNPClkGateAwareMode
setPlaceMode -reset -congRepairMaxIter
getPlaceMode -congRepairCleanupPadding -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -tdgpDumpStageTiming -quiet
getPlaceMode -quiet -tdgpAdjustNetWeightBySlack
getPlaceMode -exp_slack_driven -quiet
set_global timing_enable_path_group_priority $gpsPrivate::optSave_ctePGPriority
set_global timing_constraint_enable_group_path_resetting $gpsPrivate::optSave_ctePGResetting
setvar spgRptErrorForScanConnection 0
getPlaceMode -trimView -quiet
getOptMode -quiet -viewOptPolishing
getOptMode -quiet -fastViewOpt
spInternalUse deleteViewOptManager
setAnalysisMode -clkSrcPath true -clockPropagation sdcControl
getPlaceMode -exp_slack_driven -quiet
setExtractRCMode -engine preRoute
setPlaceMode -reset -relaxSoftBlockageMode
setPlaceMode -ignoreScan false -quiet
setPlaceMode -reset -repairPlace
getPlaceMode -macroPlaceMode -quiet
getPlaceMode -exp_slack_driven -quiet
getPlaceMode -enableDistPlace -quiet
set gpsPrivate::coegIsGbSignedSeedNl 0
spInternalUse TDGP recoverTimingSpare
getPlaceMode -enableDistPlace -quiet
setPlaceMode -reset -expHiddenFastMode
getPlaceMode -tcg2Pass -quiet
getPlaceMode -quiet -wireLenOptEffort
getPlaceMode -fp -quiet
getPlaceMode -fastfp -quiet
getPlaceMode -doRPlace -quiet
getPlaceMode -RTCPlaceDesignFlow -quiet
getPlaceMode -quickCTS -quiet
set spgFlowInInitialPlace 0
getPlaceMode -user -maxRouteLayer
getPlaceMode -place_global_exp_special_setup_for_nvidia -quiet
spInternalUse TDGP resetIgnoreNetLoad
getDesignMode -quiet -flowEffort
report_message -end_cmd
um::create_snapshot -name final -auto min
um::pop_snapshot_stack
um::create_snapshot -name place_design
getPlaceMode -exp_slack_driven -quiet
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
getCTSMode -engine -quiet
addEndCap -preCap FILL1 -postCap FILL2 -prefix ENDCAP -area
addEndCap -preCap FILL1 -postCap FILL2 -prefix ENDCAP
addEndCap -preCap FILL1 -postCap FILL2 -prefix ENDCAP
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
addWellTap -cell FILL1 -cellInterval 30u -prefix WELLTAP
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
getCTSMode -engine -quiet
create_ccopt_clock_tree_spec -immediate
ctd_win -id ctd_window
setNanoRouteMode -quiet -timingEngine {}
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
setNanoRouteMode -quiet -routeWithTimingDriven 1
setNanoRouteMode -quiet -routeWithSiPostRouteFix 0
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven false
routeDesign -globalDetail
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
selectWire 200.8300 385.9800 201.1100 403.0600 2 {data0_in[3]}
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
uiSetTool select
deselectAll
getMultiCpuUsage -localCpu
get_verify_drc_mode -disable_rules -quiet
get_verify_drc_mode -quiet -area
get_verify_drc_mode -quiet -layer_range
get_verify_drc_mode -check_implant -quiet
get_verify_drc_mode -check_implant_across_rows -quiet
get_verify_drc_mode -check_ndr_spacing -quiet
get_verify_drc_mode -check_only -quiet
get_verify_drc_mode -check_same_via_cell -quiet
get_verify_drc_mode -exclude_pg_net -quiet
get_verify_drc_mode -ignore_trial_route -quiet
get_verify_drc_mode -max_wrong_way_halo -quiet
get_verify_drc_mode -use_min_spacing_on_block_obs -quiet
get_verify_drc_mode -limit -quiet
set_verify_drc_mode -disable_rules {} -check_implant true -check_implant_across_rows false -check_ndr_spacing false -check_same_via_cell false -exclude_pg_net false -ignore_trial_route false -report dpram.drc.rpt -limit 1000
verify_drc
set_verify_drc_mode -area {0 0 0 0}
get_visible_nets
get_visible_nets
get_visible_nets
zoomBox -229.372 20.230 -226.890 22.092
get_visible_nets
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference violation -isVisible 1
violationBrowser -all -no_display_false
zoomBox 359.04 255.48 385.44 273.72
redraw
setNanoRouteMode -quiet -routeWithSiDriven 1
setNanoRouteMode -quiet -drouteStartIteration default
setNanoRouteMode -quiet -routeTopRoutingLayer default
setNanoRouteMode -quiet -routeBottomRoutingLayer default
setNanoRouteMode -quiet -drouteEndIteration default
setNanoRouteMode -quiet -routeWithTimingDriven true
setNanoRouteMode -quiet -routeWithSiDriven true
routeDesign -globalDetail
setLayerPreference gdsii -isVisible 1
setLayerPreference portNum -isVisible 1
setLayerPreference gdsii -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference aggress -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference pinText -isVisible 0
setLayerPreference flightLine -isVisible 0
setLayerPreference portNum -isVisible 0
setLayerPreference dpt -isVisible 0
setLayerPreference gdsii -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference aggress -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference pinText -isVisible 1
setLayerPreference flightLine -isVisible 1
setLayerPreference portNum -isVisible 1
setLayerPreference dpt -isVisible 1
setLayerPreference gdsii -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference aggress -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference pinText -isVisible 0
setLayerPreference flightLine -isVisible 0
setLayerPreference portNum -isVisible 0
setLayerPreference dpt -isVisible 0
setLayerPreference gdsii -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference aggress -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference pinText -isVisible 1
setLayerPreference flightLine -isVisible 1
setLayerPreference portNum -isVisible 1
setLayerPreference dpt -isVisible 1
setLayerPreference gdsii -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference aggress -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference pinText -isVisible 0
setLayerPreference flightLine -isVisible 0
setLayerPreference portNum -isVisible 0
setLayerPreference dpt -isVisible 0
setLayerPreference gdsii -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference aggress -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference pinText -isVisible 1
setLayerPreference flightLine -isVisible 1
setLayerPreference portNum -isVisible 1
setLayerPreference dpt -isVisible 1
setLayerPreference gdsii -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference aggress -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference pinText -isVisible 0
setLayerPreference flightLine -isVisible 0
setLayerPreference portNum -isVisible 0
setLayerPreference dpt -isVisible 0
setLayerPreference gdsii -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference aggress -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference pinText -isVisible 1
setLayerPreference flightLine -isVisible 1
setLayerPreference portNum -isVisible 1
setLayerPreference dpt -isVisible 1
setLayerPreference gdsii -isVisible 0
setLayerPreference term -isVisible 0
setLayerPreference violation -isVisible 0
setLayerPreference busguide -isVisible 0
setLayerPreference aggress -isVisible 0
setLayerPreference text -isVisible 0
setLayerPreference pinText -isVisible 0
setLayerPreference flightLine -isVisible 0
setLayerPreference portNum -isVisible 0
setLayerPreference dpt -isVisible 0
setLayerPreference gdsii -isVisible 1
setLayerPreference term -isVisible 1
setLayerPreference violation -isVisible 1
setLayerPreference busguide -isVisible 1
setLayerPreference aggress -isVisible 1
setLayerPreference text -isVisible 1
setLayerPreference pinText -isVisible 1
setLayerPreference flightLine -isVisible 1
setLayerPreference portNum -isVisible 1
setLayerPreference dpt -isVisible 1
setLayerPreference violation -isVisible 0
reset_parasitics
extractRC
rcOut -setload dpram.setload
rcOut -setres dpram.setres
gui_select -next -point {96.024 12.803}
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -pathReports -drvReports -slackReports -numPaths 50 -prefix dpram_postCTS -outDir timingReports
redirect -quiet {set honorDomain [getAnalysisMode -honorClockDomains]} > /dev/null
timeDesign -postCTS -hold -pathReports -slackReports -numPaths 50 -prefix dpram_postCTS -outDir timingReports
violationBrowserClose
getCTSMode -engine -quiet
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postCTS
optDesign -postCTS -hold
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setOptMode -fixCap true -fixTran true -fixFanoutLoad false
optDesign -postRoute
setLayerPreference shield -isVisible 0
setLayerPreference unknowState -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference wire -isVisible 0
setLayerPreference via -isVisible 0
setLayerPreference patch -isVisible 0
setLayerPreference trim -isVisible 0
setLayerPreference shield -isVisible 1
setLayerPreference unknowState -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference wire -isVisible 1
setLayerPreference via -isVisible 1
setLayerPreference patch -isVisible 1
setLayerPreference trim -isVisible 1
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
setLayerPreference allM1 -isVisible 0
setLayerPreference allM2Cont -isVisible 0
setLayerPreference allM2 -isVisible 0
setLayerPreference allM3Cont -isVisible 0
setLayerPreference allM3 -isVisible 0
setLayerPreference allM4Cont -isVisible 0
setLayerPreference allM4 -isVisible 0
setLayerPreference allM5Cont -isVisible 0
setLayerPreference allM5 -isVisible 0
setLayerPreference allM6Cont -isVisible 0
setLayerPreference allM6 -isVisible 0
setLayerPreference shield -isVisible 0
setLayerPreference unknowState -isVisible 0
setLayerPreference metalFill -isVisible 0
setLayerPreference wire -isVisible 0
setLayerPreference via -isVisible 0
setLayerPreference patch -isVisible 0
setLayerPreference trim -isVisible 0
setLayerPreference shield -isVisible 1
setLayerPreference unknowState -isVisible 1
setLayerPreference metalFill -isVisible 1
setLayerPreference wire -isVisible 1
setLayerPreference via -isVisible 1
setLayerPreference patch -isVisible 1
setLayerPreference trim -isVisible 1
setLayerPreference allM1 -isVisible 1
setLayerPreference allM2Cont -isVisible 1
setLayerPreference allM2 -isVisible 1
setLayerPreference allM3Cont -isVisible 1
setLayerPreference allM3 -isVisible 1
setLayerPreference allM4Cont -isVisible 1
setLayerPreference allM4 -isVisible 1
setLayerPreference allM5Cont -isVisible 1
setLayerPreference allM5 -isVisible 1
setLayerPreference allM6Cont -isVisible 1
setLayerPreference allM6 -isVisible 1
saveDesign dpram.enc
saveNetlist routing.v
streamOut dpram.gds -mapFile streamOut.map -libName DesignLib -units 2000 -mode ALL
