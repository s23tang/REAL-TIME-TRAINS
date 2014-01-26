	.file	"wtA1.c"
	.text
	.align	2
	.global	Create
	.type	Create, %function
Create:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	swi 1
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	Create, .-Create
	.align	2
	.global	MyTid
	.type	MyTid, %function
MyTid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	swi 2
	ldmfd	sp, {fp, sp, pc}
	.size	MyTid, .-MyTid
	.align	2
	.global	MyParentTid
	.type	MyParentTid, %function
MyParentTid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	swi 3
	ldmfd	sp, {fp, sp, pc}
	.size	MyParentTid, .-MyParentTid
	.align	2
	.global	Pass
	.type	Pass, %function
Pass:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	swi 4
	ldmfd	sp, {fp, sp, pc}
	.size	Pass, .-Pass
	.align	2
	.global	Exit
	.type	Exit, %function
Exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	swi 5
	ldmfd	sp, {fp, sp, pc}
	.size	Exit, .-Exit
	.section	.rodata
	.align	2
.LC0:
	.ascii	"MyTid: %d, MyParentTid: %d\012\015\000"
	.text
	.align	2
	.global	theOtherTask
	.type	theOtherTask, %function
theOtherTask:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	ldr	sl, .L14
.L13:
	add	sl, pc, sl
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L14+4
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Pass(PLT)
	mov	r0, #1
	ldr	r3, .L14+4
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L15:
	.align	2
.L14:
	.word	_GLOBAL_OFFSET_TABLE_-(.L13+8)
	.word	.LC0(GOTOFF)
	.size	theOtherTask, .-theOtherTask
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Created: %d\012\015\000"
	.align	2
.LC2:
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
	ldr	sl, .L19
.L18:
	add	sl, pc, sl
	ldr	r3, .L19+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #2
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L19+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	mov	r0, #2
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L19+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L19+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L19+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L19+12
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L20:
	.align	2
