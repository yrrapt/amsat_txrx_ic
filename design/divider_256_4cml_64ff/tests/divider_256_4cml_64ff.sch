v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 100 10 300 10 {lab=outn}
N 0 -100 0 -60 {lab=VDD}
N -580 -100 0 -100 {lab=VDD}
N -580 -100 -580 -30 {lab=VDD}
N -250 10 -250 50 {lab=inn}
N 0 150 300 150 {lab=0}
N -580 30 -580 150 {lab=0}
N -250 110 -250 150 {lab=0}
N 300 120 300 150 {lab=0}
N -510 150 -250 150 {lab=0}
N -250 10 -100 10 {lab=inn}
N -510 -10 -510 50 {lab=inp}
N -510 -10 -100 -10 {lab=inp}
N -510 110 -510 150 {lab=0}
N 0 60 0 150 {lab=0}
N 300 10 300 60 {lab=outn}
N -250 150 0 150 {lab=0}
N -580 150 -510 150 {lab=0}
N 100 -10 300 -10 {lab=outp}
N 380 -10 380 60 {lab=outp}
N 300 -10 380 -10 {lab=outp}
N 380 120 380 150 {lab=0}
N 300 150 380 150 {lab=0}
C {vsource.sym} -250 80 0 0 {name=V1 value="pulse(0 1.8 0ns 1ps 1ps 0.25ns 0.5ns)"}
C {vsource.sym} -580 0 0 0 {name=Vdd value=1.8}
C {capa.sym} 300 90 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -580 -100 0 1 {name=l1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -160 10 0 1 {name=l2 sig_type=std_logic lab=inn}
C {lab_wire.sym} 140 10 0 1 {name=l6 sig_type=std_logic lab=outn}
C {lab_wire.sym} -580 150 0 1 {name=l7 sig_type=std_logic lab=0}
C {code.sym} 230 -140 0 0 {name=STIMULI
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
.tran  0.1e-9 10e-6 uic
*.dc Vdd 1.8 1.8 0.25
"}
C {vsource.sym} -510 80 0 0 {name=V2 value="pulse(0 1.8 0.25ns 1ps 1ps 0.25ns 0.5ns)"}
C {lab_wire.sym} -160 -10 0 1 {name=l3 sig_type=std_logic lab=inp}
C {lab_wire.sym} 140 -10 0 1 {name=l4 sig_type=std_logic lab=outp}
C {capa.sym} 380 90 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {divider_256_4cml_64ff/divider_256_4cml_64ff.sym} 0 0 0 0 {name=x1}
