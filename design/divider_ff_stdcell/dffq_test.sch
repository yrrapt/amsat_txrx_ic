v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 200 -180 240 -180 { lab=#net1}
N 200 -240 200 -180 { lab=#net1}
N 200 -240 420 -240 { lab=#net1}
N 420 -240 420 -140 { lab=#net1}
N 360 -140 420 -140 { lab=#net1}
N 120 -140 120 -90 { lab=CLK}
N 120 -140 240 -140 { lab=CLK}
N 0 -240 0 -200 { lab=VDD}
N 0 -140 0 0 { lab=GND}
N 0 0 120 0 { lab=GND}
N 120 -30 120 0 { lab=GND}
N 360 -180 520 -180 { lab=OUT}
C {sky130_stdcells/DFFQ.sym} 300 -160 0 0 {name=x1 VCCPIN="VDD" VSSPIN="VDD" VCCBPIN="VDD" VSSBPIN="GND"}
C {vsource.sym} 120 -60 0 0 {name=VCLK value="PULSE(0 1.8 0 1n 1n \{0.5/frequency\} \{1.0/frequency\} 0)"}
C {vsource.sym} 0 -170 0 0 {name=VDD value=1.8}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 0 -240 0 1 {name=l2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 480 -180 0 1 {name=l3 sig_type=std_logic lab=OUT}
C {lab_wire.sym} 120 -140 0 1 {name=l4 sig_type=std_logic lab=CLK}
C {code_shown.sym} 520 -80 0 0 {name=SPICE only_toplevel=false value=".lib /usr/local/share/sky130_fd_pr/models/sky130.lib.spice tt
.tran 0.1n 1u
.param frequency 1e6
.save all"}
