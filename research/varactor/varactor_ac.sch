v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 100 -450 100 -430 { lab=GND}
N 0 -450 100 -450 { lab=GND}
N 0 -370 0 -340 { lab=GND}
N 100 -250 100 -230 { lab=GND}
N 0 -230 100 -230 { lab=GND}
N 140 -280 170 -280 { lab=vtune}
N 170 -340 170 -280 { lab=vtune}
N 140 -400 170 -400 { lab=vtune}
N 140 -340 170 -340 { lab=vtune}
N 0 -310 100 -310 { lab=GND}
N 0 -370 100 -370 { lab=GND}
N 0 -400 100 -400 { lab=GND}
N 0 -340 100 -340 { lab=GND}
N 0 -280 100 -280 { lab=GND}
N 170 -400 170 -340 { lab=vtune}
N 0 -340 0 -310 { lab=GND}
N 0 -400 0 -370 { lab=GND}
N 0 -450 0 -400 { lab=GND}
N 0 -310 0 -280 { lab=GND}
N 0 -230 0 0 { lab=GND}
N 170 -280 170 -150 { lab=vtune}
N 170 -90 170 0 { lab=GND}
N 0 -0 170 0 { lab=GND}
N 0 -280 0 -230 { lab=GND}
C {vsource.sym} 170 -120 0 0 {name=Vtune value="\{Vtune\} ac=1"}
C {lab_wire.sym} 170 -150 0 1 {name=l3 sig_type=std_logic lab=vtune}
C {sky130_fd_pr/pfet_01v8.sym} 120 -340 2 0 {name=M1
L=5
W=5
nf=1
mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 120 -280 2 0 {name=M2
L=5
W=5
nf=1
mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_hvt.sym} 120 -400 2 0 {name=M3
L=5
W=5
nf=1
mult=1
model=pfet_01v8_hvt
spiceprefix=X
}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {code.sym} 370 -400 0 0 {name=s1 only_toplevel=false value="
.param temp=27
.param vtune=0.2
.lib sky130_fd_pr/models/sky130.lib.spice tt
.inc sky130_fd_pr/cells/cap_var_hvt/sky130_fd_pr__cap_var_hvt.model.spice
.ac dec 10 10 100e9

.control

plot vtune#branch

*let Vtune=0.0
*while length le 8u ; problem occurs when changed to 9u
*    alter @m[l] length
*    print length cnt
*    save @m[id] @m[gds]
*    dc vds 0 1.8 0.05 vgs 0 1.8 0.05
*    wrdata output/$&cnt @m[id]/@m[gds]
*    let length=length+0.1u
*end
.endc
"}
