* adder with Transient Analysis and Measure

.include 'ami05.sp'				;include the MOSFET models
.option temp=20		   			;set the operating temperature
.include 'ADDER.spc' 				;include the circuit to be simulated

* our supplies are global to the hierarchy
.param supply_voltage=3.3V
.global vdd gnd



VDD vdd 0 supply_voltage				; define vdd
GND gnd 0 0 						; define the gndq





Va A0 0 PULSE ( 0 3.3 20NS 1NS 1NS 50NS 100NS )		;
Vb A1 0 PULSE ( 0 3.3 20NS 1NS 1NS 50NS 200NS )		;
Vc A2 0 PULSE ( 0 3.3 20NS 1NS 1NS 50NS 800NS )		;
Vd A3 0 PULSE ( 0 3.3 20NS 1NS 1NS 50NS 3200NS )	;

Ve B0 0 0;PULSE ( 0 3.3 20NS 1NS 1NS 20NS 100NS )	;
Vf B1 0 0;PULSE ( 0 3.3 20NS 1NS 1NS 20NS 400NS )	;
Vg B2 0 0;PULSE ( 0 3.3 20NS 1NS 1NS 20NS 1600NS )	;
Vh B3 0 0;PULSE ( 0 3.3 20NS 1NS 1NS 20NS 6400NS )	;
Vi CIN 0 PULSE ( 0 3.3 20NS 1NS 1NS 20NS 6400NS )	;						;

c0 SUM0 0 20f
c1 SUM1 0 20f
c2 SUM2 0 20f
c3 SUM3 0 20f
c4 COUT 0 20f



.tran 100ps 100ns					; perform a 200ns transient analysis


.option acct
.save V(A0) V(A1) V(A2) V(A3)				;INPUT
.save V(B0) V(B1) V(B2) V(B3)				;INPUT
.save V(CIN)						;INPUT
.save V(SUM0) V(SUM1) V(SUM2) V(SUM3) V(COUT)		;INPUT




.param half_supply = '0.5*supply_voltage'
.param slew_low = '0.1*supply_voltage'
.param slew_high = '0.9*supply_voltage'


* measure the input rise to output fall delay
* uses a calculation to compute half of 50% of the supply voltage

.meas tran carry_chain_worst_rise_delay trig v(CIN) val=half_supply rise=1 targ v(COUT) val=half_supply rise=1

.meas tran carry_chain_worst_fall_delay trig v(CIN) val=half_supply fall=1 targ v(COUT) val=half_supply fall=1


.PRINT POWER=PAR('3.3*I(VDD)')



.END

