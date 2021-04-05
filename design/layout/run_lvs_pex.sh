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
echo "gds flatten true
gds read ../../amsat_txrx_ic.gds
load $1
extract all
extract do all
ext2spice lvs
ext2spice subcircuits off
ext2spice -o drc_cell_lvs.spice
select top cell
port makeall
ext2spice lvs
ext2spice cthresh 0.01
ext2spice rthresh 0.01
ext2spice subcircuit on
ext2spice ngspice
ext2spice -o drc_cell_pex.spice" > magic_commands.tcl

# remove the old LVS export
rm -f drc_cell_lvs.spice

# run magic
magic -noconsole -dnull magic_commands.tcl &

# wait for new file to be generated
printf "Waiting for LVS extracted netlist to be generated.."
while [ ! -s drc_cell_lvs.spice ]
    do
    printf "."
    sleep 0.25
done
echo " "

# move to the root directory and use xschem to generate a new netlist in LVS mode
run_dir=$PWD
cd ../../../..
#xschem -n -q -o "$run_dir" --tcl "set top_subckt 1" "design/$1/$1.sch"
xschem -n -q -o "$run_dir" "design/$1/$1.sch"
cd $run_dir

# include the digital cell definitions
sed -i '$s,.end,.include '"$HOME"'\/skywater\/open_pdks\/sky130\/sky130A\/libs.ref\/sky130_fd_sc_hd\/spice\/sky130_fd_sc_hd.spice\n.end,g' "$1.spice"
sed -i '$s,.end,.include '"$HOME"'\/skywater\/open_pdks\/sky130\/sky130A\/libs.ref\/sky130_fd_sc_hs\/spice\/sky130_fd_sc_hs.spice\n.end,g' "$1.spice"

# want to replace with global RF subcircuit include
#sed -i '$s,.end,.include '"$HOME"'\/skywater\/skywater-pdk\/libraries\/sky130_fd_pr\/latest\/cells\/rf_nfet_01v8_lvt\/sky130_fd_pr__rf_nfet_01v8_lvt_aF02W3p00L0p15.spice\n.end,g' "$1.spice"
#sed -i '$s,.end,.include '"$HOME"'\/skywater\/skywater-pdk\/libraries\/sky130_fd_pr\/latest\/cells\/rf_nfet_01v8_lvt\/sky130_fd_pr__rf_nfet_01v8_lvt_aF02W1p65L0p15.spice\n.end,g' "$1.spice"
#sed -i '$s,.end,.include '"$HOME"'\/skywater\/skywater-pdk\/libraries\/sky130_fd_pr\/latest\/cells\/rf_pfet_01v8_lvt\/sky130_fd_pr__rf_pfet_01v8_lvt_aM02W5p00L0p35.spice\n.end,g' "$1.spice"
#sed -i '$s,.end,.include '"$HOME"'\/skywater\/skywater-pdk\/libraries\/sky130_fd_pr\/latest\/cells\/rf_pfet_01v8\/sky130_fd_pr__rf_pfet_01v8_aM02W1p65L0p25.spice\n.end,g' "$1.spice"
#sed -i '$s,.end,.include '"$HOME"'\/skywater\/skywater-pdk\/libraries\/sky130_fd_pr\/latest\/cells\/res_xhigh_po\/sky130_fd_pr__res_xhigh_po_2p85.model.spice\n.end,g' "$1.spice"

# now compare the xschem schematic netlist and the magic extracted netlist
#netgen -batch lvs "drc_cell_lvs.spice "$1"" ""$1".spice "$1"" ~/skywater/pdk/skywater130/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs_report.out -json
netgen -batch lvs "drc_cell_lvs.spice" ""$1".spice" ~/skywater/open_pdks/sky130/sky130A/libs.tech/netgen/sky130A_setup.tcl lvs_report.out -json


# organise the parasitic extraction netlist
sed -i -e 's/.subckt drc_cell/.subckt "$1"/g' drc_cell_pex.spice
mv drc_cell_pex.spice "$1"_pex.spice

