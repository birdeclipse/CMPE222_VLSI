*SPICE circuit <OSC> from XCircuit v3.9 rev 47

.subckt invert A Z
M1 Z A GND gnd nfet w=4u l=0.6u m=1
M2 Z A Vdd vdd pfet W=12u L=0.6u M=1
.ends

X1 ext8 Z invert
X2 ext7 ext8 invert
X3 ext6 ext7 invert
X4 ext5 ext6 invert
X5 ext4 ext5 invert
X6 ext3 ext4 invert
X7 Z ext3 invert

.end
