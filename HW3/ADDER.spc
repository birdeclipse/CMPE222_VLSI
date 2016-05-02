*SPICE circuit <ADDER> from XCircuit v3.9 rev 47

.subckt FULL_ADDER CO SO A B C
M1 CO C! A*B gnd nfet w=3u l=0.6u m=1
M2 CO C A*B vdd pfet W=6u L=0.6u M=1
M3 CO C A+B gnd nfet w=3u l=0.6u m=1
M4 CO C! A+B vdd pfet W=6u L=0.6u M=1
M5 SO C! AXORB gnd nfet w=3u l=0.6u m=1
M6 SO C AXORB vdd pfet W=6u L=0.6u M=1
M7 SO C AXORB! gnd nfet w=3u l=0.6u m=1
M8 SO C! AXORB! vdd pfet W=6u L=0.6u M=1
M9 A+B B! Vdd vdd pfet W=6u L=0.6u M=1
MA A+B A! B gnd nfet w=3u l=0.6u m=1
MB A+B B A vdd pfet W=6u L=0.6u M=1
MC AXORB! B! A! gnd nfet w=3u l=0.6u m=1
MD AXORB! A B! vdd pfet W=6u L=0.6u M=1
ME AXORB! B A gnd nfet w=3u l=0.6u m=1
MF AXORB! A! B vdd pfet W=6u L=0.6u M=1
MG A*B A! GND gnd nfet w=3u l=0.6u m=1
MH A*B A B gnd nfet w=3u l=0.6u m=1
MI A*B B! A vdd pfet W=6u L=0.6u M=1
MJ AXORB A! B gnd nfet w=3u l=0.6u m=1
MK AXORB B! A! vdd pfet W=6u L=0.6u M=1
ML AXORB A B! gnd nfet w=3u l=0.6u m=1
MM AXORB B A vdd pfet W=6u L=0.6u M=1
MN C! C GND gnd nfet w=3u l=0.6u m=1
MO C! C Vdd vdd pfet W=6u L=0.6u M=1
MP B! B GND gnd nfet w=3u l=0.6u m=1
MQ B! B Vdd vdd pfet W=6u L=0.6u M=1
MR A! A GND gnd nfet w=3u l=0.6u m=1
MS A! A Vdd vdd pfet W=6u L=0.6u M=1
.ends

X1 COUT SUM3 A3 B3 int17 FULL_ADDER
X2 int17 SUM2 A2 B2 int15 FULL_ADDER
X3 int15 SUM1 A1 B1 int16 FULL_ADDER
X4 int16 SUM0 A0 B0 CIN FULL_ADDER

.end
