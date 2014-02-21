	.file	"wtA4.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"clock\000\000"
	.align	2
.LC1:
	.ascii	"Tid: %d, Delay Interval: %d, completed %d delays\012"
	.ascii	"\015\000"
	.text
	.align	2
	.global	t1
	.type	t1, %function
t1:
	@ args = 0, pretend = 0, frame = 36
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #40
	ldr	sl, .L7
.L6:
	add	sl, pc, sl
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-40]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-52]
	sub	r2, fp, #52
	sub	ip, fp, #48
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-40]
	mov	r1, r2
	mov	r2, #4
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L7+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L2
.L3:
	ldr	r3, [fp, #-32]
	mov	r0, r3
	ldr	r1, [fp, #-24]
	bl	Delay(PLT)
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [sp, #0]
	mov	r0, #1
	ldr	r3, .L7+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-24]
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L2:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L3
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L8:
	.align	2
.L7:
	.word	_GLOBAL_OFFSET_TABLE_-(.L6+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.size	t1, .-t1
	.align	2
	.global	t2
	.type	t2, %function
t2:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	ldr	sl, .L13
.L12:
	add	sl, pc, sl
	ldr	r3, .L13+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
.L10:
	b	.L10
.L14:
	.align	2
.L13:
	.word	_GLOBAL_OFFSET_TABLE_-(.L12+8)
	.word	.LC0(GOTOFF)
	.size	t2, .-t2
	.section	.rodata
	.align	2
.LC2:
	.ascii	"First: created Name Server\012\015\000"
	.align	2
.LC3:
	.ascii	"First: exiting\012\015\000"
	.text
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
	ldr	sl, .L18
.L17:
	add	sl, pc, sl
	ldr	r3, .L18+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L18+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, .L18+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L18+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L18+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #7
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L18+24
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.L17+8)
	.word	nameServer(GOT)
	.word	.LC2(GOTOFF)
	.word	clockServer(GOT)
	.word	uart2GetServer(GOT)
	.word	t2(GOT)
	.word	.LC3(GOTOFF)
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
	ldr	sl, .L25
.L24:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L25+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L25+8
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
.L22:
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
.L21:
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
.L26:
	.align	2
.L25:
	.word	_GLOBAL_OFFSET_TABLE_-(.L24+8)
	.word	.L21(GOTOFF)
	.word	.L22(GOTOFF)
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
	b	.L28
.L29:
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
.L28:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L29
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
	ldr	r3, .L34
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
.L35:
	.align	2
.L34:
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
	ldr	sl, .L53
.L52:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L37
.L38:
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
.L37:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L38
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L53+4
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
	ldr	r3, .L53+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-24]
	b	.L40
.L41:
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
.L40:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L41
	mov	r3, #14
	str	r3, [fp, #-24]
	b	.L43
.L44:
	ldr	r3, [fp, #-24]
	cmp	r3, #13
	beq	.L45
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
.L45:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L43:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L44
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
	b	.L48
.L49:
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
.L48:
	ldr	r3, [fp, #-24]
	cmp	r3, #4
	bls	.L49
	mrs r0, CPSR
	bic r0, r0, #0x1F
	orr r0, r0, #0x12
	msr CPSR, r0
	ldr r0, =0x44FA4
	mov sp,r0
	mrs r0, CPSR
bic r0, r0, #0x1F
	orr r0, r0, #0x13
	msr CPSR, r0
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L54:
	.align	2
.L53:
	.word	_GLOBAL_OFFSET_TABLE_-(.L52+8)
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
	b	.L56
.L57:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L58
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
	b	.L60
.L58:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L56:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L57
	mov	r3, #0
	str	r3, [fp, #-32]
.L60:
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
	beq	.L66
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
.L66:
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
	bne	.L68
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L71
.L68:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L71:
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
	bne	.L73
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L73:
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
	beq	.L77
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L79
.L77:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L79:
	ldr	r2, [fp, #-16]
	mov	r3, #6
	str	r3, [r2, #16]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	closeActive, .-closeActive
	.section	.rodata
	.align	2
.LC4:
	.ascii	"%c\012\015\000"
	.text
	.align	2
	.global	handle
	.type	handle, %function
handle:
	@ args = 0, pretend = 0, frame = 180
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #180
	ldr	sl, .L127
.L126:
	add	sl, pc, sl
	str	r0, [fp, #-184]
	str	r1, [fp, #-188]
	str	r2, [fp, #-192]
	str	r3, [fp, #-196]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #20]
	cmp	r3, #9
	addls	pc, pc, r3, asl #2
	b	.L125
	.p2align 2
.L93:
	b	.L83
	b	.L84
	b	.L85
	b	.L86
	b	.L87
	b	.L88
	b	.L89
	b	.L90
	b	.L91
	b	.L92
.L83:
	ldr	r3, .L127+4
	ldr	r3, [r3, #0]
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-180]
	mov	r3, r3, lsr #19
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L94
	ldr	r3, .L127+8
	str	r3, [fp, #-176]
	ldr	r2, [fp, #-176]
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r0, [fp, #-188]
	ldr	r1, [fp, #-192]
	bl	rescheduleActive(PLT)
	ldr	r3, [fp, #-196]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L96
	ldr	r2, [fp, #-196]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-196]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L98
.L96:
	ldr	r3, [fp, #-196]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-160]
	ldr	r2, [fp, #-160]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-188]
	mov	r1, r3
	ldr	r2, [fp, #-160]
	bl	rescheduleBlock(PLT)
.L98:
	ldr	r3, .L127+12
	str	r3, [fp, #-172]
	ldr	r2, [fp, #-172]
	ldr	r3, .L127+16
	str	r3, [r2, #0]
	ldr	r3, .L127+20
	str	r3, [fp, #-168]
	ldr	r3, [fp, #-168]
	ldr	r3, [r3, #0]
	orr	r2, r3, #64
	ldr	r3, [fp, #-168]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-168]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-168]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-168]
	ldr	r3, [r3, #0]
	orr	r2, r3, #128
	ldr	r3, [fp, #-168]
	str	r2, [r3, #0]
	ldr	r3, .L127+24
	str	r3, [fp, #-164]
	ldr	r2, [fp, #-164]
	mov	r3, #524288
	str	r3, [r2, #0]
	b	.L125
.L94:
	ldr	r3, .L127+28
	ldr	r3, [r3, #0]
	str	r3, [fp, #-156]
	ldr	r3, .L127+32
	ldr	r3, [r3, #0]
	str	r3, [fp, #-152]
	ldr	r3, [fp, #-152]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L125
	ldr	r3, .L127+36
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-148]
	ldr	r2, [r3, #0]
	mov	r0, #1
	ldr	r3, .L127+40
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r2, .L127+32
	mov	r3, #1
	str	r3, [r2, #0]
	b	.L125
.L84:
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-144]
	ldr	r3, [fp, #-144]
	add	r3, r3, #1
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-136]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-188]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-128]
	ldr	r2, [fp, #-144]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-184]
	add	r3, r2, r3
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-188]
	add	r3, r2, r3
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-136]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-188]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-192]
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
	ldr	r3, .L127+44
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
	b	.L101
.L102:
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
.L101:
	ldr	r3, [fp, #-112]
	cmp	r3, #0
	bne	.L102
	mov	r3, #14
	str	r3, [fp, #-112]
	b	.L104
.L105:
	ldr	r3, [fp, #-112]
	cmp	r3, #13
	beq	.L106
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-124]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-124]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
.L106:
	ldr	r3, [fp, #-112]
	sub	r3, r3, #1
	str	r3, [fp, #-112]
.L104:
	ldr	r3, [fp, #-112]
	cmp	r3, #3
	bhi	.L105
	ldr	r3, [fp, #-120]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L109
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-124]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-124]
	str	r3, [r2, #4]
	b	.L111
.L109:
	ldr	r3, [fp, #-120]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-124]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-124]
	str	r3, [r2, #4]
.L111:
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-192]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-188]
	ldr	r1, [fp, #-192]
	bl	rescheduleActive(PLT)
	b	.L125
.L85:
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-108]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-188]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-108]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-188]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-188]
	ldr	r1, [fp, #-192]
	bl	rescheduleActive(PLT)
	b	.L125
.L86:
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-104]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-188]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-104]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-188]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-188]
	ldr	r1, [fp, #-192]
	bl	rescheduleActive(PLT)
	b	.L125
.L87:
	ldr	r0, [fp, #-188]
	ldr	r1, [fp, #-192]
	bl	rescheduleActive(PLT)
	b	.L125
.L88:
	ldr	r0, [fp, #-188]
	ldr	r1, [fp, #-192]
	bl	closeActive(PLT)
	b	.L125
.L89:
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-100]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-188]
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
	ldr	r3, [fp, #-184]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-92]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-192]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-92]
	str	r2, [r3, #40]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-92]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-192]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-92]
	str	r2, [r3, #32]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-184]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	ble	.L112
	ldr	r3, [fp, #-88]
	cmp	r3, #30
	ble	.L114
.L112:
	ldr	r2, [fp, #-92]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L125
.L114:
	ldr	r3, [fp, #-100]
	mov	r0, r3
	ldr	r1, [fp, #-188]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L115
	ldr	r2, [fp, #-92]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r2, [fp, #-84]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-188]
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
	b	.L125
.L115:
	ldr	r2, [fp, #-92]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-92]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L118
	ldr	r3, [fp, #-84]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-76]
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-76]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-84]
	str	r2, [r3, #52]
	b	.L125
.L118:
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-84]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-84]
	str	r2, [r3, #52]
	b	.L125
.L90:
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-72]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-188]
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
	ldr	r3, [fp, #-184]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-64]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-64]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-192]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L120
	ldr	r3, [fp, #-64]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-72]
	mov	r0, r3
	ldr	r1, [fp, #-188]
	bl	blockActive(PLT)
	b	.L125
.L120:
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
	ldr	r0, [fp, #-188]
	ldr	r1, [fp, #-192]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-60]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #48]
	b	.L125
.L91:
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-184]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-192]
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
	ldr	r3, [fp, #-188]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	str	r3, [r2, #8]
	ldr	r2, [fp, #-48]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-188]
	mov	r1, r3
	ldr	r2, [fp, #-48]
	bl	rescheduleBlock(PLT)
	ldr	r0, [fp, #-188]
	ldr	r1, [fp, #-192]
	bl	rescheduleActive(PLT)
	b	.L125
.L92:
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-188]
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
	ldr	r3, [fp, #-184]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ble	.L123
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-24]
	str	r2, [r3, #8]
	ldr	r0, [fp, #-188]
	ldr	r1, [fp, #-192]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #8]
	b	.L125
.L123:
	ldr	r2, [fp, #-24]
	mov	r3, #5
	str	r3, [r2, #16]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-196]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	mov	r0, r3
	ldr	r1, [fp, #-188]
	bl	blockActive(PLT)
.L125:
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L128:
	.align	2
.L127:
	.word	_GLOBAL_OFFSET_TABLE_-(.L126+8)
	.word	-2146697216
	.word	-2139029364
	.word	-2139029376
	.word	5080
	.word	-2139029368
	.word	-2146697200
	.word	-2138308580
	.word	-2138243044
	.word	-2138243072
	.word	.LC4(GOTOFF)
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
.L130:
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
	beq	.L131
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
	b	.L130
.L131:
	ldr	r3, .L134
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L134+4
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
	ldr	r3, .L134+8
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #524288
	str	r3, [r2, #0]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L135:
	.align	2
.L134:
	.word	-2139029376
	.word	-2139029368
	.word	-2146697196
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
