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
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	bne	.L61
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L60
.L62:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L63
	mov	r3, #1
	str	r3, [fp, #-28]
	b	.L60
.L63:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L61:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L62
	mov	r3, #0
	str	r3, [fp, #-28]
.L60:
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
	@ args = 0, pretend = 0, frame = 11368
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #11328
	sub	sp, sp, #44
	ldr	sl, .L142
.L141:
	add	sl, pc, sl
	mov	r3, #0
	str	r3, [fp, #-88]
	ldr	r2, .L142+4
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L142+8
	sub	r0, fp, #16
	add	r2, r0, r3
	mov	r3, #0
	str	r3, [r2, #4]
	mvn	r3, #0
	str	r3, [fp, #-76]
	mvn	r3, #1
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-68]
	sub	r3, fp, #6976
	sub	r3, r3, #16
	sub	r3, r3, #8
	mov	r0, r3
	bl	init_tracka(PLT)
	ldr	r3, .L142+12
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	ldr	r3, .L142+16
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-64]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-60]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-56]
	sub	r1, fp, #6976
	sub	r1, r1, #16
	sub	r1, r1, #8
	sub	r2, fp, #8128
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #60
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	initSensors(PLT)
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #56
	mov	r0, r3
	bl	initBranches(PLT)
.L68:
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	r3, fp, #11328
	sub	r3, r3, #16
	sub	r3, r3, #40
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, .L142+20
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r3, #7
	addls	pc, pc, r3, asl #2
	b	.L69
	.p2align 2
.L78:
	b	.L70
	b	.L71
	b	.L72
	b	.L73
	b	.L74
	b	.L75
	b	.L76
	b	.L77
.L70:
	ldr	r3, .L142+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L79
	ldr	r3, .L142+8
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L142+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L81
.L79:
	ldr	r3, .L142+24
	sub	r0, fp, #16
	ldr	r2, [r0, r3]
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L142+20
	mov	r2, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L142+28
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L142+20
	mov	r2, #8
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L142+32
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L142+20
	mov	r2, #12
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-84]
	b	.L82
.L81:
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L83
	ldr	r3, .L142+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L142+24
	sub	r0, fp, #16
	ldr	r3, [r0, r3]
	cmp	r2, r3
	bne	.L82
