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
	@ args = 0, pretend = 0, frame = 184
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #188
	ldr	sl, .L263
.L262:
	add	sl, pc, sl
	ldr	r3, .L263+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-96]
	mov	r3, #0
	str	r3, [fp, #-92]
	sub	r2, fp, #116
	sub	r3, fp, #200
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-200]
	sub	r2, fp, #116
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r3, [fp, #-112]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-108]
	str	r3, [fp, #-80]
	b	.L261
.L2:
.L261:
	ldr	r0, [fp, #-96]
	mov	r1, #1
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-73]
	ldr	r3, [fp, #-92]
	cmp	r3, #60
	bne	.L3
	ldrb	r3, [fp, #-73]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L3
	ldrb	r3, [fp, #-73]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L2
.L3:
	ldrb	r3, [fp, #-73]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L7
	mov	r3, #2
	str	r3, [fp, #-116]
	mov	r3, #0
	str	r3, [fp, #-72]
	b	.L9
.L10:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L11
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #113
	bne	.L13
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
	b	.L15
.L16:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L17
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L15:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L16
.L17:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L46
	mov	r3, #5
	str	r3, [fp, #-116]
	b	.L46
.L13:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #116
	bne	.L22
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L22
	mvn	r3, #0
	str	r3, [fp, #-68]
	mvn	r3, #0
	str	r3, [fp, #-64]
	mov	r3, #1
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	b	.L25
.L26:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L27
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L29
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L29
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L29
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L33
.L29:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L34
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L34
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L34
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L34
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L34
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-72]
	mvn	r2, #179
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
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L33
.L34:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bne	.L33
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L33
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L33
	mov	r3, #80
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L33
.L27:
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L25:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L26
.L33:
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L47
	mov	r3, #0
	str	r3, [fp, #-92]
	b	.L46
.L48:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L49
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L51
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L51
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L54
	ldr	r3, [fp, #-72]
	add	r2, r3, #1
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L51
.L54:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L56
.L51:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L56
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L56
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #52
	bhi	.L56
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #38
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L56
.L49:
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L47:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L48
.L56:
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L63
	mov	r3, #0
	str	r3, [fp, #-92]
	b	.L46
.L64:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L65
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L63:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L64
.L65:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L67
	ldr	r3, [fp, #-68]
	cmn	r3, #1
	beq	.L67
	ldr	r3, [fp, #-64]
	cmn	r3, #1
	beq	.L67
	mov	r3, #6
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-108]
	b	.L46
.L67:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bhi	.L46
	ldr	r3, [fp, #-68]
	cmn	r3, #1
	beq	.L46
	ldr	r3, [fp, #-64]
	cmn	r3, #1
	beq	.L46
	mvn	r3, #0
	str	r3, [fp, #-56]
	b	.L75
.L76:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L77
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #66
	bne	.L79
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #82
	bne	.L79
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L82
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L82
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L85
	ldr	r3, [fp, #-72]
	add	r2, r3, #3
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L82
.L85:
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	sub	r3, r3, #18
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	str	r3, [fp, #-72]
	b	.L134
.L82:
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L88
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L88
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bhi	.L88
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L92
	ldr	r3, [fp, #-72]
	add	r2, r3, #4
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L88
.L92:
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r3, #2
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	str	r3, [fp, #-72]
	b	.L134
.L88:
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #53
	bne	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #50
	bls	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #5
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L99
	ldr	r3, [fp, #-72]
	add	r2, r3, #5
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L77
.L99:
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r3, #14
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-72]
	add	r3, r3, #5
	str	r3, [fp, #-72]
	b	.L134
.L79:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #77
	bne	.L101
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #82
	bne	.L101
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L104
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L104
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L107
	ldr	r3, [fp, #-72]
	add	r2, r3, #3
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L104
.L107:
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	sub	r3, r3, #17
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	str	r3, [fp, #-72]
	b	.L134
.L104:
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L109
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L109
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bhi	.L109
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L113
	ldr	r3, [fp, #-72]
	add	r2, r3, #4
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L109
.L113:
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r3, #3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	str	r3, [fp, #-72]
	b	.L134
.L109:
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #53
	bne	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #50
	bls	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #5
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L120
	ldr	r3, [fp, #-72]
	add	r2, r3, #5
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L77
.L120:
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	add	r3, r3, #15
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-72]
	add	r3, r3, #5
	str	r3, [fp, #-72]
	b	.L134
.L101:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L77
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #69
	bhi	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L124
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L124
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L127
	ldr	r3, [fp, #-72]
	add	r2, r3, #2
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L124
.L127:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3, asl #4
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	add	r3, r1, r3
	sub	r3, r3, #1088
	sub	r3, r3, #1
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	b	.L134
.L124:
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L77
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L132
	ldr	r3, [fp, #-72]
	add	r2, r3, #3
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L77
.L132:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3, asl #4
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	add	r3, r1, r3
	sub	r3, r3, #1072
	sub	r3, r3, #7
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	str	r3, [fp, #-72]
	b	.L134
.L77:
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L75:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L76
	b	.L134
.L135:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L136
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L134:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L135
.L136:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-56]
	cmn	r3, #1
	beq	.L46
	mov	r3, #14
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-64]
	cmp	r3, #49
	bne	.L140
	sub	r3, fp, #116
	sub	ip, fp, #136
	mov	r2, #20
	str	r2, [sp, #0]
	ldr	r0, [fp, #-84]
	mov	r1, r3
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L46
.L140:
	ldr	r3, [fp, #-64]
	cmp	r3, #45
	bne	.L46
	sub	r3, fp, #116
	sub	ip, fp, #136
	mov	r2, #20
	str	r2, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r3
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L46
.L264:
	.align	2
.L263:
	.word	_GLOBAL_OFFSET_TABLE_-(.L262+8)
	.word	.LC0(GOTOFF)
.L22:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L143
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #97
	bne	.L143
	mvn	r3, #0
	str	r3, [fp, #-52]
	mvn	r3, #0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	b	.L146
.L147:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L148
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-72]
	mvn	r2, #179
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
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
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
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-52]
	cmp	r3, #49
	bne	.L150
	mov	r3, #29
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-112]
	sub	r2, fp, #116
	sub	ip, fp, #136
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #28
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-108]
	sub	r2, fp, #116
	sub	ip, fp, #136
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-84]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L46
.L150:
	ldr	r3, [fp, #-52]
	cmp	r3, #45
	bne	.L46
	mov	r3, #29
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-112]
	sub	r2, fp, #116
	sub	ip, fp, #136
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-84]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #28
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-108]
	sub	r2, fp, #116
	sub	ip, fp, #136
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-80]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L46
.L148:
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L146:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L147
	b	.L46
.L143:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L155
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #118
	bne	.L155
	mvn	r3, #0
	str	r3, [fp, #-44]
	mvn	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	b	.L158
.L159:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L160
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L162
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L162
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L165
	ldr	r3, [fp, #-72]
	add	r2, r3, #1
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L162
.L165:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L167
.L162:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L168
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L168
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L168
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L168
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-72]
	mvn	r2, #179
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
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L167
.L168:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bne	.L167
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L167
	mov	r3, #80
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L167
.L160:
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L158:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L159
.L167:
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	bne	.L178
	mov	r3, #0
	str	r3, [fp, #-92]
	b	.L46
.L179:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L180
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L178:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L179
.L180:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-44]
	cmn	r3, #1
	beq	.L46
	mov	r3, #9
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-112]
	b	.L46
.L155:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L185
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #119
	bne	.L185
	mvn	r3, #0
	str	r3, [fp, #-36]
	mvn	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	b	.L188
.L189:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L190
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L192
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L192
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L192
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L196
.L192:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L197
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L197
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bhi	.L197
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L197
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #38
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L196
.L197:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L196
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #53
	bne	.L196
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #50
	bls	.L196
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L196
	ldr	r3, [fp, #-72]
	add	r3, r3, #3
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L196
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	add	r3, r3, #102
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-72]
	add	r3, r3, #4
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L196
.L190:
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L188:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L189
.L196:
	ldr	r3, [fp, #-28]
	cmp	r3, #1
	bne	.L210
	mov	r3, #0
	str	r3, [fp, #-92]
	b	.L46
.L211:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L212
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #83
	bne	.L214
	mov	r3, #33
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L216
.L214:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #67
	bne	.L216
	mov	r3, #34
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L216
.L212:
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L210:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L211
.L216:
	ldr	r3, [fp, #-28]
	cmp	r3, #1
	bne	.L221
	mov	r3, #0
	str	r3, [fp, #-92]
	b	.L46
.L222:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L223
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L221:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L222
.L223:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-32]
	cmn	r3, #1
	beq	.L46
	ldr	r3, [fp, #-36]
	cmn	r3, #1
	beq	.L46
	mov	r3, #7
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-108]
	b	.L46
.L185:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L46
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
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
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	b	.L231
.L232:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L233
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L235
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L235
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L238
	ldr	r3, [fp, #-72]
	add	r2, r3, #1
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L235
.L238:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L240
.L235:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L240
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L240
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L240
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L240
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-72]
	mvn	r2, #179
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
	ldr	r3, [fp, #-72]
	add	r3, r3, #2
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L240
.L233:
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L231:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L232
.L240:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L248
	mov	r3, #0
	str	r3, [fp, #-92]
	b	.L46
.L249:
	ldr	r3, [fp, #-72]
	mvn	r2, #179
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L250
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L248:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L249
.L250:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	beq	.L46
	mov	r3, #12
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-112]
	b	.L46
.L11:
	ldr	r3, [fp, #-72]
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L9:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcc	.L10
.L46:
	mov	r3, #0
	str	r3, [fp, #-92]
	b	.L254
.L7:
	ldrb	r3, [fp, #-73]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L255
	ldr	r3, [fp, #-92]
	cmp	r3, #0
	beq	.L2
	mov	r3, #4
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-92]
	sub	r3, r3, #1
	str	r3, [fp, #-92]
	b	.L254
.L255:
	mov	r3, #1
	str	r3, [fp, #-116]
	ldrb	r3, [fp, #-73]	@ zero_extendqisi2
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-92]
	mvn	r2, #179
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-73]
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
.L254:
	ldr	r3, [fp, #-116]
	cmp	r3, #14
	beq	.L2
	ldr	r3, [fp, #-116]
	cmp	r3, #28
	beq	.L2
	ldr	r2, [fp, #-200]
	sub	r1, fp, #116
	sub	ip, fp, #136
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
	ldr	sl, .L275
.L274:
	add	sl, pc, sl
	ldr	r3, .L275+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, .L275+8
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
.L266:
	ldr	r0, [fp, #-32]
	mov	r1, #0
	mov	r2, #133
	bl	Putc(PLT)
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L267
.L268:
	ldr	r3, [fp, #-20]
	eor	r3, r3, #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L269
	ldr	r0, [fp, #-36]
	mov	r1, #0
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-22]
	b	.L271
.L269:
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
.L271:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L267:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	ble	.L268
	b	.L266
.L276:
	.align	2
.L275:
	.word	_GLOBAL_OFFSET_TABLE_-(.L274+8)
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
	ldr	sl, .L281
.L280:
	add	sl, pc, sl
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, .L281+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
.L278:
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
	b	.L278
.L282:
	.align	2
.L281:
	.word	_GLOBAL_OFFSET_TABLE_-(.L280+8)
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
	.ascii	"\033[32;1H\033[K\033[32mTrain %d catch train %d\012"
	.ascii	"\000"
	.align	2
.LC40:
	.ascii	"\033[32;1H\033[K\033[31mSet Train %d's Speed First\012"
	.ascii	"\000"
	.align	2
.LC41:
	.ascii	"\033[32;1H\033[K\033[32mReversing Train %d\012\000"
	.align	2
.LC42:
	.ascii	"\033[32;1H\033[K\033[32mStop at sensor: %d\012\000"
	.align	2
.LC43:
	.ascii	"\033[32;1H\033[K\033[32mSetting Train: %d Speed: %d"
	.ascii	" Loc: %s\012\000"
	.align	2
.LC44:
	.ascii	"\033[47;1H\033[KTrain49: \000"
	.align	2
.LC45:
	.ascii	"%s \000"
	.align	2
.LC46:
	.ascii	"\033[49;1H\033[KTrain45: \000"
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
	.align	2
.LC59:
	.ascii	"\033[51;1H\033[KTrain 49: startpos: %s\033[33;%dH\000"
	.align	2
.LC60:
	.ascii	"\033[52;1H\033[KTrain 45: startpos: %s\033[33;%dH\000"
	.text
	.align	2
	.global	Printer
	.type	Printer, %function
Printer:
	@ args = 0, pretend = 0, frame = 8268
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {r4, sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8256
	sub	sp, sp, #56
	ldr	sl, .L437
.L436:
	add	sl, pc, sl
	sub	r2, fp, #220
	sub	r3, fp, #200
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-216]
	str	r3, [fp, #-196]
	ldr	r3, [fp, #-212]
	str	r3, [fp, #-192]
	mov	r3, #0
	str	r3, [fp, #-240]
	ldr	r3, [fp, #-200]
	sub	r2, fp, #240
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r3, .L437+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	sub	r3, fp, #7104
	sub	r3, r3, #20
	sub	r3, r3, #28
	mov	r0, r3
	bl	init_tracka(PLT)
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-188]
	ldr	r3, .L437+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-184]
	ldr	r3, .L437+12
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-180]
	ldr	r3, .L437+16
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-176]
	mov	r3, #0
	str	r3, [fp, #-172]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+24
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+32
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+64
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+68
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+72
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+76
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+80
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+84
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, #96
	bl	Putc(PLT)
	mov	r3, #4
	str	r3, [fp, #-168]
	mov	r3, #0
	str	r3, [fp, #-164]
	mov	r3, #0
	str	r3, [fp, #-160]
	mov	r3, #0
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
	b	.L284
.L285:
	ldr	r3, [fp, #-136]
	ldr	r2, .L437+184
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r3, r0
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-136]
	ldr	r2, .L437+248
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-136]
	ldr	r2, .L437+180
	mov	r3, r3, asl #2
	sub	r4, fp, #20
	add	r3, r3, r4
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-136]
	ldr	r2, .L437+88
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, r3, ip
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-136]
	add	r3, r3, #1
	str	r3, [fp, #-136]
.L284:
	ldr	r3, [fp, #-136]
	cmp	r3, #79
	ble	.L285
	ldr	r3, .L437+92
	ldr	r3, [sl, r3]
	str	r3, [fp, #-132]
	mov	r0, #2
	ldr	r1, [fp, #-132]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-128]
	ldr	r3, .L437+92
	ldr	r3, [sl, r3]
	str	r3, [fp, #-132]
	mov	r0, #2
	ldr	r1, [fp, #-132]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-188]
	str	r3, [fp, #-236]
	sub	r2, fp, #240
	sub	ip, fp, #220
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-128]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-184]
	str	r3, [fp, #-236]
	sub	r2, fp, #240
	sub	ip, fp, #220
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-124]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+96
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-184]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+100
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mvn	r3, #0
	str	r3, [fp, #-120]
	mov	r3, #0
	str	r3, [fp, #-116]
	ldr	r3, .L437+244
	sub	lr, fp, #20
	add	r2, lr, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L437+244
	sub	r0, fp, #20
	add	r2, r0, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, .L437+264
	sub	r1, fp, #20
	add	r2, r1, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L437+264
	sub	r4, fp, #20
	add	r2, r4, r3
	mov	r3, #0
	str	r3, [r2, #4]
	mov	r3, #0
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-108]
	b	.L435
.L287:
.L435:
	sub	r2, fp, #220
	sub	r3, fp, #200
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	ldr	r3, [fp, #-220]
	sub	r3, r3, #1
	cmp	r3, #27
	addls	pc, pc, r3, asl #2
	b	.L288
	.p2align 2
.L314:
	b	.L289
	b	.L290
	b	.L291
	b	.L292
	b	.L293
	b	.L294
	b	.L295
	b	.L296
	b	.L297
	b	.L288
	b	.L298
	b	.L299
	b	.L300
	b	.L301
	b	.L288
	b	.L288
	b	.L302
	b	.L303
	b	.L288
	b	.L305
	b	.L306
	b	.L307
	b	.L308
	b	.L309
	b	.L310
	b	.L311
	b	.L312
	b	.L313
.L291:
	ldr	r3, [fp, #-140]
	add	r3, r3, #1
	str	r3, [fp, #-140]
	bl	IdleTime(PLT)
	mov	r3, r0
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-156]
	add	r1, r3, #1
	ldr	r3, .L437+104
	smull	ip, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r3, r3, r1
	str	r3, [fp, #-156]
	ldr	r3, [fp, #-156]
	cmp	r3, #0
	bne	.L315
	ldr	r3, [fp, #-160]
	add	r1, r3, #1
	ldr	r3, .L437+108
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
	str	r3, [fp, #-160]
	ldr	r3, [fp, #-160]
	cmp	r3, #0
	bne	.L315
	ldr	r3, [fp, #-164]
	add	r3, r3, #1
	str	r3, [fp, #-164]
.L315:
	ldr	r1, [fp, #-164]
	ldr	r3, .L437+104
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	ldr	r1, [fp, #-164]
	ldr	r3, .L437+104
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	lr, r3, r2
	sub	r4, fp, #8192
	str	lr, [r4, #-96]
	sub	r0, fp, #8192
	ldr	r3, [r0, #-96]
	mov	r3, r3, asl #2
	sub	r2, fp, #8192
	ldr	r2, [r2, #-96]
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	lr, r3, r1
	sub	r4, fp, #8192
	str	lr, [r4, #-96]
	ldr	r1, [fp, #-160]
	ldr	r3, .L437+104
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r0, r3, r2
	ldr	r1, [fp, #-160]
	ldr	r3, .L437+104
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	lr, r3, r2
	sub	r4, fp, #8192
	str	lr, [r4, #-92]
	sub	r2, fp, #8192
	ldr	r3, [r2, #-92]
	mov	r3, r3, asl #2
	sub	r4, fp, #8192
	ldr	r4, [r4, #-92]
	add	r3, r3, r4
	mov	r3, r3, asl #1
	rsb	r2, r3, r1
	sub	lr, fp, #8192
	str	r2, [lr, #-92]
	sub	r3, fp, #8192
	ldr	r3, [r3, #-96]
	str	r3, [sp, #0]
	str	r0, [sp, #4]
	sub	r4, fp, #8192
	ldr	r4, [r4, #-92]
	str	r4, [sp, #8]
	ldr	r3, [fp, #-156]
	str	r3, [sp, #12]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+112
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r3, [fp, #-168]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+116
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-104]
	bl	myprintf(PLT)
	b	.L288
.L289:
	ldr	r3, [fp, #-216]
	and	r3, r3, #255
	ldr	r0, [fp, #-180]
	mov	r1, #1
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-168]
	add	r3, r3, #1
	str	r3, [fp, #-168]
	b	.L288
.L290:
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+120
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-168]
	b	.L288
.L292:
	ldr	r3, [fp, #-168]
	sub	r3, r3, #1
	str	r3, [fp, #-168]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+124
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	myprintf(PLT)
	b	.L288
.L293:
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, #97
	bl	Putc(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+128
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-184]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	mov	r3, #1
	str	r3, [fp, #-116]
	b	.L288
.L294:
	ldr	r3, [fp, #-216]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-212]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	ip, [fp, #-212]
	ldr	r3, [fp, #-216]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+132
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-212]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-216]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	ldr	r2, .L437+180
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, r3, ip
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L318
	ldr	r3, .L437+136
	ldr	r3, [sl, r3]
	str	r3, [fp, #-132]
	mov	r0, #2
	ldr	r1, [fp, #-132]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	ldr	r2, .L437+180
	mov	r3, r3, asl #2
	sub	lr, fp, #20
	add	r3, r3, lr
	add	r2, r3, r2
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	ldr	r2, .L437+184
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r3, r0
	add	r2, r3, r2
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
	b	.L320
.L318:
	ldr	r3, [fp, #-100]
	sub	r3, r3, #1
	ldr	r2, .L437+184
	mov	r3, r3, asl #2
	sub	r1, fp, #20
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-96]
	str	r3, [r2, #0]
.L320:
	mov	r3, #4
	str	r3, [fp, #-168]
	b	.L288
.L295:
	ldr	r3, [fp, #-216]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-212]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-216]
	cmp	r3, #33
	bne	.L321
	mov	r3, #83
	sub	r2, fp, #8192
	str	r3, [r2, #-88]
	b	.L323
.L321:
	mov	ip, #67
	sub	r4, fp, #8192
	str	ip, [r4, #-88]
.L323:
	sub	lr, fp, #8192
	ldrb	r3, [lr, #-88]
	strb	r3, [fp, #-85]
	ldr	r3, [fp, #-212]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-84]
	cmp	r3, #0
	ble	.L324
	ldr	r3, [fp, #-84]
	cmp	r3, #10
	bgt	.L324
	ldr	r3, [fp, #-84]
	mov	r3, r3, asl #1
	sub	r3, r3, #1
	str	r3, [fp, #-84]
	b	.L327
.L324:
	ldr	r3, [fp, #-84]
	cmp	r3, #10
	ble	.L328
	ldr	r3, [fp, #-84]
	cmp	r3, #18
	bgt	.L328
	ldr	r1, [fp, #-84]
	ldr	r3, .L437+140
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	sub	r4, fp, #8192
	str	ip, [r4, #-84]
	sub	lr, fp, #8192
	ldr	r3, [lr, #-84]
	mov	r3, r3, asl #2
	sub	r0, fp, #8192
	ldr	r0, [r0, #-84]
	add	r3, r3, r0
	mov	r3, r3, asl #1
	sub	r2, fp, #8192
	ldr	r2, [r2, #-84]
	add	r3, r3, r2
	rsb	ip, r3, r1
	sub	r4, fp, #8192
	str	ip, [r4, #-84]
	sub	lr, fp, #8192
	ldr	r3, [lr, #-84]
	mov	r3, r3, asl #1
	sub	r0, fp, #8192
	ldr	r0, [r0, #-84]
	add	r3, r3, r0
	add	r3, r3, #22
	str	r3, [fp, #-84]
	b	.L327
.L328:
	ldr	r1, [fp, #-84]
	ldr	r3, .L437+144
	smull	r2, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #7
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	sub	r4, fp, #8192
	str	ip, [r4, #-80]
	sub	lr, fp, #8192
	ldr	r3, [lr, #-80]
	mov	r3, r3, asl #3
	sub	r0, fp, #8192
	ldr	r0, [r0, #-80]
	add	r3, r3, r0
	mov	r2, r3, asl #4
	add	r3, r3, r2
	rsb	r4, r3, r1
	sub	r2, fp, #8192
	str	r4, [r2, #-80]
	sub	ip, fp, #8192
	ldr	ip, [ip, #-80]
	mov	r3, ip, asl #2
	add	r3, r3, #47
	str	r3, [fp, #-84]
.L327:
	ldrb	r3, [fp, #-85]	@ zero_extendqisi2
	str	r3, [sp, #0]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+148
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-84]
	bl	myprintf(PLT)
	ldr	ip, [fp, #-212]
	ldrb	r3, [fp, #-85]	@ zero_extendqisi2
	str	r3, [sp, #0]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+152
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-168]
	b	.L288
.L296:
	ldr	r3, [fp, #-216]
	add	r1, r3, #4
	ldr	r3, .L437+104
	smull	lr, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r3, r1
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	cmp	r3, #0
	bne	.L331
	mov	r3, #5
	str	r3, [fp, #-80]
.L331:
	ldr	r3, [fp, #-216]
	add	r1, r3, #3
	ldr	r3, .L437+104
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r3, r1
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-76]
	cmp	r3, #0
	bne	.L333
	mov	r3, #5
	str	r3, [fp, #-76]
.L333:
	mvn	r3, #127
	strb	r3, [fp, #-65]
	mov	r3, #1
	str	r3, [fp, #-56]
	b	.L335
.L336:
	ldr	r3, [fp, #-56]
	mov	r3, r3, asl #2
	sub	r3, r3, #2
	str	r3, [fp, #-60]
	mov	r3, #0
	strb	r3, [fp, #-49]
	ldr	r3, [fp, #-56]
	cmp	r3, #8
	bgt	.L337
	ldr	r3, [fp, #-80]
	cmp	r3, #2
	bne	.L339
	mov	r3, #29
	str	r3, [fp, #-72]
	b	.L341
.L339:
	ldr	r3, [fp, #-80]
	cmp	r3, #1
	bne	.L342
	mov	r3, #25
	str	r3, [fp, #-72]
	b	.L341
.L342:
	ldr	r3, [fp, #-80]
	mov	r3, r3, asl #2
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L341:
	ldr	r2, [fp, #-208]
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	and	r2, r2, r3
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L346
	mov	r3, #1
	strb	r3, [fp, #-49]
	b	.L346
.L337:
	ldr	r3, [fp, #-76]
	cmp	r3, #2
	bne	.L347
	mov	r3, #29
	str	r3, [fp, #-72]
	b	.L349
.L347:
	ldr	r3, [fp, #-76]
	cmp	r3, #1
	bne	.L350
	mov	r3, #25
	str	r3, [fp, #-72]
	b	.L349
.L438:
	.align	2
.L437:
	.word	_GLOBAL_OFFSET_TABLE_-(.L436+8)
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
	.word	-8172
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
	.word	.LC41(GOTOFF)
	.word	-7452
	.word	-7772
	.word	.LC42(GOTOFF)
	.word	.LC44(GOTOFF)
	.word	.LC46(GOTOFF)
	.word	.LC45(GOTOFF)
	.word	.LC38(GOTOFF)
	.word	.LC43(GOTOFF)
	.word	.LC29(GOTOFF)
	.word	.LC47(GOTOFF)
	.word	.LC48(GOTOFF)
	.word	.LC49(GOTOFF)
	.word	.LC50(GOTOFF)
	.word	.LC51(GOTOFF)
	.word	.LC52(GOTOFF)
	.word	.LC53(GOTOFF)
	.word	-8180
	.word	-7852
	.word	.LC54(GOTOFF)
	.word	.LC55(GOTOFF)
	.word	.LC56(GOTOFF)
	.word	-8188
	.word	.LC57(GOTOFF)
	.word	.LC58(GOTOFF)
	.word	.LC59(GOTOFF)
	.word	-7132
	.word	.LC60(GOTOFF)
.L350:
	ldr	r3, [fp, #-76]
	mov	r3, r3, asl #2
	add	r3, r3, #1
	str	r3, [fp, #-72]
.L349:
	ldr	r2, [fp, #-212]
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	and	r2, r2, r3
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L346
	mov	r3, #1
	strb	r3, [fp, #-49]
.L346:
	ldr	r3, [fp, #-72]
	sub	r3, r3, #1
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	mov	r3, r3, asr #2
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-56]
	add	r3, r2, r3
	sub	r3, r3, #49
	str	r3, [fp, #-64]
	ldr	r3, .L437+244
	sub	r1, fp, #20
	add	r3, r1, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L353
	ldr	r3, .L437+244
	sub	r2, fp, #20
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-64]
	cmp	r2, r3
	bne	.L353
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L353
	ldr	r3, .L437+244
	sub	r4, fp, #20
	add	r2, r4, r3
	mov	r3, #1
	str	r3, [r2, #4]
.L353:
	ldr	r3, .L437+264
	sub	ip, fp, #20
	add	r3, ip, r3
	ldr	r3, [r3, #0]
	cmn	r3, #1
	beq	.L357
	ldr	r3, .L437+264
	sub	lr, fp, #20
	add	r3, lr, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-64]
	cmp	r2, r3
	bne	.L357
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L357
	ldr	r3, .L437+264
	sub	r0, fp, #20
	add	r2, r0, r3
	mov	r3, #1
	str	r3, [r2, #4]
.L357:
	ldr	r3, [fp, #-64]
	ldr	r2, .L437+248
	sub	r1, fp, #20
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L361
	ldr	r3, [fp, #-144]
	cmp	r3, #0
	beq	.L363
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L363
	mov	r3, #1
	str	r3, [fp, #-240]
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-236]
	ldr	r3, [fp, #-172]
	cmp	r3, #0
	bne	.L366
	ldr	r3, .L437+156
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-172]
.L366:
	sub	r2, fp, #240
	sub	ip, fp, #8192
	sub	ip, ip, #20
	sub	ip, ip, #16
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-172]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L363:
	ldr	r3, [fp, #-112]
	cmp	r3, #0
	beq	.L368
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L368
	mov	r3, #1
	str	r3, [fp, #-240]
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-236]
	sub	r2, fp, #240
	sub	ip, fp, #8192
	sub	ip, ip, #20
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-196]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L368:
	ldr	r3, [fp, #-108]
	cmp	r3, #0
	beq	.L371
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L371
	mov	r3, #1
	str	r3, [fp, #-240]
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-236]
	sub	r2, fp, #240
	sub	ip, fp, #8192
	sub	ip, ip, #20
	sub	ip, ip, #56
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-192]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
.L371:
	ldrb	r3, [fp, #-49]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L374
	ldrb	r2, [fp, #-49]	@ zero_extendqisi2
	ldr	r3, [fp, #-60]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+160
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-72]
	bl	myprintf(PLT)
	b	.L376
.L374:
	ldrb	r2, [fp, #-49]	@ zero_extendqisi2
	ldr	r3, [fp, #-60]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+164
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-72]
	bl	myprintf(PLT)
.L376:
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+204
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	myprintf(PLT)
	ldr	r3, [fp, #-64]
	ldr	r2, .L437+248
	sub	r4, fp, #20
	add	r3, r4, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-49]
	strb	r3, [r2, #0]
.L361:
	ldr	r3, [fp, #-56]
	cmp	r3, #8
	bne	.L377
	mvn	r3, #127
	strb	r3, [fp, #-65]
	b	.L379
.L377:
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	mov	r3, r3, lsr #1
	strb	r3, [fp, #-65]
.L379:
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L335:
	ldr	r3, [fp, #-56]
	cmp	r3, #16
	ble	.L336
	b	.L288
.L313:
	ldr	r3, [fp, #-216]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-212]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+168
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-48]
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-168]
	b	.L288
.L297:
	ldr	r3, [fp, #-216]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	ldr	r2, .L437+180
	mov	r3, r3, asl #2
	sub	ip, fp, #20
	add	r3, r3, ip
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L381
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+172
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-40]
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	b	.L383
.L381:
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, #0
	bl	Putc(PLT)
	ldr	r3, [fp, #-216]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	ip, [fp, #-216]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+176
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #0
	str	r3, [fp, #-240]
	mov	r3, #400
	str	r3, [fp, #-236]
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-232]
	ldr	r3, [fp, #-40]
	sub	r3, r3, #1
	ldr	r2, .L437+180
	mov	r3, r3, asl #2
	sub	lr, fp, #20
	add	r3, r3, lr
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	sub	r2, fp, #240
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
.L383:
	mov	r3, #4
	str	r3, [fp, #-168]
	b	.L288
.L298:
	ldr	r3, [fp, #-216]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	ldr	r2, .L437+184
	mov	r3, r3, asl #2
	sub	r0, fp, #20
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-32]
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, #15
	bl	Putc(PLT)
	ldr	r3, [fp, #-36]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-32]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-36]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	b	.L288
.L299:
	ldr	r3, [fp, #-216]
	str	r3, [fp, #-120]
	ldr	ip, [fp, #-216]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+188
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-168]
	b	.L288
.L301:
	ldr	r3, [fp, #-216]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-212]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	ip, [fp, #-212]
	ldr	r1, [fp, #-216]
	ldr	r2, [fp, #-208]
	ldr	r0, .L437+280
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
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+208
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-168]
	b	.L288
.L300:
	ldr	r2, [fp, #-216]
	ldr	r3, [fp, #-196]
	cmp	r2, r3
	bne	.L384
	mov	r3, #1
	str	r3, [fp, #-112]
	b	.L288
.L384:
	ldr	r2, [fp, #-216]
	ldr	r3, [fp, #-192]
	cmp	r2, r3
	bne	.L387
	mov	r3, #1
	str	r3, [fp, #-108]
	b	.L288
.L387:
	ldr	r3, [fp, #-216]
	str	r3, [fp, #-144]
	b	.L288
.L302:
	ldr	r2, [fp, #-216]
	ldr	r3, [fp, #-196]
	cmp	r2, r3
	bne	.L389
	mov	r3, #0
	str	r3, [fp, #-112]
	b	.L288
.L389:
	ldr	r2, [fp, #-216]
	ldr	r3, [fp, #-192]
	cmp	r2, r3
	bne	.L392
	mov	r3, #0
	str	r3, [fp, #-108]
	b	.L288
.L392:
	mov	r3, #0
	str	r3, [fp, #-144]
	b	.L288
.L303:
	ldr	r2, [fp, #-204]
	ldr	r3, [fp, #-196]
	cmp	r2, r3
	bne	.L394
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+192
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-216]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-28]
	b	.L396
.L397:
	ldr	r3, [fp, #-216]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	ldr	r2, [r2, r3, asl #3]
	ldr	r1, .L437+280
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
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r2, .L437+200
	add	r2, sl, r2
	bl	myprintf(PLT)
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	str	r3, [fp, #-28]
.L396:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bge	.L397
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+204
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	myprintf(PLT)
	b	.L288
.L394:
	ldr	r2, [fp, #-204]
	ldr	r3, [fp, #-192]
	cmp	r2, r3
	bne	.L288
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+196
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-216]
	ldr	r3, [r3, #400]
	str	r3, [fp, #-24]
	b	.L401
.L402:
	ldr	r3, [fp, #-216]
	mov	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r2, [r2, r3, asl #3]
	ldr	r1, .L437+280
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	sub	ip, fp, #20
	add	r3, r3, ip
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
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r2, .L437+200
	add	r2, sl, r2
	bl	myprintf(PLT)
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L401:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L402
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+204
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	myprintf(PLT)
	b	.L288
.L305:
	ldr	r3, [fp, #-216]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-212]
	and	r3, r3, #255
	ldr	r0, [fp, #-176]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	b	.L288
.L306:
	ldr	ip, [fp, #-212]
	ldr	r1, [fp, #-216]
	ldr	r2, [fp, #-208]
	ldr	r0, .L437+280
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
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+208
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+212
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-168]
	b	.L288
.L307:
	ldr	r2, [fp, #-204]
	ldr	r3, [fp, #-196]
	cmp	r2, r3
	bne	.L404
	ldr	ip, [fp, #-216]
	ldr	r3, [fp, #-212]
	ldr	r2, [fp, #-208]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	ldr	r3, [fp, #-168]
	str	r3, [sp, #8]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+216
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L288
.L404:
	ldr	r2, [fp, #-204]
	ldr	r3, [fp, #-192]
	cmp	r2, r3
	bne	.L288
	ldr	ip, [fp, #-216]
	ldr	r3, [fp, #-212]
	ldr	r2, [fp, #-208]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	ldr	r3, [fp, #-168]
	str	r3, [sp, #8]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+220
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L288
.L308:
	ldr	r2, [fp, #-212]
	ldr	r3, [fp, #-196]
	cmp	r2, r3
	bne	.L408
	ldr	r2, [fp, #-216]
	ldr	r3, .L437+244
	sub	r0, fp, #20
	add	r3, r0, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-216]
	ldr	r1, .L437+280
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	sub	r2, fp, #20
	add	r3, r3, r2
	add	r3, r3, r1
	ldr	ip, [r3, #0]
	ldr	r3, [fp, #-168]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+224
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L288
.L408:
	ldr	r2, [fp, #-212]
	ldr	r3, [fp, #-192]
	cmp	r2, r3
	bne	.L288
	ldr	r2, [fp, #-216]
	ldr	r3, .L437+264
	sub	r4, fp, #20
	add	r3, r4, r3
	str	r2, [r3, #0]
	ldr	r2, [fp, #-216]
	ldr	r1, .L437+280
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	sub	ip, fp, #20
	add	r3, r3, ip
	add	r3, r3, r1
	ldr	ip, [r3, #0]
	ldr	r3, [fp, #-168]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+228
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L288
.L309:
	ldr	r2, [fp, #-200]
	ldr	r3, [fp, #-196]
	cmp	r2, r3
	bne	.L412
	ldr	r3, .L437+244
	sub	lr, fp, #20
	add	r3, lr, r3
	ldr	r3, [r3, #0]
	ldr	r2, .L437+248
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L414
	mov	r3, #2
	str	r3, [fp, #-236]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+232
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	myprintf(PLT)
	b	.L416
.L414:
	ldr	r3, .L437+244
	sub	r1, fp, #20
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L417
	mov	r3, #0
	str	r3, [fp, #-236]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+236
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	myprintf(PLT)
	b	.L416
.L417:
	mov	r3, #1
	str	r3, [fp, #-236]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+240
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	myprintf(PLT)
.L416:
	ldr	r3, .L437+244
	sub	r4, fp, #20
	add	r2, r4, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L437+244
	sub	ip, fp, #20
	add	r2, ip, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-200]
	sub	r2, fp, #240
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	b	.L288
.L412:
	ldr	r2, [fp, #-200]
	ldr	r3, [fp, #-192]
	cmp	r2, r3
	bne	.L288
	ldr	r3, .L437+264
	sub	lr, fp, #20
	add	r3, lr, r3
	ldr	r3, [r3, #0]
	ldr	r2, .L437+248
	sub	r0, fp, #20
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L421
	mov	r3, #2
	str	r3, [fp, #-236]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+252
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	myprintf(PLT)
	b	.L423
.L421:
	ldr	r3, .L437+264
	sub	r1, fp, #20
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L424
	mov	r3, #0
	str	r3, [fp, #-236]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+256
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	myprintf(PLT)
	b	.L423
.L424:
	mov	r3, #1
	str	r3, [fp, #-236]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+260
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-168]
	bl	myprintf(PLT)
.L423:
	ldr	r3, .L437+264
	sub	r4, fp, #20
	add	r2, r4, r3
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L437+264
	sub	ip, fp, #20
	add	r2, ip, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-200]
	sub	r2, fp, #240
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	b	.L288
.L310:
	ldr	ip, [fp, #-216]
	ldr	r3, [fp, #-212]
	str	r3, [sp, #0]
	ldr	r3, [fp, #-168]
	str	r3, [sp, #4]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+268
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L288
.L311:
	ldr	ip, [fp, #-204]
	ldr	r3, [fp, #-216]
	ldr	r2, [fp, #-212]
	ldr	r1, [fp, #-208]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	ldr	r3, [fp, #-168]
	str	r3, [sp, #12]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+272
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L288
.L312:
	ldr	r2, [fp, #-204]
	ldr	r3, [fp, #-196]
	cmp	r2, r3
	bne	.L426
	ldr	r2, [fp, #-216]
	ldr	r1, .L437+280
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	sub	lr, fp, #20
	add	r3, r3, lr
	add	r3, r3, r1
	ldr	ip, [r3, #0]
	ldr	r3, [fp, #-168]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+276
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L288
.L426:
	ldr	r2, [fp, #-204]
	ldr	r3, [fp, #-192]
	cmp	r2, r3
	bne	.L288
	ldr	r2, [fp, #-216]
	ldr	r1, .L437+280
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #4
	sub	r0, fp, #20
	add	r3, r3, r0
	add	r3, r3, r1
	ldr	ip, [r3, #0]
	ldr	r3, [fp, #-168]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-180]
	mov	r1, #1
	ldr	r3, .L437+284
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
.L288:
	ldr	r3, [fp, #-116]
	cmp	r3, #0
	bne	.L429
	ldr	r3, [fp, #-220]
	cmp	r3, #10
	beq	.L287
	ldr	r3, [fp, #-220]
	cmp	r3, #24
	beq	.L287
	mov	r3, #0
	str	r3, [fp, #-240]
	ldr	r3, [fp, #-200]
	sub	r2, fp, #240
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	b	.L287
.L429:
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
	ldr	sl, .L453
.L452:
	add	sl, pc, sl
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, .L453+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-40]
	mov	r0, #2
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	ldr	r3, .L453+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-40]
	mov	r0, #3
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, .L453+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-40]
	mov	r0, #1
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	ldr	r3, .L453+16
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
	ldr	r3, .L453+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-40]
	mov	r0, #4
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	ldr	r3, .L453+24
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
	b	.L451
.L440:
.L451:
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
	beq	.L442
	b	.L441
.L442:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bne	.L443
	ldr	r3, [fp, #-2092]
	str	r3, [fp, #-20]
	b	.L440
.L443:
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
	ldr	r3, .L453+28
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
	b	.L440
.L441:
	ldr	r3, [fp, #-20]
	cmn	r3, #1
	beq	.L447
	sub	r3, fp, #2080
	sub	r3, r3, #8
	ldr	r0, [fp, #-20]
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	mvn	r3, #0
	str	r3, [fp, #-20]
	b	.L449
.L447:
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-2088]
	ldr	r0, .L453+32
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
	ldr	r0, .L453+36
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
	ldr	r0, .L453+40
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
	ldr	r0, .L453+44
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
	ldr	r0, .L453+48
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
	ldr	r3, .L453+28
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
.L449:
	mov	r3, #0
	str	r3, [fp, #-2068]
	ldr	r2, [fp, #-2092]
	sub	r3, fp, #2064
	sub	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	b	.L440
.L454:
	.align	2
.L453:
	.word	_GLOBAL_OFFSET_TABLE_-(.L452+8)
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
.L456:
	b	.L456
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
	ldr	sl, .L461
.L460:
	add	sl, pc, sl
	ldr	r3, .L461+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L461+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L461+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L461+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L461+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L461+24
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L461+28
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #2
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L461+32
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
.L462:
	.align	2
.L461:
	.word	_GLOBAL_OFFSET_TABLE_-(.L460+8)
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
.LC61:
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
	ldr	sl, .L466
.L465:
	add	sl, pc, sl
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L466+4
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Pass(PLT)
	mov	r0, #1
	ldr	r3, .L466+4
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L467:
	.align	2
.L466:
	.word	_GLOBAL_OFFSET_TABLE_-(.L465+8)
	.word	.LC61(GOTOFF)
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
	ldr	sl, .L473
.L472:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L473+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L473+8
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
.L470:
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
.L469:
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
.L474:
	.align	2
.L473:
	.word	_GLOBAL_OFFSET_TABLE_-(.L472+8)
	.word	.L469(GOTOFF)
	.word	.L470(GOTOFF)
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
	b	.L476
.L477:
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
.L476:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L477
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
	ldr	r3, .L482
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
.L483:
	.align	2
.L482:
	.word	828214
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
	ldr	sl, .L499
.L498:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L485
.L486:
	ldr	r3, [fp, #-24]
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-24]
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L485:
	ldr	r3, [fp, #-24]
	cmp	r3, #39
	ble	.L486
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L488
.L489:
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
.L488:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	ble	.L489
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
	ldr	r3, .L499+4
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
	b	.L491
.L492:
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
.L491:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L492
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
	b	.L494
.L495:
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
.L494:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	ble	.L495
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
.L500:
	.align	2
.L499:
	.word	_GLOBAL_OFFSET_TABLE_-(.L498+8)
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
	b	.L502
.L503:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bne	.L504
	ldr	r3, .L511
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
.L504:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L506
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
	b	.L508
.L506:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L502:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L503
	mov	r3, #0
	str	r3, [fp, #-40]
.L508:
	ldr	r3, [fp, #-40]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L512:
	.align	2
.L511:
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
	bne	.L514
	ldr	r3, .L519
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
.L514:
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
	beq	.L518
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
.L518:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L520:
	.align	2
.L519:
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
	bne	.L522
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L525
.L522:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #60]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L525:
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
	bne	.L527
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L527:
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
	beq	.L531
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #60]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L533
.L531:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L533:
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
	b	.L599
	.p2align 2
.L549:
	b	.L537
	b	.L538
	b	.L539
	b	.L540
	b	.L541
	b	.L542
	b	.L543
	b	.L544
	b	.L545
	b	.L546
	b	.L547
	b	.L548
.L537:
	ldr	r3, .L600
	ldr	r3, [r3, #0]
	str	r3, [fp, #-248]
	ldr	r3, [fp, #-248]
	mov	r3, r3, lsr #19
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L550
	ldr	r3, .L600+4
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
	bne	.L552
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
	ldr	r3, .L600+44
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
	b	.L554
.L552:
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
.L554:
	ldr	r3, .L600+8
	str	r3, [fp, #-240]
	ldr	r2, [fp, #-240]
	ldr	r3, .L600+12
	str	r3, [r2, #0]
	ldr	r3, .L600+16
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
	b	.L599
.L550:
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	ldr	r3, .L600+20
	ldr	r3, [r3, #0]
	str	r3, [fp, #-228]
	ldr	r3, .L600+24
	ldr	r3, [r3, #0]
	str	r3, [fp, #-224]
	ldr	r3, [fp, #-228]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L556
	ldr	r3, .L600+28
	str	r3, [fp, #-220]
	ldr	r3, [fp, #-264]
	add	r3, r3, #136
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L599
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
	b	.L599
.L556:
	ldr	r3, [fp, #-228]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L560
	ldr	r3, .L600+48
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
	beq	.L562
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
	b	.L599
.L562:
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
	ldr	r3, .L600+44
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
	b	.L599
.L560:
	ldr	r3, [fp, #-228]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L565
	ldr	r2, .L600+20
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-264]
	add	r3, r3, #340
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L567
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
	ldr	r3, .L600+44
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
	b	.L599
.L567:
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
	b	.L599
.L565:
	ldr	r3, [fp, #-224]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L570
	ldr	r3, .L600+32
	str	r3, [fp, #-200]
	ldr	r3, [fp, #-264]
	add	r3, r3, #272
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L599
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
	b	.L599
.L570:
	ldr	r3, [fp, #-224]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L599
	ldr	r3, .L600+40
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
	beq	.L575
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
	b	.L599
.L575:
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
	ldr	r3, .L600+44
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
	b	.L599
.L538:
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
	b	.L577
.L578:
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
.L577:
	ldr	r3, [fp, #-152]
	cmp	r3, #0
	bge	.L578
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L580
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #4]
	b	.L582
.L580:
	ldr	r3, [fp, #-160]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #60]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #4]
.L582:
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
	b	.L599
.L539:
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
	b	.L599
.L540:
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
	b	.L599
.L541:
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	b	.L599
.L542:
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	bl	closeActive(PLT)
	b	.L599
.L543:
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
	ble	.L583
	ldr	r3, [fp, #-128]
	cmp	r3, #40
	ble	.L585
.L583:
	ldr	r2, [fp, #-132]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L599
.L585:
	ldr	r3, [fp, #-140]
	mov	r0, r3
	ldr	r1, [fp, #-256]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #20]
	cmp	r3, #2
	bne	.L586
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
	b	.L599
.L586:
	ldr	r2, [fp, #-132]
	mov	r3, #3
	str	r3, [r2, #20]
	ldr	r3, [fp, #-128]
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r0, r3, #168
	ldr	r3, [fp, #-128]
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #168
	ldr	r3, [r3, #4]
	ldr	r1, [fp, #-136]
	mov	r2, #8
	mov	r3, r3, asl #2
	add	r3, r3, r0
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-128]
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r0, r3, #168
	ldr	r3, [fp, #-128]
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #168
	ldr	r3, [r3, #4]
	add	r1, r3, #1
	ldr	r3, .L600+36
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-276]
	ldr	r3, [fp, #-276]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-276]
	add	r3, r3, r2
	mov	r3, r3, asl #3
	rsb	r1, r3, r1
	str	r1, [fp, #-276]
	ldr	r3, [fp, #-276]
	str	r3, [r0, #4]
	b	.L599
.L544:
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
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #168
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-112]
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #168
	ldr	r3, [r3, #4]
	cmp	r1, r3
	bne	.L589
	ldr	r3, [fp, #-108]
	mov	r2, #2
	str	r2, [r3, #20]
	ldr	r3, [fp, #-116]
	mov	r0, r3
	ldr	r1, [fp, #-256]
	bl	blockActive(PLT)
	b	.L599
.L589:
	ldr	r3, [fp, #-112]
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r1, r3, #168
	ldr	r3, [fp, #-112]
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #168
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
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r0, r3, #168
	ldr	r3, [fp, #-112]
	mov	r2, r3
	mov	r2, r2, asl #1
	add	r2, r2, r3
	mov	r3, r2, asl #3
	rsb	r3, r2, r3
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #20]
	add	r3, r2, r3
	sub	r3, r3, #168
	ldr	r3, [r3, #0]
	add	r1, r3, #1
	ldr	r3, .L600+36
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-272]
	ldr	r3, [fp, #-272]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-272]
	add	r3, r3, r2
	mov	r3, r3, asl #3
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
	b	.L599
.L601:
	.align	2
.L600:
	.word	-2146697216
	.word	-2139029364
	.word	-2139029376
	.word	5080
	.word	-2139029368
	.word	-2138308580
	.word	-2138243044
	.word	-2138308608
	.word	-2138243072
	.word	1717986919
	.word	-2138243052
	.word	1374389535
	.word	-2138308588
	.word	-2139029408
.L545:
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
	b	.L599
.L546:
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
	bne	.L592
	ldr	r3, .L600+40
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-56]
	str	r2, [r3, #0]
	b	.L594
.L592:
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L594
	ldr	r3, .L600+48
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-52]
	str	r2, [r3, #0]
.L594:
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
	ble	.L596
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
	ldr	r3, .L600+44
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
	b	.L599
.L596:
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
	b	.L599
.L547:
	ldr	r3, .L600+48
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
	b	.L599
.L548:
	ldr	r3, .L600+52
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
.L599:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.size	handle, .-handle
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 10128
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #10112
	sub	sp, sp, #36
	ldr	r3, .L607
	sub	r2, fp, #12
	str	r0, [r2, r3]
	ldr	r3, .L607+4
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
	ldr	r3, .L607+8
	str	r3, [fp, #-36]
	ldr	r3, .L607+12
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #0]
	orr	r2, r3, #256
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
	sub	r1, fp, #2576
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	ip, fp, #2656
	sub	ip, ip, #12
	sub	ip, ip, #8
	sub	r2, fp, #10048
	sub	r2, r2, #12
	sub	r2, r2, #56
	sub	lr, fp, #3344
	sub	lr, lr, #12
	sub	r3, fp, #10048
	sub	r3, r3, #12
	sub	r3, r3, #16
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, ip
	mov	r3, lr
	bl	initialize(PLT)
	ldr	r2, .L607+16
	mov	r3, #0
	sub	r1, fp, #12
	str	r3, [r1, r2]
	ldr	r2, .L607+20
	mov	r3, #0
	sub	r1, fp, #12
	str	r3, [r1, r2]
	ldr	r2, .L607+24
	mov	r3, #0
	sub	r1, fp, #12
	str	r3, [r1, r2]
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #0]
	ldr	r3, .L607+28
	sub	r1, fp, #12
	str	r2, [r1, r3]
.L603:
	sub	r1, fp, #2656
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	r2, fp, #10048
	sub	r2, r2, #12
	sub	r2, r2, #56
	sub	r3, fp, #10048
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
	beq	.L604
	sub	r3, fp, #10048
	sub	r3, r3, #12
	sub	r3, r3, #56
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	getNextRequest(PLT)
	sub	r1, fp, #2576
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	r2, fp, #2656
	sub	r2, r2, #12
	sub	r2, r2, #8
	sub	ip, fp, #10048
	sub	ip, ip, #12
	sub	ip, ip, #56
	sub	lr, fp, #3344
	sub	lr, lr, #12
	sub	r3, fp, #10048
	sub	r3, r3, #12
	sub	r3, r3, #60
	str	r3, [sp, #0]
	sub	r3, fp, #10112
	sub	r3, r3, #12
	str	r3, [sp, #4]
	sub	r3, fp, #10112
	sub	r3, r3, #12
	sub	r3, r3, #4
	str	r3, [sp, #8]
	sub	r3, fp, #10112
	sub	r3, r3, #12
	sub	r3, r3, #8
	str	r3, [sp, #12]
	sub	r3, fp, #10048
	sub	r3, r3, #12
	sub	r3, r3, #16
	str	r3, [sp, #16]
	mov	r0, r1
	mov	r1, r2
	mov	r2, ip
	mov	r3, lr
	bl	handle(PLT)
	b	.L603
.L604:
	ldr	r3, .L607+32
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L607+36
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
	ldr	r3, .L607+40
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #524288
	str	r3, [r2, #0]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L608:
	.align	2
.L607:
	.word	-10124
	.word	-10128
	.word	-2139029404
	.word	-2139029408
	.word	-10108
	.word	-10112
	.word	-10116
	.word	-10120
	.word	-2139029376
	.word	-2139029368
	.word	-2146697196
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
