v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1210 -60 1230 -60 { lab=GND}
N 1230 -60 1230 0 { lab=GND}
N 1210 -30 1210 0 { lab=GND}
N 1210 -110 1210 -90 { lab=#net1}
N 1120 -60 1170 -60 { lab=#net1}
N 1120 -110 1120 -60 { lab=#net1}
N 1120 -110 1210 -110 { lab=#net1}
N 1210 0 1230 0 { lab=GND}
N 1370 0 1390 0 { lab=GND}
N 1370 -60 1390 -60 { lab=GND}
N 1370 -60 1370 0 { lab=GND}
N 1390 -30 1390 0 { lab=GND}
N 1430 -60 1480 -60 { lab=#net2}
N 1390 -110 1480 -110 { lab=#net2}
N 1390 -110 1390 -90 { lab=#net2}
N 980 -260 1120 -260 { lab=#net3}
N 1120 -260 1120 -210 { lab=#net3}
N 100 -120 100 -90 { lab=clk}
N 100 -30 100 0 { lab=GND}
N 270 -120 270 -90 { lab=data}
N 270 -30 270 0 { lab=GND}
N 100 0 270 0 { lab=GND}
N 660 -350 680 -350 { lab=drive_supply}
N 660 -390 660 -350 { lab=drive_supply}
N 660 -480 830 -480 { lab=vdd}
N 660 -480 660 -450 { lab=vdd}
N 980 -280 1480 -280 { lab=#net4}
N 420 -230 420 -0 { lab=GND}
N 1230 0 1370 0 { lab=GND}
N 150 -370 150 -270 { lab=currn_bias}
N 150 -270 300 -270 { lab=currn_bias}
N -0 -250 -0 -0 { lab=GND}
N -0 -0 100 -0 { lab=GND}
N -0 -480 -0 -310 { lab=vdd}
N 380 -480 460 -480 { lab=vdd}
N 150 -480 150 -430 { lab=vdd}
N 540 -310 680 -310 { lab=#net5}
N 570 -270 680 -270 { lab=#net6}
N 570 -270 570 -130 { lab=#net6}
N 570 -70 570 0 { lab=GND}
N 830 -480 900 -480 { lab=vdd}
N 900 -480 900 -390 { lab=vdd}
N 830 -150 830 0 { lab=GND}
N 830 -480 830 -390 { lab=vdd}
N 1610 -0 1780 -0 { lab=GND}
N 1610 -50 1610 -0 { lab=GND}
N 1610 -200 1610 -110 { lab=test_r}
N 1610 -280 1610 -260 { lab=GND}
N 1610 -280 1780 -280 { lab=GND}
N 1780 -280 1780 -0 { lab=GND}
N 1120 -150 1120 -110 { lab=#net1}
N 1480 -110 1480 -60 { lab=#net2}
N 1480 -280 1480 -210 { lab=#net4}
N 1210 -320 1210 -110 { lab=#net1}
N 560 -350 660 -350 { lab=drive_supply}
N 460 -480 660 -480 { lab=vdd}
N 270 0 420 -0 { lab=GND}
N -0 -480 150 -480 { lab=vdd}
N 540 -270 570 -270 { lab=#net6}
N 420 -0 570 0 { lab=GND}
N 570 0 830 0 { lab=GND}
N 1390 0 1610 -0 { lab=GND}
N 830 0 1210 0 { lab=GND}
N 1480 -150 1480 -110 { lab=#net2}
N 1390 -480 1390 -380 { lab=vdd}
N 1210 -480 1390 -480 { lab=vdd}
N 1210 -480 1210 -380 { lab=vdd}
N 1390 -320 1390 -110 { lab=#net2}
N 900 -480 1210 -480 { lab=vdd}
N 380 -480 380 -370 { lab=vdd}
N 460 -480 460 -370 { lab=vdd}
N 150 -480 380 -480 { lab=vdd}
C {dac_bias_nores/dac_bias_nores.sym} 420 -290 0 0 {name=x2}
C {vsource.sym} 0 -280 0 0 {name=Vdd value=1.8}
C {isource.sym} 150 -400 0 0 {name=I0 value=1.25u}
C {vsource.sym} 1120 -180 0 0 {name=Vout_n value=0.}
C {vsource.sym} 1480 -180 0 0 {name=Vout_p value=0.}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1190 -60 0 0 {name=Mload_n
L=4.00
W=0.42
nf=1
mult=4
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1410 -60 0 1 {name=Mload_p
L=4.00
W=0.42
nf=1
mult=4
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
C {code.sym} 520 -670 0 0 {name=SIM only_toplevel=false value="
.param temp=27

*.op
.tran 0.001n 50n 20n

.options rshunt=1e11

.ic v(x1.data_p)=1.8 v(x1.data_n)=0.0

*.save all 
.save all i(vout_p) i(vout_n)
+ @M.x1.XMcas_p.msky130_fd_pr__pfet_01v8[vdsat]         @M.x1.XMcas_p.msky130_fd_pr__pfet_01v8[vds]         @M.x1.XMcas_p.msky130_fd_pr__pfet_01v8[gm]
+ @M.x1.XMcas_n.msky130_fd_pr__pfet_01v8[vdsat]         @M.x1.XMcas_n.msky130_fd_pr__pfet_01v8[vds]         @M.x1.XMcas_n.msky130_fd_pr__pfet_01v8[gm]
+ @M.x1.XMcurr_p.msky130_fd_pr__pfet_01v8_lvt[vdsat]    @M.x1.XMcurr_p.msky130_fd_pr__pfet_01v8_lvt[vds]    @M.x1.XMcurr_p.msky130_fd_pr__pfet_01v8_lvt[gm]    @M.x1.XMcurr_p.msky130_fd_pr__pfet_01v8_lvt[id]
+ @M.x1.XMcurr_n.msky130_fd_pr__pfet_01v8_lvt[vdsat]    @M.XMcurr_n.msky130_fd_pr__pfet_01v8_lvt[vds]    @M.XMcurr_n.msky130_fd_pr__pfet_01v8_lvt[gm]    @M.XMcurr_n.msky130_fd_pr__pfet_01v8_lvt[id]


*.print tran format=raw v(clk) v(data_quarter) v(data_quarter[0]) i(Vout_p) i(Vout_n)
"}
C {devices/code.sym} 680 -670 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.options wnflag=1
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {code.sym} 360 -670 0 0 {name=STDCELL_MODELS
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
C {lab_pin.sym} 680 -290 0 0 {name=l11 sig_type=std_logic lab=gnd}
C {isource.sym} 1610 -230 0 0 {name=I1 value=1m}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 1610 -80 0 0 {name=Rdrive1
W=0.69
L=4.28
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 1590 -80 0 0 {name=l25 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 1610 -110 0 1 {name=l13 sig_type=std_logic lab=test_r}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 110 -600 0 0 {name=Rdrive2[31:0]
W=0.69
L=4.28
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 90 -600 0 0 {name=l14 sig_type=std_logic lab=gnd}
C {lab_wire.sym} 110 -750 0 1 {name=l15 sig_type=std_logic lab=r5[30:0],vdd}
C {lab_wire.sym} 110 -570 2 0 {name=l16 sig_type=std_logic lab=drive_supply,r5[30:0]}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 110 -660 0 0 {name=Rdrive1[31:0]
W=0.69
L=4.28
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 90 -660 0 0 {name=l17 sig_type=std_logic lab=gnd}
C {sky130_fd_pr/res_xhigh_po_0p69.sym} 110 -720 0 0 {name=Rdrive3[31:0]
W=0.69
L=4.28
model=res_xhigh_po_0p69
spiceprefix=X
mult=1}
C {lab_pin.sym} 90 -720 0 0 {name=l18 sig_type=std_logic lab=gnd}
C {isource.sym} 1210 -350 0 0 {name=I2 value=4u}
C {isource.sym} 1390 -350 0 0 {name=I3 value=4u}
C {dac_unit_cell/dac_unit_cell.sym} 830 -270 0 0 {name=x1}
