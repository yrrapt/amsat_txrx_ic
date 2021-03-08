v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 -270 0 -170 { lab=vdd}
N 0 -270 280 -270 { lab=vdd}
N 280 -270 280 -210 { lab=vdd}
N 280 -70 280 0 { lab=GND}
N 0 0 280 0 { lab=GND}
N 0 -110 -0 0 { lab=GND}
N 730 -730 730 -700 {lab=vdd}
N 520 -730 730 -730 {lab=vdd}
N 520 -730 520 -700 {lab=vdd}
N 520 -280 730 -280 {lab=#net1}
N 520 -30 520 0 {lab=GND}
N 540 -60 580 -60 { lab=GND}
N 580 -60 580 0 { lab=GND}
N 520 0 580 0 {lab=GND}
N 520 -180 520 -90 { lab=vref}
N 280 0 520 0 { lab=GND}
N 520 -280 520 -240 { lab=#net1}
N 520 -350 520 -290 { lab=#net1}
N 520 -290 520 -280 { lab=#net1}
N 520 -480 520 -410 { lab=#net2}
N 730 -480 730 -410 { lab=#net3}
N 730 -350 730 -280 { lab=#net1}
N 1240 -100 1240 -80 { lab=ctl_ptat[0]}
N 1240 -100 1280 -100 { lab=ctl_ptat[0]}
N 1140 -100 1140 -80 { lab=ctl_ptat[1]}
N 1140 -100 1180 -100 { lab=ctl_ptat[1]}
N 1040 -100 1040 -80 { lab=ctl_ptat[2]}
N 1040 -100 1080 -100 { lab=ctl_ptat[2]}
N 940 -100 940 -80 { lab=ctl_ptat[3]}
N 940 -100 980 -100 { lab=ctl_ptat[3]}
N 840 -100 840 -80 { lab=ctl_ptat[4]}
N 840 -100 880 -100 { lab=ctl_ptat[4]}
N 840 -20 840 0 { lab=GND}
N 840 0 1240 0 { lab=GND}
N 1240 -20 1240 0 { lab=GND}
N 1140 -20 1140 0 { lab=GND}
N 1040 -20 1040 0 { lab=GND}
N 940 -20 940 0 { lab=GND}
N 840 0 840 20 { lab=GND}
N 1240 -300 1240 -280 { lab=ctl_ctat[0]}
N 1240 -300 1280 -300 { lab=ctl_ctat[0]}
N 1140 -300 1140 -280 { lab=ctl_ctat[1]}
N 1140 -300 1180 -300 { lab=ctl_ctat[1]}
N 1040 -300 1040 -280 { lab=ctl_ctat[2]}
N 1040 -300 1080 -300 { lab=ctl_ctat[2]}
N 940 -300 940 -280 { lab=ctl_ctat[3]}
N 940 -300 980 -300 { lab=ctl_ctat[3]}
N 840 -300 840 -280 { lab=ctl_ctat[4]}
N 840 -300 880 -300 { lab=ctl_ctat[4]}
N 840 -220 840 -200 { lab=GND}
N 840 -200 1240 -200 { lab=GND}
N 1240 -220 1240 -200 { lab=GND}
N 1140 -220 1140 -200 { lab=GND}
N 1040 -220 1040 -200 { lab=GND}
N 940 -220 940 -200 { lab=GND}
N 840 -200 840 -180 { lab=GND}
N 1240 -490 1240 -470 { lab=en}
N 1240 -490 1280 -490 { lab=en}
N 1240 -410 1240 -390 { lab=GND}
N 1240 -390 1240 -370 { lab=GND}
C {..//bandgap_core.sym} 280 -140 0 0 {name=x1}
C {code.sym} 70 -480 0 0 {name=simulation only_toplevel=false value="
.temp 27

.lib "sky130_fd_pr/models/sky130.lib.spice" mc
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

.dc temp -40 125 1.65

"}
C {vsource.sym} 0 -140 0 0 {name=Vdd value=\{vdd\}}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 430 -550 0 0 {name=l20 sig_type=std_logic lab=cas}
C {lab_wire.sym} 640 -550 0 0 {name=l21 sig_type=std_logic lab=cas}
C {lab_wire.sym} 430 -630 0 0 {name=l22 sig_type=std_logic lab=ptat}
C {lab_wire.sym} 640 -630 0 0 {name=l23 sig_type=std_logic lab=ctat}
C {spice_probe.sym} 520 -90 0 0 {name=p9 analysis=tran voltage=0.433}
C {ammeter.sym} 520 -210 0 0 {name=viout current=1.0211e-05}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 520 -590 0 0 {name=x12 m=4}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 730 -590 0 0 {name=x13 m=4}
C {lab_wire.sym} 520 -130 0 1 {name=l24 sig_type=std_logic lab=vref}
C {sky130_fd_pr/res_xhigh_po.sym} 520 -60 0 1 {name=R3
W=1
L=20
model=res_xhigh_po
spiceprefix=X
m=1}
C {lab_wire.sym} 0 -270 0 1 {name=l2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 520 -730 0 1 {name=l3 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 400 -160 0 1 {name=l4 sig_type=std_logic lab=ptat}
C {lab_wire.sym} 400 -140 0 1 {name=l5 sig_type=std_logic lab=ctat}
C {lab_wire.sym} 400 -110 0 1 {name=l6 sig_type=std_logic lab=cas}
C {ammeter.sym} 520 -380 0 0 {name=vptat current=1.0211e-05}
C {ammeter.sym} 730 -380 0 0 {name=vctat current=1.0211e-05}
C {vsource.sym} 840 -50 0 0 {name=Vctl_ptat4 value=\{ctl_ptat4\}}
C {vsource.sym} 940 -50 0 0 {name=Vctl_ptat3 value=\{ctl_ptat3\}}
C {vsource.sym} 1040 -50 0 0 {name=Vctl_ptat2 value=\{ctl_ptat2\}}
C {vsource.sym} 1140 -50 0 0 {name=Vctl_ptat1 value=\{ctl_ptat1\}}
C {vsource.sym} 1240 -50 0 0 {name=Vctl_ptat0 value=\{ctl_ptat0\}}
C {gnd.sym} 840 20 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 1240 -100 0 1 {name=l25 sig_type=std_logic lab=ctl_ptat[0]}
C {lab_wire.sym} 1140 -100 0 1 {name=l26 sig_type=std_logic lab=ctl_ptat[1]}
C {lab_wire.sym} 1040 -100 0 1 {name=l27 sig_type=std_logic lab=ctl_ptat[2]}
C {lab_wire.sym} 940 -100 0 1 {name=l28 sig_type=std_logic lab=ctl_ptat[3]}
C {lab_wire.sym} 840 -100 0 1 {name=l29 sig_type=std_logic lab=ctl_ptat[4]}
C {vsource.sym} 840 -250 0 0 {name=Vctl_ctat4 value=\{ctl_ctat4\}}
C {vsource.sym} 940 -250 0 0 {name=Vctl_ctat3 value=\{ctl_ctat3\}}
C {vsource.sym} 1040 -250 0 0 {name=Vctl_ctat2 value=\{ctl_ctat2\}}
C {vsource.sym} 1140 -250 0 0 {name=Vctl_ctat1 value=\{ctl_ctat1\}}
C {vsource.sym} 1240 -250 0 0 {name=Vctl_ctat0 value=\{ctl_ctat0\}}
C {gnd.sym} 840 -180 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 1240 -300 0 1 {name=l9 sig_type=std_logic lab=ctl_ctat[0]}
C {lab_wire.sym} 1140 -300 0 1 {name=l10 sig_type=std_logic lab=ctl_ctat[1]}
C {lab_wire.sym} 1040 -300 0 1 {name=l11 sig_type=std_logic lab=ctl_ctat[2]}
C {lab_wire.sym} 940 -300 0 1 {name=l12 sig_type=std_logic lab=ctl_ctat[3]}
C {lab_wire.sym} 840 -300 0 1 {name=l13 sig_type=std_logic lab=ctl_ctat[4]}
C {vsource.sym} 1240 -440 0 0 {name=Ven value=\{en\}}
C {gnd.sym} 1240 -370 0 0 {name=l14 lab=GND}
C {lab_wire.sym} 1240 -490 0 1 {name=l15 sig_type=std_logic lab=en}
C {lab_wire.sym} 150 -140 0 0 {name=l16 sig_type=std_logic lab=ctl_ptat[4:0]}
C {lab_wire.sym} 150 -120 0 0 {name=l17 sig_type=std_logic lab=ctl_ctat[4:0]}
C {lab_wire.sym} 150 -160 0 0 {name=l18 sig_type=std_logic lab=en}
