	.file	"wtA1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"firstUserTask.c: initializing\012\015\000"
	.align	2
.LC1:
	.ascii	"firstUserTask.c: good-bye\012\015\000"
	.align	2
.LC2:
	.ascii	"firstUserTask.c: hello\012\015\000"
	.text
	.align	2
	.global	firstUserTask
	.type	firstUserTask, %function
firstUserTask:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	ldr	sl, .L5
.L4:
	add	sl, pc, sl
	mov	r0, #1
	ldr	r3, .L5+4
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
.L2:
	mov	r0, #1
	ldr	r3, .L5+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	swi
	mov	r0, #1
	ldr	r3, .L5+12
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	b	.L2
.L6:
	.align	2
.L5:
	.word	_GLOBAL_OFFSET_TABLE_-(.L4+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.size	firstUserTask, .-firstUserTask
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
	mov	r3, #0
	mov	r0, r3
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
	mov	r3, #0
	mov	r0, r3
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
	mov	r3, #0
	mov	r0, r3
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
	ldmfd	sp, {fp, sp, pc}
	.size	Exit, .-Exit
	.align	2
	.global	getNextRequest
	.type	getNextRequest, %function
getNextRequest:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	ldr	sl, .L21
.L20:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	ldr	r3, .L21+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	stmfd sp!, {r0, r4-r9, sl, fp}
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
.L18:
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
	ldmfd sp!, {r0, r4-r9, sl, fp}
	str ip, [r0, #0]
	str r1, [r0, #4]
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L22:
	.align	2
.L21:
	.word	_GLOBAL_OFFSET_TABLE_-(.L20+8)
	.word	.L18(GOTOFF)
	.size	getNextRequest, .-getNextRequest
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ args = 0, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	ldr	sl, .L29
.L28:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	ldr	r2, [fp, #-28]
	ldr	r3, .L29+4
	str	r3, [r2, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L29+8
	str	r3, [r2, #4]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, .L29+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #12
	str	r3, [fp, #-20]
	b	.L24
.L25:
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L24:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	bhi	.L25
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L30:
	.align	2
.L29:
	.word	_GLOBAL_OFFSET_TABLE_-(.L28+8)
	.word	1286400
	.word	1610612752
	.word	firstUserTask(GOT)
	.size	initialize, .-initialize
	.align	2
	.global	schedule
	.type	schedule, %function
schedule:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r0, r3
	ldmfd	sp, {r3, fp, sp, pc}
	.size	schedule, .-schedule
	.section	.rodata
	.align	2
.LC3:
	.ascii	"kerxit.c: Hello.\012\015\000"
	.align	2
.LC4:
	.ascii	"kerxit.c: Activating.\012\015\000"
	.align	2
.LC5:
	.ascii	"kerxit.c: Good-bye.\012\015\000"
	.text
	.align	2
	.global	kerxit
	.type	kerxit, %function
kerxit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	ldr	sl, .L36
.L35:
	add	sl, pc, sl
	str	r0, [fp, #-20]
	str	r1, [fp, #-24]
	mov	r0, #1
	ldr	r3, .L36+4
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L36+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r0, [fp, #-20]
	bl	getNextRequest(PLT)
	mov	r0, #1
	ldr	r3, .L36+12
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L37:
	.align	2
.L36:
	.word	_GLOBAL_OFFSET_TABLE_-(.L35+8)
	.word	.LC3(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.size	kerxit, .-kerxit
	.align	2
	.global	handle
	.type	handle, %function
handle:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	handle, .-handle
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 36
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #36
	str	r0, [fp, #-44]
	str	r1, [fp, #-48]
	sub	r3, fp, #40
	mov	r0, r3
	bl	initialize(PLT)
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L41
.L42:
	sub	r3, fp, #40
	mov	r0, r3
	bl	schedule(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-20]
	ldr	r1, [fp, #-16]
	bl	kerxit(PLT)
	sub	r3, fp, #40
	mov	r0, r3
	ldr	r1, [fp, #-16]
	bl	handle(PLT)
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L41:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bls	.L42
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
