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
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #108
	ldr	sl, .L27
.L26:
	add	sl, pc, sl
	ldr	r3, .L27+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L25
.L2:
.L25:
	ldr	r0, [fp, #-36]
	mov	r1, #1
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-21]
	ldr	r3, [fp, #-28]
	cmp	r3, #60
	bne	.L3
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L3
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L2
.L3:
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L7
	mov	r3, #2
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L9
.L10:
	ldr	r3, [fp, #-20]
	mvn	r2, #103
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L11
	ldr	r3, [fp, #-20]
	mvn	r2, #103
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #113
	bne	.L11
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L14
.L15:
	ldr	r3, [fp, #-20]
	mvn	r2, #103
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L16
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L14:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bcc	.L15
.L16:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bne	.L11
	mov	r3, #5
	str	r3, [fp, #-48]
.L11:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L9:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bcc	.L10
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L20
.L7:
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L21
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L2
	mov	r3, #4
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	str	r3, [fp, #-28]
	b	.L20
.L21:
	mov	r3, #1
	str	r3, [fp, #-48]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-28]
	mvn	r2, #103
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-21]
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L20:
	sub	r3, fp, #48
	sub	ip, fp, #60
	mov	r2, #12
	str	r2, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r3
	mov	r2, #12
	mov	r3, ip
	bl	Send(PLT)
	b	.L2
.L28:
	.align	2
.L27:
	.word	_GLOBAL_OFFSET_TABLE_-(.L26+8)
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
	ldr	sl, .L35
.L34:
	add	sl, pc, sl
	ldr	r3, .L35+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
.L32:
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
	b	.L32
.L36:
	.align	2
.L35:
	.word	_GLOBAL_OFFSET_TABLE_-(.L34+8)
	.word	.LC1(GOTOFF)
	.size	Timer, .-Timer
	.section	.rodata
	.align	2
.LC2:
	.ascii	"u2x\000"
	.align	2
.LC3:
	.ascii	"\033[2J\000"
	.align	2
.LC4:
	.ascii	"\033[H\033[KTIME 00:00:0\000"
	.align	2
.LC5:
	.ascii	"\033[3;1HSwitches\012\000"
	.align	2
.LC6:
	.ascii	"1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|153|15"
	.ascii	"4|155|156\012\000"
	.align	2
.LC7:
	.ascii	"---------------------------------------------------"
	.ascii	"---------\012\000"
	.align	2
.LC8:
	.ascii	"C|C|C|C|C|C|C|C|C|C |C |C |C |C |C |C |C |C | C | C"
	.ascii	" | C | C\000"
	.align	2
.LC9:
	.ascii	"\033[9;1HSensors:  1 = train passing, 0 = nothing\012"
	.ascii	"\000"
	.align	2
.LC10:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\012\000"
	.align	2
.LC11:
	.ascii	"A1 |A2 |A3 |A4 |A5 |A6 |A7 |A8 |A9 |A10|A11|A12|A13"
	.ascii	"|A14|A15|A16\012\000"
	.align	2
.LC12:
	.ascii	" 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 "
	.ascii	"| 0 | 0 | 0 \012\000"
	.align	2
.LC13:
	.ascii	"B1 |B2 |B3 |B4 |B5 |B6 |B7 |B8 |B9 |B10|B11|B12|B13"
	.ascii	"|B14|B15|B16\012\000"
	.align	2
.LC14:
	.ascii	"C1 |C2 |C3 |C4 |C5 |C6 |C7 |C8 |C9 |C10|C11|C12|C13"
	.ascii	"|C14|C15|C16\012\000"
	.align	2
.LC15:
	.ascii	"D1 |D2 |D3 |D4 |D5 |D6 |D7 |D8 |D9 |D10|D11|D12|D13"
	.ascii	"|D14|D15|D16\012\000"
	.align	2
.LC16:
	.ascii	"E1 |E2 |E3 |E4 |E5 |E6 |E7 |E8 |E9 |E10|E11|E12|E13"
	.ascii	"|E14|E15|E16\012\000"
	.align	2
.LC17:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\000"
	.align	2
.LC18:
	.ascii	"\033[33;1H>>\033[33;4H\000"
	.align	2
.LC19:
	.ascii	"\033[H\033[KTIME %d%d:%d%d:%d\033[33;%dH\000"
	.align	2
.LC20:
	.ascii	"\033[32;1HBAD COMMAND\012\000"
	.align	2
.LC21:
	.ascii	"\033[33;4H\033[K\000"
	.align	2
.LC22:
	.ascii	"\033[33;%dH\033[K\000"
	.align	2
.LC23:
	.ascii	"\033[32;1HShutting down\012\000"
	.text
	.align	2
	.global	Printer
	.type	Printer, %function
Printer:
	@ args = 0, pretend = 0, frame = 60
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #80
	ldr	sl, .L54
.L53:
	add	sl, pc, sl
	ldr	r3, .L54+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+8
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+12
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+16
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+24
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+32
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+64
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+68
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, .L54+72
	ldr	r3, [sl, r3]
	str	r3, [fp, #-36]
	mov	r0, #4
	ldr	r1, [fp, #-36]
	bl	Create(PLT)
	ldr	r3, .L54+76
	ldr	r3, [sl, r3]
	str	r3, [fp, #-36]
	mov	r0, #2
	ldr	r1, [fp, #-36]
	bl	Create(PLT)
	mov	r3, #4
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-20]
.L38:
	sub	r3, fp, #56
	sub	r2, fp, #44
	mov	r0, r2
	mov	r1, r3
	mov	r2, #12
	bl	Receive(PLT)
	ldr	r3, [fp, #-56]
	cmp	r3, #3
	bne	.L39
	ldr	r3, [fp, #-20]
	add	r1, r3, #1
	ldr	r3, .L54+80
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
	bne	.L41
	ldr	r3, [fp, #-24]
	add	r1, r3, #1
	ldr	r3, .L54+84
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
	bne	.L41
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L41:
	ldr	r1, [fp, #-28]
	ldr	r3, .L54+80
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	ldr	r1, [fp, #-28]
	ldr	r3, .L54+80
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
	ldr	r1, [fp, #-24]
	ldr	r3, .L54+80
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r0, r3, r2
	ldr	r1, [fp, #-24]
	ldr	r3, .L54+80
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-72]
	ldr	r3, [fp, #-72]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-72]
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-72]
	ldr	r3, [fp, #-76]
	str	r3, [sp, #0]
	str	r0, [sp, #4]
	ldr	r2, [fp, #-72]
	str	r2, [sp, #8]
	ldr	r3, [fp, #-20]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-32]
	str	r3, [sp, #16]
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+88
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L44
.L39:
	ldr	r3, [fp, #-56]
	cmp	r3, #1
	bne	.L45
	ldr	r3, [fp, #-52]
	and	r3, r3, #255
	ldr	r0, [fp, #-40]
	mov	r1, #1
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
	b	.L44
.L45:
	ldr	r3, [fp, #-56]
	cmp	r3, #2
	bne	.L47
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+92
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+96
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-32]
	b	.L44
.L47:
	ldr	r3, [fp, #-56]
	cmp	r3, #4
	bne	.L49
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+100
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-32]
	bl	myprintf(PLT)
	b	.L44
.L49:
	ldr	r3, [fp, #-56]
	cmp	r3, #5
	bne	.L44
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+104
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-40]
	mov	r1, #1
	ldr	r3, .L54+96
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	bl	Quit(PLT)
	bl	Exit(PLT)
	b	.L52
.L44:
	mov	r3, #0
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-44]
	sub	r2, fp, #68
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L38
.L52:
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L55:
	.align	2
.L54:
	.word	_GLOBAL_OFFSET_TABLE_-(.L53+8)
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
	.word	Terminal(GOT)
	.word	Timer(GOT)
	.word	1717986919
	.word	-2004318071
	.word	.LC19(GOTOFF)
	.word	.LC20(GOTOFF)
	.word	.LC21(GOTOFF)
	.word	.LC22(GOTOFF)
	.word	.LC23(GOTOFF)
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
.L57:
	b	.L57
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
	ldr	sl, .L62
.L61:
	add	sl, pc, sl
	ldr	r3, .L62+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L62+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L62+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L62+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L62+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #3
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L62+24
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
.L63:
	.align	2
.L62:
	.word	_GLOBAL_OFFSET_TABLE_-(.L61+8)
	.word	nameServer(GOT)
	.word	clockServer(GOT)
	.word	uart2GetServer(GOT)
	.word	uart2PutServer(GOT)
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
	ldr	sl, .L69
.L68:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L69+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L69+8
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
.L66:
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
.L65:
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
.L70:
	.align	2
.L69:
	.word	_GLOBAL_OFFSET_TABLE_-(.L68+8)
	.word	.L65(GOTOFF)
	.word	.L66(GOTOFF)
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
	b	.L72
.L73:
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
.L72:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L73
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
	ldr	r3, .L78
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
.L79:
	.align	2
.L78:
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
	ldr	sl, .L97
.L96:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L81
.L82:
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
.L81:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L82
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L97+4
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
	ldr	r3, .L97+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-24]
	b	.L84
.L85:
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
.L84:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L85
	mov	r3, #14
	str	r3, [fp, #-24]
	b	.L87
.L88:
	ldr	r3, [fp, #-24]
	cmp	r3, #13
	beq	.L89
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
.L89:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L87:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L88
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
	b	.L92
.L93:
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
.L92:
	ldr	r3, [fp, #-24]
	cmp	r3, #4
	bls	.L93
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
.L98:
	.align	2
.L97:
	.word	_GLOBAL_OFFSET_TABLE_-(.L96+8)
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
	b	.L100
.L101:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L102
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
	b	.L104
.L102:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L100:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L101
	mov	r3, #0
	str	r3, [fp, #-32]
.L104:
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
	beq	.L110
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
.L110:
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
	bne	.L112
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L115
.L112:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L115:
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
	bne	.L117
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L117:
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
	beq	.L121
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L123
.L121:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L123:
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
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #200
	str	r0, [fp, #-200]
	str	r1, [fp, #-204]
	str	r2, [fp, #-208]
	str	r3, [fp, #-212]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #20]
	cmp	r3, #10
	addls	pc, pc, r3, asl #2
	b	.L180
	.p2align 2
.L138:
	b	.L127
	b	.L128
	b	.L129
	b	.L130
	b	.L131
	b	.L132
	b	.L133
	b	.L134
	b	.L135
	b	.L136
	b	.L137
.L127:
	ldr	r3, .L181
	ldr	r3, [r3, #0]
	str	r3, [fp, #-196]
	ldr	r3, [fp, #-196]
	mov	r3, r3, lsr #19
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L139
	ldr	r3, .L181+4
	str	r3, [fp, #-192]
	ldr	r2, [fp, #-192]
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r0, [fp, #-204]
	ldr	r1, [fp, #-208]
	bl	rescheduleActive(PLT)
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L141
	ldr	r2, [fp, #-212]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-212]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L143
.L141:
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-180]
	ldr	r2, [fp, #-212]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-180]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-180]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-204]
	mov	r1, r3
	ldr	r2, [fp, #-180]
	bl	rescheduleBlock(PLT)
.L143:
	ldr	r3, .L181+8
	str	r3, [fp, #-188]
	ldr	r2, [fp, #-188]
	ldr	r3, .L181+12
	str	r3, [r2, #0]
	ldr	r3, .L181+16
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-184]
	ldr	r3, [r3, #0]
	orr	r2, r3, #64
	ldr	r3, [fp, #-184]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-184]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-184]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-184]
	ldr	r3, [r3, #0]
	orr	r2, r3, #128
	ldr	r3, [fp, #-184]
	str	r2, [r3, #0]
	b	.L180
.L139:
	ldr	r0, [fp, #-204]
	ldr	r1, [fp, #-208]
	bl	rescheduleActive(PLT)
	ldr	r3, .L181+20
	ldr	r3, [r3, #0]
	str	r3, [fp, #-176]
	ldr	r3, .L181+24
	ldr	r3, [r3, #0]
	str	r3, [fp, #-172]
	ldr	r3, [fp, #-172]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L145
	ldr	r3, .L181+28
	str	r3, [fp, #-168]
	ldr	r3, [fp, #-212]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L147
	ldr	r3, [fp, #-212]
	add	r2, r3, #48
	ldr	r3, [fp, #-168]
	ldr	r3, [r3, #0]
	str	r3, [r2, #4]
	ldr	r3, [fp, #-212]
	add	r2, r3, #48
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L180
.L147:
	ldr	r3, [fp, #-212]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-164]
	ldr	r3, [fp, #-212]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-168]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-164]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-164]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-204]
	mov	r1, r3
	ldr	r2, [fp, #-164]
	bl	rescheduleBlock(PLT)
	b	.L180
.L145:
	ldr	r3, [fp, #-172]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L180
	ldr	r3, .L181+32
	str	r3, [fp, #-160]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #0]
	bic	r2, r3, #32
	ldr	r3, [fp, #-160]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-212]
	add	r3, r3, #36
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L151
	ldr	r3, [fp, #-212]
	add	r3, r3, #36
	ldr	r3, [r3, #0]
	str	r3, [fp, #-156]
	ldr	r3, [fp, #-212]
	add	r2, r3, #36
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-156]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-156]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-204]
	mov	r1, r3
	ldr	r2, [fp, #-156]
	bl	rescheduleBlock(PLT)
	b	.L180
.L151:
	ldr	r3, [fp, #-212]
	add	r2, r3, #36
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-212]
	add	r2, r3, #36
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L180
.L128:
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-152]
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-144]
	ldr	r3, [fp, #-144]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-136]
	ldr	r2, [fp, #-152]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-200]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-136]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-144]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-148]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-124]
	bl	getStackSize(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-148]
	mul	r3, r2, r3
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-132]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-132]
	ldr	r3, .L181+36
	str	r3, [r2, #4]
	ldr	r2, [fp, #-132]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-132]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-148]
	str	r3, [r2, #20]
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-132]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-132]
	str	r2, [r3, #12]
	ldr	r2, [fp, #-132]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r2, [fp, #-132]
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r3, [fp, #-132]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-124]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-120]
	b	.L153
.L154:
	ldr	r3, [fp, #-132]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-132]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-132]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-120]
	sub	r3, r3, #1
	str	r3, [fp, #-120]
.L153:
	ldr	r3, [fp, #-120]
	cmp	r3, #0
	bne	.L154
	mov	r3, #14
	str	r3, [fp, #-120]
	b	.L156
.L157:
	ldr	r3, [fp, #-120]
	cmp	r3, #13
	beq	.L158
	ldr	r3, [fp, #-132]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-132]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-132]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #0]
.L158:
	ldr	r3, [fp, #-120]
	sub	r3, r3, #1
	str	r3, [fp, #-120]
.L156:
	ldr	r3, [fp, #-120]
	cmp	r3, #3
	bhi	.L157
	ldr	r3, [fp, #-128]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L161
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-132]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-132]
	str	r3, [r2, #4]
	b	.L163
.L161:
	ldr	r3, [fp, #-128]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-132]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-132]
	str	r3, [r2, #4]
.L163:
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-208]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-204]
	ldr	r1, [fp, #-208]
	bl	rescheduleActive(PLT)
	b	.L180
.L129:
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-116]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-116]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-204]
	ldr	r1, [fp, #-208]
	bl	rescheduleActive(PLT)
	b	.L180
.L130:
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-204]
	ldr	r1, [fp, #-208]
	bl	rescheduleActive(PLT)
	b	.L180
.L131:
	ldr	r0, [fp, #-204]
	ldr	r1, [fp, #-208]
	bl	rescheduleActive(PLT)
	b	.L180
.L132:
	ldr	r0, [fp, #-204]
	ldr	r1, [fp, #-208]
	bl	closeActive(PLT)
	b	.L180
.L133:
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-108]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-104]
	ldr	r2, [fp, #-104]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-200]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-100]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-208]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #40]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-100]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-208]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #32]
	ldr	r2, [fp, #-96]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-200]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-96]
	cmp	r3, #0
	ble	.L164
	ldr	r3, [fp, #-96]
	cmp	r3, #30
	ble	.L166
.L164:
	ldr	r2, [fp, #-100]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L180
.L166:
	ldr	r3, [fp, #-108]
	mov	r0, r3
	ldr	r1, [fp, #-204]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-92]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L167
	ldr	r2, [fp, #-100]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r2, [fp, #-92]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-92]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-204]
	mov	r1, r3
	ldr	r2, [fp, #-92]
	bl	rescheduleBlock(PLT)
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-92]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-92]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-88]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-92]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-92]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #0]
	b	.L180
.L167:
	ldr	r2, [fp, #-100]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-100]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-92]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L170
	ldr	r3, [fp, #-92]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-84]
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-84]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-92]
	str	r2, [r3, #52]
	b	.L180
.L170:
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-92]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-92]
	str	r2, [r3, #52]
	b	.L180
.L134:
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-76]
	ldr	r2, [fp, #-76]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-200]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-72]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-72]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-208]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-72]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L172
	ldr	r3, [fp, #-72]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-80]
	mov	r0, r3
	ldr	r1, [fp, #-204]
	bl	blockActive(PLT)
	b	.L180
.L172:
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #48]
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-68]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-64]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-68]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-72]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #20]
	str	r3, [r2, #0]
	ldr	r0, [fp, #-204]
	ldr	r1, [fp, #-208]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-68]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r3, [fp, #-68]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-72]
	str	r2, [r3, #48]
	b	.L180
.L135:
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-200]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-56]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-44]
	mov	r0, r3
	ldr	r1, [fp, #-52]
	bl	copyMsg(PLT)
	ldr	r3, [fp, #-60]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	str	r3, [r2, #8]
	ldr	r2, [fp, #-56]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-204]
	mov	r1, r3
	ldr	r2, [fp, #-56]
	bl	rescheduleBlock(PLT)
	ldr	r0, [fp, #-204]
	ldr	r1, [fp, #-208]
	bl	rescheduleActive(PLT)
	b	.L180
.L136:
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-36]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-200]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #3
	bne	.L175
	ldr	r3, .L181+32
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-24]
	str	r2, [r3, #0]
.L175:
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-212]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ble	.L177
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-212]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-212]
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r2, [r3, #8]
	ldr	r0, [fp, #-204]
	ldr	r1, [fp, #-208]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-212]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #8]
	b	.L180
.L177:
	ldr	r2, [fp, #-32]
	mov	r3, #5
	str	r3, [r2, #16]
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-212]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-40]
	mov	r0, r3
	ldr	r1, [fp, #-204]
	bl	blockActive(PLT)
	b	.L180
.L137:
	mov	r3, #9
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #6
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	mov	r0, r3
	ldr	r1, [fp, #-204]
	bl	blockActive(PLT)
.L180:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L182:
	.align	2
.L181:
	.word	-2146697216
	.word	-2139029364
	.word	-2139029376
	.word	5080
	.word	-2139029368
	.word	-2138308580
	.word	-2138243044
	.word	-2138243072
	.word	-2138243052
	.word	1610612752
	.size	handle, .-handle
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 2004
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #2000
	sub	sp, sp, #4
	str	r0, [fp, #-2012]
	str	r1, [fp, #-2016]
	MRC p15, 0, r0, c1, c0, 0
	ldr r1, =4100
	bic r0, r0, r1
	ORR r0, r0, r1
	MCR p15, 0, r0, c1, c0, 0
	mov	r0, #1
	mov	r1, #0
	bl	bwsetfifo(PLT)
	sub	r1, fp, #1808
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	ip, fp, #1888
	sub	ip, ip, #12
	sub	ip, ip, #8
	sub	r2, fp, #1984
	sub	r2, r2, #12
	sub	r2, r2, #12
	sub	r3, fp, #1952
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r0, r1
	mov	r1, ip
	bl	initialize(PLT)
.L184:
	sub	r2, fp, #1888
	sub	r2, r2, #12
	sub	r2, r2, #8
	sub	r3, fp, #1984
	sub	r3, r3, #12
	sub	r3, r3, #12
	mov	r0, r2
	mov	r1, r3
	bl	schedule(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L185
	sub	r3, fp, #1984
	sub	r3, r3, #12
	sub	r3, r3, #12
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	getNextRequest(PLT)
	sub	r1, fp, #1808
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	ip, fp, #1888
	sub	ip, ip, #12
	sub	ip, ip, #8
	sub	r2, fp, #1984
	sub	r2, r2, #12
	sub	r2, r2, #12
	sub	r3, fp, #1952
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r0, r1
	mov	r1, ip
	bl	handle(PLT)
	b	.L184
.L185:
	ldr	r3, .L188
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L188+4
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
	ldr	r3, .L188+8
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #524288
	str	r3, [r2, #0]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L189:
	.align	2
.L188:
	.word	-2139029376
	.word	-2139029368
	.word	-2146697196
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
