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
	mov	r3, #63
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #8
	mov	r3, #142
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #12
	mov	r3, #217
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	ldr	r3, .L3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #20
	ldr	r3, .L3+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #24
	mov	r3, #440
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #28
	ldr	r3, .L3+8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	ldr	r3, .L3+12
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #36
	mov	r3, #620
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	mov	r3, #684
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #44
	mov	r3, #752
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	ldr	r3, .L3+16
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #52
	ldr	r3, .L3+16
	str	r3, [r2, #0]
	ldmfd	sp, {r3, fp, sp, pc}
.L4:
	.align	2
.L3:
	.word	283
	.word	357
	.word	497
	.word	550
	.word	822
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
	mov	r3, #11
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #4
	mov	r3, #74
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #8
	mov	r3, #125
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #12
	mov	r3, #171
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	mov	r3, #217
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #20
	mov	r3, #272
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #24
	ldr	r3, .L7
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #28
	mov	r3, #356
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	ldr	r3, .L7+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #36
	ldr	r3, .L7+8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	ldr	r3, .L7+12
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #44
	mov	r3, #528
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	mov	r3, #552
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #52
	mov	r3, #552
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #11
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4
	mov	r3, #74
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #8
	mov	r3, #125
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #12
	mov	r3, #171
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #16
	mov	r3, #217
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #20
	mov	r3, #272
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #24
	ldr	r3, .L7
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #28
	mov	r3, #356
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #32
	ldr	r3, .L7+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #36
	ldr	r3, .L7+8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #40
	ldr	r3, .L7+12
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #44
	mov	r3, #528
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	mov	r3, #552
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #52
	mov	r3, #552
	str	r3, [r2, #0]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L8:
	.align	2
.L7:
	.word	327
	.word	391
	.word	439
	.word	485
	.size	init_velocity, .-init_velocity
	.align	2
	.global	init_accelDistance
	.type	init_accelDistance, %function
init_accelDistance:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #4
	mov	r3, #40
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #8
	mov	r3, #83
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #12
	mov	r3, #133
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	mov	r3, #191
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #20
	ldr	r3, .L11
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #24
	ldr	r3, .L11+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #28
	ldr	r3, .L11+8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	ldr	r3, .L11+12
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #36
	ldr	r3, .L11+16
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	ldr	r3, .L11+20
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #44
	ldr	r3, .L11+24
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	ldr	r3, .L11+28
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #52
	ldr	r3, .L11+28
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #80
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4
	mov	r3, #150
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #8
	mov	r3, #194
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #12
	mov	r3, #228
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #16
	ldr	r3, .L11+32
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #20
	mov	r3, #292
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #24
	ldr	r3, .L11+36
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #28
	ldr	r3, .L11+40
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #32
	ldr	r3, .L11+44
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #36
	ldr	r3, .L11+48
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #40
	ldr	r3, .L11+52
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #44
	ldr	r3, .L11+56
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	mov	r3, #428
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #52
	mov	r3, #428
	str	r3, [r2, #0]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L12:
	.align	2
.L11:
	.word	274
	.word	363
	.word	414
	.word	481
	.word	577
	.word	673
	.word	769
	.word	823
	.word	258
	.word	322
	.word	337
	.word	355
	.word	378
	.word	399
	.word	418
	.size	init_accelDistance, .-init_accelDistance
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
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-20]
	b	.L14
.L15:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-88]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	beq	.L16
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L14:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bgt	.L15
.L16:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L18
	mov	r3, #0
	str	r3, [fp, #-104]
	b	.L20
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
	sub	ip, fp, #84
	sub	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L21
.L22:
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
	bne	.L23
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #0]
	b	.L25
.L23:
	ldr	r3, [fp, #-64]
	cmp	r3, #3
	bne	.L26
	sub	ip, fp, #84
	sub	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	b	.L28
.L26:
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
	beq	.L29
	sub	ip, fp, #84
	sub	r3, fp, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
.L29:
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
.L28:
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L21:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L22
.L25:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-104]
.L20:
	ldr	r3, [fp, #-104]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	findNextDistance, .-findNextDistance
	.align	2
	.global	howFarFromDest
	.type	howFarFromDest, %function
howFarFromDest:
	@ args = 4, pretend = 0, frame = 76
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #76
	str	r0, [fp, #-72]
	str	r1, [fp, #-76]
	str	r2, [fp, #-80]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-20]
	b	.L33
.L34:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-72]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	beq	.L35
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L33:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bgt	.L34
.L35:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L37
	mov	r3, #0
	str	r3, [fp, #-88]
	b	.L39
.L37:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L40
.L41:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-72]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	bne	.L42
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	b	.L44
.L42:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, r2, asl #3]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-84]
	add	r3, r2, r3
	sub	lr, fp, #68
	mov	ip, r3
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2, r3}
	stmia	lr, {r0, r1, r2, r3}
	ldr	r3, [fp, #-44]
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-20]
	sub	r2, r3, #1
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, r2, asl #3]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-84]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	cmp	r1, r3
	bne	.L45
	ldr	r3, [fp, #-44]
	ldr	r1, [r3, #4]
	ldr	r3, [fp, #-20]
	sub	r2, r3, #1
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, r2, asl #3]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-84]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r1, r3
	bne	.L45
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	b	.L48
.L45:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
.L48:
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L40:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L41
.L44:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-88]
.L39:
	ldr	r3, [fp, #-88]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	howFarFromDest, .-howFarFromDest
	.align	2
	.global	getShortestPath
	.type	getShortestPath, %function
getShortestPath:
	@ args = 16, pretend = 0, frame = 76
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
	b	.L51
.L52:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #4]
	ldr	r3, [r2, r3, asl #3]
	cmp	r3, #79
	ble	.L53
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #4]
	ldr	r3, [r2, r3, asl #3]
	cmp	r3, #123
	bgt	.L53
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #4]
	ldr	r3, [r3, r2, asl #3]
	eor	r3, r3, #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L53
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #4]
	ldr	r3, [r2, r3, asl #3]
	cmp	r3, #114
	bgt	.L57
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #4]
	ldr	r3, [r3, r2, asl #3]
	sub	r2, r3, #80
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L59
.L57:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #4]
	ldr	r3, [r3, r2, asl #3]
	sub	r2, r3, #116
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #153
	str	r3, [fp, #-20]
.L59:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	ldr	r2, [fp, #4]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L60
	mov	r3, #34
	str	r3, [fp, #-16]
	b	.L62
.L60:
	mov	r3, #33
	str	r3, [fp, #-16]
.L62:
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
.L53:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	ldr	r2, [fp, #4]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L63
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #4]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #8]
	str	r2, [r3, #0]
	ldr	r3, [fp, #12]
	cmp	r3, #1
	bne	.L65
	ldr	r2, [fp, #8]
	mov	r3, #165
	str	r3, [r2, #4]
	b	.L67
.L65:
	ldr	r2, [fp, #8]
	mov	r3, #165
	str	r3, [r2, #4]
.L67:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	ldr	r2, [fp, #4]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #0
	strb	r3, [r2, #1]
	b	.L69
.L63:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L51:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bgt	.L52
.L69:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	getShortestPath, .-getShortestPath
	.align	2
	.global	getPartialRoute
	.type	getPartialRoute, %function
getPartialRoute:
	@ args = 4, pretend = 0, frame = 60
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #64
	str	r0, [fp, #-60]
	str	r1, [fp, #-64]
	str	r2, [fp, #-68]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-24]
	b	.L71
.L72:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-64]
	ldr	r3, [r2, r3, asl #3]
	cmp	r3, #79
	ble	.L73
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-64]
	ldr	r3, [r2, r3, asl #3]
	cmp	r3, #123
	bgt	.L73
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, r2, asl #3]
	eor	r3, r3, #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L73
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-64]
	ldr	r3, [r2, r3, asl #3]
	cmp	r3, #114
	bgt	.L77
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, r2, asl #3]
	sub	r2, r3, #80
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L79
.L77:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, r2, asl #3]
	sub	r2, r3, #116
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #153
	str	r3, [fp, #-20]
.L79:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	ldr	r2, [fp, #-64]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L80
	mov	r3, #34
	str	r3, [fp, #-16]
	b	.L82
.L80:
	mov	r3, #33
	str	r3, [fp, #-16]
.L82:
	mov	r3, #7
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-32]
	sub	r2, fp, #40
	sub	ip, fp, #56
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-60]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
.L73:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	ldr	r2, [fp, #-64]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L83
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-68]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	bne	.L85
	ldr	r2, [fp, #-68]
	mov	r3, #165
	str	r3, [r2, #4]
	b	.L87
.L85:
	ldr	r2, [fp, #-68]
	mov	r3, #165
	str	r3, [r2, #4]
.L87:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	ldr	r2, [fp, #-64]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #0
	strb	r3, [r2, #1]
	b	.L89
.L83:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L71:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bgt	.L72
.L89:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	getPartialRoute, .-getPartialRoute
	.section	.rodata
	.align	2
.LC0:
	.ascii	"printer\000"
	.text
	.align	2
	.global	adjustPosition
	.type	adjustPosition, %function
adjustPosition:
	@ args = 16, pretend = 0, frame = 68
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #72
	ldr	sl, .L113
.L112:
	add	sl, pc, sl
	str	r0, [fp, #-72]
	str	r1, [fp, #-76]
	str	r2, [fp, #-80]
	str	r3, [fp, #-84]
	ldr	r3, .L113+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	mov	r3, #24
	str	r3, [fp, #-44]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-56]
	cmp	r3, #1
	bne	.L91
	mov	r3, #13
	str	r3, [fp, #-44]
	ldr	r3, [fp, #12]
	str	r3, [fp, #-40]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
.L93:
	sub	r2, fp, #60
	sub	r3, fp, #64
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-64]
	sub	r2, fp, #44
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Reply(PLT)
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #4]
	cmp	r2, r3
	bne	.L93
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-80]
	cmp	r3, #0
	bne	.L96
	b	.L97
.L96:
	ldr	r3, [fp, #-84]
	cmp	r3, #1
	bne	.L98
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #2
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mov	r1, #340
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mov	r1, #150
	bl	Delay(PLT)
	b	.L111
.L98:
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #2
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mov	r1, #140
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mov	r1, #100
	bl	Delay(PLT)
	b	.L111
.L97:
	ldr	r3, [fp, #-84]
	cmp	r3, #1
	beq	.L111
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #15
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #2
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mov	r1, #240
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mov	r1, #150
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #15
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	b	.L111
.L91:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bne	.L111
	ldr	r3, [fp, #-80]
	cmp	r3, #0
	bne	.L111
	mov	r3, #13
	str	r3, [fp, #-44]
	ldr	r3, [fp, #12]
	str	r3, [fp, #-40]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #15
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
.L106:
	sub	r2, fp, #60
	sub	r3, fp, #68
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-68]
	sub	r2, fp, #44
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Reply(PLT)
	ldr	r2, [fp, #4]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #16]
	add	r3, r2, r3
	ldr	r3, [r3, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L106
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	cmp	r3, #1
	beq	.L109
	b	.L110
.L109:
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #2
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mov	r1, #140
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mov	r1, #100
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #15
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	b	.L111
.L110:
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #2
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mov	r1, #340
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mov	r1, #100
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-44]
	mov	r3, #15
	str	r3, [fp, #-40]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-36]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
.L111:
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L114:
	.align	2
.L113:
	.word	_GLOBAL_OFFSET_TABLE_-(.L112+8)
	.word	.LC0(GOTOFF)
	.size	adjustPosition, .-adjustPosition
	.section	.rodata
	.align	2
.LC1:
	.ascii	"driver\000"
	.align	2
.LC2:
	.ascii	"route\000"
	.align	2
.LC3:
	.ascii	"clock\000"
	.global	__divsi3
	.global	__floatsidf
	.global	__muldf3
	.global	__adddf3
	.global	__fixdfsi
	.global	__divdf3
	.text
	.align	2
	.global	trainDriver
	.type	trainDriver, %function
trainDriver:
	@ args = 0, pretend = 0, frame = 7908
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #7872
	sub	sp, sp, #52
	ldr	sl, .L195
.L194:
	add	sl, pc, sl
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #52
	mov	r0, r3
	bl	init_tracka(PLT)
	ldr	r3, .L195+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-148]
	ldr	r3, .L195+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-144]
	ldr	r3, .L195+12
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-140]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-136]
	sub	r2, fp, #7104
	sub	r2, r2, #32
	sub	r2, r2, #16
	sub	r3, fp, #7168
	sub	r3, r3, #32
	sub	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	init_velocity(PLT)
	sub	r3, fp, #7232
	sub	r3, r3, #32
	mov	r0, r3
	bl	init_table(PLT)
	sub	r2, fp, #7232
	sub	r2, r2, #32
	sub	r2, r2, #56
	sub	r3, fp, #7296
	sub	r3, r3, #32
	sub	r3, r3, #48
	mov	r0, r2
	mov	r1, r3
	bl	init_accelDistance(PLT)
	mvn	r3, #0
	str	r3, [fp, #-132]
	ldr	r3, .L195+60
	sub	r0, fp, #32
	add	r2, r0, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	mov	r3, #1
	str	r3, [fp, #-128]
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-120]
	ldr	r2, .L195+16
	mvn	r3, #0
	sub	r1, fp, #32
	str	r3, [r1, r2]
	mov	r3, #0
	str	r3, [fp, #-116]
	b	.L192
.L116:
.L192:
	mov	r3, #0
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-108]
	mov	r3, #0
	str	r3, [fp, #-104]
	mvn	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #0
	str	r3, [fp, #-96]
	mov	r3, #0
	str	r3, [fp, #-92]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #20
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #24
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L195+20
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-88]
	ldr	r3, .L195+20
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-84]
	ldr	r3, .L195+20
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-80]
	ldr	r2, .L195+68
	mov	r3, #0
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L195+24
	sub	r0, fp, #32
	ldr	r2, [r0, r3]
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	ldr	r2, .L195+68
	mov	r3, #13
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-136]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-132]
	cmn	r3, #1
	bne	.L117
	ldr	r2, .L195+68
	mov	r3, #14
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, .L195+68
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	ldr	r3, .L195+68
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-88]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #20
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #24
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L195+20
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-100]
	ldr	r2, .L195+68
	mov	r3, #0
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L195+24
	sub	r1, fp, #32
	ldr	r2, [r1, r3]
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	ldr	r3, [fp, #-100]
	str	r3, [fp, #-132]
.L117:
	sub	r3, fp, #7872
	sub	r3, r3, #32
	sub	r3, r3, #36
	str	r3, [sp, #0]
	sub	r3, fp, #7296
	sub	r3, r3, #32
	sub	r3, r3, #56
	str	r3, [sp, #4]
	ldr	r3, [fp, #-128]
	str	r3, [sp, #8]
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #52
	str	r3, [sp, #12]
	ldr	r0, [fp, #-144]
	ldr	r1, [fp, #-148]
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-88]
	bl	getShortestPath(PLT)
	b	.L193
.L119:
.L193:
	ldr	r3, [fp, #-132]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-116]
	cmp	r3, #1
	beq	.L120
	ldr	r3, .L195+60
	sub	r2, fp, #32
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L122
	ldr	r3, .L195+60
	sub	r0, fp, #32
	add	r3, r0, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #7872
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #52
	sub	r3, fp, #7296
	sub	r3, r3, #32
	sub	r3, r3, #60
	str	r3, [sp, #0]
	mov	r0, r2
	ldr	r2, [fp, #-100]
	mov	r3, ip
	bl	howFarFromDest(PLT)
	mov	r3, r0
	str	r3, [fp, #-72]
	ldr	r3, .L195+60
	sub	r1, fp, #32
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-72]
	add	r3, r3, r2
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-84]
	sub	r3, r3, #1
	ldr	r2, .L195+36
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-84]
	sub	r3, r3, #1
	ldr	r2, .L195+72
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	ble	.L140
	ldr	r2, .L195+68
	mov	r3, #17
	sub	r1, fp, #32
	str	r3, [r1, r2]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L195+68
	mov	r3, #23
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L195+60
	sub	r1, fp, #32
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	sub	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L126
.L127:
	ldr	r3, [fp, #-68]
	ldr	r2, .L195+72
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-68]
	ldr	r2, .L195+36
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	ble	.L128
	ldr	r3, [fp, #-68]
	sub	r3, r3, #1
	str	r3, [fp, #-68]
.L126:
	ldr	r3, [fp, #-68]
	cmp	r3, #0
	bge	.L127
.L128:
	ldr	r3, [fp, #-68]
	ldr	r2, .L195+72
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-68]
	ldr	r2, .L195+36
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-72]
	rsb	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r2, .L195+28
	mov	r3, #22
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L195+28
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-72]
	str	r3, [r2, #0]
	ldr	r3, .L195+28
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-124]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r1, r3, #1
	ldr	r3, .L195+28
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r2, fp, #7360
	sub	r2, r2, #32
	sub	r2, r2, #12
	sub	ip, fp, #7360
	sub	ip, ip, #32
	sub	ip, ip, #28
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L195+68
	mov	r3, #20
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, [fp, #-68]
	add	r1, r3, #1
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, .L195+68
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L195+68
	mov	r3, #21
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-84]
	str	r3, [r2, #0]
	ldr	r3, .L195+68
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	ldr	r3, .L195+68
	mov	r2, #12
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-88]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r7, [fp, #-140]
	ldr	r3, [fp, #-68]
	ldr	r2, .L195+52
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-64]
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
	mov	r5, r3
	mov	r6, r4
	ldr	r3, [fp, #-68]
	ldr	r2, .L195+44
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
	bl	__adddf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__fixdfsi(PLT)
	mov	r3, r0
	mov	r0, r7
	mov	r1, r3
	bl	Delay(PLT)
	ldr	r2, .L195+68
	mov	r3, #20
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L195+68
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-140]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	ldr	r3, .L195+60
	sub	r1, fp, #32
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	str	r3, [sp, #0]
	ldr	r3, [fp, #-80]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-136]
	str	r3, [sp, #8]
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #52
	str	r3, [sp, #12]
	ldr	r0, [fp, #-148]
	ldr	r1, [fp, #-140]
	mov	r2, #1
	ldr	r3, [fp, #-128]
	bl	adjustPosition(PLT)
	ldr	r2, .L195+68
	mov	r3, #20
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #15
	str	r3, [r2, #0]
	ldr	r3, .L195+68
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L195+60
	sub	r1, fp, #32
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-128]
	cmp	r3, #1
	bne	.L130
	mov	r3, #0
	str	r3, [fp, #-128]
	b	.L132
.L130:
	mov	r3, #1
	str	r3, [fp, #-128]
.L132:
	ldr	r2, .L195+68
	mov	r3, #13
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-136]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L195+60
	sub	r0, fp, #32
	add	r2, r0, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L195+16
	sub	r2, fp, #32
	ldr	r1, [r2, r3]
	ldr	r3, .L195+32
	mov	r2, #400
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r2, fp, #7872
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #7296
	sub	ip, ip, #32
	sub	ip, ip, #56
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #52
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, ip
	ldr	r3, [fp, #-128]
	bl	getPartialRoute(PLT)
	b	.L119
.L122:
	sub	r2, fp, #7872
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #52
	sub	r3, fp, #7296
	sub	r3, r3, #32
	sub	r3, r3, #60
	str	r3, [sp, #0]
	mov	r0, r2
	ldr	r1, [fp, #-88]
	ldr	r2, [fp, #-100]
	mov	r3, ip
	bl	howFarFromDest(PLT)
	mov	r3, r0
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-84]
	sub	r3, r3, #1
	ldr	r2, .L195+36
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-84]
	sub	r3, r3, #1
	ldr	r2, .L195+72
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	ble	.L140
	ldr	r2, .L195+68
	mov	r3, #17
	sub	r1, fp, #32
	str	r3, [r1, r2]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L195+68
	mov	r3, #23
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-88]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	sub	r3, r3, #1
	str	r3, [fp, #-56]
	b	.L135
.L196:
	.align	2
.L195:
	.word	_GLOBAL_OFFSET_TABLE_-(.L194+8)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	-7356
	.word	-7060
	.word	-7064
	.word	-7372
	.word	-7908
	.word	-7288
	.word	-7404
	.word	-7344
	.word	-7424
	.word	-7120
	.word	-7440
	.word	-7352
	.word	-7456
	.word	-7044
	.word	-7232
	.word	-7488
	.word	-7176
.L136:
	ldr	r3, [fp, #-56]
	ldr	r2, .L195+72
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-56]
	ldr	r2, .L195+36
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	ble	.L137
	ldr	r3, [fp, #-56]
	sub	r3, r3, #1
	str	r3, [fp, #-56]
.L135:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L136
.L137:
	ldr	r3, [fp, #-56]
	ldr	r2, .L195+72
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-56]
	ldr	r2, .L195+36
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-60]
	rsb	r3, r2, r3
	str	r3, [fp, #-52]
	ldr	r2, .L195+40
	mov	r3, #22
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L195+40
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	str	r3, [r2, #0]
	ldr	r3, .L195+40
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-124]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-56]
	add	r1, r3, #1
	ldr	r3, .L195+40
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r2, fp, #7360
	sub	r2, r2, #32
	sub	r2, r2, #44
	sub	ip, fp, #7360
	sub	ip, ip, #32
	sub	ip, ip, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L195+68
	mov	r3, #20
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, [fp, #-56]
	add	r1, r3, #1
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, .L195+68
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L195+68
	mov	r3, #21
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-84]
	str	r3, [r2, #0]
	ldr	r3, .L195+68
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	ldr	r3, .L195+68
	mov	r2, #12
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-88]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r7, [fp, #-140]
	ldr	r3, [fp, #-56]
	ldr	r2, .L195+52
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-52]
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
	mov	r5, r3
	mov	r6, r4
	ldr	r3, [fp, #-56]
	ldr	r2, .L195+44
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
	bl	__adddf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	mov	r2, #1073741824
	add	r2, r2, #4063232
	mov	r3, #0
	bl	__adddf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__fixdfsi(PLT)
	mov	r3, r0
	mov	r0, r7
	mov	r1, r3
	bl	Delay(PLT)
	ldr	r2, .L195+68
	mov	r3, #20
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L195+68
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-140]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	ldr	r3, [fp, #-88]
	str	r3, [sp, #0]
	ldr	r3, [fp, #-80]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-136]
	str	r3, [sp, #8]
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #52
	str	r3, [sp, #12]
	ldr	r0, [fp, #-148]
	ldr	r1, [fp, #-140]
	mov	r2, #0
	ldr	r3, [fp, #-128]
	bl	adjustPosition(PLT)
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-132]
	b	.L116
.L120:
	mov	r3, #0
	str	r3, [fp, #-116]
.L140:
	ldr	r2, .L195+68
	mov	r3, #14
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-84]
	str	r3, [r2, #0]
	ldr	r3, .L195+68
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	ldr	r3, .L195+68
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-88]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-76]
	ldr	r3, .L195+60
	sub	r1, fp, #32
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L141
	ldr	r3, .L195+60
	sub	r2, fp, #32
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-76]
.L141:
	ldr	r2, .L195+68
	mov	r3, #23
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L195+68
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-76]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
.L143:
	ldr	r3, [fp, #-92]
	str	r3, [fp, #-96]
	ldr	r0, [fp, #-140]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-92]
	sub	r3, fp, #7872
	sub	r3, r3, #32
	sub	r3, r3, #36
	sub	r2, fp, #6976
	sub	r2, r2, #32
	sub	r2, r2, #52
	sub	ip, fp, #7424
	sub	ip, ip, #32
	mov	r0, r3
	ldr	r1, [fp, #-100]
	mov	r3, ip
	bl	findNextDistance(PLT)
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, .L195+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #2
	beq	.L144
	ldr	r3, .L195+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #3
	beq	.L144
	ldr	r3, .L195+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #30
	beq	.L144
	ldr	r3, .L195+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #31
	beq	.L144
	ldr	r3, .L195+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #64
	beq	.L144
	ldr	r3, .L195+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #65
	beq	.L144
	ldr	r3, .L195+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #32
	beq	.L144
	ldr	r3, .L195+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #33
	beq	.L144
	ldr	r3, .L195+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #28
	beq	.L144
	ldr	r3, .L195+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #29
	beq	.L144
	ldr	r3, .L195+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #48
	beq	.L144
	ldr	r3, .L195+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #49
	beq	.L144
	ldr	r3, .L195+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #54
	beq	.L144
	ldr	r3, .L195+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #55
	beq	.L144
	ldr	r3, .L195+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #56
	beq	.L144
	ldr	r3, .L195+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #57
	beq	.L144
	ldr	r3, .L195+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #36
	beq	.L144
	ldr	r3, .L195+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #37
	beq	.L144
	ldr	r3, .L195+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #74
	beq	.L144
	ldr	r3, .L195+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #75
	beq	.L144
	ldr	r3, .L195+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #6
	beq	.L144
	ldr	r3, .L195+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #7
	beq	.L144
	ldr	r3, .L195+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #8
	beq	.L144
	ldr	r3, .L195+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #9
	beq	.L144
	ldr	r3, .L195+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #10
	beq	.L144
	ldr	r3, .L195+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #11
	beq	.L144
	ldr	r3, .L195+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #12
	beq	.L144
	ldr	r3, .L195+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #13
	beq	.L144
	ldr	r3, .L195+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #40
	bne	.L173
.L144:
	ldr	r0, [fp, #-48]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-84]
	ldr	r2, .L195+80
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
	str	r3, [fp, #-112]
	mov	r3, #1
	str	r3, [fp, #-108]
	b	.L174
.L173:
	ldr	r0, [fp, #-48]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-84]
	ldr	r2, .L195+52
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
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-108]
.L174:
	ldr	r3, .L195+56
	ldr	r2, [fp, #-100]
	sub	r1, fp, #32
	str	r2, [r1, r3]
	ldr	r3, [fp, #-104]
	cmp	r3, #0
	beq	.L175
	ldr	r0, [fp, #-104]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-96]
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
	ldr	r3, [fp, #-108]
	cmp	r3, #0
	beq	.L177
	ldr	r7, [fp, #-84]
	ldr	r3, [fp, #-84]
	ldr	r2, .L195+80
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
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
	ldr	r2, .L195+80
	mov	r3, r7, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-84]
	ldr	r2, .L195+80
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L195+56
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	b	.L175
.L177:
	ldr	r7, [fp, #-84]
	ldr	r3, [fp, #-84]
	ldr	r2, .L195+52
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
	ldr	r2, .L195+52
	mov	r3, r7, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-84]
	ldr	r2, .L195+52
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L195+56
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
.L175:
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-104]
	ldr	r3, .L195+56
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	ldr	r2, .L195+68
	mov	r3, #19
	sub	r0, fp, #32
	str	r3, [r0, r2]
	sub	r2, fp, #7424
	sub	r2, r2, #32
	sub	r2, r2, #16
	ldr	r3, .L195+68
	mov	r1, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r1
	str	r2, [r3, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	sub	r2, fp, #7872
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #6976
	sub	ip, ip, #32
	sub	ip, ip, #52
	sub	r3, fp, #7296
	sub	r3, r3, #32
	sub	r3, r3, #60
	str	r3, [sp, #0]
	mov	r0, r2
	ldr	r1, [fp, #-76]
	ldr	r2, [fp, #-100]
	mov	r3, ip
	bl	howFarFromDest(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, .L195+60
	sub	r1, fp, #32
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L179
	ldr	r3, .L195+60
	sub	r2, fp, #32
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	add	r3, r3, r2
	str	r3, [fp, #-44]
.L179:
	ldr	r2, .L195+64
	mov	r3, #22
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L195+64
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	str	r3, [r2, #0]
	ldr	r3, .L195+64
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-124]
	str	r3, [r2, #0]
	ldr	r3, .L195+64
	mov	r2, #12
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-84]
	str	r3, [r2, #0]
	sub	r2, fp, #7424
	sub	r2, r2, #32
	sub	r2, r2, #32
	sub	ip, fp, #7424
	sub	ip, ip, #32
	sub	ip, ip, #48
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	rsb	r1, r3, r2
	ldr	r3, [fp, #-84]
	sub	r3, r3, #1
	ldr	r2, .L195+72
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r1, r3
	bgt	.L181
	ldr	r2, .L195+68
	mov	r3, #17
	sub	r1, fp, #32
	str	r3, [r1, r2]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	sub	r3, r3, #1
	ldr	r2, .L195+72
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	rsb	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r2, .L195+76
	mov	r3, #22
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L195+76
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	str	r3, [r2, #0]
	ldr	r3, .L195+76
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-124]
	str	r3, [r2, #0]
	ldr	r3, .L195+76
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-84]
	str	r3, [r2, #0]
	sub	r2, fp, #7488
	sub	r2, r2, #32
	sub	ip, fp, #7488
	sub	ip, ip, #32
	sub	ip, ip, #16
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-108]
	cmp	r3, #0
	beq	.L183
	ldr	r5, [fp, #-140]
	ldr	r3, [fp, #-84]
	ldr	r2, .L195+80
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
	mov	r2, #1073741824
	add	r2, r2, #4063232
	mov	r3, #0
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
	b	.L185
.L183:
	ldr	r5, [fp, #-140]
	ldr	r3, [fp, #-84]
	ldr	r2, .L197
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
	mov	r2, #1073741824
	add	r2, r2, #4063232
	mov	r3, #0
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
.L185:
	ldr	r2, .L197+4
	mov	r3, #20
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L197+4
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L197+4
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-76]
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-140]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	ldr	r3, .L197+8
	sub	r2, fp, #32
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L186
	ldr	r3, [fp, #-76]
	str	r3, [sp, #0]
	ldr	r3, [fp, #-80]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-136]
	str	r3, [sp, #8]
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #52
	str	r3, [sp, #12]
	ldr	r0, [fp, #-148]
	ldr	r1, [fp, #-140]
	mov	r2, #1
	ldr	r3, [fp, #-128]
	bl	adjustPosition(PLT)
	ldr	r2, .L197+4
	mov	r3, #20
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L197+4
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #15
	str	r3, [r2, #0]
	ldr	r3, .L197+4
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-128]
	cmp	r3, #1
	bne	.L188
	mov	r3, #0
	str	r3, [fp, #-128]
	b	.L190
.L188:
	mov	r3, #1
	str	r3, [fp, #-128]
.L190:
	ldr	r2, .L197+4
	mov	r3, #13
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L197+4
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-136]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #4
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #20
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L197+8
	sub	r1, fp, #32
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-108]
	mov	r3, #0
	str	r3, [fp, #-104]
	mov	r3, #0
	str	r3, [fp, #-96]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, .L197+12
	sub	r2, fp, #32
	ldr	r1, [r2, r3]
	ldr	r3, .L197+16
	mov	r2, #400
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r2, fp, #7872
	sub	r2, r2, #32
	sub	r2, r2, #36
	sub	ip, fp, #7296
	sub	ip, ip, #32
	sub	ip, ip, #56
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #52
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, ip
	ldr	r3, [fp, #-128]
	bl	getPartialRoute(PLT)
	b	.L119
.L186:
	ldr	r3, [fp, #-76]
	str	r3, [sp, #0]
	ldr	r3, [fp, #-80]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-136]
	str	r3, [sp, #8]
	sub	r3, fp, #6976
	sub	r3, r3, #32
	sub	r3, r3, #52
	str	r3, [sp, #12]
	ldr	r0, [fp, #-148]
	ldr	r1, [fp, #-140]
	mov	r2, #0
	ldr	r3, [fp, #-128]
	bl	adjustPosition(PLT)
	b	.L116
.L181:
	sub	r2, fp, #7040
	sub	r2, r2, #32
	sub	r2, r2, #20
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #24
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L197+20
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-100]
	ldr	r2, .L197+4
	mov	r3, #0
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L197+24
	sub	r1, fp, #32
	ldr	r2, [r1, r3]
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	b	.L143
.L198:
	.align	2
.L197:
	.word	-7120
	.word	-7044
	.word	-7352
	.word	-7356
	.word	-7908
	.word	-7060
	.word	-7064
	.size	trainDriver, .-trainDriver
	.ident	"GCC: (GNU) 4.0.2"
