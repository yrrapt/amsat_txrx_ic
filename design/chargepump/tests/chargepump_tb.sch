v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 220 0 220 60 {lab=out}
N 110 -0 220 0 {lab=out}
N 0 -230 0 -100 {lab=VDD}
N -60 -230 0 -230 {lab=VDD}
N -580 -230 -580 -30 {lab=VDD}
N -250 10 -250 50 {lab=DOWN}
N 0 110 -0 150 {lab=0}
N -250 150 -0 150 {lab=0}
N -580 30 -580 150 {lab=0}
N -250 110 -250 150 {lab=0}
N 220 120 220 150 {lab=0}
N -580 -230 -60 -230 {lab=VDD}
N -580 150 -250 150 {lab=0}
N -0 150 220 150 {lab=0}
N -60 -140 -60 -100 {lab=#net1}
N -60 -230 -60 -200 {lab=VDD}
N -250 10 -110 10 {lab=DOWN}
N -510 -10 -510 50 {lab=UP}
N -510 -10 -110 -10 {lab=UP}
N -510 110 -510 150 {lab=0}
N -0 100 0 110 {lab=0}
C {vsource.sym} -250 80 0 0 {name=V1 value="pulse(0 1.8 0ns 1ns 1ns 50ns 100ns)"}
C {vsource.sym} -580 0 0 0 {name=Vdd value=1.8}
C {isource.sym} -60 -170 0 0 {name=I0 value=10u}
C {capa.sym} 220 90 0 0 {name=C1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -580 -230 0 1 {name=l1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -160 10 0 1 {name=l2 sig_type=std_logic lab=DOWN}
C {lab_wire.sym} 150 0 0 1 {name=l6 sig_type=std_logic lab=out}
C {lab_wire.sym} -580 150 0 1 {name=l7 sig_type=std_logic lab=0}
C {code.sym} 290 -200 0 0 {name=STIMULI
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
.tran  1e-9 10e-6 uic
*.dc Vdd 1.8 1.8 0.25
"}
C {chargepump/chargepump.sym} 0 0 0 0 {name=x1 w_invp=3u l_invp=0.18u w_invn=1u l_invn=0.18u w_currn=1u l_currn=4u w_currp=3u l_currp=4u m_curr=20 w_swn=1u l_swn=0.18u w_swp=3u l_swp=0.18u m_sw=4}
C {vsource.sym} -510 80 0 0 {name=V2 value="pulse(0 1.8 0ns 1ns 1ns 75ns 150ns)"}
C {lab_wire.sym} -160 -10 0 1 {name=l3 sig_type=std_logic lab=UP}
