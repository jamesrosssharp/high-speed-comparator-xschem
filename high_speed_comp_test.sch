v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 60 -590 860 -190 {flags=graph
y1=-0.4
y2=1.6
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.5133539e-08
x2=3.443082e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="inp
inn
vgn_minus
vgn_plus"
color="4 7 12 10"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/comp_test_tran.raw
autoload=1
sim_type=tran}
N -220 -50 -130 -50 {lab=VDD}
N -230 10 -140 10 {lab=GND}
N -210 -10 -130 -10 {lab=INP}
N -210 -30 -130 -30 {lab=INN}
N -520 -180 -520 -150 {lab=VDD}
N -520 -90 -520 -20 {lab=GND}
N -570 30 -570 60 {
lab=INP}
N -390 30 -390 60 {
lab=INN}
N 160 -40 260 -40 {lab=VGN_PLUS}
N 160 0 270 0 {lab=VGN_MINUS}
C {lab_wire.sym} -180 -50 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -190 10 0 0 {name=p2 sig_type=std_logic lab=GND}
C {lab_wire.sym} -180 -10 0 0 {name=p4 sig_type=std_logic lab=INP}
C {lab_wire.sym} -180 -30 0 0 {name=p5 sig_type=std_logic lab=INN}
C {vsource.sym} -520 -120 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_wire.sym} -520 -180 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -520 -20 0 0 {name=p7 sig_type=std_logic lab=GND}
C {devices/vsource.sym} -570 90 0 0 {name=VPLUS value='VDL'
spice_ignore=false}
C {devices/lab_pin.sym} -570 30 0 0 {name=p35 lab=INP}
C {devices/vsource.sym} -390 90 0 0 {name=VMINUS value="pwl
+0 'VDL'
+70.2n 'VDL'
+70.5n 'VDL-DELTA'
+109.9n 'VDL-DELTA'
+110.1n 'VDL'
+170.2n 'VDL'
+170.5n 'VDL+DELTA'
+209.9n 'VDL+DELTA'
+210.1n 'VDL'"
spice_ignore=false}
C {devices/lab_pin.sym} -390 30 0 0 {name=p37 lab=INN}
C {code_shown.sym} -1040 -420 0 0 {name=s1 only_toplevel=false format="tcleval( @value )" value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.param VDL = 0.9
.param DELTA = 0.002

.option savecurrents
.control
save all
tran 0.1n 500n
remzerovec
write comp_test_tran.raw
op
remzerovec
write comp_test_op.raw
.endc


"
}
C {lab_wire.sym} -570 120 0 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_wire.sym} -390 120 0 0 {name=p11 sig_type=std_logic lab=GND}
C {launcher.sym} -230 -400 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comp_test_tran.raw tran"
}
C {preamp.sym} 10 -20 0 0 {name=x1}
C {lab_wire.sym} 240 -40 0 0 {name=p3 sig_type=std_logic lab=VGN_PLUS}
C {lab_wire.sym} 240 0 0 0 {name=p12 sig_type=std_logic lab=VGN_MINUS}
