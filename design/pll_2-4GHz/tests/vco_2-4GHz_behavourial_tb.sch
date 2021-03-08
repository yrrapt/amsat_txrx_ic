v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 590 -120 620 -120 {lab=Qn}
N 590 -140 620 -140 {lab=Qp}
N 590 -160 620 -160 {lab=In}
N 590 -180 620 -180 {lab=Ip}
N 440 -330 440 -230 {lab=VDD}
N 150 -330 440 -330 {lab=VDD}
N 0 -330 0 -180 {lab=VDD}
N 150 -330 150 -290 {lab=VDD}
N 150 -190 290 -190 {lab=#net1}
N 150 -230 150 -190 {lab=#net1}
N 150 -150 150 -100 {lab=REF}
N 150 -150 290 -150 {lab=REF}
N 440 -70 440 0 {lab=0}
N 150 0 440 0 {lab=0}
N 0 -120 0 0 {lab=0}
N 150 -40 150 0 {lab=0}
N 0 -330 150 -330 {lab=VDD}
N 0 0 150 0 {lab=0}
C {pll_2-4GHz/vco_2-4GHz_behavourial.sym} 440 -150 0 0 {name=x1}
C {vsource.sym} 150 -70 0 0 {name=V1 value="pulse(0 1.8 0ns 1ns 1ns \{period/2\} period)"}
C {vsource.sym} 0 -150 0 0 {name=Vdd value=1.8}
C {isource.sym} 150 -260 0 0 {name=I0 value=10u}
C {lab_wire.sym} 0 -330 0 1 {name=l1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -150 0 1 {name=l2 sig_type=std_logic lab=REF}
C {lab_wire.sym} 590 -180 0 1 {name=l3 sig_type=std_logic lab=Ip}
C {lab_wire.sym} 590 -160 0 1 {name=l4 sig_type=std_logic lab=In}
C {lab_wire.sym} 590 -140 0 1 {name=l5 sig_type=std_logic lab=Qp}
C {lab_wire.sym} 590 -120 0 1 {name=l6 sig_type=std_logic lab=Qn}
C {lab_wire.sym} 0 0 0 1 {name=l7 sig_type=std_logic lab=0}
C {code.sym} 520 -370 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
*.option PARHIER=LOCAL RUNLVL=6 post MODMONTE=1 warn maxwarns=400
*.option ITL4=20000 ITL5=0
* .option sampling_method = SRS 
* .option method=gear

*.lib xh018/xh018.lib tm
.include 'xh018_ng/xh018.lib'

.param period = 270e-9

*.option rshunt = 1.0e3
*.option keepopinfo = 1

.temp 30
.tran  10e-9 10e-3 uic
*.dc Vdd 1.8 1.8 0.25
"}
