v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 90 -10 620 -10 {lab=#net1}
N 90 10 620 10 {lab=#net2}
N 620 -10 650 -10 {lab=#net1}
N 620 10 650 10 {lab=#net2}
N 940 -10 1010 -10 {lab=#net3}
N 940 10 1010 10 {lab=#net4}
N 1170 -10 1220 -10 {lab=OUT+}
N 1170 10 1220 10 {lab=OUT-}
N 1240 10 1280 10 {lab=OUT+}
N 1280 10 1280 110 {lab=OUT+}
N -150 110 1280 110 {lab=OUT+}
N -150 60 -150 110 {lab=OUT+}
N -100 10 -70 10 {lab=OUT+}
N 1240 -10 1280 -10 {lab=OUT-}
N 1280 -110 1280 -10 {lab=OUT-}
N -100 -10 -70 -10 {lab=OUT-}
N -150 -60 -150 -10 {lab=OUT-}
N 620 -80 620 -10 {lab=#net1}
N 940 -80 940 -30 {lab=#net1}
N 940 -30 1010 -30 {lab=#net1}
N 620 10 620 80 {lab=#net2}
N 940 30 940 80 {lab=#net2}
N 940 30 1010 30 {lab=#net2}
N 620 -80 940 -80 {lab=#net1}
N 620 80 940 80 {lab=#net2}
N 580 -80 580 -30 {lab=OUT-}
N 580 -30 650 -30 {lab=OUT-}
N 580 30 580 80 {lab=OUT+}
N 580 30 650 30 {lab=OUT+}
N -100 -80 580 -80 {lab=OUT-}
N -100 80 580 80 {lab=OUT+}
N -100 -80 -100 -10 {lab=OUT-}
N -100 10 -100 80 {lab=OUT+}
N -150 10 -100 10 {lab=OUT+}
N -150 -10 -100 -10 {lab=OUT-}
N 970 20 970 90 {lab=#net3}
N -120 90 970 90 {lab=#net3}
N -120 30 -120 90 {lab=#net3}
N -120 30 -70 30 {lab=#net3}
N 970 -100 970 -20 {lab=#net4}
N -120 -100 970 -100 {lab=#net4}
N -120 -100 -120 -30 {lab=#net4}
N -120 -30 -70 -30 {lab=#net4}
N -150 -110 1280 -110 {lab=OUT-}
N 810 -10 940 -10 {lab=#net3}
N 810 10 940 10 {lab=#net4}
N -10 -120 -10 -60 {lab=CTL}
N 720 60 720 120 {lab=0}
N 1080 60 1080 120 {lab=0}
N 0 120 720 120 {lab=0}
N 0 60 0 120 {lab=0}
N 720 120 1080 120 {lab=0}
N -10 -120 710 -120 {lab=CTL}
N 710 -120 1070 -120 {lab=CTL}
N 20 -140 740 -140 {lab=#net5}
N 740 -140 1100 -140 {lab=#net5}
N 710 -120 710 -60 {lab=CTL}
N 740 -140 740 -60 {lab=#net5}
N 1070 -120 1070 -60 {lab=CTL}
N 1100 -140 1100 -60 {lab=#net5}
N -530 30 -530 120 {lab=0}
N -440 120 0 120 {lab=0}
N -440 30 -440 120 {lab=0}
N -440 -120 -10 -120 {lab=CTL}
N -440 -120 -440 -30 {lab=CTL}
N -530 -140 20 -140 {lab=#net5}
N -530 -140 -530 -30 {lab=#net5}
N -530 120 -440 120 {lab=0}
N 20 -140 20 -60 {lab=#net5}
N -370 -60 -370 -30 {lab=OUT-}
N -370 -60 -150 -60 {lab=OUT-}
N -370 30 -370 60 {lab=OUT+}
N -370 60 -150 60 {lab=OUT+}
N -150 10 -150 60 {lab=OUT+}
N -150 -110 -150 -60 {lab=OUT-}
N 970 10 970 20 {}
N 970 -20 970 -10 {}
N 1220 -10 1240 -10 {}
N 1220 10 1240 10 {}
C {/home/tom/repositories/amsat_txrx_ic/design/vco_delaycell/vco_delaycell.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -530 0 0 0 {name=VDD value="1.8"}
C {vsource.sym} -440 0 0 0 {name=VCTL value=0}
C {/home/tom/repositories/amsat_txrx_ic/design/vco_delaycell/vco_delaycell.sym} 720 0 0 0 {name=x3}
C {/home/tom/repositories/amsat_txrx_ic/design/vco_delaycell/vco_delaycell.sym} 1080 0 0 0 {name=x4}
C {lab_wire.sym} 1170 10 0 1 {name=l2 sig_type=std_logic lab=OUT-}
C {lab_wire.sym} 1170 -10 0 1 {name=l3 sig_type=std_logic lab=OUT+}
C {lab_wire.sym} -440 -120 0 1 {name=l4 sig_type=std_logic lab=CTL}
C {code_shown.sym} -330 200 0 0 {name=CONTROL value="* .control
* save all
* tran 5n 100u uic
* write led_driver.raw
* .endc
* .save all
.include \\"xh018/xh018.lib\\"
.tran 0.1n 1u uic
.measure tran osc_freq freq v(out+) on=1.1 off 0.7 from=0.9u to=1u
*.save all
* .dc VP 0 21 0.01
"}
C {lab_wire.sym} -520 120 0 1 {name=l1 sig_type=std_logic lab=0}
C {isource.sym} -370 0 0 0 {name=I0 value="PWL 0S 0A 1nS 1mA 5nS 0A"}
