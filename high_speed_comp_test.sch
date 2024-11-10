v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 60 -590 860 -190 {flags=graph
y1=-0.95326635
y2=2.0542563
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2.8118125e-08
x2=2.4687819e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="inp
inn
vgn_minus
vgn_plus
vlat_plus
vlat_minus"
color="4 7 12 10 15 21"
dataset=-1
unitx=1
logx=0
logy=0
rawfile=$netlist_dir/comp_test_tran.raw
autoload=1
sim_type=tran}
N -220 -50 -140 -50 {lab=VDD}
N -230 10 -140 10 {lab=GND}
N -210 -10 -140 -10 {lab=INP}
N -210 -30 -140 -30 {lab=INN}
N -520 -180 -520 -150 {lab=VDD}
N -520 -90 -520 -20 {lab=GND}
N -570 30 -570 60 {
lab=INP}
N -390 30 -390 60 {
lab=INN}
N 160 -40 260 -40 {lab=VGN_PLUS}
N 160 0 270 0 {lab=VGN_MINUS}
N -220 240 -120 240 {lab=INP}
N -220 260 -120 260 {lab=INN}
N -220 200 -120 200 {lab=VDD}
N -220 280 -120 280 {lab=GND}
N 180 230 300 230 {lab=VLAT_PLUS}
N 180 250 300 250 {lab=VLAT_MINUS}
N -220 220 -120 220 {lab=CLK}
N -990 30 -990 60 {
lab=CLK}
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
C {code_shown.sym} -930 -440 0 0 {name=s1 only_toplevel=false format="tcleval( @value )" value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.param VDL = 1.5
.param DELTA = 0.05

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
C {launcher.sym} -230 -390 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comp_test_tran.raw tran"
}
C {preamp.sym} 10 -20 0 0 {name=x1}
C {lab_wire.sym} 240 -40 0 0 {name=p3 sig_type=std_logic lab=VGN_PLUS}
C {lab_wire.sym} 240 0 0 0 {name=p12 sig_type=std_logic lab=VGN_MINUS}
C {lab_wire.sym} -170 200 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -170 280 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_wire.sym} 290 230 0 0 {name=p18 sig_type=std_logic lab=VLAT_PLUS}
C {lab_wire.sym} 280 250 0 0 {name=p19 sig_type=std_logic lab=VLAT_MINUS}
C {strong_arm_latch.sym} 30 240 0 0 {name=x2}
C {lab_wire.sym} -180 220 0 0 {name=p17 sig_type=std_logic lab=CLK}
C {devices/vsource.sym} -990 90 0 0 {name=VCLK1 value="pwl
+0 0
+20n 0
+20.1n 1.8
+29.9n   1.8
+30n 0
+40n 0
+40.1n 1.8
+49.9n   1.8
+50n 0
+60n 0
+60.1n 1.8
+69.9n   1.8
+70n 0
+80n 0
+80.1n 1.8
+89.9n   1.8
+90n 0
+100n 0
+100.1n 1.8
+109.9n   1.8
+110n 0
+120n 0
+120.1n 1.8
+129.9n   1.8
+130n 0
+140n 0
+140.1n 1.8
+149.9n   1.8
+150n 0
+160n 0
+160.1n 1.8
+169.9n   1.8
+170n 0
+180n 0
+180.1n 1.8
+189.9n   1.8
+190n 0
+200n 0
+200.1n 1.8
+209.9n   1.8
+210n 0
+220n 0
+220.1n 1.8
+229.9n   1.8
+230n 0
+240n 0
"
spice_ignore=false}
C {devices/lab_pin.sym} -990 30 0 0 {name=p20 lab=CLK}
C {lab_wire.sym} -990 120 0 0 {name=p21 sig_type=std_logic lab=GND}
C {lab_wire.sym} -190 260 0 0 {name=p13 sig_type=std_logic lab=INN}
C {lab_wire.sym} -190 240 0 0 {name=p14 sig_type=std_logic lab=INP}
