v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 0 -360 0 -220 {lab=vdd}
N 0 -160 0 0 {lab=0}
N 360 0 520 0 {lab=0}
N 0 -360 340 -360 {lab=vdd}
N 150 -160 300 -160 {lab=gate}
N 520 -120 520 0 {lab=0}
N 520 -240 560 -240 {lab=out}
N 520 -240 520 -180 {lab=out}
N 150 -50 150 0 {lab=0}
N 150 -160 150 -110 {lab=gate}
N 340 -130 340 0 {lab=0}
N 340 -160 360 -160 {lab=0}
N 360 -160 360 0 {lab=0}
N 340 -240 340 -190 {lab=#net1}
N 340 -360 340 -300 {lab=vdd}
N 0 0 150 0 {lab=0}
N 150 0 340 0 {lab=0}
N 340 0 360 0 {lab=0}
C {vsource.sym} 0 -190 0 0 {name=Vdd value=\{vdd\}}
C {code.sym} 0 -520 0 0 {name=simulation only_toplevel=true value="
.param temp=27
.temp 27

.lib sky130_fd_pr/models/sky130.lib.spice tt

.param vdd=1.8
.param bias=1u

.options savecurrents

.save all @m.xmcurr.msky130_fd_pr__pfet_01v8_lvt[vdsat] @m.xmcurr.msky130_fd_pr__pfet_01v8_lvt[vth] @m.xmcurr.msky130_fd_pr__pfet_01v8_lvt[gm]

.dc vgate 0.5 0.9 0.01
.noise v(out) Vgate dec 10 1 100Meg
"}
C {lab_wire.sym} 0 0 0 1 {name=l1 sig_type=std_logic lab=0}
C {lab_wire.sym} 0 -360 0 1 {name=l2 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 250 -160 0 1 {name=l3 sig_type=std_logic lab=gate}
C {vsource.sym} 150 -80 0 0 {name=Vgate value="DC=0.8 AC=1"}
C {ccvs.sym} 520 -150 0 0 {name=H1 vnam=Vout value=1}
C {vsource.sym} 340 -270 0 0 {name=Vout value=0.7}
C {lab_wire.sym} 520 -240 0 1 {name=l4 sig_type=std_logic lab=out}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 320 -160 0 0 {name=XM model=mos m=1}
