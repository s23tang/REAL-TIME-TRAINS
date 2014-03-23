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
	@ args = 4, pretend = 0, frame = 76
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #80
	str	r0, [fp, #-76]
	str	r1, [fp, #-80]
	str	r2, [fp, #-84]
	str	r3, [fp, #-88]
	mov	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-84]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-32]
	sub	r2, fp, #40
	ldr	ip, [fp, #4]
	mov	r3, #404
	str	r3, [sp, #0]
	ldr	r0, [fp, #-76]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #4]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-24]
	b	.L48
.L49:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #4]
	ldr	r3, [r2, r3, asl #3]
	cmp	r3, #79
	ble	.L50
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #4]
	ldr	r3, [r2, r3, asl #3]
	cmp	r3, #123
	bgt	.L50
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #4]
	ldr	r3, [r3, r2, asl #3]
	eor	r3, r3, #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L50
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #4]
	ldr	r3, [r2, r3, asl #3]
	cmp	r3, #114
	bgt	.L54
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #4]
	ldr	r3, [r3, r2, asl #3]
	sub	r2, r3, #80
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L56
.L54:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #4]
	ldr	r3, [r3, r2, asl #3]
	sub	r2, r3, #116
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #153
	str	r3, [fp, #-20]
.L56:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	ldr	r2, [fp, #4]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L57
	mov	r3, #34
	str	r3, [fp, #-16]
	b	.L59
.L57:
	mov	r3, #33
	str	r3, [fp, #-16]
.L59:
	mov	r3, #7
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-48]
	sub	r2, fp, #56
	sub	ip, fp, #72
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
.L50:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L48:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bgt	.L49
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	getShortestPath, .-getShortestPath
	.section	.rodata
	.align	2
.LC0:
	.ascii	"driver\000"
	.align	2
.LC1:
	.ascii	"route\000"
	.align	2
.LC2:
	.ascii	"clock\000"
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
	@ args = 0, pretend = 0, frame = 7612
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #7616
	ldr	sl, .L112
.L111:
	add	sl, pc, sl
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #8
	mov	r0, r3
	bl	init_tracka(PLT)
	ldr	r3, .L112+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-104]
	ldr	r3, .L112+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-100]
	ldr	r3, .L112+12
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-96]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-92]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	r3, fp, #7104
	sub	r3, r3, #32
	sub	r3, r3, #28
	mov	r0, r2
	mov	r1, r3
	bl	init_velocity(PLT)
	sub	r3, fp, #7168
	sub	r3, r3, #32
	sub	r3, r3, #20
	mov	r0, r3
	bl	init_table(PLT)
	mvn	r3, #0
	str	r3, [fp, #-88]
.L63:
	mov	r3, #0
	str	r3, [fp, #-84]
	mov	r3, #0
	str	r3, [fp, #-80]
	mov	r3, #0
	str	r3, [fp, #-76]
	mvn	r3, #0
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-64]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #40
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #44
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L112+52
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-60]
	ldr	r3, .L112+52
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-56]
	ldr	r3, .L112+52
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-52]
	ldr	r2, .L112+44
	mov	r3, #0
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L112+48
	sub	r0, fp, #32
	ldr	r2, [r0, r3]
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #24
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	ldr	r2, .L112+44
	mov	r3, #13
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L112+44
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #24
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #40
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-104]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-88]
	cmn	r3, #1
	bne	.L64
	ldr	r2, .L112+44
	mov	r3, #14
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L112+44
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-56]
	str	r3, [r2, #0]
	ldr	r3, .L112+44
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-52]
	str	r3, [r2, #0]
	ldr	r3, .L112+44
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	str	r3, [r2, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #24
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #40
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-104]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #40
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #44
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L112+52
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-72]
	ldr	r2, .L112+44
	mov	r3, #0
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L112+48
	sub	r1, fp, #32
	ldr	r2, [r1, r3]
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #24
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-88]
.L64:
	sub	r3, fp, #7552
	sub	r3, r3, #32
	sub	r3, r3, #60
	str	r3, [sp, #0]
	ldr	r0, [fp, #-100]
	ldr	r1, [fp, #-104]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-60]
	bl	getShortestPath(PLT)
	ldr	r2, .L112+44
	mov	r3, #18
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L112+44
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-88]
	str	r3, [r2, #0]
	ldr	r3, .L112+44
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	str	r3, [r2, #0]
	ldr	r3, .L112+24
	mov	r2, #400
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L112+44
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #24
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #40
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-104]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L112+44
	mov	r3, #14
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L112+44
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-56]
	str	r3, [r2, #0]
	ldr	r3, .L112+44
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-52]
	str	r3, [r2, #0]
	ldr	r3, .L112+44
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	str	r3, [r2, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #24
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #40
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-104]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-72]
	b	.L110
.L66:
.L110:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-68]
	ldr	r0, [fp, #-96]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-64]
	sub	r2, fp, #7552
	sub	r2, r2, #32
	sub	r2, r2, #60
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #8
	sub	r3, fp, #7168
	sub	r3, r3, #32
	sub	r3, r3, #24
	mov	r0, r2
	ldr	r1, [fp, #-72]
	mov	r2, ip
	bl	findNextDistance(PLT)
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, .L112+56
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #2
	beq	.L67
	ldr	r3, .L112+56
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #3
	beq	.L67
	ldr	r3, .L112+56
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #30
	beq	.L67
	ldr	r3, .L112+56
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #31
	beq	.L67
	ldr	r3, .L112+56
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #64
	beq	.L67
	ldr	r3, .L112+56
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #65
	beq	.L67
	ldr	r3, .L112+56
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #32
	beq	.L67
	ldr	r3, .L112+56
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #33
	beq	.L67
	ldr	r3, .L112+56
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #28
	beq	.L67
	ldr	r3, .L112+56
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #29
	beq	.L67
	ldr	r3, .L112+56
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #48
	beq	.L67
	ldr	r3, .L112+56
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #49
	beq	.L67
	ldr	r3, .L112+56
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #54
	beq	.L67
	ldr	r3, .L112+56
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #55
	beq	.L67
	ldr	r3, .L112+56
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #56
	beq	.L67
	ldr	r3, .L112+56
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #57
	beq	.L67
	ldr	r3, .L112+56
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #36
	beq	.L67
	ldr	r3, .L112+56
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #37
	beq	.L67
	ldr	r3, .L112+56
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #74
	beq	.L67
	ldr	r3, .L112+56
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #75
	beq	.L67
	ldr	r3, .L112+56
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #6
	beq	.L67
	ldr	r3, .L112+56
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #7
	beq	.L67
	ldr	r3, .L112+56
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #8
	beq	.L67
	ldr	r3, .L112+56
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #9
	beq	.L67
	ldr	r3, .L112+56
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #10
	beq	.L67
	ldr	r3, .L112+56
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #11
	beq	.L67
	ldr	r3, .L112+56
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #12
	beq	.L67
	ldr	r3, .L112+56
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #13
	bne	.L95
.L67:
	ldr	r0, [fp, #-48]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-56]
	ldr	r2, .L112+28
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
	str	r3, [fp, #-84]
	mov	r3, #1
	str	r3, [fp, #-80]
	b	.L96
.L95:
	ldr	r0, [fp, #-48]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-56]
	ldr	r2, .L112+32
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
	str	r3, [fp, #-84]
	mov	r3, #0
	str	r3, [fp, #-80]
.L96:
	ldr	r3, .L112+36
	ldr	r2, [fp, #-72]
	sub	r0, fp, #32
	str	r2, [r0, r3]
	ldr	r3, [fp, #-76]
	cmp	r3, #0
	beq	.L97
	ldr	r0, [fp, #-76]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-68]
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
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-80]
	cmp	r3, #0
	beq	.L99
	ldr	r7, [fp, #-56]
	ldr	r3, [fp, #-56]
	ldr	r2, .L112+28
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
	ldr	r0, [fp, #-40]
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
	ldr	r2, .L112+28
	mov	r3, r7, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-56]
	ldr	r2, .L112+28
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L112+36
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	b	.L97
.L99:
	ldr	r7, [fp, #-56]
	ldr	r3, [fp, #-56]
	ldr	r2, .L112+32
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
	ldr	r0, [fp, #-40]
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
	ldr	r2, .L112+32
	mov	r3, r7, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-56]
	ldr	r2, .L112+32
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L112+36
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
.L97:
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-76]
	ldr	r3, .L112+36
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-64]
	str	r3, [r2, #0]
	ldr	r2, .L112+44
	mov	r3, #19
	sub	r0, fp, #32
	str	r3, [r0, r2]
	sub	r2, fp, #7168
	sub	r2, r2, #32
	sub	r2, r2, #40
	ldr	r3, .L112+44
	mov	r1, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r1
	str	r2, [r3, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #24
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #40
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-104]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	sub	r3, fp, #7552
	sub	r3, r3, #32
	sub	r3, r3, #60
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #8
	mov	r0, r3
	ldr	r1, [fp, #-72]
	bl	howFarFromDest(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r1, r3, r2
	ldr	r3, [fp, #-56]
	sub	r3, r3, #1
	ldr	r2, .L112+40
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r1, r3
	bgt	.L101
	ldr	r3, [fp, #-56]
	sub	r3, r3, #1
	ldr	r2, .L112+40
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	rsb	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-80]
	cmp	r3, #0
	beq	.L103
	ldr	r5, [fp, #-96]
	ldr	r3, [fp, #-56]
	ldr	r2, .L112+28
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-36]
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
	adr	r2, .L112+16
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
	b	.L105
.L103:
	ldr	r5, [fp, #-96]
	ldr	r3, [fp, #-56]
	ldr	r2, .L112+32
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-36]
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
	adr	r2, .L112+16
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
.L105:
	ldr	r2, .L112+44
	mov	r3, #6
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L112+44
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L112+44
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-52]
	str	r3, [r2, #0]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #24
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #40
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-104]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L112+44
	mov	r3, #17
	sub	r1, fp, #32
	str	r3, [r1, r2]
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #24
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #40
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-104]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-88]
	b	.L63
.L113:
	.align	2
.L112:
	.word	_GLOBAL_OFFSET_TABLE_-(.L111+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	1077968896
	.word	0
	.word	-7612
	.word	-7132
	.word	-7076
	.word	-7208
	.word	-7188
	.word	-7000
	.word	-7020
	.word	-7016
	.word	-7192
.L101:
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #40
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #44
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L112+52
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-72]
	ldr	r2, .L112+44
	mov	r3, #0
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L112+48
	sub	r0, fp, #32
	ldr	r2, [r0, r3]
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #24
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	ldr	r3, .L112+52
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #0
	bne	.L66
	ldr	r3, .L112+56
	sub	r0, fp, #32
	ldr	r2, [r0, r3]
	ldr	r3, [fp, #-72]
	cmp	r3, r2
	beq	.L66
	mov	r3, #0
	str	r3, [fp, #-84]
	mov	r3, #0
	str	r3, [fp, #-80]
	mov	r3, #0
	str	r3, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-88]
	b	.L64
	.size	trainDriver, .-trainDriver
	.ident	"GCC: (GNU) 4.0.2"
