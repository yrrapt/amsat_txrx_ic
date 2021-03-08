v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -270 0 -170 { lab=vdd}
N 0 -270 310 -270 { lab=vdd}
N 310 -270 310 -210 { lab=vdd}
N 310 -70 310 0 { lab=GND}
N 0 0 310 0 { lab=GND}
N 0 -110 -0 0 { lab=GND}
N 810 -820 810 -790 {lab=vdd}
N 600 -820 810 -820 {lab=vdd}
N 600 -820 600 -790 {lab=vdd}
N 600 -470 810 -470 {lab=#net1}
N 600 -30 600 0 {lab=GND}
N 620 -60 660 -60 { lab=GND}
N 660 -60 660 0 { lab=GND}
N 600 0 660 0 {lab=GND}
N 310 0 600 0 { lab=GND}
N 600 -470 600 -450 { lab=#net1}
N 600 -490 600 -480 { lab=#net1}
N 600 -480 600 -470 { lab=#net1}
N 600 -570 600 -550 { lab=#net2}
N 810 -570 810 -550 { lab=#net3}
N 810 -490 810 -470 { lab=#net1}
N 1650 -100 1650 -80 { lab=ctl_ptat[0]}
N 1650 -100 1690 -100 { lab=ctl_ptat[0]}
N 1550 -100 1550 -80 { lab=ctl_ptat[1]}
N 1550 -100 1590 -100 { lab=ctl_ptat[1]}
N 1450 -100 1450 -80 { lab=ctl_ptat[2]}
N 1450 -100 1490 -100 { lab=ctl_ptat[2]}
N 1350 -100 1350 -80 { lab=ctl_ptat[3]}
N 1350 -100 1390 -100 { lab=ctl_ptat[3]}
N 1250 -100 1250 -80 { lab=ctl_ptat[4]}
N 1250 -100 1290 -100 { lab=ctl_ptat[4]}
N 1250 -20 1250 0 { lab=GND}
N 1250 0 1650 0 { lab=GND}
N 1650 -20 1650 0 { lab=GND}
N 1550 -20 1550 0 { lab=GND}
N 1450 -20 1450 0 { lab=GND}
N 1350 -20 1350 0 { lab=GND}
N 1650 -300 1650 -280 { lab=ctl_ctat[0]}
N 1650 -300 1690 -300 { lab=ctl_ctat[0]}
N 1550 -300 1550 -280 { lab=ctl_ctat[1]}
N 1550 -300 1590 -300 { lab=ctl_ctat[1]}
N 1450 -300 1450 -280 { lab=ctl_ctat[2]}
N 1450 -300 1490 -300 { lab=ctl_ctat[2]}
N 1350 -300 1350 -280 { lab=ctl_ctat[3]}
N 1350 -300 1390 -300 { lab=ctl_ctat[3]}
N 1250 -300 1250 -280 { lab=ctl_ctat[4]}
N 1250 -300 1290 -300 { lab=ctl_ctat[4]}
N 1250 -220 1250 -200 { lab=GND}
N 1250 -200 1650 -200 { lab=GND}
N 1650 -220 1650 -200 { lab=GND}
N 1550 -220 1550 -200 { lab=GND}
N 1450 -220 1450 -200 { lab=GND}
N 1350 -220 1350 -200 { lab=GND}
N 1650 -490 1650 -470 { lab=en}
N 1650 -490 1690 -490 { lab=en}
N 1650 -410 1650 -390 { lab=GND}
N 1650 -390 1650 -370 { lab=GND}
N 660 -0 740 0 { lab=GND}
N 820 -60 820 0 { lab=GND}
N 740 -0 820 0 { lab=GND}
N 600 -390 600 -330 { lab=vref}
N 600 -270 600 -250 { lab=#net4}
N 600 -190 600 -170 { lab=#net5}
N 600 -110 600 -90 { lab=#net6}
N 660 -300 660 -60 { lab=GND}
N 620 -300 660 -300 { lab=GND}
N 620 -220 660 -220 { lab=GND}
N 620 -140 660 -140 { lab=GND}
N 1230 -820 1230 -790 {lab=vdd}
N 1020 -820 1230 -820 {lab=vdd}
N 1020 -820 1020 -790 {lab=vdd}
N 1020 -470 1230 -470 {lab=#net7}
N 1020 -470 1020 -450 { lab=#net7}
N 1020 -490 1020 -480 { lab=#net7}
N 1020 -480 1020 -470 { lab=#net7}
N 1020 -570 1020 -550 { lab=#net8}
N 1230 -570 1230 -550 { lab=#net9}
N 1230 -490 1230 -470 { lab=#net7}
N 810 -820 1020 -820 { lab=vdd}
N 1020 -390 1020 0 { lab=GND}
N 820 -0 1020 0 { lab=GND}
C {..//bandgap_core.sym} 310 -140 0 0 {name=x1}
C {code.sym} 0 -430 0 0 {name=simulation only_toplevel=false value="
.temp -40

.lib "sky130_fd_pr/models/sky130.lib.spice" ss
.include sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice

.param vdd=1.8

.param en=1.8

.param ctl_ctat4=1.8
.param ctl_ctat3=0
.param ctl_ctat2=0
.param ctl_ctat1=0
.param ctl_ctat0=0

.param ctl_ptat4=1.8
.param ctl_ptat3=0
.param ctl_ptat2=0
.param ctl_ptat1=0
.param ctl_ptat0=0

.save all 
.options savecurrents

.op
.dc temp -40 125 1.65
*.noise v(vref) vdd dec 10 100 1000MEG

"}
C {vsource.sym} 0 -140 0 0 {name=Vdd value="dc=\{vdd\} ac=0"}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 510 -640 0 0 {name=l20 sig_type=std_logic lab=cas}
C {lab_wire.sym} 720 -640 0 0 {name=l21 sig_type=std_logic lab=cas}
C {lab_wire.sym} 510 -720 0 0 {name=l22 sig_type=std_logic lab=ptat}
C {lab_wire.sym} 720 -720 0 0 {name=l23 sig_type=std_logic lab=ctat}
C {spice_probe.sym} 600 -370 0 0 {name=p9 analysis=tran voltage=0.8999}
C {ammeter.sym} 600 -420 0 0 {name=viout current=1.0002e-05}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 600 -680 0 0 {name=x12 m=4}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 810 -680 0 0 {name=x13 m=4}
C {lab_wire.sym} 600 -360 0 1 {name=l24 sig_type=std_logic lab=vref}
C {sky130_fd_pr/res_xhigh_po.sym} 600 -60 0 1 {name=R3
W=1
L=10.6
model=res_xhigh_po
spiceprefix=X
m=1}
C {lab_wire.sym} 0 -270 0 1 {name=l2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 600 -820 0 1 {name=l3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 430 -160 0 1 {name=l4 sig_type=std_logic lab=ptat}
C {lab_wire.sym} 430 -140 0 1 {name=l5 sig_type=std_logic lab=ctat}
C {lab_wire.sym} 430 -110 0 1 {name=l6 sig_type=std_logic lab=cas}
C {ammeter.sym} 600 -520 0 0 {name=vptat current=3.0120e-06}
C {ammeter.sym} 810 -520 0 0 {name=vctat current=6.9903e-06}
C {vsource.sym} 1250 -50 0 0 {name=Vctl_ptat4 value=\{ctl_ptat4\}}
C {vsource.sym} 1350 -50 0 0 {name=Vctl_ptat3 value=\{ctl_ptat3\}}
C {vsource.sym} 1450 -50 0 0 {name=Vctl_ptat2 value=\{ctl_ptat2\}}
C {vsource.sym} 1550 -50 0 0 {name=Vctl_ptat1 value=\{ctl_ptat1\}}
C {vsource.sym} 1650 -50 0 0 {name=Vctl_ptat0 value=\{ctl_ptat0\}}
C {gnd.sym} 1250 0 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 1650 -100 0 1 {name=l25 sig_type=std_logic lab=ctl_ptat[0]}
C {lab_wire.sym} 1550 -100 0 1 {name=l26 sig_type=std_logic lab=ctl_ptat[1]}
C {lab_wire.sym} 1450 -100 0 1 {name=l27 sig_type=std_logic lab=ctl_ptat[2]}
C {lab_wire.sym} 1350 -100 0 1 {name=l28 sig_type=std_logic lab=ctl_ptat[3]}
C {lab_wire.sym} 1250 -100 0 1 {name=l29 sig_type=std_logic lab=ctl_ptat[4]}
C {vsource.sym} 1250 -250 0 0 {name=Vctl_ctat4 value=\{ctl_ctat4\}}
C {vsource.sym} 1350 -250 0 0 {name=Vctl_ctat3 value=\{ctl_ctat3\}}
C {vsource.sym} 1450 -250 0 0 {name=Vctl_ctat2 value=\{ctl_ctat2\}}
C {vsource.sym} 1550 -250 0 0 {name=Vctl_ctat1 value=\{ctl_ctat1\}}
C {vsource.sym} 1650 -250 0 0 {name=Vctl_ctat0 value=\{ctl_ctat0\}}
C {gnd.sym} 1250 -200 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 1650 -300 0 1 {name=l9 sig_type=std_logic lab=ctl_ctat[0]}
C {lab_wire.sym} 1550 -300 0 1 {name=l10 sig_type=std_logic lab=ctl_ctat[1]}
C {lab_wire.sym} 1450 -300 0 1 {name=l11 sig_type=std_logic lab=ctl_ctat[2]}
C {lab_wire.sym} 1350 -300 0 1 {name=l12 sig_type=std_logic lab=ctl_ctat[3]}
C {lab_wire.sym} 1250 -300 0 1 {name=l13 sig_type=std_logic lab=ctl_ctat[4]}
C {vsource.sym} 1650 -440 0 0 {name=Ven value=\{en\}}
C {gnd.sym} 1650 -370 0 0 {name=l14 lab=GND}
C {lab_wire.sym} 1650 -490 0 1 {name=l15 sig_type=std_logic lab=en}
C {lab_wire.sym} 180 -140 0 0 {name=l16 sig_type=std_logic lab=ctl_ptat[4:0]}
C {lab_wire.sym} 180 -120 0 0 {name=l17 sig_type=std_logic lab=ctl_ctat[4:0]}
C {lab_wire.sym} 180 -160 0 0 {name=l18 sig_type=std_logic lab=en}
C {ccvs.sym} 820 -90 0 0 {name=H1 vnam=viout1 value=1}
C {lab_wire.sym} 820 -120 0 1 {name=l19 sig_type=std_logic lab=current}
C {sky130_fd_pr/res_xhigh_po.sym} 600 -140 0 1 {name=R1
W=1
L=10.6
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 600 -220 0 1 {name=R2
W=1
L=10.6
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 600 -300 0 1 {name=R4
W=1
L=10.6
model=res_xhigh_po
spiceprefix=X
m=1}
C {lab_wire.sym} 930 -640 0 0 {name=l30 sig_type=std_logic lab=cas}
C {lab_wire.sym} 1140 -640 0 0 {name=l31 sig_type=std_logic lab=cas}
C {lab_wire.sym} 930 -720 0 0 {name=l32 sig_type=std_logic lab=ptat}
C {lab_wire.sym} 1140 -720 0 0 {name=l33 sig_type=std_logic lab=ctat}
C {ammeter.sym} 1020 -420 0 0 {name=viout1 current=0.0000e+00}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 1020 -680 0 0 {name=x2 m=4}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 1230 -680 0 0 {name=x3 m=4}
C {ammeter.sym} 1020 -520 0 0 {name=vptat2 current=2.8422e-14}
C {ammeter.sym} 1230 -520 0 0 {name=vctat3 current=-2.8422e-14}
