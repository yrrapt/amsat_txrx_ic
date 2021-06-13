v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 1650 -280 1650 -140 { lab=out_n}
N 1650 -420 1650 -380 { lab=#net1}
N 1590 -420 1650 -420 { lab=#net1}
N 1360 -420 1360 -380 { lab=#net1}
N 1770 0 1880 0 { lab=GND}
N 1770 -100 1770 0 { lab=GND}
N 1880 -80 1880 0 { lab=GND}
N 1880 -180 1880 -160 { lab=load}
N 1770 -240 1880 -240 { lab=load}
N 1770 -240 1770 -160 { lab=load}
N 0 -420 0 -250 { lab=#net1}
N 0 -190 0 0 { lab=GND}
N 1030 -420 1160 -420 { lab=#net1}
N 1990 -180 1990 -160 { lab=load}
N 1880 -180 1990 -180 { lab=load}
N 1990 -100 1990 -80 { lab=GND}
N 1880 -80 1990 -80 { lab=GND}
N 1590 -420 1590 -380 { lab=#net1}
N 1590 -320 1590 -280 { lab=out_n}
N 1590 -280 1650 -280 { lab=out_n}
N 1430 -420 1430 -380 { lab=#net1}
N 1360 -420 1430 -420 { lab=#net1}
N 1430 -320 1430 -280 { lab=out_p}
N 1360 -280 1430 -280 { lab=out_p}
N 310 0 720 0 { lab=GND}
N 520 -420 720 -420 { lab=#net1}
N 1880 -240 1880 -180 { lab=load}
N 1880 -100 1880 -80 { lab=GND}
N 1430 -420 1590 -420 { lab=#net1}
N 1650 -320 1650 -280 { lab=out_n}
N 1360 -320 1360 -280 { lab=out_p}
N 1030 0 1160 0 { lab=GND}
N 1260 -160 1360 -160 { lab=out_p}
N 1260 -140 1650 -140 { lab=out_n}
N 1360 -280 1360 -160 { lab=out_p}
N 1030 -420 1030 -350 { lab=#net1}
N 1030 -190 1080 -190 { lab=bias}
N 1030 -290 1030 -190 { lab=bias}
N 1030 -110 1030 -80 { lab=en}
N 1030 -110 1080 -110 { lab=en}
N 1030 -20 1030 0 { lab=GND}
N 1650 0 1770 0 { lab=GND}
N 1360 -160 1360 -100 { lab=out_p}
N 1360 -40 1360 0 { lab=GND}
N 1650 -40 1650 0 { lab=GND}
N 1650 -140 1650 -100 { lab=out_n}
N 460 -160 600 -160 { lab=osc_p}
N 460 -140 600 -140 { lab=osc_n}
N 720 -50 720 0 { lab=GND}
N 310 -50 310 0 { lab=GND}
N 520 -210 600 -210 { lab=#net2}
N 520 -280 520 -210 { lab=#net2}
N 520 -420 520 -340 { lab=#net1}
N 120 -190 160 -190 { lab=#net3}
N 120 -280 120 -190 { lab=#net3}
N 120 -420 120 -340 { lab=#net1}
N 80 -20 80 0 { lab=GND}
N 80 -110 80 -80 { lab=#net4}
N 80 -110 160 -110 { lab=#net4}
N 720 -420 1030 -420 { lab=#net1}
N 970 0 1030 0 { lab=GND}
N 1160 0 1360 0 { lab=GND}
N 1360 0 1650 0 { lab=GND}
N 80 0 310 0 { lab=GND}
N 120 -420 310 -420 { lab=#net1}
N 310 -420 520 -420 { lab=#net1}
N 0 -420 120 -420 { lab=#net1}
N 0 0 80 0 { lab=GND}
N 840 -140 1080 -140 { lab=buf_n}
N 840 -160 1080 -160 { lab=buf_p}
N 310 -420 310 -250 { lab=#net1}
N 720 -420 720 -250 { lab=#net1}
N 1160 -420 1360 -420 { lab=#net1}
N 970 -110 970 -80 { lab=en}
N 970 -110 1030 -110 { lab=en}
N 970 -20 970 0 { lab=GND}
N 720 0 970 0 { lab=GND}
N 1160 -20 1160 0 { lab=GND}
N 1160 -280 1160 -220 { lab=#net5}
N 1160 -420 1160 -340 { lab=#net1}
C {ind.sym} 1360 -350 0 0 {name=L1
m=1
value=10n
footprint=1206
device=inductor}
C {ind.sym} 1650 -350 0 0 {name=L2
m=1
value=10n
footprint=1206
device=inductor}
C {ind.sym} 1770 -130 0 0 {name=L3
m=1
value=10n
footprint=1206
device=inductor}
C {res.sym} 1880 -130 0 0 {name=R1
value=50
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 1880 -240 0 1 {name=l8 sig_type=std_logic lab=load}
C {vsource.sym} 0 -220 0 0 {name=Vdd value=1.8}
C {gnd.sym} 0 0 0 0 {name=l3 lab=GND}
C {code.sym} 270 -670 0 0 {name=SIM only_toplevel=false value="
.param temp=27

*.op
.tran 1p 100n
*.ac dec 100 100 100G 

*.options rshunt=1e11

K1 L1 L3 0.7
K2 L2 L3 -0.7

.save all


"}
C {devices/code.sym} 430 -670 0 0 {name=TT_MODELS
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
C {code.sym} 110 -670 0 0 {name=STDCELL_MODELS
only_toplevel=true
format="tcleval( @value ) "
value="[sky130_models]"
}
C {isource.sym} 1030 -320 0 0 {name=Ibias value=20u}
C {capa.sym} 1990 -130 2 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {res.sym} 1590 -350 0 1 {name=R2
value=100Meg
footprint=1206
device=resistor
m=1}
C {res.sym} 1430 -350 0 0 {name=R3
value=100Meg
footprint=1206
device=resistor
m=1}
C {io_driver/io_driver.sym} 1160 -150 0 0 {name=x1}
C {vsource.sym} 1030 -50 0 0 {name=Vdd4 value=1.8}
C {capa.sym} 1360 -70 2 0 {name=C4
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 1650 -70 2 0 {name=C5
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 1360 -180 0 1 {name=l6 sig_type=std_logic lab=out_p}
C {lab_wire.sym} 1650 -180 0 1 {name=l7 sig_type=std_logic lab=out_n}
C {lab_wire.sym} 1080 -190 0 0 {name=l9 sig_type=std_logic lab=bias}
C {lc_oscillator/lc_oscillator.sym} 310 -150 0 0 {name=x2}
C {lc_oscillator_buffer/lc_oscillator_buffer.sym} 720 -150 0 0 {name=x3[3:0]}
C {isource.sym} 520 -310 0 0 {name=Ibias1[3:0] value=20u}
C {isource.sym} 120 -310 0 0 {name=Ibias2 value=40u}
C {vsource.sym} 80 -50 0 0 {name=Vdd1 value=0.9}
C {lab_wire.sym} 600 -160 0 0 {name=l4 sig_type=std_logic lab=osc_p}
C {lab_wire.sym} 600 -140 0 0 {name=l5 sig_type=std_logic lab=osc_n}
C {lab_wire.sym} 840 -160 0 1 {name=l10 sig_type=std_logic lab=buf_p}
C {lab_wire.sym} 840 -140 2 0 {name=l11 sig_type=std_logic lab=buf_n}
C {capa.sym} 970 -50 2 0 {name=C6
m=1
value=10n
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 1160 -50 0 0 {name=Vio value=0.0}
C {lab_wire.sym} 1080 -110 0 0 {name=l1 sig_type=std_logic lab=en}
C {lab_wire.sym} 600 -90 0 0 {name=l2 sig_type=std_logic lab=en}
C {ammeter.sym} 1160 -310 0 0 {name=Vmeas}
