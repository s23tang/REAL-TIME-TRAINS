	.file	"trackMonitor.c"
	.text
	.align	2
	.global	findIndex
	.type	findIndex, %function
findIndex:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	str	r0, [fp, #-20]
	str	r1, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2
.L3:
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	cmp	r2, r3
	bne	.L4
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	b	.L6
.L4:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-16]
	cmp	r3, #143
	ble	.L3
	mov	r3, #0
	str	r3, [fp, #-28]
.L6:
	ldr	r3, [fp, #-28]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	findIndex, .-findIndex
	.align	2
	.global	initBranches
	.type	initBranches, %function
initBranches:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	str	r0, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L10
.L11:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	mvn	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L10:
	ldr	r3, [fp, #-16]
	cmp	r3, #143
	ble	.L11
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	initBranches, .-initBranches
	.align	2
	.global	initSensors
	.type	initSensors, %function
initSensors:
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
	b	.L15
.L16:
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L17
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r1, r2, r3
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	str	r3, [r1, #0]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	mvn	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
.L17:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L15:
	ldr	r3, [fp, #-16]
	cmp	r3, #99
	ble	.L16
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	initSensors, .-initSensors
	.align	2
	.global	checkReserved
	.type	checkReserved, %function
checkReserved:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #24
	str	r0, [fp, #-20]
	str	r1, [fp, #-24]
	str	r2, [fp, #-28]
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3, #12]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L22
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	beq	.L22
	mov	r3, #1
	str	r3, [fp, #-36]
	b	.L25
.L22:
	mov	r3, #0
	str	r3, [fp, #-36]
.L25:
	ldr	r3, [fp, #-36]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	checkReserved, .-checkReserved
	.align	2
	.global	checkBranches
	.type	checkBranches, %function
checkBranches:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L28
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	beq	.L28
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	beq	.L28
	mov	r3, #1
	str	r3, [fp, #-32]
	b	.L32
.L28:
	mov	r3, #0
	str	r3, [fp, #-32]
.L32:
	ldr	r3, [fp, #-32]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	checkBranches, .-checkBranches
	.align	2
	.global	releaseAllMyReservation
	.type	releaseAllMyReservation, %function
releaseAllMyReservation:
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
	b	.L35
.L36:
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L37
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L37
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	mvn	r3, #0
	str	r3, [r2, #8]
.L37:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L35:
	ldr	r3, [fp, #-16]
	cmp	r3, #99
	ble	.L36
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L41
.L42:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L43
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L43
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	mvn	r3, #0
	str	r3, [r2, #8]
.L43:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L41:
	ldr	r3, [fp, #-16]
	cmp	r3, #143
	ble	.L42
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	releaseAllMyReservation, .-releaseAllMyReservation
	.align	2
	.global	reserveBranch
	.type	reserveBranch, %function
reserveBranch:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	str	r0, [fp, #-20]
	str	r1, [fp, #-24]
	str	r2, [fp, #-28]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	str	r3, [r2, #12]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	reserveBranch, .-reserveBranch
	.align	2
	.global	reserveSensor
	.type	reserveSensor, %function
reserveSensor:
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
	b	.L51
.L52:
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L53
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	mov	r3, #1
	str	r3, [r2, #4]
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	str	r3, [r2, #8]
.L53:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L51:
	ldr	r3, [fp, #-16]
	cmp	r3, #99
	ble	.L52
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	reserveSensor, .-reserveSensor
	.align	2
	.global	isInPath
	.type	isInPath, %function
isInPath:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	str	r0, [fp, #-20]
	str	r1, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-16]
	b	.L58
.L59:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L60
	mov	r3, #1
	str	r3, [fp, #-28]
	b	.L62
.L60:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L58:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L59
	mov	r3, #0
	str	r3, [fp, #-28]
.L62:
	ldr	r3, [fp, #-28]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	isInPath, .-isInPath
	.section	.rodata
	.align	2
.LC0:
	.ascii	"monitor\000"
	.align	2
.LC1:
	.ascii	"clock\000"
	.text
	.align	2
	.global	trackMonitor
	.type	trackMonitor, %function
trackMonitor:
	@ args = 0, pretend = 0, frame = 11360
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #11328
	sub	sp, sp, #36
	ldr	sl, .L124
.L123:
	add	sl, pc, sl
	mov	r3, #0
	str	r3, [fp, #-80]
	ldr	r2, .L124+4
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #4]
	sub	r3, fp, #6976
	sub	r3, r3, #16
	mov	r0, r3
	bl	init_tracka(PLT)
	ldr	r3, .L124+12
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	ldr	r3, .L124+16
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-68]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-64]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-60]
	sub	r1, fp, #6976
	sub	r1, r1, #16
	sub	r2, fp, #8128
	sub	r2, r2, #16
	sub	r2, r2, #48
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #52
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	initSensors(PLT)
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #48
	mov	r0, r3
	bl	initBranches(PLT)
	mov	r3, #1
	str	r3, [fp, #-56]
	mov	r3, #1
	str	r3, [fp, #-52]
.L66:
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #8
	sub	r3, fp, #11328
	sub	r3, r3, #16
	sub	r3, r3, #32
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, .L124+20
	sub	r2, fp, #16
	ldr	r3, [r2, r3]
	cmp	r3, #5
	addls	pc, pc, r3, asl #2
	b	.L67
	.p2align 2
.L74:
	b	.L68
	b	.L69
	b	.L70
	b	.L71
	b	.L72
	b	.L73
.L68:
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L75
	ldr	r3, .L124+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L124+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L77
.L75:
	ldr	r3, .L124+24
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L124+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L124+28
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L124+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L124+32
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L124+20
	mov	r2, #12
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-76]
	b	.L78
.L77:
	ldr	r3, .L124+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L79
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L124+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L78
.L79:
	ldr	r3, .L124+24
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
	ldr	r3, .L124+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L124+28
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
	ldr	r3, .L124+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L124+32
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
	ldr	r3, .L124+20
	mov	r2, #12
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-72]
.L78:
	ldr	r2, .L124+20
	mov	r3, #13
	sub	r1, fp, #16
	str	r3, [r1, r2]
	ldr	r3, .L124+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-64]
	str	r3, [r2, #0]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #8
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #28
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-60]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L124+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L67
.L72:
	ldr	r3, .L124+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L124+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L81
	ldr	r3, .L124+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L124+28
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L124+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L124+32
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	b	.L83
.L81:
	ldr	r3, .L124+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L124+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L83
	ldr	r3, .L124+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L124+28
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
	ldr	r3, .L124+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L124+32
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
.L83:
	ldr	r2, .L124+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L67
.L69:
	ldr	r3, .L124+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-48]
	ldr	r0, [fp, #-68]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, .L124+28
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	bne	.L85
	ldr	r3, .L124+32
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #300
	cmp	r2, r3
	blt	.L85
	ldr	r3, .L124+32
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	add	r3, r3, #300
	cmp	r2, r3
	bgt	.L85
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #8
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #28
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L89
.L85:
	ldr	r3, .L124+28
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	bne	.L90
	ldr	r3, .L124+32
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #300
	cmp	r2, r3
	blt	.L90
	ldr	r3, .L124+32
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	add	r3, r3, #300
	cmp	r2, r3
	bgt	.L90
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #8
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #28
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L89
.L90:
	ldr	r3, .L124+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L94
	ldr	r3, .L124+28
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	bne	.L94
	ldr	r3, .L124+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #8
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #28
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L89
.L94:
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L89
	ldr	r3, .L124+28
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmn	r3, #1
	bne	.L89
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #8
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #28
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L89:
	ldr	r2, .L124+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L67
.L71:
	ldr	r3, .L124+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L124+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L99
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L124+28
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L124+32
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	b	.L101
.L99:
	ldr	r3, .L124+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L124+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L101
	ldr	r3, .L124+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, .L124+28
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #4]
	ldr	r3, .L124+32
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #4]
.L101:
	ldr	r2, .L124+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L67
.L70:
	ldr	r3, .L124+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-40]
	ldr	r3, .L124+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-36]
	ldr	r3, .L124+20
	mov	r2, #12
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-32]
	ldr	r3, .L124+20
	mov	r2, #16
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L103
.L104:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L124+24
	sub	r1, fp, #16
	ldr	lr, [r1, r3]
	sub	r3, fp, #8128
	sub	r3, r3, #16
	sub	r3, r3, #48
	sub	ip, fp, #6976
	sub	ip, ip, #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, lr
	mov	r3, ip
	bl	checkReserved(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L105
	mov	r3, #1
	str	r3, [fp, #-20]
	b	.L107
.L105:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L103:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L104
.L107:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L108
.L109:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, .L124+24
	sub	r2, fp, #16
	ldr	lr, [r2, r3]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	ip, [r3, #12]
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #48
	mov	r0, r1
	mov	r1, r3
	mov	r2, lr
	mov	r3, ip
	bl	checkBranches(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L110
	mov	r3, #1
	str	r3, [fp, #-20]
	b	.L112
.L110:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L108:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L109
.L112:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L113
	ldr	r2, .L124+36
	mvn	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L67
.L113:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldr	r1, [r3, #8]
	sub	r2, fp, #8128
	sub	r2, r2, #16
	sub	r2, r2, #48
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #48
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	releaseAllMyReservation(PLT)
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L116
.L117:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	sub	r3, fp, #8128
	sub	r3, r3, #16
	sub	r3, r3, #48
	mov	r0, r1
	mov	r1, r3
	bl	reserveSensor(PLT)
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L116:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L117
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L119
.L120:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, .L124+24
	sub	r2, fp, #16
	ldr	lr, [r2, r3]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	ip, [r3, #12]
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #48
	mov	r0, r1
	mov	r1, r3
	mov	r2, lr
	mov	r3, ip
	bl	reserveBranch(PLT)
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L119:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L120
	ldr	r2, .L124+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L67
.L73:
	ldr	r3, .L124+24
	sub	r2, fp, #16
	ldr	r1, [r2, r3]
	sub	r2, fp, #8128
	sub	r2, r2, #16
	sub	r2, r2, #48
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #48
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	releaseAllMyReservation(PLT)
.L67:
	ldr	r3, .L124+24
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	sub	r3, fp, #11328
	sub	r3, r3, #16
	sub	r3, r3, #28
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	b	.L66
.L125:
	.align	2
.L124:
	.word	_GLOBAL_OFFSET_TABLE_-(.L123+8)
	.word	-10484
	.word	-10492
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	-11336
	.word	-11360
	.word	-11308
	.word	-11316
	.word	-11356
	.size	trackMonitor, .-trackMonitor
	.ident	"GCC: (GNU) 4.0.2"
