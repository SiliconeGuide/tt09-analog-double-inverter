v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1050 -210 1850 190 {flags=graph
y1=-0.81119924
y2=3.0629021
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-5.7492455e-08
x2=1.4328577e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="pin_out
out
in"
color="4 5 9"
dataset=-1
unitx=1
logx=0
logy=0
}
N 510 -10 610 -10 {
lab=VSS}
N 510 -30 610 -30 {
lab=#net1}
N 610 -190 610 -150 {
lab=VDD}
N 510 10 700 10 {
lab=out}
N 120 -30 210 -30 {
lab=in}
N 760 10 800 10 {
lab=pin_out}
N 800 10 800 60 {
lab=pin_out}
N 800 10 900 10 {
lab=pin_out}
N 610 -150 610 -90 {
lab=VDD}
C {devices/code.sym} -470 0 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -210 50 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/vsource.sym} -100 -90 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -30 -90 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_wire.sym} -100 -120 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {devices/lab_wire.sym} -30 -120 0 0 {name=p2 sig_type=std_logic lab=vss
}
C {devices/gnd.sym} -100 -60 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -30 -60 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 610 -190 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 610 -10 2 0 {name=p4 sig_type=std_logic lab=VSS
}
C {devices/gnd.sym} 800 120 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 900 10 2 0 {name=p7 sig_type=std_logic lab=pin_out
}
C {devices/simulator_commands_shown.sym} 70 230 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.options savecurrents
vin in 0 pulse 0 1.8 5n 1n 1n 50n 100n

.control
save all
tran 100p 200n

write testbench.raw

.endc

 
"}
C {devices/launcher.sym} -210 130 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/testbench.raw tran"
}
C {double_inverter.sym} 360 -10 0 0 {name=x1}
C {devices/res.sym} 730 10 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 800 90 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 610 10 2 0 {name=p6 sig_type=std_logic lab=out
}
C {devices/ipin.sym} 120 -30 0 0 {name=p8 lab=in}
C {devices/ammeter.sym} 610 -60 0 0 {name=Vmeas savecurrent=true}
