* Example Inverter with Transient Analysis and Measure

.include 'ami05.sp'		;include the MOSFET models
.option temp=20		   	;set the operating temperature
.include 'OSC.spc' 		;include the circuit to be simulated

* our supplies are global to the hierarchy
.global vdd gnd



Cload Z 0 10f 			; capacitive load on inverter output

VDD vdd 0  EXP (1 5 2000NS 500NS 10us 2000NS)


GND gnd 0 0 			; define the gndq

.dc TEMP 0 100 0.1		; perform temperture sweep


.tran 1ns 5000ns 2000ns		; perform a 200ns transient analysis



.measure tran tdiff_1V TRIG v(Z) VAL=1*0.9 RISE=15 TARG v(Z) VAL=1*0.9 RISE=16;

.measure tran tdiff_1_5V TRIG v(Z) VAL=1.5*0.9 RISE=15 TARG v(Z) VAL=1.5*0.9 RISE=16;

.measure tran tdiff_2V TRIG v(Z) VAL=2*0.9 RISE=15 TARG v(Z) VAL=2*0.9 RISE=16;

.measure tran tdiff_2_5V TRIG v(Z) VAL=2.5*0.9 RISE=15 TARG v(Z) VAL=2.5*0.9 RISE=16;

.measure tran tdiff_3V TRIG v(Z) VAL=3*0.9 RISE=15 TARG v(Z) VAL=3*0.9 RISE=16;

.measure tran tdiff_3_5V TRIG v(Z) VAL=3.5*0.9 RISE=15 TARG v(Z) VAL=3.5*0.9 RISE=16;

.measure tran tdiff_4V TRIG v(Z) VAL=4*0.9 RISE=15 TARG v(Z) VAL=4*0.9 RISE=16;

.measure tran tdiff_4_5V TRIG v(Z) VAL=4.5*0.9 RISE=15 TARG v(Z) VAL=4.5*0.9 RISE=16;

.measure tran tdiff_5V TRIG v(Z) VAL=5*0.9 RISE=30 TARG v(Z) VAL=5*0.9 RISE=31;


.END

