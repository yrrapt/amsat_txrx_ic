v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N -90 10 -90 90 {lab=in_n}
N -90 10 -10 10 {lab=in_n}
N -150 -10 -150 90 {lab=in_p}
N -150 -10 -10 -10 {lab=in_p}
N -260 30 -10 30 {lab=#net1}
N -300 -30 -300 0 {lab=#net1}
N -300 -30 -230 -30 {lab=#net1}
N -230 -30 -230 30 {lab=#net1}
N -300 60 -300 180 {lab=0}
N -300 180 60 180 {lab=0}
N 60 40 60 180 {lab=0}
N -90 150 -90 180 {lab=0}
N -150 150 -150 180 {lab=0}
N -320 30 -300 30 {lab=0}
N -320 30 -320 180 {lab=0}
N -320 180 -300 180 {lab=0}
N -300 -80 -300 -30 {lab=#net1}
N -440 -10 -440 180 {lab=0}
N -440 180 -320 180 {lab=0}
N -440 -190 -440 -70 {lab=#net2}
N -440 -190 60 -190 {lab=#net2}
N 60 -190 60 -40 {lab=#net2}
N -300 -190 -300 -140 {lab=#net2}
N 60 -190 460 -190 {lab=#net2}
N 460 -190 460 -80 {lab=#net2}
N 360 -190 360 20 {lab=#net2}
N 460 -20 460 180 {lab=0}
N 60 180 460 180 {lab=0}
N 360 80 360 180 {lab=0}
N 360 50 380 50 {lab=0}
N 380 50 380 180 {lab=0}
N 460 -50 480 -50 {lab=0}
N 480 -50 480 180 {lab=0}
N 460 180 480 180 {lab=0}
N 120 -10 280 -10 {lab=out_n}
N 280 -50 280 -10 {lab=out_n}
N 280 -50 420 -50 {lab=out_n}
N 120 10 280 10 {lab=out_p}
N 280 10 280 50 {lab=out_p}
N 280 50 320 50 {lab=out_p}
C {rf_bufferdiff/rf_bufferdiff.sym} 60 0 0 0 {name=x1}
C {nmos4.sym} -280 30 0 1 {name=XM1 model=sky130_fd_pr__nfet_01v8 w=1 l=0.5 m=1}
C {vsource.sym} -90 120 0 0 {name=Vin_n value="pulse(1.8 0 0 41.67p 41.67p 166.68p 416.7p 0)"}
C {vsource.sym} -150 120 0 0 {name=Vin_p value="pulse(0 1.8 0 41.67p 41.67p 166.68p 416.7p 0)"}
C {isource.sym} -300 -110 0 0 {name=I0 value=1u}
C {vsource.sym} -440 -40 0 0 {name=V1 value=1.8}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 340 50 0 0 {name=XM2 model=sky130_fd_pr__rf_nfet_01v8_bM02W1p65L0p15 m=1}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 440 -50 0 0 {name=XM3 model=sky130_fd_pr__rf_nfet_01v8_bM02W1p65L0p15 m=1}
C {lab_wire.sym} -440 180 0 1 {name=l1 sig_type=std_logic lab=0}
C {lab_wire.sym} -90 -10 0 1 {name=l2 sig_type=std_logic lab=in_p}
C {lab_wire.sym} -90 10 0 1 {name=l3 sig_type=std_logic lab=in_n}
C {lab_wire.sym} 120 -10 0 1 {name=l4 sig_type=std_logic lab=out_n}
C {lab_wire.sym} 120 10 0 1 {name=l5 sig_type=std_logic lab=out_p}
C {code_shown.sym} -440 240 0 0 {name=CONTROL value="
.param temp=27
.lib sky130_fd_pr/models/sky130.lib.spice tt
.tran 0.001n 10n uic
"}
