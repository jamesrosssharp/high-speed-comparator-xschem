v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -320 80 -120 80 {lab=VSS}
N -120 80 30 80 {lab=VSS}
N 230 -250 230 -240 {lab=VDD}
N 110 -250 110 -180 {lab=VDD}
N 110 -120 110 -90 {lab=#net1}
N -40 -180 -40 -90 {lab=#net2}
N -40 -250 -40 -240 {lab=VDD}
N 30 80 360 80 {lab=VSS}
N 360 70 360 80 {lab=VSS}
N 230 70 230 80 {lab=VSS}
N 30 70 30 80 {lab=VSS}
N -40 -30 110 -30 {lab=#net3}
N -200 70 -200 80 {lab=VSS}
N -200 -250 -200 -150 {lab=VDD}
N -200 -90 -200 10 {lab=VB}
N -200 -20 -140 -20 {lab=VB}
N -140 -20 -140 40 {lab=VB}
N -160 40 -10 40 {lab=VB}
N 30 -30 30 10 {lab=#net3}
N -140 0 180 -0 {lab=VB}
N 180 -0 180 40 {lab=VB}
N 180 40 190 40 {lab=VB}
N 180 0 310 -0 {lab=VB}
N 310 -0 310 40 {lab=VB}
N 310 40 320 40 {lab=VB}
N 230 -180 230 10 {lab=VGN_PLUS}
N 360 -120 360 10 {lab=VGN_MINUS}
N 360 -250 360 -180 {lab=VDD}
N -320 -250 360 -250 {lab=VDD}
N -0 -210 -0 -170 {lab=#net2}
N -40 -170 -0 -170 {lab=#net2}
N 0 -210 190 -210 {lab=#net2}
N 110 -100 150 -100 {lab=#net1}
N 150 -150 150 -100 {lab=#net1}
N 150 -150 320 -150 {lab=#net1}
N 230 -100 510 -100 {lab=VGN_PLUS}
N 360 -70 510 -70 {lab=VGN_MINUS}
C {sky130_fd_pr/nfet3_01v8.sym} -180 40 0 1 {name=M1
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
C {sky130_fd_pr/nfet3_01v8.sym} 10 40 0 0 {name=M2
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
C {sky130_fd_pr/nfet3_01v8.sym} 210 40 0 0 {name=M3
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
C {sky130_fd_pr/nfet3_01v8.sym} 340 40 0 0 {name=M4
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
C {sky130_fd_pr/nfet3_01v8.sym} -60 -60 0 0 {name=M5
W=50
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
C {sky130_fd_pr/nfet3_01v8.sym} 130 -60 0 1 {name=M6
W=50
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
C {sky130_fd_pr/pfet3_01v8.sym} 130 -150 0 1 {name=M7
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
C {sky130_fd_pr/pfet3_01v8.sym} 210 -210 0 0 {name=M8
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
C {sky130_fd_pr/pfet3_01v8.sym} 340 -150 0 0 {name=M9
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
C {sky130_fd_pr/pfet3_01v8.sym} -20 -210 0 1 {name=M10
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
C {ipin.sym} -320 -250 0 0 {name=p1 lab=VDD}
C {ipin.sym} -320 80 0 0 {name=p2 lab=VSS}
C {ipin.sym} -80 -60 0 0 {name=p3 lab=INP}
C {ipin.sym} 150 -60 0 1 {name=p4 lab=INN}
C {opin.sym} 510 -100 0 0 {name=p5 lab=VGN_PLUS}
C {opin.sym} 510 -70 0 0 {name=p6 lab=VGN_MINUS}
C {lab_wire.sym} -90 0 0 0 {name=p7 sig_type=std_logic lab=VB}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -200 -120 0 0 {name=R1
L=10
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
