v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N -440 -440 -440 -300 {lab=#net1}
N -440 -240 -440 0 {lab=0}
N -130 -0 330 0 {lab=0}
N -360 -270 -360 -150 {lab=vctl}
N -360 -270 -260 -270 {lab=vctl}
N -360 -90 -360 0 {lab=0}
N 0 -290 80 -290 {lab=Qn}
N 0 -310 80 -310 {lab=Qp}
N 0 -190 230 -190 {lab=FBn}
N 0 -210 230 -210 {lab=FBp}
N 330 -140 330 0 {lab=0}
N 430 -190 440 -190 {lab=0}
N 440 -190 440 0 {lab=0}
N 330 0 440 0 {lab=0}
N 430 -210 440 -210 {lab=0}
N 440 -210 440 -190 {lab=0}
N -130 -150 -130 -0 {lab=0}
N -130 -440 -130 -400 {lab=#net1}
N 0 -340 80 -340 {lab=In}
N 0 -360 80 -360 {lab=Ip}
N -440 -440 -130 -440 {lab=#net1}
N -440 0 -360 0 {lab=0}
N -360 0 -130 -0 {lab=0}
N 0 -240 80 -240 {lab=NCn}
N 0 -260 80 -260 {lab=NCp}
N 330 -440 330 -260 {lab=#net1}
N -130 -440 330 -440 {lab=#net1}
C {vsource.sym} -360 -120 0 0 {name=V1 value=vctl}
C {vsource.sym} -440 -270 0 0 {name=Vdd value=vdd}
C {lab_wire.sym} 40 -290 0 1 {name=l1 sig_type=std_logic lab=Qn}
C {lab_wire.sym} 40 -310 0 1 {name=l2 sig_type=std_logic lab=Qp}
C {lab_wire.sym} 40 -190 0 1 {name=l3 sig_type=std_logic lab=FBn}
C {lab_wire.sym} 40 -210 0 1 {name=l4 sig_type=std_logic lab=FBp}
C {lab_wire.sym} -440 0 0 1 {name=l5 sig_type=std_logic lab=0}
C {code.sym} 370 -420 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
.param temp=-40
.temp -40

.lib sky130_fd_pr/models/sky130.lib.spice tt
.tran 0.001n 10n uic
.param vdd=1.8
.param vctl=0.0
"}
C {divider_256_4cml_64ff/divider_256_4cml_64ff.sym} 330 -200 0 0 {name=x1}
C {noconn.sym} 80 -310 2 0 {name=l6}
C {noconn.sym} 80 -290 2 0 {name=l7}
C {vco_2-4GHz/vco_2-4GHz.sym} -130 -270 0 0 {name=xvco}
C {lab_wire.sym} 40 -340 0 1 {name=l8 sig_type=std_logic lab=In}
C {lab_wire.sym} 40 -360 0 1 {name=l9 sig_type=std_logic lab=Ip}
C {noconn.sym} 80 -360 2 0 {name=l10}
C {noconn.sym} 80 -340 2 0 {name=l11}
C {lab_wire.sym} 40 -240 0 1 {name=l12 sig_type=std_logic lab=NCn}
C {lab_wire.sym} 40 -260 0 1 {name=l13 sig_type=std_logic lab=NCp}
C {noconn.sym} 80 -260 2 0 {name=l14}
C {noconn.sym} 80 -240 2 0 {name=l15}
C {lab_wire.sym} -360 -270 0 1 {name=l16 sig_type=std_logic lab=vctl}
