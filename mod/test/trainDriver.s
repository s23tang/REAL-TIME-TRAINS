	.file	"trainDriver.c"
	.text
	.align	2
	.global	init_table
	.type	init_table, %function
init_table:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	str	r0, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #4
	mov	r3, #65
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #8
	mov	r3, #150
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #12
	mov	r3, #220
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	mov	r3, #280
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #20
	mov	r3, #360
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #24
	mov	r3, #440
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #28
	mov	r3, #480
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	mov	r3, #560
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #36
	mov	r3, #640
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	mov	r3, #720
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #44
	mov	r3, #760
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	ldr	r3, .L3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #52
	ldr	r3, .L3
	str	r3, [r2, #0]
	ldmfd	sp, {r3, fp, sp, pc}
.L4:
	.align	2
.L3:
	.word	830
	.size	init_table, .-init_table
	.align	2
	.global	init_velocity
	.type	init_velocity, %function
init_velocity:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-16]
	mov	r3, #9
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #4
	mov	r3, #80
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #8
	mov	r3, #140
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #12
	mov	r3, #185
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	mov	r3, #237
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #20
	ldr	r3, .L7
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #24
	ldr	r3, .L7+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #28
	ldr	r3, .L7+8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	ldr	r3, .L7+12
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #36
	ldr	r3, .L7+16
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	ldr	r3, .L7+20
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #44
	ldr	r3, .L7+24
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	ldr	r3, .L7+28
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #52
	ldr	r3, .L7+32
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #9
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4
	mov	r3, #61
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #8
	mov	r3, #108
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #12
	mov	r3, #143
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #16
	mov	r3, #179
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #20
	mov	r3, #215
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #24
	mov	r3, #240
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #28
	ldr	r3, .L7+36
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #32
	ldr	r3, .L7+40
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #36
	ldr	r3, .L7+44
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #40
	ldr	r3, .L7+48
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #44
	ldr	r3, .L7+52
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, .L7+56
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #52
	ldr	r3, .L7+60
	str	r3, [r2, #0]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L8:
	.align	2
.L7:
	.word	285
	.word	355
	.word	393
	.word	449
	.word	511
	.word	561
	.word	651
	.word	663
	.word	671
	.word	297
	.word	350
	.word	379
	.word	435
	.word	463
	.word	489
	.word	498
	.size	init_velocity, .-init_velocity
	.align	2
	.global	findNextDistance
	.type	findNextDistance, %function
findNextDistance:
	@ args = 0, pretend = 0, frame = 92
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #92
	str	r0, [fp, #-88]
	str	r1, [fp, #-92]
	str	r2, [fp, #-96]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-20]
	b	.L10
.L11:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-88]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	beq	.L12
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L10:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bgt	.L11
.L12:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L14
	mov	r3, #0
	str	r3, [fp, #-104]
	b	.L16
.L14:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, r2, asl #3]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-96]
	add	r3, r2, r3
	sub	lr, fp, #68
	mov	ip, r3
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2, r3}
	stmia	lr, {r0, r1, r2, r3}
	sub	ip, fp, #84
	sub	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L17
.L18:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, r2, asl #3]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-96]
	add	r3, r2, r3
	sub	lr, fp, #68
	mov	ip, r3
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2, r3}
	stmia	lr, {r0, r1, r2, r3}
	ldr	r3, [fp, #-64]
	cmp	r3, #1
	bne	.L19
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #0]
	b	.L21
.L19:
	ldr	r3, [fp, #-64]
	cmp	r3, #3
	bne	.L22
	sub	ip, fp, #84
	sub	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	b	.L24
.L22:
	sub	ip, fp, #84
	sub	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, [fp, #-20]
	sub	r2, r3, #1
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, r2, asl #3]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-96]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-76]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	beq	.L25
	sub	ip, fp, #84
	sub	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
.L25:
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
.L24:
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L17:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L18
.L21:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-104]
.L16:
	ldr	r3, [fp, #-104]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	findNextDistance, .-findNextDistance
	.align	2
	.global	howFarFromDest
	.type	howFarFromDest, %function
howFarFromDest:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #88
	str	r0, [fp, #-88]
	str	r1, [fp, #-92]
	str	r2, [fp, #-96]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-20]
	b	.L29
.L30:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-88]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	beq	.L31
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L29:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bgt	.L30
.L31:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L33
	mov	r3, #0
	str	r3, [fp, #-100]
	b	.L35
.L33:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, r2, asl #3]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-96]
	add	r3, r2, r3
	sub	lr, fp, #68
	mov	ip, r3
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2, r3}
	stmia	lr, {r0, r1, r2, r3}
	sub	ip, fp, #84
	sub	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L36
.L37:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, r2, asl #3]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-96]
	add	r3, r2, r3
	sub	lr, fp, #68
	mov	ip, r3
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2, r3}
	stmia	lr, {r0, r1, r2, r3}
	ldr	r3, [fp, #-64]
	cmp	r3, #1
	bne	.L38
	sub	ip, fp, #84
	sub	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	b	.L40
.L38:
	ldr	r3, [fp, #-64]
	cmp	r3, #3
	bne	.L41
	sub	ip, fp, #84
	sub	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	b	.L40
.L41:
	sub	ip, fp, #84
	sub	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, [fp, #-20]
	sub	r2, r3, #1
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, r2, asl #3]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-96]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-76]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	beq	.L43
	sub	ip, fp, #84
	sub	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
.L43:
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
.L40:
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L36:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bgt	.L37
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-100]
.L35:
	ldr	r3, [fp, #-100]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	howFarFromDest, .-howFarFromDest
	.align	2
	.global	getShortestPath
	.type	getShortestPath, %function
getShortestPath:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #68
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	str	r2, [fp, #-72]
	str	r3, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-76]
	str	r3, [fp, #-20]
	sub	r2, fp, #28
	ldr	ip, [fp, #4]
	mov	r3, #404
	str	r3, [sp, #0]
	ldr	r0, [fp, #-64]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	getShortestPath, .-getShortestPath
	.align	2
	.global	findIndexAlongPath
	.type	findIndexAlongPath, %function
findIndexAlongPath:
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
	b	.L50
.L51:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L52
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	b	.L54
.L52:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L50:
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #400]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bge	.L51
	mov	r3, #0
	str	r3, [fp, #-28]
.L54:
	ldr	r3, [fp, #-28]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	findIndexAlongPath, .-findIndexAlongPath
	.align	2
	.global	reserveAndSetSwitches
	.type	reserveAndSetSwitches, %function
reserveAndSetSwitches:
	@ args = 16, pretend = 0, frame = 356
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #360
	str	r0, [fp, #-352]
	str	r1, [fp, #-356]
	str	r2, [fp, #-360]
	str	r3, [fp, #-364]
	mov	r3, #0
	str	r3, [fp, #-56]
	mov	r3, #0
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	sub	r3, fp, #348
	ldr	r0, [fp, #-360]
	ldr	r1, [fp, #-364]
	ldr	r2, [fp, #4]
	bl	findNextDistance(PLT)
	mov	r3, r0
	str	r3, [fp, #-40]
	b	.L58
.L59:
	sub	r3, fp, #348
	ldr	r0, [fp, #-360]
	ldr	r1, [fp, #-364]
	ldr	r2, [fp, #4]
	bl	findNextDistance(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	b	.L60
.L61:
	ldr	r2, [fp, #-364]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L62
	ldr	r3, [fp, #-56]
	ldr	r2, .L82
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-364]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L62:
	ldr	r2, [fp, #-364]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L64
	ldr	r2, [fp, #-52]
	mvn	r1, #223
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #12
	add	r3, r3, r2
	add	r2, r3, r1
	ldr	r3, [fp, #-364]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-52]
	mvn	r1, #215
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #12
	add	r3, r3, r2
	add	r2, r3, r1
	ldr	r3, [fp, #16]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L64:
	ldr	r0, [fp, #-360]
	ldr	r1, [fp, #-364]
	bl	findIndexAlongPath(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	sub	r2, r3, #1
	ldr	r3, [fp, #-360]
	ldr	r3, [r3, r2, asl #3]
	str	r3, [fp, #-364]
.L60:
	ldr	r2, [fp, #-348]
	ldr	r3, [fp, #-364]
	cmp	r3, r2
	bne	.L61
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L58
	mov	r3, #3
	str	r3, [fp, #-368]
	b	.L68
.L58:
	ldr	r3, [fp, #-44]
	cmp	r3, #2
	ble	.L59
	mov	r3, #2
	str	r3, [fp, #-312]
	sub	r3, fp, #236
	str	r3, [fp, #-308]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-304]
	sub	r2, fp, #312
	sub	ip, fp, #328
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-352]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-328]
	cmp	r3, #0
	bne	.L70
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L72
.L73:
	ldr	r3, [fp, #-28]
	ldr	r2, .L82
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #114
	bgt	.L74
	ldr	r3, [fp, #-28]
	ldr	r2, .L82
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	sub	r2, r3, #80
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L76
.L74:
	ldr	r3, [fp, #-28]
	ldr	r2, .L82
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	sub	r2, r3, #116
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #153
	str	r3, [fp, #-24]
.L76:
	ldr	r3, [fp, #-28]
	ldr	r2, .L82
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-360]
	mov	r1, r3
	bl	findIndexAlongPath(PLT)
	mov	r3, r0
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-360]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L77
	mov	r3, #34
	str	r3, [fp, #-20]
	b	.L79
.L77:
	mov	r3, #33
	str	r3, [fp, #-20]
.L79:
	mov	r3, #7
	str	r3, [fp, #-344]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-340]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-336]
	sub	r2, fp, #344
	sub	ip, fp, #328
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-356]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L72:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L73
	mov	r2, #1
	str	r2, [fp, #-368]
	b	.L68
.L70:
	mov	r3, #0
	str	r3, [fp, #-368]
.L68:
	ldr	r3, [fp, #-368]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L83:
	.align	2
.L82:
	.word	-284
	.size	reserveAndSetSwitches, .-reserveAndSetSwitches
	.section	.rodata
	.align	2
.LC0:
	.ascii	"route\000"
	.align	2
.LC1:
	.ascii	"clock\000"
	.align	2
.LC2:
	.ascii	"monitor\000"
	.global	__floatsidf
	.global	__divdf3
	.global	__muldf3
	.global	__fixdfsi
	.global	__adddf3
	.global	__divsi3
	.text
	.align	2
	.global	trainDriver
	.type	trainDriver, %function
trainDriver:
	@ args = 0, pretend = 0, frame = 7608
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #7616
	sub	sp, sp, #8
	ldr	sl, .L139
.L138:
	add	sl, pc, sl
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #20
	mov	r0, r3
	bl	init_tracka(PLT)
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-116]
	ldr	r3, .L139+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-112]
	ldr	r3, .L139+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-108]
	ldr	r3, .L139+12
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-104]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-100]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #48
	sub	r3, fp, #7104
	sub	r3, r3, #32
	sub	r3, r3, #40
	mov	r0, r2
	mov	r1, r3
	bl	init_velocity(PLT)
	sub	r3, fp, #7168
	sub	r3, r3, #32
	sub	r3, r3, #32
	mov	r0, r3
	bl	init_table(PLT)
	mvn	r3, #0
	str	r3, [fp, #-96]
	b	.L136
.L85:
.L136:
	mov	r3, #0
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-88]
	mov	r3, #0
	str	r3, [fp, #-84]
	mvn	r3, #0
	str	r3, [fp, #-80]
	mov	r3, #0
	str	r3, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-72]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #52
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #56
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L139+40
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-68]
	ldr	r3, .L139+40
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-64]
	ldr	r3, .L139+40
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-60]
	ldr	r2, .L139+48
	mov	r3, #0
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L139+36
	sub	r0, fp, #32
	ldr	r2, [r0, r3]
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #36
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	ldr	r2, .L139+48
	mov	r3, #0
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L139+48
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L139+48
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #52
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-104]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-96]
	cmn	r3, #1
	bne	.L86
	ldr	r2, .L139+48
	mov	r3, #14
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L139+48
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-64]
	str	r3, [r2, #0]
	ldr	r3, .L139+48
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	str	r3, [r2, #0]
	ldr	r3, .L139+48
	mov	r2, #12
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-68]
	str	r3, [r2, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #52
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-116]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #52
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #56
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L139+40
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-80]
	ldr	r2, .L139+48
	mov	r3, #0
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L139+36
	sub	r0, fp, #32
	ldr	r2, [r0, r3]
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #36
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	ldr	r3, [fp, #-80]
	str	r3, [fp, #-96]
.L86:
	sub	r3, fp, #7552
	sub	r3, r3, #32
	sub	r3, r3, #56
	str	r3, [sp, #0]
	ldr	r0, [fp, #-112]
	ldr	r1, [fp, #-116]
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-68]
	bl	getShortestPath(PLT)
	ldr	r2, .L139+48
	mov	r3, #14
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L139+48
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-64]
	str	r3, [r2, #0]
	ldr	r3, .L139+48
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	str	r3, [r2, #0]
	ldr	r3, .L139+48
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-68]
	str	r3, [r2, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #52
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-116]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-80]
	sub	r2, fp, #7552
	sub	r2, r2, #32
	sub	r2, r2, #56
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #20
	str	r3, [sp, #0]
	ldr	r3, [fp, #-64]
	str	r3, [sp, #4]
	sub	r3, fp, #7168
	sub	r3, r3, #32
	sub	r3, r3, #32
	str	r3, [sp, #8]
	ldr	r3, [fp, #-100]
	str	r3, [sp, #12]
	ldr	r0, [fp, #-104]
	ldr	r1, [fp, #-116]
	ldr	r3, [fp, #-80]
	bl	reserveAndSetSwitches(PLT)
	mov	r3, r0
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bne	.L137
	ldr	r2, .L139+48
	mov	r3, #6
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L139+48
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L139+48
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	str	r3, [r2, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #52
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-116]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-80]
	str	r3, [fp, #-96]
	b	.L85
.L88:
.L137:
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-76]
	ldr	r0, [fp, #-108]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-72]
	sub	r2, fp, #7552
	sub	r2, r2, #32
	sub	r2, r2, #56
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #20
	sub	r3, fp, #7168
	sub	r3, r3, #32
	sub	r3, r3, #36
	mov	r0, r2
	ldr	r1, [fp, #-80]
	mov	r2, ip
	bl	findNextDistance(PLT)
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, .L139+44
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #2
	beq	.L91
	ldr	r3, .L139+44
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #3
	beq	.L91
	ldr	r3, .L139+44
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #30
	beq	.L91
	ldr	r3, .L139+44
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #31
	beq	.L91
	ldr	r3, .L139+44
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #64
	beq	.L91
	ldr	r3, .L139+44
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #65
	beq	.L91
	ldr	r3, .L139+44
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #32
	beq	.L91
	ldr	r3, .L139+44
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #33
	beq	.L91
	ldr	r3, .L139+44
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #28
	beq	.L91
	ldr	r3, .L139+44
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #29
	beq	.L91
	ldr	r3, .L139+44
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #48
	beq	.L91
	ldr	r3, .L139+44
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #49
	beq	.L91
	ldr	r3, .L139+44
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #54
	beq	.L91
	ldr	r3, .L139+44
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #55
	beq	.L91
	ldr	r3, .L139+44
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #56
	beq	.L91
	ldr	r3, .L139+44
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #57
	beq	.L91
	ldr	r3, .L139+44
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #36
	beq	.L91
	ldr	r3, .L139+44
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #37
	beq	.L91
	ldr	r3, .L139+44
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #74
	beq	.L91
	ldr	r3, .L139+44
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #75
	beq	.L91
	ldr	r3, .L139+44
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #6
	beq	.L91
	ldr	r3, .L139+44
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #7
	beq	.L91
	ldr	r3, .L139+44
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #8
	beq	.L91
	ldr	r3, .L139+44
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #9
	beq	.L91
	ldr	r3, .L139+44
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #10
	beq	.L91
	ldr	r3, .L139+44
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #11
	beq	.L91
	ldr	r3, .L139+44
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #12
	beq	.L91
	ldr	r3, .L139+44
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #13
	bne	.L119
.L91:
	ldr	r0, [fp, #-52]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-64]
	ldr	r2, .L139+24
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__floatsidf(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__divdf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	mov	r2, #1073741824
	add	r2, r2, #5832704
	mov	r3, #0
	bl	__muldf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__fixdfsi(PLT)
	mov	r3, r0
	str	r3, [fp, #-92]
	mov	r3, #1
	str	r3, [fp, #-88]
	b	.L120
.L119:
	ldr	r0, [fp, #-52]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-64]
	ldr	r2, .L139+28
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__floatsidf(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__divdf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	mov	r2, #1073741824
	add	r2, r2, #5832704
	mov	r3, #0
	bl	__muldf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__fixdfsi(PLT)
	mov	r3, r0
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-88]
.L120:
	ldr	r2, .L139+48
	mov	r3, #4
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L139+44
	sub	r2, fp, #32
	ldr	r1, [r2, r3]
	ldr	r3, .L139+48
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-72]
	add	r1, r2, r3
	ldr	r3, .L139+48
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #52
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-104]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	cmp	r3, #0
	beq	.L121
	ldr	r0, [fp, #-84]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-76]
	rsb	r3, r3, r2
	mov	r0, r3
	bl	__floatsidf(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	mov	r2, #1073741824
	add	r2, r2, #5832704
	mov	r3, #0
	bl	__divdf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__divdf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__fixdfsi(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	beq	.L123
	ldr	r7, [fp, #-64]
	ldr	r3, [fp, #-64]
	ldr	r2, .L139+24
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__floatsidf(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	mov	r2, #1069547520
	add	r2, r2, #2621440
	mov	r3, #0
	bl	__muldf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r5, r3
	mov	r6, r4
	ldr	r0, [fp, #-44]
	bl	__floatsidf(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	mov	r2, #1069547520
	add	r2, r2, #1048576
	mov	r3, #0
	bl	__muldf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__adddf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__fixdfsi(PLT)
	mov	r1, r0
	ldr	r2, .L139+24
	mov	r3, r7, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
	b	.L121
.L123:
	ldr	r7, [fp, #-64]
	ldr	r3, [fp, #-64]
	ldr	r2, .L139+28
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__floatsidf(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	mov	r2, #1069547520
	add	r2, r2, #2621440
	mov	r3, #0
	bl	__muldf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r5, r3
	mov	r6, r4
	ldr	r0, [fp, #-44]
	bl	__floatsidf(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	mov	r2, #1069547520
	add	r2, r2, #1048576
	mov	r3, #0
	bl	__muldf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__adddf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__fixdfsi(PLT)
	mov	r1, r0
	ldr	r2, .L139+28
	mov	r3, r7, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
.L121:
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-84]
	sub	r3, fp, #7552
	sub	r3, r3, #32
	sub	r3, r3, #56
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #20
	mov	r0, r3
	ldr	r1, [fp, #-80]
	bl	howFarFromDest(PLT)
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-52]
	rsb	r1, r3, r2
	ldr	r3, [fp, #-64]
	sub	r3, r3, #1
	ldr	r2, .L139+32
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r1, r3
	bgt	.L125
	ldr	r2, .L139+48
	mov	r3, #3
	sub	r1, fp, #32
	str	r3, [r1, r2]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #52
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-104]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-64]
	sub	r3, r3, #1
	ldr	r2, .L139+32
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-48]
	rsb	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	beq	.L127
	ldr	r5, [fp, #-108]
	ldr	r3, [fp, #-64]
	ldr	r2, .L139+24
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-40]
	mov	r1, r3
	bl	__divsi3(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__floatsidf(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	mov	r2, #1073741824
	add	r2, r2, #5832704
	mov	r3, #0
	bl	__muldf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	adr	r2, .L139+16
	ldmia	r2, {r2-r3}
	bl	__adddf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__fixdfsi(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	Delay(PLT)
	b	.L129
.L127:
	ldr	r5, [fp, #-108]
	ldr	r3, [fp, #-64]
	ldr	r2, .L139+28
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-40]
	mov	r1, r3
	bl	__divsi3(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	__floatsidf(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	mov	r2, #1073741824
	add	r2, r2, #5832704
	mov	r3, #0
	bl	__muldf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	adr	r2, .L139+16
	ldmia	r2, {r2-r3}
	bl	__adddf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__fixdfsi(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	Delay(PLT)
.L129:
	ldr	r2, .L139+48
	mov	r3, #6
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L139+48
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L139+48
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	str	r3, [r2, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #52
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-116]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-96]
	b	.L85
.L140:
	.align	2
.L139:
	.word	_GLOBAL_OFFSET_TABLE_-(.L138+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	1077968896
	.word	0
	.word	-7144
	.word	-7088
	.word	-7200
	.word	-7032
	.word	-7028
	.word	-7204
	.word	-7012
.L125:
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #52
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #56
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L139+40
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-80]
	ldr	r2, .L139+48
	mov	r3, #0
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L139+36
	sub	r0, fp, #32
	ldr	r2, [r0, r3]
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #36
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	ldr	r3, .L139+40
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #1
	bne	.L88
	ldr	r3, .L139+44
	sub	r0, fp, #32
	ldr	r2, [r0, r3]
	ldr	r3, [fp, #-80]
	cmp	r3, r2
	beq	.L132
	mov	r3, #0
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-88]
	mov	r3, #0
	str	r3, [fp, #-84]
	mov	r3, #0
	str	r3, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-80]
	str	r3, [fp, #-96]
	b	.L86
.L132:
	sub	r2, fp, #7552
	sub	r2, r2, #32
	sub	r2, r2, #56
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #20
	str	r3, [sp, #0]
	ldr	r3, [fp, #-64]
	str	r3, [sp, #4]
	sub	r3, fp, #7168
	sub	r3, r3, #32
	sub	r3, r3, #32
	str	r3, [sp, #8]
	ldr	r3, [fp, #-100]
	str	r3, [sp, #12]
	ldr	r0, [fp, #-104]
	ldr	r1, [fp, #-116]
	ldr	r3, [fp, #-80]
	bl	reserveAndSetSwitches(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L88
	ldr	r2, .L139+48
	mov	r3, #6
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L139+48
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L139+48
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	str	r3, [r2, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #52
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-116]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-80]
	str	r3, [fp, #-96]
	b	.L85
	.size	trainDriver, .-trainDriver
	.ident	"GCC: (GNU) 4.0.2"
