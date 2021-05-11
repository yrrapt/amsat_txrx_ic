# source /amsat_txrx_ic/design/dac_digital_interface/layout/run.tcl

# set some global settings
set CONFIG_DIR /amsat_txrx_ic/design/dac_digital_interface/layout 


# synth
prep -design /amsat_txrx_ic/design/dac_digital_interface
run_synthesis

# define area
set ::env(FP_SIZING)        "absolute"
set ::env(DIE_AREA)         "0 0 280 210"
# set ::env(PL_TARGET_DENSITY) 0.4

# create initial floorplan
init_floorplan

# apply the pin locations
try_catch python3 $CONFIG_DIR/pin_create.py             \
                --die_area [join $::env(DIE_AREA) ,]    \
                --output_def $::env(TMP_DIR)/floorplan/pin_locations.def

set ::env(FP_DEF_TEMPLATE) $::env(TMP_DIR)/floorplan/pin_locations.def
apply_def_template

# finish floorplanning
tap_decap_or
scrot_klayout -layout $::env(CURRENT_DEF)
run_power_grid_generation


# remaining steps
run_placement
run_cts
run_resizer_timing
run_routing
if { ($::env(DIODE_INSERTION_STRATEGY) == 2) || ($::env(DIODE_INSERTION_STRATEGY) == 5) } {
    run_antenna_check
    heal_antenna_violators; # modifies the routed DEF
}

if { $::env(LVS_INSERT_POWER_PINS) } {
    write_powered_verilog
    set_netlist $::env(lvs_result_file_tag).powered.v
}

run_magic
run_klayout
run_klayout_gds_xor

if { ! [info exists flags_map(-no_lvs)] } {
    run_magic_spice_export
}

if {  [info exists flags_map(-save) ] } {
    if { ! [info exists arg_values(-save_path)] } {
        set arg_values(-save_path) ""
    }
    save_views 	-lef_path $::env(magic_result_file_tag).lef \
        -def_path $::env(tritonRoute_result_file_tag).def \
        -gds_path $::env(magic_result_file_tag).gds \
        -mag_path $::env(magic_result_file_tag).mag \
        -maglef_path $::env(magic_result_file_tag).lef.mag \
        -spice_path $::env(magic_result_file_tag).spice \
        -verilog_path $::env(CURRENT_NETLIST) \
        -save_path $arg_values(-save_path) \
        -tag $::env(RUN_TAG)
}

# Physical verification
if { ! [info exists flags_map(-no_lvs)] } {
    run_lvs; # requires run_magic_spice_export
}

if { ! [info exists flags_map(-no_drc)] } {
    run_magic_drc
    run_klayout_drc
}

if {  ! [info exists flags_map(-no_antennacheck) ] } {
    run_antenna_check
}

run_lef_cvc

calc_total_runtime
generate_final_summary_report

puts_success "Flow Completed Without Fatal Errors."