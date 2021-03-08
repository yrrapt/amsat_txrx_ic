#!/bin/bash
docker run -it -v $(pwd):/openLANE_flow -v $(pwd)/../../amsat_txrx_ic:/amsat_txrx_ic -v $PDK_ROOT:$PDK_ROOT -e PDK_ROOT=$PDK_ROOT -u $(id -u $USER):$(id -g $USER) openlane:rc3 ./flow.tcl -design $1
