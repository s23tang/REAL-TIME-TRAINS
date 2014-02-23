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
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #148
	ldr	sl, .L150
.L149:
	add	sl, pc, sl
	ldr	r3, .L150+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-68]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L148
.L2:
.L148:
	ldr	r0, [fp, #-68]
	mov	r1, #1
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-53]
	ldr	r3, [fp, #-60]
	cmp	r3, #60
	bne	.L3
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L3
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L2
.L3:
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L7
	mov	r3, #2
	str	r3, [fp, #-84]
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L9
.L10:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L11
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #113
	bne	.L13
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
	b	.L15
.L16:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L17
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L15:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bcc	.L16
.L17:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bne	.L46
	mov	r3, #5
	str	r3, [fp, #-84]
	b	.L46
.L13:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #116
	bne	.L22
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L22
	mvn	r3, #0
	str	r3, [fp, #-48]
	mvn	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	str	r3, [fp, #-52]
	b	.L25
.L26:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L27
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L29
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L29
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L29
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L33
.L29:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L34
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L34
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L34
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L34
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L34
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-52]
	mvn	r2, #143
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
	ldr	r3, [fp, #-52]
	add	r3, r3, #3
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L33
.L34:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bne	.L33
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L33
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L33
	mov	r3, #80
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-52]
	add	r3, r3, #3
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L33
.L27:
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L25:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bcc	.L26
.L33:
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	bne	.L47
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L46
.L48:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L49
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L51
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L51
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L54
	ldr	r3, [fp, #-52]
	add	r2, r3, #1
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bne	.L51
.L54:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L56
.L51:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L56
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L56
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #52
	bhi	.L56
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #38
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L56
.L49:
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L47:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bcc	.L48
.L56:
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	bne	.L63
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L46
.L64:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L65
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L63:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bcc	.L64
.L65:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-48]
	cmn	r3, #1
	beq	.L46
	ldr	r3, [fp, #-44]
	cmn	r3, #1
	beq	.L46
	mov	r3, #6
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-76]
	b	.L46
.L22:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L71
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #118
	bne	.L71
	mvn	r3, #0
	str	r3, [fp, #-36]
	mvn	r3, #0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	str	r3, [fp, #-52]
	b	.L74
.L75:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L76
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L78
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L78
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L81
	ldr	r3, [fp, #-52]
	add	r2, r3, #1
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bne	.L78
.L81:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L83
.L78:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L84
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L84
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L84
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L84
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-52]
	mvn	r2, #143
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
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L83
.L84:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bne	.L83
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L83
	mov	r3, #80
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L83
.L76:
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L74:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bcc	.L75
.L83:
	ldr	r3, [fp, #-32]
	cmp	r3, #1
	bne	.L94
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L46
.L95:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L96
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L94:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bcc	.L95
.L96:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-36]
	cmn	r3, #1
	beq	.L46
	mov	r3, #9
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-80]
	b	.L46
.L71:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L46
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #119
	bne	.L46
	mvn	r3, #0
	str	r3, [fp, #-28]
	mvn	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	str	r3, [fp, #-52]
	b	.L103
.L104:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L105
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L107
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L107
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L107
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L111
.L107:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L112
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L112
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bhi	.L112
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L112
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #38
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-52]
	add	r3, r3, #3
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L111
.L112:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L111
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #53
	bne	.L111
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #50
	bls	.L111
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L111
	ldr	r3, [fp, #-52]
	add	r3, r3, #3
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L111
	ldr	r3, [fp, #-52]
	add	r3, r3, #2
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	add	r3, r3, #102
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-52]
	add	r3, r3, #4
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L111
.L105:
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L103:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bcc	.L104
.L111:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L125
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L46
.L126:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L127
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #83
	bne	.L129
	mov	r3, #33
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L131
.L129:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #67
	bne	.L131
	mov	r3, #34
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L131
.L127:
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L125:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bcc	.L126
.L131:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L136
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L46
.L137:
	ldr	r3, [fp, #-52]
	mvn	r2, #143
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L138
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L136:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bcc	.L137
.L138:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	beq	.L46
	ldr	r3, [fp, #-28]
	cmn	r3, #1
	beq	.L46
	mov	r3, #7
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-76]
	b	.L46
.L11:
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L9:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bcc	.L10
.L46:
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L143
.L7:
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L144
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	beq	.L2
	mov	r3, #4
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-60]
	sub	r3, r3, #1
	str	r3, [fp, #-60]
	b	.L143
.L144:
	mov	r3, #1
	str	r3, [fp, #-84]
	ldrb	r3, [fp, #-53]	@ zero_extendqisi2
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-60]
	mvn	r2, #143
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-53]
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L143:
	sub	r3, fp, #84
	sub	ip, fp, #100
	mov	r2, #16
	str	r2, [sp, #0]
	ldr	r0, [fp, #-64]
	mov	r1, r3
	mov	r2, #16
	mov	r3, ip
	bl	Send(PLT)
	b	.L2
.L151:
	.align	2
.L150:
	.word	_GLOBAL_OFFSET_TABLE_-(.L149+8)
	.word	.LC0(GOTOFF)
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
	@ args = 0, pretend = 0, frame = 52
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #56
	ldr	sl, .L162
.L161:
	add	sl, pc, sl
	ldr	r3, .L162+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, .L162+8
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
.L153:
	ldr	r0, [fp, #-32]
	mov	r1, #0
	mov	r2, #133
	bl	Putc(PLT)
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L154
.L155:
	ldr	r3, [fp, #-20]
	eor	r3, r3, #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L156
	ldr	r0, [fp, #-36]
	mov	r1, #0
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-22]
	b	.L158
.L156:
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
.L158:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L154:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	ble	.L155
	b	.L153
.L163:
	.align	2
.L162:
	.word	_GLOBAL_OFFSET_TABLE_-(.L161+8)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.size	Train, .-Train
	.section	.rodata
	.align	2
.LC3:
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
	ldr	sl, .L168
.L167:
	add	sl, pc, sl
	ldr	r3, .L168+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
.L165:
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
	b	.L165
.L169:
	.align	2
.L168:
	.word	_GLOBAL_OFFSET_TABLE_-(.L167+8)
	.word	.LC3(GOTOFF)
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
	ldr	sl, .L174
.L173:
	add	sl, pc, sl
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, .L174+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
.L171:
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
	b	.L171
.L175:
	.align	2
.L174:
	.word	_GLOBAL_OFFSET_TABLE_-(.L173+8)
	.word	.LC3(GOTOFF)
	.size	reverseTask, .-reverseTask
	.section	.rodata
	.align	2
.LC4:
	.ascii	"u2x\000"
	.align	2
.LC5:
	.ascii	"u1x \000"
	.align	2
.LC6:
	.ascii	"\033[2J\000"
	.align	2
.LC7:
	.ascii	"\033[H\033[KTIME 00:00:0\000"
	.align	2
.LC8:
	.ascii	"\033[3;1HSwitches\012\000"
	.align	2
.LC9:
	.ascii	"1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|153|15"
	.ascii	"4|155|156\012\000"
	.align	2
.LC10:
	.ascii	"---------------------------------------------------"
	.ascii	"---------\012\000"
	.align	2
.LC11:
	.ascii	"?|?|?|?|?|?|?|?|?|? |? |? |? |? |? |? |? |? | ? | ?"
	.ascii	" | ? | ?\000"
	.align	2
.LC12:
	.ascii	"\033[9;1HSensors:  1 = train passing, 0 = nothing\012"
	.ascii	"\000"
	.align	2
.LC13:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\012\000"
	.align	2
.LC14:
	.ascii	"A1 |A2 |A3 |A4 |A5 |A6 |A7 |A8 |A9 |A10|A11|A12|A13"
	.ascii	"|A14|A15|A16\012\000"
	.align	2
.LC15:
	.ascii	" 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 "
	.ascii	"| 0 | 0 | 0 \012\000"
	.align	2
.LC16:
	.ascii	"B1 |B2 |B3 |B4 |B5 |B6 |B7 |B8 |B9 |B10|B11|B12|B13"
	.ascii	"|B14|B15|B16\012\000"
	.align	2
.LC17:
	.ascii	"C1 |C2 |C3 |C4 |C5 |C6 |C7 |C8 |C9 |C10|C11|C12|C13"
	.ascii	"|C14|C15|C16\012\000"
	.align	2
.LC18:
	.ascii	"D1 |D2 |D3 |D4 |D5 |D6 |D7 |D8 |D9 |D10|D11|D12|D13"
	.ascii	"|D14|D15|D16\012\000"
	.align	2
.LC19:
	.ascii	"E1 |E2 |E3 |E4 |E5 |E6 |E7 |E8 |E9 |E10|E11|E12|E13"
	.ascii	"|E14|E15|E16\012\000"
	.align	2
.LC20:
	.ascii	"---------------------------------------------------"
	.ascii	"------------\000"
	.align	2
.LC21:
	.ascii	"\033[33;1H>>\033[33;4H\000"
	.align	2
.LC22:
	.ascii	"\033[32m\000"
	.align	2
.LC23:
	.ascii	"\033[6;%dHC\000"
	.align	2
.LC24:
	.ascii	"\033[0m\000"
	.align	2
.LC25:
	.ascii	"\033[32;1H\033[K\033[32mLoading, Please Wait\012\033"
	.ascii	"[0m\033[33;4H\000"
	.align	2
.LC26:
	.ascii	"\033[32;1H\033[K\033[33;4H\000"
	.align	2
.LC27:
	.ascii	"\033[H\033[KTIME %d%d:%d%d:%d\033[33;%dH\000"
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
	.ascii	"\033[32m\033[%d;%dH%d\033[33;4H\033[0m\000"
	.align	2
.LC36:
	.ascii	"\033[33;%dH\000"
	.align	2
.LC37:
	.ascii	"\033[32;1H\033[K\033[31mSet Train %d's Speed First\012"
	.ascii	"\000"
	.align	2
.LC38:
	.ascii	"\033[32;1H\033[K\033[32mReversing Train %d\012\000"
	.text
	.align	2
	.global	Printer
	.type	Printer, %function
Printer:
	@ args = 0, pretend = 0, frame = 880
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #900
	ldr	sl, .L266
.L265:
	add	sl, pc, sl
	ldr	r3, .L266+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-120]
	ldr	r3, .L266+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-116]
	ldr	r3, .L266+12
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-112]
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+16
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+24
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+32
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+64
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+68
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+72
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+76
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, .L266+80
	ldr	r3, [sl, r3]
	str	r3, [fp, #-108]
	mov	r0, #4
	ldr	r1, [fp, #-108]
	bl	Create(PLT)
	ldr	r3, .L266+84
	ldr	r3, [sl, r3]
	str	r3, [fp, #-108]
	mov	r0, #2
	ldr	r1, [fp, #-108]
	bl	Create(PLT)
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, #96
	bl	Putc(PLT)
	ldr	r3, .L266+88
	ldr	r3, [sl, r3]
	str	r3, [fp, #-108]
	mov	r0, #2
	ldr	r1, [fp, #-108]
	bl	Create(PLT)
	mov	r3, #4
	str	r3, [fp, #-104]
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #0
	str	r3, [fp, #-96]
	mov	r3, #0
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-88]
	b	.L177
.L178:
	ldr	r3, [fp, #-88]
	ldr	r2, .L266+192
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-88]
	ldr	r2, .L266+92
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-88]
	ldr	r2, .L266+96
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-88]
	add	r3, r3, #1
	str	r3, [fp, #-88]
.L177:
	ldr	r3, [fp, #-88]
	cmp	r3, #79
	ble	.L178
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+100
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #0
	str	r3, [fp, #-88]
	b	.L180
.L181:
	ldr	r3, [fp, #-88]
	cmp	r3, #17
	bgt	.L182
	ldr	r3, [fp, #-88]
	and	r3, r3, #255
	add	r3, r3, #1
	and	r3, r3, #255
	strb	r3, [fp, #-82]
	b	.L184
.L182:
	ldr	r3, [fp, #-88]
	and	r1, r3, #255
	mvn	r3, #120
	mov	r2, r3
	mov	r3, r1
	add	r3, r2, r3
	and	r3, r3, #255
	strb	r3, [fp, #-82]
.L184:
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, #34
	bl	Putc(PLT)
	ldrb	r3, [fp, #-82]	@ zero_extendqisi2
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldrb	r3, [fp, #-82]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L185
	ldrb	r3, [fp, #-82]	@ zero_extendqisi2
	cmp	r3, #10
	bhi	.L185
	ldrb	r3, [fp, #-82]	@ zero_extendqisi2
	mov	r3, r3, asl #1
	and	r3, r3, #255
	sub	r3, r3, #1
	and	r3, r3, #255
	strb	r3, [fp, #-81]
	b	.L188
.L185:
	ldrb	r3, [fp, #-82]	@ zero_extendqisi2
	cmp	r3, #10
	bls	.L189
	ldrb	r3, [fp, #-82]	@ zero_extendqisi2
	cmp	r3, #18
	bhi	.L189
	ldrb	r1, [fp, #-82]	@ zero_extendqisi2
	ldr	r3, .L266+104
	umull	r2, r3, r1, r3
	mov	r2, r3, lsr #3
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	rsb	r3, r3, r1
	and	r3, r3, #255
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	and	r3, r3, #255
	add	r3, r3, #22
	and	r3, r3, #255
	strb	r3, [fp, #-81]
	b	.L188
.L189:
	ldrb	r1, [fp, #-82]	@ zero_extendqisi2
	ldr	r3, .L266+108
	umull	r2, r3, r1, r3
	mov	r2, r3, lsr #7
	mov	r3, r2
	mov	r3, r3, asl #3
	add	r3, r3, r2
	mov	r2, r3, asl #4
	add	r3, r3, r2
	rsb	r3, r3, r1
	and	r3, r3, #255
	mov	r3, r3, asl #2
	and	r3, r3, #255
	add	r3, r3, #47
	and	r3, r3, #255
	strb	r3, [fp, #-81]
.L188:
	ldrb	ip, [fp, #-81]	@ zero_extendqisi2
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+112
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r3, [fp, #-88]
	add	r3, r3, #1
	str	r3, [fp, #-88]
.L180:
	ldr	r3, [fp, #-88]
	cmp	r3, #21
	ble	.L181
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+116
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+120
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-120]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+124
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	b	.L264
.L193:
.L264:
	sub	r3, fp, #140
	sub	r2, fp, #124
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, [fp, #-140]
	cmp	r3, #3
	bne	.L194
	ldr	r3, [fp, #-92]
	add	r1, r3, #1
	ldr	r3, .L266+128
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r3, r3, r1
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	cmp	r3, #0
	bne	.L196
	ldr	r3, [fp, #-96]
	add	r1, r3, #1
	ldr	r3, .L266+132
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
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	cmp	r3, #0
	bne	.L196
	ldr	r3, [fp, #-100]
	add	r3, r3, #1
	str	r3, [fp, #-100]
.L196:
	ldr	r1, [fp, #-100]
	ldr	r3, .L266+128
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	ldr	r1, [fp, #-100]
	ldr	r3, .L266+128
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-896]
	ldr	r3, [fp, #-896]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-896]
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-896]
	ldr	r1, [fp, #-96]
	ldr	r3, .L266+128
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r0, r3, r2
	ldr	r1, [fp, #-96]
	ldr	r3, .L266+128
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-892]
	ldr	r3, [fp, #-892]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-892]
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-892]
	ldr	r3, [fp, #-896]
	str	r3, [sp, #0]
	str	r0, [sp, #4]
	ldr	r1, [fp, #-892]
	str	r1, [sp, #8]
	ldr	r3, [fp, #-92]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-104]
	str	r3, [sp, #16]
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+136
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L199
.L194:
	ldr	r3, [fp, #-140]
	cmp	r3, #1
	bne	.L200
	ldr	r3, [fp, #-136]
	and	r3, r3, #255
	ldr	r0, [fp, #-116]
	mov	r1, #1
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-104]
	add	r3, r3, #1
	str	r3, [fp, #-104]
	b	.L199
.L200:
	ldr	r3, [fp, #-140]
	cmp	r3, #2
	bne	.L202
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+140
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+144
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-104]
	b	.L199
.L202:
	ldr	r3, [fp, #-140]
	cmp	r3, #4
	bne	.L204
	ldr	r3, [fp, #-104]
	sub	r3, r3, #1
	str	r3, [fp, #-104]
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+148
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-104]
	bl	myprintf(PLT)
	b	.L199
.L204:
	ldr	r3, [fp, #-140]
	cmp	r3, #5
	bne	.L206
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, #97
	bl	Putc(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+152
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+144
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-120]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	bl	Quit(PLT)
	bl	Exit(PLT)
	b	.L263
.L206:
	ldr	r3, [fp, #-140]
	cmp	r3, #6
	bne	.L208
	ldr	r3, [fp, #-136]
	and	r3, r3, #255
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-132]
	and	r3, r3, #255
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	ip, [fp, #-132]
	ldr	r3, [fp, #-136]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+156
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+144
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-132]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-136]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-80]
	sub	r3, r3, #1
	ldr	r2, .L266+96
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L210
	ldr	r3, .L266+160
	ldr	r3, [sl, r3]
	str	r3, [fp, #-108]
	mov	r0, #2
	ldr	r1, [fp, #-108]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-80]
	sub	r3, r3, #1
	ldr	r2, .L266+96
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-72]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-80]
	sub	r3, r3, #1
	ldr	r2, .L266+192
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-76]
	str	r3, [r2, #0]
	b	.L212
.L210:
	ldr	r3, [fp, #-80]
	sub	r3, r3, #1
	ldr	r2, .L266+192
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-76]
	str	r3, [r2, #0]
.L212:
	mov	r3, #4
	str	r3, [fp, #-104]
	b	.L199
.L208:
	ldr	r3, [fp, #-140]
	cmp	r3, #7
	bne	.L213
	ldr	r3, [fp, #-136]
	and	r3, r3, #255
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-132]
	and	r3, r3, #255
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-136]
	cmp	r3, #33
	bne	.L215
	mov	r2, #83
	str	r2, [fp, #-888]
	b	.L217
.L215:
	mov	r3, #67
	str	r3, [fp, #-888]
.L217:
	ldr	r1, [fp, #-888]
	mov	r3, r1
	strb	r3, [fp, #-65]
	ldr	r3, [fp, #-132]
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	ble	.L218
	ldr	r3, [fp, #-64]
	cmp	r3, #10
	bgt	.L218
	ldr	r3, [fp, #-64]
	mov	r3, r3, asl #1
	sub	r3, r3, #1
	str	r3, [fp, #-64]
	b	.L221
.L218:
	ldr	r3, [fp, #-64]
	cmp	r3, #10
	ble	.L222
	ldr	r3, [fp, #-64]
	cmp	r3, #18
	bgt	.L222
	ldr	r1, [fp, #-64]
	ldr	r3, .L266+164
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-884]
	ldr	r3, [fp, #-884]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-884]
	add	r3, r3, r2
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-884]
	add	r3, r3, r2
	rsb	r1, r3, r1
	str	r1, [fp, #-884]
	ldr	r3, [fp, #-884]
	mov	r3, r3, asl #1
	ldr	r1, [fp, #-884]
	add	r3, r3, r1
	add	r3, r3, #22
	str	r3, [fp, #-64]
	b	.L221
.L222:
	ldr	r1, [fp, #-64]
	ldr	r3, .L266+108
	smull	r2, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #7
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-880]
	ldr	r3, [fp, #-880]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-880]
	add	r3, r3, r2
	mov	r2, r3, asl #4
	add	r3, r3, r2
	rsb	r1, r3, r1
	str	r1, [fp, #-880]
	ldr	r1, [fp, #-880]
	mov	r3, r1, asl #2
	add	r3, r3, #47
	str	r3, [fp, #-64]
.L221:
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	str	r3, [sp, #0]
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+168
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	bl	myprintf(PLT)
	ldr	ip, [fp, #-132]
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	str	r3, [sp, #0]
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+172
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+144
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-104]
	b	.L199
.L213:
	ldr	r3, [fp, #-140]
	cmp	r3, #8
	bne	.L225
	ldr	r3, [fp, #-136]
	add	r1, r3, #4
	ldr	r3, .L266+128
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r3, r1
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	bne	.L227
	mov	r3, #5
	str	r3, [fp, #-60]
.L227:
	ldr	r3, [fp, #-136]
	add	r1, r3, #3
	ldr	r3, .L266+128
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	rsb	r3, r3, r1
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bne	.L229
	mov	r3, #5
	str	r3, [fp, #-56]
.L229:
	mvn	r3, #127
	strb	r3, [fp, #-45]
	mov	r3, #1
	str	r3, [fp, #-36]
	b	.L231
.L232:
	ldr	r3, [fp, #-136]
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	sub	r3, r3, #17
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #2
	sub	r3, r3, #2
	str	r3, [fp, #-40]
	mov	r3, #0
	strb	r3, [fp, #-29]
	ldr	r3, [fp, #-36]
	cmp	r3, #8
	bgt	.L233
	ldr	r3, [fp, #-60]
	cmp	r3, #2
	bne	.L235
	mov	r3, #29
	str	r3, [fp, #-52]
	b	.L237
.L235:
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L238
	mov	r3, #25
	str	r3, [fp, #-52]
	b	.L237
.L238:
	ldr	r3, [fp, #-60]
	mov	r3, r3, asl #2
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L237:
	ldr	r2, [fp, #-128]
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	and	r2, r2, r3
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L242
	mov	r3, #1
	strb	r3, [fp, #-29]
	b	.L242
.L233:
	ldr	r3, [fp, #-56]
	cmp	r3, #2
	bne	.L243
	mov	r3, #29
	str	r3, [fp, #-52]
	b	.L245
.L243:
	ldr	r3, [fp, #-56]
	cmp	r3, #1
	bne	.L246
	mov	r3, #25
	str	r3, [fp, #-52]
	b	.L245
.L246:
	ldr	r3, [fp, #-56]
	mov	r3, r3, asl #2
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L245:
	ldr	r2, [fp, #-132]
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	and	r2, r2, r3
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L242
	mov	r3, #1
	strb	r3, [fp, #-29]
.L242:
	ldr	r3, [fp, #-44]
	ldr	r2, .L266+92
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L249
	ldrb	r2, [fp, #-29]	@ zero_extendqisi2
	ldr	r3, [fp, #-40]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+176
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-52]
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+180
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-104]
	bl	myprintf(PLT)
	ldr	r3, [fp, #-44]
	ldr	r2, .L266+92
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-29]
	strb	r3, [r2, #0]
.L249:
	ldr	r3, [fp, #-36]
	cmp	r3, #8
	bne	.L251
	mvn	r3, #127
	strb	r3, [fp, #-45]
	b	.L253
.L251:
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	mov	r3, r3, lsr #1
	strb	r3, [fp, #-45]
.L253:
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L231:
	ldr	r3, [fp, #-36]
	cmp	r3, #16
	ble	.L232
	b	.L199
.L225:
	ldr	r3, [fp, #-140]
	cmp	r3, #9
	bne	.L255
	ldr	r3, [fp, #-136]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	ldr	r2, .L266+96
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L257
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+184
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+144
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	b	.L259
.L257:
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, #0
	bl	Putc(PLT)
	ldr	r3, [fp, #-136]
	and	r3, r3, #255
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	ip, [fp, #-136]
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+188
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #1
	ldr	r3, .L266+144
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #0
	str	r3, [fp, #-156]
	mov	r3, #400
	str	r3, [fp, #-152]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	ldr	r2, .L266+96
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	sub	r2, fp, #156
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Reply(PLT)
.L259:
	mov	r3, #4
	str	r3, [fp, #-104]
	b	.L199
.L267:
	.align	2
.L266:
	.word	_GLOBAL_OFFSET_TABLE_-(.L265+8)
	.word	.LC3(GOTOFF)
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
	.word	Terminal(GOT)
	.word	Timer(GOT)
	.word	Train(GOT)
	.word	-860
	.word	-460
	.word	.LC22(GOTOFF)
	.word	-1171354717
	.word	-701792041
	.word	.LC23(GOTOFF)
	.word	.LC24(GOTOFF)
	.word	.LC25(GOTOFF)
	.word	.LC26(GOTOFF)
	.word	1717986919
	.word	-2004318071
	.word	.LC27(GOTOFF)
	.word	.LC28(GOTOFF)
	.word	.LC29(GOTOFF)
	.word	.LC30(GOTOFF)
	.word	.LC31(GOTOFF)
	.word	.LC32(GOTOFF)
	.word	reverseTask(GOT)
	.word	780903145
	.word	.LC33(GOTOFF)
	.word	.LC34(GOTOFF)
	.word	.LC35(GOTOFF)
	.word	.LC36(GOTOFF)
	.word	.LC37(GOTOFF)
	.word	.LC38(GOTOFF)
	.word	-780
.L255:
	ldr	r3, [fp, #-140]
	cmp	r3, #11
	bne	.L199
	ldr	r3, [fp, #-136]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	ldr	r2, .L266+192
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, #15
	bl	Putc(PLT)
	ldr	r3, [fp, #-24]
	and	r3, r3, #255
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-20]
	and	r3, r3, #255
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-24]
	and	r3, r3, #255
	ldr	r0, [fp, #-112]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
.L199:
	ldr	r3, [fp, #-140]
	cmp	r3, #10
	beq	.L193
	mov	r3, #0
	str	r3, [fp, #-156]
	ldr	r3, [fp, #-124]
	sub	r2, fp, #156
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Reply(PLT)
	b	.L193
.L263:
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
	.size	Printer, .-Printer
	.align	2
	.global	T2
	.type	T2, %function
T2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
.L269:
	b	.L269
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
	ldr	sl, .L274
.L273:
	add	sl, pc, sl
	ldr	r3, .L274+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L274+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L274+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L274+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L274+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L274+24
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L274+28
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #3
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L274+32
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
.L275:
	.align	2
.L274:
	.word	_GLOBAL_OFFSET_TABLE_-(.L273+8)
	.word	nameServer(GOT)
	.word	uart2GetServer(GOT)
	.word	uart2PutServer(GOT)
	.word	uart1PutServer(GOT)
	.word	uart1GetServer(GOT)
	.word	clockServer(GOT)
	.word	Printer(GOT)
	.word	T2(GOT)
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
	ldr	sl, .L281
.L280:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L281+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L281+8
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #56
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	stmfd sp!, {r0, r4-r9, sl, fp}
	stmfd sp!, {r1}
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x1F
	msr CPSR, r1
	ldr r1, [r0, #0]
	mov sp, r1
	ldmfd sp!, {r4-r9, sl, fp, ip, lr}
	mov r2, sp
	add sp, sp, #16
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x13
	msr CPSR, r1
	ldr r1, [r0, #4]
	msr SPSR, r1
	ldr lr, [r2, #12]
	ldmfd r2, {r1-r3}
	ldr r0, [r0, #8]
	movs pc, lr
.L278:
	stmfd sp!, {r0, r1, lr}
	mov r1, sp
	add sp, sp, #12
	mrs r0, CPSR
	bic r0, r0, #0x1F
	orr r0, r0, #0xd3
	msr CPSR, r0
	ldmfd r1, {r0, r1, lr}
	sub lr, lr, #4
	stmfd sp!, {r0-r4}
	mov r1, #0
	stmfd sp!, {r1}
	b HWres
.L277:
	stmfd sp!, {r0-r4}
	ldr r0, [lr, #-4];
	bic r1, r0, #0xFF000000
	stmfd sp!, {r1}
	HWres:
	ldr r1, [fp, #4]
	str r1, [sp, #20]
	mrs r1, SPSR
	stmfd sp!, {r1}
	mov r2, sp
	stmfd r2!, {lr}
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x1F
	msr CPSR, r1
	ldmfd r2!, {r3}
	stmfd sp!, {r3}
	add r2, r2, #8
	ldmfd r2, {r0-r3}
	stmfd sp!, {r1-r3}
	stmfd sp!, {r4-r9, sl, fp, ip, lr}
	mov ip, sp
	mrs r0, CPSR
	bic r0, r0, #0x1F
	orr r0, r0, #0x13
	msr CPSR, r0
	ldmfd sp!, {r1}
	ldmfd sp!, {r0,r2-r7}
	str r2, [r7, #0]
	str r3, [r7, #4]
	str r4, [r7, #8]
	str r5, [r7, #12]
	str r6, [r7, #16]
	str r0, [r7, #20]
	ldmfd sp!, {r0, r4-r9, sl, fp}
	str ip, [r0, #0]
	str r1, [r0, #4]
	str r2, [r0, #8]
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L282:
	.align	2
.L281:
	.word	_GLOBAL_OFFSET_TABLE_-(.L280+8)
	.word	.L277(GOTOFF)
	.word	.L278(GOTOFF)
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
	b	.L284
.L285:
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
.L284:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L285
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
	ldr	r3, .L290
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
.L291:
	.align	2
.L290:
	.word	1104285
	.size	getStackSize, .-getStackSize
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #24
	ldr	sl, .L309
.L308:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L293
.L294:
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
.L293:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L294
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L309+4
	str	r3, [r2, #4]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	str	r3, [r2, #20]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #24]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r2, [fp, #-28]
	mov	r3, #2
	str	r3, [r2, #12]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r3, .L309+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-24]
	b	.L296
.L297:
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
.L296:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L297
	mov	r3, #14
	str	r3, [fp, #-24]
	b	.L299
.L300:
	ldr	r3, [fp, #-24]
	cmp	r3, #13
	beq	.L301
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
.L301:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L299:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L300
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
	b	.L304
.L305:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L304:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L305
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
.L310:
	.align	2
.L309:
	.word	_GLOBAL_OFFSET_TABLE_-(.L308+8)
	.word	1610612752
	.word	firstUserTask(GOT)
	.size	initialize, .-initialize
	.align	2
	.global	schedule
	.type	schedule, %function
schedule:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L312
.L313:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L314
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #28]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-32]
	b	.L316
.L314:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L312:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L313
	mov	r3, #0
	str	r3, [fp, #-32]
.L316:
	ldr	r3, [fp, #-32]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	schedule, .-schedule
	.align	2
	.global	rescheduleActive
	.type	rescheduleActive, %function
rescheduleActive:
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
	beq	.L322
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-16]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [r2, #4]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #56]
.L322:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
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
	bne	.L324
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L327
.L324:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L327:
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
	ldr	r3, [r3, #56]
	cmp	r3, #0
	bne	.L329
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L329:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-16]
	mov	r3, #0
	str	r3, [r2, #56]
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
	beq	.L333
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L335
.L333:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L335:
	ldr	r2, [fp, #-16]
	mov	r3, #6
	str	r3, [r2, #16]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	closeActive, .-closeActive
	.align	2
	.global	handle
	.type	handle, %function
handle:
	@ args = 0, pretend = 0, frame = 228
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #228
	str	r0, [fp, #-228]
	str	r1, [fp, #-232]
	str	r2, [fp, #-236]
	str	r3, [fp, #-240]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #20]
	cmp	r3, #10
	addls	pc, pc, r3, asl #2
	b	.L409
	.p2align 2
.L350:
	b	.L339
	b	.L340
	b	.L341
	b	.L342
	b	.L343
	b	.L344
	b	.L345
	b	.L346
	b	.L347
	b	.L348
	b	.L349
.L339:
	ldr	r3, .L410
	ldr	r3, [r3, #0]
	str	r3, [fp, #-224]
	ldr	r3, [fp, #-224]
	mov	r3, r3, lsr #19
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L351
	ldr	r3, .L410+4
	str	r3, [fp, #-220]
	ldr	r2, [fp, #-220]
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r0, [fp, #-232]
	ldr	r1, [fp, #-236]
	bl	rescheduleActive(PLT)
	ldr	r3, [fp, #-240]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L353
	ldr	r2, [fp, #-240]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-240]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L355
.L353:
	ldr	r3, [fp, #-240]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-208]
	ldr	r2, [fp, #-240]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-208]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-208]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-232]
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	rescheduleBlock(PLT)
.L355:
	ldr	r3, .L410+8
	str	r3, [fp, #-216]
	ldr	r2, [fp, #-216]
	ldr	r3, .L410+12
	str	r3, [r2, #0]
	ldr	r3, .L410+16
	str	r3, [fp, #-212]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #0]
	orr	r2, r3, #64
	ldr	r3, [fp, #-212]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-212]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-212]
	ldr	r3, [r3, #0]
	orr	r2, r3, #128
	ldr	r3, [fp, #-212]
	str	r2, [r3, #0]
	b	.L409
.L351:
	ldr	r0, [fp, #-232]
	ldr	r1, [fp, #-236]
	bl	rescheduleActive(PLT)
	ldr	r3, .L410+20
	ldr	r3, [r3, #0]
	str	r3, [fp, #-204]
	ldr	r3, .L410+24
	ldr	r3, [r3, #0]
	str	r3, [fp, #-200]
	ldr	r3, [fp, #-204]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L357
	ldr	r3, .L410+28
	str	r3, [fp, #-196]
	ldr	r3, [fp, #-240]
	add	r3, r3, #24
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L359
	ldr	r3, [fp, #-240]
	add	r2, r3, #24
	ldr	r3, [fp, #-196]
	ldr	r3, [r3, #0]
	str	r3, [r2, #4]
	ldr	r3, [fp, #-240]
	add	r2, r3, #24
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L409
.L359:
	ldr	r3, [fp, #-240]
	add	r3, r3, #24
	ldr	r3, [r3, #0]
	str	r3, [fp, #-192]
	ldr	r3, [fp, #-240]
	add	r2, r3, #24
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-196]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-192]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-192]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-232]
	mov	r1, r3
	ldr	r2, [fp, #-192]
	bl	rescheduleBlock(PLT)
	b	.L409
.L357:
	ldr	r3, [fp, #-204]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L362
	ldr	r3, .L410+32
	str	r3, [fp, #-188]
	ldr	r3, [fp, #-188]
	ldr	r3, [r3, #0]
	bic	r2, r3, #32
	ldr	r3, [fp, #-188]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-240]
	add	r3, r3, #12
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L364
	ldr	r3, [fp, #-240]
	add	r3, r3, #12
	ldr	r3, [r3, #0]
	str	r3, [fp, #-184]
	ldr	r3, [fp, #-240]
	add	r2, r3, #12
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-184]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-184]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-232]
	mov	r1, r3
	ldr	r2, [fp, #-184]
	bl	rescheduleBlock(PLT)
	b	.L409
.L364:
	ldr	r3, [fp, #-240]
	add	r2, r3, #12
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-240]
	add	r2, r3, #12
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L409
.L362:
	ldr	r3, [fp, #-204]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L367
	ldr	r2, .L410+20
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-240]
	add	r3, r3, #60
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L369
	ldr	r3, [fp, #-240]
	add	r2, r3, #60
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-240]
	add	r2, r3, #60
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L409
.L369:
	ldr	r3, [fp, #-240]
	add	r3, r3, #60
	ldr	r3, [r3, #0]
	str	r3, [fp, #-180]
	ldr	r3, [fp, #-240]
	add	r2, r3, #60
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-180]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-180]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-232]
	mov	r1, r3
	ldr	r2, [fp, #-180]
	bl	rescheduleBlock(PLT)
	b	.L409
.L367:
	ldr	r3, [fp, #-200]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L372
	ldr	r3, .L410+36
	str	r3, [fp, #-176]
	ldr	r3, [fp, #-240]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L374
	ldr	r3, [fp, #-240]
	add	r2, r3, #48
	ldr	r3, [fp, #-176]
	ldr	r3, [r3, #0]
	str	r3, [r2, #4]
	ldr	r3, [fp, #-240]
	add	r2, r3, #48
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L409
.L374:
	ldr	r3, [fp, #-240]
	add	r3, r3, #48
	ldr	r3, [r3, #0]
	str	r3, [fp, #-172]
	ldr	r3, [fp, #-240]
	add	r2, r3, #48
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-176]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-172]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-172]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-232]
	mov	r1, r3
	ldr	r2, [fp, #-172]
	bl	rescheduleBlock(PLT)
	b	.L409
.L372:
	ldr	r3, [fp, #-200]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L409
	ldr	r3, .L410+40
	str	r3, [fp, #-168]
	ldr	r3, [fp, #-168]
	ldr	r3, [r3, #0]
	bic	r2, r3, #32
	ldr	r3, [fp, #-168]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-240]
	add	r3, r3, #36
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L378
	ldr	r3, [fp, #-240]
	add	r3, r3, #36
	ldr	r3, [r3, #0]
	str	r3, [fp, #-164]
	ldr	r3, [fp, #-240]
	add	r2, r3, #36
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-164]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-232]
	mov	r1, r3
	ldr	r2, [fp, #-164]
	bl	rescheduleBlock(PLT)
	b	.L409
.L378:
	ldr	r3, [fp, #-240]
	add	r2, r3, #36
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r3, [fp, #-240]
	add	r2, r3, #36
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L409
.L340:
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-160]
	ldr	r3, [fp, #-160]
	add	r3, r3, #1
	str	r3, [fp, #-156]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-152]
	ldr	r3, [fp, #-152]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-144]
	ldr	r2, [fp, #-160]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-228]
	add	r3, r2, r3
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-144]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-152]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-156]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-132]
	bl	getStackSize(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-156]
	mul	r3, r2, r3
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-140]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-140]
	ldr	r3, .L410+44
	str	r3, [r2, #4]
	ldr	r2, [fp, #-140]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-140]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-156]
	str	r3, [r2, #20]
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-148]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-140]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r2, [fp, #-144]
	ldr	r3, [fp, #-140]
	str	r2, [r3, #12]
	ldr	r2, [fp, #-140]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r2, [fp, #-140]
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r3, [fp, #-140]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-132]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-128]
	b	.L380
.L381:
	ldr	r3, [fp, #-140]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-140]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-140]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-128]
	sub	r3, r3, #1
	str	r3, [fp, #-128]
.L380:
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	bne	.L381
	mov	r3, #14
	str	r3, [fp, #-128]
	b	.L383
.L384:
	ldr	r3, [fp, #-128]
	cmp	r3, #13
	beq	.L385
	ldr	r3, [fp, #-140]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-140]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-140]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-128]
	str	r3, [r2, #0]
.L385:
	ldr	r3, [fp, #-128]
	sub	r3, r3, #1
	str	r3, [fp, #-128]
.L383:
	ldr	r3, [fp, #-128]
	cmp	r3, #3
	bhi	.L384
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L388
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #4]
	b	.L390
.L388:
	ldr	r3, [fp, #-136]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-136]
	ldr	r3, [fp, #-140]
	str	r3, [r2, #4]
.L390:
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-236]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-232]
	ldr	r1, [fp, #-236]
	bl	rescheduleActive(PLT)
	b	.L409
.L341:
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-124]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-124]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-232]
	ldr	r1, [fp, #-236]
	bl	rescheduleActive(PLT)
	b	.L409
.L342:
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-120]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-120]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-232]
	ldr	r1, [fp, #-236]
	bl	rescheduleActive(PLT)
	b	.L409
.L343:
	ldr	r0, [fp, #-232]
	ldr	r1, [fp, #-236]
	bl	rescheduleActive(PLT)
	b	.L409
.L344:
	ldr	r0, [fp, #-232]
	ldr	r1, [fp, #-236]
	bl	closeActive(PLT)
	b	.L409
.L345:
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-116]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-112]
	ldr	r2, [fp, #-112]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-228]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-108]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-236]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-108]
	str	r2, [r3, #40]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-108]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-236]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-108]
	str	r2, [r3, #32]
	ldr	r2, [fp, #-104]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-228]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-104]
	cmp	r3, #0
	ble	.L391
	ldr	r3, [fp, #-104]
	cmp	r3, #30
	ble	.L393
.L391:
	ldr	r2, [fp, #-108]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L409
.L393:
	ldr	r3, [fp, #-116]
	mov	r0, r3
	ldr	r1, [fp, #-232]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L394
	ldr	r2, [fp, #-108]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r2, [fp, #-100]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-232]
	mov	r1, r3
	ldr	r2, [fp, #-100]
	bl	rescheduleBlock(PLT)
	ldr	r3, [fp, #-108]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-108]
	ldr	r3, [r3, #36]
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
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-112]
	str	r3, [r2, #0]
	b	.L409
.L394:
	ldr	r2, [fp, #-108]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-108]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L397
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-92]
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-92]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #52]
	b	.L409
.L397:
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #52]
	b	.L409
.L346:
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-84]
	ldr	r2, [fp, #-84]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-228]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-80]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-80]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-236]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L399
	ldr	r3, [fp, #-80]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-88]
	mov	r0, r3
	ldr	r1, [fp, #-232]
	bl	blockActive(PLT)
	b	.L409
.L399:
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #48]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-76]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-76]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-72]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-76]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-80]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-76]
	ldr	r3, [r3, #20]
	str	r3, [r2, #0]
	ldr	r0, [fp, #-232]
	ldr	r1, [fp, #-236]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-76]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r3, [fp, #-76]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #48]
	b	.L409
.L347:
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-228]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-52]
	mov	r0, r3
	ldr	r1, [fp, #-60]
	bl	copyMsg(PLT)
	ldr	r3, [fp, #-68]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-52]
	str	r3, [r2, #8]
	ldr	r2, [fp, #-64]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-232]
	mov	r1, r3
	ldr	r2, [fp, #-64]
	bl	rescheduleBlock(PLT)
	ldr	r0, [fp, #-232]
	ldr	r1, [fp, #-236]
	bl	rescheduleActive(PLT)
	b	.L409
.L348:
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-228]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-236]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #3
	bne	.L402
	ldr	r3, .L410+40
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-32]
	str	r2, [r3, #0]
	b	.L404
.L402:
	ldr	r3, [fp, #-36]
	cmp	r3, #1
	bne	.L404
	ldr	r3, .L410+32
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
.L404:
	ldr	r2, [fp, #-36]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-240]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ble	.L406
	ldr	r2, [fp, #-36]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-240]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-36]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-240]
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-40]
	str	r2, [r3, #8]
	ldr	r0, [fp, #-232]
	ldr	r1, [fp, #-236]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-36]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-240]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #8]
	b	.L409
.L406:
	ldr	r2, [fp, #-40]
	mov	r3, #5
	str	r3, [r2, #16]
	ldr	r2, [fp, #-36]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-240]
	add	r2, r2, r3
	ldr	r3, [fp, #-40]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-48]
	mov	r0, r3
	ldr	r1, [fp, #-232]
	bl	blockActive(PLT)
	b	.L409
.L349:
	ldr	r3, .L410+32
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	bic	r2, r3, #8
	ldr	r3, [fp, #-24]
	str	r2, [r3, #0]
	mov	r3, #9
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-232]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #6
	str	r3, [r2, #16]
	ldr	r3, [fp, #-20]
	mov	r0, r3
	ldr	r1, [fp, #-232]
	bl	blockActive(PLT)
.L409:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L411:
	.align	2
.L410:
	.word	-2146697216
	.word	-2139029364
	.word	-2139029376
	.word	5080
	.word	-2139029368
	.word	-2138308580
	.word	-2138243044
	.word	-2138308608
	.word	-2138308588
	.word	-2138243072
	.word	-2138243052
	.word	1610612752
	.size	handle, .-handle
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 2064
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #2064
	str	r0, [fp, #-2072]
	str	r1, [fp, #-2076]
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
	sub	r1, fp, #1808
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	r2, fp, #1888
	sub	r2, r2, #12
	sub	r2, r2, #8
	sub	r3, fp, #2048
	sub	r3, r3, #12
	sub	r3, r3, #8
	sub	ip, fp, #2016
	sub	ip, ip, #12
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, ip
	bl	initialize(PLT)
.L413:
	sub	r2, fp, #1888
	sub	r2, r2, #12
	sub	r2, r2, #8
	sub	r3, fp, #2048
	sub	r3, r3, #12
	sub	r3, r3, #8
	mov	r0, r2
	mov	r1, r3
	bl	schedule(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L414
	sub	r3, fp, #2048
	sub	r3, r3, #12
	sub	r3, r3, #8
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	getNextRequest(PLT)
	sub	r1, fp, #1808
	sub	r1, r1, #12
	sub	r1, r1, #8
	sub	r2, fp, #1888
	sub	r2, r2, #12
	sub	r2, r2, #8
	sub	r3, fp, #2048
	sub	r3, r3, #12
	sub	r3, r3, #8
	sub	ip, fp, #2016
	sub	ip, ip, #12
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, ip
	bl	handle(PLT)
	b	.L413
.L414:
	ldr	r3, .L417
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L417+4
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
	ldr	r3, .L417+8
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #524288
	str	r3, [r2, #0]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L418:
	.align	2
.L417:
	.word	-2139029376
	.word	-2139029368
	.word	-2146697196
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
