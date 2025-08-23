v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 945 -180 1745 220 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-5.1911218e-05
x2=0.00021432215
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=i(vmeas)
color=14
dataset=-1
unitx=1
logx=0
logy=0
}
N 50 90 110 90 {
lab=in}
N 410 90 530 90 {
lab=#net1}
N 530 60 530 90 {
lab=#net1}
N 410 110 530 110 {
lab=VSS}
N 410 130 560 130 {
lab=out}
N 560 130 620 130 {
lab=out}
N 680 130 785 130 {
lab=pin_out}
N 695 130 695 210 {
lab=pin_out}
C {devices/vsource.sym} -150 -10 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} -80 -10 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_wire.sym} -150 -40 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} -80 -40 0 0 {name=p2 sig_type=std_logic lab=VSS
}
C {devices/gnd.sym} -150 20 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -80 20 0 0 {name=l2 lab=GND}
C {double_inverter.sym} 260 110 0 0 {name=x1}
C {devices/ipin.sym} 50 90 0 0 {name=p3 lab=in}
C {devices/ammeter.sym} 530 30 0 0 {name=Vmeas savecurrent=true}
C {devices/lab_wire.sym} 530 0 0 0 {name=p4 sig_type=std_logic lab=VDD

}
C {devices/lab_wire.sym} 530 110 2 0 {name=p5 sig_type=std_logic lab=VSS

}
C {devices/simulator_commands_shown.sym} -205 215 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.options savecurrents
vin in 0 pulse 1.8 5n 1n 1n 50n 100n

.control

tran 100p 200n

write untitled.raw

.endc

"}
C {devices/code.sym} -635 75 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -375 120 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {devices/lab_wire.sym} 560 130 2 1 {name=p7 sig_type=std_logic lab=out

}
C {devices/res.sym} 650 130 1 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 695 235 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 695 265 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 785 130 1 0 {name=p6 sig_type=std_logic lab=pin_out

}
