;
; AssemblerApplication2.asm
;
; Created: 2019/6/3 下午 05:15:25
; Author : USER
;


; Replace with your application code
	LDI R20, 0b11111111
	LDI R21, 0
	OUT DDRD, R21
	OUT DDRB, R20
	

M_loop:
	IN R21, PIND
	CPI R21, 0b00000001
	BREQ L0
	CPI R21, 0b00000010
	BREQ L1
	CPI R21, 0b00000100
	BREQ L2
	CPI R21, 0b00001000
	BREQ L3
	CPI R21, 0b00100000
	BREQ L4
	CPI R21, 0b01000000
	BREQ L5
	CPI R21, 0b10000000
	BREQ L6
	JMP EXIT

	//C
L0:
	LDI R20, 0b00100110
	OUT PORTB, R20
	JMP EXIT
	//D
L1:
	LDI R20, 0b00100000
	OUT PORTB, R20
	JMP EXIT
	//E
L2:
	LDI R20, 0b00000110
	OUT PORTB, R20
	JMP EXIT
	//F
L3:
	LDI R20, 0b00001110
	OUT PORTB, R20
	JMP EXIT
	//G
L4:
	LDI R20, 0b00000010
	OUT PORTB, R20
	JMP EXIT
	//A
L5:
	LDI R20, 0b00001000
	OUT PORTB, R20
	JMP EXIT
	//B
L6:
	LDI R20, 0b00000000
	OUT PORTB, R20
	JMP EXIT

EXIT:
	rjmp M_loop