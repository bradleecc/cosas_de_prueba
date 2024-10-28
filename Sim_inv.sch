v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 20 -660 990 -420 {flags=graph
y1=0
y2=1.8
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=1.8
divx=5
subdivx=1
node="vin
vout"
color="7 12"
dataset=-1
unitx=1
logx=0
logy=0
hilight_wave=1}
N 360 -250 360 -190 {
lab=Vout}
N 360 -360 360 -310 {
lab=VDD}
N 280 -280 320 -280 {
lab=Vin}
N 280 -280 280 -160 {
lab=Vin}
N 280 -160 320 -160 {
lab=Vin}
N 360 -220 460 -220 {
lab=Vout}
N 360 -130 360 -80 {
lab=GND}
N 220 -220 280 -220 {
lab=Vin}
N 360 -160 370 -160 {
lab=GND}
N 370 -160 370 -120 {
lab=GND}
N 360 -120 370 -120 {
lab=GND}
N 360 -280 370 -280 {
lab=VDD}
N 370 -320 370 -280 {
lab=VDD}
N 360 -320 370 -320 {
lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 340 -160 0 0 {name=M1
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 340 -280 0 0 {name=M11
L=0.15
W=1
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/vdd.sym} 360 -360 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 360 -80 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 220 -220 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 460 -220 0 1 {name=p2 sig_type=std_logic lab=Vout}
C {sky130_fd_pr/corner.sym} 1030 -90 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/vsource.sym} 60 -250 0 0 {name=VDD value=1.8}
C {devices/gnd.sym} 60 -220 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 60 -280 0 0 {name=l4 lab=VDD}
C {devices/gnd.sym} 60 -80 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 60 -110 0 0 {name=Vin value=1.8}
C {devices/lab_pin.sym} 60 -140 0 1 {name=p3 sig_type=std_logic lab=Vin}
C {devices/code_shown.sym} 570 -380 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
save @m.xm11.msky130_fd_pr__pfet_01v8[gm]
save @m.xm11.msky130_fd_pr__pfet_01v8[id]
save @m.xm11.msky130_fd_pr__pfet_01v8[vgs]
save @m.xm11.msky130_fd_pr__pfet_01v8[cgg]
save @m.xm11.msky130_fd_pr__pfet_01v8[vds]
save @m.xm11.msky130_fd_pr__pfet_01v8[vdsat]
save @m.xm1.msky130_fd_pr__nfet_01v8[gm]
save @m.xm1.msky130_fd_pr__nfet_01v8[id]
save @m.xm1.msky130_fd_pr__nfet_01v8[vgs]
save @m.xm1.msky130_fd_pr__nfet_01v8[vds]
save @m.xm1.msky130_fd_pr__nfet_01v8[cgg]
save @m.xm1.msky130_fd_pr__nfet_01v8[vdsat]
dc Vin 0 1.8 1m
write Sim_inv.raw
set appendwrite
*op
write Sim_inv.raw
.endc
"}
C {devices/title.sym} 160 80 0 0 {name=l6 author="Ming Sun"}
C {devices/ngspice_get_value.sym} 240 -330 0 1 {name=r14 node=v(@m.xm11.msky130_fd_pr__pfet_01v8[vgs])
descr="vgs="}
C {devices/ngspice_get_value.sym} 240 -300 0 1 {name=r1 node=v(@m.xm11.msky130_fd_pr__pfet_01v8[vds])
descr="vds="}
