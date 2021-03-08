v { version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 -80 -0 0 { lab=GND}
N 0 -270 180 -270 { lab=#net1}
N 0 -270 0 -140 { lab=#net1}
N 100 -120 140 -120 { lab=GND}
N 100 -120 100 -0 { lab=GND}
N 180 -110 180 -80 { lab=#net2}
N 180 -20 180 -0 { lab=GND}
N 100 -0 180 -0 { lab=GND}
N 0 -0 100 -0 { lab=GND}
N 180 -190 180 -170 { lab=#net3}
N 180 -270 180 -250 { lab=#net1}
C {sky130_fd_pr/cap_var_hvt.sym} 180 -140 0 0 {name=C1 model=cap_var_hvt W=5.0 L=0.5 VM=1 spiceprefix=X}
C {vsource.sym} 0 -110 0 0 {name=V1 value="0.9 ac=1"}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {vsource.sym} 180 -50 0 0 {name=Vctl
 value=\{Vctl\}}
C {code.sym} 350 -180 0 0 {name=s1 only_toplevel=false value="
.param temp=27
.param Vctl=0.9
.lib sky130_fd_pr/models/sky130.lib.spice tt
.inc sky130_fd_pr/cells/cap_var_hvt/sky130_fd_pr__cap_var_hvt.model.spice
*.ac dec 10 10 1000e9

.control
let ctl = 0.0

while ctl le 1.8
    alter Vctl ctl
    ac dec 100 100e6 1000e9
    *meas ac result find frequency when max l1#branch
    meas ac result max_at l1#branch
    print result 
    let ctl = ctl + 0.2
end
plot ac1.l1#branch ac2.l1#branch ac3.l1#branch ac4.l1#branch ac5.l1#branch ac6.l1#branch ac7.l1#branch ac8.l1#branch ac9.l1#branch ac10.l1#branch
.endc
"}
C {ind.sym} 180 -220 0 0 {name=L1
m=1
value=10n
footprint=1206
device=inductor}
