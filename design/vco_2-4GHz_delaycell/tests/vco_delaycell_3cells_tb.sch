v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 90 -10 240 -10 {lab=#net1}
N 90 10 240 10 {lab=#net2}
N 400 -10 540 -10 {lab=#net3}
N 400 10 540 10 {lab=#net4}
N 700 -10 810 -10 {lab=OUT+}
N 700 10 810 10 {lab=OUT-}
N -150 100 810 100 {lab=OUT-}
N -150 10 -70 10 {lab=OUT-}
N 810 -100 810 -10 {lab=OUT+}
N -150 -10 -70 -10 {lab=OUT+}
N -150 -60 -150 -10 {lab=OUT+}
N -150 -100 810 -100 {lab=OUT+}
N -10 -120 -10 -60 {lab=CTL}
N 310 60 310 120 {lab=0}
N 610 60 610 120 {lab=0}
N 0 120 310 120 {lab=0}
N 0 60 0 120 {lab=0}
N 310 120 610 120 {lab=0}
N -10 -120 300 -120 {lab=CTL}
N 300 -120 600 -120 {lab=CTL}
N 20 -140 330 -140 {lab=#net5}
N 330 -140 630 -140 {lab=#net5}
N 300 -120 300 -60 {lab=CTL}
N 330 -140 330 -60 {lab=#net5}
N 600 -120 600 -60 {lab=CTL}
N 630 -140 630 -60 {lab=#net5}
N -530 30 -530 120 {lab=0}
N -440 120 0 120 {lab=0}
N -440 30 -440 120 {lab=0}
N -440 -120 -10 -120 {lab=CTL}
N -440 -120 -440 -30 {lab=CTL}
N -530 -140 20 -140 {lab=#net5}
N -530 -140 -530 -30 {lab=#net5}
N -530 120 -440 120 {lab=0}
N 20 -140 20 -60 {lab=#net5}
N -370 -60 -150 -60 {lab=OUT+}
N -370 30 -370 60 {lab=OUT-}
N -370 60 -150 60 {lab=OUT-}
N -150 10 -150 60 {lab=OUT-}
N -150 -100 -150 -60 {lab=OUT+}
N 810 10 810 100 {lab=OUT-}
N -150 60 -150 100 {lab=OUT-}
C {vco_delaycell/vco_delaycell.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -530 0 0 0 {name=VDD value="1.8"}
C {vsource.sym} -440 0 0 0 {name=VCTL value=0}
C {vco_delaycell/vco_delaycell.sym} 310 0 0 0 {name=x3}
C {vco_delaycell/vco_delaycell.sym} 610 0 0 0 {name=x4}
C {lab_wire.sym} 700 10 0 1 {name=l2 sig_type=std_logic lab=OUT-}
C {lab_wire.sym} 700 -10 0 1 {name=l3 sig_type=std_logic lab=OUT+}
C {lab_wire.sym} -440 -120 0 1 {name=l4 sig_type=std_logic lab=CTL}
C {code_shown.sym} -330 200 0 0 {name=CONTROL value="
.param temp=27
.lib sky130_fd_pr/models/sky130.lib.spice tt
.tran 0.001n 10n uic
.measure tran osc_freq freq v(out+) on=1.1 off 0.7 from=8n to=10n
"}
C {lab_wire.sym} -520 120 0 1 {name=l1 sig_type=std_logic lab=0}
C {isource.sym} -370 0 0 0 {name=I0 value="PWL 0S 0A 1nS 1mA 5nS 0A"}
