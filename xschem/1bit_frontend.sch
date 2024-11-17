v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 90 100 130 100 {lab=VOUT}
N 130 -60 130 100 {lab=VOUT}
N 90 -60 130 -60 {lab=VOUT}
N 130 -60 220 -60 {lab=VOUT}
N -280 100 -210 100 {lab=VFILT}
N -280 -20 -280 100 {lab=VFILT}
N -280 -20 -210 -20 {lab=VFILT}
N -260 20 -210 20 {lab=VSS}
N -260 -0 -210 -0 {lab=VDD}
N 90 120 160 120 {lab=VSS}
N -340 -40 -210 -40 {lab=VIN}
N -340 -60 -210 -60 {lab=CLK}
C {high_speed_comp_top.sym} -60 -20 0 0 {name=x1}
C {filter.sym} -60 110 0 1 {name=x2}
C {ipin.sym} -340 -60 0 0 {name=p1 lab=CLK}
C {ipin.sym} -340 -40 0 0 {name=p2 lab=VIN}
C {ipin.sym} -260 0 0 0 {name=p3 lab=VDD}
C {ipin.sym} -260 20 0 0 {name=p4 lab=VSS}
C {opin.sym} 220 -60 0 0 {name=p5 lab=VOUT}
C {lab_wire.sym} 150 120 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -240 100 0 0 {name=p7 sig_type=std_logic lab=VFILT}
