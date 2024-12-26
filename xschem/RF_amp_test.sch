v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 60 -590 860 -190 {flags=graph
y1=-0.15203711
y2=1.6263203
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-1.3281687e-07
x2=3.8563846e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0

autoload=1
sim_type=tran
color="12 7"
node="vout
vin"}
N -520 -180 -520 -150 {lab=VDD}
N -520 -90 -520 -20 {lab=GND}
N -570 30 -570 60 {
lab=VIN}
N -570 310 -480 310 {lab=#net1}
N -370 290 -280 290 {lab=VDD}
N -370 370 -280 370 {lab=GND}
N 20 290 120 290 {lab=VOUT}
N -630 -190 -630 -160 {lab=VB}
N -630 -100 -630 -30 {lab=GND}
N -370 350 -280 350 {lab=VB}
N -450 240 -450 290 {lab=GND}
N -110 40 -110 90 {lab=GND}
N 120 110 120 290 {lab=VOUT}
N -380 110 -140 110 {lab=#net2}
N -380 110 -380 310 {lab=#net2}
N -420 310 -280 310 {lab=#net2}
N -370 330 -280 330 {lab=VP}
N -430 -180 -430 -150 {lab=VP}
N -430 -90 -430 -20 {lab=GND}
N -70 110 130 110 {lab=VOUT}
N -80 110 -70 110 {lab=VOUT}
N -690 310 -630 310 {lab=VIN}
C {vsource.sym} -520 -120 0 0 {name=V1 value=1.8 savecurrent=false}
C {lab_wire.sym} -520 -180 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -520 -20 0 0 {name=p7 sig_type=std_logic lab=GND}
C {devices/vsource.sym} -570 90 0 0 {name=VPLUS value="SIN(0.0 0.02 500k)"
spice_ignore=false}
C {devices/lab_pin.sym} -570 30 0 0 {name=p35 lab=VIN}
C {code_shown.sym} -1070 -490 0 0 {name=s1 only_toplevel=false format="tcleval( @value )" value=".lib $::SKYWATER_MODELS/sky130.lib.spice tt


.option savecurrents
.control
save all
tran 0.1n 5u
remzerovec
write rf_test_tran.raw
op
remzerovec
write rf_test_op.raw
.endc


"
}
C {lab_wire.sym} -570 120 0 0 {name=p10 sig_type=std_logic lab=GND}
C {launcher.sym} -150 -630 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/rf_test_tran.raw tran"
}
C {lab_wire.sym} -690 310 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {lab_wire.sym} -320 290 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -320 370 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_wire.sym} 100 290 0 0 {name=p8 sig_type=std_logic lab=VOUT}
C {RF_amp.sym} -130 330 0 0 {name=x1}
C {vsource.sym} -630 -130 0 0 {name=V2 value=0.7 savecurrent=false}
C {lab_wire.sym} -630 -190 0 0 {name=p9 sig_type=std_logic lab=VB}
C {lab_wire.sym} -630 -30 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_wire.sym} -320 350 0 0 {name=p1 sig_type=std_logic lab=VB}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -110 110 1 0 {name=R1
L=35
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -450 310 1 0 {name=R2
L=3.5
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {lab_wire.sym} -450 260 0 0 {name=p3 sig_type=std_logic lab=GND}
C {lab_wire.sym} -110 50 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_wire.sym} -320 330 0 0 {name=p13 sig_type=std_logic lab=VP}
C {vsource.sym} -430 -120 0 0 {name=V3 value=0.9 savecurrent=false}
C {lab_wire.sym} -430 -180 0 0 {name=p14 sig_type=std_logic lab=VP}
C {lab_wire.sym} -430 -20 0 0 {name=p15 sig_type=std_logic lab=GND
value=0.9}
C {capa.sym} -600 310 1 0 {name=C1
m=1
value=1u
footprint=1206
device="ceramic capacitor"}
