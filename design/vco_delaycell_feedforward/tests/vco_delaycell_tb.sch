v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 260 -10 290 -10 {lab=#net1}
N 260 10 290 10 {lab=#net2}
N 620 -10 650 -10 {lab=#net3}
N 620 10 650 10 {lab=#net4}
N 940 -10 1010 -10 {lab=#net5}
N 940 10 1010 10 {lab=#net6}
N 1170 -10 1220 -10 {lab=OUT+}
N 1220 -10 1240 10 {lab=OUT+}
N 1170 10 1220 10 {lab=OUT-}
N 1220 10 1240 -10 {lab=OUT-}
N 1240 10 1280 10 {lab=OUT+}
N 1280 10 1280 110 {lab=OUT+}
N -150 110 1280 110 {lab=OUT+}
N -150 10 -150 110 {lab=OUT+}
N -100 10 -70 10 {lab=OUT+}
N 1240 -10 1280 -10 {lab=OUT-}
N 1280 -110 1280 -10 {lab=OUT-}
N -100 -10 -70 -10 {lab=OUT-}
N -150 -110 -150 -10 {lab=OUT-}
N 620 -80 620 -10 {lab=#net3}
N 940 -80 940 -30 {lab=#net3}
N 940 -30 1010 -30 {lab=#net3}
N 620 10 620 80 {lab=#net4}
N 940 30 940 80 {lab=#net4}
N 940 30 1010 30 {lab=#net4}
N 450 -10 620 -10 {lab=#net3}
N 450 10 620 10 {lab=#net4}
N 620 -80 940 -80 {lab=#net3}
N 620 80 940 80 {lab=#net4}
N 260 -80 260 -10 {lab=#net1}
N 580 -80 580 -30 {lab=#net1}
N 580 -30 650 -30 {lab=#net1}
N 260 10 260 80 {lab=#net2}
N 580 30 580 80 {lab=#net2}
N 580 30 650 30 {lab=#net2}
N 260 -80 580 -80 {lab=#net1}
N 260 80 580 80 {lab=#net2}
N -100 -80 -100 -10 {lab=OUT-}
N 220 -80 220 -30 {lab=OUT-}
N 220 -30 290 -30 {lab=OUT-}
N -100 10 -100 80 {lab=OUT+}
N 220 30 220 80 {lab=OUT+}
N 220 30 290 30 {lab=OUT+}
N -100 -80 220 -80 {lab=OUT-}
N -100 80 220 80 {lab=OUT+}
N -150 10 -100 10 {lab=OUT+}
N -150 -10 -100 -10 {lab=OUT-}
N 90 -10 260 -10 {lab=#net1}
N 90 10 260 10 {lab=#net2}
N 940 10 970 -20 {lab=#net6}
N 940 -10 970 20 {lab=#net5}
N 970 20 970 90 {lab=#net5}
N -120 90 970 90 {lab=#net5}
N -120 30 -120 90 {lab=#net5}
N -120 30 -70 30 {lab=#net5}
N 970 -100 970 -20 {lab=#net6}
N -120 -100 970 -100 {lab=#net6}
N -120 -100 -120 -30 {lab=#net6}
N -120 -30 -70 -30 {lab=#net6}
N -150 -110 1280 -110 {lab=OUT-}
N 810 -10 940 -10 {lab=#net5}
N 810 10 940 10 {lab=#net6}
N -10 -120 -10 -60 {lab=CTL}
N 360 60 360 120 {lab=0}
N 720 60 720 120 {lab=0}
N 1080 60 1080 120 {lab=0}
N 0 120 360 120 {lab=0}
N 0 60 0 120 {lab=0}
N 360 120 720 120 {lab=0}
N 720 120 1080 120 {lab=0}
N -10 -120 350 -120 {lab=CTL}
N 350 -120 710 -120 {lab=CTL}
N 710 -120 1070 -120 {lab=CTL}
N 20 -140 380 -140 {lab=#net7}
N 380 -140 740 -140 {lab=#net7}
N 740 -140 1100 -140 {lab=#net7}
N 350 -120 350 -60 {lab=CTL}
N 380 -140 380 -60 {lab=#net7}
N 710 -120 710 -60 {lab=CTL}
N 740 -140 740 -60 {lab=#net7}
N 1070 -120 1070 -60 {lab=CTL}
N 1100 -140 1100 -60 {lab=#net7}
N -530 30 -530 120 {lab=0}
N -270 120 0 120 {lab=0}
N -440 30 -440 120 {lab=0}
N -270 -120 -10 -120 {lab=CTL}
N -440 -120 -440 -30 {lab=CTL}
N -360 -140 20 -140 {lab=#net7}
N -530 -140 -530 -30 {lab=#net7}
N -530 120 -440 120 {lab=0}
N 20 -140 20 -60 {lab=#net7}
N -370 -60 -370 -30 {lab=OUT-}
N -200 -60 -150 -60 {lab=OUT-}
N -370 30 -370 60 {lab=OUT+}
N -200 60 -150 60 {lab=OUT+}
N -370 60 -200 60 {lab=OUT+}
N -440 120 -270 120 {lab=0}
N -370 -60 -200 -60 {lab=OUT-}
N -440 -120 -270 -120 {lab=CTL}
N -530 -140 -360 -140 {lab=#net7}
C {vco_delaycell/vco_delaycell.sym} 0 0 0 0 {name=x1 sec_w=sec_w load_w=load_w ctl_w=ctl_w prim_w=prim_w cross_w=cross_w }
C {vsource.sym} -530 0 0 0 {name=VDD value="1.8"}
C {vsource.sym} -440 0 0 0 {name=VCTL value=0.0
}
C {vco_delaycell/vco_delaycell.sym} 360 0 0 0 {name=x2 sec_w=sec_w load_w=load_w ctl_w=ctl_w prim_w=prim_w cross_w=cross_w }
C {vco_delaycell/vco_delaycell.sym} 720 0 0 0 {name=x3 sec_w=sec_w load_w=load_w ctl_w=ctl_w prim_w=prim_w cross_w=cross_w }
C {vco_delaycell/vco_delaycell.sym} 1080 0 0 0 {name=x4 sec_w=sec_w load_w=load_w ctl_w=ctl_w prim_w=prim_w cross_w=cross_w }
C {lab_wire.sym} 1170 10 0 1 {name=l2 sig_type=std_logic lab=OUT-}
C {lab_wire.sym} 1170 -10 0 1 {name=l3 sig_type=std_logic lab=OUT+}
C {lab_wire.sym} -440 -120 0 1 {name=l4 sig_type=std_logic lab=CTL}
C {code_shown.sym} -330 200 0 0 {name=CONTROL value="* .control
* save all
* tran 5n 100u uic
* write led_driver.raw
* .endc
* .save all
*.include \\"xh018/xh018.lib\\"
*.tran 0.1n 1u uic
*.measure tran osc_freq freq v(out+) on=1.1 off 0.7 from=0.9u to=1u
*.save all
* .dc VP 0 21 0.01

.param TEMP=27

.options savecurrents
.lib /home/tom/repositories/skywater/sky130_fd_pr/models/sky130.lib.spice tt

.temp 30
.tran  0.1e-9 0.1e-6 uic
"}
C {lab_wire.sym} -520 120 0 1 {name=l1 sig_type=std_logic lab=0}
C {isource.sym} -370 0 0 0 {name=I0 value="PULSE(0 1m 1n 1p 1p 4n 10 0)"}
