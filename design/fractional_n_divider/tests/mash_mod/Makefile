TOPLEVEL_LANG ?= verilog

PWD=$(shell pwd)

# add the models to path
export PYTHONPATH := $(PWD)/../../models:$(PYTHONPATH)

ifeq ($(TOPLEVEL_LANG),verilog)
    VERILOG_SOURCES = $(PWD)/../../mash_mod.v
else
    $(error "A valid value (verilog) was not provided for TOPLEVEL_LANG=$(TOPLEVEL_LANG)")
endif

EXTRA_ARGS := --trace --trace-structs --coverage
SIM := verilator

TOPLEVEL := mash_mod
MODULE   := test_mash_mod


include $(shell cocotb-config --makefiles)/Makefile.sim
