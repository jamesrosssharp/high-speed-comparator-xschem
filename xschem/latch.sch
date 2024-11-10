v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -370 40 -40 40 {lab=VB}
N -0 70 0 80 {lab=VSS}
N -90 -20 -90 10 {lab=net_lat1}
N -90 10 -0 10 {lab=net_lat1}
N -0 10 100 10 {lab=net_lat1}
N 100 -20 100 10 {lab=net_lat1}
N -360 -240 210 -240 {lab=VDD}
N 210 -240 210 -210 {lab=VDD}
N 60 -240 60 -210 {lab=VDD}
N -60 -240 -60 -210 {lab=VDD}
N -210 -240 -210 -210 {lab=VDD}
N -280 -180 -250 -180 {lab=VLAT_PLUS}
N -280 -180 -280 -120 {lab=VLAT_PLUS}
N -280 -120 -210 -120 {lab=VLAT_PLUS}
N -210 -150 -210 -120 {lab=VLAT_PLUS}
N -210 -120 -60 -120 {lab=VLAT_PLUS}
N -60 -150 -60 -120 {lab=VLAT_PLUS}
N -90 -120 -90 -80 {lab=VLAT_PLUS}
N -40 -120 20 -180 {lab=VLAT_PLUS}
N -60 -120 -40 -120 {lab=VLAT_PLUS}
N -20 -180 40 -120 {lab=VLAT_MINUS}
N 40 -120 210 -120 {lab=VLAT_MINUS}
N 210 -150 210 -120 {lab=VLAT_MINUS}
N 60 -150 60 -120 {lab=VLAT_MINUS}
N 100 -120 100 -80 {lab=VLAT_MINUS}
N 250 -180 280 -180 {lab=VLAT_MINUS}
N 280 -180 280 -120 {lab=VLAT_MINUS}
N 210 -120 280 -120 {lab=VLAT_MINUS}
N -90 -100 320 -100 {lab=VLAT_PLUS}
N 100 -80 320 -80 {lab=VLAT_MINUS}
N -370 80 0 80 {lab=VSS}
C {sky130_fd_pr/nfet3_01v8.sym} -20 40 0 0 {name=M1
W=20
L=0.15
body=VSS
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -110 -50 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
body=VSS
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 120 -50 0 1 {name=M3
W=1
L=0.15
nf=1
mult=1
body=VSS
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 40 -180 0 0 {name=M4
W=1
L=0.15
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} 230 -180 0 1 {name=M5
W=1
L=0.15
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -40 -180 0 1 {name=M6
W=1
L=0.15
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet3_01v8.sym} -230 -180 0 0 {name=M7
W=1
L=0.15
body=VDD
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {ipin.sym} -360 -240 0 0 {name=p1 lab=VDD}
C {ipin.sym} -370 80 0 0 {name=p2 lab=VSS}
C {ipin.sym} -130 -50 2 1 {name=p3 lab=VGN_PLUS}
C {ipin.sym} 140 -50 0 1 {name=p4 lab=VGN_MINUS}
C {ipin.sym} -370 40 0 0 {name=p5 lab=VB}
C {opin.sym} 320 -100 0 0 {name=p6 lab=VLAT_PLUS}
C {opin.sym} 320 -80 0 0 {name=p7 lab=VLAT_MINUS}
C {lab_wire.sym} -30 10 0 0 {name=p8 sig_type=std_logic lab=net_lat1}
