v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -470 -220 -470 -130 {
lab=input}
N -430 -190 -430 -160 {
lab=inverted}
N -430 -280 -430 -250 {
lab=VDD}
N -430 -100 -430 -70 {
lab=VSS}
N -430 -280 -340 -280 {
lab=VDD}
N -430 -130 -340 -130 {
lab=VSS}
N -340 -130 -340 -70 {
lab=VSS}
N -430 -70 -340 -70 {
lab=VSS}
N -230 -210 -230 -120 {
lab=inverted}
N -190 -180 -190 -150 {
lab=output}
N -190 -270 -190 -240 {
lab=VDD}
N -190 -90 -190 -60 {
lab=VSS}
N -190 -270 -100 -270 {
lab=VDD}
N -190 -120 -100 -120 {
lab=VSS}
N -100 -120 -100 -60 {
lab=VSS}
N -190 -60 -100 -60 {
lab=VSS}
N -190 -160 -70 -160 {
lab=output}
N -430 -170 -230 -170 {
lab=inverted}
N -500 -180 -470 -180 {
lab=input}
N -340 -280 -340 -220 {
lab=VDD}
N -100 -270 -100 -210 {
lab=VDD}
N -430 -220 -340 -220 {
lab=VDD}
N -190 -210 -100 -210 {
lab=VDD}
C {devices/iopin.sym} -690 -220 2 1 {name=p3 lab=VDD}
C {devices/iopin.sym} -690 -190 2 1 {name=p4 lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} -450 -220 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/nfet_01v8.sym} -450 -130 0 0 {name=M2
L=0.15
W=1
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
C {devices/lab_wire.sym} -430 -70 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -430 -280 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} -210 -210 0 0 {name=M3
L=0.15
W=20
nf=20
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
C {sky130_fd_pr/nfet_01v8.sym} -210 -120 0 0 {name=M4
L=0.15
W=20
nf=20
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
C {devices/lab_wire.sym} -190 -60 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} -190 -270 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/ipin.sym} -500 -180 0 0 {name=p6 lab=input}
C {devices/lab_wire.sym} -230 -170 0 0 {name=p11 sig_type=std_logic lab=inverted}
C {devices/opin.sym} -70 -160 0 0 {name=p10 lab=output
}
