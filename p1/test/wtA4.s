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
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #156
	ldr	sl, .L177
.L176:
	add	sl, pc, sl
	ldr	r3, .L177+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-76]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L175
.L2:
.L175:
	ldr	r0, [fp, #-76]
	mov	r1, #1
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-61]
	ldr	r3, [fp, #-68]
	cmp	r3, #60
	bne	.L3
	ldrb	r3, [fp, #-61]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L3
	ldrb	r3, [fp, #-61]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L2
.L3:
	ldrb	r3, [fp, #-61]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L7
	mov	r3, #2
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L9
.L10:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L11
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #113
	bne	.L13
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
	b	.L15
.L16:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L17
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L15:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L16
.L17:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bne	.L46
	mov	r3, #5
	str	r3, [fp, #-92]
	b	.L46
.L13:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #116
	bne	.L22
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L22
	mvn	r3, #0
	str	r3, [fp, #-56]
	mvn	r3, #0
	str	r3, [fp, #-52]
	mov	r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	b	.L25
.L26:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L27
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L29
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L29
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L29
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L33
.L29:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L34
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L34
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L34
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L34
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L34
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-60]
	mvn	r2, #151
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
	ldr	r3, [fp, #-60]
	add	r3, r3, #3
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L33
.L34:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bne	.L33
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L33
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L33
	mov	r3, #80
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-60]
	add	r3, r3, #3
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L33
.L27:
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L25:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L26
.L33:
	ldr	r3, [fp, #-48]
	cmp	r3, #1
	bne	.L47
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L46
.L48:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L49
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L51
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L51
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L54
	ldr	r3, [fp, #-60]
	add	r2, r3, #1
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bne	.L51
.L54:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L56
.L51:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L56
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L56
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #52
	bhi	.L56
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #38
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L56
.L49:
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L47:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L48
.L56:
	ldr	r3, [fp, #-48]
	cmp	r3, #1
	bne	.L63
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L46
.L64:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L65
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L63:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L64
.L65:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-56]
	cmn	r3, #1
	beq	.L46
	ldr	r3, [fp, #-52]
	cmn	r3, #1
	beq	.L46
	mov	r3, #6
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-84]
	b	.L46
.L22:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L71
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #118
	bne	.L71
	mvn	r3, #0
	str	r3, [fp, #-44]
	mvn	r3, #0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	b	.L74
.L75:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L76
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L78
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L78
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L81
	ldr	r3, [fp, #-60]
	add	r2, r3, #1
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bne	.L78
.L81:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L83
.L78:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L84
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L84
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L84
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L84
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-60]
	mvn	r2, #151
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
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L83
.L84:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bne	.L83
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bne	.L83
	mov	r3, #80
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L83
.L76:
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L74:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L75
.L83:
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	bne	.L94
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L46
.L95:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L96
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L94:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L95
.L96:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-44]
	cmn	r3, #1
	beq	.L46
	mov	r3, #9
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-88]
	b	.L46
.L71:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L101
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #119
	bne	.L101
	mvn	r3, #0
	str	r3, [fp, #-36]
	mvn	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	b	.L104
.L105:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L106
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L108
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L108
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L108
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L112
.L108:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L113
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L113
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #56
	bhi	.L113
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L113
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #38
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-60]
	add	r3, r3, #3
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L112
.L113:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L112
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #53
	bne	.L112
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #50
	bls	.L112
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #54
	bhi	.L112
	ldr	r3, [fp, #-60]
	add	r3, r3, #3
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L112
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	add	r3, r3, #102
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-60]
	add	r3, r3, #4
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L112
.L106:
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L104:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L105
.L112:
	ldr	r3, [fp, #-28]
	cmp	r3, #1
	bne	.L126
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L46
.L127:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L128
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #83
	bne	.L130
	mov	r3, #33
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L132
.L130:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #67
	bne	.L132
	mov	r3, #34
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L132
.L128:
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L126:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L127
.L132:
	ldr	r3, [fp, #-28]
	cmp	r3, #1
	bne	.L137
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L46
.L138:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L139
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L137:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L138
.L139:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-32]
	cmn	r3, #1
	beq	.L46
	ldr	r3, [fp, #-36]
	cmn	r3, #1
	beq	.L46
	mov	r3, #7
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-84]
	b	.L46
.L101:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L46
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
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
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	b	.L147
.L148:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L149
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L151
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L151
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L154
	ldr	r3, [fp, #-60]
	add	r2, r3, #1
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bne	.L151
.L154:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L156
.L178:
	.align	2
.L177:
	.word	_GLOBAL_OFFSET_TABLE_-(.L176+8)
	.word	.LC0(GOTOFF)
.L151:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #48
	bls	.L156
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L156
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L156
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L156
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-60]
	mvn	r2, #151
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
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L156
.L149:
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L147:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L148
.L156:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L164
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L46
.L165:
	ldr	r3, [fp, #-60]
	mvn	r2, #151
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L166
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L164:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L165
.L166:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	beq	.L46
	mov	r3, #12
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-88]
	b	.L46
.L11:
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L9:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bcc	.L10
.L46:
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L170
.L7:
	ldrb	r3, [fp, #-61]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L171
	ldr	r3, [fp, #-68]
	cmp	r3, #0
	beq	.L2
	mov	r3, #4
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	sub	r3, r3, #1
	str	r3, [fp, #-68]
	b	.L170
.L171:
	mov	r3, #1
	str	r3, [fp, #-92]
	ldrb	r3, [fp, #-61]	@ zero_extendqisi2
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-68]
	mvn	r2, #151
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-61]
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L170:
	sub	r3, fp, #92
	sub	ip, fp, #108
	mov	r2, #16
	str	r2, [sp, #0]
	ldr	r0, [fp, #-72]
	mov	r1, r3
	mov	r2, #16
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
	@ args = 0, pretend = 0, frame = 52
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #56
	ldr	sl, .L189
.L188:
	add	sl, pc, sl
	ldr	r3, .L189+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, .L189+8
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
.L180:
	ldr	r0, [fp, #-32]
	mov	r1, #0
	mov	r2, #133
	bl	Putc(PLT)
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L181
.L182:
	ldr	r3, [fp, #-20]
	eor	r3, r3, #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L183
	ldr	r0, [fp, #-36]
	mov	r1, #0
	bl	Getc(PLT)
	mov	r3, r0
	strb	r3, [fp, #-22]
	b	.L185
.L183:
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
.L185:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L181:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	ble	.L182
	b	.L180
.L190:
	.align	2
.L189:
	.word	_GLOBAL_OFFSET_TABLE_-(.L188+8)
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
	ldr	sl, .L195
.L194:
	add	sl, pc, sl
	ldr	r3, .L195+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
.L192:
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
	b	.L192
.L196:
	.align	2
.L195:
	.word	_GLOBAL_OFFSET_TABLE_-(.L194+8)
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
	ldr	sl, .L201
.L200:
	add	sl, pc, sl
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, .L201+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
.L198:
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
	b	.L198
.L202:
	.align	2
.L201:
	.word	_GLOBAL_OFFSET_TABLE_-(.L200+8)
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
	.ascii	"\033[32;1H\033[K\033[32mLoading, Please Wait\012\033"
	.ascii	"[0m\033[33;4H\000"
	.align	2
.LC23:
	.ascii	"\033[32;1H\033[K\033[33;4H\000"
	.align	2
.LC24:
	.ascii	"\033[H\033[KTIME %d%d:%d%d:%d and %d\033[33;%dH\000"
	.align	2
.LC25:
	.ascii	"\033[32;1H\033[K\033[31mBAD COMMAND\012\000"
	.align	2
.LC26:
	.ascii	"\033[0m\033[33;4H\033[K\000"
	.align	2
.LC27:
	.ascii	"\033[33;%dH\033[K\000"
	.align	2
.LC28:
	.ascii	"\033[32;1H\033[K\033[32mShutting down\012\000"
	.align	2
.LC29:
	.ascii	"\033[32;1H\033[K\033[32mSetting Train: %d Speed: %d"
	.ascii	"\012\000"
	.align	2
.LC30:
	.ascii	"\033[32m\033[6;%dH%c\033[0m\000"
	.align	2
.LC31:
	.ascii	"\033[32;1H\033[K\033[32mSetting Switch: %d State: %"
	.ascii	"c\012\000"
	.align	2
.LC32:
	.ascii	"\033[32m\033[%d;%dH%d\033[33;4H\033[0m\000"
	.align	2
.LC33:
	.ascii	"\033[33;%dH\000"
	.align	2
.LC34:
	.ascii	"\033[32;1H\033[K\033[31mSet Train %d's Speed First\012"
	.ascii	"\000"
	.align	2
.LC35:
	.ascii	"\033[32;1H\033[K\033[32mReversing Train %d\012\000"
	.align	2
.LC36:
	.ascii	"\033[32;1H\033[K\033[32mStop at sensor: %d\012\000"
	.text
	.align	2
	.global	Printer
	.type	Printer, %function
Printer:
	@ args = 0, pretend = 0, frame = 884
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #908
	ldr	sl, .L286
.L285:
	add	sl, pc, sl
	ldr	r3, .L286+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-124]
	ldr	r3, .L286+8
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-120]
	ldr	r3, .L286+12
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-116]
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+16
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+20
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+24
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+28
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+32
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+36
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+40
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+48
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+56
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+60
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+64
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+68
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+44
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+52
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+72
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+76
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, .L286+80
	ldr	r3, [sl, r3]
	str	r3, [fp, #-112]
	mov	r0, #4
	ldr	r1, [fp, #-112]
	bl	Create(PLT)
	ldr	r3, .L286+84
	ldr	r3, [sl, r3]
	str	r3, [fp, #-112]
	mov	r0, #2
	ldr	r1, [fp, #-112]
	bl	Create(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, #96
	bl	Putc(PLT)
	ldr	r3, .L286+88
	ldr	r3, [sl, r3]
	str	r3, [fp, #-112]
	mov	r0, #2
	ldr	r1, [fp, #-112]
	bl	Create(PLT)
	mov	r3, #4
	str	r3, [fp, #-108]
	mov	r3, #0
	str	r3, [fp, #-104]
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #0
	str	r3, [fp, #-96]
	mov	r3, #0
	str	r3, [fp, #-92]
	b	.L204
.L205:
	ldr	r3, [fp, #-92]
	ldr	r2, .L286+92
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mvn	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	ldr	r2, .L286+96
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	ldr	r2, .L286+100
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	add	r3, r3, #1
	str	r3, [fp, #-92]
.L204:
	ldr	r3, [fp, #-92]
	cmp	r3, #79
	ble	.L205
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+104
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-124]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+108
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mvn	r3, #0
	str	r3, [fp, #-88]
	b	.L284
.L207:
.L284:
	sub	r3, fp, #144
	sub	r2, fp, #128
	mov	r0, r2
	mov	r1, r3
	mov	r2, #16
	bl	Receive(PLT)
	ldr	r3, [fp, #-144]
	cmp	r3, #3
	bne	.L208
	bl	IdleTime(PLT)
	mov	r3, r0
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-96]
	add	r1, r3, #1
	ldr	r3, .L286+112
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r3, r3, r1
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	cmp	r3, #0
	bne	.L210
	ldr	r3, [fp, #-100]
	add	r1, r3, #1
	ldr	r3, .L286+116
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
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-100]
	cmp	r3, #0
	bne	.L210
	ldr	r3, [fp, #-104]
	add	r3, r3, #1
	str	r3, [fp, #-104]
.L210:
	ldr	r1, [fp, #-104]
	ldr	r3, .L286+112
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	ip, r3, r2
	ldr	r1, [fp, #-104]
	ldr	r3, .L286+112
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-900]
	ldr	r3, [fp, #-900]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-900]
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-900]
	ldr	r1, [fp, #-100]
	ldr	r3, .L286+112
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r0, r3, r2
	ldr	r1, [fp, #-100]
	ldr	r3, .L286+112
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
	ldr	r3, [fp, #-900]
	str	r3, [sp, #0]
	str	r0, [sp, #4]
	ldr	r1, [fp, #-896]
	str	r1, [sp, #8]
	ldr	r3, [fp, #-96]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-84]
	str	r3, [sp, #16]
	ldr	r3, [fp, #-108]
	str	r3, [sp, #20]
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+120
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	b	.L213
.L208:
	ldr	r3, [fp, #-144]
	cmp	r3, #1
	bne	.L214
	ldr	r3, [fp, #-140]
	and	r3, r3, #255
	ldr	r0, [fp, #-120]
	mov	r1, #1
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-108]
	add	r3, r3, #1
	str	r3, [fp, #-108]
	b	.L213
.L214:
	ldr	r3, [fp, #-144]
	cmp	r3, #2
	bne	.L216
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+124
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+128
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-108]
	b	.L213
.L216:
	ldr	r3, [fp, #-144]
	cmp	r3, #4
	bne	.L218
	ldr	r3, [fp, #-108]
	sub	r3, r3, #1
	str	r3, [fp, #-108]
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+132
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-108]
	bl	myprintf(PLT)
	b	.L213
.L218:
	ldr	r3, [fp, #-144]
	cmp	r3, #5
	bne	.L220
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, #97
	bl	Putc(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+136
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+128
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-124]
	mov	r0, r3
	mov	r1, #300
	bl	Delay(PLT)
	bl	Quit(PLT)
	bl	Exit(PLT)
	b	.L283
.L220:
	ldr	r3, [fp, #-144]
	cmp	r3, #6
	bne	.L222
	ldr	r3, [fp, #-140]
	and	r3, r3, #255
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-136]
	and	r3, r3, #255
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	ip, [fp, #-136]
	ldr	r3, [fp, #-140]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+140
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+128
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	ldr	r3, [fp, #-136]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-140]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-80]
	sub	r3, r3, #1
	ldr	r2, .L286+100
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L224
	ldr	r3, .L286+144
	ldr	r3, [sl, r3]
	str	r3, [fp, #-112]
	mov	r0, #2
	ldr	r1, [fp, #-112]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-80]
	sub	r3, r3, #1
	ldr	r2, .L286+100
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-72]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-80]
	sub	r3, r3, #1
	ldr	r2, .L286+92
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-76]
	str	r3, [r2, #0]
	b	.L226
.L224:
	ldr	r3, [fp, #-80]
	sub	r3, r3, #1
	ldr	r2, .L286+92
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	ldr	r3, [fp, #-76]
	str	r3, [r2, #0]
.L226:
	mov	r3, #4
	str	r3, [fp, #-108]
	b	.L213
.L222:
	ldr	r3, [fp, #-144]
	cmp	r3, #7
	bne	.L227
	ldr	r3, [fp, #-140]
	and	r3, r3, #255
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-136]
	and	r3, r3, #255
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-140]
	cmp	r3, #33
	bne	.L229
	mov	r2, #83
	str	r2, [fp, #-892]
	b	.L231
.L229:
	mov	r3, #67
	str	r3, [fp, #-892]
.L231:
	ldr	r1, [fp, #-892]
	mov	r3, r1
	strb	r3, [fp, #-65]
	ldr	r3, [fp, #-136]
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	ble	.L232
	ldr	r3, [fp, #-64]
	cmp	r3, #10
	bgt	.L232
	ldr	r3, [fp, #-64]
	mov	r3, r3, asl #1
	sub	r3, r3, #1
	str	r3, [fp, #-64]
	b	.L235
.L232:
	ldr	r3, [fp, #-64]
	cmp	r3, #10
	ble	.L236
	ldr	r3, [fp, #-64]
	cmp	r3, #18
	bgt	.L236
	ldr	r1, [fp, #-64]
	ldr	r3, .L286+148
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #1
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-888]
	ldr	r3, [fp, #-888]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-888]
	add	r3, r3, r2
	mov	r3, r3, asl #1
	ldr	r2, [fp, #-888]
	add	r3, r3, r2
	rsb	r1, r3, r1
	str	r1, [fp, #-888]
	ldr	r3, [fp, #-888]
	mov	r3, r3, asl #1
	ldr	r1, [fp, #-888]
	add	r3, r3, r1
	add	r3, r3, #22
	str	r3, [fp, #-64]
	b	.L235
.L236:
	ldr	r1, [fp, #-64]
	ldr	r3, .L286+152
	smull	r2, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #7
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-884]
	ldr	r3, [fp, #-884]
	mov	r3, r3, asl #3
	ldr	r2, [fp, #-884]
	add	r3, r3, r2
	mov	r2, r3, asl #4
	add	r3, r3, r2
	rsb	r1, r3, r1
	str	r1, [fp, #-884]
	ldr	r1, [fp, #-884]
	mov	r3, r1, asl #2
	add	r3, r3, #47
	str	r3, [fp, #-64]
.L235:
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	str	r3, [sp, #0]
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+156
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	bl	myprintf(PLT)
	ldr	ip, [fp, #-136]
	ldrb	r3, [fp, #-65]	@ zero_extendqisi2
	str	r3, [sp, #0]
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+160
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+128
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-108]
	b	.L213
.L227:
	ldr	r3, [fp, #-144]
	cmp	r3, #8
	bne	.L239
	ldr	r3, [fp, #-140]
	add	r1, r3, #4
	ldr	r3, .L286+112
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
	bne	.L241
	mov	r3, #5
	str	r3, [fp, #-60]
.L241:
	ldr	r3, [fp, #-140]
	add	r1, r3, #3
	ldr	r3, .L286+112
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
	bne	.L243
	mov	r3, #5
	str	r3, [fp, #-56]
.L243:
	mvn	r3, #127
	strb	r3, [fp, #-45]
	mov	r3, #1
	str	r3, [fp, #-36]
	b	.L245
.L246:
	ldr	r3, [fp, #-36]
	mov	r3, r3, asl #2
	sub	r3, r3, #2
	str	r3, [fp, #-40]
	mov	r3, #0
	strb	r3, [fp, #-29]
	ldr	r3, [fp, #-36]
	cmp	r3, #8
	bgt	.L247
	ldr	r3, [fp, #-60]
	cmp	r3, #2
	bne	.L249
	mov	r3, #29
	str	r3, [fp, #-52]
	b	.L251
.L249:
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L252
	mov	r3, #25
	str	r3, [fp, #-52]
	b	.L251
.L252:
	ldr	r3, [fp, #-60]
	mov	r3, r3, asl #2
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L251:
	ldr	r2, [fp, #-132]
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	and	r2, r2, r3
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L256
	mov	r3, #1
	strb	r3, [fp, #-29]
	b	.L256
.L247:
	ldr	r3, [fp, #-56]
	cmp	r3, #2
	bne	.L257
	mov	r3, #29
	str	r3, [fp, #-52]
	b	.L259
.L257:
	ldr	r3, [fp, #-56]
	cmp	r3, #1
	bne	.L260
	mov	r3, #25
	str	r3, [fp, #-52]
	b	.L259
.L260:
	ldr	r3, [fp, #-56]
	mov	r3, r3, asl #2
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L259:
	ldr	r2, [fp, #-136]
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	and	r2, r2, r3
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L256
	mov	r3, #1
	strb	r3, [fp, #-29]
.L256:
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	mov	r3, r3, asr #2
	mov	r2, r3, asl #4
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	sub	r3, r3, #49
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-88]
	cmn	r3, #1
	beq	.L263
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-88]
	cmp	r2, r3
	bne	.L263
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L263
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, #0
	bl	Putc(PLT)
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, #50
	bl	Putc(PLT)
.L263:
	ldr	r3, [fp, #-44]
	ldr	r2, .L286+96
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r2, [r3, #0]	@ zero_extendqisi2
	ldrb	r3, [fp, #-29]	@ zero_extendqisi2
	cmp	r3, r2
	beq	.L267
	ldrb	r2, [fp, #-29]	@ zero_extendqisi2
	ldr	r3, [fp, #-40]
	str	r3, [sp, #0]
	str	r2, [sp, #4]
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+164
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-52]
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+168
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-108]
	bl	myprintf(PLT)
	ldr	r3, [fp, #-44]
	ldr	r2, .L286+96
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	ldrb	r3, [fp, #-29]
	strb	r3, [r2, #0]
.L267:
	ldr	r3, [fp, #-36]
	cmp	r3, #8
	bne	.L269
	mvn	r3, #127
	strb	r3, [fp, #-45]
	b	.L271
.L269:
	ldrb	r3, [fp, #-45]	@ zero_extendqisi2
	mov	r3, r3, lsr #1
	strb	r3, [fp, #-45]
.L271:
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L245:
	ldr	r3, [fp, #-36]
	cmp	r3, #16
	ble	.L246
	b	.L213
.L239:
	ldr	r3, [fp, #-144]
	cmp	r3, #9
	bne	.L273
	ldr	r3, [fp, #-140]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	ldr	r2, .L286+100
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L275
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+172
	add	r3, sl, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+128
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	b	.L277
.L275:
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, #0
	bl	Putc(PLT)
	ldr	r3, [fp, #-140]
	and	r3, r3, #255
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	ip, [fp, #-140]
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+176
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+128
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #0
	str	r3, [fp, #-160]
	mov	r3, #400
	str	r3, [fp, #-156]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-152]
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	ldr	r2, .L286+100
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	sub	r2, fp, #160
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Reply(PLT)
.L277:
	mov	r3, #4
	str	r3, [fp, #-108]
	b	.L213
.L273:
	ldr	r3, [fp, #-144]
	cmp	r3, #11
	bne	.L278
	ldr	r3, [fp, #-140]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	ldr	r2, .L286+92
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, #15
	bl	Putc(PLT)
	ldr	r3, [fp, #-24]
	and	r3, r3, #255
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-20]
	and	r3, r3, #255
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	ldr	r3, [fp, #-24]
	and	r3, r3, #255
	ldr	r0, [fp, #-116]
	mov	r1, #0
	mov	r2, r3
	bl	Putc(PLT)
	b	.L213
.L278:
	ldr	r3, [fp, #-144]
	cmp	r3, #12
	bne	.L213
	ldr	r3, [fp, #-140]
	str	r3, [fp, #-88]
	ldr	ip, [fp, #-140]
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+180
	add	r3, sl, r3
	mov	r2, r3
	mov	r3, ip
	bl	myprintf(PLT)
	ldr	r0, [fp, #-120]
	mov	r1, #1
	ldr	r3, .L286+128
	add	r3, sl, r3
	mov	r2, r3
	bl	myprintf(PLT)
	mov	r3, #4
	str	r3, [fp, #-108]
.L213:
	ldr	r3, [fp, #-144]
	cmp	r3, #10
	beq	.L207
	mov	r3, #0
	str	r3, [fp, #-160]
	ldr	r3, [fp, #-128]
	sub	r2, fp, #160
	mov	r0, r3
	mov	r1, r2
	mov	r2, #16
	bl	Reply(PLT)
	b	.L207
.L283:
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L287:
	.align	2
.L286:
	.word	_GLOBAL_OFFSET_TABLE_-(.L285+8)
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
	.word	-784
	.word	-864
	.word	-464
	.word	.LC22(GOTOFF)
	.word	.LC23(GOTOFF)
	.word	1717986919
	.word	-2004318071
	.word	.LC24(GOTOFF)
	.word	.LC25(GOTOFF)
	.word	.LC26(GOTOFF)
	.word	.LC27(GOTOFF)
	.word	.LC28(GOTOFF)
	.word	.LC29(GOTOFF)
	.word	reverseTask(GOT)
	.word	780903145
	.word	-701792041
	.word	.LC30(GOTOFF)
	.word	.LC31(GOTOFF)
	.word	.LC32(GOTOFF)
	.word	.LC33(GOTOFF)
	.word	.LC34(GOTOFF)
	.word	.LC35(GOTOFF)
	.word	.LC36(GOTOFF)
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
.L289:
	b	.L289
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
	ldr	sl, .L294
.L293:
	add	sl, pc, sl
	ldr	r3, .L294+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L294+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L294+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L294+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L294+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L294+24
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L294+28
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #3
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L294+32
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
.L295:
	.align	2
.L294:
	.word	_GLOBAL_OFFSET_TABLE_-(.L293+8)
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
	ldr	sl, .L301
.L300:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L301+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L301+8
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
.L298:
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
.L297:
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
.L302:
	.align	2
.L301:
	.word	_GLOBAL_OFFSET_TABLE_-(.L300+8)
	.word	.L297(GOTOFF)
	.word	.L298(GOTOFF)
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
	b	.L304
.L305:
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
.L304:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L305
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
	ldr	r3, .L310
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
.L311:
	.align	2
.L310:
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
	ldr	sl, .L329
.L328:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L313
.L314:
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
.L313:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L314
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L329+4
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
	ldr	r3, .L329+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-24]
	b	.L316
.L317:
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
.L316:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L317
	mov	r3, #14
	str	r3, [fp, #-24]
	b	.L319
.L320:
	ldr	r3, [fp, #-24]
	cmp	r3, #13
	beq	.L321
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
.L321:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L319:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L320
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
	b	.L324
.L325:
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
.L324:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L325
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
.L330:
	.align	2
.L329:
	.word	_GLOBAL_OFFSET_TABLE_-(.L328+8)
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
	b	.L332
.L333:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bne	.L334
	ldr	r3, .L341
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
.L334:
	ldr	r3, [fp, #-24]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L336
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
	b	.L338
.L336:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L332:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L333
	mov	r3, #0
	str	r3, [fp, #-40]
.L338:
	ldr	r3, [fp, #-40]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L342:
	.align	2
.L341:
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
	bne	.L344
	ldr	r3, .L349
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
.L344:
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
	beq	.L348
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	str	r3, [r2, #4]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #56]
.L348:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L350:
	.align	2
.L349:
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
	bne	.L352
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L355
.L352:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L355:
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
	bne	.L357
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L357:
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
	beq	.L361
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L363
.L361:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L363:
	ldr	r2, [fp, #-16]
	mov	r3, #6
	str	r3, [r2, #16]
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
	@ args = 16, pretend = 0, frame = 264
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
	b	.L438
	.p2align 2
.L379:
	b	.L367
	b	.L368
	b	.L369
	b	.L370
	b	.L371
	b	.L372
	b	.L373
	b	.L374
	b	.L375
	b	.L376
	b	.L377
	b	.L378
.L367:
	ldr	r3, .L439
	ldr	r3, [r3, #0]
	str	r3, [fp, #-248]
	ldr	r3, [fp, #-248]
	mov	r3, r3, lsr #19
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L380
	ldr	r3, .L439+4
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
	bne	.L382
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
	ldr	r3, .L439+44
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
	ldr	r2, [fp, #-264]
	mov	r3, #1
	str	r3, [r2, #64]
	b	.L384
.L382:
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
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-232]
	bl	rescheduleBlock(PLT)
.L384:
	ldr	r3, .L439+8
	str	r3, [fp, #-240]
	ldr	r2, [fp, #-240]
	ldr	r3, .L439+12
	str	r3, [r2, #0]
	ldr	r3, .L439+16
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
	b	.L438
.L380:
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	ldr	r3, .L439+20
	ldr	r3, [r3, #0]
	str	r3, [fp, #-228]
	ldr	r3, .L439+24
	ldr	r3, [r3, #0]
	str	r3, [fp, #-224]
	ldr	r3, [fp, #-228]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L386
	ldr	r3, .L439+28
	str	r3, [fp, #-220]
	ldr	r3, [fp, #-264]
	add	r3, r3, #136
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L388
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
	ldr	r3, .L439+44
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
	add	r2, r3, #136
	mov	r3, #1
	str	r3, [r2, #64]
	b	.L438
.L388:
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
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-216]
	bl	rescheduleBlock(PLT)
	b	.L438
.L386:
	ldr	r3, [fp, #-228]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L391
	ldr	r3, .L439+48
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
	beq	.L393
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
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-208]
	bl	rescheduleBlock(PLT)
	b	.L438
.L393:
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
	ldr	r3, .L439+44
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
	add	r2, r3, #68
	mov	r3, #1
	str	r3, [r2, #64]
	b	.L438
.L391:
	ldr	r3, [fp, #-228]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L396
	ldr	r2, .L439+20
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r3, [fp, #-264]
	add	r3, r3, #340
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L398
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
	ldr	r3, .L439+44
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
	add	r2, r3, #340
	mov	r3, #1
	str	r3, [r2, #64]
	b	.L438
.L398:
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
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-204]
	bl	rescheduleBlock(PLT)
	b	.L438
.L396:
	ldr	r3, [fp, #-224]
	mov	r3, r3, lsr #1
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L401
	ldr	r3, .L439+32
	str	r3, [fp, #-200]
	ldr	r3, [fp, #-264]
	add	r3, r3, #272
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L403
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
	ldr	r3, .L439+44
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-276]
	ldr	r3, [fp, #-276]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-276]
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-276]
	ldr	r3, [fp, #-276]
	str	r3, [r0, #60]
	ldr	r3, [fp, #-264]
	add	r2, r3, #272
	mov	r3, #1
	str	r3, [r2, #64]
	b	.L438
.L403:
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
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-196]
	bl	rescheduleBlock(PLT)
	b	.L438
.L401:
	ldr	r3, [fp, #-224]
	mov	r3, r3, lsr #2
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L438
	ldr	r3, .L439+40
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
	beq	.L407
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
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-188]
	bl	rescheduleBlock(PLT)
	b	.L438
.L407:
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
	ldr	r3, .L439+44
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-272]
	ldr	r3, [fp, #-272]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-272]
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-272]
	ldr	r3, [fp, #-272]
	str	r3, [r0, #60]
	ldr	r3, [fp, #-264]
	add	r2, r3, #204
	mov	r3, #1
	str	r3, [r2, #64]
	b	.L438
.L368:
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
	ldr	r3, [r3, #20]
	str	r3, [fp, #-172]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-168]
	ldr	r2, [fp, #-184]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
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
	ldr	r3, .L439+36
	str	r3, [r2, #4]
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-164]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r2, [fp, #-164]
	ldr	r3, [fp, #-180]
	str	r3, [r2, #20]
	ldr	r2, [fp, #-164]
	ldr	r3, [fp, #-172]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r2, [fp, #-168]
	ldr	r3, [fp, #-164]
	str	r2, [r3, #12]
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #52]
	ldr	r3, [fp, #-164]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-156]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-152]
	b	.L409
.L410:
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
.L409:
	ldr	r3, [fp, #-152]
	cmp	r3, #0
	bne	.L410
	mov	r3, #14
	str	r3, [fp, #-152]
	b	.L412
.L413:
	ldr	r3, [fp, #-152]
	cmp	r3, #13
	beq	.L414
	ldr	r3, [fp, #-164]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-164]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-164]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-152]
	str	r3, [r2, #0]
.L414:
	ldr	r3, [fp, #-152]
	sub	r3, r3, #1
	str	r3, [fp, #-152]
.L412:
	ldr	r3, [fp, #-152]
	cmp	r3, #3
	bhi	.L413
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L417
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #4]
	b	.L419
.L417:
	ldr	r3, [fp, #-160]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-164]
	str	r3, [r2, #4]
.L419:
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
	b	.L438
.L369:
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
	ldr	r3, [r3, #20]
	str	r3, [r1, #8]
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	b	.L438
.L370:
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
	ldr	r3, [r3, #24]
	str	r3, [r1, #8]
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	b	.L438
.L371:
	ldr	r3, [fp, #12]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #8]
	bl	rescheduleActive(PLT)
	b	.L438
.L372:
	ldr	r0, [fp, #-256]
	ldr	r1, [fp, #-260]
	bl	closeActive(PLT)
	b	.L438
.L373:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-136]
	ldr	r2, [fp, #-136]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-132]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-260]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-132]
	str	r2, [r3, #40]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-132]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-260]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-132]
	str	r2, [r3, #32]
	ldr	r2, [fp, #-128]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	ble	.L420
	ldr	r3, [fp, #-128]
	cmp	r3, #30
	ble	.L422
.L420:
	ldr	r2, [fp, #-132]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L438
.L422:
	ldr	r3, [fp, #-140]
	mov	r0, r3
	ldr	r1, [fp, #-256]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L423
	ldr	r2, [fp, #-132]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r2, [fp, #-124]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-256]
	mov	r1, r3
	ldr	r2, [fp, #-124]
	bl	rescheduleBlock(PLT)
	ldr	r3, [fp, #-132]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-132]
	ldr	r3, [r3, #36]
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
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-136]
	str	r3, [r2, #0]
	b	.L438
.L423:
	ldr	r2, [fp, #-132]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-132]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L426
	ldr	r3, [fp, #-124]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-116]
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-116]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-124]
	str	r2, [r3, #52]
	b	.L438
.L426:
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-124]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-132]
	ldr	r3, [fp, #-124]
	str	r2, [r3, #52]
	b	.L438
.L374:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-108]
	ldr	r2, [fp, #-108]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-104]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-104]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-260]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-104]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L428
	ldr	r3, [fp, #-104]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-112]
	mov	r0, r3
	ldr	r1, [fp, #-256]
	bl	blockActive(PLT)
	b	.L438
.L428:
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #48]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-96]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-104]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-100]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-104]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #20]
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
	str	r3, [r2, #16]
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-104]
	str	r2, [r3, #48]
	b	.L438
.L375:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-88]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #28]
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
	str	r3, [r2, #16]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #12]
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
	b	.L438
.L440:
	.align	2
.L439:
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
	.word	-2138243052
	.word	1374389535
	.word	-2138308588
	.word	-2139029408
.L376:
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-72]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-256]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-68]
	ldr	r2, [fp, #-68]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-252]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-260]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	cmp	r3, #3
	bne	.L431
	ldr	r3, .L439+40
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-56]
	str	r2, [r3, #0]
	b	.L433
.L431:
	ldr	r3, [fp, #-60]
	cmp	r3, #1
	bne	.L433
	ldr	r3, .L439+48
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #0]
	orr	r2, r3, #32
	ldr	r3, [fp, #-52]
	str	r2, [r3, #0]
.L433:
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
	ble	.L435
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
	ldr	r3, .L439+44
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
	mov	r3, #0
	str	r3, [r2, #64]
	b	.L438
.L435:
	ldr	r2, [fp, #-64]
	mov	r3, #5
	str	r3, [r2, #16]
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
	b	.L438
.L377:
	ldr	r3, .L439+48
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
	str	r3, [r2, #16]
	ldr	r3, [fp, #-44]
	mov	r0, r3
	ldr	r1, [fp, #-256]
	bl	blockActive(PLT)
	b	.L438
.L378:
	ldr	r3, .L439+52
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
.L438:
	sub	sp, fp, #28
	ldmfd	sp, {r4, r5, r6, r7, fp, sp, pc}
	.size	handle, .-handle
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 2648
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #2656
	sub	sp, sp, #8
	str	r0, [fp, #-2656]
	str	r1, [fp, #-2660]
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
	ldr	r3, .L446
	str	r3, [fp, #-36]
	ldr	r3, .L446+4
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-36]
	ldr	r3, [r3, #0]
	orr	r2, r3, #256
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
	sub	r2, fp, #1824
	sub	r2, r2, #12
	sub	r1, fp, #1904
	sub	r1, r1, #12
	sub	ip, fp, #2624
	sub	ip, ip, #12
	sub	r3, fp, #2576
	sub	r3, r3, #12
	sub	r3, r3, #8
	mov	r0, r2
	mov	r2, ip
	bl	initialize(PLT)
	mov	r3, #0
	str	r3, [fp, #-2640]
	mov	r3, #0
	str	r3, [fp, #-2644]
	mov	r3, #0
	str	r3, [fp, #-2648]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-2652]
.L442:
	sub	r2, fp, #1904
	sub	r2, r2, #12
	sub	r1, fp, #2624
	sub	r1, r1, #12
	sub	r3, fp, #2624
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r0, r2
	mov	r2, r3
	bl	schedule(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L443
	sub	r3, fp, #2624
	sub	r3, r3, #12
	ldr	r0, [fp, #-28]
	mov	r1, r3
	bl	getNextRequest(PLT)
	sub	r2, fp, #1824
	sub	r2, r2, #12
	sub	r1, fp, #1904
	sub	r1, r1, #12
	sub	lr, fp, #2624
	sub	lr, lr, #12
	sub	ip, fp, #2576
	sub	ip, ip, #12
	sub	ip, ip, #8
	sub	r3, fp, #2624
	sub	r3, r3, #12
	sub	r3, r3, #4
	str	r3, [sp, #0]
	sub	r3, fp, #2624
	sub	r3, r3, #12
	sub	r3, r3, #8
	str	r3, [sp, #4]
	sub	r3, fp, #2624
	sub	r3, r3, #12
	sub	r3, r3, #12
	str	r3, [sp, #8]
	sub	r3, fp, #2640
	sub	r3, r3, #12
	str	r3, [sp, #12]
	mov	r0, r2
	mov	r2, lr
	mov	r3, ip
	bl	handle(PLT)
	b	.L442
.L443:
	ldr	r3, .L446+8
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L446+12
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
	ldr	r3, .L446+16
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, #524288
	str	r3, [r2, #0]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L447:
	.align	2
.L446:
	.word	-2139029404
	.word	-2139029408
	.word	-2139029376
	.word	-2139029368
	.word	-2146697196
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
