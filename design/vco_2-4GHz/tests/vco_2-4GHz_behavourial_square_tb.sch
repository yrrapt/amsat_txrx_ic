v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 100 -40 120 -40 {lab=Ip}
N 100 -20 120 -20 {lab=In}
N 100 20 120 20 {lab=Qp}
N 100 40 120 40 {lab=Qn}
N 0 -120 -0 -80 {lab=#net1}
N -290 -120 -0 -120 {lab=#net1}
N -290 -120 -290 -30 {lab=#net1}
N -290 30 -290 130 {lab=0}
N -290 130 -0 130 {lab=0}
N -0 80 0 130 {lab=0}
N -170 100 -170 130 {lab=0}
N -170 -0 -170 40 {lab=#net2}
N -170 -0 -100 -0 {lab=#net2}
C {lab_wire.sym} 100 -40 0 1 {name=l1 sig_type=std_logic lab=Ip}
C {lab_wire.sym} 100 -20 0 1 {name=l2 sig_type=std_logic lab=In}
C {lab_wire.sym} 100 20 0 1 {name=l3 sig_type=std_logic lab=Qp}
C {lab_wire.sym} 100 40 0 1 {name=l4 sig_type=std_logic lab=Qn}
C {vsource.sym} -170 70 0 0 {name=V1 value=0.9}
C {vsource.sym} -290 0 0 0 {name=V2 value=1.8}
C {gnd.sym} -290 130 0 0 {name=l5 lab=0}
C {code.sym} 80 -250 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
.include "xh018_ng/xh018.lib"
.temp 30
.param vctl=0.9
.tran  0.1e-9 1e-6 uic
"}
C {vco_quad/vco_quad_behavourial_square.sym} 0 0 0 0 {}
