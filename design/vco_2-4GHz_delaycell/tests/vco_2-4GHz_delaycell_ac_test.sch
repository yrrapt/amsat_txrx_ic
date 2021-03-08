v {xschem version=2.9.8 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 500 -220 510 -220 { lab=GND}
N 500 -220 500 0 { lab=GND}
N 390 -260 390 -120 { lab=#net1}
N 390 -260 510 -260 { lab=#net1}
N 550 -290 550 -270 { lab=#net2}
N 550 -290 620 -290 { lab=#net2}
N 620 -250 640 -250 { lab=#net2}
N 620 -290 620 -250 { lab=#net2}
N 550 -210 550 -190 { lab=#net3}
N 550 -190 620 -190 { lab=#net3}
N 620 -230 640 -230 { lab=#net3}
N 620 -230 620 -190 { lab=#net3}
N 390 -60 390 0 { lab=GND}
N 390 0 500 0 { lab=GND}
N 100 0 390 0 { lab=GND}
N 0 -230 0 0 { lab=GND}
N 100 -230 100 0 { lab=GND}
N 100 -340 100 -290 { lab=#net4}
N 100 -340 700 -340 { lab=#net4}
N 700 -340 700 -300 { lab=#net4}
N 0 -470 730 -470 { lab=#net5}
N 0 -470 0 -290 { lab=#net5}
N 710 -180 710 0 { lab=GND}
N 500 0 710 0 { lab=GND}
N 710 0 1170 0 { lab=GND}
N 1170 -180 1170 0 { lab=GND}
N 1160 -340 1160 -300 { lab=#net4}
N 700 -340 1160 -340 { lab=#net4}
N 730 -470 1190 -470 { lab=#net5}
N 1190 -470 1190 -300 { lab=#net5}
N 0 0 100 0 { lab=GND}
N 800 -250 1100 -250 { lab=#net6}
N 800 -230 1100 -230 { lab=#net7}
N 990 -140 1020 -140 { lab=#net7}
N 970 -100 1020 -100 { lab=#net6}
N 1060 -90 1060 0 { lab=GND}
N 350 -190 550 -190 { lab=#net3}
N 350 -290 550 -290 { lab=#net2}
N 170 -60 170 0 { lab=GND}
N 170 -290 170 -120 { lab=#net8}
N 170 -290 290 -290 { lab=#net8}
N 170 -190 290 -190 { lab=#net8}
N 990 -230 990 -140 { lab=#net7}
N 970 -250 970 -100 { lab=#net6}
N 730 -380 730 -300 { lab=#net9}
N 730 -470 730 -440 { lab=#net5}
N 570 120 600 120 { lab=GND}
N 600 120 600 190 { lab=GND}
N 260 190 600 190 { lab=GND}
N 260 0 260 190 { lab=GND}
N 570 150 570 190 { lab=GND}
N 280 120 530 120 { lab=#net8}
N 280 -190 280 120 { lab=#net8}
N 570 -470 570 30 { lab=#net5}
C {code.sym} 1050 -610 0 0 {name=STIMULI
tclcommand="xschem edit_vi_prop"
value="
.param temp=27
.temp 27


.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aM04W5p00L0p15.spice
.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aM02W3p00L0p15.spice
.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aM02W1p65L0p15.spice
.include sky130_fd_pr/cells/rf_pfet_01v8_lvt/sky130_fd_pr__rf_pfet_01v8_lvt_aM04W5p00L0p35.spice

.include sky130_fd_pr/cells/rf_pfet_01v8/sky130_fd_pr__rf_pfet_01v8_aM02W5p00L0p25.spice

.include sky130_fd_pr/cells/rf_nfet_01v8_lvt/sky130_fd_pr__rf_nfet_01v8_lvt_aF06W3p00L0p15.spice

.include sky130_fd_pr/cells/rf_pfet_01v8/sky130_fd_pr__rf_pfet_01v8_aF02W2p00L0p15.spice


*.lib sky130_fd_pr/models/sky130.lib.spice tt
.include sky130_fd_pr/models/corners/tt.spice

*.option savecurrents

.save i(Vmeas)
.save i(Vmeas1)


.op
.ac dec 10 1 100G

.param vdd=1.8
.param vctl=1.8
"}
C {vco_2-4GHz_delaycell/vco_2-4Ghz_delaycell.sym} 710 -240 0 0 {name=x1}
C {vsource.sym} 100 -260 0 0 {name=V1 value="vctl"}
C {vsource.sym} 0 -260 0 0 {name=Vdd value=vdd}
C {vsource.sym} 390 -90 0 0 {name=V2 value="dc=0 ac=1"}
C {vcvs.sym} 550 -240 0 0 {name=E1 value=1}
C {vsource.sym} 170 -90 0 0 {name=V3 value="dc=\{vdd/2\} ac=0"}
C {vco_2-4GHz_delaycell/vco_2-4Ghz_delaycell.sym} 1170 -240 0 0 {name=x2}
C {vcvs.sym} 1060 -120 0 0 {name=E2 value=1}
C {res.sym} 320 -190 1 0 {name=R1
value="1u ac=1G"
footprint=1206
device=resistor
m=1}
C {res.sym} 320 -290 1 0 {name=R2
value="1u ac=1G"
footprint=1206
device=resistor
m=1}
C {gnd.sym} 0 0 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 1060 -150 0 1 {name=l2 sig_type=std_logic lab=ac}
C {noconn.sym} 1260 -250 0 1 {name=l3}
C {noconn.sym} 1260 -230 0 1 {name=l4}
C {spice_probe.sym} 350 -290 0 0 {name=p1 analysis=tran voltage=0.9}
C {spice_probe.sym} 350 -190 0 0 {name=p2 analysis=tran voltage=0.9}
C {spice_probe.sym} 1010 -250 0 0 {name=p3 analysis=tran voltage=0.03406}
C {spice_probe.sym} 1010 -230 2 1 {name=p5 analysis=tran voltage=0.03406}
C {spice_probe.sym} 1060 -150 0 0 {name=p4 analysis=tran voltage=-2.7756e-17}
C {spice_probe.sym} 100 -340 0 0 {name=p6 analysis=tran voltage=1.8}
C {spice_probe.sym} 100 -470 0 0 {name=p7 analysis=tran voltage=1.8}
C {ammeter.sym} 730 -410 0 0 {name=Vmeas current=0.002034}
C {/home/tom/repositories/amsat_txrx_ic/library/primitives/sky130_fd_pr__rf_nfet.sym} 550 120 0 0 {name=XMprimpos model=sky130_fd_pr__rf_nfet_01v8_lvt_aF06W3p00L0p15 m=8}
C {ammeter.sym} 570 60 0 0 {name=Vmeas1 current=0.01801}
