v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -20 -0 30 0 {lab=VFILT}
N -140 -0 -80 -0 {lab=VIN}
N 30 60 30 80 {lab=VSS}
N -50 20 -50 80 {lab=VSS}
N -140 80 30 80 {lab=VSS}
N 30 -0 90 -0 {lab=VFILT}
C {sky130_fd_pr/cap_mim_m3_2.sym} 30 30 0 0 {name=C1 model=cap_mim_m3_2 W=50 L=50 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -50 0 3 0 {name=R1
L=20
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {opin.sym} 90 0 0 0 {name=p1 lab=VFILT}
C {ipin.sym} -140 0 0 0 {name=p2 lab=VIN}
C {ipin.sym} -140 80 0 0 {name=p3 lab=VSS}
