v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1120 -60 1140 -60 { lab=GND}
N 1140 -60 1140 0 { lab=GND}
N 1120 -30 1120 0 { lab=GND}
N 1120 -110 1120 -90 { lab=#net1}
N 1060 -60 1080 -60 { lab=#net1}
N 1060 -110 1060 -60 { lab=#net1}
N 1060 -110 1120 -110 { lab=#net1}
N 1120 0 1140 0 { lab=GND}
N 1280 0 1300 0 { lab=GND}
N 1280 -60 1300 -60 { lab=GND}
N 1280 -60 1280 0 { lab=GND}
N 1300 -30 1300 0 { lab=GND}
N 1340 -60 1360 -60 { lab=#net2}
N 1360 -110 1360 -60 { lab=#net2}
N 1300 -110 1360 -110 { lab=#net2}
N 1300 -110 1300 -90 { lab=#net2}
N 1300 -150 1300 -110 { lab=#net2}
N 1120 -150 1120 -110 { lab=#net1}
N 980 -260 1120 -260 { lab=#net3}
N 1120 -260 1120 -210 { lab=#net3}
N 100 -120 100 -90 { lab=clk}
N 100 -30 100 0 { lab=GND}
N 270 -120 270 -90 { lab=data}
N 270 -30 270 0 { lab=GND}
N 100 0 270 0 { lab=GND}
N 560 -350 680 -350 { lab=drive_supply}
N 660 -390 660 -350 { lab=drive_supply}
N 830 -480 830 -390 { lab=vdd}
N 420 -480 830 -480 { lab=vdd}
N 660 -480 660 -450 { lab=vdd}
N 980 -280 1300 -280 { lab=#net4}
N 1300 -280 1300 -210 { lab=#net4}
N 420 -160 420 -0 { lab=GND}
N 270 0 1120 0 { lab=GND}
N 1140 0 1280 0 { lab=GND}
N 150 -370 150 -270 { lab=currn_bias}
N 150 -270 300 -270 { lab=currn_bias}
N -0 -250 -0 -0 { lab=GND}
N -0 -0 100 -0 { lab=GND}
N 0 -470 -0 -310 { lab=vdd}
N -0 -480 -0 -470 { lab=vdd}
N -0 -480 410 -480 { lab=vdd}
N 410 -480 420 -480 { lab=vdd}
N 150 -470 150 -430 { lab=vdd}
N 150 -480 150 -470 { lab=vdd}
N 830 -150 830 -0 { lab=GND}
N 540 -310 680 -310 { lab=#net5}
N 540 -270 680 -270 { lab=#net6}
N 570 -270 570 -130 { lab=#net6}
N 570 -70 570 0 { lab=GND}
N 900 -90 900 -0 { lab=GND}
N 900 -480 900 -450 { lab=vdd}
N 830 -480 900 -480 { lab=vdd}
N 460 -480 460 -370 { lab=vdd}
N 380 -480 380 -370 { lab=vdd}
C {dac_unit_cell/dac_unit_cell.sym} 830 -270 0 0 {name=xunit_cell}
C {dac_bias_nores/dac_bias_nores.sym} 420 -290 0 0 {name=xbias}
C {vsource.sym} 0 -280 0 0 {name=Vdd value=1.8}
C {isource.sym} 150 -400 0 0 {name=I0 value=1u}
C {vsource.sym} 1120 -180 0 0 {name=Vout_n value=0.}
C {vsource.sym} 1300 -180 0 0 {name=Vout_p value=0.}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1100 -60 0 0 {name=Mload_n
L=4.00
W=0.42
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1320 -60 0 1 {name=Mload_p
L=4.00
W=0.42
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {pulse_source.sym} 100 -60 0 0 {name=Vclk vlo=0.0 vhi=1.8 delay=5n rise=0.1n fall=0.1n pw=5n per=10n}
C {lab_pin.sym} 270 -120 0 1 {name=l5 sig_type=std_logic lab=data}
C {pulse_source.sym} 270 -60 0 0 {name=Vdata vlo=0.0 vhi=1.8 delay=0 rise=0.1n fall=0.1n pw=10n per=20n}
C {lab_pin.sym} 100 -120 0 1 {name=l1 sig_type=std_logic lab=clk}
C {lab_pin.sym} 680 -190 0 0 {name=l2 sig_type=std_logic lab=data}
C {lab_pin.sym} 680 -210 0 0 {name=l3 sig_type=std_logic lab=clk}
C {capa.sym} 660 -420 0 0 {name=C1
m=1
value=100p}
C {gnd.sym} 0 0 0 0 {name=l4 lab=GND}
C {code.sym} 1190 -480 0 0 {name=SIM only_toplevel=false value="
.param temp=27

.ic v(xunit_cell.data_p)=1.8 v(xunit_cell.data_n)=0.0

"}
C {devices/code.sym} 1350 -480 0 0 {name=MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.options wnflag=1

.lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt
"}
C {code.sym} 1010 -480 0 0 {name=STDCELL_MODELS
only_toplevel=true
format="tcleval( @value )"
value="[sky130_models]"
}
C {lab_pin.sym} 680 -250 0 0 {name=l6 sig_type=std_logic lab=currn_bias}
C {lab_pin.sym} 150 -270 0 0 {name=l7 sig_type=std_logic lab=currn_bias}
C {lab_wire.sym} 560 -350 0 1 {name=l8 sig_type=std_logic lab=drive_supply}
C {lab_wire.sym} 0 -480 0 1 {name=l9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 300 -310 0 0 {name=l10 sig_type=std_logic lab=drive_supply}
C {capa.sym} 570 -100 0 0 {name=C2
m=1
value=100p}
C {vsource.sym} 900 -420 0 0 {name=Vdd1 value=0.0}
C {vsource.sym} 900 -120 0 0 {name=Vdd2 value=0.0}
C {lab_pin.sym} 680 -290 0 0 {name=l11 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 250 -580 0 0 {name=l14 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 270 -730 0 1 {name=l15 sig_type=std_logic lab=r5[30:0],vdd}
C {lab_wire.sym} 270 -550 2 0 {name=l16 sig_type=std_logic lab=drive_supply,r5[30:0]}
C {lab_pin.sym} 250 -640 0 0 {name=l17 sig_type=std_logic lab=gnd}
C {lab_pin.sym} 250 -700 0 0 {name=l18 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/res_xhigh_po.sym} 270 -700 0 0 {name=R1[31:0]
W=0.69
L=4.28
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 270 -640 0 0 {name=R2[31:0]
W=0.69
L=4.28
model=res_xhigh_po
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po.sym} 270 -580 0 0 {name=R3[31:0]
W=0.69
L=10
model=res_xhigh_po
spiceprefix=X
mult=1}
C {lab_pin.sym} 300 -240 0 0 {name=l12 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 300 -220 0 0 {name=l13 sig_type=std_logic lab=gnd}
