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
N 520 -350 520 -280 { lab=#net1}
N 520 -480 520 -410 { lab=#net2}
N 730 -480 730 -410 { lab=#net3}
N 730 -350 730 -280 { lab=#net1}
N 1810 -100 1810 -80 { lab=ctl_ptat[0]}
N 1810 -100 1850 -100 { lab=ctl_ptat[0]}
N 1710 -100 1710 -80 { lab=ctl_ptat[1]}
N 1710 -100 1750 -100 { lab=ctl_ptat[1]}
N 1610 -100 1610 -80 { lab=ctl_ptat[2]}
N 1610 -100 1650 -100 { lab=ctl_ptat[2]}
N 1510 -100 1510 -80 { lab=ctl_ptat[3]}
N 1510 -100 1550 -100 { lab=ctl_ptat[3]}
N 1410 -100 1410 -80 { lab=ctl_ptat[4]}
N 1410 -100 1450 -100 { lab=ctl_ptat[4]}
N 1410 -20 1410 0 { lab=GND}
N 1710 0 1810 0 { lab=GND}
N 1810 -20 1810 0 { lab=GND}
N 1710 -20 1710 0 { lab=GND}
N 1610 -20 1610 0 { lab=GND}
N 1510 -20 1510 0 { lab=GND}
N 1410 0 1410 20 { lab=GND}
N 1810 -300 1810 -280 { lab=ctl_ctat[0]}
N 1810 -300 1850 -300 { lab=ctl_ctat[0]}
N 1710 -300 1710 -280 { lab=ctl_ctat[1]}
N 1710 -300 1750 -300 { lab=ctl_ctat[1]}
N 1610 -300 1610 -280 { lab=ctl_ctat[2]}
N 1610 -300 1650 -300 { lab=ctl_ctat[2]}
N 1510 -300 1510 -280 { lab=ctl_ctat[3]}
N 1510 -300 1550 -300 { lab=ctl_ctat[3]}
N 1410 -300 1410 -280 { lab=ctl_ctat[4]}
N 1410 -300 1450 -300 { lab=ctl_ctat[4]}
N 1410 -220 1410 -200 { lab=GND}
N 1710 -200 1810 -200 { lab=GND}
N 1810 -220 1810 -200 { lab=GND}
N 1710 -220 1710 -200 { lab=GND}
N 1610 -220 1610 -200 { lab=GND}
N 1510 -220 1510 -200 { lab=GND}
N 1410 -200 1410 -180 { lab=GND}
N 1710 -490 1710 -470 { lab=en}
N 1710 -490 1750 -490 { lab=en}
N 1710 -390 1710 -370 { lab=GND}
N 1190 -730 1190 -700 {lab=vdd}
N 980 -730 1190 -730 {lab=vdd}
N 980 -730 980 -700 {lab=vdd}
N 980 -280 1190 -280 {lab=#net4}
N 980 -280 980 -240 { lab=#net4}
N 980 -350 980 -280 { lab=#net4}
N 980 -480 980 -410 { lab=#net5}
N 1190 -480 1190 -410 { lab=#net6}
N 1190 -350 1190 -280 { lab=#net4}
N 960 0 980 -0 { lab=GND}
N 730 -730 980 -730 { lab=vdd}
N 1610 0 1710 0 { lab=GND}
N 1510 0 1610 0 { lab=GND}
N 1410 0 1510 0 { lab=GND}
N 1610 -200 1710 -200 { lab=GND}
N 1510 -200 1610 -200 { lab=GND}
N 1410 -200 1510 -200 { lab=GND}
N 1190 -60 1190 0 { lab=GND}
N 980 -0 1190 -0 { lab=GND}
N 980 -120 980 -100 { lab=#net7}
N 1020 -70 1040 -70 { lab=#net7}
N 1040 -120 1040 -70 { lab=#net7}
N 980 -120 1040 -120 { lab=#net7}
N 980 -40 980 0 { lab=GND}
N 960 -70 980 -70 { lab=GND}
N 960 -70 960 0 { lab=GND}
N 1810 -490 1810 -470 { lab=start_n}
N 1810 -490 1850 -490 { lab=start_n}
N 1710 -390 1810 -390 { lab=GND}
N 1710 -410 1710 -390 { lab=GND}
N 580 -0 960 0 { lab=GND}
N 980 -180 980 -120 { lab=#net7}
N 1810 -410 1810 -390 { lab=GND}
C {..//bandgap_core.sym} 280 -140 0 0 {name=xdut}
C {code.sym} 60 -480 0 0 {name=simulation only_toplevel=false value="
.temp 27
.param temp=27

*.param res_len=6.25
.param res_len=12.2

.lib "sky130_fd_pr/models/sky130.lib.spice" tt
.include sky130_fd_pr/models/sky130_fd_pr__model__pnp.model.spice

.param vdd=1.8

.param en=1.8
.param start_n=1.8

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

.dc temp -40 125 1


.nodeset v(xdut.q1)=1 v(xdut.q8)=1 v(xdut.ctat_r)=1

Bconverge1 xdut.q1 0 I='v(xdut.q1) < 0.0 ? 1000.0 : 0.0'
Bconverge8 xdut.q8 0 I='v(xdut.q8) < 0.0 ? 1000.0 : 0.0'
BconvergeR xdut.ctat_r 0 I='v(xdut.ctat_r) < 0.0 ? 1000.0 : 0.0'

"}
C {vsource.sym} 0 -140 0 0 {name=Vdd value=\{vdd\}}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 430 -550 0 0 {name=l20 sig_type=std_logic lab=cas}
C {lab_wire.sym} 640 -550 0 0 {name=l21 sig_type=std_logic lab=cas}
C {lab_wire.sym} 430 -630 0 0 {name=l22 sig_type=std_logic lab=ptat}
C {lab_wire.sym} 640 -630 0 0 {name=l23 sig_type=std_logic lab=ctat}
C {spice_probe.sym} 520 -90 0 0 {name=p9 analysis=tran voltage=0.3885}
C {ammeter.sym} 520 -210 0 0 {name=vvref current=9.1655e-06}
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
C {ammeter.sym} 520 -380 0 0 {name=vptat current=4.7403e-06}
C {ammeter.sym} 730 -380 0 0 {name=vctat current=4.4252e-06}
C {vsource.sym} 1410 -50 0 0 {name=Vctl_ptat4 value=\{ctl_ptat4\}}
C {vsource.sym} 1510 -50 0 0 {name=Vctl_ptat3 value=\{ctl_ptat3\}}
C {vsource.sym} 1610 -50 0 0 {name=Vctl_ptat2 value=\{ctl_ptat2\}}
C {vsource.sym} 1710 -50 0 0 {name=Vctl_ptat1 value=\{ctl_ptat1\}}
C {vsource.sym} 1810 -50 0 0 {name=Vctl_ptat0 value=\{ctl_ptat0\}}
C {gnd.sym} 1410 20 0 0 {name=l7 lab=GND}
C {lab_wire.sym} 1810 -100 0 1 {name=l25 sig_type=std_logic lab=ctl_ptat[0]}
C {lab_wire.sym} 1710 -100 0 1 {name=l26 sig_type=std_logic lab=ctl_ptat[1]}
C {lab_wire.sym} 1610 -100 0 1 {name=l27 sig_type=std_logic lab=ctl_ptat[2]}
C {lab_wire.sym} 1510 -100 0 1 {name=l28 sig_type=std_logic lab=ctl_ptat[3]}
C {lab_wire.sym} 1410 -100 0 1 {name=l29 sig_type=std_logic lab=ctl_ptat[4]}
C {vsource.sym} 1410 -250 0 0 {name=Vctl_ctat4 value=\{ctl_ctat4\}}
C {vsource.sym} 1510 -250 0 0 {name=Vctl_ctat3 value=\{ctl_ctat3\}}
C {vsource.sym} 1610 -250 0 0 {name=Vctl_ctat2 value=\{ctl_ctat2\}}
C {vsource.sym} 1710 -250 0 0 {name=Vctl_ctat1 value=\{ctl_ctat1\}}
C {vsource.sym} 1810 -250 0 0 {name=Vctl_ctat0 value=\{ctl_ctat0\}}
C {gnd.sym} 1410 -180 0 0 {name=l8 lab=GND}
C {lab_wire.sym} 1810 -300 0 1 {name=l9 sig_type=std_logic lab=ctl_ctat[0]}
C {lab_wire.sym} 1710 -300 0 1 {name=l10 sig_type=std_logic lab=ctl_ctat[1]}
C {lab_wire.sym} 1610 -300 0 1 {name=l11 sig_type=std_logic lab=ctl_ctat[2]}
C {lab_wire.sym} 1510 -300 0 1 {name=l12 sig_type=std_logic lab=ctl_ctat[3]}
C {lab_wire.sym} 1410 -300 0 1 {name=l13 sig_type=std_logic lab=ctl_ctat[4]}
C {vsource.sym} 1710 -440 0 0 {name=Ven value=\{en\}}
C {gnd.sym} 1710 -370 0 0 {name=l14 lab=GND}
C {lab_wire.sym} 1710 -490 0 1 {name=l15 sig_type=std_logic lab=en}
C {lab_wire.sym} 150 -130 0 0 {name=l16 sig_type=std_logic lab=ctl_ptat[4:0]}
C {lab_wire.sym} 150 -110 0 0 {name=l17 sig_type=std_logic lab=ctl_ctat[4:0]}
C {lab_wire.sym} 150 -170 0 0 {name=l18 sig_type=std_logic lab=en}
C {lab_wire.sym} 890 -550 0 0 {name=l19 sig_type=std_logic lab=cas}
C {lab_wire.sym} 1100 -550 0 0 {name=l30 sig_type=std_logic lab=cas}
C {lab_wire.sym} 890 -630 0 0 {name=l31 sig_type=std_logic lab=ptat}
C {lab_wire.sym} 1100 -630 0 0 {name=l32 sig_type=std_logic lab=ctat}
C {ammeter.sym} 980 -210 0 0 {name=viout current=9.1323e-06}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 980 -590 0 0 {name=x2 m=4}
C {bandgap_cascurr_cell/bandgap_cascurr_cell.sym} 1190 -590 0 0 {name=x3 m=4}
C {ammeter.sym} 980 -380 0 0 {name=vptat2 current=4.7218e-06}
C {ammeter.sym} 1190 -380 0 0 {name=vctat3 current=4.4105e-06}
C {ccvs.sym} 1190 -90 0 0 {name=H1 vnam=viout value=1}
C {lab_wire.sym} 1190 -120 0 1 {name=l33 sig_type=std_logic lab=current}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1000 -70 0 1 {name=Mmnr
L=4
W=1
ad="'W * 0.29'" pd="'2 * (W + 0.29)'"
as="'W * 0.29'" ps="'2 * (W + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
nf=1 mult=3
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_wire.sym} 150 -150 0 0 {name=l34 sig_type=std_logic lab=start_n}
C {vsource.sym} 1810 -440 0 0 {name=Vstart_n value=\{start_n\}}
C {lab_wire.sym} 1810 -490 0 1 {name=l35 sig_type=std_logic lab=start_n}
C {code.sym} 190 -480 0 0 {name=STDCELL_MODELS 
only_toplevel=true
place=end
format=tcleval(@value\\)
value="[sky130_models]"
}
