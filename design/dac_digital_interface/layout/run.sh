#!/bin/bash
cd ../../../../openlane
docker run -it -v $(pwd):/openLANE_flow -v $(pwd)/../amsat_txrx_ic:/amsat_txrx_ic -v $PDK_ROOT:$PDK_ROOT -e PDK_ROOT=$PDK_ROOT -u $(id -u $USER):$(id -g $USER) efabless/openlane:v0.15 ./flow.tcl -interactive -file /amsat_txrx_ic/design/dac_digital_interface/layout/run.tcl