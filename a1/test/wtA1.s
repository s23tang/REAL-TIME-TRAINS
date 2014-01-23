	.file	"wtA1.c"
	.text
	.align	2
	.global	testFunc
	.type	testFunc, %function
testFunc:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	swi 1
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	testFunc, .-testFunc
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
	ldr	sl, .L7
.L6:
	add	sl, pc, sl
	mov	r0, #1
	ldr	r3, .L7+4
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
.L4:
	mov	r0, #1
	ldr	r3, .L7+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #33
	mov	r1, #34
	mov	r2, #35
	mov	r3, #36
	bl	testFunc(PLT)
	swi
	mov	r0, #1
	ldr	r3, .L7+12
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	b	.L4
.L8:
	.align	2
.L7:
	.word	_GLOBAL_OFFSET_TABLE_-(.L6+8)
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
	swi 1
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
	.section	.rodata
	.align	2
.LC3:
	.ascii	"args: %d %d %d %d %d\012\015\000"
	.text
	.align	2
	.global	getNextRequest
	.type	getNextRequest, %function
getNextRequest:
	@ args = 0, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #24
	ldr	sl, .L23
.L22:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L23+4
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
.L20:
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
	ldr	r3, [fp, #-28]
	ldr	ip, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	lr, [r3, #4]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-28]
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #16]
	str	r2, [sp, #0]
	str	r1, [sp, #4]
	str	r3, [sp, #8]
	mov	r0, #1
	ldr	r3, .L23+8
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L24:
	.align	2
.L23:
	.word	_GLOBAL_OFFSET_TABLE_-(.L22+8)
	.word	.L20(GOTOFF)
	.word	.LC3(GOTOFF)
	.size	getNextRequest, .-getNextRequest
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
	ldr	sl, .L34
.L33:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L26
.L27:
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
.L26:
	ldr	r3, [fp, #-24]
	cmp	r3, #7
	bls	.L27
	ldr	r2, [fp, #-28]
	ldr	r3, .L34+4
	str	r3, [r2, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L34+8
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
	ldr	r3, .L34+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #12
	str	r3, [fp, #-24]
	b	.L29
.L30:
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
.L29:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L30
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
	str	r3, [r2, #24]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #28]
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L35:
	.align	2
.L34:
	.word	_GLOBAL_OFFSET_TABLE_-(.L33+8)
	.word	1286400
	.word	1610612752
	.word	firstUserTask(GOT)
	.size	initialize, .-initialize
	.align	2
	.global	schedule
	.type	schedule, %function
schedule:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	str	r0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L37
.L38:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L39
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L41
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #24]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	str	r3, [r2, #24]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r3, [r2, #4]
.L41:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	b	.L43
.L39:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L37:
	ldr	r3, [fp, #-20]
	cmp	r3, #7
	bls	.L38
	mov	r3, #0
	str	r3, [fp, #-28]
.L43:
	ldr	r3, [fp, #-28]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	schedule, .-schedule
	.section	.rodata
	.align	2
.LC4:
	.ascii	"kerxit.c: Hello.\012\015\000"
	.align	2
.LC5:
	.ascii	"kerxit.c: Activating.\012\015\000"
	.align	2
.LC6:
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
	ldr	sl, .L49
.L48:
	add	sl, pc, sl
	str	r0, [fp, #-20]
	str	r1, [fp, #-24]
	mov	r0, #1
	ldr	r3, .L49+4
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L49+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r0, [fp, #-20]
	ldr	r1, [fp, #-24]
	bl	getNextRequest(PLT)
	mov	r0, #1
	ldr	r3, .L49+12
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L50:
	.align	2
.L49:
	.word	_GLOBAL_OFFSET_TABLE_-(.L48+8)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	.LC6(GOTOFF)
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
	@ args = 0, pretend = 0, frame = 1040
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #1040
	str	r0, [fp, #-1044]
	str	r1, [fp, #-1048]
	sub	r2, fp, #944
	sub	r1, fp, #1008
	sub	r3, fp, #1024
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r0, r2
	mov	r2, r3
	bl	initialize(PLT)
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L54
.L55:
	sub	r3, fp, #1008
	mov	r0, r3
	bl	schedule(PLT)
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L56
	mov	r3, #0
	str	r3, [fp, #-1052]
	b	.L58
.L56:
	sub	r3, fp, #1024
	sub	r3, r3, #12
	sub	r3, r3, #4
	ldr	r0, [fp, #-16]
	mov	r1, r3
	bl	kerxit(PLT)
	sub	r2, fp, #944
	sub	r3, fp, #1024
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	bl	handle(PLT)
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L54:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	bls	.L55
	mov	r3, #0
	str	r3, [fp, #-1052]
.L58:
	ldr	r3, [fp, #-1052]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
