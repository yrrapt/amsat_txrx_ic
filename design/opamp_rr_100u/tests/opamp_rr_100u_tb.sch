v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N -100 -70 -100 -40 {lab=#net1}
N -220 100 -220 140 {lab=out}
N -220 40 -160 40 {lab=out}
N -110 140 170 140 {lab=out}
N 170 20 170 140 {lab=out}
N 0 20 170 20 {lab=out}
N -360 40 -360 90 {lab=in}
N -360 40 -320 40 {lab=in}
N 170 20 260 20 {lab=out}
N -360 150 -360 200 {lab=0}
N -90 200 260 200 {lab=0}
N 260 120 260 200 {lab=0}
N -530 90 -530 200 {lab=0}
N -440 200 -360 200 {lab=0}
N -70 -160 -70 -40 {lab=#net2}
N -100 -160 -70 -160 {lab=#net2}
N -530 -160 -530 30 {lab=#net2}
N -100 -160 -100 -130 {lab=#net2}
N -90 80 -90 200 {lab=0}
N -440 -0 -440 50 {lab=#net3}
N -440 -0 -160 -0 {lab=#net3}
N -440 110 -440 200 {lab=0}
N -220 100 -110 100 {lab=out}
N -110 100 -110 140 {lab=out}
N -260 40 -260 200 {lab=0}
N -220 40 -220 100 {lab=out}
N -260 200 -90 200 {lab=0}
N -530 200 -440 200 {lab=0}
N -530 -160 -100 -160 {lab=#net2}
N -360 200 -260 200 {lab=0}
N -130 140 -130 200 {lab=0}
N 210 60 260 60 {lab=#net4}
N 210 60 210 90 {}
N 210 150 210 200 {}
C {/home/tom/repositories/amsat_txrx_ic/design/opamp_rr_100u/opamp_rr_100u.sym} -50 20 0 0 {name=x1}
C {isource.sym} -100 -100 0 1 {name=I0 value=10u}
C {ind.sym} -160 140 1 0 {name=L1
m=1
value=1e3}
C {capa.sym} -290 40 1 0 {name=C1
m=1
value=1e3}
C {vsource.sym} -360 120 0 0 {name=V1 value=3}
C {vsource.sym} -530 60 0 0 {name=Vdd value=1.8}
C {capa.sym} 260 90 0 0 {name=C2
m=1
value=100p}
C {vsource.sym} -440 80 0 0 {name=V3 value=0.9}
C {lab_wire.sym} -360 40 0 1 {name=l1 sig_type=std_logic lab=in}
C {lab_wire.sym} 240 20 0 1 {name=l2 sig_type=std_logic lab=out}
C {lab_wire.sym} -530 200 0 1 {name=l3 sig_type=std_logic lab=0}
C {code.sym} 120 -170 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
*.option PARHIER=LOCAL RUNLVL=6 post MODMONTE=1 warn maxwarns=400
*.option ITL4=20000 ITL5=0
* .option sampling_method = SRS 
* .option method=gear

*.lib xh018/xh018.lib tm
.include 'xh018_ng/xh018.lib'

*.option rshunt = 1.0e3
.option keepopinfo = 1

.temp 30
.tran  6e-7 0.009 uic
.dc Vdd 1.8 1.8 0.25
"}
C {res.sym} -190 170 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 210 120 0 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