.L83:
	ldr	r3, .L142+24
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	ldr	r3, .L142+8
	sub	r0, fp, #16
	add	r3, r0, r3
	str	r2, [r3, #4]
	ldr	r3, .L142+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L142+28
	sub	r0, fp, #16
	add	r3, r0, r3
	str	r2, [r3, #4]
	ldr	r3, .L142+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L142+32
	sub	r0, fp, #16
	add	r3, r0, r3
	str	r2, [r3, #4]
	ldr	r3, .L142+20
	mov	r2, #12
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-80]
.L82:
	ldr	r2, .L142+20
	mov	r3, #13
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r3, .L142+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	str	r3, [r2, #0]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-56]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L142+36
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	b	.L69
.L74:
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L142+24
	sub	r0, fp, #16
	ldr	r3, [r0, r3]
	cmp	r2, r3
	bne	.L85
	ldr	r3, .L142+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L142+28
	sub	r0, fp, #16
	add	r3, r0, r3
	str	r2, [r3, #0]
	ldr	r3, .L142+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L142+32
	sub	r0, fp, #16
	add	r3, r0, r3
	str	r2, [r3, #0]
	b	.L87
.L85:
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L142+24
	sub	r0, fp, #16
	ldr	r3, [r0, r3]
	cmp	r2, r3
	bne	.L87
	ldr	r3, .L142+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L142+28
	sub	r0, fp, #16
	add	r3, r0, r3
	str	r2, [r3, #4]
	ldr	r3, .L142+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L142+32
	sub	r0, fp, #16
	add	r3, r0, r3
	str	r2, [r3, #4]
.L87:
	ldr	r2, .L142+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L69
.L71:
	ldr	r3, .L142+20
	mov	r2, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-52]
	ldr	r0, [fp, #-64]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, .L142+28
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bne	.L89
	ldr	r3, .L142+32
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-48]
	sub	r3, r3, #300
	cmp	r2, r3
	blt	.L89
	ldr	r3, .L142+32
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-48]
	add	r3, r3, #300
	cmp	r2, r3
	bgt	.L89
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-76]
	b	.L93
.L89:
	ldr	r3, .L142+28
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bne	.L94
	ldr	r3, .L142+32
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-48]
	sub	r3, r3, #300
	cmp	r2, r3
	blt	.L94
	ldr	r3, .L142+32
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-48]
	add	r3, r3, #300
	cmp	r2, r3
	bgt	.L94
	ldr	r3, .L142+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r1, [r3, #4]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-72]
	b	.L93
.L94:
	ldr	r3, .L142+8
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L98
	ldr	r3, .L142+28
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	bne	.L98
	ldr	r0, [fp, #-52]
	ldr	r1, [fp, #-80]
	bl	isInPath(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L98
	ldr	r3, .L142+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-76]
	b	.L93
.L98:
	ldr	r3, .L142+8
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L102
	ldr	r3, .L142+28
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	cmn	r3, #1
	bne	.L102
	ldr	r0, [fp, #-52]
	ldr	r1, [fp, #-84]
	bl	isInPath(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L102
	ldr	r3, .L142+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r1, [r3, #4]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-72]
	b	.L93
.L102:
	ldr	r3, .L142+28
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bne	.L106
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-76]
	b	.L93
.L106:
	ldr	r3, .L142+28
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bne	.L108
	ldr	r3, .L142+8
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r1, [r3, #4]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-72]
	b	.L93
.L108:
	ldr	r0, [fp, #-52]
	ldr	r1, [fp, #-84]
	bl	isInPath(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L110
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-76]
	b	.L93
.L110:
	ldr	r0, [fp, #-52]
	ldr	r1, [fp, #-80]
	bl	isInPath(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L112
	ldr	r3, .L142+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r1, [r3, #4]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-72]
	b	.L93
.L112:
	ldr	r3, .L142+8
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L93
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	sub	r2, fp, #11328
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-72]
.L93:
	ldr	r2, .L142+36
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	b	.L69
.L73:
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L142+24
	sub	r0, fp, #16
	ldr	r3, [r0, r3]
	cmp	r2, r3
	bne	.L115
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L142+28
	sub	r0, fp, #16
	add	r2, r0, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L142+32
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	b	.L117
.L115:
	ldr	r3, .L142+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L142+24
	sub	r0, fp, #16
	ldr	r3, [r0, r3]
	cmp	r2, r3
	bne	.L117
	ldr	r3, .L142+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, .L142+28
	sub	r0, fp, #16
	add	r2, r0, r3
	mvn	r3, #0
	str	r3, [r2, #4]
	ldr	r3, .L142+32
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #4]
.L117:
	ldr	r2, .L142+36
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	b	.L69
.L72:
	ldr	r3, .L142+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-44]
	ldr	r3, .L142+20
	mov	r2, #8
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-40]
	ldr	r3, .L142+20
	mov	r2, #12
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-36]
	ldr	r3, .L142+20
	mov	r2, #16
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L119
.L120:
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L142+24
	sub	r1, fp, #16
	ldr	lr, [r1, r3]
	sub	r3, fp, #8128
	sub	r3, r3, #16
	sub	r3, r3, #56
	sub	ip, fp, #6976
	sub	ip, ip, #16
	sub	ip, ip, #8
	mov	r0, r2
	mov	r1, r3
	mov	r2, lr
	mov	r3, ip
	bl	checkReserved(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L121
	mov	r3, #1
	str	r3, [fp, #-24]
	b	.L123
.L121:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L119:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	blt	.L120
.L123:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L124
.L125:
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, .L142+24
	sub	r2, fp, #16
	ldr	lr, [r2, r3]
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldr	ip, [r3, #12]
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #56
	mov	r0, r1
	mov	r1, r3
	mov	r2, lr
	mov	r3, ip
	bl	checkBranches(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L126
	mov	r3, #1
	str	r3, [fp, #-24]
	b	.L128
.L126:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L124:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L125
.L128:
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	bne	.L129
	ldr	r2, .L142+36
	mvn	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	b	.L69
.L129:
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldr	r1, [r3, #8]
	sub	r2, fp, #8128
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #56
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	releaseAllMyReservation(PLT)
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L132
.L133:
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-28]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	sub	r3, fp, #8128
	sub	r3, r3, #16
	sub	r3, r3, #56
	mov	r0, r1
	mov	r1, r3
	bl	reserveSensor(PLT)
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L132:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	blt	.L133
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L135
.L136:
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, .L142+24
	sub	r2, fp, #16
	ldr	lr, [r2, r3]
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldr	ip, [r3, #12]
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #56
	mov	r0, r1
	mov	r1, r3
	mov	r2, lr
	mov	r3, ip
	bl	reserveBranch(PLT)
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L135:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L136
	ldr	r2, .L142+36
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	b	.L69
.L75:
	ldr	r3, .L142+24
	sub	r2, fp, #16
	ldr	r1, [r2, r3]
	sub	r2, fp, #8128
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #56
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	releaseAllMyReservation(PLT)
	b	.L69
.L76:
	sub	r2, fp, #8128
	sub	r2, r2, #16
	sub	r2, r2, #56
	ldr	r3, .L142+36
	mov	r1, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r1
	str	r2, [r3, #0]
	sub	r2, fp, #10432
	sub	r2, r2, #16
	sub	r2, r2, #56
	ldr	r3, .L142+36
	mov	r1, #8
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r1
	str	r2, [r3, #0]
	b	.L69
.L77:
	ldr	r3, .L142+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L138
	ldr	r3, .L142+36
	mov	r2, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-76]
	str	r3, [r2, #0]
	ldr	r3, .L142+36
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-72]
	str	r3, [r2, #0]
	b	.L69
.L138:
	ldr	r3, .L142+36
	mov	r2, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-72]
	str	r3, [r2, #0]
	ldr	r3, .L142+36
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-76]
	str	r3, [r2, #0]
.L69:
	ldr	r3, .L142+24
	sub	r0, fp, #16
	ldr	r2, [r0, r3]
	sub	r3, fp, #11328
	sub	r3, r3, #16
	sub	r3, r3, #36
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	b	.L68
.L143:
	.align	2
.L142:
	.word	_GLOBAL_OFFSET_TABLE_-(.L141+8)
	.word	-10492
	.word	-10500
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	-11344
	.word	-11368
	.word	-11316
	.word	-11324
	.word	-11364
	.size	trackMonitor, .-trackMonitor
	.ident	"GCC: (GNU) 4.0.2"
