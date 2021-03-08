v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 150 30 180 30 {lab=Qn}
N 150 10 180 10 {lab=Qp}
N 150 -10 180 -10 {lab=In}
N 150 -30 180 -30 {lab=Ip}
N 0 -180 0 -80 {lab=VDD}
N -250 -180 -0 -180 {lab=VDD}
N -400 -180 -400 -30 {lab=VDD}
N -250 -180 -250 -140 {lab=VDD}
N -250 -40 -150 -40 {lab=#net1}
N -250 -80 -250 -40 {lab=#net1}
N -250 -0 -250 50 {lab=REF}
N -250 -0 -150 -0 {lab=REF}
N 0 80 -0 150 {lab=0}
N -250 150 -0 150 {lab=0}
N -400 30 -400 150 {lab=0}
N -250 110 -250 150 {lab=0}
N -400 -180 -250 -180 {lab=VDD}
N -400 150 -250 150 {lab=0}
C {pll_2-4GHz/vco_2-4GHz.sym} 0 0 0 0 {name=x1}
C {vsource.sym} -250 80 0 0 {name=V1 value="pulse(0 1.8 0ns 1ns 1ns 75ns 150ns)"}
C {vsource.sym} -400 0 0 0 {name=Vdd value=1.8}
C {isource.sym} -250 -110 0 0 {name=I0 value=10u}
C {lab_wire.sym} -400 -180 0 1 {name=l1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -250 0 0 1 {name=l2 sig_type=std_logic lab=REF}
C {lab_wire.sym} 150 -30 0 1 {name=l3 sig_type=std_logic lab=Ip}
C {lab_wire.sym} 150 -10 0 1 {name=l4 sig_type=std_logic lab=In}
C {lab_wire.sym} 150 10 0 1 {name=l5 sig_type=std_logic lab=Qp}
C {lab_wire.sym} 150 30 0 1 {name=l6 sig_type=std_logic lab=Qn}
C {lab_wire.sym} -400 150 0 1 {name=l7 sig_type=std_logic lab=0}
C {code.sym} 80 -220 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
*.option PARHIER=LOCAL RUNLVL=6 post MODMONTE=1 warn maxwarns=400
*.option ITL4=20000 ITL5=0
* .option sampling_method = SRS 
* .option method=gear

*.lib xh018/xh018.lib tm
.include 'xh018_ng/xh018.lib'

*.option rshunt = 1.0e3
*.option keepopinfo = 1

.temp 30
.tran  0.1e-9 200e-6 uic
*.dc Vdd 1.8 1.8 0.25
"}
