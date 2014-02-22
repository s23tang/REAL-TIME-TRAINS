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
	.ascii	"\033[2J\033[9;1HSensors:  1 = train passing, 0 = no"
	.ascii	"thing\033[33;4H\000"
	.align	2
.LC3:
	.ascii	"\033[10;1H-----------------------------------------"
	.ascii	"----------------------\033[33;4H\000"
	.align	2
.LC4:
	.ascii	"\033[11;1HA1 |A2 |A3 |A4 |A5 |A6 |A7 |A8 |A9 |A10|A"
	.ascii	"11|A12|A13|A14|A15|A16\033[33;4H\000"
	.align	2
.LC5:
	.ascii	"\033[12;1H-----------------------------------------"
	.ascii	"----------------------\033[33;4H\000"
	.align	2
.LC6:
	.ascii	"\033[13;1H 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | "
	.ascii	"0 | 0 | 0 | 0 | 0 | 0 \033[33;4H\000"
	.align	2
.LC7:
	.ascii	"\033[14;1H-----------------------------------------"
	.ascii	"----------------------\033[33;4H\000"
	.align	2
.LC8:
	.ascii	"\033[15;1HB1 |B2 |B3 |B4 |B5 |B6 |B7 |B8 |B9 |B10|B"
	.ascii	"11|B12|B13|B14|B15|B16\033[33;4H\000"
	.align	2
.LC9:
	.ascii	"\033[16;1H-----------------------------------------"
	.ascii	"----------------------\033[33;4H\000"
	.align	2
.LC10:
	.ascii	"\033[17;1H 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | "
	.ascii	"0 | 0 | 0 | 0 | 0 | 0 \033[33;4H\000"
	.align	2
.LC11:
	.ascii	"\033[18;1H-----------------------------------------"
	.ascii	"----------------------\033[33;4H\000"
	.align	2
.LC12:
	.ascii	"\033[19;1HC1 |C2 |C3 |C4 |C5 |C6 |C7 |C8 |C9 |C10|C"
	.ascii	"11|C12|C13|C14|C15|C16\033[33;4H\000"
	.align	2
.LC13:
	.ascii	"\033[20;1H-----------------------------------------"
	.ascii	"----------------------\033[33;4H\000"
	.align	2
.LC14:
	.ascii	"\033[21;1H 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | "
	.ascii	"0 | 0 | 0 | 0 | 0 | 0 \033[33;4H\000"
	.align	2
.LC15:
	.ascii	"\033[22;1H-----------------------------------------"
	.ascii	"----------------------\033[33;4H\000"
	.align	2
.LC16:
	.ascii	"\033[23;1HD1 |D2 |D3 |D4 |D5 |D6 |D7 |D8 |D9 |D10|D"
	.ascii	"11|D12|D13|D14|D15|D16\033[33;4H\000"
	.align	2
.LC17:
	.ascii	"\033[24;1H-----------------------------------------"
	.ascii	"----------------------\033[33;4H\000"
	.align	2
.LC18:
	.ascii	"\033[25;1H 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | "
	.ascii	"0 | 0 | 0 | 0 | 0 | 0 \033[33;4H\000"
	.align	2
.LC19:
	.ascii	"\033[26;1H-----------------------------------------"
	.ascii	"----------------------\033[33;4H\000"
	.align	2
.LC20:
	.ascii	"\033[27;1HE1 |E2 |E3 |E4 |E5 |E6 |E7 |E8 |E9 |E10|E"
	.ascii	"11|E12|E13|E14|E15|E16\033[33;4H\000"
	.align	2
.LC21:
	.ascii	"\033[28;1H-----------------------------------------"
	.ascii	"----------------------\033[33;4H\000"
	.align	2
.LC22:
	.ascii	"\033[29;1H 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | "
	.ascii	"0 | 0 | 0 | 0 | 0 | 0 \033[33;4H\000"
	.align	2
.LC23:
	.ascii	"\033[30;1H-----------------------------------------"
	.ascii	"----------------------\033[33;4H\000"
	.align	2
.LC24:
	.ascii	"%d %d %d %d\000"
	.text
	.align	2
	.global	t1
	.type	t1, %function
