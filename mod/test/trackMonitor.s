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
	mov	r3, #1
	str	r3, [fp, #-36]
	b	.L24
.L22:
	mov	r3, #0
	str	r3, [fp, #-36]
.L24:
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
	bne	.L27
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	beq	.L27
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	beq	.L27
	mov	r3, #1
	str	r3, [fp, #-32]
	b	.L31
.L27:
	mov	r3, #0
	str	r3, [fp, #-32]
.L31:
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
	b	.L34
.L35:
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
	bne	.L36
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
	bne	.L36
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
.L36:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L34:
	ldr	r3, [fp, #-16]
	cmp	r3, #99
	ble	.L35
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L40
.L41:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L42
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L42
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
.L42:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L40:
	ldr	r3, [fp, #-16]
	cmp	r3, #143
	ble	.L41
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
	b	.L50
.L51:
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
	bne	.L52
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
.L52:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L50:
	ldr	r3, [fp, #-16]
	cmp	r3, #99
	ble	.L51
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	reserveSensor, .-reserveSensor
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
	@ args = 0, pretend = 0, frame = 11344
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #11328
	sub	sp, sp, #20
	ldr	sl, .L115
.L114:
	add	sl, pc, sl
	mov	r3, #0
	str	r3, [fp, #-64]
	ldr	r2, .L115+4
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #4]
	sub	r3, fp, #6912
	sub	r3, r3, #16
	sub	r3, r3, #48
	mov	r0, r3
	bl	init_tracka(PLT)
	ldr	r3, .L115+12
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	ldr	r3, .L115+16
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-60]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-56]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-52]
	sub	r1, fp, #6912
	sub	r1, r1, #16
	sub	r1, r1, #48
	sub	r2, fp, #8128
	sub	r2, r2, #16
	sub	r2, r2, #32
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #36
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	initSensors(PLT)
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #32
	mov	r0, r3
	bl	initBranches(PLT)
.L57:
	sub	r2, fp, #11264
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	r3, fp, #11328
	sub	r3, r3, #16
	sub	r3, r3, #16
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, .L115+20
	sub	r2, fp, #16
	ldr	r3, [r2, r3]
	cmp	r3, #4
	addls	pc, pc, r3, asl #2
	b	.L58
	.p2align 2
.L64:
	b	.L59
	b	.L60
	b	.L61
	b	.L62
	b	.L63
.L59:
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L65
	ldr	r3, .L115+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L67
.L65:
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L115+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L115+28
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L115+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L115+32
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	b	.L68
.L67:
	ldr	r3, .L115+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L69
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L68
.L69:
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
	ldr	r3, .L115+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L115+28
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
	ldr	r3, .L115+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L115+32
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
.L68:
	ldr	r2, .L115+20
	mov	r3, #13
	sub	r1, fp, #16
	str	r3, [r1, r2]
	ldr	r3, .L115+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-56]
	str	r3, [r2, #0]
	sub	r2, fp, #11264
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #12
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-52]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L115+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L58
.L63:
	ldr	r3, .L115+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L71
	ldr	r3, .L115+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L115+28
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L115+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L115+32
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	b	.L73
.L71:
	ldr	r3, .L115+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L73
	ldr	r3, .L115+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L115+28
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
	ldr	r3, .L115+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L115+32
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
.L73:
	ldr	r2, .L115+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L58
.L60:
	ldr	r3, .L115+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-48]
	ldr	r0, [fp, #-60]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, .L115+28
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	bne	.L75
	ldr	r3, .L115+32
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #200
	cmp	r2, r3
	blt	.L75
	ldr	r3, .L115+32
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	add	r3, r3, #200
	cmp	r2, r3
	bgt	.L75
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #11264
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #12
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L79
.L75:
	ldr	r3, .L115+28
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	bne	.L80
	ldr	r3, .L115+32
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	sub	r3, r3, #200
	cmp	r2, r3
	blt	.L80
	ldr	r3, .L115+32
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	add	r3, r3, #200
	cmp	r2, r3
	bgt	.L80
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	sub	r2, fp, #11264
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #12
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L79
.L80:
	ldr	r3, .L115+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L84
	ldr	r3, .L115+28
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	bne	.L84
	ldr	r3, .L115+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #11264
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #12
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L79
.L84:
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L79
	ldr	r3, .L115+28
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmn	r3, #1
	bne	.L79
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r1, [r3, #4]
	sub	r2, fp, #11264
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #12
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L79:
	ldr	r2, .L115+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L58
.L62:
	ldr	r3, .L115+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L89
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L91
.L89:
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L115+28
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L115+32
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	b	.L92
.L91:
	ldr	r3, .L115+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L93
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L92
.L93:
	ldr	r3, .L115+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, .L115+28
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #4]
	ldr	r3, .L115+32
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #4]
.L92:
	ldr	r2, .L115+20
	mov	r3, #3
	sub	r1, fp, #16
	str	r3, [r1, r2]
	sub	r2, fp, #11264
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	ip, fp, #11328
	sub	ip, ip, #16
	sub	ip, ip, #12
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-52]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L115+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L58
.L61:
	ldr	r3, .L115+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-40]
	ldr	r3, .L115+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-36]
	ldr	r3, .L115+20
	mov	r2, #12
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-32]
	ldr	r3, .L115+20
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
	b	.L95
.L96:
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
	sub	r3, r3, #32
	sub	ip, fp, #6912
	sub	ip, ip, #16
	sub	ip, ip, #48
	mov	r0, r1
	mov	r1, r3
	mov	r3, ip
	bl	checkReserved(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L97
	mov	r3, #1
	str	r3, [fp, #-20]
	b	.L99
.L97:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L95:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L96
.L99:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L100
.L101:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, .L115+24
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
	sub	r3, r3, #32
	mov	r0, r1
	mov	r1, r3
	mov	r2, lr
	mov	r3, ip
	bl	checkBranches(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L102
	mov	r3, #1
	str	r3, [fp, #-20]
	b	.L104
.L102:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L100:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L101
.L104:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L105
	ldr	r2, .L115+36
	mvn	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L58
.L105:
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
	sub	r2, r2, #32
	sub	r3, fp, #10432
	sub	r3, r3, #16
	sub	r3, r3, #32
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	releaseAllMyReservation(PLT)
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L107
.L108:
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
	sub	r3, r3, #32
	mov	r0, r1
	mov	r1, r3
	bl	reserveSensor(PLT)
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L107:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L108
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L110
.L111:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, .L115+24
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
	sub	r3, r3, #32
	mov	r0, r1
	mov	r1, r3
	mov	r2, lr
	mov	r3, ip
	bl	reserveBranch(PLT)
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L110:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L111
	ldr	r2, .L115+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
.L58:
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	sub	r3, fp, #11328
	sub	r3, r3, #16
	sub	r3, r3, #12
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	b	.L57
.L116:
	.align	2
.L115:
	.word	_GLOBAL_OFFSET_TABLE_-(.L114+8)
	.word	-10468
	.word	-10476
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	-11320
	.word	-11344
	.word	-11292
	.word	-11300
	.word	-11340
	.size	trackMonitor, .-trackMonitor
	.ident	"GCC: (GNU) 4.0.2"
