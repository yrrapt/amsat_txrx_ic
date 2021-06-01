#!/bin/bash

# check the cell name has been provided by the user
if [ $# -eq 0 ]; then
  echo "No cell name provided"
  exit 1
fi

mkdir -p drc_lvs_pex

# go into cell specific run folder
cd drc_lvs_pex
if [ ! -d "$1" ]; then
    mkdir -p "$1";
fi
cd "$1"

# create a magic tcl command file
#echo "gds flatten true
#gds read ../../amsat_txrx_ic.gds
#load $1
#select top cell
#extract all
#ext2sim labels on
#ext2sim
#extresist tolerance 10
#extresist
#ext2spice lvs
#ext2spice cthresh 0.01
#ext2spice extresist on
#ext2spice
#ext2spice -o $1_pex.spice
#exit" > magic_commands.tcl

echo "gds flatten true
gds read ../../amsat_txrx_ic.gds
load $1
select top cell
port makeall
ext2spice lvs
ext2spice cthresh 0.01
ext2spice rthresh 0.01
ext2spice subcircuit on
ext2spice ngspice
ext2spice -o $1_pex.spice
exit" > magic_commands.tcl



# remove the old LVS export
rm -f drc_cell_lvs.spice

# run magic
magic -noconsole -dnull magic_commands.tcl

