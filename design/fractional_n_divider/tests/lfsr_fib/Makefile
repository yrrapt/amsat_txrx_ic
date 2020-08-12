TOPLEVEL_LANG ?= verilog

PWD=$(shell pwd)

# add the models to path
export PYTHONPATH := $(PWD)/../../models:$(PYTHONPATH)

ifeq ($(TOPLEVEL_LANG),verilog)
    VERILOG_SOURCES = $(PWD)/../../lfsr_fib.v
else
    $(error "A valid value (verilog) was not provided for TOPLEVEL_LANG=$(TOPLEVEL_LANG)")
endif

EXTRA_ARGS := --trace --trace-structs --coverage
SIM := verilator

TOPLEVEL := lfsr_fib
MODULE   := test_lfsr_fib


include $(shell cocotb-config --makefiles)/Makefile.sim
