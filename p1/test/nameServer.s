	.file	"nameServer.c"
	.text
	.align	2
	.global	RegisterAs
	.type	RegisterAs, %function
RegisterAs:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #36
	str	r0, [fp, #-40]
	mov	r3, #1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-20]
	sub	r2, fp, #24
	sub	ip, fp, #36
	mov	r3, #12
	str	r3, [sp, #0]
	mov	r0, #2
	mov	r1, r2
	mov	r2, #12
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L2
	mvn	r3, #0
	str	r3, [fp, #-44]
	b	.L4
.L2:
	mov	r3, #0
	str	r3, [fp, #-44]
.L4:
	ldr	r3, [fp, #-44]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	RegisterAs, .-RegisterAs
	.align	2
	.global	WhoIs
	.type	WhoIs, %function
WhoIs:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #36
	str	r0, [fp, #-40]
	mov	r3, #2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-20]
	sub	r2, fp, #24
	sub	ip, fp, #36
	mov	r3, #12
	str	r3, [sp, #0]
	mov	r0, #2
	mov	r1, r2
	mov	r2, #12
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L7
	mvn	r3, #0
	str	r3, [fp, #-44]
	b	.L9
.L7:
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-44]
.L9:
	ldr	r3, [fp, #-44]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	WhoIs, .-WhoIs
	.section	.rodata
	.align	2
.LC0:
	.ascii	"clock\000"
	.align	2
.LC1:
	.ascii	"u1g\000"
	.align	2
.LC2:
	.ascii	"u1x\000"
	.align	2
.LC3:
	.ascii	"u2g\000"
	.align	2
.LC4:
	.ascii	"u2x\000"
	.align	2
.LC5:
	.ascii	"route\000"
	.text
	.align	2
	.global	nameServer
	.type	nameServer, %function
nameServer:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #88
	ldr	sl, .L49
.L48:
	add	sl, pc, sl
	ldr	r3, .L49+4
	add	r3, sl, r3
	str	r3, [fp, #-72]
	ldr	r3, .L49+8
	add	r3, sl, r3
	str	r3, [fp, #-64]
	ldr	r3, .L49+12
	add	r3, sl, r3
	str	r3, [fp, #-56]
	ldr	r3, .L49+16
	add	r3, sl, r3
	str	r3, [fp, #-48]
	ldr	r3, .L49+20
	add	r3, sl, r3
	str	r3, [fp, #-40]
	ldr	r3, .L49+24
	add	r3, sl, r3
	str	r3, [fp, #-32]
	b	.L47
.L12:
.L47:
	sub	r2, fp, #88
	sub	r3, fp, #76
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Receive(PLT)
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #0
	str	r3, [fp, #-96]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-84]
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-88]
	str	r1, [fp, #-104]
	ldr	r3, [fp, #-104]
	cmp	r3, #1
	beq	.L14
	ldr	r1, [fp, #-104]
	cmp	r1, #2
	beq	.L15
	b	.L12
.L14:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L16
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mvn	r2, #51
	mov	r3, r1, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	str	r0, [r3, #0]
	b	.L18
.L16:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #117
	bne	.L19
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L21
	ldr	r3, [fp, #-24]
	add	r3, r3, #2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #103
	bne	.L23
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #1
	str	r3, [fp, #-20]
	b	.L26
.L23:
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #2
	str	r3, [fp, #-20]
	b	.L26
.L21:
	ldr	r3, [fp, #-24]
	add	r3, r3, #2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #103
	bne	.L27
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #3
	str	r3, [fp, #-20]
	b	.L26
.L27:
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #4
	str	r3, [fp, #-20]
.L26:
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mvn	r2, #51
	mov	r3, r1, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	str	r0, [r3, #0]
	b	.L18
.L19:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L29
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #5
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-76]
	mov	r0, r3
	mvn	r2, #51
	mov	r3, r1, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	str	r0, [r3, #0]
	b	.L18
.L29:
	mvn	r3, #0
	str	r3, [fp, #-100]
.L18:
	ldr	r3, [fp, #-76]
	sub	r2, fp, #100
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L12
.L15:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L31
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mvn	r2, #51
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-92]
	b	.L33
.L31:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #117
	bne	.L34
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L36
	ldr	r3, [fp, #-24]
	add	r3, r3, #2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #103
	bne	.L38
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #1
	str	r3, [fp, #-20]
	b	.L41
.L38:
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #2
	str	r3, [fp, #-20]
	b	.L41
.L36:
	ldr	r3, [fp, #-24]
	add	r3, r3, #2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #103
	bne	.L42
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #3
	str	r3, [fp, #-20]
	b	.L41
.L42:
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #4
	str	r3, [fp, #-20]
.L41:
	ldr	r3, [fp, #-20]
	mvn	r2, #51
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-92]
	b	.L33
.L34:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L44
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #5
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mvn	r2, #51
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-92]
	b	.L33
.L44:
	mvn	r3, #0
	str	r3, [fp, #-100]
.L33:
	ldr	r3, [fp, #-76]
	sub	r2, fp, #100
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L12
.L50:
	.align	2
.L49:
	.word	_GLOBAL_OFFSET_TABLE_-(.L48+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.size	nameServer, .-nameServer
	.ident	"GCC: (GNU) 4.0.2"
