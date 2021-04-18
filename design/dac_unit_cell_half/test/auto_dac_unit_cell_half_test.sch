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
N 830 -480 830 -370 { lab=vdd}
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
N 830 -170 830 -0 { lab=GND}
N 540 -310 680 -310 { lab=#net5}
N 540 -270 680 -270 { lab=#net6}
N 570 -270 570 -130 { lab=#net6}
N 570 -70 570 0 { lab=GND}
N 900 -90 900 -0 { lab=GND}
N 900 -480 900 -450 { lab=vdd}
N 830 -480 900 -480 { lab=vdd}
C {dac_unit_cell_half/dac_unit_cell_half.sym} 830 -270 0 0 {name=xunit_cell_half}
C {dac_bias/dac_bias.sym} 420 -290 0 0 {name=xbias}
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

.ic v(xunit_cell.data_p)=1.8 v(xunit_cell.data_n)=0.0

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

.include \\\\$::SKYWATER_STDCELLS\\\\/cells/inv/sky130_fd_sc_hs__inv_1.spice
.include \\\\$::SKYWATER_STDCELLS\\\\/cells/dfxtp/sky130_fd_sc_hs__dfxtp_1.spice
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
