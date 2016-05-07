* Example Inverter with Transient Analysis and Measure

.include 'ami05.sp'		;include the MOSFET models
.option temp=20   		;set the operating temperature
.include 'OSC.spc' 		;include the circuit to be simulated

* our supplies are global to the hierarchy
.global vdd gnd



Cload Z 0 10f 			; capacitive load on inverter output


VDD vdd 0 3.3

GND gnd 0 0 			; define the gndq

.tran 1ns 5000ns 2000ns		; perform a 200ns transient analysis




.measure tran tdiff TRIG v(Z) VAL=3.3*0.9 RISE=15 TARG v(Z) VAL=3.3*0.9 RISE=16;





.END

