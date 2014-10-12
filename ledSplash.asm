.include "tn15def.inc"

rjmp reset
reti
reti
reti
reti
rjmp timer0
reti
reti
reti

reset:
	ldi r31,(1<<cs00 )| (1<<cs02)
	out tccr0,r31

	ldi r31,1<<toie0
	out timsk,r31

	sei

	ldi r31,0b100
	out ddrb,r31
	lp:
		rjmp lp
timer0:
	com r31
	out portb,r31
	reti
	
	
