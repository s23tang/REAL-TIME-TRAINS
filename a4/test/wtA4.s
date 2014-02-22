	.file	"wtA4.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"u2x\000"
	.align	2
.LC1:
	.ascii	"u2g\000"
	.align	2
.LC2:
	.ascii	"u1x\000"
	.align	2
.LC3:
	.ascii	"\033[2J\033[9;1HSensors:  1 = train passing, 0 = no"
	.ascii	"thing\012\000"
	.align	2
.LC4:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\012\000"
	.align	2
.LC5:
	.ascii	"A1 |A2 |A3 |A4 |A5 |A6 |A7 |A8 |A9 |A10|A11|A12|A13"
	.ascii	"|A14|A15|A16\012\000"
	.align	2
.LC6:
	.ascii	" 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 "
	.ascii	"| 0 | 0 | 0 \012\000"
	.align	2
.LC7:
	.ascii	"B1 |B2 |B3 |B4 |B5 |B6 |B7 |B8 |B9 |B10|B11|B12|B13"
	.ascii	"|B14|B15|B16\012\000"
	.align	2
.LC8:
	.ascii	"C1 |C2 |C3 |C4 |C5 |C6 |C7 |C8 |C9 |C10|C11|C12|C13"
	.ascii	"|C14|C15|C16\012\000"
	.align	2
.LC9:
	.ascii	"D1 |D2 |D3 |D4 |D5 |D6 |D7 |D8 |D9 |D10|D11|D12|D13"
	.ascii	"|D14|D15|D16\012\000"
	.align	2
.LC10:
	.ascii	"E1 |E2 |E3 |E4 |E5 |E6 |E7 |E8 |E9 |E10|E11|E12|E13"
	.ascii	"|E14|E15|E16\012\000"
	.align	2
.LC11:
	.ascii	"\033[33;1H>>\033[33;4H\000"
	.align	2
.LC12:
	.ascii	"\033[33;1H\033[K>>\033[33;4H\000"
	.text
	.align	2
	.global	t1
	.type	t1, %function
t1:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	ldr	sl, .L9
.L8:
	add	sl, pc, sl
	ldr	r3, .L9+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, .L9+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, .L9+12
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+16
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+24
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+32
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-24]
	mov	r1, #0
	mov	r2, #96
	bl	Putc(PLT)
	b	.L7
