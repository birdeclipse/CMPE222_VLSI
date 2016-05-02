* adder with Transient Analysis and Measure

.include 'ami05.sp'				;include the MOSFET models
.option temp=20		   			;set the operating temperature
.include 'FULL_ADDER.spc' 			;include the circuit to be simulated

* our supplies are global to the hierarchy
.param supply_voltage=3.3V
.global vdd gnd



VDD vdd 0 supply_voltage				; define vdd
GND gnd 0 0 						; define the gndq





Va AIN 0 PULSE(0 3.3 0NS 5NS 5NS 20NS 50NS)		; AIN
Vb BIN 0 0					;0 PULSE(3.3 0 0NS 5NS 5NS 30NS)		; BIN
Vc CIN 0 0					;PULSE(3.3 0 0NS 20NS 10NS)		; CIN


.tran 20ps 200ns		; perform a 200ns transient analysis
.PRINT PTOTAL=PAR('3.3*I(VDD)')

.END

