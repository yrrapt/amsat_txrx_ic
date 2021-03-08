v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 280 -280 280 -240 {lab=#net1}
N -0 -280 280 -280 {lab=#net1}
N -0 -280 -0 -220 {lab=#net1}
N 0 -160 -0 0 {lab=0}
N -0 0 280 0 {lab=0}
N 280 -80 280 0 {lab=0}
N 80 -160 80 -110 {lab=#net2}
N 80 -160 180 -160 {lab=#net2}
N 80 -50 80 -0 {lab=0}
N 380 -120 460 -120 {lab=Qn}
N 380 -140 460 -140 {lab=Qp}
N 380 -180 620 -180 {lab=In}
N 380 -200 700 -200 {lab=Ip}
N 280 -0 700 -0 {lab=0}
N 280 -280 920 -280 {lab=#net1}
N 920 -280 920 -250 {lab=#net1}
N 920 -130 920 -0 {lab=0}
N 700 -0 920 -0 {lab=0}
N 700 -200 820 -200 {lab=Ip}
N 620 -180 820 -180 {lab=In}
N 1020 -180 1030 -180 {lab=0}
N 1030 -180 1030 0 {lab=0}
N 920 -0 1030 0 {lab=0}
N 1020 -200 1030 -200 {lab=0}
N 1030 -200 1030 -180 {lab=0}
C {vco_quad/vco_quad.sym} 280 -160 0 0 {name=xvco sec_w=10u load_w=0.22u ctl_w=10u prim_w=30u cross_w=4u}
C {vsource.sym} 80 -80 0 0 {name=V1 value=vctl}
C {vsource.sym} 0 -190 0 0 {name=V2 value=1.8}
C {lab_wire.sym} 420 -120 0 1 {name=l1 sig_type=std_logic lab=Qn}
C {lab_wire.sym} 420 -140 0 1 {name=l2 sig_type=std_logic lab=Qp}
C {lab_wire.sym} 420 -180 0 1 {name=l3 sig_type=std_logic lab=In}
C {lab_wire.sym} 420 -200 0 1 {name=l4 sig_type=std_logic lab=Ip}
C {lab_wire.sym} 0 0 0 1 {name=l5 sig_type=std_logic lab=0}
C {code.sym} 840 -430 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
.include '/home/tom/.xschem/simulations/xh018_ng/xh018.lib'
.temp 30
.param vctl=0.9
.tran  0.1e-9 1e-6 uic
"}
C {divider_256_4cml_64ff/divider_256_4cml_64ff.sym} 920 -190 0 0 {name=x1}
C {noconn.sym} 460 -140 2 0 {name=l6}
C {noconn.sym} 460 -120 2 0 {name=l7}
