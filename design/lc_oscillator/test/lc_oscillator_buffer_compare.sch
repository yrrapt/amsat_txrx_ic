v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 400 -420 400 -320 { lab=vdd}
N 160 -420 400 -420 { lab=vdd}
N 0 -420 -0 -250 { lab=vdd}
N 0 -190 0 -0 { lab=GND}
N 550 -210 680 -210 { lab=in_n}
N 550 -230 680 -230 { lab=in_p}
N 400 -120 400 -0 { lab=GND}
N 160 -60 160 0 { lab=GND}
N 160 -180 160 -120 { lab=#net1}
N 160 -180 250 -180 { lab=#net1}
N 160 -420 160 -380 { lab=vdd}
N 160 -320 160 -260 { lab=#net2}
N 160 -260 250 -260 { lab=#net2}
N 160 0 400 -0 { lab=GND}
N 0 -0 160 0 { lab=GND}
N 0 -420 160 -420 { lab=vdd}
N 400 -420 720 -420 { lab=vdd}
N 720 -230 760 -230 { lab=#net3}
N 720 -270 720 -230 { lab=#net3}
N 720 -420 720 -330 { lab=vdd}
N 1180 -230 1220 -230 { lab=#net4}
N 1180 -270 1180 -230 { lab=#net4}
N 1180 -420 1180 -330 { lab=vdd}
N 1370 -420 1370 -270 { lab=vdd}
N 1180 -420 1370 -420 { lab=vdd}
N 910 -420 910 -270 { lab=vdd}
N 910 0 1370 0 { lab=GND}
N 1370 -70 1370 0 { lab=GND}
N 910 -70 910 0 { lab=GND}
N 910 -420 1180 -420 { lab=vdd}
N 720 -420 910 -420 { lab=vdd}
N 400 -0 910 0 { lab=GND}
C {lc_oscillator/lc_oscillator.sym} 400 -220 0 0 {name=x1}
C {isource.sym} 160 -350 0 0 {name=Ibias value=40u}
C {vsource.sym} 160 -90 0 0 {name=Vctl value=\{vctl\}}
C {vsource.sym} 0 -220 0 0 {name=Vdd value=\{vdd\}}
C {lab_wire.sym} 550 -230 0 1 {name=l1 sig_type=std_logic lab=in_p}
C {lab_wire.sym} 550 -210 0 1 {name=l2 sig_type=std_logic lab=in_n}
C {gnd.sym} 0 0 0 0 {name=l3 lab=GND}
C {code.sym} 340 -670 0 0 {name=SIM only_toplevel=false value="
.param temp=27

.param vdd=1.8 vctl=0.2

*.op
.tran 1p 300n uic

*.options rshunt=1e11


.save all

"}
C {devices/code.sym} 500 -670 0 0 {name=TT_MODELS
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
C {code.sym} 180 -670 0 0 {name=STDCELL_MODELS
only_toplevel=true
format="tcleval( @value )"
value="[sky130_models]"
}
C {lc_oscillator_buffer_ind/lc_oscillator_buffer_ind.sym} 910 -170 0 0 {name=x3}
C {lab_wire.sym} 760 -180 0 0 {name=l9 sig_type=std_logic lab=in_p}
C {lab_wire.sym} 760 -160 0 0 {name=l10 sig_type=std_logic lab=in_n}
C {isource.sym} 720 -300 0 0 {name=Ibias2 value=100u}
C {lab_wire.sym} 0 -420 0 1 {name=l11 sig_type=std_logic lab=vdd}
C {lc_oscillator_buffer/lc_oscillator_buffer.sym} 1370 -170 0 0 {name=x4}
C {isource.sym} 1180 -300 0 0 {name=Ibias3 value=100u}
C {lab_wire.sym} 1220 -180 0 0 {name=l13 sig_type=std_logic lab=in_p}
C {lab_wire.sym} 1220 -160 0 0 {name=l14 sig_type=std_logic lab=in_n}
C {lab_wire.sym} 1060 -180 0 1 {name=l15 sig_type=std_logic lab=ind_p}
C {lab_wire.sym} 1060 -160 0 1 {name=l16 sig_type=std_logic lab=ind_n}
C {lab_wire.sym} 1520 -180 0 1 {name=l17 sig_type=std_logic lab=res_p}
C {lab_wire.sym} 1520 -160 0 1 {name=l18 sig_type=std_logic lab=res_n}