.L2:
.L7:
	ldr	r0, [fp, #-28]
	mov	r1, #1
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-17]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L3
	ldr	r0, [fp, #-32]
	mov	r1, #1
	ldr	r3, .L9+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	b	.L2
.L3:
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	ldr	r0, [fp, #-32]
	mov	r1, #1
	mov	r2, r3
	bl	Putc(PLT)
	b	.L2
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.L8+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
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
	.size	t1, .-t1
	.align	2
	.global	t2
	.type	t2, %function
t2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
.L12:
	b	.L12
	.size	t2, .-t2
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
	ldr	sl, .L17
.L16:
	add	sl, pc, sl
	ldr	r3, .L17+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L17+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L17+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L17+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L17+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L17+24
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #2
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L17+28
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #7
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L18:
	.align	2
.L17:
	.word	_GLOBAL_OFFSET_TABLE_-(.L16+8)
	.word	nameServer(GOT)
	.word	clockServer(GOT)
	.word	uart2GetServer(GOT)
	.word	uart2PutServer(GOT)
	.word	uart1PutServer(GOT)
	.word	t1(GOT)
	.word	t2(GOT)
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
	ldr	sl, .L24
.L23:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L24+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L24+8
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
.L21:
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
.L20:
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
.L25:
	.align	2
.L24:
	.word	_GLOBAL_OFFSET_TABLE_-(.L23+8)
	.word	.L20(GOTOFF)
	.word	.L21(GOTOFF)
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
	b	.L27
.L28:
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
.L27:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L28
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
	ldr	r3, .L33
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
.L34:
	.align	2
.L33:
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
	ldr	sl, .L52
.L51:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L36
.L37:
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
.L36:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L37
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L52+4
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
	ldr	r3, .L52+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-24]
	b	.L39
.L40:
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
.L39:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L40
	mov	r3, #14
	str	r3, [fp, #-24]
	b	.L42
.L43:
	ldr	r3, [fp, #-24]
	cmp	r3, #13
	beq	.L44
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
.L44:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L42:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L43
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
	b	.L47
.L48:
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
.L47:
	ldr	r3, [fp, #-24]
	cmp	r3, #4
	bls	.L48
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
	bl	setTrainConnectionn(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L53:
	.align	2
.L52:
	.word	_GLOBAL_OFFSET_TABLE_-(.L51+8)
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
	b	.L55
.L56:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L57
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
	b	.L59
.L57:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L55:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L56
	mov	r3, #0
	str	r3, [fp, #-32]
.L59:
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
	beq	.L65
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
.L65:
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
	bne	.L67
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L70
.L67:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L70:
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
	bne	.L72
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L72:
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
	beq	.L76
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L78
.L76:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L78:
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
	@ args = 0, pretend = 0, frame = 204
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #204
	str	r0, [fp, #-204]
	str	r1, [fp, #-208]
	str	r2, [fp, #-212]
	str	r3, [fp, #-216]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #20]
	cmp	r3, #9
	addls	pc, pc, r3, asl #2
	b	.L140
	.p2align 2
.L92:
	b	.L82
	b	.L83
	b	.L84
	b	.L85
	b	.L86
	b	.L87
	b	.L88
	b	.L89
	b	.L90
	b	.L91
.L82:
	ldr	r3, .L141
	ldr	r3, [r3, #0]
	str	r3, [fp, #-200]
	ldr	r3, [fp, #-200]
	mov	r3, r3, lsr #19
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L93
	ldr	r3, .L141+4
	str	r3, [fp, #-196]
	ldr	r2, [fp, #-196]
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r0, [fp, #-208]
	ldr	r1, [fp, #-212]
	bl	rescheduleActive(PLT)
	ldr	r3, [fp, #-216]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L95
	ldr	r2, [fp, #-216]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-216]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L97
.L95:
	ldr	r3, [fp, #-216]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-184]
	ldr	r2, [fp, #-216]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-184]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-184]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-208]
	mov	r1, r3
	ldr	r2, [fp, #-184]
	bl	rescheduleBlock(PLT)
.L97:
	ldr	r3, .L141+8
	str	r3, [fp, #-192]
	ldr	r2, [fp, #-192]
	ldr	r3, .L141+12
	str	r3, [r2, #0]
	ldr	r3, .L141+16
	str	r3, [fp, #-188]
	ldr	r3, [fp, #-188]
	ldr	r3, [r3, #0]
	orr	r2, r3, #64
	ldr	r3, [fp, #-188]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-188]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-188]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-188]
	ldr	r3, [r3, #0]
	orr	r2, r3, #128
	ldr	r3, [fp, #-188]
	str	r2, [r3, #0]
	b	.L140
.L93:
	ldr	r0, [fp, #-208]
	ldr	r1, [fp, #-212]
	bl	rescheduleActive(PLT)
	ldr	r3, .L141+20
	ldr	r3, [r3, #0]
	str	r3, [fp, #-180]
	ldr	r3, .L141+24
	ldr	r3, [r3, #0]
	str	r3, [fp, #-176]
	ldr	r3, [fp, #-180]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L99
	ldr	r3, .L141+28
	str	r3, [fp, #-172]
	ldr	r3, [fp, #-172]
	ldr	r3, [r3, #0]
	bic	r2, r3, #32
	ldr	r3, [fp, #-172]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-216]
	add	r3, r3, #12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L101
	ldr	r3, [fp, #-216]
	add	r3, r3, #12
	ldr	r3, [r3, #0]
	str	r3, [fp, #-168]
	ldr	r3, [fp, #-216]
	add	r2, r3, #12
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-168]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-168]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-208]
	mov	r1, r3
	ldr	r2, [fp, #-168]
	bl	rescheduleBlock(PLT)
	b	.L140
.L101:
	ldr	r3, [fp, #-216]
	add	r2, r3, #12
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-216]
	add	r2, r3, #12
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L140
.L99:
	ldr	r3, [fp, #-176]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L104
	ldr	r3, .L141+32
	str	r3, [fp, #-164]
	ldr	r3, [fp, #-216]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L106
	ldr	r3, [fp, #-216]
	add	r2, r3, #48
	ldr	r3, [fp, #-164]
	ldr	r3, [r3, #0]
	str	r3, [r2, #4]
	ldr	r3, [fp, #-216]
	add	r2, r3, #48
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L140
.L106:
	ldr	r3, [fp, #-216]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-160]
	ldr	r3, [fp, #-216]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-164]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-160]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-208]
	mov	r1, r3
	ldr	r2, [fp, #-160]
	bl	rescheduleBlock(PLT)
	b	.L140
.L104:
	ldr	r3, [fp, #-176]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L140
	ldr	r3, .L141+36
	str	r3, [fp, #-156]
	ldr	r3, [fp, #-156]
	ldr	r3, [r3, #0]
	bic	r2, r3, #32
	ldr	r3, [fp, #-156]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-216]
	add	r3, r3, #36
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L110
	ldr	r3, [fp, #-216]
	add	r3, r3, #36
	ldr	r3, [r3, #0]
	str	r3, [fp, #-152]
	ldr	r3, [fp, #-216]
	add	r2, r3, #36
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-152]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-152]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-208]
	mov	r1, r3
	ldr	r2, [fp, #-152]
	bl	rescheduleBlock(PLT)
	b	.L140
.L110:
	ldr	r3, [fp, #-216]
	add	r2, r3, #36
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-216]
	add	r2, r3, #36
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L140
.L83:
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-148]
	add	r3, r3, #1
	str	r3, [fp, #-144]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-208]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-148]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-132]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-208]
	add	r3, r2, r3
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-140]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-208]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-144]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-120]
	bl	getStackSize(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-144]
	mul	r3, r2, r3
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-128]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-128]
	ldr	r3, .L141+40
	str	r3, [r2, #4]
	ldr	r2, [fp, #-128]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-128]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-144]
	str	r3, [r2, #20]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-136]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-128]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-128]
	str	r2, [r3, #12]
	ldr	r2, [fp, #-128]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r2, [fp, #-128]
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r3, [fp, #-128]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-120]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-116]
	b	.L112
.L113:
	ldr	r3, [fp, #-128]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-128]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-128]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-116]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-116]
	sub	r3, r3, #1
	str	r3, [fp, #-116]
.L112:
	ldr	r3, [fp, #-116]
	cmp	r3, #0
	bne	.L113
	mov	r3, #14
	str	r3, [fp, #-116]
	b	.L115
.L116:
	ldr	r3, [fp, #-116]
	cmp	r3, #13
	beq	.L117
	ldr	r3, [fp, #-128]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-128]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-128]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-116]
	str	r3, [r2, #0]
.L117:
	ldr	r3, [fp, #-116]
	sub	r3, r3, #1
	str	r3, [fp, #-116]
.L115:
	ldr	r3, [fp, #-116]
	cmp	r3, #3
	bhi	.L116
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L120
	ldr	r2, [fp, #-124]
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-124]
	ldr	r3, [fp, #-128]
	str	r3, [r2, #4]
	b	.L122
.L120:
	ldr	r3, [fp, #-124]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-128]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-124]
	ldr	r3, [fp, #-128]
	str	r3, [r2, #4]
.L122:
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-212]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-208]
	ldr	r1, [fp, #-212]
	bl	rescheduleActive(PLT)
	b	.L140
.L84:
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-208]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-208]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-208]
	ldr	r1, [fp, #-212]
	bl	rescheduleActive(PLT)
	b	.L140
.L85:
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-108]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-208]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-108]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-208]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-208]
	ldr	r1, [fp, #-212]
	bl	rescheduleActive(PLT)
	b	.L140
.L86:
	ldr	r0, [fp, #-208]
	ldr	r1, [fp, #-212]
	bl	rescheduleActive(PLT)
	b	.L140
.L87:
	ldr	r0, [fp, #-208]
	ldr	r1, [fp, #-212]
	bl	closeActive(PLT)
	b	.L140
.L88:
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-104]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-208]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-100]
	ldr	r2, [fp, #-100]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-96]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-212]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-96]
	str	r2, [r3, #40]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-96]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-212]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-96]
	str	r2, [r3, #32]
	ldr	r2, [fp, #-92]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-92]
	cmp	r3, #0
	ble	.L123
	ldr	r3, [fp, #-92]
	cmp	r3, #30
	ble	.L125
.L123:
	ldr	r2, [fp, #-96]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L140
.L125:
	ldr	r3, [fp, #-104]
	mov	r0, r3
	ldr	r1, [fp, #-208]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L126
	ldr	r2, [fp, #-96]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r2, [fp, #-88]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-208]
	mov	r1, r3
	ldr	r2, [fp, #-88]
	bl	rescheduleBlock(PLT)
	ldr	r3, [fp, #-96]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-96]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-84]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-96]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-88]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-88]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-100]
	str	r3, [r2, #0]
	b	.L140
.L126:
	ldr	r2, [fp, #-96]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-96]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L129
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-80]
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-88]
	str	r2, [r3, #52]
	b	.L140
.L129:
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-88]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-88]
	str	r2, [r3, #52]
	b	.L140
.L89:
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-76]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-208]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-72]
	ldr	r2, [fp, #-72]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-68]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-68]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-212]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-68]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L131
	ldr	r3, [fp, #-68]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-76]
	mov	r0, r3
	ldr	r1, [fp, #-208]
	bl	blockActive(PLT)
	b	.L140
.L131:
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #48]
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-60]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-68]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #20]
	str	r3, [r2, #0]
	ldr	r0, [fp, #-208]
	ldr	r1, [fp, #-212]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-64]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-68]
	str	r2, [r3, #48]
	b	.L140
.L90:
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-52]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-40]
	mov	r0, r3
	ldr	r1, [fp, #-48]
	bl	copyMsg(PLT)
	ldr	r3, [fp, #-56]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-208]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-40]
	str	r3, [r2, #8]
	ldr	r2, [fp, #-52]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-208]
	mov	r1, r3
	ldr	r2, [fp, #-52]
	bl	rescheduleBlock(PLT)
	ldr	r0, [fp, #-208]
	ldr	r1, [fp, #-212]
	bl	rescheduleActive(PLT)
	b	.L140
.L91:
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-208]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-32]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bne	.L134
	ldr	r3, .L141+36
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L136
.L134:
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	bne	.L136
	ldr	r3, .L141+28
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-16]
	str	r2, [r3, #0]
.L136:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-216]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ble	.L138
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-216]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-216]
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-28]
	str	r2, [r3, #8]
	ldr	r0, [fp, #-208]
	ldr	r1, [fp, #-212]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-216]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #8]
	b	.L140
.L138:
	ldr	r2, [fp, #-28]
	mov	r3, #5
	str	r3, [r2, #16]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-216]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-36]
	mov	r0, r3
	ldr	r1, [fp, #-208]
	bl	blockActive(PLT)
.L140:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L142:
	.align	2
.L141:
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
.L144:
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
	beq	.L145
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
	b	.L144
.L145:
	ldr	r3, .L148
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L148+4
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
	ldr	r3, .L148+8
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #524288
	str	r3, [r2, #0]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L149:
	.align	2
.L148:
	.word	-2139029376
	.word	-2139029368
	.word	-2146697196
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
