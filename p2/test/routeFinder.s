	.file	"routeFinder.c"
	.text
	.align	2
	.global	addPathToNextSensor
	.type	addPathToNextSensor, %function
addPathToNextSensor:
	@ args = 0, pretend = 0, frame = 76
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #76
	str	r0, [fp, #-76]
	str	r1, [fp, #-80]
	str	r2, [fp, #-84]
	str	r3, [fp, #-88]
	ldr	r2, [fp, #-84]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-76]
	add	r3, r2, r3
	ldr	r3, [r3, #12]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L2
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #0]
	sub	r3, r3, #1
	ldr	r2, [fp, #-80]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2, #1]
	b	.L21
.L2:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L22
.L6:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #16]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L7
	ldr	r3, [fp, #-88]
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-80]
	str	r2, [r3, r1, asl #3]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-80]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #1
	strb	r3, [r2, #1]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, [fp, #-88]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-88]
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-80]
	str	r2, [r3, r1, asl #3]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, [fp, #-88]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	str	r3, [fp, #-28]
	b	.L9
.L10:
	ldr	r3, [fp, #-88]
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-28]
	mvn	r2, #59
	mov	r3, r3, asl #2
	sub	r0, fp, #12
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-80]
	str	r2, [r3, r1, asl #3]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-80]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, [fp, #-88]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	str	r3, [fp, #-28]
.L9:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bge	.L10
	b	.L5
.L7:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	bne	.L12
	ldr	r3, [fp, #-16]
	cmp	r3, #18
	bgt	.L14
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #1
	add	r3, r3, #79
	str	r3, [fp, #-24]
	b	.L16
.L14:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #1
	sub	r3, r3, #189
	str	r3, [fp, #-24]
.L16:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-20]
	b	.L17
.L12:
	ldr	r3, [fp, #-16]
	cmp	r3, #18
	bgt	.L18
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #1
	add	r3, r3, #78
	str	r3, [fp, #-24]
	b	.L20
.L18:
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #1
	sub	r3, r3, #190
	str	r3, [fp, #-24]
.L20:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L17:
	ldr	r3, [fp, #-88]
	ldr	r1, [r3, #0]
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-24]
	str	r3, [r2, r1, asl #3]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #0]
	ldr	r2, [fp, #-80]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #0]
	add	r2, r3, #1
	ldr	r3, [fp, #-88]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	mvn	r2, #59
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-32]
.L5:
.L22:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L6
.L21:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	addPathToNextSensor, .-addPathToNextSensor
	.align	2
	.global	route
	.type	route, %function
route:
	@ args = 0, pretend = 0, frame = 2360
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #2352
	sub	sp, sp, #8
	str	r0, [fp, #-2360]
	str	r1, [fp, #-2364]
	str	r2, [fp, #-2368]
	str	r3, [fp, #-2372]
	mov	r3, #144
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-2356]
	b	.L24
.L25:
	ldr	r1, [fp, #-2356]
	ldr	r2, [fp, #-2364]
	mvn	r3, #0
	str	r3, [r2, r1, asl #3]
	ldr	r3, [fp, #-2356]
	ldr	r2, [fp, #-2364]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-2356]
	ldr	r2, [fp, #-2364]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #0
	strb	r3, [r2, #1]
	ldr	r3, [fp, #-2356]
	add	r3, r3, #1
	str	r3, [fp, #-2356]
.L24:
	ldr	r3, [fp, #-2356]
	cmp	r3, #49
	ble	.L25
	mov	r3, #0
	str	r3, [fp, #-2356]
	b	.L27
.L28:
	ldr	r3, [fp, #-2356]
	ldr	r2, .L90
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, .L90+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-2356]
	ldr	r2, .L90+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-2356]
	ldr	r2, .L90+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mvn	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-2356]
	ldr	r2, .L90+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #1]
	ldr	r3, [fp, #-2356]
	ldr	r2, .L90+16
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-2356]
	add	r3, r3, #1
	str	r3, [fp, #-2356]
.L27:
	ldr	r3, [fp, #-2356]
	cmp	r3, #143
	ble	.L28
	ldr	r3, [fp, #-2368]
	ldr	r2, .L90
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-2368]
	str	r3, [fp, #-44]
	b	.L89
.L31:
	ldr	r3, .L90+4
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-2356]
	b	.L32
.L33:
	ldr	r3, [fp, #-2356]
	ldr	r2, .L90+16
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #1
	bne	.L34
	ldr	r3, [fp, #-2356]
	ldr	r2, .L90
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bge	.L34
	ldr	r3, [fp, #-2356]
	ldr	r2, .L90
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-2356]
	str	r3, [fp, #-44]
.L34:
	ldr	r3, [fp, #-2356]
	add	r3, r3, #1
	str	r3, [fp, #-2356]
.L32:
	ldr	r3, [fp, #-2356]
	cmp	r3, #143
	ble	.L33
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-2372]
	cmp	r2, r3
	beq	.L38
	ldr	r3, [fp, #-44]
	ldr	r2, .L90+16
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L40
	mov	r3, #2
	str	r3, [fp, #-20]
	b	.L42
.L40:
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #5
	beq	.L43
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bne	.L45
.L43:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L42
.L45:
	mov	r3, #1
	str	r3, [fp, #-20]
.L42:
	mov	r3, #0
	str	r3, [fp, #-2356]
	b	.L46
.L47:
	ldr	r3, [fp, #-44]
	cmp	r3, #110
	bne	.L48
	ldr	r3, [fp, #-2356]
	cmp	r3, #1
	beq	.L50
.L48:
	ldr	r3, [fp, #-44]
	cmp	r3, #122
	bne	.L51
	ldr	r3, [fp, #-2356]
	cmp	r3, #0
	beq	.L53
.L51:
	ldr	r3, [fp, #-44]
	ldr	r2, .L90
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r0, [r3, #0]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r1, r2, r3
	ldr	r3, [fp, #-2356]
	mov	r2, #28
	mov	r3, r3, asl #4
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r3, r0, r3
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r1, r2, r3
	ldr	r3, [fp, #-2356]
	mov	r2, #24
	mov	r3, r3, asl #4
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r1, r2, r3
	ldr	r3, [fp, #-2356]
	mov	r2, #24
	mov	r3, r3, asl #4
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bne	.L54
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
	b	.L56
.L54:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	bne	.L57
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L59
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #78
	str	r3, [fp, #-28]
	b	.L56
.L59:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #190
	str	r3, [fp, #-28]
	b	.L56
.L57:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	bne	.L62
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L64
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #79
	str	r3, [fp, #-28]
	b	.L56
.L64:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #189
	str	r3, [fp, #-28]
	b	.L56
.L62:
	ldr	r3, [fp, #-16]
	cmp	r3, #4
	bne	.L67
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-28]
	b	.L56
.L67:
	ldr	r3, [fp, #-16]
	cmp	r3, #5
	bne	.L56
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-28]
.L56:
	ldr	r3, [fp, #-28]
	ldr	r2, .L90
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	ble	.L53
	ldr	r3, [fp, #-28]
	ldr	r2, .L90
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, .L90+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	str	r3, [r2, #0]
	ldr	r1, [fp, #-28]
	ldr	r3, [fp, #-2356]
	and	r0, r3, #255
	ldr	r2, .L90+12
	mov	r3, r1, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, r0
	strb	r3, [r2, #0]
.L53:
	ldr	r3, [fp, #-2356]
	add	r3, r3, #1
	str	r3, [fp, #-2356]
.L46:
	ldr	r2, [fp, #-2356]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L47
.L50:
	ldr	r3, [fp, #-44]
	ldr	r2, .L90
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r3, r2, r3
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2360]
	add	r3, r2, r3
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bne	.L71
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
	b	.L73
.L71:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	bne	.L74
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L76
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #78
	str	r3, [fp, #-28]
	b	.L73
.L76:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #190
	str	r3, [fp, #-28]
	b	.L73
.L74:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	bne	.L73
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L80
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #79
	str	r3, [fp, #-28]
	b	.L73
.L80:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #189
	str	r3, [fp, #-28]
.L73:
	ldr	r3, [fp, #-28]
	ldr	r2, .L90
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	ble	.L30
	ldr	r3, [fp, #-28]
	ldr	r2, .L90
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, .L90+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, .L90+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, .L90+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #1
	strb	r3, [r2, #1]
.L30:
.L89:
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L31
.L38:
	mov	r3, #0
	str	r3, [fp, #-2356]
	ldr	r3, [fp, #-2372]
	str	r3, [fp, #-40]
	b	.L83
.L84:
	ldr	r1, [fp, #-2356]
	ldr	r2, [fp, #-2364]
	ldr	r3, [fp, #-40]
	str	r3, [r2, r1, asl #3]
	ldr	r0, [fp, #-2356]
	ldr	r3, [fp, #-40]
	ldr	r2, .L90+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldrb	ip, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-2364]
	mov	r1, #4
	mov	r3, r0, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, ip
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-2356]
	add	r3, r3, #1
	str	r3, [fp, #-2356]
	ldr	r3, [fp, #-40]
	ldr	r2, .L90+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L85
	sub	r3, fp, #2336
	sub	r3, r3, #12
	sub	r3, r3, #8
	ldr	r0, [fp, #-2360]
	ldr	r1, [fp, #-2364]
	ldr	r2, [fp, #-40]
	bl	addPathToNextSensor(PLT)
.L85:
	ldr	r3, [fp, #-40]
	ldr	r2, .L90+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-40]
.L83:
	ldr	r3, [fp, #-40]
	cmn	r3, #1
	bne	.L84
	ldr	r3, [fp, #-2356]
	sub	r2, r3, #1
	ldr	r3, [fp, #-2364]
	str	r2, [r3, #400]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L91:
	.align	2
.L90:
	.word	-612
	.word	99999
	.word	-1764
	.word	-1760
	.word	-2340
	.size	route, .-route
	.section	.rodata
	.align	2
.LC0:
	.ascii	"route\000"
	.align	2
.LC1:
	.ascii	"monitor\000"
	.text
	.align	2
	.global	routeFinder
	.type	routeFinder, %function
routeFinder:
	@ args = 0, pretend = 0, frame = 7812
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #7808
	sub	sp, sp, #4
	ldr	sl, .L102
.L101:
	add	sl, pc, sl
	sub	r3, fp, #6912
	sub	r3, r3, #16
	sub	r3, r3, #20
	mov	r0, r3
	bl	init_tracka(PLT)
	ldr	r3, .L102+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, .L102+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, .L102+12
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L102+12
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #4]
.L93:
	sub	r2, fp, #6912
	sub	r2, r2, #16
	sub	r2, r2, #40
	sub	r3, fp, #6976
	sub	r3, r3, #16
	sub	r3, r3, #20
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, .L102+16
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-28]
	ldr	r3, .L102+16
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-24]
	ldr	r3, .L102+12
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L94
	ldr	r3, .L102+12
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L102+20
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L96
.L94:
	ldr	r3, .L102+20
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	ldr	r3, .L102+12
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L97
.L96:
	ldr	r3, .L102+12
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L98
	ldr	r3, .L102+12
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L102+20
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L97
.L98:
	ldr	r3, .L102+20
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	ldr	r3, .L102+12
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
	mov	r3, #1
	str	r3, [fp, #-20]
.L97:
	ldr	r1, [fp, #-20]
	mov	r3, r1
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	sub	r2, fp, #7808
	sub	r2, r2, #16
	sub	r2, r2, #4
	add	r2, r2, r3
	sub	r3, fp, #6912
	sub	r3, r3, #16
	sub	r3, r3, #20
	mov	r0, r3
	mov	r1, r2
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	bl	route(PLT)
	ldr	r3, .L102+20
	sub	r2, fp, #16
	ldr	r0, [r2, r3]
	ldr	r1, [fp, #-20]
	mov	r3, r1
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3
	sub	r3, fp, #7808
	sub	r3, r3, #16
	sub	r3, r3, #4
	add	r3, r3, r2
	mov	r1, r3
	mov	r2, #404
	bl	Reply(PLT)
	b	.L93
.L103:
	.align	2
.L102:
	.word	_GLOBAL_OFFSET_TABLE_-(.L101+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	-7004
	.word	-6952
	.word	-6996
	.size	routeFinder, .-routeFinder
	.ident	"GCC: (GNU) 4.0.2"
