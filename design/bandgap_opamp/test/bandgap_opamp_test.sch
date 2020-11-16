v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 430 -110 470 -110 { lab=#net1}
N 430 -210 430 -110 { lab=#net1}
N 430 -210 530 -210 { lab=#net1}
N 530 -110 810 -110 { lab=ac}
N 810 -230 810 -110 { lab=ac}
N 710 -230 810 -230 { lab=ac}
N 630 -170 630 0 { lab=GND}
N 0 0 630 0 { lab=GND}
N 0 -190 0 0 { lab=GND}
N 0 -450 0 -250 { lab=#net2}
N 0 -450 630 -450 { lab=#net2}
N 630 -450 630 -290 { lab=#net2}
N 600 -330 600 -290 { lab=#net3}
N 520 -330 600 -330 { lab=#net3}
N 520 -350 520 -330 { lab=#net3}
N 520 -450 520 -410 { lab=#net2}
N 90 -250 90 -180 { lab=#net4}
N 90 -250 530 -250 { lab=#net4}
N 90 -120 90 0 { lab=GND}
N 380 -110 430 -110 { lab=#net1}
N 240 -110 320 -110 { lab=#net5}
N 240 -110 240 -70 { lab=#net5}
N 240 -10 240 0 { lab=GND}
C {vsource.sym} 0 -220 0 0 {name=V1 value=1.8}
C {bandgap_opamp_twostage_simple/bandgap_opamp_twostage_simple.sym} 630 -230 0 0 {name=xdut}
C {isource.sym} 520 -380 0 0 {name=I0 value=5u}
C {vsource.sym} 90 -150 0 0 {name=V2 value="dc=0.54 ac=0"}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 710 -230 0 1 {name=l2 sig_type=std_logic lab=ac}
C {code.sym} 710 -400 0 0 {name=s1 only_toplevel=false value="
.include sky130_fd_pr/models/corners/tt.spice
*.lib "sky130_fd_pr/models/sky130.lib.spice" tt



.temp 125

*.save @M.X1.XMdiff.msky130_fd_pr__pfet_01v8_lvt[vdsat] @M.X1.XMfold.msky130_fd_pr__nfet_01v8_lvt[vdsat] @M.X1.XMcas.msky130_fd_pr__nfet_01v8_lvt[vdsat] @M.X1.XMload.msky130_fd_pr__pfet_01v8_lvt[vdsat] @M.X1.XMdiffcurr.msky130_fd_pr__pfet_01v8_lvt[vdsat]

*.save all @M.xdut.xmmnr.msky130_fd_pr__nfet_01v8_lvt[vdsat] @M.xdut.xmmpr.msky130_fd_pr__pfet_01v8_lvt[vdsat] @M.xdut.xmcasn.msky130_fd_pr__nfet_01v8_lvt[gm] @M.xdut.xmcasn.msky130_fd_pr__nfet_01v8_lvt[vdsat] @M.xdut.xmloadmp.msky130_fd_pr__pfet_01v8_lvt[vdsat] @M.xdut.xmdiffn.msky130_fd_pr__pfet_01v8_lvt[gm] @M.xdut.xmgain.msky130_fd_pr__pfet_01v8_lvt[vdsat] @M.xdut.xmgain.msky130_fd_pr__pfet_01v8_lvt[gm] @M.xdut.xmcas_foldn.msky130_fd_pr__nfet_01v8_lvt[vdsat] @M.xdut.xmcurr_foldn.msky130_fd_pr__nfet_01v8_lvt[vdsat] @M.xdut.xmdiffn.msky130_fd_pr__pfet_01v8_lvt[vdsat] @M.xdut.xmloadcp.msky130_fd_pr__pfet_01v8_lvt[vdsat] @M.xdut.xmloadmp.msky130_fd_pr__pfet_01v8_lvt[vdsat]  

.op
.ac dec 10 1 1000Meg

*.tf v(ac) V3

*.dc temp -40 125 1.65

.option savecurrents

.control
  run
  setplot ac1
  set units=degrees
  gnuplot bandgap_opamp_test db(ac) ph(ac)
.endc
"}
C {vsource.sym} 240 -40 0 0 {name=V3 value="dc=0 ac=1"}
C {res.sym} 350 -110 1 0 {name=R1
value="1G ac=1u"
footprint=1206
device=resistor
m=1
ac=1u}
C {res.sym} 500 -110 1 0 {name=R2
value="1u ac=1G"
footprint=1206
device=resistor
m=1
ac=1000Meg}
C {spice_probe.sym} 780 -230 0 0 {name=p1 analysis=tran voltage=0.5429}
C {spice_probe.sym} 90 -250 0 0 {name=p2 analysis=tran voltage=0.54}
C {spice_probe.sym} 430 -210 0 0 {name=p3 analysis=tran voltage=0.5429}
