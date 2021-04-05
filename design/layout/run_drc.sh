#!/bin/bash

# check the cell name has been provided by the user
if [ $# -eq 0 ]; then
  echo "No cell name provided"
  exit 1
fi

# go into cell specific run folder
mkdir -p drc_lvs_pex
cd drc_lvs_pex
if [ ! -d "$1" ]; then
    mkdir -p "$1";
fi
cd "$1"

# create a magic tcl command file
echo "gds read ../../amsat_txrx_ic.gds
load $1
flatten drc_cell
load drc_cell" > magic_commands.tcl

# run magic
magic magic_commands.tcl &
