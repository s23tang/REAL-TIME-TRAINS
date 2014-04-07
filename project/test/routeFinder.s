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
	@ args = 16, pretend = 0, frame = 2400
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #2400
	sub	sp, sp, #4
	str	r0, [fp, #-2400]
	str	r1, [fp, #-2404]
	str	r2, [fp, #-2408]
	str	r3, [fp, #-2412]
	mov	r3, #144
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-2356]
	b	.L24
.L25:
	ldr	r1, [fp, #-2356]
	ldr	r2, [fp, #-2404]
	mvn	r3, #0
	str	r3, [r2, r1, asl #3]
	ldr	r3, [fp, #-2356]
	ldr	r2, [fp, #-2404]
	mov	r1, #4
	mov	r3, r3, asl #3
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-2356]
	ldr	r2, [fp, #-2404]
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
	ldr	r2, .L103
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, .L103+4
	str	r3, [r2, #0]
	ldr	r3, [fp, #-2356]
	ldr	r2, .L103+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-2356]
	ldr	r2, .L103+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mvn	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-2356]
	ldr	r2, .L103+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #1]
	ldr	r3, [fp, #-2356]
	ldr	r2, .L103+16
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
	ldr	r3, [fp, #-2408]
	ldr	r2, .L103
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	b	.L102
.L31:
	ldr	r3, .L103+4
	str	r3, [fp, #-36]
	mvn	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-2356]
	b	.L32
.L33:
	ldr	r3, [fp, #-2356]
	ldr	r2, .L103+16
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #1
	bne	.L34
	ldr	r3, [fp, #-2356]
	ldr	r2, .L103
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bge	.L34
	ldr	r3, [fp, #-2356]
	ldr	r2, .L103
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
	ldr	r3, [fp, #-2412]
	cmp	r2, r3
	beq	.L38
	ldr	r3, [fp, #-44]
	cmn	r3, #1
	beq	.L38
	ldr	r3, [fp, #-44]
	ldr	r2, .L103+16
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
	ldr	r3, [fp, #-2400]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L41
	mov	r3, #2
	str	r3, [fp, #-20]
	b	.L43
.L41:
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2400]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #5
	beq	.L44
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2400]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bne	.L46
.L44:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L43
.L46:
	mov	r3, #1
	str	r3, [fp, #-20]
.L43:
	mov	r3, #0
	str	r3, [fp, #-2356]
	b	.L47
.L48:
	ldr	r3, [fp, #-44]
	cmp	r3, #79
	bgt	.L49
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2400]
	add	r3, r2, r3
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #8]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L54
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #-2400]
	add	r3, r2, r3
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #8]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #4]
	cmp	r2, r3
	bne	.L53
	b	.L54
.L49:
	ldr	r3, [fp, #-44]
	eor	r3, r3, #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L55
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #12]
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L54
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #12]
	add	r3, r2, r3
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #4]
	cmp	r2, r3
	bne	.L53
	b	.L54
.L55:
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #12]
	add	r3, r2, r3
	sub	r3, r3, #16
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L54
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #4
	mov	r2, r3
	ldr	r3, [fp, #12]
	add	r3, r2, r3
	sub	r3, r3, #16
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #4]
	cmp	r2, r3
	bne	.L53
.L54:
	ldr	r3, [fp, #-44]
	cmp	r3, #100
	bne	.L60
	ldr	r3, [fp, #-2356]
	cmp	r3, #1
	beq	.L53
.L60:
	ldr	r3, [fp, #-44]
	cmp	r3, #110
	bne	.L62
	ldr	r3, [fp, #-2356]
	cmp	r3, #1
	beq	.L53
.L62:
	ldr	r3, [fp, #-44]
	cmp	r3, #122
	bne	.L64
	ldr	r3, [fp, #-2356]
	cmp	r3, #0
	beq	.L66
.L64:
	ldr	r3, [fp, #-44]
	ldr	r2, .L103
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
	ldr	r3, [fp, #-2400]
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
	ldr	r3, [fp, #-2400]
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
	ldr	r3, [fp, #-2400]
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
	bne	.L67
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
	b	.L69
.L67:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	bne	.L70
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L72
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #78
	str	r3, [fp, #-28]
	b	.L69
.L72:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #190
	str	r3, [fp, #-28]
	b	.L69
.L70:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	bne	.L75
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L77
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #79
	str	r3, [fp, #-28]
	b	.L69
.L77:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #189
	str	r3, [fp, #-28]
	b	.L69
.L75:
	ldr	r3, [fp, #-16]
	cmp	r3, #4
	bne	.L80
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-28]
	b	.L69
.L80:
	ldr	r3, [fp, #-16]
	cmp	r3, #5
	bne	.L69
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-28]
.L69:
	ldr	r3, [fp, #-28]
	ldr	r2, .L103
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	ble	.L66
	ldr	r3, [fp, #-28]
	ldr	r2, .L103
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, .L103+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	str	r3, [r2, #0]
	ldr	r1, [fp, #-28]
	ldr	r3, [fp, #-2356]
	and	r0, r3, #255
	ldr	r2, .L103+12
	mov	r3, r1, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, r0
	strb	r3, [r2, #0]
.L66:
	ldr	r3, [fp, #-2356]
	add	r3, r3, #1
	str	r3, [fp, #-2356]
.L47:
	ldr	r2, [fp, #-2356]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L48
.L53:
	ldr	r3, [fp, #-44]
	ldr	r2, .L103
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
	ldr	r3, [fp, #-2400]
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
	ldr	r3, [fp, #-2400]
	add	r3, r2, r3
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bne	.L84
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-28]
	b	.L86
.L84:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	bne	.L87
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L89
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #78
	str	r3, [fp, #-28]
	b	.L86
.L89:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #190
	str	r3, [fp, #-28]
	b	.L86
.L87:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	bne	.L86
	ldr	r3, [fp, #-24]
	cmp	r3, #18
	bgt	.L93
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	add	r3, r3, #79
	str	r3, [fp, #-28]
	b	.L86
.L93:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #1
	sub	r3, r3, #189
	str	r3, [fp, #-28]
.L86:
	ldr	r3, [fp, #-28]
	ldr	r2, .L103
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	ble	.L30
	ldr	r3, [fp, #-28]
	ldr	r2, .L103
	mov	r3, r3, asl #2
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, .L103+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, .L103+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, .L103+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #1
	strb	r3, [r2, #1]
.L30:
.L102:
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L31
.L38:
	mov	r3, #26
	str	r3, [fp, #-2376]
	mov	r3, #45
	str	r3, [fp, #-2360]
	ldr	r3, [fp, #-2412]
	ldr	r2, .L103+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-2372]
	ldr	r3, .L103+20
	str	r3, [fp, #-2368]
	ldr	r3, .L103+24
	str	r3, [fp, #-2364]
	sub	r2, fp, #2352
	sub	r2, r2, #12
	sub	r2, r2, #12
	sub	ip, fp, #2384
	sub	ip, ip, #12
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #16]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #0
	str	r3, [fp, #-2356]
	ldr	r3, [fp, #-2412]
	str	r3, [fp, #-40]
	b	.L96
.L97:
	ldr	r1, [fp, #-2356]
	ldr	r2, [fp, #-2404]
	ldr	r3, [fp, #-40]
	str	r3, [r2, r1, asl #3]
	ldr	r0, [fp, #-2356]
	ldr	r3, [fp, #-40]
	ldr	r2, .L103+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldrb	ip, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-2404]
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
	ldr	r2, .L103+12
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L98
	sub	r3, fp, #2336
	sub	r3, r3, #12
	sub	r3, r3, #8
	ldr	r0, [fp, #-2400]
	ldr	r1, [fp, #-2404]
	ldr	r2, [fp, #-40]
	bl	addPathToNextSensor(PLT)
.L98:
	ldr	r3, [fp, #-40]
	ldr	r2, .L103+8
	mov	r3, r3, asl #3
	sub	r1, fp, #12
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-40]
.L96:
	ldr	r3, [fp, #-40]
	cmn	r3, #1
	bne	.L97
	ldr	r3, [fp, #-2356]
	sub	r2, r3, #1
	ldr	r3, [fp, #-2404]
	str	r2, [r3, #400]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L104:
	.align	2
.L103:
	.word	-612
	.word	99999
	.word	-1764
	.word	-1760
	.word	-2340
	.word	88888888
	.word	77777777
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
	@ args = 0, pretend = 0, frame = 7820
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #7808
	sub	sp, sp, #28
	ldr	sl, .L115
.L114:
	add	sl, pc, sl
	sub	r3, fp, #6912
	sub	r3, r3, #16
	sub	r3, r3, #28
	mov	r0, r3
	bl	init_tracka(PLT)
	ldr	r3, .L115+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, .L115+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r3, .L115+12
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L115+12
	sub	r1, fp, #16
	add	r2, r1, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, .L115+16
	mov	r3, #6
	sub	r1, fp, #16
	str	r3, [r1, r2]
	sub	r2, fp, #6976
	sub	r2, r2, #16
	sub	r2, r2, #24
	sub	ip, fp, #6912
	sub	ip, ip, #16
	sub	ip, ip, #48
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-40]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L115+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-36]
	ldr	r3, .L115+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-32]
.L106:
	sub	r2, fp, #6912
	sub	r2, r2, #16
	sub	r2, r2, #48
	sub	r3, fp, #6976
	sub	r3, r3, #16
	sub	r3, r3, #28
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, .L115+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-28]
	ldr	r3, .L115+20
	mov	r2, #8
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-24]
	ldr	r3, .L115+12
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L107
	ldr	r3, .L115+12
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #0]
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L109
.L107:
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	ldr	r3, .L115+12
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L110
.L109:
	ldr	r3, .L115+12
	sub	r2, fp, #16
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L111
	ldr	r3, .L115+12
	sub	r1, fp, #16
	add	r3, r1, r3
	ldr	r2, [r3, #4]
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L110
.L111:
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	ldr	r3, .L115+12
	sub	r1, fp, #16
	add	r3, r1, r3
	str	r2, [r3, #4]
	mov	r3, #1
	str	r3, [fp, #-20]
.L110:
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
	sub	r2, r2, #12
	add	r2, r2, r3
	ldr	r3, .L115+24
	sub	r1, fp, #16
	ldr	r3, [r1, r3]
	sub	r1, fp, #6912
	sub	r1, r1, #16
	sub	r1, r1, #28
	str	r3, [sp, #0]
	ldr	r3, [fp, #-36]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-32]
	str	r3, [sp, #8]
	ldr	r3, [fp, #-44]
	str	r3, [sp, #12]
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	bl	route(PLT)
	ldr	r3, .L115+24
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
	sub	r3, r3, #12
	add	r3, r3, r2
	mov	r1, r3
	mov	r2, #404
	bl	Reply(PLT)
	b	.L106
.L116:
	.align	2
.L115:
	.word	_GLOBAL_OFFSET_TABLE_-(.L114+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	-7012
	.word	-7000
	.word	-6960
	.word	-7004
	.size	routeFinder, .-routeFinder
	.ident	"GCC: (GNU) 4.0.2"
