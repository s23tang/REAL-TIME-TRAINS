	.file	"wtA4.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"u2g\000"
	.align	2
.LC1:
	.ascii	"driver\000"
	.text
	.align	2
	.global	Terminal
	.type	Terminal, %function
Terminal:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #164
	ldr	sl, .L247
.L246:
	add	sl, pc, sl
	ldr	r3, .L247+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-84]
	ldr	r3, .L247+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-80]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L245
.L2:
.L245:
	ldr	r0, [fp, #-84]
	mov	r1, #1
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-65]
	ldr	r3, [fp, #-72]
	cmp	r3, #60
	bne	.L3
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L3
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L2
.L3:
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L7
	mov	r3, #2
	str	r3, [fp, #-100]
	mov	r3, #0
	str	r3, [fp, #-64]
	b	.L9
.L10:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L11
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #113
	bne	.L13
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
	b	.L15
.L16:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L17
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L15:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L16
.L17:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L46
	mov	r3, #5
	str	r3, [fp, #-100]
	b	.L46
.L13:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #116
	bne	.L22
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L22
	mvn	r3, #0
	str	r3, [fp, #-60]
	mvn	r3, #0
	str	r3, [fp, #-56]
	mov	r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	b	.L25
.L26:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L27
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L29
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L29
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L29
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L33
.L29:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L34
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L34
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L34
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L34
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L34
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	add	r3, r1, r3
	sub	r3, r3, #528
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L33
.L34:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bne	.L33
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L33
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L33
	mov	r3, #80
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L33
.L27:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L25:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L26
.L33:
	ldr	r3, [fp, #-52]
	cmp	r3, #1
	bne	.L47
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L46
.L48:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L49
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L51
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L51
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L54
	ldr	r3, [fp, #-64]
	add	r2, r3, #1
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L51
.L54:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L56
.L51:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L56
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L56
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #52
	bhi	.L56
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #38
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L56
.L49:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L47:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L48
.L56:
	ldr	r3, [fp, #-52]
	cmp	r3, #1
	bne	.L63
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L46
.L64:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L65
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L63:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L64
.L65:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L67
	ldr	r3, [fp, #-60]
	cmn	r3, #1
	beq	.L67
	ldr	r3, [fp, #-56]
	cmn	r3, #1
	beq	.L67
	mov	r3, #6
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-92]
	b	.L46
.L67:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bhi	.L46
	ldr	r3, [fp, #-60]
	cmn	r3, #1
	beq	.L46
	ldr	r3, [fp, #-56]
	cmn	r3, #1
	beq	.L46
	mvn	r3, #0
	str	r3, [fp, #-48]
	b	.L75
.L76:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L77
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #66
	bne	.L79
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #82
	bne	.L79
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L82
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L82
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L85
	ldr	r3, [fp, #-64]
	add	r2, r3, #3
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L82
.L85:
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	sub	r3, r3, #18
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	str	r3, [fp, #-64]
	b	.L134
.L82:
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L88
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L88
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bhi	.L88
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L92
	ldr	r3, [fp, #-64]
	add	r2, r3, #4
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L88
.L92:
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r3, #2
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	str	r3, [fp, #-64]
	b	.L134
.L88:
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #53
	bne	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #50
	bls	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #5
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L99
	ldr	r3, [fp, #-64]
	add	r2, r3, #5
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L77
.L99:
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r3, #14
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-64]
	add	r3, r3, #5
	str	r3, [fp, #-64]
	b	.L134
.L79:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #77
	bne	.L101
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #82
	bne	.L101
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L104
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L104
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L107
	ldr	r3, [fp, #-64]
	add	r2, r3, #3
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L104
.L107:
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	sub	r3, r3, #17
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	str	r3, [fp, #-64]
	b	.L134
.L104:
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L109
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L109
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bhi	.L109
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L113
	ldr	r3, [fp, #-64]
	add	r2, r3, #4
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L109
.L113:
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r3, #3
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	str	r3, [fp, #-64]
	b	.L134
.L109:
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #53
	bne	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #50
	bls	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #5
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L120
	ldr	r3, [fp, #-64]
	add	r2, r3, #5
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L77
.L120:
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r3, #15
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-64]
	add	r3, r3, #5
	str	r3, [fp, #-64]
	b	.L134
.L101:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L77
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #69
	bhi	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L124
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L124
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L127
	ldr	r3, [fp, #-64]
	add	r2, r3, #2
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L124
.L127:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3, asl #4
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	add	r3, r1, r3
	sub	r3, r3, #1088
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	b	.L134
.L124:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L132
	ldr	r3, [fp, #-64]
	add	r2, r3, #3
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L77
.L132:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3, asl #4
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	add	r3, r1, r3
	sub	r3, r3, #1072
	sub	r3, r3, #7
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	str	r3, [fp, #-64]
	b	.L134
.L77:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L75:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L76
	b	.L134
.L135:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L136
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L134:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L135
.L136:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-48]
	cmn	r3, #1
	beq	.L46
	mov	r3, #14
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-88]
	sub	r2, fp, #100
	sub	ip, fp, #116
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	b	.L46
.L22:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L140
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #118
	bne	.L140
	mvn	r3, #0
	str	r3, [fp, #-44]
	mvn	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	b	.L143
.L248:
	.align	2
.L247:
	.word	_GLOBAL_OFFSET_TABLE_-(.L246+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
.L144:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L145
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L147
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L147
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L150
	ldr	r3, [fp, #-64]
	add	r2, r3, #1
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L147
.L150:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L152
.L147:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L153
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L153
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L153
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L153
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	add	r3, r1, r3
	sub	r3, r3, #528
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L152
.L153:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bne	.L152
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L152
	mov	r3, #80
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L152
.L145:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L143:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L144
.L152:
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	bne	.L163
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L46
.L164:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L165
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L163:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L164
.L165:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-44]
	cmn	r3, #1
	beq	.L46
	mov	r3, #9
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-96]
	b	.L46
.L140:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L170
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #119
	bne	.L170
	mvn	r3, #0
	str	r3, [fp, #-36]
	mvn	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	b	.L173
.L174:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L175
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L177
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L177
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L177
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L181
.L177:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L182
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L182
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bhi	.L182
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L182
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #38
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L181
.L182:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L181
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #53
	bne	.L181
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #50
	bls	.L181
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L181
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L181
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	add	r3, r3, #102
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L181
.L175:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L173:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L174
.L181:
	ldr	r3, [fp, #-28]
	cmp	r3, #1
	bne	.L195
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L46
.L196:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L197
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #83
	bne	.L199
	mov	r3, #33
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L201
.L199:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #67
	bne	.L201
	mov	r3, #34
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L201
.L197:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L195:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L196
.L201:
	ldr	r3, [fp, #-28]
	cmp	r3, #1
	bne	.L206
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L46
.L207:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L208
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L206:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L207
.L208:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-32]
	cmn	r3, #1
	beq	.L46
	ldr	r3, [fp, #-36]
	cmn	r3, #1
	beq	.L46
	mov	r3, #7
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-92]
	b	.L46
.L170:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L46
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L46
	mvn	r3, #0
	str	r3, [fp, #-24]
	mvn	r3, #0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	b	.L216
.L217:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L218
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L220
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L220
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L223
	ldr	r3, [fp, #-64]
	add	r2, r3, #1
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L220
.L223:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L225
.L220:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L225
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L225
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L225
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L225
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	add	r3, r1, r3
	sub	r3, r3, #528
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L225
.L218:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L216:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L217
.L225:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L233
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L46
.L234:
	ldr	r3, [fp, #-64]
	mvn	r2, #159
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L235
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L233:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L234
.L235:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	beq	.L46
	mov	r3, #12
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-96]
	b	.L46
.L11:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L9:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	bcc	.L10
.L46:
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L239
.L7:
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L240
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L2
	mov	r3, #4
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-72]
	sub	r3, r3, #1
	str	r3, [fp, #-72]
	b	.L239
.L240:
	mov	r3, #1
	str	r3, [fp, #-100]
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-72]
	mvn	r2, #159
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-65]
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L239:
	ldr	r3, [fp, #-100]
	cmp	r3, #14
	beq	.L2
	sub	r3, fp, #100
	sub	ip, fp, #116
	mov	r2, #16
	str	r2, [sp, #0]
	ldr	r0, [fp, #-76]
	mov	r1, r3
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	b	.L2
	.size	Terminal, .-Terminal
	.section	.rodata
	.align	2
.LC2:
	.ascii	"u1g\000"
	.align	2
.LC3:
	.ascii	"u1x\000"
	.text
	.align	2
	.global	Train
	.type	Train, %function
Train:
	@ args = 0, pretend = 0, frame = 52
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #56
	ldr	sl, .L259
.L258:
	add	sl, pc, sl
	ldr	r3, .L259+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, .L259+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-32]
	mov	r1, #0
	mov	r2, #133
	bl	Putc(PLT)
	ldr	r0, [fp, #-36]
	mov	r1, #0
	bl	Getc(PLT)
	ldr	r0, [fp, #-36]
	mov	r1, #0
	bl	Getc(PLT)
	ldr	r0, [fp, #-36]
	mov	r1, #0
	bl	Getc(PLT)
.L250:
	ldr	r0, [fp, #-32]
	mov	r1, #0
	mov	r2, #133
	bl	Putc(PLT)
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L251
.L252:
	ldr	r3, [fp, #-20]
	eor	r3, r3, #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L253
	ldr	r0, [fp, #-36]
	mov	r1, #0
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-22]
	b	.L255
.L253:
	ldr	r0, [fp, #-36]
	mov	r1, #0
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-21]
	mov	r3, #8
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-20]
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #1
	str	r3, [fp, #-48]
	ldrb	r3, [fp, #-22]	@ zero_extendqisi2
	str	r3, [fp, #-44]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	str	r3, [fp, #-40]
	sub	r2, fp, #52
	sub	ip, fp, #68
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
.L255:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L251:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	ble	.L252
	b	.L250
.L260:
	.align	2
.L259:
	.word	_GLOBAL_OFFSET_TABLE_-(.L258+8)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.size	Train, .-Train
	.section	.rodata
	.align	2
.LC4:
	.ascii	"clock\000"
	.text
	.align	2
	.global	Timer
	.type	Timer, %function
Timer:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #44
	ldr	sl, .L265
.L264:
	add	sl, pc, sl
	ldr	r3, .L265+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
.L262:
	ldr	r3, [fp, #-24]
	mov	r0, r3
	mov	r1, #10
	bl	Delay(PLT)
	mov	r3, #3
	str	r3, [fp, #-40]
	sub	r2, fp, #40
	sub	ip, fp, #56
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-20]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	b	.L262
.L266:
	.align	2
.L265:
	.word	_GLOBAL_OFFSET_TABLE_-(.L264+8)
	.word	.LC4(GOTOFF)
	.size	Timer, .-Timer
	.align	2
	.global	reverseTask
	.type	reverseTask, %function
reverseTask:
	@ args = 0, pretend = 0, frame = 44
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #48
	ldr	sl, .L271
.L270:
	add	sl, pc, sl
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, .L271+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
.L268:
	mov	r3, #10
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
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-56]
	mov	r0, r3
	mov	r1, r2
	bl	Delay(PLT)
	mov	r3, #11
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-40]
	sub	r2, fp, #44
	sub	ip, fp, #60
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	b	.L268
.L272:
	.align	2
.L271:
	.word	_GLOBAL_OFFSET_TABLE_-(.L270+8)
	.word	.LC4(GOTOFF)
	.size	reverseTask, .-reverseTask
	.section	.rodata
	.align	2
.LC5:
	.ascii	"u2x\000"
	.align	2
.LC6:
	.ascii	"u1x \000"
	.align	2
.LC7:
	.ascii	"\033[2J\000"
	.align	2
.LC8:
	.ascii	"\033[H\033[KTIME 00:00:0\000"
	.align	2
.LC9:
	.ascii	"\033[7;1HTimeInterval: 0\012\000"
	.align	2
.LC10:
	.ascii	"\033[3;1HSwitches\012\000"
	.align	2
.LC11:
	.ascii	"1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|153|15"
	.ascii	"4|155|156\012\000"
	.align	2
.LC12:
	.ascii	"---------------------------------------------------"
	.ascii	"---------\012\000"
	.align	2
.LC13:
	.ascii	"?|?|?|?|?|?|?|?|?|? |? |? |? |? |? |? |? |? | ? | ?"
	.ascii	" | ? | ?\000"
	.align	2
.LC14:
	.ascii	"\033[9;1HSensors:  1 = train passing, 0 = nothing\012"
	.ascii	"\000"
	.align	2
.LC15:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\012\000"
	.align	2
.LC16:
	.ascii	"A1 |A2 |A3 |A4 |A5 |A6 |A7 |A8 |A9 |A10|A11|A12|A13"
	.ascii	"|A14|A15|A16\012\000"
	.align	2
.LC17:
	.ascii	" 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 "
	.ascii	"| 0 | 0 | 0 \012\000"
	.align	2
.LC18:
	.ascii	"B1 |B2 |B3 |B4 |B5 |B6 |B7 |B8 |B9 |B10|B11|B12|B13"
	.ascii	"|B14|B15|B16\012\000"
	.align	2
.LC19:
	.ascii	"C1 |C2 |C3 |C4 |C5 |C6 |C7 |C8 |C9 |C10|C11|C12|C13"
	.ascii	"|C14|C15|C16\012\000"
	.align	2
.LC20:
	.ascii	"D1 |D2 |D3 |D4 |D5 |D6 |D7 |D8 |D9 |D10|D11|D12|D13"
	.ascii	"|D14|D15|D16\012\000"
	.align	2
.LC21:
	.ascii	"E1 |E2 |E3 |E4 |E5 |E6 |E7 |E8 |E9 |E10|E11|E12|E13"
	.ascii	"|E14|E15|E16\012\000"
	.align	2
.LC22:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\000"
	.align	2
.LC23:
	.ascii	"\033[33;1H>>\033[33;4H\000"
	.align	2
.LC24:
	.ascii	"\033[32;1H\033[K\033[32mLoading, Please Wait\012\033"
	.ascii	"[0m\033[33;4H\000"
	.align	2
.LC25:
	.ascii	"\033[32;1H\033[K\033[33;4H\000"
	.align	2
.LC26:
	.ascii	"\033[H\033[KTIME %d%d:%d%d:%d\012\000"
	.align	2
.LC27:
	.ascii	"Idle Usage: %d%%\033[33;%dH\000"
	.global	__floatsidf
	.global	__divdf3
	.global	__muldf3
	.global	__fixdfsi
	.align	2
.LC28:
	.ascii	"\033[8;1H\033[KLocation: %dmm past sensor: %s\033[3"
	.ascii	"3;%dH\000"
	.align	2
.LC29:
	.ascii	"\033[32;1H\033[K\033[31mBAD COMMAND\012\000"
	.align	2
.LC30:
	.ascii	"\033[0m\033[33;4H\033[K\000"
	.align	2
.LC31:
	.ascii	"\033[33;%dH\033[K\000"
	.align	2
.LC32:
	.ascii	"\033[32;1H\033[K\033[32mShutting down\012\000"
	.align	2
.LC33:
	.ascii	"\033[32;1H\033[K\033[32mSetting Train: %d Speed: %d"
	.ascii	"\012\000"
	.align	2
.LC34:
	.ascii	"\033[32m\033[6;%dH%c\033[0m\000"
	.align	2
.LC35:
	.ascii	"\033[32;1H\033[K\033[32mSetting Switch: %d State: %"
	.ascii	"c\012\000"
	.align	2
.LC36:
	.ascii	"\033[32m\033[%d;%dH%d\033[33;4H\033[0m\000"
	.align	2
.LC37:
	.ascii	"\033[33;%dH\000"
	.align	2
.LC38:
	.ascii	"\033[32;1H\033[K\033[31mSet Train %d's Speed First\012"
	.ascii	"\000"
	.align	2
.LC39:
	.ascii	"\033[32;1H\033[K\033[32mReversing Train %d\012\000"
	.align	2
.LC40:
	.ascii	"\033[32;1H\033[K\033[32mStop at sensor: %d\012\000"
	.align	2
.LC41:
	.ascii	"\033[32;1H\033[K\033[32mSetting Train: %d Speed: %d"
	.ascii	" Loc: %d\012\000"
	.align	2
.LC42:
	.ascii	"\033[7;1H\033[KActual: %d, Expected: %d\012\000"
	.text
	.align	2
	.global	Printer
	.type	Printer, %function
Printer:
	@ args = 0, pretend = 0, frame = 8156
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8128
	sub	sp, sp, #44
	ldr	sl, .L359
.L358:
	add	sl, pc, sl
	sub	r3, fp, #7040
	sub	r3, r3, #28
	sub	r3, r3, #4
	mov	r0, r3
	bl	init_tracka(PLT)
	ldr	r3, .L359+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-160]
	ldr	r3, .L359+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-156]
	ldr	r3, .L359+12
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-152]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+16
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+24
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+32
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+64
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+68
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+72
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+76
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+80
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, .L359+84
	ldr	r3, [sl, r3]
	str	r3, [fp, #-148]
	mov	r0, #4
	ldr	r1, [fp, #-148]
	bl	Create(PLT)
	ldr	r3, .L359+88
	ldr	r3, [sl, r3]
	str	r3, [fp, #-148]
	mov	r0, #2
	ldr	r1, [fp, #-148]
	bl	Create(PLT)
	ldr	r3, .L359+92
	ldr	r3, [sl, r3]
	str	r3, [fp, #-148]
	mov	r0, #3
	ldr	r1, [fp, #-148]
	bl	Create(PLT)
	ldr	r3, .L359+96
	ldr	r3, [sl, r3]
	str	r3, [fp, #-148]
	mov	r0, #3
	ldr	r1, [fp, #-148]
	bl	Create(PLT)
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, #96
	bl	Putc(PLT)
	ldr	r3, .L359+100
	ldr	r3, [sl, r3]
	str	r3, [fp, #-148]
	mov	r0, #2
	ldr	r1, [fp, #-148]
	bl	Create(PLT)
	mov	r3, #4
	str	r3, [fp, #-144]
	mov	r3, #0
	str	r3, [fp, #-140]
	mov	r3, #0
	str	r3, [fp, #-136]
	mov	r3, #0
	str	r3, [fp, #-132]
	mov	r3, #0
	str	r3, [fp, #-128]
	mvn	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-120]
	mov	r3, #0
	str	r3, [fp, #-116]
	b	.L274
.L275:
	ldr	r3, [fp, #-116]
	ldr	r2, .L359+200
	mov	r3, r3, asl #2
	sub	r0, fp, #28
	add	r3, r3, r0
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-116]
	ldr	r2, .L359+184
	sub	r1, fp, #28
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-116]
	ldr	r2, .L359+196
	mov	r3, r3, asl #2
	sub	r4, fp, #28
	add	r3, r3, r4
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-116]
	ldr	r2, .L359+104
	mov	r3, r3, asl #2
	sub	ip, fp, #28
	add	r3, r3, ip
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-116]
	add	r3, r3, #1
	str	r3, [fp, #-116]
.L274:
	ldr	r3, [fp, #-116]
	cmp	r3, #79
	ble	.L275
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+108
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-160]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+112
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mvn	r3, #0
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-108]
	b	.L357
.L277:
.L357:
	sub	r2, fp, #7040
	sub	r2, r2, #28
	sub	r2, r2, #24
	sub	r3, fp, #7040
	sub	r3, r3, #28
	sub	r3, r3, #8
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, .L359+220
	sub	lr, fp, #28
	ldr	r3, [lr, r3]
	sub	r3, r3, #1
	cmp	r3, #18
	addls	pc, pc, r3, asl #2
	b	.L278
	.p2align 2
.L295:
	b	.L279
	b	.L280
	b	.L281
	b	.L282
	b	.L283
	b	.L284
	b	.L285
	b	.L286
	b	.L287
	b	.L278
	b	.L288
	b	.L289
	b	.L290
	b	.L291
	b	.L278
	b	.L278
	b	.L292
	b	.L293
	b	.L294
.L281:
	ldr	r3, [fp, #-120]
	add	r3, r3, #1
	str	r3, [fp, #-120]
	bl	IdleTime(PLT)
	mov	r3, r0
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-132]
	add	r1, r3, #1
	ldr	r3, .L359+116
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r3, r3, r1
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-132]
	cmp	r3, #0
	bne	.L296
	ldr	r3, [fp, #-136]
	add	r1, r3, #1
	ldr	r3, .L359+120
	smull	r2, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #5
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	rsb	r3, r3, r1
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-136]
	cmp	r3, #0
	bne	.L296
	ldr	r3, [fp, #-140]
	add	r3, r3, #1
	str	r3, [fp, #-140]
.L296:
	ldr	r1, [fp, #-140]
	ldr	r3, .L359+116
	smull	r4, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	ldr	r1, [fp, #-140]
	ldr	r3, .L359+116
	smull	lr, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r4, r3, r2
	sub	r0, fp, #4096
	str	r4, [r0, #-4088]
	sub	lr, fp, #4096
	ldr	r3, [lr, #-4088]
	mov	r3, r3, asl #2
	sub	r0, fp, #4096
	ldr	r0, [r0, #-4088]
	add	r3, r3, r0
	mov	r3, r3, asl #1
	rsb	r4, r3, r1
	sub	r2, fp, #4096
	str	r4, [r2, #-4088]
	ldr	r1, [fp, #-136]
	ldr	r3, .L359+116
	smull	lr, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r0, r3, r2
	ldr	r1, [fp, #-136]
	ldr	r3, .L359+116
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	lr, r3, r2
	sub	r4, fp, #4096
	str	lr, [r4, #-4084]
	sub	r2, fp, #4096
	ldr	r3, [r2, #-4084]
	mov	r3, r3, asl #2
	sub	r4, fp, #4096
	ldr	r4, [r4, #-4084]
	add	r3, r3, r4
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	sub	lr, fp, #4096
	str	r2, [lr, #-4084]
	sub	r3, fp, #4096
	ldr	r3, [r3, #-4088]
	str	r3, [sp, #0]
	str	r0, [sp, #4]
	sub	r4, fp, #4096
	ldr	r4, [r4, #-4084]
	str	r4, [sp, #8]
	ldr	r3, [fp, #-132]
	str	r3, [sp, #12]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+124
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r3, [fp, #-144]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+128
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-104]
	bl	myprintf(PLT)
	ldr	r3, [fp, #-124]
	cmn	r3, #1
	beq	.L278
	ldr	r0, [fp, #-160]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-124]
	add	r3, r3, #8
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-100]
	rsb	r3, r2, r3
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
	mov	r5, r3
	mov	r6, r4
	ldr	r3, [fp, #-124]
	add	r3, r3, #4
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__floatsidf(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r5
	mov	r1, r6
	mov	r2, r3
	mov	r3, r4
	bl	__muldf3(PLT)
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__fixdfsi(PLT)
	mov	r3, r0
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-124]
	ldr	r2, [r3, #0]
	ldr	r1, .L359+132
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	sub	ip, fp, #28
	add	r3, r3, ip
	add	r3, r3, r1
	ldr	r3, [r3, #0]
	str	r3, [sp, #0]
	ldr	r3, [fp, #-144]
	str	r3, [sp, #4]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+136
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-96]
	bl	myprintf(PLT)
	b	.L278
.L294:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	lr, fp, #28
	add	r3, lr, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-124]
	b	.L278
.L279:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r0, fp, #28
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	ldr	r0, [fp, #-156]
	mov	r1, #1
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-144]
	add	r3, r3, #1
	str	r3, [fp, #-144]
	b	.L278
.L280:
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+140
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-144]
	b	.L278
.L282:
	ldr	r3, [fp, #-144]
	sub	r3, r3, #1
	str	r3, [fp, #-144]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+144
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-144]
	bl	myprintf(PLT)
	b	.L278
.L283:
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, #97
	bl	Putc(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+148
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-160]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	mov	r3, #1
	str	r3, [fp, #-108]
	b	.L278
.L284:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r1, fp, #28
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, .L359+220
	mov	r2, #8
	sub	r4, fp, #28
	add	r3, r4, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, .L359+220
	mov	r2, #8
	sub	ip, fp, #28
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	ip, [r3, #0]
	ldr	r3, .L359+220
	mov	r2, #4
	sub	lr, fp, #28
	add	r3, lr, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+152
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, .L359+220
	mov	r2, #8
	sub	r0, fp, #28
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-92]
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r1, fp, #28
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-92]
	sub	r3, r3, #1
	ldr	r2, .L359+196
	mov	r3, r3, asl #2
	sub	r4, fp, #28
	add	r3, r3, r4
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L301
	ldr	r3, .L359+156
	ldr	r3, [sl, r3]
	str	r3, [fp, #-148]
	mov	r0, #2
	ldr	r1, [fp, #-148]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-92]
	sub	r3, r3, #1
	ldr	r2, .L359+196
	mov	r3, r3, asl #2
	sub	ip, fp, #28
	add	r3, r3, ip
	add	r2, r3, r2
	ldr	r3, [fp, #-84]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	sub	r3, r3, #1
	ldr	r2, .L359+200
	mov	r3, r3, asl #2
	sub	lr, fp, #28
	add	r3, r3, lr
	add	r2, r3, r2
	ldr	r3, [fp, #-88]
	str	r3, [r2, #0]
	b	.L303
.L301:
	ldr	r3, [fp, #-92]
	sub	r3, r3, #1
	ldr	r2, .L359+200
	mov	r3, r3, asl #2
	sub	r0, fp, #28
	add	r3, r3, r0
	add	r2, r3, r2
	ldr	r3, [fp, #-88]
	str	r3, [r2, #0]
.L303:
	mov	r3, #4
	str	r3, [fp, #-144]
	b	.L278
.L285:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r1, fp, #28
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, .L359+220
	mov	r2, #8
	sub	r4, fp, #28
	add	r3, r4, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, .L359+220
	mov	r2, #4
	sub	ip, fp, #28
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #33
	bne	.L304
	mov	r0, #83
	sub	lr, fp, #4096
	str	r0, [lr, #-4080]
	b	.L306
.L304:
	mov	r2, #67
	sub	r1, fp, #4096
	str	r2, [r1, #-4080]
.L306:
	sub	r4, fp, #7936
	ldrb	r3, [r4, #-240]
	strb	r3, [fp, #-77]
	ldr	r3, .L359+220
	mov	r2, #8
	sub	ip, fp, #28
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-76]
	cmp	r3, #0
	ble	.L307
	ldr	r3, [fp, #-76]
	cmp	r3, #10
	bgt	.L307
	ldr	r3, [fp, #-76]
	mov	r3, r3, asl #1
	sub	r3, r3, #1
	str	r3, [fp, #-76]
	b	.L310
.L307:
	ldr	r3, [fp, #-76]
	cmp	r3, #10
	ble	.L311
	ldr	r3, [fp, #-76]
	cmp	r3, #18
	bgt	.L311
	ldr	r1, [fp, #-76]
	ldr	r3, .L359+160
	smull	lr, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	r4, r3, r2
	sub	r0, fp, #4096
	str	r4, [r0, #-4076]
	sub	ip, fp, #4096
	ldr	r3, [ip, #-4076]
	mov	r3, r3, asl #2
	sub	lr, fp, #4096
	ldr	lr, [lr, #-4076]
	add	r3, r3, lr
	mov	r3, r3, asl #1
	sub	r0, fp, #4096
	ldr	r0, [r0, #-4076]
	add	r3, r3, r0
	rsb	r4, r3, r1
	sub	r2, fp, #4096
	str	r4, [r2, #-4076]
	sub	ip, fp, #4096
	ldr	r3, [ip, #-4076]
	mov	r3, r3, asl #1
	sub	lr, fp, #4096
	ldr	lr, [lr, #-4076]
	add	r3, r3, lr
	add	r3, r3, #22
	str	r3, [fp, #-76]
	b	.L310
.L311:
	ldr	r1, [fp, #-76]
	ldr	r3, .L359+164
	smull	r0, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #7
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	sub	r4, fp, #4096
	str	ip, [r4, #-4072]
	sub	lr, fp, #4096
	ldr	r3, [lr, #-4072]
	mov	r3, r3, asl #3
	sub	r0, fp, #4096
	ldr	r0, [r0, #-4072]
	add	r3, r3, r0
	mov	r2, r3, asl #4
	add	r3, r3, r2
	rsb	r4, r3, r1
	sub	r2, fp, #4096
	str	r4, [r2, #-4072]
	sub	ip, fp, #4096
	ldr	ip, [ip, #-4072]
	mov	r3, ip, asl #2
	add	r3, r3, #47
	str	r3, [fp, #-76]
.L310:
	ldrb	r3, [fp, #-77]	@ zero_extendqisi2
	str	r3, [sp, #0]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+168
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-76]
	bl	myprintf(PLT)
	ldr	r3, .L359+220
	mov	r2, #8
	sub	lr, fp, #28
	add	r3, lr, r3
	add	r3, r3, r2
	ldr	ip, [r3, #0]
	ldrb	r3, [fp, #-77]	@ zero_extendqisi2
	str	r3, [sp, #0]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+172
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-144]
	b	.L278
.L286:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r0, fp, #28
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r1, r3, #4
	ldr	r3, .L359+116
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r3, r1
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	bne	.L314
	mov	r3, #5
	str	r3, [fp, #-72]
.L314:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r4, fp, #28
	add	r3, r4, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	add	r1, r3, #3
	ldr	r3, .L359+116
	smull	ip, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r3, r1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-68]
	cmp	r3, #0
	bne	.L316
	mov	r3, #5
	str	r3, [fp, #-68]
.L316:
	mvn	r3, #127
	strb	r3, [fp, #-57]
	mov	r3, #1
	str	r3, [fp, #-48]
	b	.L318
.L319:
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #2
	sub	r3, r3, #2
	str	r3, [fp, #-52]
	mov	r3, #0
	strb	r3, [fp, #-41]
	ldr	r3, [fp, #-48]
	cmp	r3, #8
	bgt	.L320
	ldr	r3, [fp, #-72]
	cmp	r3, #2
	bne	.L322
	mov	r3, #29
	str	r3, [fp, #-64]
	b	.L324
.L322:
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	bne	.L325
	mov	r3, #25
	str	r3, [fp, #-64]
	b	.L324
.L325:
	ldr	r3, [fp, #-72]
	mov	r3, r3, asl #2
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L324:
	ldr	r3, .L359+220
	mov	r2, #12
	sub	lr, fp, #28
	add	r3, lr, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldrb	r3, [fp, #-57]	@ zero_extendqisi2
	and	r2, r2, r3
	ldrb	r3, [fp, #-57]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L329
	mov	r3, #1
	strb	r3, [fp, #-41]
	b	.L329
.L320:
	ldr	r3, [fp, #-68]
	cmp	r3, #2
	bne	.L330
	mov	r3, #29
	str	r3, [fp, #-64]
	b	.L332
.L330:
	ldr	r3, [fp, #-68]
	cmp	r3, #1
	bne	.L333
	mov	r3, #25
	str	r3, [fp, #-64]
	b	.L332
.L360:
	.align	2
.L359:
	.word	_GLOBAL_OFFSET_TABLE_-(.L358+8)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	.LC6(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	.LC8(GOTOFF)
	.word	.LC9(GOTOFF)
	.word	.LC10(GOTOFF)
	.word	.LC11(GOTOFF)
	.word	.LC12(GOTOFF)
	.word	.LC13(GOTOFF)
	.word	.LC14(GOTOFF)
	.word	.LC15(GOTOFF)
	.word	.LC16(GOTOFF)
	.word	.LC17(GOTOFF)
	.word	.LC18(GOTOFF)
	.word	.LC19(GOTOFF)
	.word	.LC20(GOTOFF)
	.word	.LC21(GOTOFF)
	.word	.LC22(GOTOFF)
	.word	.LC23(GOTOFF)
	.word	Terminal(GOT)
	.word	Timer(GOT)
	.word	routeFinder(GOT)
	.word	trainDriver(GOT)
	.word	Train(GOT)
	.word	-8120
	.word	.LC24(GOTOFF)
	.word	.LC25(GOTOFF)
	.word	1717986919
	.word	-2004318071
	.word	.LC26(GOTOFF)
	.word	.LC27(GOTOFF)
	.word	-7044
	.word	.LC28(GOTOFF)
	.word	.LC29(GOTOFF)
	.word	.LC31(GOTOFF)
	.word	.LC32(GOTOFF)
	.word	.LC33(GOTOFF)
	.word	reverseTask(GOT)
	.word	780903145
	.word	-701792041
	.word	.LC34(GOTOFF)
	.word	.LC35(GOTOFF)
	.word	.LC36(GOTOFF)
	.word	.LC37(GOTOFF)
	.word	-7800
	.word	.LC38(GOTOFF)
	.word	.LC39(GOTOFF)
	.word	-7400
	.word	-7720
	.word	.LC40(GOTOFF)
	.word	.LC41(GOTOFF)
	.word	.LC30(GOTOFF)
	.word	.LC42(GOTOFF)
	.word	-7064
	.word	-7080
	.word	-7048
.L333:
	ldr	r3, [fp, #-68]
	mov	r3, r3, asl #2
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L332:
	ldr	r3, .L359+220
	mov	r2, #8
	sub	r0, fp, #28
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	ldrb	r3, [fp, #-57]	@ zero_extendqisi2
	and	r2, r2, r3
	ldrb	r3, [fp, #-57]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L329
	mov	r3, #1
	strb	r3, [fp, #-41]
.L329:
	ldr	r3, [fp, #-64]
	sub	r3, r3, #1
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	mov	r3, r3, asr #2
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	sub	r3, r3, #49
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-112]
	cmn	r3, #1
	beq	.L336
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bne	.L336
	ldrb	r3, [fp, #-41]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L336
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, #0
	bl	Putc(PLT)
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, #50
	bl	Putc(PLT)
.L336:
	ldr	r3, [fp, #-56]
	ldr	r2, .L359+184
	sub	r1, fp, #28
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldrb	r3, [fp, #-41]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L340
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	beq	.L342
	ldrb	r3, [fp, #-41]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L342
	ldr	r2, .L359+224
	mov	r3, #0
	sub	r4, fp, #28
	str	r3, [r4, r2]
	ldr	r3, .L359+224
	mov	r2, #4
	sub	ip, fp, #28
	add	r3, ip, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-56]
	str	r3, [r2, #0]
	sub	r2, fp, #7040
	sub	r2, r2, #28
	sub	r2, r2, #40
	sub	ip, fp, #8128
	sub	ip, ip, #28
	sub	ip, ip, #8
	mov	r3, #16
	str	r3, [sp, #0]
	ldr	r0, [fp, #-128]
	mov	r1, r2
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
.L342:
	ldrb	r2, [fp, #-41]	@ zero_extendqisi2
	ldr	r3, [fp, #-52]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+176
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+180
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-144]
	bl	myprintf(PLT)
	ldr	r3, [fp, #-56]
	ldr	r2, .L359+184
	sub	lr, fp, #28
	add	r3, lr, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-41]
	strb	r3, [r2, #0]
.L340:
	ldr	r3, [fp, #-48]
	cmp	r3, #8
	bne	.L345
	mvn	r3, #127
	strb	r3, [fp, #-57]
	b	.L347
.L345:
	ldrb	r3, [fp, #-57]	@ zero_extendqisi2
	mov	r3, r3, lsr #1
	strb	r3, [fp, #-57]
.L347:
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L318:
	ldr	r3, [fp, #-48]
	cmp	r3, #16
	ble	.L319
	b	.L278
.L287:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r0, fp, #28
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	ldr	r2, .L359+196
	mov	r3, r3, asl #2
	sub	r1, fp, #28
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L349
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+188
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-40]
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	b	.L351
.L349:
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, #0
	bl	Putc(PLT)
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r4, fp, #28
	add	r3, r4, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, .L359+220
	mov	r2, #4
	sub	ip, fp, #28
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	ip, [r3, #0]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+192
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r2, .L359+224
	mov	r3, #0
	sub	lr, fp, #28
	str	r3, [lr, r2]
	ldr	r3, .L359+224
	mov	r2, #4
	sub	r0, fp, #28
	add	r3, r0, r3
	add	r2, r3, r2
	mov	r3, #400
	str	r3, [r2, #0]
	ldr	r3, .L359+224
	mov	r2, #8
	sub	r1, fp, #28
	add	r3, r1, r3
	add	r2, r3, r2
	ldr	r3, [fp, #-40]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	ldr	r2, .L359+196
	mov	r3, r3, asl #2
	sub	r4, fp, #28
	add	r3, r3, r4
	add	r3, r3, r2
	ldr	r2, [r3, #0]
	sub	r3, fp, #7040
	sub	r3, r3, #28
	sub	r3, r3, #40
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
.L351:
	mov	r3, #4
	str	r3, [fp, #-144]
	b	.L278
.L288:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	ip, fp, #28
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	ldr	r2, .L359+200
	mov	r3, r3, asl #2
	sub	lr, fp, #28
	add	r3, r3, lr
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, #15
	bl	Putc(PLT)
	ldr	r3, [fp, #-36]
	and	r3, r3, #255
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-32]
	and	r3, r3, #255
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-36]
	and	r3, r3, #255
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	b	.L278
.L289:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r0, fp, #28
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-112]
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r1, fp, #28
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	ip, [r3, #0]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+204
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-144]
	b	.L278
.L291:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r4, fp, #28
	add	r3, r4, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, .L359+220
	mov	r2, #8
	sub	ip, fp, #28
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r3, r3, #255
	ldr	r0, [fp, #-152]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, .L359+220
	mov	r2, #8
	sub	lr, fp, #28
	add	r3, lr, r3
	add	r3, r3, r2
	ldr	ip, [r3, #0]
	ldr	r3, .L359+220
	mov	r2, #4
	sub	r0, fp, #28
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L359+220
	mov	r2, #12
	sub	r4, fp, #28
	add	r3, r4, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r1, [sp, #0]
	str	r3, [sp, #4]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+208
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-144]
	b	.L278
.L290:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	ip, fp, #28
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-128]
	b	.L278
.L292:
	mov	r3, #0
	str	r3, [fp, #-128]
	mvn	r3, #0
	str	r3, [fp, #-124]
	b	.L278
.L293:
	ldr	r3, .L359+220
	mov	r2, #4
	sub	lr, fp, #28
	add	r3, lr, r3
	add	r3, r3, r2
	ldr	ip, [r3, #0]
	ldr	r3, .L359+220
	mov	r2, #8
	sub	r0, fp, #28
	add	r3, r0, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-156]
	mov	r1, #1
	ldr	r3, .L359+216
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
.L278:
	ldr	r3, [fp, #-108]
	cmp	r3, #0
	bne	.L352
	ldr	r3, .L359+220
	sub	r1, fp, #28
	ldr	r3, [r1, r3]
	cmp	r3, #10
	beq	.L277
	ldr	r2, .L359+224
	mov	r3, #0
	sub	r4, fp, #28
	str	r3, [r4, r2]
	ldr	r3, .L359+228
	sub	ip, fp, #28
	ldr	r2, [ip, r3]
	sub	r3, fp, #7040
	sub	r3, r3, #28
	sub	r3, r3, #40
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Reply(PLT)
	b	.L277
.L352:
	bl	Quit(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, sl, fp, sp, pc}
	.size	Printer, .-Printer
	.align	2
	.global	T2
	.type	T2, %function
T2:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	mov	r0, #1
	bl	bwgetc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-13]
	ldmfd	sp, {r3, fp, sp, pc}
	.size	T2, .-T2
	.section	.rodata
	.align	2
.LC43:
	.ascii	"MyTid: %d, MyParentTid: %d\012\015\000"
	.text
	.align	2
	.global	theOtherTask
	.type	theOtherTask, %function
theOtherTask:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	ldr	sl, .L367
.L366:
	add	sl, pc, sl
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L367+4
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Pass(PLT)
	mov	r0, #1
	ldr	r3, .L367+4
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L368:
	.align	2
.L367:
	.word	_GLOBAL_OFFSET_TABLE_-(.L366+8)
	.word	.LC43(GOTOFF)
	.size	theOtherTask, .-theOtherTask
	.section	.rodata
	.align	2
.LC44:
	.ascii	"Time: %d\012\015\000"
	.text
	.align	2
	.global	firstUserTask
	.type	firstUserTask, %function
firstUserTask:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	ldr	sl, .L373
.L372:
	add	sl, pc, sl
	ldr	r3, .L373+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-32]
	mov	r0, #0
	ldr	r1, [fp, #-32]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, .L373+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-32]
	mov	r0, #1
	ldr	r1, [fp, #-32]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, .L373+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-32]
	mov	r0, #9
	ldr	r1, [fp, #-32]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
.L370:
	ldr	r0, [fp, #-24]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L373+16
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L370
.L374:
	.align	2
.L373:
	.word	_GLOBAL_OFFSET_TABLE_-(.L372+8)
	.word	nameServer(GOT)
	.word	clockServer(GOT)
	.word	T2(GOT)
	.word	.LC44(GOTOFF)
	.size	firstUserTask, .-firstUserTask
	.align	2
	.global	getNextRequest
	.type	getNextRequest, %function
getNextRequest:
	@ args = 0, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	ldr	sl, .L380
.L379:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L380+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L380+8
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #56
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	stmfd sp!, {r4-r9, sl, fp, ip}
	ldr r1, [r0, #0]
	ldr r2, [r0, #4]
	ldr r3, [r0, #8]
	ldr r4, [r0, #12]
	stmfd sp!, {r2-r4}
	msr CPSR, #0xdf
	mov sp, r1
	ldmfd sp!, {r0-r9, sl, fp, ip}
	msr CPSR, #0xd3
	ldmfd sp!, {r0}
	msr SPSR, r0
	ldmfd sp!, {r0, lr}
	movs pc, lr
.L377:
	stmfd sp!, {r0, lr}
	mov r0, sp
	add sp, sp, #8
	msr CPSR, #0xd3
	ldmfd r0, {r0, lr}
	sub lr, lr, #4
	msr CPSR, #0xdf
	stmfd sp!, {r0-r9, sl, fp, ip}
	mov r0, sp
	
	msr CPSR, #0xd3
	ldmfd sp!, {r4-r9, sl, fp, ip}
	ldr r2, [fp, #-24]
	mrs r1, SPSR
	str r0, [r2, #0]
	str r1, [r2, #4]
	ldmfd r0, {r1}
	str r1, [r2, #8]
	str lr, [r2, #12]
	
	ldr r3, [fp, #-28]
	mov r1, #0
	str r1, [r3, #20]
	b endCS
.L376:
	msr CPSR, #0xdf
	stmfd sp!, {r0-r9, sl, fp, ip}
	mov r0, sp
	ldr r1, [fp, #4]
	msr CPSR, #0xd3
	ldmfd sp!, {r4-r9, sl, fp, ip}
	ldr r2, [fp, #-24]
	ldr r3, [fp, #-28]
	str r1, [r3, #16]
	mrs r1, SPSR
	str r0, [r2, #0]
	str r1, [r2, #4]
	str lr, [r2, #12]
	ldmfd r0!, {r1, r2}
	str r1, [r3, #0]
	str r2, [r3, #4]
	ldmfd r0!, {r1-r2}
	str r1, [r3, #8]
	str r2, [r3, #12]
	ldr r1, [lr, #-4]
	bic r1, r1, #0xFF000000
	str r1, [r3, #20]
	endCS:
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L381:
	.align	2
.L380:
	.word	_GLOBAL_OFFSET_TABLE_-(.L379+8)
	.word	.L376(GOTOFF)
	.word	.L377(GOTOFF)
	.size	getNextRequest, .-getNextRequest
	.align	2
	.global	copyMsg
	.type	copyMsg, %function
copyMsg:
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
	b	.L383
.L384:
	ldr	r3, [fp, #-16]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r1, r2, r3
	ldr	r3, [fp, #-16]
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	strb	r3, [r1, #0]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L383:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L384
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	copyMsg, .-copyMsg
	.align	2
	.global	getStackSize
	.type	getStackSize, %function
getStackSize:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	ldr	r3, .L389
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	and	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	rsb	r3, r3, r2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L390:
	.align	2
.L389:
	.word	1104285
	.size	getStackSize, .-getStackSize
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #24
	ldr	sl, .L406
.L405:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L392
.L393:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L392:
	ldr	r3, [fp, #-24]
	cmp	r3, #29
	ble	.L393
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L395
.L396:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L395:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	ble	.L396
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L406+4
	str	r3, [r2, #4]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, .L406+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #12]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	str	r3, [r2, #20]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	str	r3, [r2, #24]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #28]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #60]
	ldr	r2, [fp, #-28]
	mov	r3, #2
	str	r3, [r2, #16]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	mov	r3, #12
	str	r3, [fp, #-24]
	b	.L398
.L399:
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L398:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L399
	ldr	r3, [fp, #-32]
	add	r2, r3, #16
	ldr	r3, [fp, #-28]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r2, r3, #16
	ldr	r3, [fp, #-28]
	str	r3, [r2, #4]
	ldr	r2, [fp, #-36]
	mov	r3, #1
	str	r3, [r2, #24]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-28]
	str	r3, [r2, #32]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #36]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L401
.L402:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #60]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #64]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L401:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	ble	.L402
	bl	setTrainConnectionn(PLT)
	mrs r0, CPSR
	bic r0, r0, #0x1F
	orr r0, r0, #0x12
	msr CPSR, r0
	ldr r0, =0x44FA4
	mov sp,r0
	.ltorg
	mrs r0, CPSR
bic r0, r0, #0x1F
	orr r0, r0, #0x13
	msr CPSR, r0
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L407:
	.align	2
.L406:
	.word	_GLOBAL_OFFSET_TABLE_-(.L405+8)
	.word	1610612752
	.word	firstUserTask(GOT)
	.size	initialize, .-initialize
	.align	2
	.global	schedule
	.type	schedule, %function
schedule:
	@ args = 0, pretend = 0, frame = 28
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L409
.L410:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bne	.L411
	ldr	r3, .L418
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
.L411:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L413
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #28]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-40]
	b	.L415
.L413:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L409:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L410
	mov	r3, #0
	str	r3, [fp, #-40]
.L415:
	ldr	r3, [fp, #-40]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L419:
	.align	2
.L418:
	.word	-2139029408
	.size	schedule, .-schedule
	.align	2
	.global	rescheduleActive
	.type	rescheduleActive, %function
rescheduleActive:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #9
	bne	.L421
	ldr	r3, .L426
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-44]
	str	r2, [r3, #0]
	ldr	r3, [fp, #4]
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-44]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #0]
	rsb	r3, r3, r2
	add	r2, r1, r3
	ldr	r3, [fp, #4]
	str	r2, [r3, #0]
.L421:
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	beq	.L425
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #60]
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #60]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #4]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #60]
.L425:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L427:
	.align	2
.L426:
	.word	-2139029408
	.size	rescheduleActive, .-rescheduleActive
	.align	2
	.global	rescheduleBlock
	.type	rescheduleBlock, %function
rescheduleBlock:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L429
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L432
.L429:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #60]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L432:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	rescheduleBlock, .-rescheduleBlock
	.align	2
	.global	blockActive
	.type	blockActive, %function
blockActive:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	bne	.L434
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L434:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #60]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #60]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	blockActive, .-blockActive
	.align	2
	.global	closeActive
	.type	closeActive, %function
closeActive:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	beq	.L438
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #60]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L440
.L438:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L440:
	ldr	r2, [fp, #-16]
	mov	r3, #6
	str	r3, [r2, #20]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	closeActive, .-closeActive
	.align	2
	.global	handle
	.type	handle, %function
handle:
	@ args = 20, pretend = 0, frame = 272
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #276
	str	r0, [fp, #-252]
	str	r1, [fp, #-256]
	str	r2, [fp, #-260]
	str	r3, [fp, #-264]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #20]
	cmp	r3, #11
	addls	pc, pc, r3, asl #2
	b	.L508
	.p2align 2
.L456:
	b	.L444
	b	.L445
	b	.L446
	b	.L447
	b	.L448
	b	.L449
	b	.L450
	b	.L451
	b	.L452
	b	.L453
	b	.L454
	b	.L455
.L444:
	ldr	r3, .L509
	ldr	r3, [r3, #0]
	str	r3, [fp, #-248]
	ldr	r3, [fp, #-248]
	mov	r3, r3, lsr #19
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L457
	ldr	r3, .L509+4
	str	r3, [fp, #-244]
	ldr	r2, [fp, #-244]
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	ldr	r3, [fp, #-264]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L459
	ldr	r3, [fp, #-264]
	ldr	r1, [r3, #60]
	ldr	r3, [fp, #-264]
	mov	r2, #4
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-264]
	ldr	r3, [r3, #60]
	add	r1, r3, #1
	ldr	r3, .L509+48
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-300]
	ldr	r3, [fp, #-300]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-300]
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-300]
	ldr	r3, [fp, #-264]
	ldr	r2, [fp, #-300]
	str	r2, [r3, #60]
	ldr	r3, [fp, #-264]
	ldr	r3, [r3, #64]
	add	r2, r3, #1
	ldr	r3, [fp, #-264]
	str	r2, [r3, #64]
	b	.L461
.L459:
	ldr	r3, [fp, #-264]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-232]
	ldr	r2, [fp, #-264]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-232]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-232]
	ldr	r3, [r3, #16]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-232]
	bl	rescheduleBlock(PLT)
.L461:
	ldr	r3, .L509+8
	str	r3, [fp, #-240]
	ldr	r2, [fp, #-240]
	ldr	r3, .L509+12
	str	r3, [r2, #0]
	ldr	r3, .L509+16
	str	r3, [fp, #-236]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #0]
	orr	r2, r3, #64
	ldr	r3, [fp, #-236]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-236]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #0]
	orr	r2, r3, #128
	ldr	r3, [fp, #-236]
	str	r2, [r3, #0]
	b	.L508
.L457:
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	ldr	r3, .L509+20
	ldr	r3, [r3, #0]
	str	r3, [fp, #-228]
	ldr	r3, .L509+24
	ldr	r3, [r3, #0]
	str	r3, [fp, #-224]
	ldr	r3, [fp, #-228]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L463
	ldr	r3, .L509+28
	str	r3, [fp, #-220]
	ldr	r3, [fp, #-264]
	add	r3, r3, #136
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L465
	ldr	r3, [fp, #-264]
	add	ip, r3, #136
	ldr	r3, [fp, #-264]
	add	r3, r3, #136
	ldr	r1, [r3, #60]
	ldr	r3, [fp, #-220]
	ldr	r3, [r3, #0]
	and	r0, r3, #255
	mov	r2, #4
	add	r3, r1, ip
	add	r2, r3, r2
	mov	r3, r0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-264]
	add	r0, r3, #136
	ldr	r3, [fp, #-264]
	add	r3, r3, #136
	ldr	r3, [r3, #60]
	add	r1, r3, #1
	ldr	r3, .L509+48
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-296]
	ldr	r3, [fp, #-296]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-296]
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-296]
	ldr	r3, [fp, #-296]
	str	r3, [r0, #60]
	ldr	r3, [fp, #-264]
	add	r2, r3, #136
	ldr	r3, [r2, #64]
	add	r3, r3, #1
	str	r3, [r2, #64]
	b	.L508
.L465:
	ldr	r3, [fp, #-264]
	add	r3, r3, #136
	ldr	r3, [r3, #0]
	str	r3, [fp, #-216]
	ldr	r3, [fp, #-264]
	add	r2, r3, #136
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-220]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-216]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-216]
	ldr	r3, [r3, #16]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-216]
	bl	rescheduleBlock(PLT)
	b	.L508
.L463:
	ldr	r3, [fp, #-228]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L468
	ldr	r3, .L509+52
	str	r3, [fp, #-212]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #0]
	bic	r2, r3, #32
	ldr	r3, [fp, #-212]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-264]
	add	r3, r3, #68
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L470
	ldr	r3, [fp, #-264]
	add	r3, r3, #68
	ldr	r3, [r3, #0]
	str	r3, [fp, #-208]
	ldr	r3, [fp, #-264]
	add	r2, r3, #68
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-208]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #16]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	rescheduleBlock(PLT)
	b	.L508
.L470:
	ldr	r3, [fp, #-264]
	add	r1, r3, #68
	ldr	r3, [fp, #-264]
	add	r3, r3, #68
	ldr	r3, [r3, #60]
	mov	r2, #4
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-264]
	add	r0, r3, #68
	ldr	r3, [fp, #-264]
	add	r3, r3, #68
	ldr	r3, [r3, #60]
	add	r1, r3, #1
	ldr	r3, .L509+48
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-292]
	ldr	r3, [fp, #-292]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-292]
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-292]
	ldr	r3, [fp, #-292]
	str	r3, [r0, #60]
	ldr	r3, [fp, #-264]
	add	r2, r3, #68
	ldr	r3, [r2, #64]
	add	r3, r3, #1
	str	r3, [r2, #64]
	b	.L508
.L468:
	ldr	r3, [fp, #-228]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L473
	ldr	r2, .L509+20
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-264]
	add	r3, r3, #340
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L475
	ldr	r3, [fp, #-264]
	add	r1, r3, #340
	ldr	r3, [fp, #-264]
	add	r3, r3, #340
	ldr	r3, [r3, #60]
	mov	r2, #4
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-264]
	add	r0, r3, #340
	ldr	r3, [fp, #-264]
	add	r3, r3, #340
	ldr	r3, [r3, #60]
	add	r1, r3, #1
	ldr	r3, .L509+48
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-288]
	ldr	r3, [fp, #-288]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-288]
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-288]
	ldr	r3, [fp, #-288]
	str	r3, [r0, #60]
	ldr	r3, [fp, #-264]
	add	r2, r3, #340
	ldr	r3, [r2, #64]
	add	r3, r3, #1
	str	r3, [r2, #64]
	b	.L508
.L475:
	ldr	r3, [fp, #-264]
	add	r3, r3, #340
	ldr	r3, [r3, #0]
	str	r3, [fp, #-204]
	ldr	r3, [fp, #-264]
	add	r2, r3, #340
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-204]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-204]
	ldr	r3, [r3, #16]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-204]
	bl	rescheduleBlock(PLT)
	b	.L508
.L473:
	ldr	r3, [fp, #-224]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L478
	ldr	r3, .L509+32
	str	r3, [fp, #-200]
	ldr	r3, [fp, #-264]
	add	r3, r3, #272
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L480
	ldr	r3, [fp, #-264]
	add	ip, r3, #272
	ldr	r3, [fp, #-264]
	add	r3, r3, #272
	ldr	r1, [r3, #60]
	ldr	r3, [fp, #-200]
	ldr	r3, [r3, #0]
	and	r0, r3, #255
	mov	r2, #4
	add	r3, r1, ip
	add	r2, r3, r2
	mov	r3, r0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-264]
	add	r0, r3, #272
	ldr	r3, [fp, #-264]
	add	r3, r3, #272
	ldr	r3, [r3, #60]
	add	r1, r3, #1
	ldr	r3, .L509+48
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-284]
	ldr	r3, [fp, #-284]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-284]
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-284]
	ldr	r3, [fp, #-284]
	str	r3, [r0, #60]
	ldr	r3, [fp, #-264]
	add	r2, r3, #272
	ldr	r3, [r2, #64]
	add	r3, r3, #1
	str	r3, [r2, #64]
	b	.L508
.L480:
	ldr	r3, [fp, #-264]
	add	r3, r3, #272
	ldr	r3, [r3, #0]
	str	r3, [fp, #-196]
	ldr	r3, [fp, #-264]
	add	r2, r3, #272
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-200]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-196]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-196]
	ldr	r3, [r3, #16]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-196]
	bl	rescheduleBlock(PLT)
	b	.L508
.L478:
	ldr	r3, [fp, #-224]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L508
	ldr	r3, .L509+44
	str	r3, [fp, #-192]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #0]
	bic	r2, r3, #32
	ldr	r3, [fp, #-192]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-264]
	add	r3, r3, #204
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L484
	ldr	r3, [fp, #-264]
	add	r3, r3, #204
	ldr	r3, [r3, #0]
	str	r3, [fp, #-188]
	ldr	r3, [fp, #-264]
	add	r2, r3, #204
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-188]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-188]
	ldr	r3, [r3, #16]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-188]
	bl	rescheduleBlock(PLT)
	b	.L508
.L484:
	ldr	r3, [fp, #-264]
	add	r1, r3, #204
	ldr	r3, [fp, #-264]
	add	r3, r3, #204
	ldr	r3, [r3, #60]
	mov	r2, #4
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-264]
	add	r0, r3, #204
	ldr	r3, [fp, #-264]
	add	r3, r3, #204
	ldr	r3, [r3, #60]
	add	r1, r3, #1
	ldr	r3, .L509+48
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-280]
	ldr	r3, [fp, #-280]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-280]
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-280]
	ldr	r3, [fp, #-280]
	str	r3, [r0, #60]
	ldr	r3, [fp, #-264]
	add	r2, r3, #204
	ldr	r3, [r2, #64]
	add	r3, r3, #1
	str	r3, [r2, #64]
	b	.L508
.L445:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-184]
	add	r3, r3, #1
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-176]
	ldr	r3, [fp, #-176]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-172]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-168]
	ldr	r3, [fp, #-184]
	mov	r3, r3, asl #6
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	str	r3, [fp, #-164]
	ldr	r3, [fp, #-168]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	str	r3, [fp, #-160]
	ldr	r3, [fp, #-176]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-180]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-156]
	bl	getStackSize(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-180]
	mul	r3, r2, r3
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-164]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-164]
	ldr	r3, .L509+36
	str	r3, [r2, #4]
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-156]
	add	r3, r3, #2195456
	mov	r2, r3
	ldr	r3, [fp, #-164]
	str	r2, [r3, #12]
	ldr	r2, [fp, #-164]
	mov	r3, #1
	str	r3, [r2, #20]
	ldr	r2, [fp, #-164]
	ldr	r3, [fp, #-180]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-164]
	ldr	r3, [fp, #-172]
	str	r3, [r2, #28]
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #60]
	ldr	r2, [fp, #-168]
	ldr	r3, [fp, #-164]
	str	r2, [r3, #16]
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r3, [fp, #-164]
	ldr	r3, [r3, #0]
	add	r2, r3, #4
	ldr	r3, [fp, #-164]
	str	r2, [r3, #0]
	mov	r3, #12
	str	r3, [fp, #-152]
	b	.L486
.L487:
	ldr	r3, [fp, #-164]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-164]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-164]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-152]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-152]
	sub	r3, r3, #1
	str	r3, [fp, #-152]
.L486:
	ldr	r3, [fp, #-152]
	cmp	r3, #0
	bge	.L487
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L489
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #4]
	b	.L491
.L489:
	ldr	r3, [fp, #-160]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #60]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #4]
.L491:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-260]
	str	r2, [r3, #24]
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	b	.L508
.L446:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-148]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-148]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [r1, #8]
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	b	.L508
.L447:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-144]
	ldr	r3, [fp, #-144]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-144]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #28]
	str	r3, [r1, #8]
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	b	.L508
.L448:
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	b	.L508
.L449:
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	bl	closeActive(PLT)
	b	.L508
.L450:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-136]
	mov	r3, r3, asl #6
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	sub	r3, r3, #64
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-132]
	str	r2, [r3, #40]
	ldr	r3, [fp, #-260]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-132]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-132]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-260]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-132]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #6
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	sub	r3, r3, #64
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L492
	ldr	r3, [fp, #-128]
	cmp	r3, #30
	ble	.L494
.L492:
	ldr	r2, [fp, #-132]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L508
.L494:
	ldr	r3, [fp, #-140]
	mov	r0, r3
	ldr	r1, [fp, #-256]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #20]
	cmp	r3, #2
	bne	.L495
	ldr	r2, [fp, #-132]
	mov	r3, #4
	str	r3, [r2, #20]
	ldr	r2, [fp, #-124]
	mov	r3, #1
	str	r3, [r2, #20]
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #16]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-124]
	bl	rescheduleBlock(PLT)
	ldr	r3, [fp, #-132]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #32]
	mov	r1, r3
	ldr	r3, [fp, #-132]
	ldr	r3, [r3, #40]
	ldr	r2, [fp, #-120]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-132]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-124]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-124]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-136]
	str	r3, [r2, #0]
	b	.L508
.L495:
	ldr	r2, [fp, #-132]
	mov	r3, #3
	str	r3, [r2, #20]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r0, r3, #128
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #128
	ldr	r3, [r3, #4]
	ldr	r1, [fp, #-136]
	mov	r2, #8
	mov	r3, r3, asl #2
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r0, r3, #128
	ldr	r3, [fp, #-128]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #128
	ldr	r3, [r3, #4]
	add	r1, r3, #1
	ldr	r3, .L509+40
	smull	r2, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-276]
	ldr	r3, [fp, #-276]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-276]
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-276]
	ldr	r3, [fp, #-276]
	str	r3, [r0, #4]
	b	.L508
.L451:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-116]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #6
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	sub	r3, r3, #64
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-108]
	str	r2, [r3, #48]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-108]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-260]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-108]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #128
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #128
	ldr	r3, [r3, #4]
	cmp	r1, r3
	bne	.L498
	ldr	r3, [fp, #-108]
	mov	r2, #2
	str	r2, [r3, #20]
	ldr	r3, [fp, #-116]
	mov	r0, r3
	ldr	r1, [fp, #-256]
	bl	blockActive(PLT)
	b	.L508
.L498:
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r1, r3, #128
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #128
	ldr	r3, [r3, #0]
	mov	r2, #8
	mov	r3, r3, asl #2
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-104]
	mov	r3, r3, asl #6
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	sub	r3, r3, #64
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r0, r3, #128
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #7
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #128
	ldr	r3, [r3, #0]
	add	r1, r3, #1
	ldr	r3, .L509+40
	smull	r2, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-272]
	ldr	r3, [fp, #-272]
	mov	r3, r3, asl #4
	ldr	r2, [fp, #-272]
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-272]
	ldr	r3, [fp, #-272]
	str	r3, [r0, #0]
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-108]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-108]
	ldr	r3, [r3, #32]
	mov	r1, r3
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #40]
	ldr	r2, [fp, #-96]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-108]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-108]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #24]
	str	r3, [r2, #0]
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-100]
	mov	r3, #4
	str	r3, [r2, #20]
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #52]
	ldr	r3, [fp, #-108]
	str	r2, [r3, #52]
	b	.L508
.L510:
	.align	2
.L509:
	.word	-2146697216
	.word	-2139029364
	.word	-2139029376
	.word	5080
	.word	-2139029368
	.word	-2138308580
	.word	-2138243044
	.word	-2138308608
	.word	-2138243072
	.word	1610612752
	.word	-2004318071
	.word	-2138243052
	.word	1374389535
	.word	-2138308588
	.word	-2139029408
.L452:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #6
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	sub	r3, r3, #64
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-88]
	ldr	r2, [r3, #36]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #32]
	ldr	r2, [fp, #-76]
	mov	r0, r3
	ldr	r1, [fp, #-84]
	bl	copyMsg(PLT)
	ldr	r3, [fp, #-92]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-76]
	str	r3, [r2, #8]
	ldr	r2, [fp, #-88]
	mov	r3, #1
	str	r3, [r2, #20]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #16]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-88]
	bl	rescheduleBlock(PLT)
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	b	.L508
.L453:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-72]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-68]
	mov	r3, r3, asl #6
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	sub	r3, r3, #64
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	cmp	r3, #3
	bne	.L501
	ldr	r3, .L509+44
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-56]
	str	r2, [r3, #0]
	b	.L503
.L501:
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L503
	ldr	r3, .L509+52
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-52]
	str	r2, [r3, #0]
.L503:
	ldr	r2, [fp, #-60]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-264]
	add	r3, r2, r3
	ldr	r3, [r3, #64]
	cmp	r3, #0
	ble	.L505
	ldr	r2, [fp, #-60]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-264]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-60]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-264]
	add	r1, r2, r3
	ldr	r2, [fp, #-60]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-264]
	add	r3, r2, r3
	ldr	r3, [r3, #56]
	mov	r2, #4
	add	r3, r3, r1
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-64]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-60]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-264]
	add	r0, r2, r3
	ldr	r2, [fp, #-60]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-264]
	add	r3, r2, r3
	ldr	r3, [r3, #56]
	add	r1, r3, #1
	ldr	r3, .L509+48
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-268]
	ldr	r3, [fp, #-268]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-268]
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-268]
	ldr	r3, [fp, #-268]
	str	r3, [r0, #56]
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-60]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-264]
	add	r2, r2, r3
	ldr	r3, [r2, #64]
	sub	r3, r3, #1
	str	r3, [r2, #64]
	b	.L508
.L505:
	ldr	r2, [fp, #-64]
	mov	r3, #5
	str	r3, [r2, #20]
	ldr	r2, [fp, #-60]
	mov	r3, r2
	mov	r3, r3, asl #4
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-264]
	add	r2, r2, r3
	ldr	r3, [fp, #-64]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-72]
	mov	r0, r3
	ldr	r1, [fp, #-256]
	bl	blockActive(PLT)
	b	.L508
.L454:
	ldr	r3, .L509+52
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #0]
	bic	r2, r3, #8
	ldr	r3, [fp, #-48]
	str	r2, [r3, #0]
	mov	r3, #9
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-40]
	mov	r3, #6
	str	r3, [r2, #20]
	ldr	r3, [fp, #-44]
	mov	r0, r3
	ldr	r1, [fp, #-256]
	bl	blockActive(PLT)
	b	.L508
.L455:
	ldr	r3, .L509+56
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #16]
	ldr	r3, [r3, #0]
	rsb	r3, r3, r2
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r7, [r3, #0]
	ldr	r3, [fp, #12]
	ldr	r3, [r3, #0]
	mov	r0, r3
	bl	__floatsidf(PLT)
	mov	r5, r0
	mov	r6, r1
	ldr	r0, [fp, #-32]
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
	str	r3, [r7, #8]
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
.L508:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.size	handle, .-handle
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 6608
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #6592
	sub	sp, sp, #36
	ldr	r3, .L516
	sub	r2, fp, #12
	str	r0, [r2, r3]
	ldr	r3, .L516+4
	sub	r2, fp, #12
	str	r1, [r2, r3]
	MRC p15, 0, r0, c1, c0, 0
	ldr r1, =4100
	bic r0, r0, r1
	ORR r0, r0, r1
	MCR p15, 0, r0, c1, c0, 0
	mov	r0, #0
	mov	r1, #0
	bl	bwsetfifo(PLT)
	mov	r0, #1
	mov	r1, #0
	bl	bwsetfifo(PLT)
	ldr	r3, .L516+8
	str	r3, [fp, #-36]
	ldr	r3, .L516+12
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #0]
	orr	r2, r3, #256
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
	sub	r1, fp, #1936
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	ip, fp, #2016
	sub	ip, ip, #12
	sub	ip, ip, #8
	sub	r2, fp, #6528
	sub	r2, r2, #12
	sub	r2, r2, #56
	sub	lr, fp, #2704
	sub	lr, lr, #12
	sub	r3, fp, #6528
	sub	r3, r3, #12
	sub	r3, r3, #16
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, ip
	mov	r3, lr
	bl	initialize(PLT)
	ldr	r2, .L516+16
	mov	r3, #0
	sub	r1, fp, #12
	str	r3, [r1, r2]
	ldr	r2, .L516+20
	mov	r3, #0
	sub	r1, fp, #12
	str	r3, [r1, r2]
	ldr	r2, .L516+24
	mov	r3, #0
	sub	r1, fp, #12
	str	r3, [r1, r2]
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #0]
	ldr	r3, .L516+28
	sub	r1, fp, #12
	str	r2, [r1, r3]
.L512:
	sub	r1, fp, #2016
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	r2, fp, #6528
	sub	r2, r2, #12
	sub	r2, r2, #56
	sub	r3, fp, #6528
	sub	r3, r3, #12
	sub	r3, r3, #60
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	schedule(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L513
	sub	r3, fp, #6528
	sub	r3, r3, #12
	sub	r3, r3, #56
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	getNextRequest(PLT)
	sub	r1, fp, #1936
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	r2, fp, #2016
	sub	r2, r2, #12
	sub	r2, r2, #8
	sub	ip, fp, #6528
	sub	ip, ip, #12
	sub	ip, ip, #56
	sub	lr, fp, #2704
	sub	lr, lr, #12
	sub	r3, fp, #6528
	sub	r3, r3, #12
	sub	r3, r3, #60
	str	r3, [sp, #0]
	sub	r3, fp, #6592
	sub	r3, r3, #12
	str	r3, [sp, #4]
	sub	r3, fp, #6592
	sub	r3, r3, #12
	sub	r3, r3, #4
	str	r3, [sp, #8]
	sub	r3, fp, #6592
	sub	r3, r3, #12
	sub	r3, r3, #8
	str	r3, [sp, #12]
	sub	r3, fp, #6528
	sub	r3, r3, #12
	sub	r3, r3, #16
	str	r3, [sp, #16]
	mov	r0, r1
	mov	r1, r2
	mov	r2, ip
	mov	r3, lr
	bl	handle(PLT)
	b	.L512
.L513:
	ldr	r3, .L516+32
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L516+36
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	bic	r2, r3, #64
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	bic	r2, r3, #8
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	bic	r2, r3, #128
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, .L516+40
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #524288
	str	r3, [r2, #0]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L517:
	.align	2
.L516:
	.word	-6604
	.word	-6608
	.word	-2139029404
	.word	-2139029408
	.word	-6588
	.word	-6592
	.word	-6596
	.word	-6600
	.word	-2139029376
	.word	-2139029368
	.word	-2146697196
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
