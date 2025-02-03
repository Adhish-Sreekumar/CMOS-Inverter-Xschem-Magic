v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -100 100 -40 {
lab=vout}
N 100 20 100 60 {
lab=GND}
N 100 -130 140 -130 {
lab=vcc}
N 140 -180 140 -130 {
lab=vcc}
N 100 -180 140 -180 {
lab=vcc}
N 100 -10 140 -10 {
lab=GND}
N 140 -10 140 40 {
lab=GND}
N 100 40 140 40 {
lab=GND}
N 60 -130 60 -10 {
lab=vin}
N 40 -70 60 -70 {
lab=vin}
N 100 -70 180 -70 {
lab=vout}
N 100 -180 100 -160 {
lab=vcc}
C {vsource.sym} -40 -120 0 0 {name=vin value="pulse(0 1.8 1ns 1ns 1ns 1u 2u)"}
C {vsource.sym} -40 20 0 0 {name=vcc value=1.8v }
C {sky130_fd_pr/nfet_01v8.sym} 80 -10 0 0 {name=M1
W=1
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 80 -130 0 0 {name=M2
W=1
L=0.15
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
C {lab_pin.sym} -40 -10 0 0 {name=p1 sig_type=std_logic lab=vcc}
C {lab_pin.sym} -40 -150 0 0 {name=p2 sig_type=std_logic lab=vin}
C {lab_pin.sym} 180 -70 2 0 {name=p3 sig_type=std_logic lab=vout
}
C {lab_pin.sym} 40 -70 0 0 {name=p4 sig_type=std_logic lab=vin}
C {lab_pin.sym} 100 -180 0 0 {name=p5 sig_type=std_logic lab=vcc}
C {gnd.sym} -40 -90 0 0 {name=l1 lab=GND}
C {gnd.sym} -40 50 0 0 {name=l2 lab=GND}
C {gnd.sym} 100 60 0 0 {name=l3 lab=GND}
C {code_shown.sym} 250 -150 0 0 {name=s1 only_toplevel=false value=".control
tran 1u 10u
*dc vin 0 1.8 0.01
.endc"}
C {sky130_fd_pr/corner.sym} 250 -20 0 0 {name=CORNER only_toplevel=false corner=tt}
