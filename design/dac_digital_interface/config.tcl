# User config
set ::env(DESIGN_NAME) dac_digital_interface

set ::env(FP_CORE_UTIL) 20
set ::env(DESIGN_IS_CORE) 1

# set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hs"
# set ::env(SYNTH_STRATEGY)   "DELAY 3"

set ::env(STD_CELL_LIBRARY) "sky130_fd_sc_hd"
set ::env(SYNTH_STRATEGY)   "DELAY 1"

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/*.v]
set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

# Fill this
set ::env(CLOCK_PERIOD) "15"
set ::env(CLOCK_PORT) "clk_i"
set ::env(CLOCK_NET) $::env(CLOCK_PORT)


set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}