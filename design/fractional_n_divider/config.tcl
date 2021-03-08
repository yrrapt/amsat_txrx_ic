# User config
set ::env(DESIGN_NAME) fractional_n_divider

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

# Fill this
set ::env(CLOCK_PERIOD) "5"
set ::env(CLOCK_PORT) "input_frequency"
set ::env(CLOCK_NET) $::env(CLOCK_PORT)


set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}


