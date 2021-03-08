v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -890 280 -890 { lab=vdd}
N 0 0 280 0 { lab=gnd}
N 410 -140 510 -140 { lab=ctl_ptat[5:0]}
N 1110 -890 1110 -860 {lab=vdd}
N 1150 -80 1150 0 { lab=gnd}
N 950 -140 1050 -140 { lab=ctl_ctat[5:0]}
N 570 -890 570 -860 { lab=vdd}
N 710 -890 710 -860 { lab=vdd}
N 570 -890 710 -890 { lab=vdd}
N 870 -890 1110 -890 { lab=vdd}
N 1250 -890 1250 -860 { lab=vdd}
N 1110 -890 1250 -890 { lab=vdd}
N 610 -80 610 0 { lab=gnd}
N 610 0 1150 0 { lab=gnd}
N 610 -450 610 -220 { lab=ptat}
N 800 -790 870 -790 { lab=ptat}
N 870 -790 870 -580 { lab=ptat}
N 710 -580 870 -580 { lab=ptat}
N 710 -640 710 -580 { lab=ptat}
N 1150 -580 1150 -220 { lab=ctat}
N 1250 -580 1400 -580 { lab=ctat}
N 1400 -790 1400 -580 { lab=ctat}
N 1340 -790 1400 -790 { lab=ctat}
N 1250 -640 1250 -580 { lab=ctat}
N 610 -580 710 -580 { lab=ptat}
N 1150 -580 1250 -580 { lab=ctat}
N 1110 -640 1110 -220 { lab=#net1}
N 570 -640 570 -220 { lab=#net2}
N 610 -450 1440 -450 { lab=ptat}
N 610 -580 610 -450 { lab=ptat}
N 870 -890 870 -870 { lab=vdd}
N 850 -840 870 -840 { lab=vdd}
N 850 -890 850 -840 { lab=vdd}
N 870 -810 870 -790 { lab=ptat}
N 1400 -890 1400 -870 { lab=vdd}
N 1380 -840 1400 -840 { lab=vdd}
N 1380 -890 1380 -840 { lab=vdd}
N 1380 -890 1400 -890 { lab=vdd}
N 1250 -890 1380 -890 { lab=vdd}
N 1400 -810 1400 -790 { lab=ctat}
N 1400 -580 1440 -580 { lab=ctat}
N 0 -520 150 -520 { lab=en}
N 850 -890 870 -890 { lab=vdd}
N 710 -890 850 -890 { lab=vdd}
N 1340 -710 1440 -710 { lab=cas}
N 280 0 610 0 { lab=gnd}
N 0 -500 150 -500 { lab=start_n}
N 280 -420 280 0 { lab=gnd}
N 280 -890 280 -560 { lab=vdd}
N 280 -890 570 -890 { lab=vdd}
N 410 -170 510 -170 { lab=vdd}
N 950 -170 1050 -170 { lab=vdd}
C {iopin.sym} 0 -890 0 1 {name=p1 lab=vdd}
C {iopin.sym} 0 0 0 1 {name=p2 lab=gnd}
C {opin.sym} 1440 -450 0 0 {name=p3 lab=ptat}
C {opin.sym} 1440 -580 0 0 {name=p4 lab=ctat}
C {opin.sym} 1440 -710 0 0 {name=p5 lab=cas}
C {bandgap_trim/bandgap_trim.sym} 530 -100 0 0 {name=xtrim_ptat}
C {lab_wire.sym} 480 -790 0 0 {name=l15 sig_type=std_logic lab=ptat_int}
C {lab_wire.sym} 480 -710 0 0 {name=l16 sig_type=std_logic lab=cas}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 570 -750 0 0 {name=xcurr_mirror_ptat[2:1] m=1}
C {lab_wire.sym} 410 -140 0 1 {name=l19 sig_type=std_logic lab=ctl_ptat[5:0]}
C {bandgap_trim/bandgap_trim.sym} 1070 -100 0 0 {name=xtrim_ctat}
C {lab_wire.sym} 1020 -790 0 0 {name=l21 sig_type=std_logic lab=ctat_int}
C {lab_wire.sym} 1020 -710 0 0 {name=l22 sig_type=std_logic lab=cas}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 1110 -750 0 0 {name=xcurr_mirror_ctat[8:1] m=1}
C {lab_wire.sym} 950 -140 0 1 {name=l23 sig_type=std_logic lab=ctl_ctat[5:0]}
C {ipin.sym} 0 -520 0 0 {name=p10 lab=en}
C {ipin.sym} 0 -310 0 0 {name=p13 lab=ctl_ptat[5:0]}
C {ipin.sym} 0 -270 0 0 {name=p14 lab=ctl_ctat[5:0]}
C {lab_wire.sym} 800 -710 0 1 {name=l18 sig_type=std_logic lab=cas}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 710 -750 0 1 {name=xcurr_ref_ptat[2:1] m=1}
C {lab_wire.sym} 1340 -710 0 1 {name=l17 sig_type=std_logic lab=cas}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 1250 -750 0 1 {name=xcurr_ref_ctat[8:1] m=1}
C {ipin.sym} 0 -500 0 0 {name=p16 lab=start_n}
C {lab_wire.sym} 910 -840 0 1 {name=l29 sig_type=std_logic lab=en}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 890 -840 0 1 {name=Msw_en_ptatout
L=8
W=0.42
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8_hvt
spiceprefix=X
}
C {lab_wire.sym} 1440 -840 0 1 {name=l30 sig_type=std_logic lab=en}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 1420 -840 0 1 {name=Msw_en_ctatout
L=8
W=0.42
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=1
model=pfet_01v8_hvt
spiceprefix=X
}
C {bandgap_core/bandgap_core.sym} 280 -490 0 0 {name=xbandgap}
C {lab_wire.sym} 400 -510 0 1 {name=l1 sig_type=std_logic lab=ptat_int}
C {lab_wire.sym} 400 -490 0 1 {name=l2 sig_type=std_logic lab=ctat_int}
C {lab_wire.sym} 400 -460 0 1 {name=l3 sig_type=std_logic lab=cas}
C {lab_wire.sym} 410 -170 0 1 {name=l4 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 950 -170 0 1 {name=l5 sig_type=std_logic lab=vdd}
