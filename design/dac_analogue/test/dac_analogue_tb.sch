v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 500 -220 590 -220 { lab=data_quarter}
N 500 -220 500 -170 { lab=data_quarter}
N 390 -240 590 -240 { lab=data_half}
N 390 -240 390 -170 { lab=data_half}
N 230 -260 590 -260 { lab=data_therm[255:0]}
N 230 -260 230 -170 { lab=data_therm[255:0]}
N 150 -300 590 -300 { lab=en}
N 150 -300 150 -170 { lab=en}
N 80 -320 590 -320 { lab=clk}
N 70 -320 80 -320 { lab=clk}
N 70 -320 70 -170 { lab=clk}
N 500 -360 590 -360 { lab=bias_10u}
N 500 -410 500 -360 { lab=bias_10u}
N 820 -520 820 -400 { lab=#net1}
N 0 -520 820 -520 { lab=#net1}
N 0 -520 0 -300 { lab=#net1}
N 500 -520 500 -470 { lab=#net1}
N 740 -520 740 -400 { lab=#net1}
N 740 -180 740 0 { lab=GND}
N 0 0 740 0 { lab=GND}
N 0 -240 0 0 { lab=GND}
N 70 -110 70 0 { lab=GND}
N 150 -110 150 0 { lab=GND}
N 230 -110 230 0 { lab=GND}
N 390 -110 390 0 { lab=GND}
N 500 -110 500 0 { lab=GND}
N 890 -270 1060 -270 { lab=out_n}
N 1000 -60 1020 -60 { lab=#net2}
N 1000 -130 1000 -60 { lab=#net2}
N 1000 -130 1060 -130 { lab=#net2}
N 1290 -60 1310 -60 { lab=#net3}
N 1310 -130 1310 -60 { lab=#net3}
N 1250 -130 1310 -130 { lab=#net3}
N 890 -290 1250 -290 { lab=out_p}
N 1250 -290 1250 -270 { lab=out_p}
N 1000 -410 1000 -130 { lab=#net2}
N 1060 -270 1060 -230 { lab=out_n}
N 1060 -170 1060 -90 { lab=#net2}
N 1250 -170 1250 -90 { lab=#net3}
N 1250 -270 1250 -230 { lab=out_p}
N 1310 -400 1310 -130 { lab=#net3}
N 740 0 1250 0 { lab=GND}
N 1250 -30 1250 0 { lab=GND}
N 1060 -30 1060 0 { lab=GND}
N 820 -520 1310 -520 { lab=#net1}
N 1310 -520 1310 -460 { lab=#net1}
N 1000 -520 1000 -470 { lab=#net1}
N 1060 -60 1080 -60 { lab=GND}
N 1080 -60 1080 0 { lab=GND}
N 1230 -60 1250 -60 { lab=GND}
N 1230 -60 1230 0 { lab=GND}
C {isource.sym} 500 -440 0 0 {name=Ibias value=\{ibias\}}
C {vsource.sym} 500 -140 0 0 {name=Vdata_quarter value=\{data_quarter\}}
C {vsource.sym} 390 -140 0 0 {name=Vdata_half value=\{data_half\}}
C {vsource.sym} 230 -140 0 0 {name=Vdata_therm[255:0] value=\{data_therm\}}
C {vsource.sym} 150 -140 0 0 {name=Ven value=\{en\}}
C {vsource.sym} 70 -140 0 0 {name=Vclk value=\{clk\}}
C {vsource.sym} 0 -270 0 0 {name=Vdd value=\{vdd\}}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1040 -60 0 0 {name=M1
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
C {sky130_fd_pr/nfet_01v8_lvt.sym} 1270 -60 0 1 {name=M2
L=0.15
W=0.42
nf=4.00
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
C {isource.sym} 1000 -440 0 0 {name=Iloadbias_p value=\{iloadbias\}}
C {isource.sym} 1310 -430 0 0 {name=Iloadbias_n value=\{iloadbias\}}
C {ammeter.sym} 1060 -200 0 0 {name=Vout_p}
C {ammeter.sym} 1250 -200 0 0 {name=Vout_n}
C {gnd.sym} 0 0 0 0 {name=l4 lab=GND}
C {lab_wire.sym} 590 -320 0 0 {name=l1 sig_type=std_logic lab=clk}
C {lab_wire.sym} 590 -360 0 0 {name=l2 sig_type=std_logic lab=bias_10u}
C {lab_wire.sym} 590 -300 0 0 {name=l3 sig_type=std_logic lab=en}
C {lab_wire.sym} 590 -260 0 0 {name=l5 sig_type=std_logic lab=data_therm[255:0]}
C {lab_wire.sym} 590 -240 0 0 {name=l6 sig_type=std_logic lab=data_half}
C {lab_wire.sym} 590 -220 0 0 {name=l7 sig_type=std_logic lab=data_quarter}
C {lab_wire.sym} 890 -290 0 1 {name=l8 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 890 -270 0 1 {name=l9 sig_type=std_logic lab=out_n}
C {dac_analogue/dac_analogue.sym} 740 -280 0 0 {name=xdut}
C {devices/code.sym} 870 -720 0 0 {name=TT_MODELS
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
C {code.sym} 550 -720 0 0 {name=STDCELL_MODELS
only_toplevel=true
format="tcleval( @value )"
value="[sky130_models]"
}