t1:
	@ args = 0, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #24
	ldr	sl, .L5
.L4:
	add	sl, pc, sl
	ldr	r3, .L5+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, .L5+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+12
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+16
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+24
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+32
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+64
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+68
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+72
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+76
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+80
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+84
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+88
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+92
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+96
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #214
	str	r3, [sp, #0]
	ldr	r3, .L5+100
	str	r3, [sp, #4]
	mov	r3, #2
	str	r3, [sp, #8]
	ldr	r0, [fp, #-28]
	mov	r1, #1
	ldr	r3, .L5+104
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, #10
	bl	myprintf(PLT)
.L2:
	ldr	r0, [fp, #-24]
	mov	r1, #1
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-17]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	ldr	r0, [fp, #-28]
	mov	r1, #1
	mov	r2, r3
	bl	Putc(PLT)
	b	.L2
.L6:
	.align	2
.L5:
	.word	_GLOBAL_OFFSET_TABLE_-(.L4+8)
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
	.word	.LC13(GOTOFF)
	.word	.LC14(GOTOFF)
	.word	.LC15(GOTOFF)
	.word	.LC16(GOTOFF)
	.word	.LC17(GOTOFF)
	.word	.LC18(GOTOFF)
	.word	.LC19(GOTOFF)
	.word	.LC20(GOTOFF)
	.word	.LC21(GOTOFF)
	.word	.LC22(GOTOFF)
	.word	.LC23(GOTOFF)
	.word	3255
	.word	.LC24(GOTOFF)
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
.L8:
	b	.L8
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
	ldr	sl, .L13
.L12:
	add	sl, pc, sl
	ldr	r3, .L13+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L13+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L13+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L13+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L13+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #2
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L13+24
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
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.L12+8)
	.word	nameServer(GOT)
	.word	clockServer(GOT)
	.word	uart2GetServer(GOT)
	.word	uart2PutServer(GOT)
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
	ldr	sl, .L20
.L19:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L20+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L20+8
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
.L17:
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
.L16:
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
.L21:
	.align	2
.L20:
	.word	_GLOBAL_OFFSET_TABLE_-(.L19+8)
	.word	.L16(GOTOFF)
	.word	.L17(GOTOFF)
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
	b	.L23
.L24:
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
.L23:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L24
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
	ldr	r3, .L29
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
.L30:
	.align	2
.L29:
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
	ldr	sl, .L48
.L47:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L32
.L33:
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
.L32:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L33
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L48+4
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
	ldr	r3, .L48+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-24]
	b	.L35
.L36:
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
.L35:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L36
	mov	r3, #14
	str	r3, [fp, #-24]
	b	.L38
.L39:
	ldr	r3, [fp, #-24]
	cmp	r3, #13
	beq	.L40
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
.L40:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L38:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L39
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
	b	.L43
.L44:
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
.L43:
	ldr	r3, [fp, #-24]
	cmp	r3, #4
	bls	.L44
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
.L49:
	.align	2
.L48:
	.word	_GLOBAL_OFFSET_TABLE_-(.L47+8)
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
	b	.L51
.L52:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L53
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
	b	.L55
.L53:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L51:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L52
	mov	r3, #0
	str	r3, [fp, #-32]
.L55:
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
	beq	.L61
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
.L61:
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
	bne	.L63
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L66
.L63:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L66:
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
	bne	.L68
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L68:
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
	beq	.L72
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L74
.L72:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L74:
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
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #192
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	str	r2, [fp, #-200]
	str	r3, [fp, #-204]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #20]
	cmp	r3, #9
	addls	pc, pc, r3, asl #2
	b	.L129
	.p2align 2
.L88:
	b	.L78
	b	.L79
	b	.L80
	b	.L81
	b	.L82
	b	.L83
	b	.L84
	b	.L85
	b	.L86
	b	.L87
.L78:
	ldr	r3, .L130
	ldr	r3, [r3, #0]
	str	r3, [fp, #-188]
	ldr	r3, [fp, #-188]
	mov	r3, r3, lsr #19
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L89
	ldr	r3, .L130+4
	str	r3, [fp, #-184]
	ldr	r2, [fp, #-184]
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r0, [fp, #-196]
	ldr	r1, [fp, #-200]
	bl	rescheduleActive(PLT)
	ldr	r3, [fp, #-204]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L91
	ldr	r2, [fp, #-204]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-204]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L93
.L91:
	ldr	r3, [fp, #-204]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-172]
	ldr	r2, [fp, #-204]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-172]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-172]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-196]
	mov	r1, r3
	ldr	r2, [fp, #-172]
	bl	rescheduleBlock(PLT)
.L93:
	ldr	r3, .L130+8
	str	r3, [fp, #-180]
	ldr	r2, [fp, #-180]
	ldr	r3, .L130+12
	str	r3, [r2, #0]
	ldr	r3, .L130+16
	str	r3, [fp, #-176]
	ldr	r3, [fp, #-176]
	ldr	r3, [r3, #0]
	orr	r2, r3, #64
	ldr	r3, [fp, #-176]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-176]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-176]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-176]
	ldr	r3, [r3, #0]
	orr	r2, r3, #128
	ldr	r3, [fp, #-176]
	str	r2, [r3, #0]
	b	.L129
.L89:
	ldr	r0, [fp, #-196]
	ldr	r1, [fp, #-200]
	bl	rescheduleActive(PLT)
	ldr	r3, .L130+20
	ldr	r3, [r3, #0]
	str	r3, [fp, #-168]
	ldr	r3, .L130+24
	ldr	r3, [r3, #0]
	str	r3, [fp, #-164]
	ldr	r3, [fp, #-164]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L95
	ldr	r3, .L130+28
	str	r3, [fp, #-160]
	ldr	r3, [fp, #-204]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L97
	ldr	r3, [fp, #-204]
	add	r2, r3, #48
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #0]
	str	r3, [r2, #4]
	ldr	r3, [fp, #-204]
	add	r2, r3, #48
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L129
.L97:
	ldr	r3, [fp, #-204]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-156]
	ldr	r3, [fp, #-204]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-160]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-156]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-156]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-196]
	mov	r1, r3
	ldr	r2, [fp, #-156]
	bl	rescheduleBlock(PLT)
	b	.L129
.L95:
	ldr	r3, [fp, #-164]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L129
	ldr	r3, .L130+32
	str	r3, [fp, #-152]
	ldr	r3, [fp, #-152]
	ldr	r3, [r3, #0]
	bic	r2, r3, #32
	ldr	r3, [fp, #-152]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-204]
	add	r3, r3, #36
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L101
	ldr	r3, [fp, #-204]
	add	r3, r3, #36
	ldr	r3, [r3, #0]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-204]
	add	r2, r3, #36
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-148]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-148]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-196]
	mov	r1, r3
	ldr	r2, [fp, #-148]
	bl	rescheduleBlock(PLT)
	b	.L129
.L101:
	ldr	r3, [fp, #-204]
	add	r2, r3, #36
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-204]
	add	r2, r3, #36
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L129
.L79:
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-144]
	ldr	r3, [fp, #-144]
	add	r3, r3, #1
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-136]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-128]
	ldr	r2, [fp, #-144]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-192]
	add	r3, r2, r3
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-136]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-116]
	bl	getStackSize(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-140]
	mul	r3, r2, r3
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-124]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-124]
	ldr	r3, .L130+36
	str	r3, [r2, #4]
	ldr	r2, [fp, #-124]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-124]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r2, [fp, #-124]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #20]
	ldr	r2, [fp, #-124]
	ldr	r3, [fp, #-132]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-124]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-124]
	str	r2, [r3, #12]
	ldr	r2, [fp, #-124]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r2, [fp, #-124]
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r3, [fp, #-124]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-116]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-112]
	b	.L103
.L104:
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-124]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-124]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-112]
	sub	r3, r3, #1
	str	r3, [fp, #-112]
.L103:
	ldr	r3, [fp, #-112]
	cmp	r3, #0
	bne	.L104
	mov	r3, #14
	str	r3, [fp, #-112]
	b	.L106
.L107:
	ldr	r3, [fp, #-112]
	cmp	r3, #13
	beq	.L108
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-124]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-124]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
.L108:
	ldr	r3, [fp, #-112]
	sub	r3, r3, #1
	str	r3, [fp, #-112]
.L106:
	ldr	r3, [fp, #-112]
	cmp	r3, #3
	bhi	.L107
	ldr	r3, [fp, #-120]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L111
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-124]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-124]
	str	r3, [r2, #4]
	b	.L113
.L111:
	ldr	r3, [fp, #-120]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-124]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-124]
	str	r3, [r2, #4]
.L113:
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-200]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-196]
	ldr	r1, [fp, #-200]
	bl	rescheduleActive(PLT)
	b	.L129
.L80:
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-108]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-108]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-196]
	ldr	r1, [fp, #-200]
	bl	rescheduleActive(PLT)
	b	.L129
.L81:
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-104]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-104]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-196]
	ldr	r1, [fp, #-200]
	bl	rescheduleActive(PLT)
	b	.L129
.L82:
	ldr	r0, [fp, #-196]
	ldr	r1, [fp, #-200]
	bl	rescheduleActive(PLT)
	b	.L129
.L83:
	ldr	r0, [fp, #-196]
	ldr	r1, [fp, #-200]
	bl	closeActive(PLT)
	b	.L129
.L84:
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-100]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-96]
	ldr	r2, [fp, #-96]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-192]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-92]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-200]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-92]
	str	r2, [r3, #40]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-92]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-200]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-92]
	str	r2, [r3, #32]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-192]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	ble	.L114
	ldr	r3, [fp, #-88]
	cmp	r3, #30
	ble	.L116
.L114:
	ldr	r2, [fp, #-92]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L129
.L116:
	ldr	r3, [fp, #-100]
	mov	r0, r3
	ldr	r1, [fp, #-196]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L117
	ldr	r2, [fp, #-92]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r2, [fp, #-84]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-196]
	mov	r1, r3
	ldr	r2, [fp, #-84]
	bl	rescheduleBlock(PLT)
	ldr	r3, [fp, #-92]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-92]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-80]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-92]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-84]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-84]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
	b	.L129
.L117:
	ldr	r2, [fp, #-92]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-92]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L120
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-76]
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-76]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-84]
	str	r2, [r3, #52]
	b	.L129
.L120:
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-84]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-84]
	str	r2, [r3, #52]
	b	.L129
.L85:
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-72]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-68]
	ldr	r2, [fp, #-68]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-192]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-64]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-64]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-200]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L122
	ldr	r3, [fp, #-64]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-72]
	mov	r0, r3
	ldr	r1, [fp, #-196]
	bl	blockActive(PLT)
	b	.L129
.L122:
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #48]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-56]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-60]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #20]
	str	r3, [r2, #0]
	ldr	r0, [fp, #-196]
	ldr	r1, [fp, #-200]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-60]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #48]
	b	.L129
.L86:
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-192]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-48]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-36]
	mov	r0, r3
	ldr	r1, [fp, #-44]
	bl	copyMsg(PLT)
	ldr	r3, [fp, #-52]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	str	r3, [r2, #8]
	ldr	r2, [fp, #-48]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-196]
	mov	r1, r3
	ldr	r2, [fp, #-48]
	bl	rescheduleBlock(PLT)
	ldr	r0, [fp, #-196]
	ldr	r1, [fp, #-200]
	bl	rescheduleActive(PLT)
	b	.L129
.L87:
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-192]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	bne	.L125
	ldr	r3, .L130+32
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-16]
	str	r2, [r3, #0]
.L125:
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ble	.L127
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-24]
	str	r2, [r3, #8]
	ldr	r0, [fp, #-196]
	ldr	r1, [fp, #-200]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #8]
	b	.L129
.L127:
	ldr	r2, [fp, #-24]
	mov	r3, #5
	str	r3, [r2, #16]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-204]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	mov	r0, r3
	ldr	r1, [fp, #-196]
	bl	blockActive(PLT)
.L129:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L131:
	.align	2
.L130:
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
.L133:
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
	beq	.L134
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
	b	.L133
.L134:
	ldr	r3, .L137
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L137+4
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
	ldr	r3, .L137+8
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #524288
	str	r3, [r2, #0]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L138:
	.align	2
.L137:
	.word	-2139029376
	.word	-2139029368
	.word	-2146697196
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
