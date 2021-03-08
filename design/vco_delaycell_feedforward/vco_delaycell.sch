v {xschem version=2.9.7 file_version=1.1}
G {}
V {}
S {}
E {}
N 530 -250 570 -250 {lab=CTL}
N 160 -120 160 -90 {lab=OUTp}
N 450 -120 450 -90 {lab=OUTp}
N 500 -120 560 -60 {lab=OUTp}
N 500 -60 560 -120 {lab=OUTn}
N 450 -120 500 -120 {lab=OUTp}
N 490 -60 500 -60 {lab=OUTn}
N 610 -120 610 -90 {lab=OUTn}
N 560 -120 610 -120 {lab=OUTn}
N 560 -60 570 -60 {lab=OUTp}
N 900 -120 900 -90 {lab=OUTn}
N 900 -160 900 -120 {lab=OUTn}
N 880 -60 900 -60 {lab=GND}
N 900 -30 900 -10 {lab=GND}
N 880 -10 900 -10 {lab=GND}
N 160 -30 160 -10 {lab=GND}
N 160 -60 180 -60 {lab=GND}
N 180 -60 180 -10 {lab=GND}
N 430 -60 450 -60 {lab=GND}
N 430 -60 430 -10 {lab=GND}
N 450 -30 450 -10 {lab=GND}
N 610 -30 610 -10 {lab=GND}
N 610 -60 630 -60 {lab=GND}
N 630 -60 630 -10 {lab=GND}
N 880 -60 880 -10 {lab=GND}
N 360 -250 360 -10 {lab=GND}
N 700 -250 700 -10 {lab=GND}
N 450 -220 450 -200 {lab=OUTp}
N 160 -200 310 -200 {lab=OUTp}
N 310 -200 450 -200 {lab=OUTp}
N 610 -220 610 -200 {lab=OUTn}
N 750 -200 900 -200 {lab=OUTn}
N 430 -250 450 -250 {lab=VDD}
N 430 -300 430 -250 {lab=VDD}
N 430 -300 450 -300 {lab=VDD}
N 450 -300 450 -280 {lab=VDD}
N 290 -250 310 -250 {lab=VDD}
N 290 -300 290 -250 {lab=VDD}
N 290 -300 310 -300 {lab=VDD}
N 310 -300 310 -280 {lab=VDD}
N 160 -250 180 -250 {lab=VDD}
N 180 -300 180 -250 {lab=VDD}
N 160 -300 180 -300 {lab=VDD}
N 160 -300 160 -280 {lab=VDD}
N 610 -250 630 -250 {lab=VDD}
N 630 -300 630 -250 {lab=VDD}
N 610 -300 630 -300 {lab=VDD}
N 610 -300 610 -280 {lab=VDD}
N 750 -250 770 -250 {lab=VDD}
N 770 -300 770 -250 {lab=VDD}
N 750 -300 770 -300 {lab=VDD}
N 750 -300 750 -280 {lab=VDD}
N 880 -250 900 -250 {lab=VDD}
N 880 -300 880 -250 {lab=VDD}
N 880 -300 900 -300 {lab=VDD}
N 900 -300 900 -280 {lab=VDD}
N 770 -300 880 -300 {lab=VDD}
N 630 -300 750 -300 {lab=VDD}
N 450 -300 610 -300 {lab=VDD}
N 310 -300 430 -300 {lab=VDD}
N 180 -300 290 -300 {lab=VDD}
N 80 -60 120 -60 {lab=Pp}
N 940 -60 980 -60 {lab=Pn}
N 900 -160 980 -160 {lab=OUTn}
N 80 -300 160 -300 {lab=VDD}
N 80 -10 160 -10 {lab=GND}
N 530 -250 530 -185 {lab=CTL}
N 80 -150 160 -150 {lab=OUTp}
N 80 -185 530 -185 {lab=CTL}
N 350 -250 360 -250 {lab=GND}
N 700 -250 710 -250 {lab=GND}
N 490 -250 530 -250 {lab=CTL}
N 160 -150 160 -120 {lab=OUTp}
N 900 -200 900 -160 {lab=OUTn}
N 160 -10 180 -10 {lab=GND}
N 360 -10 430 -10 {lab=GND}
N 430 -10 450 -10 {lab=GND}
N 450 -10 610 -10 {lab=GND}
N 610 -10 630 -10 {lab=GND}
N 700 -10 880 -10 {lab=GND}
N 180 -10 360 -10 {lab=GND}
N 630 -10 700 -10 {lab=GND}
N 610 -200 750 -200 {lab=OUTn}
N 160 -200 160 -150 {lab=OUTp}
N 160 -120 450 -120 {lab=OUTp}
N 610 -120 900 -120 {lab=OUTn}
N 310 -220 310 -200 {lab=OUTp}
N 750 -220 750 -200 {lab=OUTn}
N 160 -220 160 -200 {lab=OUTp}
N 80 -250 120 -250 {lab=Sp}
N 900 -220 900 -200 {lab=OUTn}
N 940 -250 980 -250 {lab=Sn}
C {nmos4.sym} 140 -60 0 0 {name=XMprimpos model=sky130_fd_pr__rf_nfet_01v8_bM04W5p00L0p15
}
C {nmos4.sym} 590 -60 0 0 {name=XMcrossneg model=sky130_fd_pr__rf_nfet_01v8_bM04W5p00L0p15
}
C {pmos4.sym} 590 -250 0 0 {name=XMctlneg model=sky130_fd_pr__rf_pfet_01v8_bM02W1p65L0p25
}
C {pmos4.sym} 470 -250 0 1 {name=XMctlpos model=sky130_fd_pr__rf_pfet_01v8_bM02W1p65L0p25
}
C {pmos4.sym} 330 -250 0 1 {name=XMloadpos model=sky130_fd_pr__rf_pfet_01v8_bM02W1p65L0p25
}
C {pmos4.sym} 920 -250 0 1 {name=XMsecdneg model=sky130_fd_pr__rf_pfet_01v8_aF02W0p84L0p15
}
C {pmos4.sym} 140 -250 0 0 {name=XMsecdpos model=sky130_fd_pr__rf_pfet_01v8_aF02W0p84L0p15
}
C {nmos4.sym} 470 -60 0 1 {name=XMcrosspos model=sky130_fd_pr__rf_nfet_01v8_bM04W5p00L0p15
}
C {nmos4.sym} 920 -60 0 1 {name=XMprimneg model=sky130_fd_pr__rf_nfet_01v8_bM04W5p00L0p15
}
C {pmos4.sym} 730 -250 0 0 {name=XMoadneg model=sky130_fd_pr__rf_pfet_01v8_bM02W1p65L0p25
}
C {ipin.sym} 80 -60 0 0 {name=p1 lab=Pp
}
C {ipin.sym} 980 -60 0 1 {name=p2 lab=Pn
}
C {ipin.sym} 80 -250 0 0 {name=p3 lab=Sp
}
C {ipin.sym} 980 -250 0 1 {name=p4 lab=Sn
}
C {opin.sym} 980 -160 0 0 {name=p5 lab=OUTn
}
C {opin.sym} 80 -150 0 1 {name=p6 lab=OUTp
}
C {iopin.sym} 80 -300 0 1 {name=p7 lab=VDD}
C {iopin.sym} 80 -10 0 1 {name=p8 lab=GND
}
C {ipin.sym} 80 -185 0 0 {name=p9 lab=CTL}
