*SPICE circuit <OSC> from XCircuit v3.9 rev 47

.subckt _invert A Z
M1 Z A GND gnd nfet w=1u l=0.6u m=1
M2 Z A Vdd vdd pfet W=3u L=0.6u M=1
.ends

X1 int3 Z _invert
X2 ext38 int3 _invert
X3 ext37 ext38 _invert
X4 ext36 ext37 _invert
X5 ext35 ext36 _invert
X6 ext34 ext35 _invert
X7 ext33 ext34 _invert
X8 ext32 ext33 _invert
X9 ext31 ext32 _invert
XA ext30 ext31 _invert
XB ext29 ext30 _invert
XC ext28 ext29 _invert
XD ext27 ext28 _invert
XE ext26 ext27 _invert
XF ext25 ext26 _invert
XG ext24 ext25 _invert
XH ext23 ext24 _invert
XI ext22 ext23 _invert
XJ int2 ext22 _invert
XK ext21 int2 _invert
XL ext20 ext21 _invert
XM ext19 ext20 _invert
XN ext18 ext19 _invert
XO ext17 ext18 _invert
XP ext16 ext17 _invert
XQ ext15 ext16 _invert
XR ext14 ext15 _invert
XS ext13 ext14 _invert
XT ext12 ext13 _invert
XU ext11 ext12 _invert
XV ext10 ext11 _invert
XW ext9 ext10 _invert
XX ext8 ext9 _invert
XY ext7 ext8 _invert
XZ ext6 ext7 _invert
X10 ext5 ext6 _invert
X11 Z ext5 _invert

.end
