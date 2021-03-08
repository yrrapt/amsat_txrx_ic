TOPLEVEL_LANG ?= verilog

PWD=$(shell pwd)


ifeq ($(TOPLEVEL_LANG),verilog)
    VERILOG_SOURCES = $(PWD)/../dac_thermometer_cycle.v
else
    $(error "A valid value (verilog) was not provided for TOPLEVEL_LANG=$(TOPLEVEL_LANG)")
endif

EXTRA_ARGS := --trace --trace-structs --coverage
SIM := verilator

TOPLEVEL := dac_thermometer_cycle
MODULE   := test_dac_thermometer_cycle


include $(shell cocotb-config --makefiles)/Makefile.sim
