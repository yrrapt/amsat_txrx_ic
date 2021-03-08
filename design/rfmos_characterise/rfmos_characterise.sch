v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 60 -80 110 -80 {lab=#net1}
N 170 -80 220 -80 {lab=#net2}
N 20 -140 20 -110 {lab=#net3}
N 260 -140 260 -110 {lab=a}
N 260 -80 280 -80 {lab=0}
N 280 -80 280 0 {lab=0}
N 0 0 280 0 {lab=0}
N 0 -80 0 0 {lab=0}
N 0 -80 20 -80 {lab=0}
N 20 -50 20 0 {lab=0}
N 260 -50 260 0 {lab=0}
N 260 -220 260 -200 {lab=vdd}
N 20 -220 260 -220 {lab=vdd}
N 20 -220 20 -200 {lab=vdd}
N 60 -340 110 -340 {lab=#net4}
N 170 -340 220 -340 {lab=#net5}
N 20 -400 20 -370 {lab=#net6}
N 260 -400 260 -370 {lab=b}
N 260 -340 280 -340 {lab=0}
N 280 -340 280 -260 {lab=0}
N 0 -260 280 -260 {lab=0}
N 0 -340 0 -260 {lab=0}
N 0 -340 20 -340 {lab=0}
N 20 -310 20 -260 {lab=0}
N 260 -310 260 -260 {lab=0}
N 260 -480 260 -460 {lab=vdd}
N 20 -480 260 -480 {lab=vdd}
N 20 -480 20 -460 {lab=vdd}
N 600 -80 650 -80 {lab=#net7}
N 710 -80 760 -80 {lab=#net8}
N 560 -140 560 -110 {lab=#net9}
N 800 -140 800 -110 {lab=hc}
N 800 -80 820 -80 {lab=0}
N 820 -80 820 0 {lab=0}
N 540 0 820 0 {lab=0}
N 540 -80 540 0 {lab=0}
N 540 -80 560 -80 {lab=0}
N 560 -50 560 0 {lab=0}
N 800 -50 800 0 {lab=0}
N 800 -220 800 -200 {lab=vdd}
N 560 -220 800 -220 {lab=vdd}
N 560 -220 560 -200 {lab=vdd}
N 600 -340 650 -340 {lab=#net10}
N 710 -340 760 -340 {lab=#net11}
N 560 -400 560 -370 {lab=#net12}
N 800 -400 800 -370 {lab=a}
N 800 -340 820 -340 {lab=0}
N 820 -340 820 -260 {lab=0}
N 540 -260 820 -260 {lab=0}
N 540 -340 540 -260 {lab=0}
N 540 -340 560 -340 {lab=0}
N 560 -310 560 -260 {lab=0}
N 800 -310 800 -260 {lab=0}
N 800 -480 800 -460 {lab=vdd}
N 560 -480 800 -480 {lab=vdd}
N 560 -480 560 -460 {lab=vdd}
N -220 -160 -160 -160 {lab=0}
N -160 -180 -160 -160 {lab=0}
N -220 -260 -160 -260 {lab=vdd}
N -160 -260 -160 -240 {lab=vdd}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 240 -80 0 0 {name=XMad model=sky130_fd_pr__rf_nfet_01v8_aM04W5p00L0p15 m=1}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 40 -80 0 1 {name=XMab model=sky130_fd_pr__rf_nfet_01v8_aM04W5p00L0p15 m=1}
C {isource.sym} 20 -170 0 0 {name=I0 value=ibias}
C {vsource.sym} 140 -80 1 0 {name=V1 value="DC=0 AC=1"}
C {ind.sym} 260 -170 0 0 {name=L1
m=1
value=1
device=inductor}
C {lab_wire.sym} 260 -110 0 1 {name=l1 sig_type=std_logic lab=a}
C {lab_wire.sym} 20 -220 0 1 {name=l2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 20 0 0 1 {name=l3 sig_type=std_logic lab=0}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 240 -340 0 0 {name=XMad1 model=sky130_fd_pr__rf_nfet_01v8_bM04W5p00L0p15 m=1}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 40 -340 0 1 {name=XMab2 model=sky130_fd_pr__rf_nfet_01v8_bM04W5p00L0p15 m=1}
C {isource.sym} 20 -430 0 0 {name=I1 value=ibias}
C {vsource.sym} 140 -340 1 0 {name=V2 value="DC=0 AC=1"}
C {ind.sym} 260 -430 0 0 {name=L2
m=1
value=1
device=inductor}
C {lab_wire.sym} 260 -370 0 1 {name=l4 sig_type=std_logic lab=b}
C {lab_wire.sym} 20 -480 0 1 {name=l5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 20 -260 0 1 {name=l6 sig_type=std_logic lab=0}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 780 -80 0 0 {name=XMad2 model=sky130_fd_pr__rf_nfet_01v8_hcM04W5p00L0p15 m=1}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 580 -80 0 1 {name=XMab3 model=sky130_fd_pr__rf_nfet_01v8_hcM04W5p00L0p15 m=1}
C {isource.sym} 560 -170 0 0 {name=I2 value=ibias}
C {vsource.sym} 680 -80 1 0 {name=V3 value="DC=0 AC=1"}
C {ind.sym} 800 -170 0 0 {name=L3
m=1
value=1
device=inductor}
C {lab_wire.sym} 800 -110 0 1 {name=l7 sig_type=std_logic lab=hc}
C {lab_wire.sym} 560 -220 0 1 {name=l8 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 560 0 0 1 {name=l9 sig_type=std_logic lab=0}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 780 -340 0 0 {name=XMad4 model=sky130_fd_pr__rf_nfet_01v8_mcM04W5p00L0p15 m=1}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 580 -340 0 1 {name=XMab5 model=sky130_fd_pr__rf_nfet_01v8_mcM04W5p00L0p15 m=1}
C {isource.sym} 560 -430 0 0 {name=I3 value=ibias}
C {vsource.sym} 680 -340 1 0 {name=V4 value="DC=0 AC=1"}
C {ind.sym} 800 -430 0 0 {name=L4
m=1
value=1
device=inductor}
C {lab_wire.sym} 800 -370 0 1 {name=l10 sig_type=std_logic lab=a}
C {lab_wire.sym} 560 -480 0 1 {name=l11 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 560 -260 0 1 {name=l12 sig_type=std_logic lab=0}
C {vsource.sym} -160 -210 0 0 {name=V5 value=1.8}
C {lab_wire.sym} -220 -260 0 1 {name=l13 sig_type=std_logic lab=vdd}
C {lab_wire.sym} -220 -160 0 1 {name=l14 sig_type=std_logic lab=0}
C {code.sym} -240 -510 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
.param temp=27
.temp 27

.save v(ip) v(in) i(vdd)

.include sky130_fd_pr/cells/rf_nfet_01v8/sky130_fd_pr__rf_nfet_01v8_aM04W5p00L0p15.spice
.include sky130_fd_pr/cells/rf_nfet_01v8/sky130_fd_pr__rf_nfet_01v8_hcM04W5p00L0p15.spice
.include sky130_fd_pr/cells/rf_nfet_01v8/sky130_fd_pr__rf_nfet_01v8_mcM04W5p00L0p15.spice
.include sky130_fd_pr/models/r+c/res_typical__cap_typical__lin.spice
.include sky130_fd_pr/models/r+c/res_typical__cap_typical.spice
*.include sky130_fd_pr/models/corners/tt.spice
.lib sky130_fd_pr/models/sky130.lib.spice tt
*.tran 0.001n 10n uic

.ac dec 10 1 100e9

.param ibais=100e-6
"}
