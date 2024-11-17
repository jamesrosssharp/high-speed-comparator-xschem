v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 60 -590 860 -190 {flags=graph
y1=-1.0272068
y2=6.8310159
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=9.2093924e-07
x2=5.4763849e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="inp
comp_out
x1.vfilt"
color="4 7 12"
dataset=-1
unitx=1
logx=0
logy=0

autoload=1
sim_type=tran}
N -520 -180 -520 -150 {lab=VDD}
N -520 -90 -520 -20 {lab=GND}
N -570 30 -570 60 {
lab=INP}
N -990 30 -990 60 {
lab=CLK}
N -400 260 -310 260 {lab=CLK}
N -400 280 -310 280 {lab=INP}
N -400 300 -310 300 {lab=VDD}
N -400 320 -310 320 {lab=GND}
N -10 260 90 260 {lab=COMP_OUT}
C {vsource.sym} -520 -120 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_wire.sym} -520 -180 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -520 -20 0 0 {name=p7 sig_type=std_logic lab=GND}
C {devices/vsource.sym} -570 90 0 0 {name=VPLUS value="SIN(0.9 0.1 10.7meg 0 0 0)"
spice_ignore=false}
C {devices/lab_pin.sym} -570 30 0 0 {name=p35 lab=INP}
C {code_shown.sym} -1010 -470 0 0 {name=s1 only_toplevel=false format="tcleval( @value )" value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt

.inc /home/jrsharp/home_mnt/asic/sky130_pdk/share/pdk/sky130A/libs.ref/sky130_fd_sc_hd/spice/sky130_fd_sc_hd.spice

.param VDL = 0.9
.param DELTA = 0.1

.option savecurrents
.control
save comp_out x1.vfilt inp clk
tran 0.1n 10u
remzerovec
write comp_test_tran.raw
op
remzerovec
write comp_test_op.raw
.endc


"
}
C {lab_wire.sym} -570 120 0 0 {name=p10 sig_type=std_logic lab=GND}
C {launcher.sym} -150 -640 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/comp_test_tran.raw tran"
}
C {devices/vsource.sym} -990 90 0 0 {name=VCLK1 value="PULSE(0 1.8 0 1NS 1NS 10NS 20NS 0)"
spice_ignore=false}
C {devices/lab_pin.sym} -990 30 0 0 {name=p20 lab=CLK}
C {lab_wire.sym} -990 120 0 0 {name=p21 sig_type=std_logic lab=GND}
C {lab_wire.sym} -350 260 0 0 {name=p1 sig_type=std_logic lab=CLK}
C {lab_wire.sym} -350 280 0 0 {name=p2 sig_type=std_logic lab=INP}
C {lab_wire.sym} -350 300 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -350 320 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_wire.sym} 70 260 0 0 {name=p8 sig_type=std_logic lab=COMP_OUT}
C {1bit_frontend.sym} -160 290 0 0 {name=x1}
