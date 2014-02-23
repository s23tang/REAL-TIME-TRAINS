	.file	"wtA4.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"u2g\000"
	.text
	.align	2
	.global	Terminal
	.type	Terminal, %function
Terminal:
	@ args = 0, pretend = 0, frame = 116
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #120
	ldr	sl, .L76
.L75:
	add	sl, pc, sl
	ldr	r3, .L76+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-48]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L74
.L2:
.L74:
	ldr	r0, [fp, #-48]
	mov	r1, #1
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-33]
	ldr	r3, [fp, #-40]
	cmp	r3, #60
	bne	.L3
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L3
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L2
.L3:
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L7
	mov	r3, #2
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L9
.L10:
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L11
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #113
	bne	.L13
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	b	.L15
.L16:
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L17
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L15:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bcc	.L16
.L17:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L45
	mov	r3, #5
	str	r3, [fp, #-60]
	b	.L45
.L13:
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #116
	bne	.L45
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L45
	mvn	r3, #0
	str	r3, [fp, #-28]
	mvn	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	str	r3, [fp, #-32]
	b	.L24
.L25:
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L26
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L28
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L28
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L28
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L32
.L28:
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L33
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L33
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L33
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L33
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L33
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	add	r3, r1, r3
	sub	r3, r3, #528
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-32]
	add	r3, r3, #3
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L32
.L33:
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bne	.L32
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L32
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L32
	mov	r3, #80
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-32]
	add	r3, r3, #3
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L32
.L26:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L24:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bcc	.L25
.L32:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L46
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L45
.L47:
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L48
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L50
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L50
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L53
	ldr	r3, [fp, #-32]
	add	r2, r3, #1
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L50
.L53:
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L55
.L50:
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L55
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L55
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #52
	bhi	.L55
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #38
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L55
.L48:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L46:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bcc	.L47
.L55:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L62
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L45
.L63:
	ldr	r3, [fp, #-32]
	mvn	r2, #115
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L64
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L62:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bcc	.L63
.L64:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L45
	ldr	r3, [fp, #-28]
	cmn	r3, #1
	beq	.L45
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	beq	.L45
	mov	r3, #6
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-52]
	b	.L45
.L11:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L9:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bcc	.L10
.L45:
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L69
.L7:
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L70
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L2
	mov	r3, #4
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	b	.L69
.L70:
	mov	r3, #1
	str	r3, [fp, #-60]
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-40]
	mvn	r2, #115
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-33]
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L69:
	sub	r3, fp, #60
	sub	ip, fp, #72
	mov	r2, #12
	str	r2, [sp, #0]
	ldr	r0, [fp, #-44]
	mov	r1, r3
	mov	r2, #12
	mov	r3, ip
	bl	Send(PLT)
	b	.L2
.L77:
	.align	2
.L76:
	.word	_GLOBAL_OFFSET_TABLE_-(.L75+8)
	.word	.LC0(GOTOFF)
	.size	Terminal, .-Terminal
	.align	2
	.global	Train
	.type	Train, %function
Train:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	ldmfd	sp, {fp, sp, pc}
	.size	Train, .-Train
	.section	.rodata
	.align	2
.LC1:
	.ascii	"clock\000"
	.text
	.align	2
	.global	Timer
	.type	Timer, %function
Timer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #36
	ldr	sl, .L84
.L83:
	add	sl, pc, sl
	ldr	r3, .L84+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
.L81:
	ldr	r3, [fp, #-24]
	mov	r0, r3
	mov	r1, #10
	bl	Delay(PLT)
	mov	r3, #3
	str	r3, [fp, #-36]
	sub	r2, fp, #36
	sub	ip, fp, #48
	mov	r3, #12
	str	r3, [sp, #0]
	ldr	r0, [fp, #-20]
	mov	r1, r2
	mov	r2, #12
	mov	r3, ip
	bl	Send(PLT)
	b	.L81
.L85:
	.align	2
.L84:
	.word	_GLOBAL_OFFSET_TABLE_-(.L83+8)
	.word	.LC1(GOTOFF)
	.size	Timer, .-Timer
	.section	.rodata
	.align	2
.LC2:
	.ascii	"u2x\000"
	.align	2
.LC3:
	.ascii	"u1x \000"
	.align	2
.LC4:
	.ascii	"\033[2J\000"
	.align	2
.LC5:
	.ascii	"\033[H\033[KTIME 00:00:0\000"
	.align	2
.LC6:
	.ascii	"\033[3;1HSwitches\012\000"
	.align	2
.LC7:
	.ascii	"1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|153|15"
	.ascii	"4|155|156\012\000"
	.align	2
.LC8:
	.ascii	"---------------------------------------------------"
	.ascii	"---------\012\000"
	.align	2
.LC9:
	.ascii	"C|C|C|C|C|C|C|C|C|C |C |C |C |C |C |C |C |C | C | C"
	.ascii	" | C | C\000"
	.align	2
.LC10:
	.ascii	"\033[9;1HSensors:  1 = train passing, 0 = nothing\012"
	.ascii	"\000"
	.align	2
.LC11:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\012\000"
	.align	2
.LC12:
	.ascii	"A1 |A2 |A3 |A4 |A5 |A6 |A7 |A8 |A9 |A10|A11|A12|A13"
	.ascii	"|A14|A15|A16\012\000"
	.align	2
.LC13:
	.ascii	" 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 "
	.ascii	"| 0 | 0 | 0 \012\000"
	.align	2
.LC14:
	.ascii	"B1 |B2 |B3 |B4 |B5 |B6 |B7 |B8 |B9 |B10|B11|B12|B13"
	.ascii	"|B14|B15|B16\012\000"
	.align	2
.LC15:
	.ascii	"C1 |C2 |C3 |C4 |C5 |C6 |C7 |C8 |C9 |C10|C11|C12|C13"
	.ascii	"|C14|C15|C16\012\000"
	.align	2
.LC16:
	.ascii	"D1 |D2 |D3 |D4 |D5 |D6 |D7 |D8 |D9 |D10|D11|D12|D13"
	.ascii	"|D14|D15|D16\012\000"
	.align	2
.LC17:
	.ascii	"E1 |E2 |E3 |E4 |E5 |E6 |E7 |E8 |E9 |E10|E11|E12|E13"
	.ascii	"|E14|E15|E16\012\000"
	.align	2
.LC18:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\000"
	.align	2
.LC19:
	.ascii	"\033[33;1H>>\033[33;4H\000"
	.align	2
.LC20:
	.ascii	"\033[H\033[KTIME %d%d:%d%d:%d\033[33;%dH\000"
	.align	2
.LC21:
	.ascii	"\033[32;1H\033[KBAD COMMAND\012\000"
	.align	2
.LC22:
	.ascii	"\033[33;4H\033[K\000"
	.align	2
.LC23:
	.ascii	"\033[33;%dH\033[K\000"
	.align	2
.LC24:
	.ascii	"\033[32;1H\033[KShutting down\012\000"
	.align	2
.LC25:
	.ascii	"\033[32;1H\033[KSetting Train: %d Speed: %d\012\000"
	.text
	.align	2
	.global	Printer
	.type	Printer, %function
Printer:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #84
	ldr	sl, .L105
.L104:
	add	sl, pc, sl
	ldr	r3, .L105+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, .L105+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+12
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+16
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+24
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+32
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+64
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+68
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+72
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, .L105+76
	ldr	r3, [sl, r3]
	str	r3, [fp, #-36]
	mov	r0, #4
	ldr	r1, [fp, #-36]
	bl	Create(PLT)
	ldr	r3, .L105+80
	ldr	r3, [sl, r3]
	str	r3, [fp, #-36]
	mov	r0, #2
	ldr	r1, [fp, #-36]
	bl	Create(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #0
	mov	r2, #96
	bl	Putc(PLT)
	mov	r3, #4
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-20]
.L87:
	sub	r3, fp, #60
	sub	r2, fp, #48
	mov	r0, r2
	mov	r1, r3
	mov	r2, #12
	bl	Receive(PLT)
	ldr	r3, [fp, #-60]
	cmp	r3, #3
	bne	.L88
	ldr	r3, [fp, #-20]
	add	r1, r3, #1
	ldr	r3, .L105+84
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r3, r3, r1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L90
	ldr	r3, [fp, #-24]
	add	r1, r3, #1
	ldr	r3, .L105+88
	smull	r2, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #5
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	rsb	r3, r3, r1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L90
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L90:
	ldr	r1, [fp, #-28]
	ldr	r3, .L105+84
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	ldr	r1, [fp, #-28]
	ldr	r3, .L105+84
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-80]
	ldr	r3, [fp, #-80]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-80]
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-80]
	ldr	r1, [fp, #-24]
	ldr	r3, .L105+84
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r0, r3, r2
	ldr	r1, [fp, #-24]
	ldr	r3, .L105+84
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-76]
	ldr	r3, [fp, #-76]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-76]
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-76]
	ldr	r3, [fp, #-80]
	str	r3, [sp, #0]
	str	r0, [sp, #4]
	ldr	r2, [fp, #-76]
	str	r2, [sp, #8]
	ldr	r3, [fp, #-20]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-32]
	str	r3, [sp, #16]
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+92
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L93
.L88:
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L94
	ldr	r3, [fp, #-56]
	and	r3, r3, #255
	ldr	r0, [fp, #-44]
	mov	r1, #1
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	b	.L93
.L94:
	ldr	r3, [fp, #-60]
	cmp	r3, #2
	bne	.L96
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+96
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+100
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-32]
	b	.L93
.L96:
	ldr	r3, [fp, #-60]
	cmp	r3, #4
	bne	.L98
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+104
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-32]
	bl	myprintf(PLT)
	b	.L93
.L98:
	ldr	r3, [fp, #-60]
	cmp	r3, #5
	bne	.L100
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+108
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+100
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	bl	Quit(PLT)
	bl	Exit(PLT)
	b	.L103
.L100:
	ldr	r3, [fp, #-60]
	cmp	r3, #6
	bne	.L93
	ldr	r3, [fp, #-56]
	and	r3, r3, #255
	ldr	r0, [fp, #-40]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-52]
	and	r3, r3, #255
	ldr	r0, [fp, #-40]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	ip, [fp, #-52]
	ldr	r3, [fp, #-56]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+112
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-44]
	mov	r1, #1
	ldr	r3, .L105+100
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-32]
.L93:
	mov	r3, #0
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-48]
	sub	r2, fp, #72
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L87
.L103:
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L106:
	.align	2
.L105:
	.word	_GLOBAL_OFFSET_TABLE_-(.L104+8)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	.LC6(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	.LC8(GOTOFF)
	.word	.LC9(GOTOFF)
	.word	.LC10(GOTOFF)
	.word	.LC11(GOTOFF)
	.word	.LC12(GOTOFF)
	.word	.LC13(GOTOFF)
	.word	.LC14(GOTOFF)
	.word	.LC15(GOTOFF)
	.word	.LC16(GOTOFF)
	.word	.LC17(GOTOFF)
	.word	.LC18(GOTOFF)
	.word	.LC19(GOTOFF)
	.word	Terminal(GOT)
	.word	Timer(GOT)
	.word	1717986919
	.word	-2004318071
	.word	.LC20(GOTOFF)
	.word	.LC21(GOTOFF)
	.word	.LC22(GOTOFF)
	.word	.LC23(GOTOFF)
	.word	.LC24(GOTOFF)
	.word	.LC25(GOTOFF)
	.size	Printer, .-Printer
	.align	2
	.global	T2
	.type	T2, %function
T2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
.L108:
	b	.L108
	.size	T2, .-T2
	.align	2
	.global	firstUserTask
	.type	firstUserTask, %function
firstUserTask:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	ldr	sl, .L113
.L112:
	add	sl, pc, sl
	ldr	r3, .L113+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L113+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L113+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L113+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L113+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L113+24
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #3
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L113+28
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #9
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L114:
	.align	2
.L113:
	.word	_GLOBAL_OFFSET_TABLE_-(.L112+8)
	.word	nameServer(GOT)
	.word	uart2GetServer(GOT)
	.word	uart2PutServer(GOT)
	.word	uart1PutServer(GOT)
	.word	clockServer(GOT)
	.word	Printer(GOT)
	.word	T2(GOT)
	.size	firstUserTask, .-firstUserTask
	.align	2
	.global	getNextRequest
	.type	getNextRequest, %function
getNextRequest:
	@ args = 0, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	ldr	sl, .L120
.L119:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L120+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L120+8
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #56
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	stmfd sp!, {r0, r4-r9, sl, fp}
	stmfd sp!, {r1}
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x1F
	msr CPSR, r1
	ldr r1, [r0, #0]
	mov sp, r1
	ldmfd sp!, {r4-r9, sl, fp, ip, lr}
	mov r2, sp
	add sp, sp, #16
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x13
	msr CPSR, r1
	ldr r1, [r0, #4]
	msr SPSR, r1
	ldr lr, [r2, #12]
	ldmfd r2, {r1-r3}
	ldr r0, [r0, #8]
	movs pc, lr
.L117:
	stmfd sp!, {r0, r1, lr}
	mov r1, sp
	add sp, sp, #12
	mrs r0, CPSR
	bic r0, r0, #0x1F
	orr r0, r0, #0xd3
	msr CPSR, r0
	ldmfd r1, {r0, r1, lr}
	sub lr, lr, #4
	stmfd sp!, {r0-r4}
	mov r1, #0
	stmfd sp!, {r1}
	b HWres
.L116:
	stmfd sp!, {r0-r4}
	ldr r0, [lr, #-4];
	bic r1, r0, #0xFF000000
	stmfd sp!, {r1}
	HWres:
	ldr r1, [fp, #4]
	str r1, [sp, #20]
	mrs r1, SPSR
	stmfd sp!, {r1}
	mov r2, sp
	stmfd r2!, {lr}
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x1F
	msr CPSR, r1
	ldmfd r2!, {r3}
	stmfd sp!, {r3}
	add r2, r2, #8
	ldmfd r2, {r0-r3}
	stmfd sp!, {r1-r3}
	stmfd sp!, {r4-r9, sl, fp, ip, lr}
	mov ip, sp
	mrs r0, CPSR
	bic r0, r0, #0x1F
	orr r0, r0, #0x13
	msr CPSR, r0
	ldmfd sp!, {r1}
	ldmfd sp!, {r0,r2-r7}
	str r2, [r7, #0]
	str r3, [r7, #4]
	str r4, [r7, #8]
	str r5, [r7, #12]
	str r6, [r7, #16]
	str r0, [r7, #20]
	ldmfd sp!, {r0, r4-r9, sl, fp}
	str ip, [r0, #0]
	str r1, [r0, #4]
	str r2, [r0, #8]
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L121:
	.align	2
.L120:
	.word	_GLOBAL_OFFSET_TABLE_-(.L119+8)
	.word	.L116(GOTOFF)
	.word	.L117(GOTOFF)
	.size	getNextRequest, .-getNextRequest
	.align	2
	.global	copyMsg
	.type	copyMsg, %function
copyMsg:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	str	r0, [fp, #-20]
	str	r1, [fp, #-24]
	str	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L123
.L124:
	ldr	r3, [fp, #-16]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r1, r2, r3
	ldr	r3, [fp, #-16]
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	strb	r3, [r1, #0]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L123:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L124
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	copyMsg, .-copyMsg
	.align	2
	.global	getStackSize
	.type	getStackSize, %function
getStackSize:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	ldr	r3, .L129
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	and	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	rsb	r3, r3, r2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L130:
	.align	2
.L129:
	.word	1104285
	.size	getStackSize, .-getStackSize
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #24
	ldr	sl, .L148
.L147:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L132
.L133:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L132:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L133
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L148+4
	str	r3, [r2, #4]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	str	r3, [r2, #20]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #24]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r2, [fp, #-28]
	mov	r3, #2
	str	r3, [r2, #12]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r3, .L148+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-24]
	b	.L135
.L136:
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L135:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L136
	mov	r3, #14
	str	r3, [fp, #-24]
	b	.L138
.L139:
	ldr	r3, [fp, #-24]
	cmp	r3, #13
	beq	.L140
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
.L140:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L138:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L139
	ldr	r3, [fp, #-32]
	add	r2, r3, #16
	ldr	r3, [fp, #-28]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r2, r3, #16
	ldr	r3, [fp, #-28]
	str	r3, [r2, #4]
	ldr	r2, [fp, #-36]
	mov	r3, #1
	str	r3, [r2, #24]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-28]
	str	r3, [r2, #32]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #36]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L143
.L144:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L143:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L144
	bl	setTrainConnectionn(PLT)
	mrs r0, CPSR
	bic r0, r0, #0x1F
	orr r0, r0, #0x12
	msr CPSR, r0
	ldr r0, =0x44FA4
	mov sp,r0
	.ltorg
	mrs r0, CPSR
bic r0, r0, #0x1F
	orr r0, r0, #0x13
	msr CPSR, r0
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L149:
	.align	2
.L148:
	.word	_GLOBAL_OFFSET_TABLE_-(.L147+8)
	.word	1610612752
	.word	firstUserTask(GOT)
	.size	initialize, .-initialize
	.align	2
	.global	schedule
	.type	schedule, %function
schedule:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L151
.L152:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L153
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #28]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-32]
	b	.L155
.L153:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L151:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L152
	mov	r3, #0
	str	r3, [fp, #-32]
.L155:
	ldr	r3, [fp, #-32]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	schedule, .-schedule
	.align	2
	.global	rescheduleActive
	.type	rescheduleActive, %function
rescheduleActive:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	beq	.L161
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [r2, #4]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #56]
.L161:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	rescheduleActive, .-rescheduleActive
	.align	2
	.global	rescheduleBlock
	.type	rescheduleBlock, %function
rescheduleBlock:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L163
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L166
.L163:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L166:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	rescheduleBlock, .-rescheduleBlock
	.align	2
	.global	blockActive
	.type	blockActive, %function
blockActive:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L168
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L168:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #56]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	blockActive, .-blockActive
	.align	2
	.global	closeActive
	.type	closeActive, %function
closeActive:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	beq	.L172
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L174
.L172:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L174:
	ldr	r2, [fp, #-16]
	mov	r3, #6
	str	r3, [r2, #16]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	closeActive, .-closeActive
	.align	2
	.global	handle
	.type	handle, %function
handle:
	@ args = 0, pretend = 0, frame = 220
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #220
	str	r0, [fp, #-220]
	str	r1, [fp, #-224]
	str	r2, [fp, #-228]
	str	r3, [fp, #-232]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #20]
	cmp	r3, #10
	addls	pc, pc, r3, asl #2
	b	.L243
	.p2align 2
.L189:
	b	.L178
	b	.L179
	b	.L180
	b	.L181
	b	.L182
	b	.L183
	b	.L184
	b	.L185
	b	.L186
	b	.L187
	b	.L188
.L178:
	ldr	r3, .L244
	ldr	r3, [r3, #0]
	str	r3, [fp, #-216]
	ldr	r3, [fp, #-216]
	mov	r3, r3, lsr #19
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L190
	ldr	r3, .L244+4
	str	r3, [fp, #-212]
	ldr	r2, [fp, #-212]
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r0, [fp, #-224]
	ldr	r1, [fp, #-228]
	bl	rescheduleActive(PLT)
	ldr	r3, [fp, #-232]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L192
	ldr	r2, [fp, #-232]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-232]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L194
.L192:
	ldr	r3, [fp, #-232]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-200]
	ldr	r2, [fp, #-232]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-200]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-224]
	mov	r1, r3
	ldr	r2, [fp, #-200]
	bl	rescheduleBlock(PLT)
.L194:
	ldr	r3, .L244+8
	str	r3, [fp, #-208]
	ldr	r2, [fp, #-208]
	ldr	r3, .L244+12
	str	r3, [r2, #0]
	ldr	r3, .L244+16
	str	r3, [fp, #-204]
	ldr	r3, [fp, #-204]
	ldr	r3, [r3, #0]
	orr	r2, r3, #64
	ldr	r3, [fp, #-204]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-204]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-204]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-204]
	ldr	r3, [r3, #0]
	orr	r2, r3, #128
	ldr	r3, [fp, #-204]
	str	r2, [r3, #0]
	b	.L243
.L190:
	ldr	r0, [fp, #-224]
	ldr	r1, [fp, #-228]
	bl	rescheduleActive(PLT)
	ldr	r3, .L244+20
	ldr	r3, [r3, #0]
	str	r3, [fp, #-196]
	ldr	r3, .L244+24
	ldr	r3, [r3, #0]
	str	r3, [fp, #-192]
	ldr	r3, [fp, #-196]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L196
	ldr	r3, .L244+28
	str	r3, [fp, #-188]
	ldr	r3, [fp, #-188]
	ldr	r3, [r3, #0]
	bic	r2, r3, #32
	ldr	r3, [fp, #-188]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-232]
	add	r3, r3, #12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L198
	ldr	r3, [fp, #-232]
	add	r3, r3, #12
	ldr	r3, [r3, #0]
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-232]
	add	r2, r3, #12
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-184]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-184]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-224]
	mov	r1, r3
	ldr	r2, [fp, #-184]
	bl	rescheduleBlock(PLT)
	b	.L243
.L198:
	ldr	r3, [fp, #-232]
	add	r2, r3, #12
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-232]
	add	r2, r3, #12
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L243
.L196:
	ldr	r3, [fp, #-196]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L201
	ldr	r2, .L244+20
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-232]
	add	r3, r3, #60
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L203
	ldr	r3, [fp, #-232]
	add	r2, r3, #60
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-232]
	add	r2, r3, #60
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L243
.L203:
	ldr	r3, [fp, #-232]
	add	r3, r3, #60
	ldr	r3, [r3, #0]
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-232]
	add	r2, r3, #60
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-180]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-180]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-224]
	mov	r1, r3
	ldr	r2, [fp, #-180]
	bl	rescheduleBlock(PLT)
	b	.L243
.L201:
	ldr	r3, [fp, #-192]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L206
	ldr	r3, .L244+32
	str	r3, [fp, #-176]
	ldr	r3, [fp, #-232]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L208
	ldr	r3, [fp, #-232]
	add	r2, r3, #48
	ldr	r3, [fp, #-176]
	ldr	r3, [r3, #0]
	str	r3, [r2, #4]
	ldr	r3, [fp, #-232]
	add	r2, r3, #48
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L243
.L208:
	ldr	r3, [fp, #-232]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-172]
	ldr	r3, [fp, #-232]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-176]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-172]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-172]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-224]
	mov	r1, r3
	ldr	r2, [fp, #-172]
	bl	rescheduleBlock(PLT)
	b	.L243
.L206:
	ldr	r3, [fp, #-192]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L243
	ldr	r3, .L244+36
	str	r3, [fp, #-168]
	ldr	r3, [fp, #-168]
	ldr	r3, [r3, #0]
	bic	r2, r3, #32
	ldr	r3, [fp, #-168]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-232]
	add	r3, r3, #36
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L212
	ldr	r3, [fp, #-232]
	add	r3, r3, #36
	ldr	r3, [r3, #0]
	str	r3, [fp, #-164]
	ldr	r3, [fp, #-232]
	add	r2, r3, #36
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-164]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-224]
	mov	r1, r3
	ldr	r2, [fp, #-164]
	bl	rescheduleBlock(PLT)
	b	.L243
.L212:
	ldr	r3, [fp, #-232]
	add	r2, r3, #36
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-232]
	add	r2, r3, #36
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L243
.L179:
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-160]
	ldr	r3, [fp, #-160]
	add	r3, r3, #1
	str	r3, [fp, #-156]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-152]
	ldr	r3, [fp, #-152]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-144]
	ldr	r2, [fp, #-160]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-220]
	add	r3, r2, r3
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-144]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-152]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-156]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-132]
	bl	getStackSize(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-156]
	mul	r3, r2, r3
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-140]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-140]
	ldr	r3, .L244+40
	str	r3, [r2, #4]
	ldr	r2, [fp, #-140]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-140]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-156]
	str	r3, [r2, #20]
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-148]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-140]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r2, [fp, #-144]
	ldr	r3, [fp, #-140]
	str	r2, [r3, #12]
	ldr	r2, [fp, #-140]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r2, [fp, #-140]
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r3, [fp, #-140]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-132]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-128]
	b	.L214
.L215:
	ldr	r3, [fp, #-140]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-140]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-140]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-128]
	sub	r3, r3, #1
	str	r3, [fp, #-128]
.L214:
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	bne	.L215
	mov	r3, #14
	str	r3, [fp, #-128]
	b	.L217
.L218:
	ldr	r3, [fp, #-128]
	cmp	r3, #13
	beq	.L219
	ldr	r3, [fp, #-140]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-140]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-140]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
.L219:
	ldr	r3, [fp, #-128]
	sub	r3, r3, #1
	str	r3, [fp, #-128]
.L217:
	ldr	r3, [fp, #-128]
	cmp	r3, #3
	bhi	.L218
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L222
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #4]
	b	.L224
.L222:
	ldr	r3, [fp, #-136]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #4]
.L224:
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-228]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-224]
	ldr	r1, [fp, #-228]
	bl	rescheduleActive(PLT)
	b	.L243
.L180:
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-124]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-124]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-224]
	ldr	r1, [fp, #-228]
	bl	rescheduleActive(PLT)
	b	.L243
.L181:
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-120]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-120]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-224]
	ldr	r1, [fp, #-228]
	bl	rescheduleActive(PLT)
	b	.L243
.L182:
	ldr	r0, [fp, #-224]
	ldr	r1, [fp, #-228]
	bl	rescheduleActive(PLT)
	b	.L243
.L183:
	ldr	r0, [fp, #-224]
	ldr	r1, [fp, #-228]
	bl	closeActive(PLT)
	b	.L243
.L184:
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-116]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-112]
	ldr	r2, [fp, #-112]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-220]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-108]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-228]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-108]
	str	r2, [r3, #40]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-108]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-228]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-108]
	str	r2, [r3, #32]
	ldr	r2, [fp, #-104]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-220]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-104]
	cmp	r3, #0
	ble	.L225
	ldr	r3, [fp, #-104]
	cmp	r3, #30
	ble	.L227
.L225:
	ldr	r2, [fp, #-108]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L243
.L227:
	ldr	r3, [fp, #-116]
	mov	r0, r3
	ldr	r1, [fp, #-224]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L228
	ldr	r2, [fp, #-108]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r2, [fp, #-100]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-224]
	mov	r1, r3
	ldr	r2, [fp, #-100]
	bl	rescheduleBlock(PLT)
	ldr	r3, [fp, #-108]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-108]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-96]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-108]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
	b	.L243
.L228:
	ldr	r2, [fp, #-108]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-108]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L231
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-92]
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-92]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #52]
	b	.L243
.L231:
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #52]
	b	.L243
.L185:
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-84]
	ldr	r2, [fp, #-84]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-220]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-80]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-80]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-228]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L233
	ldr	r3, [fp, #-80]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-88]
	mov	r0, r3
	ldr	r1, [fp, #-224]
	bl	blockActive(PLT)
	b	.L243
.L233:
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #48]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-76]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-76]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-72]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-76]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-80]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-76]
	ldr	r3, [r3, #20]
	str	r3, [r2, #0]
	ldr	r0, [fp, #-224]
	ldr	r1, [fp, #-228]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-76]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r3, [fp, #-76]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #48]
	b	.L243
.L186:
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-220]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-52]
	mov	r0, r3
	ldr	r1, [fp, #-60]
	bl	copyMsg(PLT)
	ldr	r3, [fp, #-68]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-52]
	str	r3, [r2, #8]
	ldr	r2, [fp, #-64]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-224]
	mov	r1, r3
	ldr	r2, [fp, #-64]
	bl	rescheduleBlock(PLT)
	ldr	r0, [fp, #-224]
	ldr	r1, [fp, #-228]
	bl	rescheduleActive(PLT)
	b	.L243
.L187:
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-220]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-228]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #3
	bne	.L236
	ldr	r3, .L244+36
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-32]
	str	r2, [r3, #0]
	b	.L238
.L236:
	ldr	r3, [fp, #-36]
	cmp	r3, #1
	bne	.L238
	ldr	r3, .L244+28
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
.L238:
	ldr	r2, [fp, #-36]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ble	.L240
	ldr	r2, [fp, #-36]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-36]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-40]
	str	r2, [r3, #8]
	ldr	r0, [fp, #-224]
	ldr	r1, [fp, #-228]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-36]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #8]
	b	.L243
.L240:
	ldr	r2, [fp, #-40]
	mov	r3, #5
	str	r3, [r2, #16]
	ldr	r2, [fp, #-36]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r2, r2, r3
	ldr	r3, [fp, #-40]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-48]
	mov	r0, r3
	ldr	r1, [fp, #-224]
	bl	blockActive(PLT)
	b	.L243
.L188:
	ldr	r3, .L244+28
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	bic	r2, r3, #8
	ldr	r3, [fp, #-24]
	str	r2, [r3, #0]
	mov	r3, #9
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-224]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #6
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	mov	r0, r3
	ldr	r1, [fp, #-224]
	bl	blockActive(PLT)
.L243:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L245:
	.align	2
.L244:
	.word	-2146697216
	.word	-2139029364
	.word	-2139029376
	.word	5080
	.word	-2139029368
	.word	-2138308580
	.word	-2138243044
	.word	-2138308588
	.word	-2138243072
	.word	-2138243052
	.word	1610612752
	.size	handle, .-handle
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 2064
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #2064
	str	r0, [fp, #-2072]
	str	r1, [fp, #-2076]
	MRC p15, 0, r0, c1, c0, 0
	ldr r1, =4100
	bic r0, r0, r1
	ORR r0, r0, r1
	MCR p15, 0, r0, c1, c0, 0
	mov	r0, #0
	mov	r1, #0
	bl	bwsetfifo(PLT)
	mov	r0, #1
	mov	r1, #0
	bl	bwsetfifo(PLT)
	sub	r1, fp, #1808
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	r2, fp, #1888
	sub	r2, r2, #12
	sub	r2, r2, #8
	sub	r3, fp, #2048
	sub	r3, r3, #12
	sub	r3, r3, #8
	sub	ip, fp, #2016
	sub	ip, ip, #12
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, ip
	bl	initialize(PLT)
.L247:
	sub	r2, fp, #1888
	sub	r2, r2, #12
	sub	r2, r2, #8
	sub	r3, fp, #2048
	sub	r3, r3, #12
	sub	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	schedule(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L248
	sub	r3, fp, #2048
	sub	r3, r3, #12
	sub	r3, r3, #8
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	getNextRequest(PLT)
	sub	r1, fp, #1808
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	r2, fp, #1888
	sub	r2, r2, #12
	sub	r2, r2, #8
	sub	r3, fp, #2048
	sub	r3, r3, #12
	sub	r3, r3, #8
	sub	ip, fp, #2016
	sub	ip, ip, #12
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, ip
	bl	handle(PLT)
	b	.L247
.L248:
	ldr	r3, .L251
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L251+4
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	bic	r2, r3, #64
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	bic	r2, r3, #8
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	bic	r2, r3, #128
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, .L251+8
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #524288
	str	r3, [r2, #0]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L252:
	.align	2
.L251:
	.word	-2139029376
	.word	-2139029368
	.word	-2146697196
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
