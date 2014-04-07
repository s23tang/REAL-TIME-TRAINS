	.file	"wtA4.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"u2g\000"
	.text
	.align	2
	.global	Terminal
	.type	Terminal, %function
Terminal:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #180
	ldr	sl, .L250
.L249:
	add	sl, pc, sl
	ldr	r3, .L250+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-88]
	mov	r3, #0
	str	r3, [fp, #-84]
	sub	r2, fp, #108
	sub	r3, fp, #192
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-192]
	sub	r2, fp, #108
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r3, [fp, #-104]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-100]
	str	r3, [fp, #-72]
	b	.L248
.L2:
.L248:
	ldr	r0, [fp, #-88]
	mov	r1, #1
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-65]
	ldr	r3, [fp, #-84]
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
	str	r3, [fp, #-108]
	mov	r3, #0
	str	r3, [fp, #-64]
	b	.L9
.L10:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L11
	ldr	r3, [fp, #-64]
	mvn	r2, #171
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
	mvn	r2, #171
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
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L16
.L17:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L46
	mov	r3, #5
	str	r3, [fp, #-108]
	b	.L46
.L13:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #116
	bne	.L22
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
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
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L27
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L29
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L29
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L29
	ldr	r3, [fp, #-64]
	mvn	r2, #171
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
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L34
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L34
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L34
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L34
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L34
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-64]
	mvn	r2, #171
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
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bne	.L33
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L33
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
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
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L26
.L33:
	ldr	r3, [fp, #-52]
	cmp	r3, #1
	bne	.L47
	mov	r3, #0
	str	r3, [fp, #-84]
	b	.L46
.L48:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L49
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L51
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L51
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L54
	ldr	r3, [fp, #-64]
	add	r2, r3, #1
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L51
.L54:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
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
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L56
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L56
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #52
	bhi	.L56
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
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
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L48
.L56:
	ldr	r3, [fp, #-52]
	cmp	r3, #1
	bne	.L63
	mov	r3, #0
	str	r3, [fp, #-84]
	b	.L46
.L64:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
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
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L64
.L65:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L67
	ldr	r3, [fp, #-60]
	cmn	r3, #1
	beq	.L67
	ldr	r3, [fp, #-56]
	cmn	r3, #1
	beq	.L67
	mov	r3, #6
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-100]
	b	.L46
.L67:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
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
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L77
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #66
	bne	.L79
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #82
	bne	.L79
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L82
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L82
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L85
	ldr	r3, [fp, #-64]
	add	r2, r3, #3
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L82
.L85:
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
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
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L88
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L88
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bhi	.L88
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L92
	ldr	r3, [fp, #-64]
	add	r2, r3, #4
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L88
.L92:
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
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
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #53
	bne	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #50
	bls	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #5
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L99
	ldr	r3, [fp, #-64]
	add	r2, r3, #5
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L77
.L99:
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #171
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
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #77
	bne	.L101
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #82
	bne	.L101
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L104
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L104
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L107
	ldr	r3, [fp, #-64]
	add	r2, r3, #3
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L104
.L107:
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
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
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L109
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L109
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bhi	.L109
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L113
	ldr	r3, [fp, #-64]
	add	r2, r3, #4
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L109
.L113:
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
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
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #53
	bne	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #50
	bls	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #5
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L120
	ldr	r3, [fp, #-64]
	add	r2, r3, #5
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L77
.L120:
	ldr	r3, [fp, #-64]
	add	r3, r3, #4
	mvn	r2, #171
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
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L77
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #69
	bhi	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L124
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L124
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L127
	ldr	r3, [fp, #-64]
	add	r2, r3, #2
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L124
.L127:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3, asl #4
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
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
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L77
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L132
	ldr	r3, [fp, #-64]
	add	r2, r3, #3
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L77
.L132:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3, asl #4
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
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
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L76
	b	.L134
.L135:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
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
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L135
.L136:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-48]
	cmn	r3, #1
	beq	.L46
	mov	r3, #14
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-56]
	cmp	r3, #49
	bne	.L140
	sub	r3, fp, #108
	sub	ip, fp, #128
	mov	r2, #20
	str	r2, [sp, #0]
	ldr	r0, [fp, #-76]
	mov	r1, r3
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L46
.L140:
	ldr	r3, [fp, #-56]
	cmp	r3, #45
	bne	.L46
	sub	r3, fp, #108
	sub	ip, fp, #128
	mov	r2, #20
	str	r2, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r3
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L46
.L251:
	.align	2
.L250:
	.word	_GLOBAL_OFFSET_TABLE_-(.L249+8)
	.word	.LC0(GOTOFF)
.L22:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L143
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #118
	bne	.L143
	mvn	r3, #0
	str	r3, [fp, #-44]
	mvn	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	b	.L146
.L147:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L148
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L150
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L150
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L153
	ldr	r3, [fp, #-64]
	add	r2, r3, #1
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L150
.L153:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
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
	b	.L155
.L150:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L156
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L156
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L156
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L156
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-64]
	mvn	r2, #171
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
	b	.L155
.L156:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bne	.L155
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L155
	mov	r3, #80
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L155
.L148:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L146:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L147
.L155:
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	bne	.L166
	mov	r3, #0
	str	r3, [fp, #-84]
	b	.L46
.L167:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L168
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L166:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L167
.L168:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-44]
	cmn	r3, #1
	beq	.L46
	mov	r3, #9
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-104]
	b	.L46
.L143:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L173
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #119
	bne	.L173
	mvn	r3, #0
	str	r3, [fp, #-36]
	mvn	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	b	.L176
.L177:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L178
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L180
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L180
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L180
	ldr	r3, [fp, #-64]
	mvn	r2, #171
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
	b	.L184
.L180:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L185
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L185
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bhi	.L185
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L185
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
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
	b	.L184
.L185:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L184
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #53
	bne	.L184
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #50
	bls	.L184
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L184
	ldr	r3, [fp, #-64]
	add	r3, r3, #3
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L184
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	mvn	r2, #171
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
	b	.L184
.L178:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L176:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L177
.L184:
	ldr	r3, [fp, #-28]
	cmp	r3, #1
	bne	.L198
	mov	r3, #0
	str	r3, [fp, #-84]
	b	.L46
.L199:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L200
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #83
	bne	.L202
	mov	r3, #33
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L204
.L202:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #67
	bne	.L204
	mov	r3, #34
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L204
.L200:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L198:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L199
.L204:
	ldr	r3, [fp, #-28]
	cmp	r3, #1
	bne	.L209
	mov	r3, #0
	str	r3, [fp, #-84]
	b	.L46
.L210:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L211
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L209:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L210
.L211:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-32]
	cmn	r3, #1
	beq	.L46
	ldr	r3, [fp, #-36]
	cmn	r3, #1
	beq	.L46
	mov	r3, #7
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-100]
	b	.L46
.L173:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L46
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
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
	b	.L219
.L220:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L221
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L223
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L223
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L226
	ldr	r3, [fp, #-64]
	add	r2, r3, #1
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L223
.L226:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
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
	b	.L228
.L223:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L228
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L228
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L228
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L228
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-64]
	mvn	r2, #171
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
	b	.L228
.L221:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L219:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L220
.L228:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L236
	mov	r3, #0
	str	r3, [fp, #-84]
	b	.L46
.L237:
	ldr	r3, [fp, #-64]
	mvn	r2, #171
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L238
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L236:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L237
.L238:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	beq	.L46
	mov	r3, #12
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-104]
	b	.L46
.L11:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L9:
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	bcc	.L10
.L46:
	mov	r3, #0
	str	r3, [fp, #-84]
	b	.L242
.L7:
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L243
	ldr	r3, [fp, #-84]
	cmp	r3, #0
	beq	.L2
	mov	r3, #4
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-84]
	sub	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L242
.L243:
	mov	r3, #1
	str	r3, [fp, #-108]
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-84]
	mvn	r2, #171
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-65]
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	str	r3, [fp, #-84]
.L242:
	ldr	r3, [fp, #-108]
	cmp	r3, #14
	beq	.L2
	ldr	r2, [fp, #-192]
	sub	r1, fp, #108
	sub	ip, fp, #128
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L2
	.size	Terminal, .-Terminal
	.section	.rodata
	.align	2
.LC1:
	.ascii	"u1g\000"
	.align	2
.LC2:
	.ascii	"u1x\000"
	.text
	.align	2
	.global	Train
	.type	Train, %function
Train:
	@ args = 0, pretend = 0, frame = 60
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #64
	ldr	sl, .L262
.L261:
	add	sl, pc, sl
	ldr	r3, .L262+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, .L262+8
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
.L253:
	ldr	r0, [fp, #-32]
	mov	r1, #0
	mov	r2, #133
	bl	Putc(PLT)
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L254
.L255:
	ldr	r3, [fp, #-20]
	eor	r3, r3, #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L256
	ldr	r0, [fp, #-36]
	mov	r1, #0
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-22]
	b	.L258
.L256:
	ldr	r0, [fp, #-36]
	mov	r1, #0
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-21]
	mov	r3, #8
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-20]
	mov	r3, r2, lsr #31
	add	r3, r3, r2
	mov	r3, r3, asr #1
	add	r3, r3, #1
	str	r3, [fp, #-52]
	ldrb	r3, [fp, #-22]	@ zero_extendqisi2
	str	r3, [fp, #-48]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	str	r3, [fp, #-44]
	sub	r2, fp, #56
	sub	ip, fp, #76
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L258:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L254:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	ble	.L255
	b	.L253
.L263:
	.align	2
.L262:
	.word	_GLOBAL_OFFSET_TABLE_-(.L261+8)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.size	Train, .-Train
	.section	.rodata
	.align	2
.LC3:
	.ascii	"clock\000"
	.text
	.align	2
	.global	reverseTask
	.type	reverseTask, %function
reverseTask:
	@ args = 0, pretend = 0, frame = 52
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #56
	ldr	sl, .L268
.L267:
	add	sl, pc, sl
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, .L268+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
.L265:
	mov	r3, #10
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
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-64]
	mov	r0, r3
	mov	r1, r2
	bl	Delay(PLT)
	mov	r3, #11
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-44]
	sub	r2, fp, #48
	sub	ip, fp, #68
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L265
.L269:
	.align	2
.L268:
	.word	_GLOBAL_OFFSET_TABLE_-(.L267+8)
	.word	.LC3(GOTOFF)
	.size	reverseTask, .-reverseTask
	.section	.rodata
	.align	2
.LC4:
	.ascii	"printer\000"
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
	.align	2
.LC28:
	.ascii	"\033[32;1H\033[K\033[31mBAD COMMAND\012\000"
	.align	2
.LC29:
	.ascii	"\033[0m\033[33;4H\033[K\000"
	.align	2
.LC30:
	.ascii	"\033[33;%dH\033[K\000"
	.align	2
.LC31:
	.ascii	"\033[32;1H\033[K\033[32mShutting down\012\000"
	.align	2
.LC32:
	.ascii	"\033[32;1H\033[K\033[32mSetting Train: %d Speed: %d"
	.ascii	"\012\000"
	.align	2
.LC33:
	.ascii	"\033[32m\033[6;%dH%c\033[0m\000"
	.align	2
.LC34:
	.ascii	"\033[32;1H\033[K\033[32mSetting Switch: %d State: %"
	.ascii	"c\012\000"
	.align	2
.LC35:
	.ascii	"monitor\000"
	.align	2
.LC36:
	.ascii	"\033[32m\033[%d;%dH%d\033[0m\000"
	.align	2
.LC37:
	.ascii	"\033[%d;%dH%d\000"
	.align	2
.LC38:
	.ascii	"\033[33;%dH\000"
	.align	2
.LC39:
	.ascii	"\033[32;1H\033[K\033[31mSet Train %d's Speed First\012"
	.ascii	"\000"
	.align	2
.LC40:
	.ascii	"\033[32;1H\033[K\033[32mReversing Train %d\012\000"
	.align	2
.LC41:
	.ascii	"\033[32;1H\033[K\033[32mStop at sensor: %d\012\000"
	.align	2
.LC42:
	.ascii	"\033[32;1H\033[K\033[32mSetting Train: %d Speed: %d"
	.ascii	" Loc: %s\012\000"
	.align	2
.LC43:
	.ascii	"\033[38;1H\033[K\000"
	.align	2
.LC44:
	.ascii	"%s \000"
	.align	2
.LC45:
	.ascii	"\033[39;1H\033[K\000"
	.align	2
.LC46:
	.ascii	"%d \000"
	.align	2
.LC47:
	.ascii	"\033[34;1H\033[KTrain 49: How far: %d Offset: %d Sp"
	.ascii	"eed: %d\033[33;%dH\000"
	.align	2
.LC48:
	.ascii	"\033[35;1H\033[KTrain 45: How far: %d Offset: %d Sp"
	.ascii	"eed: %d\033[33;%dH\000"
	.align	2
.LC49:
	.ascii	"\033[40;1H\033[KStop at sensor %s train 49\033[33;%"
	.ascii	"dH\000"
	.align	2
.LC50:
	.ascii	"\033[41;1H\033[KStop at sensor %s train 45\033[33;%"
	.ascii	"dH\000"
	.align	2
.LC51:
	.ascii	"\033[36;1H\033[KTrain 49 On Sensor\033[33;%dH\000"
	.align	2
.LC52:
	.ascii	"\033[36;1H\033[KTrain 49 Passed Sensor\033[33;%dH\000"
	.align	2
.LC53:
	.ascii	"\033[36;1H\033[KTrain 49 Have not hit Sensor\033[33"
	.ascii	";%dH\000"
	.align	2
.LC54:
	.ascii	"\033[37;1H\033[KTrain 45 On Sensor\033[33;%dH\000"
	.align	2
.LC55:
	.ascii	"\033[37;1H\033[KTrain 45 Passed Sensor\033[33;%dH\000"
	.align	2
.LC56:
	.ascii	"\033[37;1H\033[KTrain 45 Have not hit Sensor\033[33"
	.ascii	";%dH\000"
	.align	2
.LC57:
	.ascii	"\033[42;1H\033[KGot this %d and %d\033[33;%dH\000"
	.align	2
.LC58:
	.ascii	"\033[%d;1H\033[KData1: %d, Data2: %d, Data3: %d\033"
	.ascii	"[33;%dH\000"
	.text
	.align	2
	.global	Printer
	.type	Printer, %function
Printer:
	@ args = 0, pretend = 0, frame = 8256
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8256
	sub	sp, sp, #44
	ldr	sl, .L415
.L414:
	add	sl, pc, sl
	sub	r2, fp, #208
	sub	r3, fp, #188
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-204]
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-180]
	mov	r3, #0
	str	r3, [fp, #-228]
	ldr	r3, [fp, #-188]
	sub	r2, fp, #228
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r3, .L415+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	sub	r3, fp, #7104
	sub	r3, r3, #20
	sub	r3, r3, #16
	mov	r0, r3
	bl	init_tracka(PLT)
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-176]
	ldr	r3, .L415+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-172]
	ldr	r3, .L415+12
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-168]
	ldr	r3, .L415+16
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-164]
	mov	r3, #0
	str	r3, [fp, #-160]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+24
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+32
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+64
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+68
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+72
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+76
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+80
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+84
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, #96
	bl	Putc(PLT)
	mov	r3, #4
	str	r3, [fp, #-156]
	mov	r3, #0
	str	r3, [fp, #-152]
	mov	r3, #0
	str	r3, [fp, #-148]
	mov	r3, #0
	str	r3, [fp, #-144]
	mov	r3, #0
	str	r3, [fp, #-140]
	mov	r3, #0
	str	r3, [fp, #-136]
	mov	r3, #0
	str	r3, [fp, #-132]
	mov	r3, #0
	str	r3, [fp, #-128]
	mov	r3, #0
	str	r3, [fp, #-124]
	b	.L271
.L272:
	ldr	r3, [fp, #-124]
	ldr	r2, .L415+180
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r3, r0
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-124]
	ldr	r2, .L415+252
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-124]
	ldr	r2, .L415+176
	mov	r3, r3, asl #2
	sub	r4, fp, #20
	add	r3, r3, r4
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-124]
	ldr	r2, .L415+88
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, r3, ip
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-124]
	add	r3, r3, #1
	str	r3, [fp, #-124]
.L271:
	ldr	r3, [fp, #-124]
	cmp	r3, #79
	ble	.L272
	ldr	r3, .L415+92
	ldr	r3, [sl, r3]
	str	r3, [fp, #-120]
	mov	r0, #2
	ldr	r1, [fp, #-120]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-116]
	ldr	r3, .L415+92
	ldr	r3, [sl, r3]
	str	r3, [fp, #-120]
	mov	r0, #2
	ldr	r1, [fp, #-120]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-176]
	str	r3, [fp, #-224]
	sub	r2, fp, #228
	sub	ip, fp, #208
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-116]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-172]
	str	r3, [fp, #-224]
	sub	r2, fp, #228
	sub	ip, fp, #208
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-112]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+96
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-172]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+100
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mvn	r3, #0
	str	r3, [fp, #-108]
	mov	r3, #0
	str	r3, [fp, #-104]
	ldr	r3, .L415+248
	sub	lr, fp, #20
	add	r2, lr, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L415+248
	sub	r0, fp, #20
	add	r2, r0, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, .L415+268
	sub	r1, fp, #20
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L415+268
	sub	r4, fp, #20
	add	r2, r4, r3
	mov	r3, #0
	str	r3, [r2, #4]
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #0
	str	r3, [fp, #-96]
	b	.L413
.L274:
.L413:
	sub	r2, fp, #208
	sub	r3, fp, #188
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-208]
	sub	r3, r3, #1
	cmp	r3, #25
	addls	pc, pc, r3, asl #2
	b	.L275
	.p2align 2
.L299:
	b	.L276
	b	.L277
	b	.L278
	b	.L279
	b	.L280
	b	.L281
	b	.L282
	b	.L283
	b	.L284
	b	.L275
	b	.L285
	b	.L286
	b	.L287
	b	.L288
	b	.L275
	b	.L275
	b	.L289
	b	.L290
	b	.L275
	b	.L292
	b	.L293
	b	.L294
	b	.L295
	b	.L296
	b	.L297
	b	.L298
.L278:
	ldr	r3, [fp, #-128]
	add	r3, r3, #1
	str	r3, [fp, #-128]
	bl	IdleTime(PLT)
	mov	r3, r0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-144]
	add	r1, r3, #1
	ldr	r3, .L415+104
	smull	ip, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r3, r3, r1
	str	r3, [fp, #-144]
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	bne	.L300
	ldr	r3, [fp, #-148]
	add	r1, r3, #1
	ldr	r3, .L415+108
	smull	lr, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #5
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	rsb	r3, r3, r1
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-148]
	cmp	r3, #0
	bne	.L300
	ldr	r3, [fp, #-152]
	add	r3, r3, #1
	str	r3, [fp, #-152]
.L300:
	ldr	r1, [fp, #-152]
	ldr	r3, .L415+104
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	ldr	r1, [fp, #-152]
	ldr	r3, .L415+104
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	lr, r3, r2
	sub	r4, fp, #8192
	str	lr, [r4, #-84]
	sub	r0, fp, #8192
	ldr	r3, [r0, #-84]
	mov	r3, r3, asl #2
	sub	r2, fp, #8192
	ldr	r2, [r2, #-84]
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	lr, r3, r1
	sub	r4, fp, #8192
	str	lr, [r4, #-84]
	ldr	r1, [fp, #-148]
	ldr	r3, .L415+104
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r0, r3, r2
	ldr	r1, [fp, #-148]
	ldr	r3, .L415+104
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	lr, r3, r2
	sub	r4, fp, #8192
	str	lr, [r4, #-80]
	sub	r2, fp, #8192
	ldr	r3, [r2, #-80]
	mov	r3, r3, asl #2
	sub	r4, fp, #8192
	ldr	r4, [r4, #-80]
	add	r3, r3, r4
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	sub	lr, fp, #8192
	str	r2, [lr, #-80]
	sub	r3, fp, #8192
	ldr	r3, [r3, #-84]
	str	r3, [sp, #0]
	str	r0, [sp, #4]
	sub	r4, fp, #8192
	ldr	r4, [r4, #-80]
	str	r4, [sp, #8]
	ldr	r3, [fp, #-144]
	str	r3, [sp, #12]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+112
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r3, [fp, #-156]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+116
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-92]
	bl	myprintf(PLT)
	b	.L275
.L276:
	ldr	r3, [fp, #-204]
	and	r3, r3, #255
	ldr	r0, [fp, #-168]
	mov	r1, #1
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-156]
	add	r3, r3, #1
	str	r3, [fp, #-156]
	b	.L275
.L277:
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+120
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-156]
	b	.L275
.L279:
	ldr	r3, [fp, #-156]
	sub	r3, r3, #1
	str	r3, [fp, #-156]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+124
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	bl	myprintf(PLT)
	b	.L275
.L280:
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, #97
	bl	Putc(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+128
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-172]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	mov	r3, #1
	str	r3, [fp, #-104]
	b	.L275
.L281:
	ldr	r3, [fp, #-204]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-200]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	ip, [fp, #-200]
	ldr	r3, [fp, #-204]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+132
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-204]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-88]
	sub	r3, r3, #1
	ldr	r2, .L415+176
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, r3, ip
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L303
	ldr	r3, .L415+136
	ldr	r3, [sl, r3]
	str	r3, [fp, #-120]
	mov	r0, #2
	ldr	r1, [fp, #-120]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-88]
	sub	r3, r3, #1
	ldr	r2, .L415+176
	mov	r3, r3, asl #2
	sub	lr, fp, #20
	add	r3, r3, lr
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-88]
	sub	r3, r3, #1
	ldr	r2, .L415+180
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r3, r0
	add	r2, r3, r2
	ldr	r3, [fp, #-84]
	str	r3, [r2, #0]
	b	.L305
.L303:
	ldr	r3, [fp, #-88]
	sub	r3, r3, #1
	ldr	r2, .L415+180
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-84]
	str	r3, [r2, #0]
.L305:
	mov	r3, #4
	str	r3, [fp, #-156]
	b	.L275
.L282:
	ldr	r3, [fp, #-204]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-200]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-204]
	cmp	r3, #33
	bne	.L306
	mov	r3, #83
	sub	r2, fp, #8192
	str	r3, [r2, #-76]
	b	.L308
.L306:
	mov	ip, #67
	sub	r4, fp, #8192
	str	ip, [r4, #-76]
.L308:
	sub	lr, fp, #8192
	ldrb	r3, [lr, #-76]
	strb	r3, [fp, #-73]
	ldr	r3, [fp, #-200]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	ble	.L309
	ldr	r3, [fp, #-72]
	cmp	r3, #10
	bgt	.L309
	ldr	r3, [fp, #-72]
	mov	r3, r3, asl #1
	sub	r3, r3, #1
	str	r3, [fp, #-72]
	b	.L312
.L309:
	ldr	r3, [fp, #-72]
	cmp	r3, #10
	ble	.L313
	ldr	r3, [fp, #-72]
	cmp	r3, #18
	bgt	.L313
	ldr	r1, [fp, #-72]
	ldr	r3, .L415+140
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	sub	r4, fp, #8192
	str	ip, [r4, #-72]
	sub	lr, fp, #8192
	ldr	r3, [lr, #-72]
	mov	r3, r3, asl #2
	sub	r0, fp, #8192
	ldr	r0, [r0, #-72]
	add	r3, r3, r0
	mov	r3, r3, asl #1
	sub	r2, fp, #8192
	ldr	r2, [r2, #-72]
	add	r3, r3, r2
	rsb	ip, r3, r1
	sub	r4, fp, #8192
	str	ip, [r4, #-72]
	sub	lr, fp, #8192
	ldr	r3, [lr, #-72]
	mov	r3, r3, asl #1
	sub	r0, fp, #8192
	ldr	r0, [r0, #-72]
	add	r3, r3, r0
	add	r3, r3, #22
	str	r3, [fp, #-72]
	b	.L312
.L313:
	ldr	r1, [fp, #-72]
	ldr	r3, .L415+144
	smull	r2, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #7
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	sub	r4, fp, #8192
	str	ip, [r4, #-68]
	sub	lr, fp, #8192
	ldr	r3, [lr, #-68]
	mov	r3, r3, asl #3
	sub	r0, fp, #8192
	ldr	r0, [r0, #-68]
	add	r3, r3, r0
	mov	r2, r3, asl #4
	add	r3, r3, r2
	rsb	r4, r3, r1
	sub	r2, fp, #8192
	str	r4, [r2, #-68]
	sub	ip, fp, #8192
	ldr	ip, [ip, #-68]
	mov	r3, ip, asl #2
	add	r3, r3, #47
	str	r3, [fp, #-72]
.L312:
	ldrb	r3, [fp, #-73]	@ zero_extendqisi2
	str	r3, [sp, #0]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+148
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-72]
	bl	myprintf(PLT)
	ldr	ip, [fp, #-200]
	ldrb	r3, [fp, #-73]	@ zero_extendqisi2
	str	r3, [sp, #0]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+152
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-156]
	b	.L275
.L283:
	ldr	r3, [fp, #-204]
	add	r1, r3, #4
	ldr	r3, .L415+104
	smull	lr, r3, r1, r3
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
	ldr	r3, [fp, #-204]
	add	r1, r3, #3
	ldr	r3, .L415+104
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r3, r1
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	bne	.L318
	mov	r3, #5
	str	r3, [fp, #-64]
.L318:
	mvn	r3, #127
	strb	r3, [fp, #-53]
	mov	r3, #1
	str	r3, [fp, #-44]
	b	.L320
.L321:
	ldr	r3, [fp, #-44]
	mov	r3, r3, asl #2
	sub	r3, r3, #2
	str	r3, [fp, #-48]
	mov	r3, #0
	strb	r3, [fp, #-37]
	ldr	r3, [fp, #-44]
	cmp	r3, #8
	bgt	.L322
	ldr	r3, [fp, #-68]
	cmp	r3, #2
	bne	.L324
	mov	r3, #29
	str	r3, [fp, #-60]
	b	.L326
.L324:
	ldr	r3, [fp, #-68]
	cmp	r3, #1
	bne	.L327
	mov	r3, #25
	str	r3, [fp, #-60]
	b	.L326
.L327:
	ldr	r3, [fp, #-68]
	mov	r3, r3, asl #2
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L326:
	ldr	r2, [fp, #-196]
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	and	r2, r2, r3
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L331
	mov	r3, #1
	strb	r3, [fp, #-37]
	b	.L331
.L322:
	ldr	r3, [fp, #-64]
	cmp	r3, #2
	bne	.L332
	mov	r3, #29
	str	r3, [fp, #-60]
	b	.L334
.L332:
	ldr	r3, [fp, #-64]
	cmp	r3, #1
	bne	.L335
	mov	r3, #25
	str	r3, [fp, #-60]
	b	.L334
.L416:
	.align	2
.L415:
	.word	_GLOBAL_OFFSET_TABLE_-(.L414+8)
	.word	.LC4(GOTOFF)
	.word	.LC3(GOTOFF)
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
	.word	-8160
	.word	Courier(GOT)
	.word	.LC24(GOTOFF)
	.word	.LC25(GOTOFF)
	.word	1717986919
	.word	-2004318071
	.word	.LC26(GOTOFF)
	.word	.LC27(GOTOFF)
	.word	.LC28(GOTOFF)
	.word	.LC30(GOTOFF)
	.word	.LC31(GOTOFF)
	.word	.LC32(GOTOFF)
	.word	reverseTask(GOT)
	.word	780903145
	.word	-701792041
	.word	.LC33(GOTOFF)
	.word	.LC34(GOTOFF)
	.word	.LC35(GOTOFF)
	.word	.LC36(GOTOFF)
	.word	.LC37(GOTOFF)
	.word	.LC39(GOTOFF)
	.word	.LC40(GOTOFF)
	.word	-7440
	.word	-7760
	.word	.LC41(GOTOFF)
	.word	.LC43(GOTOFF)
	.word	.LC44(GOTOFF)
	.word	.LC45(GOTOFF)
	.word	.LC46(GOTOFF)
	.word	.LC38(GOTOFF)
	.word	.LC42(GOTOFF)
	.word	.LC29(GOTOFF)
	.word	.LC47(GOTOFF)
	.word	.LC48(GOTOFF)
	.word	.LC49(GOTOFF)
	.word	-7120
	.word	.LC50(GOTOFF)
	.word	.LC51(GOTOFF)
	.word	.LC52(GOTOFF)
	.word	.LC53(GOTOFF)
	.word	-8168
	.word	-7840
	.word	.LC54(GOTOFF)
	.word	.LC55(GOTOFF)
	.word	.LC56(GOTOFF)
	.word	-8176
	.word	.LC57(GOTOFF)
	.word	.LC58(GOTOFF)
.L335:
	ldr	r3, [fp, #-64]
	mov	r3, r3, asl #2
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L334:
	ldr	r2, [fp, #-200]
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	and	r2, r2, r3
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L331
	mov	r3, #1
	strb	r3, [fp, #-37]
.L331:
	ldr	r3, [fp, #-60]
	sub	r3, r3, #1
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	mov	r3, r3, asr #2
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	sub	r3, r3, #49
	str	r3, [fp, #-52]
	ldr	r3, .L415+248
	sub	r1, fp, #20
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L338
	ldr	r3, .L415+248
	sub	r2, fp, #20
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bne	.L338
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L338
	ldr	r3, .L415+248
	sub	r4, fp, #20
	add	r2, r4, r3
	mov	r3, #1
	str	r3, [r2, #4]
.L338:
	ldr	r3, .L415+268
	sub	ip, fp, #20
	add	r3, ip, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L342
	ldr	r3, .L415+268
	sub	lr, fp, #20
	add	r3, lr, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-52]
	cmp	r2, r3
	bne	.L342
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L342
	ldr	r3, .L415+268
	sub	r0, fp, #20
	add	r2, r0, r3
	mov	r3, #1
	str	r3, [r2, #4]
.L342:
	ldr	r3, [fp, #-52]
	ldr	r2, .L415+252
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L346
	ldr	r3, [fp, #-132]
	cmp	r3, #0
	beq	.L348
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L348
	mov	r3, #1
	str	r3, [fp, #-228]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-224]
	ldr	r3, [fp, #-160]
	cmp	r3, #0
	bne	.L351
	ldr	r3, .L415+156
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-160]
.L351:
	sub	r2, fp, #228
	sub	ip, fp, #8192
	sub	ip, ip, #20
	sub	ip, ip, #4
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-160]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L348:
	ldr	r3, [fp, #-100]
	cmp	r3, #0
	beq	.L353
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L353
	mov	r3, #1
	str	r3, [fp, #-228]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-224]
	sub	r2, fp, #228
	sub	ip, fp, #8192
	sub	ip, ip, #20
	sub	ip, ip, #24
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-184]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L353:
	ldr	r3, [fp, #-96]
	cmp	r3, #0
	beq	.L356
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L356
	mov	r3, #1
	str	r3, [fp, #-228]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-224]
	sub	r2, fp, #228
	sub	ip, fp, #8192
	sub	ip, ip, #20
	sub	ip, ip, #44
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-180]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L356:
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L359
	ldrb	r2, [fp, #-37]	@ zero_extendqisi2
	ldr	r3, [fp, #-48]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+160
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-60]
	bl	myprintf(PLT)
	b	.L361
.L359:
	ldrb	r2, [fp, #-37]	@ zero_extendqisi2
	ldr	r3, [fp, #-48]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+164
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-60]
	bl	myprintf(PLT)
.L361:
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+204
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	bl	myprintf(PLT)
	ldr	r3, [fp, #-52]
	ldr	r2, .L415+252
	sub	r4, fp, #20
	add	r3, r4, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-37]
	strb	r3, [r2, #0]
.L346:
	ldr	r3, [fp, #-44]
	cmp	r3, #8
	bne	.L362
	mvn	r3, #127
	strb	r3, [fp, #-53]
	b	.L364
.L362:
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	mov	r3, r3, lsr #1
	strb	r3, [fp, #-53]
.L364:
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L320:
	ldr	r3, [fp, #-44]
	cmp	r3, #16
	ble	.L321
	b	.L275
.L284:
	ldr	r3, [fp, #-204]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	ldr	r2, .L415+176
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, r3, ip
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L366
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+168
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	b	.L368
.L366:
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, #0
	bl	Putc(PLT)
	ldr	r3, [fp, #-204]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	ip, [fp, #-204]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+172
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #0
	str	r3, [fp, #-228]
	mov	r3, #400
	str	r3, [fp, #-224]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-220]
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	ldr	r2, .L415+176
	mov	r3, r3, asl #2
	sub	lr, fp, #20
	add	r3, r3, lr
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	sub	r2, fp, #228
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
.L368:
	mov	r3, #4
	str	r3, [fp, #-156]
	b	.L275
.L285:
	ldr	r3, [fp, #-204]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	ldr	r2, .L415+180
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, #15
	bl	Putc(PLT)
	ldr	r3, [fp, #-32]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-28]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-32]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	b	.L275
.L286:
	ldr	r3, [fp, #-204]
	str	r3, [fp, #-108]
	ldr	ip, [fp, #-204]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+184
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-156]
	b	.L275
.L288:
	ldr	r3, [fp, #-204]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-200]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	ip, [fp, #-200]
	ldr	r1, [fp, #-204]
	ldr	r2, [fp, #-196]
	ldr	r0, .L415+228
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	sub	r2, fp, #20
	add	r3, r3, r2
	add	r3, r3, r0
	ldr	r3, [r3, #0]
	str	r1, [sp, #0]
	str	r3, [sp, #4]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+208
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-156]
	b	.L275
.L287:
	ldr	r2, [fp, #-204]
	ldr	r3, [fp, #-184]
	cmp	r2, r3
	bne	.L369
	mov	r3, #1
	str	r3, [fp, #-100]
	b	.L275
.L369:
	ldr	r2, [fp, #-204]
	ldr	r3, [fp, #-180]
	cmp	r2, r3
	bne	.L372
	mov	r3, #1
	str	r3, [fp, #-96]
	b	.L275
.L372:
	ldr	r3, [fp, #-204]
	str	r3, [fp, #-132]
	b	.L275
.L289:
	ldr	r2, [fp, #-204]
	ldr	r3, [fp, #-184]
	cmp	r2, r3
	bne	.L374
	mov	r3, #0
	str	r3, [fp, #-100]
	b	.L275
.L374:
	ldr	r2, [fp, #-204]
	ldr	r3, [fp, #-180]
	cmp	r2, r3
	bne	.L377
	mov	r3, #0
	str	r3, [fp, #-96]
	b	.L275
.L377:
	mov	r3, #0
	str	r3, [fp, #-132]
	b	.L275
.L290:
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+188
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-204]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-24]
	b	.L379
.L380:
	ldr	r3, [fp, #-204]
	mov	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r2, [r2, r3, asl #3]
	ldr	r1, .L415+228
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	sub	r4, fp, #20
	add	r3, r3, r4
	add	r4, r3, r1
	mov	lr, sp
	add	ip, r4, #4
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2}
	stmia	lr, {r0, r1, r2}
	ldr	r3, [r4, #0]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r2, .L415+192
	add	r2, sl, r2
	bl	myprintf(PLT)
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L379:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L380
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+204
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+196
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-204]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-24]
	b	.L382
.L383:
	ldr	r3, [fp, #-204]
	mov	r1, r3
	ldr	r3, [fp, #-24]
	mov	r2, #4
	mov	r3, r3, asl #3
	add	r3, r3, r1
	add	r3, r3, r2
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	ip, r3
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+200
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L382:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L383
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+204
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	bl	myprintf(PLT)
	b	.L275
.L292:
	ldr	r3, [fp, #-204]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-200]
	and	r3, r3, #255
	ldr	r0, [fp, #-164]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	b	.L275
.L293:
	ldr	ip, [fp, #-200]
	ldr	r1, [fp, #-204]
	ldr	r2, [fp, #-196]
	ldr	r0, .L415+228
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	sub	lr, fp, #20
	add	r3, r3, lr
	add	r3, r3, r0
	ldr	r3, [r3, #0]
	str	r1, [sp, #0]
	str	r3, [sp, #4]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+208
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-156]
	b	.L275
.L294:
	ldr	r2, [fp, #-192]
	ldr	r3, [fp, #-184]
	cmp	r2, r3
	bne	.L385
	ldr	ip, [fp, #-204]
	ldr	r3, [fp, #-200]
	ldr	r2, [fp, #-196]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	ldr	r3, [fp, #-156]
	str	r3, [sp, #8]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+216
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L275
.L385:
	ldr	r2, [fp, #-192]
	ldr	r3, [fp, #-180]
	cmp	r2, r3
	bne	.L275
	ldr	ip, [fp, #-204]
	ldr	r3, [fp, #-200]
	ldr	r2, [fp, #-196]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	ldr	r3, [fp, #-156]
	str	r3, [sp, #8]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+220
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L275
.L295:
	ldr	r2, [fp, #-200]
	ldr	r3, [fp, #-184]
	cmp	r2, r3
	bne	.L389
	ldr	r2, [fp, #-204]
	ldr	r3, .L415+248
	sub	r0, fp, #20
	add	r3, r0, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-204]
	ldr	r1, .L415+228
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	sub	r2, fp, #20
	add	r3, r3, r2
	add	r3, r3, r1
	ldr	ip, [r3, #0]
	ldr	r3, [fp, #-156]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+224
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L275
.L389:
	ldr	r2, [fp, #-200]
	ldr	r3, [fp, #-180]
	cmp	r2, r3
	bne	.L275
	ldr	r2, [fp, #-204]
	ldr	r3, .L415+268
	sub	r4, fp, #20
	add	r3, r4, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-204]
	ldr	r1, .L415+228
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	sub	ip, fp, #20
	add	r3, r3, ip
	add	r3, r3, r1
	ldr	ip, [r3, #0]
	ldr	r3, [fp, #-156]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+232
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L275
.L296:
	ldr	r2, [fp, #-188]
	ldr	r3, [fp, #-184]
	cmp	r2, r3
	bne	.L393
	ldr	r3, .L415+248
	sub	lr, fp, #20
	add	r3, lr, r3
	ldr	r3, [r3, #0]
	ldr	r2, .L415+252
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L395
	mov	r3, #2
	str	r3, [fp, #-224]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+236
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	bl	myprintf(PLT)
	b	.L397
.L395:
	ldr	r3, .L415+248
	sub	r1, fp, #20
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L398
	mov	r3, #0
	str	r3, [fp, #-224]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+240
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	bl	myprintf(PLT)
	b	.L397
.L398:
	mov	r3, #1
	str	r3, [fp, #-224]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+244
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	bl	myprintf(PLT)
.L397:
	ldr	r3, .L415+248
	sub	r4, fp, #20
	add	r2, r4, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L415+248
	sub	ip, fp, #20
	add	r2, ip, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-188]
	sub	r2, fp, #228
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	b	.L275
.L393:
	ldr	r2, [fp, #-188]
	ldr	r3, [fp, #-180]
	cmp	r2, r3
	bne	.L275
	ldr	r3, .L415+268
	sub	lr, fp, #20
	add	r3, lr, r3
	ldr	r3, [r3, #0]
	ldr	r2, .L415+252
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L402
	mov	r3, #2
	str	r3, [fp, #-224]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+256
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	bl	myprintf(PLT)
	b	.L404
.L402:
	ldr	r3, .L415+268
	sub	r1, fp, #20
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L405
	mov	r3, #0
	str	r3, [fp, #-224]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+260
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	bl	myprintf(PLT)
	b	.L404
.L405:
	mov	r3, #1
	str	r3, [fp, #-224]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+264
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	bl	myprintf(PLT)
.L404:
	ldr	r3, .L415+268
	sub	r4, fp, #20
	add	r2, r4, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L415+268
	sub	ip, fp, #20
	add	r2, ip, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-188]
	sub	r2, fp, #228
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	b	.L275
.L297:
	ldr	ip, [fp, #-204]
	ldr	r3, [fp, #-200]
	str	r3, [sp, #0]
	ldr	r3, [fp, #-156]
	str	r3, [sp, #4]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+272
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L275
.L298:
	ldr	ip, [fp, #-192]
	ldr	r3, [fp, #-204]
	ldr	r2, [fp, #-200]
	ldr	r1, [fp, #-196]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	ldr	r3, [fp, #-156]
	str	r3, [sp, #12]
	ldr	r0, [fp, #-168]
	mov	r1, #1
	ldr	r3, .L415+276
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
.L275:
	ldr	r3, [fp, #-104]
	cmp	r3, #0
	bne	.L407
	ldr	r3, [fp, #-208]
	cmp	r3, #10
	beq	.L274
	ldr	r3, [fp, #-208]
	cmp	r3, #24
	beq	.L274
	mov	r3, #0
	str	r3, [fp, #-228]
	ldr	r3, [fp, #-188]
	sub	r2, fp, #228
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	b	.L274
.L407:
	bl	Quit(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #20
	ldmfd	sp, {r4, sl, fp, sp, pc}
	.size	Printer, .-Printer
	.align	2
	.global	admin
	.type	admin, %function
admin:
	@ args = 0, pretend = 0, frame = 2076
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #2080
	ldr	sl, .L431
.L430:
	add	sl, pc, sl
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, .L431+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-40]
	mov	r0, #2
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	ldr	r3, .L431+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-40]
	mov	r0, #3
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, .L431+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-40]
	mov	r0, #3
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	ldr	r3, .L431+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-40]
	mov	r0, #3
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	mov	r0, #3
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	mov	r3, #49
	str	r3, [fp, #-2064]
	sub	r2, fp, #2064
	sub	r2, r2, #4
	sub	ip, fp, #2080
	sub	ip, ip, #8
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #45
	str	r3, [fp, #-2060]
	sub	r2, fp, #2064
	sub	r2, r2, #4
	sub	ip, fp, #2080
	sub	ip, ip, #8
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-2064]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-2060]
	sub	r2, fp, #2064
	sub	r2, r2, #4
	sub	ip, fp, #2080
	sub	ip, ip, #8
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-36]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L431+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-40]
	mov	r0, #4
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	ldr	r3, .L431+24
	ldr	r3, [sl, r3]
	str	r3, [fp, #-40]
	mov	r0, #4
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-2064]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-2060]
	sub	r2, fp, #2064
	sub	r2, r2, #4
	sub	ip, fp, #2080
	sub	ip, ip, #8
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mvn	r3, #0
	str	r3, [fp, #-20]
	b	.L429
.L418:
.L429:
	sub	r3, fp, #2080
	sub	r3, r3, #8
	sub	r2, fp, #2080
	sub	r2, r2, #12
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-2088]
	cmp	r3, #16
	beq	.L420
	b	.L419
.L420:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L421
	ldr	r3, [fp, #-2092]
	str	r3, [fp, #-20]
	b	.L418
.L421:
	ldr	r1, [fp, #-2092]
	ldr	r2, [fp, #-48]
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	sub	r3, fp, #2048
	add	r3, r3, r2
	mov	r0, r1
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	ldr	r3, .L431+28
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #5
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	rsb	r3, r3, r1
	str	r3, [fp, #-48]
	b	.L418
.L419:
	ldr	r3, [fp, #-20]
	cmn	r3, #1
	beq	.L425
	sub	r3, fp, #2080
	sub	r3, r3, #8
	ldr	r0, [fp, #-20]
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	mvn	r3, #0
	str	r3, [fp, #-20]
	b	.L427
.L425:
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-2088]
	ldr	r0, .L431+32
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r3, r3, r0
	str	r1, [r3, #0]
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-2084]
	ldr	r0, .L431+36
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r3, r3, r0
	str	r1, [r3, #0]
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-2080]
	ldr	r0, .L431+40
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r3, r3, r0
	str	r1, [r3, #0]
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-2076]
	ldr	r0, .L431+44
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r3, r3, r0
	str	r1, [r3, #0]
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-2072]
	ldr	r0, .L431+48
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r3, r3, r0
	str	r1, [r3, #0]
	ldr	r3, [fp, #-44]
	add	r1, r3, #1
	ldr	r3, .L431+28
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #5
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	rsb	r3, r3, r1
	str	r3, [fp, #-44]
.L427:
	mov	r3, #0
	str	r3, [fp, #-2068]
	ldr	r2, [fp, #-2092]
	sub	r3, fp, #2064
	sub	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	b	.L418
.L432:
	.align	2
.L431:
	.word	_GLOBAL_OFFSET_TABLE_-(.L430+8)
	.word	trackMonitor(GOT)
	.word	Printer(GOT)
	.word	routeFinder(GOT)
	.word	trainDriver(GOT)
	.word	Train(GOT)
	.word	Terminal(GOT)
	.word	1374389535
	.word	-2032
	.word	-2028
	.word	-2024
	.word	-2020
	.word	-2016
	.size	admin, .-admin
	.align	2
	.global	T2
	.type	T2, %function
T2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
.L434:
	b	.L434
	.size	T2, .-T2
	.align	2
	.global	firstUserTask
	.type	firstUserTask, %function
firstUserTask:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	ldr	sl, .L439
.L438:
	add	sl, pc, sl
	ldr	r3, .L439+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L439+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L439+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L439+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L439+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L439+24
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L439+28
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #2
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L439+32
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #9
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L440:
	.align	2
.L439:
	.word	_GLOBAL_OFFSET_TABLE_-(.L438+8)
	.word	nameServer(GOT)
	.word	uart2GetServer(GOT)
	.word	uart2PutServer(GOT)
	.word	uart1PutServer(GOT)
	.word	uart1GetServer(GOT)
	.word	clockServer(GOT)
	.word	admin(GOT)
	.word	T2(GOT)
	.size	firstUserTask, .-firstUserTask
	.section	.rodata
	.align	2
.LC59:
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
	ldr	sl, .L444
.L443:
	add	sl, pc, sl
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L444+4
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Pass(PLT)
	mov	r0, #1
	ldr	r3, .L444+4
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L445:
	.align	2
.L444:
	.word	_GLOBAL_OFFSET_TABLE_-(.L443+8)
	.word	.LC59(GOTOFF)
	.size	theOtherTask, .-theOtherTask
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
	ldr	sl, .L451
.L450:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L451+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L451+8
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #56
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	stmfd sp!, {r4-r9, sl, fp, ip, lr}
	ldr r1, [r0, #0]
	ldr r2, [r0, #4]
	ldr r3, [r0, #8]
	ldr r4, [r0, #12]
	stmfd sp!, {r2-r4}
	msr CPSR, #0xdf
	mov sp, r1
	ldmfd sp!, {r0-r9, sl, fp, ip, lr}
	msr CPSR, #0xd3
	ldmfd sp!, {r0}
	msr SPSR, r0
	ldmfd sp!, {r0, lr}
	movs pc, lr
.L448:
	stmfd sp!, {r0, r1, lr}
	mov r0, sp
	mrs r1, SPSR
	add sp, sp, #12
	msr CPSR, #0xd3
	msr SPSR, r1
	ldmfd r0, {r0, r1, lr}
	sub lr, lr, #4
	msr CPSR, #0xdf
	stmfd sp!, {r0-r9, sl, fp, ip, lr}
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
.L447:
	msr CPSR, #0xdf
	stmfd sp!, {r0-r9, sl, fp, ip, lr}
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
	ldmfd sp!, {lr}
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L452:
	.align	2
.L451:
	.word	_GLOBAL_OFFSET_TABLE_-(.L450+8)
	.word	.L447(GOTOFF)
	.word	.L448(GOTOFF)
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
	b	.L454
.L455:
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
.L454:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L455
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
	ldr	r3, .L460
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
.L461:
	.align	2
.L460:
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
	ldr	sl, .L477
.L476:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L463
.L464:
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
.L463:
	ldr	r3, [fp, #-24]
	cmp	r3, #29
	ble	.L464
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L466
.L467:
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
.L466:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	ble	.L467
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	mov	r3, #16
	str	r3, [r2, #4]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, .L477+4
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
	b	.L469
.L470:
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
.L469:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L470
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
	b	.L472
.L473:
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
.L472:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	ble	.L473
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
.L478:
	.align	2
.L477:
	.word	_GLOBAL_OFFSET_TABLE_-(.L476+8)
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
	b	.L480
.L481:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bne	.L482
	ldr	r3, .L489
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
.L482:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L484
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
	b	.L486
.L484:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L480:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L481
	mov	r3, #0
	str	r3, [fp, #-40]
.L486:
	ldr	r3, [fp, #-40]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L490:
	.align	2
.L489:
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
	bne	.L492
	ldr	r3, .L497
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
.L492:
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
	beq	.L496
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
.L496:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L498:
	.align	2
.L497:
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
	bne	.L500
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L503
.L500:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #60]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L503:
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
	bne	.L505
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L505:
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
	beq	.L509
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #60]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L511
.L509:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L511:
	ldr	r2, [fp, #-16]
	mov	r3, #6
	str	r3, [r2, #20]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	closeActive, .-closeActive
	.global	__floatsidf
	.global	__divdf3
	.global	__muldf3
	.global	__fixdfsi
	.align	2
	.global	handle
	.type	handle, %function
handle:
	@ args = 20, pretend = 0, frame = 264
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, r5, r6, r7, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #268
	str	r0, [fp, #-252]
	str	r1, [fp, #-256]
	str	r2, [fp, #-260]
	str	r3, [fp, #-264]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #20]
	cmp	r3, #11
	addls	pc, pc, r3, asl #2
	b	.L577
	.p2align 2
.L527:
	b	.L515
	b	.L516
	b	.L517
	b	.L518
	b	.L519
	b	.L520
	b	.L521
	b	.L522
	b	.L523
	b	.L524
	b	.L525
	b	.L526
.L515:
	ldr	r3, .L578
	ldr	r3, [r3, #0]
	str	r3, [fp, #-248]
	ldr	r3, [fp, #-248]
	mov	r3, r3, lsr #19
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L528
	ldr	r3, .L578+4
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
	bne	.L530
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
	ldr	r3, .L578+44
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
	ldr	r3, [fp, #-264]
	ldr	r2, [fp, #-292]
	str	r2, [r3, #60]
	ldr	r3, [fp, #-264]
	ldr	r3, [r3, #64]
	add	r2, r3, #1
	ldr	r3, [fp, #-264]
	str	r2, [r3, #64]
	b	.L532
.L530:
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
.L532:
	ldr	r3, .L578+8
	str	r3, [fp, #-240]
	ldr	r2, [fp, #-240]
	ldr	r3, .L578+12
	str	r3, [r2, #0]
	ldr	r3, .L578+16
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
	b	.L577
.L528:
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	ldr	r3, .L578+20
	ldr	r3, [r3, #0]
	str	r3, [fp, #-228]
	ldr	r3, .L578+24
	ldr	r3, [r3, #0]
	str	r3, [fp, #-224]
	ldr	r3, [fp, #-228]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L534
	ldr	r3, .L578+28
	str	r3, [fp, #-220]
	ldr	r3, [fp, #-264]
	add	r3, r3, #136
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L577
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
	b	.L577
.L534:
	ldr	r3, [fp, #-228]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L538
	ldr	r3, .L578+48
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
	beq	.L540
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
	b	.L577
.L540:
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
	ldr	r3, .L578+44
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
	add	r2, r3, #68
	ldr	r3, [r2, #64]
	add	r3, r3, #1
	str	r3, [r2, #64]
	b	.L577
.L538:
	ldr	r3, [fp, #-228]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L543
	ldr	r2, .L578+20
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-264]
	add	r3, r3, #340
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L545
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
	ldr	r3, .L578+44
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
	add	r2, r3, #340
	ldr	r3, [r2, #64]
	add	r3, r3, #1
	str	r3, [r2, #64]
	b	.L577
.L545:
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
	b	.L577
.L543:
	ldr	r3, [fp, #-224]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L548
	ldr	r3, .L578+32
	str	r3, [fp, #-200]
	ldr	r3, [fp, #-264]
	add	r3, r3, #272
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L577
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
	b	.L577
.L548:
	ldr	r3, [fp, #-224]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L577
	ldr	r3, .L578+36
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
	beq	.L553
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
	b	.L577
.L553:
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
	ldr	r3, .L578+44
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
	b	.L577
.L516:
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
	mov	r3, #16
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
	b	.L555
.L556:
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
.L555:
	ldr	r3, [fp, #-152]
	cmp	r3, #0
	bge	.L556
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L558
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #4]
	b	.L560
.L558:
	ldr	r3, [fp, #-160]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #60]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #4]
.L560:
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
	b	.L577
.L517:
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
	b	.L577
.L518:
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
	b	.L577
.L519:
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	b	.L577
.L520:
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	bl	closeActive(PLT)
	b	.L577
.L521:
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
	ble	.L561
	ldr	r3, [fp, #-128]
	cmp	r3, #30
	ble	.L563
.L561:
	ldr	r2, [fp, #-132]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L577
.L563:
	ldr	r3, [fp, #-140]
	mov	r0, r3
	ldr	r1, [fp, #-256]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #20]
	cmp	r3, #2
	bne	.L564
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
	b	.L577
.L564:
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
	ldr	r3, .L578+40
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
	b	.L577
.L522:
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
	bne	.L567
	ldr	r3, [fp, #-108]
	mov	r2, #2
	str	r2, [r3, #20]
	ldr	r3, [fp, #-116]
	mov	r0, r3
	ldr	r1, [fp, #-256]
	bl	blockActive(PLT)
	b	.L577
.L567:
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
	ldr	r3, .L578+40
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
	b	.L577
.L523:
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
	b	.L577
.L524:
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
	bne	.L570
	ldr	r3, .L578+36
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-56]
	str	r2, [r3, #0]
	b	.L572
.L579:
	.align	2
.L578:
	.word	-2146697216
	.word	-2139029364
	.word	-2139029376
	.word	5080
	.word	-2139029368
	.word	-2138308580
	.word	-2138243044
	.word	-2138308608
	.word	-2138243072
	.word	-2138243052
	.word	-2004318071
	.word	1374389535
	.word	-2138308588
	.word	-2139029408
.L570:
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L572
	ldr	r3, .L578+48
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-52]
	str	r2, [r3, #0]
.L572:
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
	ble	.L574
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
	ldr	r3, .L578+44
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
	b	.L577
.L574:
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
	b	.L577
.L525:
	ldr	r3, .L578+48
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
	b	.L577
.L526:
	ldr	r3, .L578+52
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
.L577:
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
	ldr	r3, .L585
	sub	r2, fp, #12
	str	r0, [r2, r3]
	ldr	r3, .L585+4
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
	ldr	r3, .L585+8
	str	r3, [fp, #-36]
	ldr	r3, .L585+12
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
	ldr	r2, .L585+16
	mov	r3, #0
	sub	r1, fp, #12
	str	r3, [r1, r2]
	ldr	r2, .L585+20
	mov	r3, #0
	sub	r1, fp, #12
	str	r3, [r1, r2]
	ldr	r2, .L585+24
	mov	r3, #0
	sub	r1, fp, #12
	str	r3, [r1, r2]
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #0]
	ldr	r3, .L585+28
	sub	r1, fp, #12
	str	r2, [r1, r3]
.L581:
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
	beq	.L582
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
	b	.L581
.L582:
	ldr	r3, .L585+32
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L585+36
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
	ldr	r3, .L585+40
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #524288
	str	r3, [r2, #0]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L586:
	.align	2
.L585:
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
