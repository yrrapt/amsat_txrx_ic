v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 120 -270 310 -270 { lab=vdd}
N 310 -270 310 -210 { lab=vdd}
N 310 -70 310 0 { lab=GND}
N 0 0 310 0 { lab=GND}
N 0 -90 -0 0 { lab=GND}
N 890 -820 890 -790 {lab=vdd}
N 600 -820 890 -820 {lab=vdd}
N 600 -820 600 -790 {lab=vdd}
N 600 -470 890 -470 {lab=#net1}
N 600 -30 600 0 {lab=GND}
N 620 -60 660 -60 { lab=GND}
N 660 -60 660 0 { lab=GND}
N 600 0 660 0 {lab=GND}
N 310 0 600 0 { lab=GND}
N 600 -470 600 -450 { lab=#net1}
N 600 -490 600 -470 { lab=#net1}
N 600 -570 600 -550 { lab=#net2}
N 890 -570 890 -550 { lab=#net3}
N 890 -490 890 -470 { lab=#net1}
N 2000 -100 2000 -80 { lab=ctl_ptat[0]}
N 2000 -100 2040 -100 { lab=ctl_ptat[0]}
N 1900 -100 1900 -80 { lab=ctl_ptat[1]}
N 1900 -100 1940 -100 { lab=ctl_ptat[1]}
N 1800 -100 1800 -80 { lab=ctl_ptat[2]}
N 1800 -100 1840 -100 { lab=ctl_ptat[2]}
N 1700 -100 1700 -80 { lab=ctl_ptat[3]}
N 1700 -100 1740 -100 { lab=ctl_ptat[3]}
N 1600 -100 1600 -80 { lab=ctl_ptat[4]}
N 1600 -100 1640 -100 { lab=ctl_ptat[4]}
N 1600 -20 1600 0 { lab=GND}
N 1900 0 2000 0 { lab=GND}
N 2000 -20 2000 0 { lab=GND}
N 1900 -20 1900 0 { lab=GND}
N 1800 -20 1800 0 { lab=GND}
N 1700 -20 1700 0 { lab=GND}
N 2000 -300 2000 -280 { lab=ctl_ctat[0]}
N 2000 -300 2040 -300 { lab=ctl_ctat[0]}
N 1900 -300 1900 -280 { lab=ctl_ctat[1]}
N 1900 -300 1940 -300 { lab=ctl_ctat[1]}
N 1800 -300 1800 -280 { lab=ctl_ctat[2]}
N 1800 -300 1840 -300 { lab=ctl_ctat[2]}
N 1700 -300 1700 -280 { lab=ctl_ctat[3]}
N 1700 -300 1740 -300 { lab=ctl_ctat[3]}
N 1600 -300 1600 -280 { lab=ctl_ctat[4]}
N 1600 -300 1640 -300 { lab=ctl_ctat[4]}
N 1600 -220 1600 -200 { lab=GND}
N 1900 -200 2000 -200 { lab=GND}
N 2000 -220 2000 -200 { lab=GND}
N 1900 -220 1900 -200 { lab=GND}
N 1800 -220 1800 -200 { lab=GND}
N 1700 -220 1700 -200 { lab=GND}
N 2000 -490 2000 -470 { lab=en}
N 2000 -490 2040 -490 { lab=en}
N 2000 -410 2000 -370 { lab=GND}
N 660 -0 820 0 { lab=GND}
N 820 -60 820 0 { lab=GND}
N 600 -390 600 -330 { lab=vref}
N 600 -270 600 -250 { lab=#net4}
N 600 -190 600 -170 { lab=#net5}
N 600 -110 600 -90 { lab=#net6}
N 660 -140 660 -60 { lab=GND}
N 620 -300 660 -300 { lab=GND}
N 620 -220 660 -220 { lab=GND}
N 620 -140 660 -140 { lab=GND}
N 1580 -820 1580 -790 {lab=vdd}
N 1280 -820 1580 -820 {lab=vdd}
N 1280 -820 1280 -790 {lab=vdd}
N 1280 -470 1580 -470 {lab=#net7}
N 1280 -470 1280 -450 { lab=#net7}
N 1280 -490 1280 -470 { lab=#net7}
N 1280 -570 1280 -550 { lab=#net8}
N 1580 -570 1580 -550 { lab=#net9}
N 1580 -490 1580 -470 { lab=#net7}
N 890 -820 1280 -820 { lab=vdd}
N 1280 -390 1280 0 { lab=GND}
N 820 -0 1280 0 { lab=GND}
N 120 -150 180 -150 { lab=vdd}
N 120 -270 120 -150 { lab=vdd}
N 0 -270 120 -270 { lab=vdd}
N 1800 0 1900 0 { lab=GND}
N 1700 0 1800 0 { lab=GND}
N 1600 0 1700 0 { lab=GND}
N 1800 -200 1900 -200 { lab=GND}
N 1700 -200 1800 -200 { lab=GND}
N 1600 -200 1700 -200 { lab=GND}
N 660 -300 660 -220 { lab=GND}
N 660 -220 660 -140 { lab=GND}
N -0 -270 -0 -240 { lab=vdd}
N -0 -180 -0 -150 { lab=#net10}
C {..//bandgap_core.sym} 310 -140 0 0 {name=xdut}
C {code.sym} 0 -430 0 0 {name=simulation only_toplevel=false value="
.temp 27

.lib "sky130_fd_pr/models/sky130.lib.spice" fs
.include sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice

.param vdd=1.8
.param en=0.0

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

"}
C {vsource.sym} 0 -120 0 1 {name=Vdd value="\{vdd\}"}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 450 -640 0 0 {name=l20 sig_type=std_logic lab=cas}
C {lab_wire.sym} 740 -640 0 0 {name=l21 sig_type=std_logic lab=cas}
C {lab_wire.sym} 450 -720 0 0 {name=l22 sig_type=std_logic lab=ptat}
C {lab_wire.sym} 740 -720 0 0 {name=l23 sig_type=std_logic lab=ctat}
C {spice_probe.sym} 600 -370 0 0 {name=p9 analysis=tran voltage=1.8662e-06}
C {ammeter.sym} 600 -420 0 0 {name=viout current=2.0743e-11}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 600 -680 0 0 {name=x12 m=4}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 890 -680 0 0 {name=x13 m=4}
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
C {ammeter.sym} 600 -520 0 0 {name=vptat current=1.0374e-11}
C {ammeter.sym} 890 -520 0 0 {name=vctat current=1.0369e-11}
C {vsource.sym} 1600 -50 0 0 {name=Vctl_ptat4 value=\{ctl_ptat4\}}
C {vsource.sym} 1700 -50 0 0 {name=Vctl_ptat3 value=\{ctl_ptat3\}}
C {vsource.sym} 1800 -50 0 0 {name=Vctl_ptat2 value=\{ctl_ptat2\}}
C {vsource.sym} 1900 -50 0 0 {name=Vctl_ptat1 value=\{ctl_ptat1\}}
C {vsource.sym} 2000 -50 0 0 {name=Vctl_ptat0 value=\{ctl_ptat0\}}
C {gnd.sym} 1600 0 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 2000 -100 0 1 {name=l25 sig_type=std_logic lab=ctl_ptat[0]}
C {lab_wire.sym} 1900 -100 0 1 {name=l26 sig_type=std_logic lab=ctl_ptat[1]}
C {lab_wire.sym} 1800 -100 0 1 {name=l27 sig_type=std_logic lab=ctl_ptat[2]}
C {lab_wire.sym} 1700 -100 0 1 {name=l28 sig_type=std_logic lab=ctl_ptat[3]}
C {lab_wire.sym} 1600 -100 0 1 {name=l29 sig_type=std_logic lab=ctl_ptat[4]}
C {vsource.sym} 1600 -250 0 0 {name=Vctl_ctat4 value=\{ctl_ctat4\}}
C {vsource.sym} 1700 -250 0 0 {name=Vctl_ctat3 value=\{ctl_ctat3\}}
C {vsource.sym} 1800 -250 0 0 {name=Vctl_ctat2 value=\{ctl_ctat2\}}
C {vsource.sym} 1900 -250 0 0 {name=Vctl_ctat1 value=\{ctl_ctat1\}}
C {vsource.sym} 2000 -250 0 0 {name=Vctl_ctat0 value=\{ctl_ctat0\}}
C {gnd.sym} 1600 -200 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 2000 -300 0 1 {name=l9 sig_type=std_logic lab=ctl_ctat[0]}
C {lab_wire.sym} 1900 -300 0 1 {name=l10 sig_type=std_logic lab=ctl_ctat[1]}
C {lab_wire.sym} 1800 -300 0 1 {name=l11 sig_type=std_logic lab=ctl_ctat[2]}
C {lab_wire.sym} 1700 -300 0 1 {name=l12 sig_type=std_logic lab=ctl_ctat[3]}
C {lab_wire.sym} 1600 -300 0 1 {name=l13 sig_type=std_logic lab=ctl_ctat[4]}
C {vsource.sym} 2000 -440 0 0 {name=Ven value=\{en\}}
C {gnd.sym} 2000 -370 0 0 {name=l14 lab=GND}
C {lab_wire.sym} 2000 -490 0 1 {name=l15 sig_type=std_logic lab=en}
C {lab_wire.sym} 180 -130 0 0 {name=l16 sig_type=std_logic lab=ctl_ptat[4:0]}
C {lab_wire.sym} 180 -110 0 0 {name=l17 sig_type=std_logic lab=ctl_ctat[4:0]}
C {lab_wire.sym} 180 -170 0 0 {name=l18 sig_type=std_logic lab=en}
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
C {ammeter.sym} 1280 -420 0 0 {name=viout1 current=2.0722e-11}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 1280 -680 0 0 {name=x2 m=4}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 1580 -680 0 0 {name=x3 m=4}
C {ammeter.sym} 1280 -520 0 0 {name=vptat2 current=1.0360e-11}
C {ammeter.sym} 1580 -520 0 0 {name=vctat3 current=1.0362e-11}
C {sky130_fd_pr/res_xhigh_po.sym} 480 -720 1 1 {name=R5
W=1
L=1
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 480 -640 1 1 {name=R6
W=1
L=1
model=res_xhigh_po
spiceprefix=X
m=1}
C {gnd.sym} 480 -700 0 0 {name=l34 lab=GND}
C {gnd.sym} 480 -620 0 0 {name=l35 lab=GND}
C {sky130_fd_pr/res_xhigh_po.sym} 770 -720 1 1 {name=R7
W=1
L=1
model=res_xhigh_po
spiceprefix=X
m=1}
C {gnd.sym} 770 -700 0 0 {name=l36 lab=GND}
C {sky130_fd_pr/res_xhigh_po.sym} 770 -640 1 1 {name=R8
W=1
L=1
model=res_xhigh_po
spiceprefix=X
m=1}
C {gnd.sym} 770 -620 0 0 {name=l37 lab=GND}
C {lab_wire.sym} 1130 -640 0 0 {name=l30 sig_type=std_logic lab=cas}
C {lab_wire.sym} 1130 -720 0 0 {name=l31 sig_type=std_logic lab=ptat}
C {sky130_fd_pr/res_xhigh_po.sym} 1160 -720 1 1 {name=R9
W=1
L=1
model=res_xhigh_po
spiceprefix=X
m=1}
C {sky130_fd_pr/res_xhigh_po.sym} 1160 -640 1 1 {name=R10
W=1
L=1
model=res_xhigh_po
spiceprefix=X
m=1}
C {gnd.sym} 1160 -700 0 0 {name=l32 lab=GND}
C {gnd.sym} 1160 -620 0 0 {name=l33 lab=GND}
C {lab_wire.sym} 1430 -640 0 0 {name=l38 sig_type=std_logic lab=cas}
C {lab_wire.sym} 1430 -720 0 0 {name=l39 sig_type=std_logic lab=ctat}
C {sky130_fd_pr/res_xhigh_po.sym} 1460 -720 1 1 {name=R11
W=1
L=1
model=res_xhigh_po
spiceprefix=X
m=1}
C {gnd.sym} 1460 -700 0 0 {name=l40 lab=GND}
C {sky130_fd_pr/res_xhigh_po.sym} 1460 -640 1 1 {name=R12
W=1
L=1
model=res_xhigh_po
spiceprefix=X
m=1}
C {gnd.sym} 1460 -620 0 0 {name=l41 lab=GND}
C {ammeter.sym} 0 -210 2 0 {name=vmeas_vdd current=3.0439e-09}
C {code.sym} 130 -430 0 0 {name=STDCELL_MODELS 
only_toplevel=true
place=end
format=tcleval(@value\\)
value="[sky130_models]"
}