.L19:
	.word	_GLOBAL_OFFSET_TABLE_-(.L18+8)
	.word	theOtherTask(GOT)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
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
	stmfd sp!, {r0, r4-r9, sl, fp}
	stmfd sp!, {r1}
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x1F
	msr CPSR, r1
	ldr r1, [r0, #0]
	ldr r2, [r0, #4]
	ldr r3, [r0, #8]
	ldmfd r1!, {r4-r9, sl, fp, sp, lr}
	mov sp, r1
	mov r0, r3
	mov r3, lr
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x13
	msr CPSR, r1
	msr SPSR, r2
	mov lr, r3
	movs pc, lr
.L22:
	stmfd sp!, {r0-r3}
	ldr r0, [lr, #-4];
	bic r1, r0, #0xFF000000
	stmfd sp!, {r1}
	mrs r1, SPSR
	stmfd sp!, {r1}
	mov r2, sp
	stmfd r2!, {lr}
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x1F
	msr CPSR, r1
	ldmfd r2!, {lr}
	mov ip, sp
	stmfd sp!, {r4-r9, sl, fp, ip, lr}
	mov ip, sp
	mrs r0, CPSR
	bic r0, r0, #0x1F
	orr r0, r0, #0x13
	msr CPSR, r0
	ldmfd sp!, {r1}
	ldmfd sp!, {r0,r2-r6}
	str r2, [r6, #0]
	str r3, [r6, #4]
	str r4, [r6, #8]
	str r5, [r6, #12]
	str r0, [r6, #16]
	ldmfd sp!, {r0, r4-r9, sl, fp}
	str ip, [r0, #0]
	str r1, [r0, #4]
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L26:
	.align	2
.L25:
	.word	_GLOBAL_OFFSET_TABLE_-(.L24+8)
	.word	.L22(GOTOFF)
	.size	getNextRequest, .-getNextRequest
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
	.word	637087
	.size	getStackSize, .-getStackSize
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	ldr	sl, .L40
.L39:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
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
	cmp	r3, #12
	bls	.L33
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L40+4
	str	r3, [r2, #4]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	str	r3, [r2, #12]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #20]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #24]
	ldr	r3, .L40+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #12
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
	cmp	r3, #3
	bhi	.L36
	ldr	r3, [fp, #-32]
	add	r2, r3, #8
	ldr	r3, [fp, #-28]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r2, r3, #8
	ldr	r3, [fp, #-28]
	str	r3, [r2, #4]
	ldr	r2, [fp, #-36]
	mov	r3, #1
	str	r3, [r2, #20]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-28]
	str	r3, [r2, #28]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #32]
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L41:
	.align	2
.L40:
	.word	_GLOBAL_OFFSET_TABLE_-(.L39+8)
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
	b	.L43
.L44:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L45
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-32]
	b	.L47
.L45:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L43:
	ldr	r3, [fp, #-20]
	cmp	r3, #12
	bls	.L44
	mov	r3, #0
	str	r3, [fp, #-32]
.L47:
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
	ldr	r3, [r3, #24]
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
	beq	.L53
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #24]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [r2, #4]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #24]
.L53:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	rescheduleActive, .-rescheduleActive
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
	ldr	r3, [r3, #24]
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
	beq	.L55
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #24]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L57
.L55:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L57:
	ldr	r2, [fp, #-16]
	mov	r3, #3
	str	r3, [r2, #12]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	closeActive, .-closeActive
	.align	2
	.global	handle
	.type	handle, %function
handle:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #56
	str	r0, [fp, #-60]
	str	r1, [fp, #-64]
	str	r2, [fp, #-68]
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #16]
	sub	r3, r3, #1
	cmp	r3, #4
	addls	pc, pc, r3, asl #2
	b	.L73
	.p2align 2
.L66:
	b	.L61
	b	.L62
	b	.L63
	b	.L64
	b	.L65
.L61:
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #16]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-56]
	mov	r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-60]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-40]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-52]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-28]
	bl	getStackSize(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-52]
	mul	r3, r2, r3
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-36]
	ldr	r3, .L74
	str	r3, [r2, #4]
	ldr	r2, [fp, #-36]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-36]
	mov	r3, #1
	str	r3, [r2, #12]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-52]
	str	r3, [r2, #16]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-44]
	str	r3, [r2, #20]
	ldr	r2, [fp, #-36]
	mov	r3, #0
	str	r3, [r2, #24]
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #12
	str	r3, [fp, #-24]
	b	.L67
.L68:
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L67:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L68
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L70
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-36]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-36]
	str	r3, [r2, #4]
	b	.L72
.L70:
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-36]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-36]
	str	r3, [r2, #4]
.L72:
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #20]
	add	r2, r3, #1
	ldr	r3, [fp, #-68]
	str	r2, [r3, #20]
	ldr	r0, [fp, #-64]
	ldr	r1, [fp, #-68]
	bl	rescheduleActive(PLT)
	b	.L73
.L62:
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #16]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-64]
	ldr	r1, [fp, #-68]
	bl	rescheduleActive(PLT)
	b	.L73
.L63:
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-64]
	ldr	r1, [fp, #-68]
	bl	rescheduleActive(PLT)
	b	.L73
.L64:
	ldr	r0, [fp, #-64]
	ldr	r1, [fp, #-68]
	bl	rescheduleActive(PLT)
	b	.L73
.L65:
	ldr	r0, [fp, #-64]
	ldr	r1, [fp, #-68]
	bl	closeActive(PLT)
.L73:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L75:
	.align	2
.L74:
	.word	1610612752
	.size	handle, .-handle
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 1608
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #1600
	sub	sp, sp, #8
	str	r0, [fp, #-1616]
	str	r1, [fp, #-1620]
	sub	r3, fp, #1456
	sub	r3, r3, #12
	sub	r3, r3, #4
	sub	r2, fp, #1552
	sub	r2, r2, #12
	sub	r2, r2, #12
	sub	ip, fp, #1600
	sub	ip, ip, #12
	mov	r0, r3
	mov	r1, r2
	mov	r2, ip
	bl	initialize(PLT)
.L77:
	sub	r3, fp, #1552
	sub	r3, r3, #12
	sub	r3, r3, #12
	sub	r2, fp, #1600
	sub	r2, r2, #12
	mov	r0, r3
	mov	r1, r2
	bl	schedule(PLT)
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L78
	sub	r3, fp, #1600
	sub	r3, r3, #12
	ldr	r0, [fp, #-16]
	mov	r1, r3
	bl	getNextRequest(PLT)
	sub	r2, fp, #1456
	sub	r2, r2, #12
	sub	r2, r2, #4
	sub	r3, fp, #1552
	sub	r3, r3, #12
	sub	r3, r3, #12
	sub	ip, fp, #1600
	sub	ip, ip, #12
	mov	r0, r2
	mov	r1, r3
	mov	r2, ip
	bl	handle(PLT)
	b	.L77
.L78:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
