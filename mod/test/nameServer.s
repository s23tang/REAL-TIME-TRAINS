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
	.align	2
.LC6:
	.ascii	"driver\000"
	.align	2
.LC7:
	.ascii	"printer\000"
	.align	2
.LC8:
	.ascii	"monitor\000"
	.text
	.align	2
	.global	nameServer
	.type	nameServer, %function
nameServer:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #112
	ldr	sl, .L61
.L60:
	add	sl, pc, sl
	ldr	r3, .L61+4
	add	r3, sl, r3
	str	r3, [fp, #-96]
	ldr	r3, .L61+8
	add	r3, sl, r3
	str	r3, [fp, #-88]
	ldr	r3, .L61+12
	add	r3, sl, r3
	str	r3, [fp, #-80]
	ldr	r3, .L61+16
	add	r3, sl, r3
	str	r3, [fp, #-72]
	ldr	r3, .L61+20
	add	r3, sl, r3
	str	r3, [fp, #-64]
	ldr	r3, .L61+24
	add	r3, sl, r3
	str	r3, [fp, #-56]
	ldr	r3, .L61+28
	add	r3, sl, r3
	str	r3, [fp, #-48]
	ldr	r3, .L61+32
	add	r3, sl, r3
	str	r3, [fp, #-40]
	ldr	r3, .L61+36
	add	r3, sl, r3
	str	r3, [fp, #-32]
	b	.L59
.L12:
.L59:
	sub	r2, fp, #112
	sub	r3, fp, #100
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Receive(PLT)
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-120]
	mov	r3, #0
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-108]
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-112]
	str	r1, [fp, #-128]
	ldr	r3, [fp, #-128]
	cmp	r3, #1
	beq	.L14
	ldr	r1, [fp, #-128]
	cmp	r1, #2
	beq	.L15
	b	.L12
.L14:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L16
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-100]
	mov	r0, r3
	mvn	r2, #75
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
	str	r3, [fp, #-124]
	mov	r3, #1
	str	r3, [fp, #-20]
	b	.L26
.L23:
	mov	r3, #0
	str	r3, [fp, #-124]
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
	str	r3, [fp, #-124]
	mov	r3, #3
	str	r3, [fp, #-20]
	b	.L26
.L27:
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #4
	str	r3, [fp, #-20]
.L26:
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-100]
	mov	r0, r3
	mvn	r2, #75
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
	str	r3, [fp, #-124]
	mov	r3, #5
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-100]
	mov	r0, r3
	mvn	r2, #75
	mov	r3, r1, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	str	r0, [r3, #0]
	b	.L18
.L29:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L31
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #6
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-100]
	mov	r0, r3
	mvn	r2, #75
	mov	r3, r1, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	str	r0, [r3, #0]
	b	.L18
.L31:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #112
	bne	.L33
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #7
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-100]
	mov	r0, r3
	mvn	r2, #75
	mov	r3, r1, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	str	r0, [r3, #0]
	b	.L18
.L33:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L35
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #8
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-100]
	mov	r0, r3
	mvn	r2, #75
	mov	r3, r1, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	str	r0, [r3, #0]
	b	.L18
.L35:
	mvn	r3, #0
	str	r3, [fp, #-124]
.L18:
	ldr	r3, [fp, #-100]
	sub	r2, fp, #124
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L12
.L15:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L37
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mvn	r2, #75
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-116]
	b	.L39
.L37:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #117
	bne	.L40
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L42
	ldr	r3, [fp, #-24]
	add	r3, r3, #2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #103
	bne	.L44
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #1
	str	r3, [fp, #-20]
	b	.L47
.L44:
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #2
	str	r3, [fp, #-20]
	b	.L47
.L42:
	ldr	r3, [fp, #-24]
	add	r3, r3, #2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #103
	bne	.L48
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #3
	str	r3, [fp, #-20]
	b	.L47
.L48:
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #4
	str	r3, [fp, #-20]
.L47:
	ldr	r3, [fp, #-20]
	mvn	r2, #75
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-116]
	b	.L39
.L40:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L50
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #5
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mvn	r2, #75
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-116]
	b	.L39
.L50:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L52
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #6
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mvn	r2, #75
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-116]
	b	.L39
.L52:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #112
	bne	.L54
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #7
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mvn	r2, #75
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-116]
	b	.L39
.L54:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L56
	mov	r3, #0
	str	r3, [fp, #-124]
	mov	r3, #8
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	mvn	r2, #75
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-116]
	b	.L39
.L56:
	mvn	r3, #0
	str	r3, [fp, #-124]
.L39:
	ldr	r3, [fp, #-100]
	sub	r2, fp, #124
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L12
.L62:
	.align	2
.L61:
	.word	_GLOBAL_OFFSET_TABLE_-(.L60+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	.LC6(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	.LC8(GOTOFF)
	.size	nameServer, .-nameServer
	.ident	"GCC: (GNU) 4.0.2"
