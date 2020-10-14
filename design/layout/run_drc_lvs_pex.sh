#!/bin/bash

# check the cell name has been provided by the user
if [ $# -eq 0 ]; then
  echo "No cell name provided"
  exit 1
fi

# go into cell specific run folder
cd drc_lvs_pex
if [ ! -d "$1" ]; then
    mkdir -p "$1";
fi
cd "$1"

# create a magic tcl command file
echo "gds read ../../amsat_txrx_ic.gds
load $1
flatten drc_cell
load drc_cell
extract all
ext2spice lvs
ext2spice subcircuits off
ext2spice -o drc_cell_lvs.spice
select top cell
port makeall
ext2spice cthresh 0.01
ext2spice rthresh 0.01
ext2spice subcircuit on
ext2spice ngspice
ext2spice -o drc_cell_pex.spice" > magic_commands.tcl

# remove the old LVS export
rm -f drc_cell_lvs.spice

# run magic
magic magic_commands.tcl &

# wait for new file to be generated
printf "Waiting for LVS extracted netlist to be generated.."
while [ ! -s drc_cell_lvs.spice ]
    do
    printf "."
    sleep 0.25
done
echo " "

# check if lvs reference file is present in folder
if [ -f "$1.spice" ]; then
    echo "Starting LVS"
    #yes quit | netgen -noc lvs "$1".spice drc_cell_lvs.spice /usr/local/share/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs_report.out
    netgen -batch lvs "$1".spice drc_cell_lvs.spice /usr/local/share/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs_report.out -json
else
    echo "No reference spice netlist ($1.spice) not doing LVS"
fi


# organise the parasitic extraction netlist
sed -i -e 's/.subckt drc_cell/.subckt "$1"/g' drc_cell_pex.spice
mv drc_cell_pex.spice "$1"_pex.spice