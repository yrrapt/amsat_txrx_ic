# source /amsat_txrx_ic/design/dac_digital_interface/layout/constrain_pins.tcl

set ::env(SAVE_DEF) [index_file $::env(ioPlacer_tmp_file_tag).def]

try_catch openroad -exit $CONFIG_DIR/or_constrain_pins.tcl |& tee $::env(TERMINAL_OUTPUT) [index_file $::env(ioPlacer_log_file_tag).log 0]

set_def $::env(SAVE_DEF)