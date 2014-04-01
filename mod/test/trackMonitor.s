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
	b	.L10
.L11:
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
	bne	.L12
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
.L12:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L10:
	ldr	r3, [fp, #-16]
	cmp	r3, #99
	ble	.L11
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	initSensors, .-initSensors
	.align	2
	.global	checkReserved
	.type	checkReserved, %function
checkReserved:
	@ args = 0, pretend = 0, frame = 28
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-36]
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
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L17
	mov	r3, #1
	str	r3, [fp, #-40]
	b	.L19
.L17:
	mov	r3, #0
	str	r3, [fp, #-40]
.L19:
	ldr	r3, [fp, #-40]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	checkReserved, .-checkReserved
	.align	2
	.global	releaseAllMyReservation
	.type	releaseAllMyReservation, %function
releaseAllMyReservation:
	@ args = 0, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	str	r0, [fp, #-20]
	str	r1, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L22
.L23:
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
	bne	.L24
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
	bne	.L24
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
.L24:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L22:
	ldr	r3, [fp, #-16]
	cmp	r3, #99
	ble	.L23
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	releaseAllMyReservation, .-releaseAllMyReservation
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
	b	.L30
.L31:
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
	bne	.L32
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
.L32:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L30:
	ldr	r3, [fp, #-16]
	cmp	r3, #99
	ble	.L31
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
	@ args = 0, pretend = 0, frame = 9024
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #9024
	sub	sp, sp, #4
	ldr	sl, .L87
.L86:
	add	sl, pc, sl
	mov	r3, #0
	str	r3, [fp, #-56]
	ldr	r2, .L87+4
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r3, .L87+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L87+8
	sub	r0, fp, #16
	add	r2, r0, r3
	mov	r3, #0
	str	r3, [r2, #4]
	sub	r3, fp, #6912
	sub	r3, r3, #16
	sub	r3, r3, #40
	mov	r0, r3
	bl	init_tracka(PLT)
	ldr	r3, .L87+12
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	ldr	r3, .L87+16
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-52]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-48]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]
	sub	r1, fp, #6912
	sub	r1, r1, #16
	sub	r1, r1, #40
	sub	r2, fp, #8128
	sub	r2, r2, #16
	sub	r2, r2, #24
	sub	r3, fp, #8128
	sub	r3, r3, #16
	sub	r3, r3, #28
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	initSensors(PLT)
.L37:
	sub	r3, fp, #8960
	sub	r3, r3, #16
	sub	r3, r3, #44
	sub	r2, fp, #9024
	sub	r2, r2, #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L87+20
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r3, #4
	addls	pc, pc, r3, asl #2
	b	.L38
	.p2align 2
.L44:
	b	.L39
	b	.L40
	b	.L41
	b	.L42
	b	.L43
.L39:
	ldr	r3, .L87+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L45
	ldr	r3, .L87+8
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L87+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L47
.L45:
	ldr	r3, .L87+24
	sub	r0, fp, #16
	ldr	r2, [r0, r3]
	ldr	r3, .L87+8
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L87+20
	mov	r2, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L87+28
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	ldr	r3, .L87+20
	mov	r2, #8
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L87+32
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	b	.L48
.L47:
	ldr	r3, .L87+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L49
	ldr	r3, .L87+8
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L87+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L48
.L49:
	ldr	r3, .L87+24
	sub	r0, fp, #16
	ldr	r2, [r0, r3]
	ldr	r3, .L87+8
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
	ldr	r3, .L87+20
	mov	r2, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L87+28
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
	ldr	r3, .L87+20
	mov	r2, #8
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L87+32
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
.L48:
	ldr	r2, .L87+20
	mov	r3, #13
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r3, .L87+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-48]
	str	r3, [r2, #0]
	sub	r2, fp, #8960
	sub	r2, r2, #16
	sub	r2, r2, #44
	sub	ip, fp, #8960
	sub	ip, ip, #16
	sub	ip, ip, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-44]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L87+36
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	b	.L38
.L43:
	ldr	r3, .L87+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L87+24
	sub	r0, fp, #16
	ldr	r3, [r0, r3]
	cmp	r2, r3
	bne	.L51
	ldr	r3, .L87+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L87+28
	sub	r0, fp, #16
	add	r3, r0, r3
	str	r2, [r3, #0]
	ldr	r3, .L87+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L87+32
	sub	r0, fp, #16
	add	r3, r0, r3
	str	r2, [r3, #0]
	b	.L53
.L51:
	ldr	r3, .L87+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L87+24
	sub	r0, fp, #16
	ldr	r3, [r0, r3]
	cmp	r2, r3
	bne	.L53
	ldr	r3, .L87+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L87+28
	sub	r0, fp, #16
	add	r3, r0, r3
	str	r2, [r3, #4]
	ldr	r3, .L87+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, .L87+32
	sub	r0, fp, #16
	add	r3, r0, r3
	str	r2, [r3, #4]
.L53:
	ldr	r2, .L87+36
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L38
.L40:
	ldr	r3, .L87+20
	mov	r2, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-40]
	ldr	r0, [fp, #-52]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, .L87+28
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L55
	ldr	r3, .L87+32
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	sub	r3, r3, #200
	cmp	r2, r3
	blt	.L55
	ldr	r3, .L87+32
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	add	r3, r3, #200
	cmp	r2, r3
	bgt	.L55
	ldr	r3, .L87+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #8960
	sub	r2, r2, #16
	sub	r2, r2, #44
	sub	ip, fp, #8960
	sub	ip, ip, #16
	sub	ip, ip, #60
	mov	r3, #16
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	b	.L59
.L55:
	ldr	r3, .L87+28
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L60
	ldr	r3, .L87+32
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-36]
	sub	r3, r3, #200
	cmp	r2, r3
	blt	.L60
	ldr	r3, .L87+32
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-36]
	add	r3, r3, #200
	cmp	r2, r3
	bgt	.L60
	ldr	r3, .L87+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r1, [r3, #4]
	sub	r2, fp, #8960
	sub	r2, r2, #16
	sub	r2, r2, #44
	sub	ip, fp, #8960
	sub	ip, ip, #16
	sub	ip, ip, #60
	mov	r3, #16
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	b	.L59
.L60:
	ldr	r3, .L87+8
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L64
	ldr	r3, .L87+28
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	bne	.L64
	ldr	r3, .L87+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #8960
	sub	r2, r2, #16
	sub	r2, r2, #44
	sub	ip, fp, #8960
	sub	ip, ip, #16
	sub	ip, ip, #60
	mov	r3, #16
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	b	.L59
.L64:
	ldr	r3, .L87+8
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L59
	ldr	r3, .L87+28
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	cmn	r3, #1
	bne	.L59
	ldr	r3, .L87+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r1, [r3, #4]
	sub	r2, fp, #8960
	sub	r2, r2, #16
	sub	r2, r2, #44
	sub	ip, fp, #8960
	sub	ip, ip, #16
	sub	ip, ip, #60
	mov	r3, #16
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
.L59:
	ldr	r2, .L87+36
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	b	.L38
.L42:
	ldr	r3, .L87+8
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L69
	ldr	r3, .L87+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L87+24
	sub	r0, fp, #16
	ldr	r3, [r0, r3]
	cmp	r2, r3
	bne	.L71
.L69:
	ldr	r3, .L87+8
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L87+28
	sub	r0, fp, #16
	add	r2, r0, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L87+32
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	b	.L72
.L71:
	ldr	r3, .L87+8
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L73
	ldr	r3, .L87+8
	sub	r0, fp, #16
	add	r3, r0, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L87+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L72
.L73:
	ldr	r3, .L87+8
	sub	r0, fp, #16
	add	r2, r0, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, .L87+28
	sub	r1, fp, #16
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #4]
	ldr	r3, .L87+32
	sub	r0, fp, #16
	add	r2, r0, r3
	mvn	r3, #0
	str	r3, [r2, #4]
.L72:
	ldr	r2, .L87+20
	mov	r3, #3
	sub	r1, fp, #16
	str	r3, [r1, r2]
	sub	r2, fp, #8960
	sub	r2, r2, #16
	sub	r2, r2, #44
	sub	ip, fp, #8960
	sub	ip, ip, #16
	sub	ip, ip, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-44]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L87+36
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	b	.L38
.L41:
	ldr	r3, .L87+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-32]
	ldr	r3, .L87+20
	mov	r2, #8
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r2, .L87+20
	mov	r3, #18
	sub	r1, fp, #16
	str	r3, [r1, r2]
	ldr	r1, [fp, #-32]
	ldr	r3, .L87+20
	mov	r2, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, .L87+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-28]
	str	r3, [r2, #0]
	ldr	r3, .L87+24
	sub	r2, fp, #16
	ldr	r1, [r2, r3]
	ldr	r3, .L87+20
	mov	r2, #12
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r2, fp, #8960
	sub	r2, r2, #16
	sub	r2, r2, #44
	sub	ip, fp, #8960
	sub	ip, ip, #16
	sub	ip, ip, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-44]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L75
.L76:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	sub	r3, fp, #8128
	sub	r3, r3, #16
	sub	r3, r3, #24
	sub	ip, fp, #6912
	sub	ip, ip, #16
	sub	ip, ip, #40
	mov	r0, r1
	mov	r1, r3
	mov	r3, ip
	bl	checkReserved(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L77
	mov	r3, #1
	str	r3, [fp, #-20]
	b	.L79
.L77:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L75:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L76
.L79:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L80
	ldr	r2, .L87+36
	mvn	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	b	.L38
.L80:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	sub	r3, fp, #8128
	sub	r3, r3, #16
	sub	r3, r3, #24
	mov	r0, r2
	mov	r1, r3
	bl	releaseAllMyReservation(PLT)
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L82
.L83:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	sub	r3, fp, #8128
	sub	r3, r3, #16
	sub	r3, r3, #24
	mov	r0, r1
	mov	r1, r3
	bl	reserveSensor(PLT)
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L82:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L83
	ldr	r2, .L87+36
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
.L38:
	ldr	r3, .L87+24
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	sub	r3, fp, #8960
	sub	r3, r3, #16
	sub	r3, r3, #60
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	b	.L37
.L88:
	.align	2
.L87:
	.word	_GLOBAL_OFFSET_TABLE_-(.L86+8)
	.word	-8156
	.word	-8164
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	-9004
	.word	-9024
	.word	-8980
	.word	-8988
	.word	-9020
	.size	trackMonitor, .-trackMonitor
	.ident	"GCC: (GNU) 4.0.2"
