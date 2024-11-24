v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 400 -80 400 110 {lab=VOUT}
N 380 30 400 30 {lab=VOUT}
N 220 30 320 30 {lab=#net1}
N 220 10 220 30 {lab=#net1}
N 220 -110 220 -50 {lab=#net2}
N 220 -110 360 -110 {lab=#net2}
N 100 -80 100 -30 {lab=#net2}
N 100 -60 180 -60 {lab=#net2}
N 180 -60 220 -60 {lab=#net2}
N 400 -200 400 -140 {lab=VDD}
N -160 -200 400 -200 {lab=VDD}
N -160 -200 -160 -140 {lab=VDD}
N 100 -200 100 -140 {lab=VDD}
N -120 -110 60 -110 {lab=#net3}
N -110 -110 -110 -60 {lab=#net3}
N -160 -60 -110 -60 {lab=#net3}
N -160 -80 -160 -60 {lab=#net3}
N -160 -60 -160 -30 {lab=#net3}
N 100 30 100 70 {lab=#net4}
N -160 70 100 70 {lab=#net4}
N -160 30 -160 70 {lab=#net4}
N -30 80 -30 110 {lab=#net4}
N 400 170 400 220 {lab=VSS}
N -30 220 400 220 {lab=VSS}
N -30 170 -30 220 {lab=VSS}
N 170 -20 200 -20 {lab=VSS}
N 170 -20 170 220 {lab=VSS}
N -30 70 -30 80 {lab=#net4}
N -170 140 360 140 {lab=VB}
N 140 -0 140 100 {lab=VINP}
N -240 100 140 100 {lab=VINP}
N -240 -0 -200 -0 {lab=VINN}
N -240 -200 -160 -200 {lab=VDD}
C {sky130_fd_pr/nfet3_01v8_lvt.sym} -180 0 0 0 {name=M1
W=50
L=1
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
C {sky130_fd_pr/nfet3_01v8_lvt.sym} 120 0 0 1 {name=M2
W=50
L=1
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
C {sky130_fd_pr/pfet3_01v8.sym} -140 -110 0 1 {name=M5
W=10
L=1
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
C {sky130_fd_pr/pfet3_01v8.sym} 80 -110 0 0 {name=M6
W=10
L=1
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
C {sky130_fd_pr/pfet3_01v8.sym} 380 -110 0 0 {name=M7
W=20
L=1
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
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 220 -20 0 0 {name=R1
L=1
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/cap_mim_m3_2.sym} 350 30 3 0 {name=C1 model=cap_mim_m3_2 W=50 L=50 MF=1 spiceprefix=X}
C {ipin.sym} -240 -200 0 0 {name=p1 lab=VDD}
C {ipin.sym} -240 0 0 0 {name=p2 lab=VINN}
C {ipin.sym} -240 100 0 0 {name=p3 lab=VINP}
C {ipin.sym} -170 140 0 0 {name=p4 lab=VB}
C {ipin.sym} -30 220 0 0 {name=p5 lab=VSS}
C {opin.sym} 400 30 0 0 {name=p6 lab=VOUT}
C {sky130_fd_pr/nfet3_01v8.sym} -50 140 0 0 {name=M3
W=10
L=1
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
C {sky130_fd_pr/nfet3_01v8.sym} 380 140 0 0 {name=M4
W=10
L=1
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
