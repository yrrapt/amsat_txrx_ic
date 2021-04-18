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
N 560 -390 560 -350 { lab=drive_supply}
N 660 -390 660 -350 { lab=drive_supply}
N 420 -480 830 -480 { lab=vdd}
N 420 -480 420 -350 { lab=vdd}
N 560 -480 560 -450 { lab=vdd}
N 660 -480 660 -450 { lab=vdd}
N 980 -280 1300 -280 { lab=#net4}
N 1300 -280 1300 -210 { lab=#net4}
N 420 -230 420 -0 { lab=GND}
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
N 540 -310 680 -310 { lab=#net5}
N 540 -270 680 -270 { lab=#net6}
N 570 -270 570 -130 { lab=#net6}
N 570 -70 570 0 { lab=GND}
N 830 -480 900 -480 { lab=vdd}
N 900 -480 900 -470 { lab=vdd}
N 900 -410 900 -390 { lab=#net7}
N 900 -150 900 -110 { lab=#net8}
N 900 -50 900 0 { lab=GND}
N 830 -150 830 0 { lab=GND}
N 830 -480 830 -390 { lab=vdd}
N 990 -400 990 -380 { lab=#net7}
N 900 -400 990 -400 { lab=#net7}
N 1300 -0 1660 -0 { lab=GND}
C {dac_bias/dac_bias.sym} 420 -290 0 0 {name=x2}
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
C {pulse_source.sym} 100 -60 0 0 {name=Vclk vlo=0.0 vhi=1.8 delay=50n rise=0.1n fall=0.1n pw=50n per=100n}
C {lab_pin.sym} 270 -120 0 1 {name=l5 sig_type=std_logic lab=data}
C {pulse_source.sym} 270 -60 0 0 {name=Vdata vlo=0.0 vhi=1.8 delay=0 rise=0.1n fall=0.1n pw=100n per=200n}
C {lab_pin.sym} 100 -120 0 1 {name=l1 sig_type=std_logic lab=clk}
C {lab_pin.sym} 680 -190 0 0 {name=l2 sig_type=std_logic lab=data}
C {lab_pin.sym} 680 -210 0 0 {name=l3 sig_type=std_logic lab=clk}
C {res.sym} 560 -420 0 0 {name=R2
value=1200k
device=resistor
m=1}
C {capa.sym} 660 -420 0 0 {name=C1
m=1
value=100p}
C {gnd.sym} 0 0 0 0 {name=l4 lab=GND}
C {code.sym} 1190 -480 0 0 {name=SIM only_toplevel=false value="
.param temp=27

*.op
.tran 0.001n 500n 200n

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
C {devices/code.sym} 1350 -480 0 0 {name=TT_MODELS
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
C {code.sym} 1030 -480 0 0 {name=STDCELL_MODELS
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
C {vsource.sym} 900 -440 0 0 {name=Vdd1 value=0.0}
C {vsource.sym} 900 -80 0 0 {name=Vdd2 value=0.0}
C {lab_pin.sym} 680 -290 0 0 {name=l11 sig_type=std_logic lab=gnd}
C {devices/code.sym} 1510 -480 0 0 {name=PEX
value="


* NGSPICE file created from dac_unit_cell.ext - technology: sky130A

.subckt sky130_fd_pr__nfet_01v8_lvt_0-42_8-00 a_n800_n130# a_n858_n42# a_800_n42#
+ w_n884_n68#
X0 a_800_n42# a_n800_n130# a_n858_n42# w_n884_n68# sky130_fd_pr__nfet_01v8_lvt ad=1.218e+11p pd=1.42e+06u as=1.218e+11p ps=1.42e+06u w=420000u l=8e+06u
C0 a_800_n42# w_n884_n68# 0.03fF
C1 a_n858_n42# w_n884_n68# 0.03fF
C2 a_n800_n130# w_n884_n68# 1.73fF
.ends

.subckt sky130_fd_pr__pfet_01v8_0-84_0-15 VSUBS a_15_n84# w_n109_n184# a_n33_n181#
+ a_n73_n84#
X0 a_15_n84# a_n33_n181# a_n73_n84# w_n109_n184# sky130_fd_pr__pfet_01v8 ad=2.436e+11p pd=2.26e+06u as=2.436e+11p ps=2.26e+06u w=840000u l=150000u
C0 a_15_n84# a_n73_n84# 0.29fF
C1 a_n33_n181# a_15_n84# 0.03fF
C2 a_n33_n181# a_n73_n84# 0.03fF
C3 a_15_n84# VSUBS 0.03fF
C4 a_n73_n84# VSUBS 0.03fF
C5 a_n33_n181# VSUBS 0.20fF
C6 w_n109_n184# VSUBS 0.24fF
.ends

.subckt sky130_fd_sc_hs__inv_1 VGND Y VPWR A VPB VNB
X0 Y A VPWR VPB sky130_fd_pr__pfet_01v8 ad=3.304e+11p pd=2.83e+06u as=3.864e+11p ps=2.93e+06u w=1.12e+06u l=150000u
X1 Y A VGND VNB sky130_fd_pr__nfet_01v8_lvt ad=2.109e+11p pd=2.05e+06u as=2.627e+11p ps=2.19e+06u w=740000u l=150000u
C0 VGND Y 0.19fF
C1 VGND VPWR 0.01fF
C2 VPWR VPB 0.02fF
C3 Y VPWR 0.24fF
C4 A VGND 0.08fF
C5 A Y 0.26fF
C6 A VPWR 0.08fF
C7 VGND VNB 0.37fF
C8 Y VNB 0.19fF
C9 VPWR VNB 0.36fF
C10 A VNB 0.36fF
C11 VPB VNB 0.41fF
.ends

.subckt sky130_fd_sc_hs__dfxtp_1 a_713_458# Q a_454_503# VGND a_1118_508# a_668_503#
+ a_206_368# a_27_74# VPWR CLK a_731_101# a_561_463# VPB a_1168_124# VNB a_1210_314#
+ D a_1011_424#
X0 VPWR CLK a_27_74# VPB sky130_fd_pr__pfet_01v8 ad=1.50923e+12p pd=1.272e+07u as=3.304e+11p ps=2.83e+06u w=1.12e+06u l=150000u
X1 a_561_463# a_206_368# a_454_503# VPB sky130_fd_pr__pfet_01v8 ad=1.967e+11p pd=2.01e+06u as=1.967e+11p ps=2.01e+06u w=420000u l=150000u
X2 VPWR a_1210_314# a_1118_508# VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=1.995e+11p ps=1.79e+06u w=420000u l=150000u
X3 a_713_458# a_561_463# VPWR VPB sky130_fd_pr__pfet_01v8 ad=4.662e+11p pd=2.79e+06u as=0p ps=0u w=840000u l=150000u
X4 VPWR a_1011_424# a_1210_314# VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=2.478e+11p ps=2.27e+06u w=840000u l=150000u
X5 Q a_1210_314# VPWR VPB sky130_fd_pr__pfet_01v8 ad=3.304e+11p pd=2.83e+06u as=0p ps=0u w=1.12e+06u l=150000u
X6 Q a_1210_314# VGND VNB sky130_fd_pr__nfet_01v8_lvt ad=2.109e+11p pd=2.05e+06u as=1.27305e+12p ps=1.059e+07u w=740000u l=150000u
X7 a_668_503# a_27_74# a_561_463# VPB sky130_fd_pr__pfet_01v8 ad=1.008e+11p pd=1.32e+06u as=0p ps=0u w=420000u l=150000u
X8 VGND a_1011_424# a_1210_314# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=1.824e+11p ps=1.85e+06u w=640000u l=150000u
X9 a_731_101# a_206_368# a_561_463# VNB sky130_fd_pr__nfet_01v8_lvt ad=8.82e+10p pd=1.26e+06u as=1.575e+11p ps=1.73e+06u w=420000u l=150000u
X10 a_454_503# D VGND VNB sky130_fd_pr__nfet_01v8_lvt ad=3.1125e+11p pd=2.43e+06u as=0p ps=0u w=420000u l=150000u
X11 a_1168_124# a_27_74# a_1011_424# VNB sky130_fd_pr__nfet_01v8_lvt ad=1.113e+11p pd=1.37e+06u as=2.362e+11p ps=2.07e+06u w=420000u l=150000u
X12 a_1118_508# a_206_368# a_1011_424# VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=2.856e+11p ps=2.45e+06u w=420000u l=150000u
X13 VPWR a_713_458# a_668_503# VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X14 VGND a_1210_314# a_1168_124# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X15 a_206_368# a_27_74# VPWR VPB sky130_fd_pr__pfet_01v8 ad=3.304e+11p pd=2.83e+06u as=0p ps=0u w=1.12e+06u l=150000u
X16 a_206_368# a_27_74# VGND VNB sky130_fd_pr__nfet_01v8_lvt ad=2.553e+11p pd=2.17e+06u as=0p ps=0u w=740000u l=150000u
X17 a_713_458# a_561_463# VGND VNB sky130_fd_pr__nfet_01v8_lvt ad=2.18125e+11p pd=2.05e+06u as=0p ps=0u w=550000u l=150000u
X18 a_1011_424# a_27_74# a_713_458# VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X19 VGND a_713_458# a_731_101# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X20 a_1011_424# a_206_368# a_713_458# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=550000u l=150000u
X21 a_454_503# D VPWR VPB sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X22 a_561_463# a_27_74# a_454_503# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=0p ps=0u w=420000u l=150000u
X23 VGND CLK a_27_74# VNB sky130_fd_pr__nfet_01v8_lvt ad=0p pd=0u as=2.109e+11p ps=2.05e+06u w=740000u l=150000u
C0 a_206_368# VPB 0.02fF
C1 Q a_1011_424# 0.02fF
C2 a_206_368# a_27_74# 1.29fF
C3 a_713_458# a_206_368# 0.56fF
C4 VPWR Q 0.24fF
C5 a_206_368# a_668_503# 0.03fF
C6 VPWR a_1011_424# 0.12fF
C7 a_713_458# a_27_74# 0.59fF
C8 a_454_503# VPWR 0.02fF
C9 a_27_74# a_731_101# 0.03fF
C10 a_561_463# D 0.09fF
C11 Q VGND 0.13fF
C12 a_1011_424# VGND 0.20fF
C13 a_206_368# a_1118_508# 0.03fF
C14 a_206_368# D 0.42fF
C15 VPWR VGND 0.02fF
C16 a_454_503# VGND 0.02fF
C17 a_27_74# D 0.20fF
C18 a_713_458# D 0.02fF
C19 a_206_368# CLK 0.04fF
C20 a_27_74# CLK 0.41fF
C21 Q a_1210_314# 0.35fF
C22 a_1011_424# a_1210_314# 0.60fF
C23 VPWR a_1210_314# 0.35fF
C24 CLK D 0.02fF
C25 VGND a_1210_314# 0.39fF
C26 a_561_463# a_1011_424# 0.03fF
C27 a_561_463# VPWR 0.14fF
C28 a_454_503# a_561_463# 0.34fF
C29 a_206_368# Q 0.02fF
C30 a_206_368# a_1011_424# 0.65fF
C31 VPWR a_206_368# 1.00fF
C32 a_454_503# a_206_368# 0.14fF
C33 VPWR VPB 0.11fF
C34 a_27_74# a_1011_424# 0.30fF
C35 a_713_458# a_1011_424# 0.12fF
C36 a_561_463# VGND 0.04fF
C37 VPWR a_27_74# 0.28fF
C38 a_454_503# a_27_74# 0.17fF
C39 VPWR a_713_458# 0.02fF
C40 a_454_503# a_713_458# 0.03fF
C41 a_206_368# VGND 0.24fF
C42 a_27_74# VGND 1.60fF
C43 a_713_458# VGND 0.06fF
C44 VPWR D 0.02fF
C45 a_454_503# D 0.26fF
C46 a_561_463# a_1210_314# 0.03fF
C47 a_206_368# a_1210_314# 0.16fF
C48 VPWR CLK 0.02fF
C49 VGND D 0.02fF
C50 a_27_74# a_1210_314# 0.11fF
C51 a_713_458# a_1210_314# 0.03fF
C52 CLK VGND 0.06fF
C53 a_561_463# a_206_368# 0.56fF
C54 a_561_463# a_27_74# 0.87fF
C55 a_561_463# a_713_458# 0.51fF
C56 Q VNB -0.16fF
C57 a_1011_424# VNB -0.11fF
C58 VGND VNB 1.28fF
C59 a_454_503# VNB 0.12fF
C60 a_561_463# VNB 0.53fF
C61 a_713_458# VNB 0.49fF
C62 D VNB 0.39fF
C63 a_206_368# VNB 1.52fF
C64 a_27_74# VNB 1.51fF
C65 CLK VNB 0.24fF
C66 VPWR VNB 1.26fF
C67 VPB VNB 1.91fF
.ends

.subckt sky130_fd_pr__pfet_01v8_0-42_0-15_1g VSUBS a_n73_n61# w_n109_n123# a_15_n61#
+ a_n33_54#
X0 a_15_n61# a_n33_54# a_n73_n61# w_n109_n123# sky130_fd_pr__pfet_01v8 ad=1.218e+11p pd=1.42e+06u as=1.218e+11p ps=1.42e+06u w=420000u l=150000u
C0 a_15_n61# a_n33_54# 0.01fF
C1 a_n73_n61# a_15_n61# 0.15fF
C2 a_n73_n61# a_n33_54# 0.01fF
C3 a_15_n61# VSUBS 0.03fF
C4 a_n73_n61# VSUBS 0.03fF
C5 a_n33_54# VSUBS 0.12fF
C6 w_n109_n123# VSUBS 0.16fF
.ends

.subckt sky130_fd_pr__pfet_01v8_lvt_0-55_8-00 VSUBS a_n800_n152# a_800_n55# w_n894_n155#
+ a_n858_n55#
X0 a_800_n55# a_n800_n152# a_n858_n55# w_n894_n155# sky130_fd_pr__pfet_01v8_lvt ad=1.595e+11p pd=1.68e+06u as=1.595e+11p ps=1.68e+06u w=550000u l=8e+06u
C0 a_800_n55# VSUBS 0.03fF
C1 a_n858_n55# VSUBS 0.03fF
C2 a_n800_n152# VSUBS 1.82fF
C3 w_n894_n155# VSUBS 1.66fF
.ends

.subckt sky130_fd_pr__nfet_01v8_0-42_0-15_1g a_n73_n75# w_n99_n101# a_15_n75# a_n33_31#
X0 a_15_n75# a_n33_31# a_n73_n75# w_n99_n101# sky130_fd_pr__nfet_01v8 ad=1.218e+11p pd=1.42e+06u as=1.218e+11p ps=1.42e+06u w=420000u l=150000u
C0 a_15_n75# a_n33_31# 0.02fF
C1 a_15_n75# a_n73_n75# 0.15fF
C2 a_n73_n75# a_n33_31# 0.02fF
C3 a_15_n75# w_n99_n101# 0.03fF
C4 a_n73_n75# w_n99_n101# 0.03fF
C5 a_n33_31# w_n99_n101# 0.12fF
.ends

.subckt sky130_fd_pr__nfet_01v8_lvt_4-00_2-00 a_200_n400# w_n284_n426# a_n200_n488#
+ a_n258_n400#
X0 a_200_n400# a_n200_n488# a_n258_n400# w_n284_n426# sky130_fd_pr__nfet_01v8_lvt ad=1.16e+12p pd=8.58e+06u as=1.16e+12p ps=8.58e+06u w=4e+06u l=2e+06u
C0 a_200_n400# w_n284_n426# 0.03fF
C1 a_n258_n400# w_n284_n426# 0.03fF
C2 a_n200_n488# w_n284_n426# 0.51fF
.ends

.subckt sky130_fd_pr__nfet_01v8_0-84_0-15_1g a_n73_n117# w_n99_n143# a_n33_73# a_15_n117#
X0 a_15_n117# a_n33_73# a_n73_n117# w_n99_n143# sky130_fd_pr__nfet_01v8 ad=2.436e+11p pd=2.26e+06u as=2.436e+11p ps=2.26e+06u w=840000u l=150000u
C0 a_15_n117# a_n33_73# 0.02fF
C1 a_15_n117# a_n73_n117# 0.29fF
C2 a_n73_n117# a_n33_73# 0.02fF
C3 a_15_n117# w_n99_n143# 0.03fF
C4 a_n73_n117# w_n99_n143# 0.03fF
C5 a_n33_73# w_n99_n143# 0.12fF
.ends


* Top level circuit dac_unit_cell
.subckt dac_unit_cell_pex  vdda curr_bias clk data out_p out_n drive_load vssa drive_supply cas_bias
+  drive_bias vddd vssd
Xsky130_fd_pr__nfet_01v8_lvt_0-42_8-00_0[0] drive_bias ctl_s vssa vssa sky130_fd_pr__nfet_01v8_lvt_0-42_8-00
Xsky130_fd_pr__nfet_01v8_lvt_0-42_8-00_0[1] ctl_s vssa vssa vssa sky130_fd_pr__nfet_01v8_lvt_0-42_8-00
Xsky130_fd_pr__pfet_01v8_0-84_0-15_0 vssa ctl_n vdda drive_load drive_supply sky130_fd_pr__pfet_01v8_0-84_0-15
Xsky130_fd_pr__pfet_01v8_0-84_0-15_1 vssa ctl_p vdda drive_load drive_supply sky130_fd_pr__pfet_01v8_0-84_0-15
Xsky130_fd_sc_hs__inv_1_0 vssa sky130_fd_sc_hs__inv_1_0/Y vddd data vddd vssa sky130_fd_sc_hs__inv_1
Xsky130_fd_sc_hs__dfxtp_1_0 sky130_fd_sc_hs__dfxtp_1_0/a_713_458# data_p sky130_fd_sc_hs__dfxtp_1_0/a_454_503#
+ vssa sky130_fd_sc_hs__dfxtp_1_0/a_1118_508# sky130_fd_sc_hs__dfxtp_1_0/a_668_503#
+ sky130_fd_sc_hs__dfxtp_1_0/a_206_368# sky130_fd_sc_hs__dfxtp_1_0/a_27_74# vddd clk
+ sky130_fd_sc_hs__dfxtp_1_0/a_731_101# sky130_fd_sc_hs__dfxtp_1_0/a_561_463# vddd
+ sky130_fd_sc_hs__dfxtp_1_0/a_1168_124# vssa sky130_fd_sc_hs__dfxtp_1_0/a_1210_314#
+ data sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# sky130_fd_sc_hs__dfxtp_1
Xsky130_fd_pr__pfet_01v8_0-42_0-15_1g_0 vssa a_250_7220# vdda out_p cas_bias sky130_fd_pr__pfet_01v8_0-42_0-15_1g
Xsky130_fd_sc_hs__dfxtp_1_1 sky130_fd_sc_hs__dfxtp_1_1/a_713_458# data_n sky130_fd_sc_hs__dfxtp_1_1/a_454_503#
+ vssa sky130_fd_sc_hs__dfxtp_1_1/a_1118_508# sky130_fd_sc_hs__dfxtp_1_1/a_668_503#
+ sky130_fd_sc_hs__dfxtp_1_1/a_206_368# sky130_fd_sc_hs__dfxtp_1_1/a_27_74# vddd clk
+ sky130_fd_sc_hs__dfxtp_1_1/a_731_101# sky130_fd_sc_hs__dfxtp_1_1/a_561_463# vddd
+ sky130_fd_sc_hs__dfxtp_1_1/a_1168_124# vssa sky130_fd_sc_hs__dfxtp_1_1/a_1210_314#
+ sky130_fd_sc_hs__inv_1_0/Y sky130_fd_sc_hs__dfxtp_1_1/a_1011_424# sky130_fd_sc_hs__dfxtp_1
Xpfet_01v8_lvt_0-55_8-00[0] vssa curr_bias a_431_7381# vdda vdda sky130_fd_pr__pfet_01v8_lvt_0-55_8-00
Xpfet_01v8_lvt_0-55_8-00[1] vssa curr_bias a_431_7381# vdda vdda sky130_fd_pr__pfet_01v8_lvt_0-55_8-00
Xsky130_fd_pr__pfet_01v8_0-42_0-15_1g_1 vssa a_431_7381# vdda a_250_7220# ctl_p sky130_fd_pr__pfet_01v8_0-42_0-15_1g
Xsky130_fd_pr__nfet_01v8_0-42_0-15_1g_0 ctl_s vssa ctl_p data_p sky130_fd_pr__nfet_01v8_0-42_0-15_1g
Xsky130_fd_pr__pfet_01v8_0-42_0-15_1g_3 vssa a_431_7220# vdda out_n cas_bias sky130_fd_pr__pfet_01v8_0-42_0-15_1g
Xsky130_fd_pr__pfet_01v8_0-42_0-15_1g_2 vssa a_431_7381# vdda a_431_7220# ctl_n sky130_fd_pr__pfet_01v8_0-42_0-15_1g
Xsky130_fd_pr__nfet_01v8_lvt_4-00_2-00_0 vssa vssa ctl_s vssa sky130_fd_pr__nfet_01v8_lvt_4-00_2-00
Xsky130_fd_pr__nfet_01v8_0-42_0-15_1g_1 ctl_s vssa ctl_n data_n sky130_fd_pr__nfet_01v8_0-42_0-15_1g
Xsky130_fd_pr__nfet_01v8_0-84_0-15_1g_0 m1_95_6344# vssa data_n ctl_p sky130_fd_pr__nfet_01v8_0-84_0-15_1g
Xsky130_fd_pr__nfet_01v8_0-84_0-15_1g_2 ctl_n vssa data_p m1_95_6344# sky130_fd_pr__nfet_01v8_0-84_0-15_1g
Xsky130_fd_pr__nfet_01v8_0-84_0-15_1g_1 m1_95_6344# vssa data_p ctl_n sky130_fd_pr__nfet_01v8_0-84_0-15_1g
Xsky130_fd_pr__nfet_01v8_0-84_0-15_1g_3 ctl_p vssa data_n m1_95_6344# sky130_fd_pr__nfet_01v8_0-84_0-15_1g
C0 data_p vddd 0.19fF
C1 m3_49_552# vddd 0.37fF
C2 data_n ctl_p 0.26fF
C3 m1_95_6344# ctl_s 0.07fF
C4 sky130_fd_sc_hs__dfxtp_1_0/a_561_463# sky130_fd_sc_hs__inv_1_0/Y 0.06fF
C5 data_p ctl_p 0.12fF
C6 out_n a_431_7381# 0.04fF
C7 ctl_n drive_load 0.67fF
C8 vddd m3_49_1697# 0.24fF
C9 out_n ctl_n 0.28fF
C10 sky130_fd_sc_hs__dfxtp_1_0/a_206_368# sky130_fd_sc_hs__inv_1_0/Y 0.44fF
C11 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# vddd 0.02fF
C12 cas_bias drive_load 0.05fF
C13 m3_49_n710# sky130_fd_sc_hs__dfxtp_1_0/a_27_74# 0.29fF
C14 data clk 0.88fF
C15 out_n cas_bias 0.63fF
C16 sky130_fd_sc_hs__inv_1_0/Y sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# 0.06fF
C17 m1_95_6344# ctl_n 0.29fF
C18 clk m3_49_832# 0.43fF
C19 clk vddd 0.04fF
C20 drive_supply ctl_n 0.23fF
C21 sky130_fd_sc_hs__dfxtp_1_1/a_1011_424# m3_49_1977# 0.22fF
C22 data vddd 0.28fF
C23 vddd m3_49_832# 0.19fF
C24 out_n vdda 0.02fF
C25 drive_supply cas_bias 0.94fF
C26 a_501_5998# ctl_s 0.02fF
C27 data_n ctl_s 3.05fF
C28 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# data_p 0.62fF
C29 a_431_7381# out_p 0.04fF
C30 sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# sky130_fd_sc_hs__inv_1_0/Y 0.06fF
C31 sky130_fd_sc_hs__dfxtp_1_1/a_1210_314# m3_49_1977# 0.17fF
C32 out_p ctl_n 0.13fF
C33 data_p ctl_s 1.37fF
C34 drive_supply vdda 0.04fF
C35 out_p cas_bias 0.34fF
C36 a_501_5998# ctl_n 0.09fF
C37 m3_49_n710# clk 0.25fF
C38 data_p a_179_5998# 0.02fF
C39 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# m3_49_1697# 0.06fF
C40 data_n ctl_n 0.17fF
C41 m3_49_n710# data 0.14fF
C42 sky130_fd_sc_hs__dfxtp_1_0/a_713_458# clk 0.04fF
C43 out_n drive_load 0.31fF
C44 data_p ctl_n 0.34fF
C45 a_431_7220# ctl_p 0.01fF
C46 m3_49_n710# vddd 0.22fF
C47 m1_95_6344# drive_load 0.03fF
C48 data_n m3_49_1977# 0.01fF
C49 out_p vdda 0.01fF
C50 drive_bias ctl_s 0.19fF
C51 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# m3_49_832# 0.10fF
C52 data_p m3_49_1977# 0.18fF
C53 drive_supply drive_load 0.21fF
C54 out_n drive_supply 0.29fF
C55 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# vddd 0.05fF
C56 sky130_fd_sc_hs__dfxtp_1_0/a_454_503# clk 0.03fF
C57 drive_supply m1_95_6344# 0.13fF
C58 m3_49_552# sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# 0.08fF
C59 sky130_fd_sc_hs__dfxtp_1_0/a_27_74# sky130_fd_sc_hs__inv_1_0/Y 0.47fF
C60 m3_49_1697# m3_49_1977# 0.52fF
C61 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# m3_49_1977# 0.14fF
C62 m3_49_n990# clk 0.12fF
C63 ctl_s ctl_p -0.07fF
C64 m3_49_n990# data 0.38fF
C65 out_p drive_load 0.12fF
C66 sky130_fd_sc_hs__dfxtp_1_0/a_561_463# clk 0.13fF
C67 data_p sky130_fd_sc_hs__inv_1_0/Y 0.18fF
C68 m3_49_552# sky130_fd_sc_hs__inv_1_0/Y 0.14fF
C69 out_n out_p 0.73fF
C70 sky130_fd_sc_hs__dfxtp_1_1/a_454_503# data_p 0.08fF
C71 ctl_p a_179_5998# 0.09fF
C72 a_250_7220# ctl_p 0.04fF
C73 sky130_fd_sc_hs__dfxtp_1_1/a_731_101# m3_49_1697# 0.02fF
C74 data_p sky130_fd_sc_hs__dfxtp_1_1/a_713_458# 0.14fF
C75 data_n drive_load 0.03fF
C76 m3_49_n990# vddd 0.24fF
C77 sky130_fd_sc_hs__dfxtp_1_0/a_206_368# clk 0.24fF
C78 a_431_7381# ctl_p 0.05fF
C79 m1_95_6344# data_n 0.21fF
C80 clk sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# 0.11fF
C81 a_250_7220# a_431_7220# 0.09fF
C82 data sky130_fd_sc_hs__dfxtp_1_0/a_206_368# 0.09fF
C83 m3_49_552# sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# 0.19fF
C84 ctl_p ctl_n 0.22fF
C85 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# sky130_fd_sc_hs__inv_1_0/Y 0.16fF
C86 data_p drive_load 0.02fF
C87 drive_supply out_p 0.02fF
C88 vddd m3_49_1977# 0.25fF
C89 cas_bias ctl_p 0.24fF
C90 sky130_fd_sc_hs__dfxtp_1_1/a_713_458# m3_49_1697# 0.21fF
C91 m1_95_6344# data_p 0.21fF
C92 sky130_fd_sc_hs__dfxtp_1_1/a_1011_424# data_p 0.20fF
C93 sky130_fd_sc_hs__dfxtp_1_0/a_206_368# vddd 0.02fF
C94 a_431_7220# ctl_n 0.04fF
C95 drive_supply data_n 0.02fF
C96 clk sky130_fd_sc_hs__inv_1_0/Y 0.62fF
C97 ctl_p curr_bias 0.01fF
C98 a_431_7220# cas_bias 0.01fF
C99 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# 0.02fF
C100 data sky130_fd_sc_hs__inv_1_0/Y 0.47fF
C101 sky130_fd_sc_hs__inv_1_0/Y m3_49_832# 0.14fF
C102 drive_supply data_p 0.02fF
C103 vdda ctl_p 0.04fF
C104 m3_49_n710# m3_49_n990# 0.52fF
C105 data_p sky130_fd_sc_hs__dfxtp_1_1/a_1210_314# 0.44fF
C106 vddd sky130_fd_sc_hs__inv_1_0/Y 0.62fF
C107 sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# clk 0.20fF
C108 sky130_fd_sc_hs__dfxtp_1_0/a_668_503# sky130_fd_sc_hs__inv_1_0/Y 0.02fF
C109 ctl_s a_179_5998# 0.03fF
C110 sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# m3_49_832# 0.25fF
C111 data_n a_501_5998# 0.02fF
C112 ctl_s ctl_n -0.07fF
C113 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# m3_49_1977# 0.08fF
C114 data_n data_p 2.88fF
C115 a_250_7220# ctl_n 0.01fF
C116 data_p sky130_fd_sc_hs__dfxtp_1_1/a_561_463# 0.07fF
C117 a_250_7220# cas_bias 0.01fF
C118 ctl_p drive_load 0.67fF
C119 out_n ctl_p 0.17fF
C120 sky130_fd_sc_hs__dfxtp_1_1/a_1168_124# data_p 0.01fF
C121 m3_49_n710# sky130_fd_sc_hs__inv_1_0/Y 0.18fF
C122 a_431_7381# ctl_n 0.05fF
C123 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# 0.02fF
C124 m1_95_6344# ctl_p 0.29fF
C125 a_431_7381# cas_bias 0.03fF
C126 sky130_fd_sc_hs__dfxtp_1_0/a_713_458# sky130_fd_sc_hs__inv_1_0/Y 0.06fF
C127 cas_bias ctl_n 0.24fF
C128 sky130_fd_sc_hs__dfxtp_1_1/a_561_463# m3_49_1697# 0.09fF
C129 vddd sky130_fd_sc_hs__dfxtp_1_1/a_1210_314# 0.01fF
C130 a_431_7381# curr_bias 0.12fF
C131 data_p m3_49_1697# 0.14fF
C132 drive_supply ctl_p 0.23fF
C133 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# sky130_fd_sc_hs__inv_1_0/Y 0.08fF
C134 ctl_n curr_bias 0.01fF
C135 drive_bias data_n 0.08fF
C136 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# data_p 0.15fF
C137 sky130_fd_sc_hs__dfxtp_1_0/a_27_74# clk 0.14fF
C138 data sky130_fd_sc_hs__dfxtp_1_0/a_27_74# 0.14fF
C139 vdda ctl_n 0.03fF
C140 drive_bias data_p 1.60fF
C141 data_p clk 0.31fF
C142 m3_49_552# clk 0.14fF
C143 cas_bias vdda 0.04fF
C144 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# m3_49_1697# 0.15fF
C145 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# 0.09fF
C146 sky130_fd_sc_hs__dfxtp_1_0/a_454_503# sky130_fd_sc_hs__inv_1_0/Y 0.04fF
C147 sky130_fd_sc_hs__dfxtp_1_0/a_27_74# vddd 0.06fF
C148 out_p ctl_p 0.19fF
C149 data_p m3_49_832# 0.32fF
C150 data_n vddd 0.15fF
C151 m3_49_552# m3_49_832# 0.52fF
C152 sky130_fd_sc_hs__inv_1_0/Y sky130_fd_sc_hs__dfxtp_1_0/a_1118_508# 0.04fF
C153 vdda curr_bias 0.23fF
C154 m3_49_n990# sky130_fd_sc_hs__inv_1_0/Y 0.21fF
C155 m3_49_n990# vssa 0.13fF $ **FLOATING
C156 m3_49_n710# vssa 0.18fF $ **FLOATING
C157 m3_49_552# vssa -0.28fF $ **FLOATING
C158 m3_49_832# vssa 0.02fF $ **FLOATING
C159 m3_49_1697# vssa -0.30fF $ **FLOATING
C160 m3_49_1977# vssa -0.41fF $ **FLOATING
C161 drive_load vssa 0.83fF
C162 ctl_n vssa 0.02fF
C163 ctl_p vssa -0.35fF
C164 m1_95_6344# vssa 0.38fF
C165 a_250_7220# vssa -0.03fF
C166 curr_bias vssa -18.15fF
C167 a_501_5998# vssa -1.00fF $ **FLOATING
C168 a_179_5998# vssa -1.00fF $ **FLOATING
C169 a_431_7220# vssa -0.03fF
C170 a_431_7381# vssa -0.17fF
C171 out_n vssa -0.16fF
C172 data_n vssa 0.75fF
C173 sky130_fd_sc_hs__dfxtp_1_1/a_1011_424# vssa -0.11fF
C174 sky130_fd_sc_hs__dfxtp_1_1/a_454_503# vssa 0.12fF
C175 sky130_fd_sc_hs__dfxtp_1_1/a_1210_314# vssa 0.04fF
C176 sky130_fd_sc_hs__dfxtp_1_1/a_561_463# vssa 0.53fF
C177 sky130_fd_sc_hs__dfxtp_1_1/a_713_458# vssa 0.49fF
C178 sky130_fd_sc_hs__dfxtp_1_1/a_206_368# vssa 1.52fF
C179 sky130_fd_sc_hs__dfxtp_1_1/a_27_74# vssa 1.55fF
C180 out_p vssa -0.46fF
C181 cas_bias vssa 0.74fF
C182 data_p vssa 0.49fF
C183 sky130_fd_sc_hs__dfxtp_1_0/a_1011_424# vssa -0.11fF
C184 sky130_fd_sc_hs__dfxtp_1_0/a_454_503# vssa 0.12fF
C185 sky130_fd_sc_hs__dfxtp_1_0/a_1210_314# vssa 0.02fF
C186 sky130_fd_sc_hs__dfxtp_1_0/a_561_463# vssa 0.53fF
C187 sky130_fd_sc_hs__dfxtp_1_0/a_713_458# vssa 0.49fF
C188 data vssa 1.37fF
C189 sky130_fd_sc_hs__dfxtp_1_0/a_206_368# vssa 1.53fF
C190 sky130_fd_sc_hs__dfxtp_1_0/a_27_74# vssa 1.57fF
C191 clk vssa 0.71fF
C192 vddd vssa 8.09fF
C193 sky130_fd_sc_hs__inv_1_0/Y vssa 0.60fF
C194 drive_supply vssa 0.36fF
C195 vdda vssa 6.02fF
C196 ctl_s vssa -0.45fF
C197 drive_bias vssa 1.93fF
.ends



"}
C {capa.sym} 990 -350 0 0 {name=C3
m=1
value=10u}
C {gnd.sym} 990 -320 0 0 {name=l12 lab=GND}
C {dac_unit_cell_half/dac_unit_cell_half_pex.sym} 830 -270 0 0 {name=x1}
