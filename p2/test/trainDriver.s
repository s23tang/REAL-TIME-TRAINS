	.file	"trainDriver.c"
	.text
	.align	2
	.global	init_table45
	.type	init_table45, %function
init_table45:
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
	.size	init_table45, .-init_table45
	.align	2
	.global	init_table49
	.type	init_table49, %function
init_table49:
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
	mov	r3, #57
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
	ldr	r3, .L7
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #52
	ldr	r3, .L7
	str	r3, [r2, #0]
	ldmfd	sp, {r3, fp, sp, pc}
.L8:
	.align	2
.L7:
	.word	830
	.size	init_table49, .-init_table49
	.align	2
	.global	init_velocity45
	.type	init_velocity45, %function
init_velocity45:
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
	ldr	r3, .L11
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #28
	mov	r3, #356
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	ldr	r3, .L11+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #36
	ldr	r3, .L11+8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	ldr	r3, .L11+12
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
	ldr	r3, .L11
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #28
	mov	r3, #356
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #32
	ldr	r3, .L11+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #36
	ldr	r3, .L11+8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #40
	ldr	r3, .L11+12
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
.L12:
	.align	2
.L11:
	.word	327
	.word	391
	.word	439
	.word	485
	.size	init_velocity45, .-init_velocity45
	.align	2
	.global	init_accelDistance45
	.type	init_accelDistance45, %function
init_accelDistance45:
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
	ldr	r3, .L15
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #24
	ldr	r3, .L15+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #28
	ldr	r3, .L15+8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	ldr	r3, .L15+12
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #36
	ldr	r3, .L15+16
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	ldr	r3, .L15+20
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #44
	ldr	r3, .L15+24
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	ldr	r3, .L15+28
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #52
	ldr	r3, .L15+28
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
	ldr	r3, .L15+32
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #20
	mov	r3, #292
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #24
	ldr	r3, .L15+36
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #28
	ldr	r3, .L15+40
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #32
	ldr	r3, .L15+44
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #36
	ldr	r3, .L15+48
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #40
	ldr	r3, .L15+52
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #44
	ldr	r3, .L15+56
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
.L16:
	.align	2
.L15:
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
	.size	init_accelDistance45, .-init_accelDistance45
	.align	2
	.global	init_velocity49
	.type	init_velocity49, %function
init_velocity49:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-16]
	mov	r3, #20
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #4
	mov	r3, #77
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #8
	mov	r3, #132
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #12
	mov	r3, #175
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	mov	r3, #220
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #20
	mov	r3, #272
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #24
	ldr	r3, .L19
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #28
	ldr	r3, .L19+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	ldr	r3, .L19+8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #36
	mov	r3, #480
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	ldr	r3, .L19+12
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #44
	ldr	r3, .L19+16
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	ldr	r3, .L19+20
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #52
	ldr	r3, .L19+24
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
	ldr	r3, .L19+28
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #32
	ldr	r3, .L19+32
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #36
	ldr	r3, .L19+36
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #40
	ldr	r3, .L19+40
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #44
	ldr	r3, .L19+44
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, .L19+48
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #52
	ldr	r3, .L19+52
	str	r3, [r2, #0]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L20:
	.align	2
.L19:
	.word	327
	.word	373
	.word	429
	.word	525
	.word	589
	.word	622
	.word	625
	.word	297
	.word	350
	.word	379
	.word	435
	.word	463
	.word	489
	.word	498
	.size	init_velocity49, .-init_velocity49
	.align	2
	.global	init_accelDistance49
	.type	init_accelDistance49, %function
init_accelDistance49:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r2, [fp, #-20]
	mov	r3, #50
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #4
	mov	r3, #110
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #8
	mov	r3, #192
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #12
	mov	r3, #219
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #16
	mov	r3, #244
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #20
	ldr	r3, .L23
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #24
	ldr	r3, .L23+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #28
	ldr	r3, .L23+8
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #32
	ldr	r3, .L23+12
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #36
	mov	r3, #356
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #40
	mov	r3, #372
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #44
	ldr	r3, .L23+16
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #48
	ldr	r3, .L23+20
	str	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r2, r3, #52
	ldr	r3, .L23+24
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #4
	mov	r3, #17
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #8
	mov	r3, #55
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #12
	mov	r3, #96
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #16
	mov	r3, #145
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #20
	mov	r3, #209
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #24
	ldr	r3, .L23+28
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #28
	ldr	r3, .L23+32
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #32
	ldr	r3, .L23+36
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #36
	ldr	r3, .L23+40
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	ldr	r3, .L23+44
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #44
	ldr	r3, .L23+48
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #48
	mov	r3, #796
	str	r3, [r2, #0]
	ldr	r3, [fp, #-16]
	add	r2, r3, #52
	ldr	r3, .L23+52
	str	r3, [r2, #0]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L24:
	.align	2
.L23:
	.word	270
	.word	295
	.word	315
	.word	337
	.word	394
	.word	405
	.word	406
	.word	283
	.word	353
	.word	441
	.word	527
	.word	607
	.word	729
	.word	802
	.size	init_accelDistance49, .-init_accelDistance49
	.align	2
	.global	findNextDistance
	.type	findNextDistance, %function
findNextDistance:
	@ args = 4, pretend = 0, frame = 92
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #92
	str	r0, [fp, #-88]
	str	r1, [fp, #-92]
	str	r2, [fp, #-96]
	str	r3, [fp, #-100]
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L26
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-104]
	b	.L28
.L26:
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-20]
	b	.L29
.L30:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-88]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-96]
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
	str	r3, [fp, #-104]
	b	.L28
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
	ldr	r3, [fp, #-100]
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
	b	.L35
.L36:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, r2, asl #3]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-100]
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
	bne	.L37
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #4]
	str	r2, [r3, #0]
	b	.L39
.L37:
	ldr	r3, [fp, #-64]
	cmp	r3, #3
	bne	.L40
	sub	ip, fp, #84
	sub	r3, fp, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	ip, {r0, r1, r2, r3}
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	b	.L42
.L40:
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
	ldr	r3, [fp, #-100]
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
.L42:
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L35:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L36
.L39:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-104]
.L28:
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
	b	.L47
.L48:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-72]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	beq	.L49
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L47:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bgt	.L48
.L49:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L51
	mov	r3, #0
	str	r3, [fp, #-88]
	b	.L53
.L51:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L54
.L55:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-72]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	bne	.L56
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	b	.L58
.L56:
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
	bne	.L59
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
	bne	.L59
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	b	.L62
.L59:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
.L62:
	ldr	r3, [fp, #-20]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
.L54:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L55
.L58:
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-88]
.L53:
	ldr	r3, [fp, #-88]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	howFarFromDest, .-howFarFromDest
	.align	2
	.global	getShortestPath
	.type	getShortestPath, %function
getShortestPath:
	@ args = 16, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #84
	str	r0, [fp, #-80]
	str	r1, [fp, #-84]
	str	r2, [fp, #-88]
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-92]
	str	r3, [fp, #-28]
	sub	r2, fp, #36
	ldr	ip, [fp, #4]
	mov	r3, #404
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #4]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-16]
	b	.L65
.L66:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	ldr	r2, [fp, #4]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L67
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #4]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #8]
	str	r2, [r3, #0]
	ldr	r3, [fp, #12]
	cmp	r3, #1
	bne	.L69
	ldr	r2, [fp, #8]
	mov	r3, #165
	str	r3, [r2, #4]
	b	.L71
.L69:
	ldr	r2, [fp, #8]
	mov	r3, #165
	str	r3, [r2, #4]
.L71:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	ldr	r2, [fp, #4]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #0
	strb	r3, [r2, #1]
	b	.L73
.L67:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L65:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bgt	.L66
.L73:
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
	sub	sp, sp, #60
	str	r0, [fp, #-60]
	str	r1, [fp, #-64]
	str	r2, [fp, #-68]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-16]
	b	.L75
.L76:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	ldr	r2, [fp, #-64]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L77
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-68]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	bne	.L79
	ldr	r2, [fp, #-68]
	mov	r3, #165
	str	r3, [r2, #4]
	b	.L81
.L79:
	ldr	r2, [fp, #-68]
	mov	r3, #165
	str	r3, [r2, #4]
.L81:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	ldr	r2, [fp, #-64]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #0
	strb	r3, [r2, #1]
	b	.L83
.L77:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L75:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bgt	.L76
.L83:
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
	@ args = 16, pretend = 0, frame = 76
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #80
	ldr	sl, .L107
.L106:
	add	sl, pc, sl
	str	r0, [fp, #-80]
	str	r1, [fp, #-84]
	str	r2, [fp, #-88]
	str	r3, [fp, #-92]
	ldr	r3, .L107+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	mov	r3, #24
	str	r3, [fp, #-48]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-64]
	cmp	r3, #1
	bne	.L85
	mov	r3, #13
	str	r3, [fp, #-48]
	ldr	r3, [fp, #12]
	str	r3, [fp, #-44]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L87:
	sub	r2, fp, #68
	sub	r3, fp, #72
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #48
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #4]
	cmp	r2, r3
	bne	.L87
	mov	r3, #17
	str	r3, [fp, #-48]
	ldr	r3, [fp, #12]
	str	r3, [fp, #-44]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	bne	.L90
	b	.L91
.L90:
	ldr	r3, [fp, #-92]
	cmp	r3, #1
	bne	.L92
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #2
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	mov	r0, r3
	mov	r1, #340
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	mov	r0, r3
	mov	r1, #150
	bl	Delay(PLT)
	b	.L105
.L92:
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #2
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	mov	r0, r3
	mov	r1, #140
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	mov	r0, r3
	mov	r1, #100
	bl	Delay(PLT)
	b	.L105
.L91:
	ldr	r3, [fp, #-92]
	cmp	r3, #1
	beq	.L105
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #15
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #2
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	mov	r0, r3
	mov	r1, #240
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	mov	r0, r3
	mov	r1, #150
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #15
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L105
.L85:
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	bne	.L105
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	bne	.L105
	mov	r3, #13
	str	r3, [fp, #-48]
	ldr	r3, [fp, #12]
	str	r3, [fp, #-44]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #15
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L100:
	sub	r2, fp, #68
	sub	r3, fp, #76
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-76]
	sub	r2, fp, #48
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
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
	bne	.L100
	mov	r3, #17
	str	r3, [fp, #-48]
	ldr	r3, [fp, #12]
	str	r3, [fp, #-44]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-92]
	cmp	r3, #1
	beq	.L103
	b	.L104
.L103:
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #2
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	mov	r0, r3
	mov	r1, #140
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	mov	r0, r3
	mov	r1, #100
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #15
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L105
.L104:
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #2
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	mov	r0, r3
	mov	r1, #340
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-84]
	mov	r0, r3
	mov	r1, #100
	bl	Delay(PLT)
	mov	r3, #20
	str	r3, [fp, #-48]
	mov	r3, #15
	str	r3, [fp, #-44]
	ldr	r3, [fp, #8]
	str	r3, [fp, #-40]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L105:
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L108:
	.align	2
.L107:
	.word	_GLOBAL_OFFSET_TABLE_-(.L106+8)
	.word	.LC0(GOTOFF)
	.size	adjustPosition, .-adjustPosition
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
	b	.L110
.L111:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, r2, asl #3]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L112
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-28]
	b	.L114
.L112:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L110:
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #400]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bge	.L111
	mov	r3, #0
	str	r3, [fp, #-28]
.L114:
	ldr	r3, [fp, #-28]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	findIndexAlongPath, .-findIndexAlongPath
	.align	2
	.global	reserveAndSetSwitches
	.type	reserveAndSetSwitches, %function
reserveAndSetSwitches:
	@ args = 20, pretend = 0, frame = 548
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #552
	str	r0, [fp, #-544]
	str	r1, [fp, #-548]
	str	r2, [fp, #-552]
	str	r3, [fp, #-556]
	mov	r3, #0
	str	r3, [fp, #-56]
	mov	r3, #0
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L118
.L119:
	sub	r3, fp, #540
	str	r3, [sp, #0]
	ldr	r0, [fp, #-552]
	ldr	r1, [fp, #20]
	ldr	r2, [fp, #-556]
	ldr	r3, [fp, #4]
	bl	findNextDistance(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	b	.L145
.L121:
	ldr	r0, [fp, #-552]
	ldr	r1, [fp, #-556]
	bl	findIndexAlongPath(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-556]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L122
	ldr	r3, [fp, #-56]
	ldr	r2, .L146
	mov	r3, r3, asl #4
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r2, r3, r2
	ldr	r3, [fp, #-556]
	str	r3, [r2, #0]
	ldr	r0, [fp, #-56]
	ldr	r3, [fp, #-32]
	sub	r2, r3, #1
	ldr	r3, [fp, #-552]
	ldr	r1, [r3, r2, asl #3]
	ldr	r2, .L146+4
	mov	r3, r0, asl #4
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L122:
	ldr	r2, [fp, #-556]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L124
	ldr	r2, [fp, #-52]
	mvn	r1, #223
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #12
	add	r3, r3, r2
	add	r2, r3, r1
	ldr	r3, [fp, #-556]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-52]
	mvn	r1, #215
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r2, r3, r1
	ldr	r3, [fp, #16]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L124:
	ldr	r3, [fp, #-32]
	sub	r2, r3, #1
	ldr	r3, [fp, #-552]
	ldr	r3, [r3, r2, asl #3]
	str	r3, [fp, #-556]
	ldr	r2, [fp, #-556]
	ldr	r3, [fp, #20]
	cmp	r2, r3
	bne	.L120
	ldr	r2, [fp, #-52]
	mvn	r1, #223
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #12
	add	r3, r3, r2
	add	r2, r3, r1
	ldr	r3, [fp, #-556]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-52]
	mvn	r1, #215
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r2, r3, r1
	ldr	r3, [fp, #16]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L120:
.L145:
	ldr	r2, [fp, #-540]
	ldr	r3, [fp, #-556]
	cmp	r3, r2
	bne	.L121
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L118
	mov	r3, #1
	str	r3, [fp, #-44]
	b	.L129
.L118:
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	ble	.L119
.L129:
	mov	r3, #2
	str	r3, [fp, #-496]
	sub	r3, fp, #236
	str	r3, [fp, #-492]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-488]
	sub	r3, fp, #476
	str	r3, [fp, #-484]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-480]
	sub	r2, fp, #496
	sub	ip, fp, #516
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-544]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-516]
	cmp	r3, #0
	bne	.L130
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L132
	mov	r3, #23
	str	r3, [fp, #-496]
	ldr	r3, [fp, #20]
	str	r3, [fp, #-492]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-488]
	sub	r2, fp, #496
	sub	ip, fp, #516
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-548]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L132:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L134
.L135:
	ldr	r3, [fp, #-28]
	ldr	r2, .L146
	mov	r3, r3, asl #4
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #114
	bgt	.L136
	ldr	r3, [fp, #-28]
	ldr	r2, .L146
	mov	r3, r3, asl #4
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	sub	r2, r3, #80
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L138
.L136:
	ldr	r3, [fp, #-28]
	ldr	r2, .L146
	mov	r3, r3, asl #4
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
.L138:
	ldr	r3, [fp, #-28]
	ldr	r2, .L146
	mov	r3, r3, asl #4
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-552]
	mov	r1, r3
	bl	findIndexAlongPath(PLT)
	mov	r3, r0
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-552]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L139
	mov	r3, #34
	str	r3, [fp, #-20]
	b	.L141
.L139:
	mov	r3, #33
	str	r3, [fp, #-20]
.L141:
	mov	r3, #7
	str	r3, [fp, #-536]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-532]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-528]
	sub	r2, fp, #536
	sub	ip, fp, #516
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-548]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L134:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L135
	mov	r1, #1
	str	r1, [fp, #-560]
	b	.L143
.L130:
	mov	r2, #0
	str	r2, [fp, #-560]
.L143:
	ldr	r3, [fp, #-560]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L147:
	.align	2
.L146:
	.word	-464
	.word	-452
	.size	reserveAndSetSwitches, .-reserveAndSetSwitches
	.align	2
	.global	fullReserve
	.type	fullReserve, %function
fullReserve:
	@ args = 20, pretend = 0, frame = 548
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #552
	str	r0, [fp, #-544]
	str	r1, [fp, #-548]
	str	r2, [fp, #-552]
	str	r3, [fp, #-556]
	mov	r3, #0
	str	r3, [fp, #-56]
	mov	r3, #0
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
.L149:
	sub	r3, fp, #540
	str	r3, [sp, #0]
	ldr	r0, [fp, #-552]
	ldr	r1, [fp, #20]
	ldr	r2, [fp, #-556]
	ldr	r3, [fp, #4]
	bl	findNextDistance(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	b	.L175
.L151:
	ldr	r0, [fp, #-552]
	ldr	r1, [fp, #-556]
	bl	findIndexAlongPath(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-556]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L152
	ldr	r3, [fp, #-56]
	ldr	r2, .L176
	mov	r3, r3, asl #4
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r2, r3, r2
	ldr	r3, [fp, #-556]
	str	r3, [r2, #0]
	ldr	r0, [fp, #-56]
	ldr	r3, [fp, #-32]
	sub	r2, r3, #1
	ldr	r3, [fp, #-552]
	ldr	r1, [r3, r2, asl #3]
	ldr	r2, .L176+4
	mov	r3, r0, asl #4
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L152:
	ldr	r2, [fp, #-556]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L154
	ldr	r2, [fp, #-52]
	mvn	r1, #223
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #12
	add	r3, r3, r2
	add	r2, r3, r1
	ldr	r3, [fp, #-556]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-52]
	mvn	r1, #215
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r2, r3, r1
	ldr	r3, [fp, #16]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L154:
	ldr	r3, [fp, #-32]
	sub	r2, r3, #1
	ldr	r3, [fp, #-552]
	ldr	r3, [r3, r2, asl #3]
	str	r3, [fp, #-556]
	ldr	r2, [fp, #-556]
	ldr	r3, [fp, #20]
	cmp	r2, r3
	bne	.L150
	ldr	r2, [fp, #-52]
	mvn	r1, #223
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #12
	add	r3, r3, r2
	add	r2, r3, r1
	ldr	r3, [fp, #-556]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-52]
	mvn	r1, #215
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r2, r3, r1
	ldr	r3, [fp, #16]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L150:
.L175:
	ldr	r2, [fp, #-540]
	ldr	r3, [fp, #-556]
	cmp	r3, r2
	bne	.L151
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L149
	mov	r3, #1
	str	r3, [fp, #-44]
	mov	r3, #2
	str	r3, [fp, #-496]
	sub	r3, fp, #236
	str	r3, [fp, #-492]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-488]
	sub	r3, fp, #476
	str	r3, [fp, #-484]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-480]
	sub	r2, fp, #496
	sub	ip, fp, #516
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-544]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-516]
	cmp	r3, #0
	beq	.L160
	b	.L161
.L160:
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L162
	mov	r3, #23
	str	r3, [fp, #-496]
	ldr	r3, [fp, #20]
	str	r3, [fp, #-492]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-488]
	sub	r2, fp, #496
	sub	ip, fp, #516
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-548]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L162:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L164
.L165:
	ldr	r3, [fp, #-28]
	ldr	r2, .L176
	mov	r3, r3, asl #4
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #114
	bgt	.L166
	ldr	r3, [fp, #-28]
	ldr	r2, .L176
	mov	r3, r3, asl #4
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	sub	r2, r3, #80
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L168
.L166:
	ldr	r3, [fp, #-28]
	ldr	r2, .L176
	mov	r3, r3, asl #4
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
.L168:
	ldr	r3, [fp, #-28]
	ldr	r2, .L176
	mov	r3, r3, asl #4
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-552]
	mov	r1, r3
	bl	findIndexAlongPath(PLT)
	mov	r3, r0
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-552]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r3, r3, r1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L169
	mov	r3, #34
	str	r3, [fp, #-20]
	b	.L171
.L169:
	mov	r3, #33
	str	r3, [fp, #-20]
.L171:
	mov	r3, #7
	str	r3, [fp, #-536]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-532]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-528]
	sub	r2, fp, #536
	sub	ip, fp, #516
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-548]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L164:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L165
	mov	r1, #1
	str	r1, [fp, #-560]
	b	.L173
.L161:
	mov	r2, #0
	str	r2, [fp, #-560]
.L173:
	ldr	r3, [fp, #-560]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L177:
	.align	2
.L176:
	.word	-464
	.word	-452
	.size	fullReserve, .-fullReserve
	.section	.rodata
	.align	2
.LC1:
	.ascii	"route\000"
	.align	2
.LC2:
	.ascii	"clock\000"
	.align	2
.LC3:
	.ascii	"monitor\000"
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
	@ args = 0, pretend = 0, frame = 7964
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #7936
	sub	sp, sp, #48
	ldr	sl, .L269
.L268:
	add	sl, pc, sl
	sub	r2, fp, #204
	sub	r3, fp, #208
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-164]
	mov	r3, #0
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-208]
	sub	r2, fp, #184
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	mov	r0, r3
	bl	init_tracka(PLT)
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-160]
	ldr	r3, .L269+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-156]
	ldr	r3, .L269+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-152]
	ldr	r3, .L269+12
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-148]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-144]
	ldr	r3, [fp, #-164]
	cmp	r3, #49
	bne	.L179
	sub	r2, fp, #7104
	sub	r2, r2, #32
	sub	r2, r2, #40
	sub	r3, fp, #7168
	sub	r3, r3, #32
	sub	r3, r3, #32
	mov	r0, r2
	mov	r1, r3
	bl	init_velocity49(PLT)
	sub	r3, fp, #7232
	sub	r3, r3, #32
	sub	r3, r3, #24
	mov	r0, r3
	bl	init_table49(PLT)
	sub	r2, fp, #7296
	sub	r2, r2, #32
	sub	r2, r2, #16
	sub	r3, fp, #7360
	sub	r3, r3, #32
	sub	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	init_accelDistance49(PLT)
	b	.L181
.L179:
	ldr	r3, [fp, #-164]
	cmp	r3, #45
	bne	.L182
	sub	r2, fp, #7104
	sub	r2, r2, #32
	sub	r2, r2, #40
	sub	r3, fp, #7168
	sub	r3, r3, #32
	sub	r3, r3, #32
	mov	r0, r2
	mov	r1, r3
	bl	init_velocity45(PLT)
	sub	r3, fp, #7232
	sub	r3, r3, #32
	sub	r3, r3, #24
	mov	r0, r3
	bl	init_table45(PLT)
	sub	r2, fp, #7296
	sub	r2, r2, #32
	sub	r2, r2, #16
	sub	r3, fp, #7360
	sub	r3, r3, #32
	sub	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	init_accelDistance45(PLT)
	b	.L181
.L182:
	mov	r3, #25
	str	r3, [fp, #-184]
	ldr	r3, .L269+16
	str	r3, [fp, #-180]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	bl	Exit(PLT)
.L181:
	mvn	r3, #0
	str	r3, [fp, #-140]
	ldr	r3, .L269+60
	sub	r0, fp, #32
	add	r2, r0, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	mov	r3, #1
	str	r3, [fp, #-136]
	mov	r3, #0
	str	r3, [fp, #-132]
	ldr	r2, .L269+20
	mvn	r3, #0
	sub	r1, fp, #32
	str	r3, [r1, r2]
	b	.L265
.L184:
.L265:
	mov	r3, #0
	str	r3, [fp, #-128]
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-120]
	mvn	r3, #0
	str	r3, [fp, #-116]
	mov	r3, #0
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-108]
	sub	r2, fp, #204
	sub	r3, fp, #208
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-196]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-192]
	str	r3, [fp, #-96]
	mov	r3, #0
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-208]
	sub	r2, fp, #184
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	mov	r3, #0
	str	r3, [fp, #-184]
	mvn	r3, #0
	str	r3, [fp, #-180]
	mvn	r3, #0
	str	r3, [fp, #-176]
	sub	r3, fp, #7936
	sub	r3, r3, #32
	sub	r3, r3, #28
	str	r3, [fp, #-172]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-140]
	cmn	r3, #1
	bne	.L185
	mov	r3, #14
	str	r3, [fp, #-184]
	mov	r3, #1
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	ldr	r3, [fp, #-104]
	str	r3, [fp, #-172]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	sub	r2, fp, #204
	sub	r3, fp, #208
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-116]
	mov	r3, #0
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-208]
	sub	r2, fp, #184
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r3, [fp, #-116]
	str	r3, [fp, #-140]
.L185:
	sub	r3, fp, #7936
	sub	r3, r3, #32
	sub	r3, r3, #28
	str	r3, [sp, #0]
	sub	r3, fp, #7360
	sub	r3, r3, #32
	sub	r3, r3, #16
	str	r3, [sp, #4]
	ldr	r3, [fp, #-136]
	str	r3, [sp, #8]
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	str	r3, [sp, #12]
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-104]
	bl	getShortestPath(PLT)
	b	.L266
.L187:
.L266:
	ldr	r3, [fp, #-140]
	str	r3, [fp, #-116]
	ldr	r3, .L269+60
	sub	r2, fp, #32
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L188
	ldr	r3, .L269+60
	sub	r0, fp, #32
	add	r3, r0, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #7936
	sub	r2, r2, #32
	sub	r2, r2, #28
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #48
	sub	r3, fp, #7360
	sub	r3, r3, #32
	sub	r3, r3, #20
	str	r3, [sp, #0]
	mov	r0, r2
	ldr	r2, [fp, #-116]
	mov	r3, ip
	bl	howFarFromDest(PLT)
	mov	r3, r0
	str	r3, [fp, #-84]
	ldr	r3, .L269+60
	sub	r1, fp, #32
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-84]
	add	r3, r3, r2
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	ldr	r2, .L269+36
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	ldr	r2, .L269+68
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	ble	.L202
	mov	r3, #3
	str	r3, [fp, #-184]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L269+60
	sub	r1, fp, #32
	add	r3, r1, r3
	ldr	r1, [r3, #0]
	sub	r2, fp, #7936
	sub	r2, r2, #32
	sub	r2, r2, #28
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	str	r3, [sp, #0]
	ldr	r3, [fp, #-100]
	str	r3, [sp, #4]
	sub	r3, fp, #7232
	sub	r3, r3, #32
	sub	r3, r3, #24
	str	r3, [sp, #8]
	ldr	r3, [fp, #-144]
	str	r3, [sp, #12]
	str	r1, [sp, #16]
	ldr	r0, [fp, #-148]
	ldr	r1, [fp, #-160]
	ldr	r3, [fp, #-116]
	bl	fullReserve(PLT)
	mov	r3, r0
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	cmp	r3, #0
	bne	.L192
	mvn	r3, #0
	str	r3, [fp, #-140]
	b	.L184
.L192:
	mov	r3, #23
	str	r3, [fp, #-184]
	ldr	r3, .L269+60
	sub	r2, fp, #32
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-180]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	str	r3, [fp, #-76]
	b	.L195
.L196:
	ldr	r3, [fp, #-76]
	ldr	r2, .L269+68
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-76]
	ldr	r2, .L269+36
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	ble	.L197
	ldr	r3, [fp, #-76]
	sub	r3, r3, #1
	str	r3, [fp, #-76]
.L195:
	ldr	r3, [fp, #-76]
	cmp	r3, #0
	bge	.L196
.L197:
	ldr	r3, [fp, #-76]
	ldr	r2, .L269+68
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-76]
	ldr	r2, .L269+36
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-84]
	rsb	r3, r2, r3
	str	r3, [fp, #-72]
	ldr	r2, .L269+24
	mov	r3, #22
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L269+24
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-84]
	str	r3, [r2, #0]
	ldr	r3, .L269+24
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, .L269+28
	str	r3, [r2, #0]
	ldr	r3, [fp, #-76]
	add	r1, r3, #1
	ldr	r3, .L269+24
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, .L269+24
	mov	r2, #16
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-144]
	str	r3, [r2, #0]
	sub	r2, fp, #7360
	sub	r2, r2, #32
	sub	r2, r2, #40
	sub	ip, fp, #7360
	sub	ip, ip, #32
	sub	ip, ip, #60
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-76]
	add	r3, r3, #1
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #21
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-100]
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	ldr	r3, [fp, #-104]
	str	r3, [fp, #-172]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r7, [fp, #-152]
	ldr	r3, [fp, #-76]
	ldr	r2, .L269+52
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-72]
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
	ldr	r3, [fp, #-76]
	ldr	r2, .L269+44
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
	mov	r3, #20
	str	r3, [fp, #-184]
	mov	r3, #0
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-152]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	ldr	r3, .L269+60
	sub	r2, fp, #32
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [sp, #0]
	ldr	r3, [fp, #-96]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-144]
	str	r3, [sp, #8]
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	str	r3, [sp, #12]
	ldr	r0, [fp, #-160]
	ldr	r1, [fp, #-152]
	mov	r2, #1
	ldr	r3, [fp, #-136]
	bl	adjustPosition(PLT)
	mov	r3, #20
	str	r3, [fp, #-184]
	mov	r3, #15
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L269+60
	sub	r0, fp, #32
	add	r3, r0, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-136]
	cmp	r3, #1
	bne	.L199
	mov	r3, #0
	str	r3, [fp, #-136]
	b	.L201
.L199:
	mov	r3, #1
	str	r3, [fp, #-136]
.L201:
	mov	r3, #5
	str	r3, [fp, #-184]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #0
	str	r3, [fp, #-184]
	mvn	r3, #0
	str	r3, [fp, #-180]
	mvn	r3, #0
	str	r3, [fp, #-176]
	sub	r3, fp, #7936
	sub	r3, r3, #32
	sub	r3, r3, #28
	str	r3, [fp, #-172]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L269+60
	sub	r1, fp, #32
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L269+20
	sub	r2, fp, #32
	ldr	r1, [r2, r3]
	ldr	r3, .L269+32
	mov	r2, #400
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r2, fp, #7936
	sub	r2, r2, #32
	sub	r2, r2, #28
	sub	ip, fp, #7360
	sub	ip, ip, #32
	sub	ip, ip, #16
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, ip
	ldr	r3, [fp, #-136]
	bl	getPartialRoute(PLT)
	b	.L187
.L188:
	sub	r2, fp, #7936
	sub	r2, r2, #32
	sub	r2, r2, #28
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #48
	sub	r3, fp, #7360
	sub	r3, r3, #32
	sub	r3, r3, #20
	str	r3, [sp, #0]
	mov	r0, r2
	ldr	r1, [fp, #-104]
	ldr	r2, [fp, #-116]
	mov	r3, ip
	bl	howFarFromDest(PLT)
	mov	r3, r0
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	ldr	r2, .L269+36
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	ldr	r2, .L269+68
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	ble	.L202
	mov	r3, #3
	str	r3, [fp, #-184]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	sub	r2, fp, #7936
	sub	r2, r2, #32
	sub	r2, r2, #28
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	str	r3, [sp, #0]
	ldr	r3, [fp, #-100]
	str	r3, [sp, #4]
	sub	r3, fp, #7232
	sub	r3, r3, #32
	sub	r3, r3, #24
	str	r3, [sp, #8]
	ldr	r3, [fp, #-144]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-104]
	str	r3, [sp, #16]
	ldr	r0, [fp, #-148]
	ldr	r1, [fp, #-160]
	ldr	r3, [fp, #-116]
	bl	fullReserve(PLT)
	mov	r3, r0
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	bne	.L204
	mvn	r3, #0
	str	r3, [fp, #-140]
	b	.L184
.L204:
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	str	r3, [fp, #-60]
	b	.L206
.L270:
	.align	2
.L269:
	.word	_GLOBAL_OFFSET_TABLE_-(.L268+8)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	9999999
	.word	-7380
	.word	-7400
	.word	999999
	.word	-7964
	.word	-7312
	.word	-7440
	.word	-7368
	.word	-7464
	.word	-7144
	.word	-7480
	.word	-7376
	.word	-7500
	.word	-7256
	.word	-7540
	.word	-7200
.L207:
	ldr	r3, [fp, #-60]
	ldr	r2, .L269+68
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-60]
	ldr	r2, .L269+36
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	ble	.L208
	ldr	r3, [fp, #-60]
	sub	r3, r3, #1
	str	r3, [fp, #-60]
.L206:
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	bge	.L207
.L208:
	ldr	r3, [fp, #-60]
	ldr	r2, .L269+68
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-60]
	ldr	r2, .L269+36
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r2, r1, r3
	ldr	r3, [fp, #-68]
	rsb	r3, r2, r3
	str	r3, [fp, #-56]
	ldr	r2, .L269+40
	mov	r3, #22
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L269+40
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-68]
	str	r3, [r2, #0]
	ldr	r3, .L269+40
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-132]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-60]
	add	r1, r3, #1
	ldr	r3, .L269+40
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, .L269+40
	mov	r2, #16
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-144]
	str	r3, [r2, #0]
	sub	r2, fp, #7424
	sub	r2, r2, #32
	sub	r2, r2, #16
	sub	ip, fp, #7424
	sub	ip, ip, #32
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #20
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #21
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-100]
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	ldr	r3, [fp, #-104]
	str	r3, [fp, #-172]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r7, [fp, #-152]
	ldr	r3, [fp, #-60]
	ldr	r2, .L269+52
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r0, [fp, #-56]
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
	ldr	r3, [fp, #-60]
	ldr	r2, .L269+44
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
	mov	r3, #20
	str	r3, [fp, #-184]
	mov	r3, #0
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-152]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	ldr	r3, [fp, #-104]
	str	r3, [sp, #0]
	ldr	r3, [fp, #-96]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-144]
	str	r3, [sp, #8]
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	str	r3, [sp, #12]
	ldr	r0, [fp, #-160]
	ldr	r1, [fp, #-152]
	mov	r2, #0
	ldr	r3, [fp, #-136]
	bl	adjustPosition(PLT)
	ldr	r3, [fp, #-104]
	str	r3, [fp, #-140]
	mov	r3, #5
	str	r3, [fp, #-184]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L184
.L202:
	mov	r3, #14
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-100]
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	ldr	r3, [fp, #-104]
	str	r3, [fp, #-172]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-104]
	str	r3, [fp, #-92]
	ldr	r3, .L269+60
	sub	r2, fp, #32
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L210
	ldr	r3, .L269+60
	sub	r0, fp, #32
	add	r3, r0, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-92]
.L210:
	sub	r2, fp, #7936
	sub	r2, r2, #32
	sub	r2, r2, #28
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	str	r3, [sp, #0]
	ldr	r3, [fp, #-100]
	str	r3, [sp, #4]
	sub	r3, fp, #7232
	sub	r3, r3, #32
	sub	r3, r3, #24
	str	r3, [sp, #8]
	ldr	r3, [fp, #-144]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-92]
	str	r3, [sp, #16]
	ldr	r0, [fp, #-148]
	ldr	r1, [fp, #-160]
	ldr	r3, [fp, #-116]
	bl	reserveAndSetSwitches(PLT)
	mov	r3, r0
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	cmp	r3, #0
	bne	.L267
	mov	r3, #20
	str	r3, [fp, #-184]
	mov	r3, #0
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mvn	r3, #0
	str	r3, [fp, #-140]
	b	.L184
.L212:
.L267:
	ldr	r3, [fp, #-108]
	str	r3, [fp, #-112]
	ldr	r0, [fp, #-152]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-108]
	sub	r2, fp, #7936
	sub	r2, r2, #32
	sub	r2, r2, #28
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #48
	sub	r3, fp, #7424
	sub	r3, r3, #32
	sub	r3, r3, #40
	str	r3, [sp, #0]
	mov	r0, r2
	ldr	r1, [fp, #-92]
	ldr	r2, [fp, #-116]
	mov	r3, ip
	bl	findNextDistance(PLT)
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, .L269+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #2
	beq	.L214
	ldr	r3, .L269+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #3
	beq	.L214
	ldr	r3, .L269+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #30
	beq	.L214
	ldr	r3, .L269+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #31
	beq	.L214
	ldr	r3, .L269+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #64
	beq	.L214
	ldr	r3, .L269+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #65
	beq	.L214
	ldr	r3, .L269+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #32
	beq	.L214
	ldr	r3, .L269+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #33
	beq	.L214
	ldr	r3, .L269+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #28
	beq	.L214
	ldr	r3, .L269+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #29
	beq	.L214
	ldr	r3, .L269+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #48
	beq	.L214
	ldr	r3, .L269+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #49
	beq	.L214
	ldr	r3, .L269+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #54
	beq	.L214
	ldr	r3, .L269+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #55
	beq	.L214
	ldr	r3, .L269+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #56
	beq	.L214
	ldr	r3, .L269+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #57
	beq	.L214
	ldr	r3, .L269+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #36
	beq	.L214
	ldr	r3, .L269+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #37
	beq	.L214
	ldr	r3, .L269+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #74
	beq	.L214
	ldr	r3, .L269+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #75
	beq	.L214
	ldr	r3, .L269+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #6
	beq	.L214
	ldr	r3, .L269+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #7
	beq	.L214
	ldr	r3, .L269+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #8
	beq	.L214
	ldr	r3, .L269+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #9
	beq	.L214
	ldr	r3, .L269+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #10
	beq	.L214
	ldr	r3, .L269+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #11
	beq	.L214
	ldr	r3, .L269+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	cmp	r3, #12
	beq	.L214
	ldr	r3, .L269+48
	sub	r1, fp, #32
	ldr	r3, [r1, r3]
	cmp	r3, #13
	beq	.L214
	ldr	r3, .L269+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	cmp	r3, #40
	bne	.L243
.L214:
	ldr	r0, [fp, #-52]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-100]
	ldr	r2, .L269+76
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
	str	r3, [fp, #-128]
	mov	r3, #1
	str	r3, [fp, #-124]
	b	.L244
.L243:
	ldr	r0, [fp, #-52]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r3, [fp, #-100]
	ldr	r2, .L269+52
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
	str	r3, [fp, #-128]
	mov	r3, #0
	str	r3, [fp, #-124]
.L244:
	mov	r3, #4
	str	r3, [fp, #-184]
	ldr	r3, .L269+48
	sub	r2, fp, #32
	ldr	r3, [r2, r3]
	str	r3, [fp, #-180]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-176]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #25
	str	r3, [fp, #-184]
	ldr	r3, .L269+48
	sub	r0, fp, #32
	ldr	r3, [r0, r3]
	str	r3, [fp, #-180]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-176]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L269+56
	ldr	r3, [fp, #-116]
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, [fp, #-120]
	cmp	r3, #0
	beq	.L245
	ldr	r0, [fp, #-120]
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-112]
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
	ldr	r3, [fp, #-124]
	cmp	r3, #0
	beq	.L247
	ldr	r7, [fp, #-100]
	ldr	r3, [fp, #-100]
	ldr	r2, .L269+76
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
	ldr	r2, .L269+76
	mov	r3, r7, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-100]
	ldr	r2, .L269+76
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L269+56
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	b	.L245
.L247:
	ldr	r7, [fp, #-100]
	ldr	r3, [fp, #-100]
	ldr	r2, .L269+52
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
	ldr	r2, .L269+52
	mov	r3, r7, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-100]
	ldr	r2, .L269+52
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L269+56
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
.L245:
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-120]
	ldr	r3, .L269+56
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-108]
	str	r3, [r2, #0]
	mov	r3, #19
	str	r3, [fp, #-184]
	sub	r3, fp, #7424
	sub	r3, r3, #32
	sub	r3, r3, #56
	str	r3, [fp, #-180]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	sub	r2, fp, #7936
	sub	r2, r2, #32
	sub	r2, r2, #28
	sub	ip, fp, #7040
	sub	ip, ip, #32
	sub	ip, ip, #48
	sub	r3, fp, #7360
	sub	r3, r3, #32
	sub	r3, r3, #20
	str	r3, [sp, #0]
	mov	r0, r2
	ldr	r1, [fp, #-92]
	ldr	r2, [fp, #-116]
	mov	r3, ip
	bl	howFarFromDest(PLT)
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, .L269+60
	sub	r2, fp, #32
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L249
	ldr	r3, .L269+60
	sub	r0, fp, #32
	add	r3, r0, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-48]
	add	r3, r3, r2
	str	r3, [fp, #-48]
.L249:
	ldr	r2, .L269+64
	mov	r3, #22
	sub	r1, fp, #32
	str	r3, [r1, r2]
	ldr	r3, .L269+64
	mov	r2, #4
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-48]
	str	r3, [r2, #0]
	ldr	r3, .L269+64
	mov	r2, #8
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-132]
	str	r3, [r2, #0]
	ldr	r3, .L269+64
	mov	r2, #12
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-100]
	str	r3, [r2, #0]
	ldr	r3, .L269+64
	mov	r2, #16
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-144]
	str	r3, [r2, #0]
	sub	r2, fp, #7488
	sub	r2, r2, #32
	sub	r2, r2, #12
	sub	ip, fp, #7488
	sub	ip, ip, #32
	sub	ip, ip, #32
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-52]
	rsb	r1, r3, r2
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	ldr	r2, .L269+68
	mov	r3, r3, asl #2
	sub	r0, fp, #32
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r1, r3
	bgt	.L251
	mov	r3, #3
	str	r3, [fp, #-184]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	ldr	r2, .L269+68
	mov	r3, r3, asl #2
	sub	r1, fp, #32
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-48]
	rsb	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r2, .L269+72
	mov	r3, #22
	sub	r0, fp, #32
	str	r3, [r0, r2]
	ldr	r3, .L269+72
	mov	r2, #4
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-48]
	str	r3, [r2, #0]
	ldr	r3, .L269+72
	mov	r2, #8
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-132]
	str	r3, [r2, #0]
	ldr	r3, .L269+72
	mov	r2, #12
	sub	r1, fp, #32
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-100]
	str	r3, [r2, #0]
	ldr	r3, .L269+72
	mov	r2, #16
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-144]
	str	r3, [r2, #0]
	sub	r2, fp, #7488
	sub	r2, r2, #32
	sub	r2, r2, #52
	sub	ip, fp, #7552
	sub	ip, ip, #32
	sub	ip, ip, #8
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-124]
	cmp	r3, #0
	beq	.L253
	ldr	r5, [fp, #-152]
	ldr	r3, [fp, #-100]
	ldr	r2, .L269+76
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
	b	.L255
.L253:
	ldr	r5, [fp, #-152]
	ldr	r3, [fp, #-100]
	ldr	r2, .L271
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
.L255:
	mov	r3, #20
	str	r3, [fp, #-184]
	mov	r3, #0
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-92]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-152]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	ldr	r3, .L271+4
	sub	r1, fp, #32
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L256
	ldr	r3, [fp, #-92]
	str	r3, [sp, #0]
	ldr	r3, [fp, #-96]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-144]
	str	r3, [sp, #8]
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	str	r3, [sp, #12]
	ldr	r0, [fp, #-160]
	ldr	r1, [fp, #-152]
	mov	r2, #1
	ldr	r3, [fp, #-136]
	bl	adjustPosition(PLT)
	mov	r3, #20
	str	r3, [fp, #-184]
	mov	r3, #15
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-136]
	cmp	r3, #1
	bne	.L258
	mov	r3, #0
	str	r3, [fp, #-136]
	b	.L260
.L258:
	mov	r3, #1
	str	r3, [fp, #-136]
.L260:
	mov	r3, #0
	str	r3, [fp, #-184]
	mvn	r3, #0
	str	r3, [fp, #-180]
	mvn	r3, #0
	str	r3, [fp, #-176]
	sub	r3, fp, #7936
	sub	r3, r3, #32
	sub	r3, r3, #28
	str	r3, [fp, #-172]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-148]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L271+4
	sub	r0, fp, #32
	add	r2, r0, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-128]
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-120]
	mov	r3, #0
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-108]
	ldr	r3, .L271+8
	sub	r2, fp, #32
	ldr	r1, [r2, r3]
	ldr	r3, .L271+12
	mov	r2, #400
	sub	r0, fp, #32
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r2, fp, #7936
	sub	r2, r2, #32
	sub	r2, r2, #28
	sub	ip, fp, #7360
	sub	ip, ip, #32
	sub	ip, ip, #16
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, ip
	ldr	r3, [fp, #-136]
	bl	getPartialRoute(PLT)
	b	.L187
.L256:
	ldr	r3, [fp, #-92]
	str	r3, [sp, #0]
	ldr	r3, [fp, #-96]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-144]
	str	r3, [sp, #8]
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	str	r3, [sp, #12]
	ldr	r0, [fp, #-160]
	ldr	r1, [fp, #-152]
	mov	r2, #0
	ldr	r3, [fp, #-136]
	bl	adjustPosition(PLT)
	b	.L184
.L251:
	sub	r2, fp, #204
	sub	r3, fp, #208
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-116]
	mov	r3, #0
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-208]
	sub	r2, fp, #184
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r3, [fp, #-204]
	cmp	r3, #1
	bne	.L212
	sub	r2, fp, #7936
	sub	r2, r2, #32
	sub	r2, r2, #28
	sub	r3, fp, #7040
	sub	r3, r3, #32
	sub	r3, r3, #48
	str	r3, [sp, #0]
	ldr	r3, [fp, #-100]
	str	r3, [sp, #4]
	sub	r3, fp, #7232
	sub	r3, r3, #32
	sub	r3, r3, #24
	str	r3, [sp, #8]
	ldr	r3, [fp, #-144]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-92]
	str	r3, [sp, #16]
	ldr	r0, [fp, #-148]
	ldr	r1, [fp, #-160]
	ldr	r3, [fp, #-116]
	bl	reserveAndSetSwitches(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L212
	mov	r3, #20
	str	r3, [fp, #-184]
	mov	r3, #0
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-96]
	str	r3, [fp, #-176]
	sub	r2, fp, #184
	sub	ip, fp, #204
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mvn	r3, #0
	str	r3, [fp, #-140]
	b	.L212
.L272:
	.align	2
.L271:
	.word	-7144
	.word	-7376
	.word	-7380
	.word	-7964
	.size	trainDriver, .-trainDriver
	.ident	"GCC: (GNU) 4.0.2"
