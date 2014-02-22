	.file	"io.c"
	.text
	.align	2
	.global	setfifo
	.type	setfifo, %function
setfifo:
	@ args = 0, pretend = 0, frame = 28
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L3
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	beq	.L4
	b	.L2
.L3:
	ldr	r3, .L11
	str	r3, [fp, #-20]
	b	.L5
.L4:
	ldr	r3, .L11+4
	str	r3, [fp, #-20]
	b	.L5
.L2:
	mvn	r3, #0
	str	r3, [fp, #-36]
	b	.L6
.L5:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [fp, #-16]
	orr	r3, r3, #16
	str	r3, [fp, #-32]
	b	.L9
.L7:
	ldr	r3, [fp, #-16]
	bic	r3, r3, #16
	str	r3, [fp, #-32]
.L9:
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-36]
.L6:
	ldr	r3, [fp, #-36]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L12:
	.align	2
.L11:
	.word	-2138308600
	.word	-2138243064
	.size	setfifo, .-setfifo
	.align	2
	.global	Getc
	.type	Getc, %function
Getc:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	mov	r3, #7
	str	r3, [fp, #-20]
	sub	r2, fp, #20
	sub	ip, fp, #28
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-24]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	Getc, .-Getc
	.align	2
	.global	Putc
	.type	Putc, %function
Putc:
	@ args = 0, pretend = 0, frame = 28
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	mov	r3, r2
	strb	r3, [fp, #-40]
	mov	r3, #6
	str	r3, [fp, #-20]
	ldrb	r3, [fp, #-40]	@ zero_extendqisi2
	str	r3, [fp, #-16]
	sub	r2, fp, #20
	sub	ip, fp, #28
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-28]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	Putc, .-Putc
	.section	.rodata
	.align	2
.LC0:
	.ascii	"u2g\000"
	.align	2
.LC1:
	.ascii	"uart2GetServer: register failed\012\015\000"
	.text
	.align	2
	.global	uart2GetServer
	.type	uart2GetServer, %function
uart2GetServer:
	@ args = 0, pretend = 0, frame = 676
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #680
	ldr	sl, .L32
.L31:
	add	sl, pc, sl
	ldr	r3, .L32+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	cmn	r3, #1
	bne	.L18
	mov	r0, #1
	ldr	r3, .L32+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L18:
	ldr	r3, .L32+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-44]
	mov	r0, #0
	ldr	r1, [fp, #-44]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #4
	str	r3, [fp, #-680]
	ldr	r2, [fp, #-48]
	sub	r1, fp, #680
	sub	ip, fp, #688
	mov	r3, #8
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	b	.L30
.L20:
.L30:
	sub	r3, fp, #688
	sub	r2, fp, #52
	mov	r0, r2
	mov	r1, r3
	mov	r2, #8
	bl	Receive(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r0, [fp, #-688]
	str	r0, [fp, #-692]
	ldr	r1, [fp, #-692]
	cmp	r1, #1
	beq	.L22
	ldr	r2, [fp, #-692]
	cmp	r2, #7
	beq	.L23
	b	.L20
.L22:
	mov	r3, #0
	str	r3, [fp, #-680]
	ldr	r3, [fp, #-48]
	sub	r2, fp, #680
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bne	.L24
	ldr	r1, [fp, #-36]
	ldr	r3, [fp, #-684]
	and	r0, r3, #255
	ldr	r2, .L32+16
	sub	ip, fp, #16
	add	r3, ip, r1
	add	r2, r3, r2
	mov	r3, r0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-36]
	add	r1, r3, #1
	ldr	r3, .L32+20
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #5
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	rsb	r3, r3, r1
	str	r3, [fp, #-36]
	b	.L20
.L24:
	ldr	r3, [fp, #-32]
	ldr	r2, .L32+24
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-32]
	add	r1, r3, #1
	ldr	r3, .L32+28
	smull	r2, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, r1
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-684]
	str	r3, [fp, #-676]
	sub	r3, fp, #680
	ldr	r0, [fp, #-20]
	mov	r1, r3
	mov	r2, #8
	bl	Reply(PLT)
	b	.L20
.L23:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bne	.L27
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-52]
	ldr	r2, .L32+24
	mov	r3, r3, asl #2
	sub	ip, fp, #16
	add	r3, r3, ip
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-28]
	add	r1, r3, #1
	ldr	r3, .L32+28
	smull	r0, r3, r1, r3
	add	r3, r3, r1
	mov	r2, r3, asr #4
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #1
	rsb	r3, r3, r1
	str	r3, [fp, #-28]
	b	.L20
.L27:
	ldr	r3, [fp, #-40]
	ldr	r2, .L32+16
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	str	r3, [fp, #-676]
	ldr	r3, [fp, #-40]
	add	r1, r3, #1
	ldr	r3, .L32+20
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #5
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	rsb	r3, r3, r1
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-680]
	ldr	r3, [fp, #-52]
	sub	r2, fp, #680
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	b	.L20
.L33:
	.align	2
.L32:
	.word	_GLOBAL_OFFSET_TABLE_-(.L31+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	notifier(GOT)
	.word	-536
	.word	274877907
	.word	-656
	.word	-2004318071
	.size	uart2GetServer, .-uart2GetServer
	.section	.rodata
	.align	2
.LC2:
	.ascii	"u2x\000"
	.align	2
.LC3:
	.ascii	"uart2PutServer: register failed\012\015\000"
	.text
	.align	2
	.global	uart2PutServer
	.type	uart2PutServer, %function
uart2PutServer:
	@ args = 0, pretend = 0, frame = 552
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #556
	ldr	sl, .L49
.L48:
	add	sl, pc, sl
	ldr	r3, .L49+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	cmn	r3, #1
	bne	.L35
	mov	r0, #1
	ldr	r3, .L49+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L35:
	ldr	r3, .L49+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-40]
	mov	r0, #0
	ldr	r1, [fp, #-40]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #3
	str	r3, [fp, #-556]
	ldr	r2, [fp, #-44]
	sub	r1, fp, #556
	sub	ip, fp, #564
	mov	r3, #8
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	b	.L47
.L37:
.L47:
	sub	r3, fp, #564
	sub	r2, fp, #48
	mov	r0, r2
	mov	r1, r3
	mov	r2, #8
	bl	Receive(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-564]
	str	r1, [fp, #-568]
	ldr	r2, [fp, #-568]
	cmp	r2, #1
	beq	.L39
	ldr	r3, [fp, #-568]
	cmp	r3, #6
	beq	.L40
	b	.L37
.L39:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bne	.L41
	mov	r3, #1
	str	r3, [fp, #-28]
	b	.L37
.L41:
	ldr	r3, [fp, #-36]
	ldr	r2, .L49+16
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]
	strb	r3, [fp, #-17]
	ldr	r3, [fp, #-36]
	add	r1, r3, #1
	ldr	r3, .L49+20
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #5
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	rsb	r3, r3, r1
	str	r3, [fp, #-36]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	str	r3, [fp, #-552]
	ldr	r3, [fp, #-44]
	sub	r2, fp, #556
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L37
.L40:
	mov	r3, #0
	str	r3, [fp, #-556]
	mov	r3, #0
	str	r3, [fp, #-552]
	ldr	r3, [fp, #-48]
	sub	r2, fp, #556
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L44
	ldr	r1, [fp, #-32]
	ldr	r3, [fp, #-560]
	and	r0, r3, #255
	ldr	r2, .L49+16
	sub	ip, fp, #16
	add	r3, ip, r1
	add	r2, r3, r2
	mov	r3, r0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r1, r3, #1
	ldr	r3, .L49+20
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #5
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #2
	rsb	r3, r3, r1
	str	r3, [fp, #-32]
	b	.L37
.L44:
	ldr	r3, [fp, #-560]
	str	r3, [fp, #-552]
	mov	r3, #0
	str	r3, [fp, #-556]
	ldr	r3, [fp, #-44]
	sub	r2, fp, #556
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L37
.L50:
	.align	2
.L49:
	.word	_GLOBAL_OFFSET_TABLE_-(.L48+8)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	notifier(GOT)
	.word	-532
	.word	274877907
	.size	uart2PutServer, .-uart2PutServer
	.align	2
	.global	putw
	.type	putw, %function
putw:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	strb	r3, [fp, #-36]
	ldr	r3, [fp, #4]
	str	r3, [fp, #-16]
	b	.L52
.L53:
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	str	r3, [fp, #-32]
.L52:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r2, r3, #255
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	eor	r3, r2, #1
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L56
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bgt	.L53
	b	.L56
.L57:
	ldrb	r3, [fp, #-36]	@ zero_extendqisi2
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-28]
	mov	r2, r3
	bl	Putc(PLT)
.L56:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	movle	r3, #0
	movgt	r3, #1
	and	r2, r3, #255
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	str	r3, [fp, #-32]
	cmp	r2, #0
	bne	.L57
	b	.L59
.L60:
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-28]
	mov	r2, r3
	bl	Putc(PLT)
.L59:
	ldr	r3, [fp, #4]
	ldrb	r3, [r3, #0]
	strb	r3, [fp, #-17]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r2, r3, #255
	ldr	r3, [fp, #4]
	add	r3, r3, #1
	str	r3, [fp, #4]
	cmp	r2, #0
	bne	.L60
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	putw, .-putw
	.align	2
	.global	a2d
	.type	a2d, %function
a2d:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	mov	r3, r0
	strb	r3, [fp, #-16]
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L64
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L64
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-20]
	b	.L67
.L64:
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L68
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	cmp	r3, #102
	bhi	.L68
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	sub	r3, r3, #87
	str	r3, [fp, #-20]
	b	.L67
.L68:
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L71
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	cmp	r3, #70
	bhi	.L71
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	sub	r3, r3, #55
	str	r3, [fp, #-20]
	b	.L67
.L71:
	mvn	r3, #0
	str	r3, [fp, #-20]
.L67:
	ldr	r3, [fp, #-20]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	a2d, .-a2d
	.align	2
	.global	a2i
	.type	a2i, %function
a2i:
	@ args = 0, pretend = 0, frame = 28
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, r0
	strb	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L76
.L77:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bgt	.L78
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	mul	r2, r3, r2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #0]
	strb	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L76:
	ldrb	r3, [fp, #-28]	@ zero_extendqisi2
	mov	r0, r3
	bl	a2d(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L77
.L78:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-16]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
	ldrb	r3, [fp, #-28]	@ zero_extendqisi2
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	a2i, .-a2i
	.global	__udivsi3
	.global	__umodsi3
	.align	2
	.global	ui2a
	.type	ui2a, %function
ui2a:
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
	mov	r3, #1
	str	r3, [fp, #-16]
	b	.L82
.L83:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	mul	r3, r2, r3
	str	r3, [fp, #-16]
.L82:
	ldr	r0, [fp, #-28]
	ldr	r1, [fp, #-16]
	bl	__udivsi3(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bcs	.L83
	b	.L95
.L86:
	ldr	r0, [fp, #-28]
	ldr	r1, [fp, #-16]
	bl	__udivsi3(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	mov	r0, r3
	ldr	r1, [fp, #-16]
	bl	__umodsi3(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-16]
	ldr	r1, [fp, #-32]
	bl	__udivsi3(PLT)
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L87
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bgt	.L87
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L85
.L87:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bgt	.L90
	mov	r1, #48
	str	r1, [fp, #-40]
	b	.L92
.L90:
	mov	r3, #87
	str	r3, [fp, #-40]
.L92:
	ldr	r3, [fp, #-20]
	and	r3, r3, #255
	ldr	r1, [fp, #-40]
	mov	r2, r1
	add	r3, r2, r3
	and	r3, r3, #255
	and	r3, r3, #255
	ldr	r2, [fp, #-36]
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L85:
.L95:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L86
	ldr	r3, [fp, #-36]
	mov	r2, #0
	strb	r2, [r3, #0]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	ui2a, .-ui2a
	.align	2
	.global	i2a
	.type	i2a, %function
i2a:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L97
	ldr	r3, [fp, #-16]
	rsb	r3, r3, #0
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	mov	r3, #45
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L97:
	ldr	r3, [fp, #-16]
	mov	r0, r3
	mov	r1, #10
	ldr	r2, [fp, #-20]
	bl	ui2a(PLT)
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	i2a, .-i2a
	.align	2
	.global	format
	.type	format, %function
format:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #52
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	b	.L122
.L102:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L103
.L104:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L103:
	ldr	r2, [fp, #-16]
	ldr	r3, .L123
	cmp	r2, r3
	ble	.L104
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	cmp	r3, #37
	beq	.L106
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-44]
	mov	r2, r3
	bl	Putc(PLT)
	b	.L101
.L106:
	mov	r3, #0
	strb	r3, [fp, #-17]
	mov	r3, #0
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-48]
	ldrb	r3, [r2, #0]
	strb	r3, [fp, #-18]
	add	r3, r2, #1
	str	r3, [fp, #-48]
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	cmp	r3, #48
	beq	.L109
	ldr	r3, [fp, #-60]
	cmp	r3, #48
	blt	.L108
	ldr	r3, [fp, #-60]
	cmp	r3, #57
	bgt	.L108
	b	.L110
.L109:
	mov	r3, #1
	strb	r3, [fp, #-17]
	ldr	r2, [fp, #-48]
	ldrb	r3, [r2, #0]
	strb	r3, [fp, #-18]
	add	r3, r2, #1
	str	r3, [fp, #-48]
	b	.L108
.L110:
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	sub	r2, fp, #48
	sub	ip, fp, #36
	mov	r0, r3
	mov	r1, r2
	mov	r2, #10
	mov	r3, ip
	bl	a2i(PLT)
	mov	r3, r0
	strb	r3, [fp, #-18]
.L108:
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #115
	beq	.L115
	ldr	r3, [fp, #-56]
	cmp	r3, #115
	bgt	.L118
	ldr	r3, [fp, #-56]
	cmp	r3, #99
	beq	.L113
	ldr	r3, [fp, #-56]
	cmp	r3, #99
	bgt	.L119
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L121
	ldr	r3, [fp, #-56]
	cmp	r3, #37
	beq	.L112
	b	.L101
.L119:
	ldr	r3, [fp, #-56]
	cmp	r3, #100
	beq	.L114
	b	.L101
.L118:
	ldr	r3, [fp, #-56]
	cmp	r3, #117
	beq	.L116
	ldr	r3, [fp, #-56]
	cmp	r3, #120
	beq	.L117
	b	.L101
.L113:
	ldr	r3, [fp, #-52]
	add	r3, r3, #4
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #4
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-44]
	mov	r2, r3
	bl	Putc(PLT)
	b	.L101
.L115:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-52]
	add	r3, r3, #4
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #4
	ldr	r3, [r3, #0]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-44]
	mov	r3, #0
	bl	putw(PLT)
	b	.L101
.L116:
	ldr	r3, [fp, #-52]
	add	r3, r3, #4
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #4
	ldr	r3, [r3, #0]
	sub	r2, fp, #30
	mov	r0, r3
	mov	r1, #10
	bl	ui2a(PLT)
	ldr	r3, [fp, #-36]
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	sub	ip, fp, #30
	ldr	r0, [fp, #-44]
	mov	r1, r3
	mov	r3, ip
	bl	bwputw(PLT)
	b	.L101
.L114:
	ldr	r3, [fp, #-52]
	add	r3, r3, #4
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #4
	ldr	r3, [r3, #0]
	sub	r2, fp, #30
	mov	r0, r3
	mov	r1, r2
	bl	i2a(PLT)
	ldr	r2, [fp, #-36]
	ldrb	ip, [fp, #-17]	@ zero_extendqisi2
	sub	r3, fp, #30
	str	r3, [sp, #0]
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-44]
	mov	r3, ip
	bl	putw(PLT)
	b	.L101
.L117:
	ldr	r3, [fp, #-52]
	add	r3, r3, #4
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #4
	ldr	r3, [r3, #0]
	sub	r2, fp, #30
	mov	r0, r3
	mov	r1, #16
	bl	ui2a(PLT)
	ldr	r2, [fp, #-36]
	ldrb	ip, [fp, #-17]	@ zero_extendqisi2
	sub	r3, fp, #30
	str	r3, [sp, #0]
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-44]
	mov	r3, ip
	bl	putw(PLT)
	b	.L101
.L112:
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	ldr	r0, [fp, #-40]
	ldr	r1, [fp, #-44]
	mov	r2, r3
	bl	Putc(PLT)
.L101:
.L122:
	ldr	r1, [fp, #-48]
	ldrb	r3, [r1, #0]
	strb	r3, [fp, #-18]
	ldrb	r3, [fp, #-18]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r2, r3, #255
	add	r3, r1, #1
	str	r3, [fp, #-48]
	cmp	r2, #0
	bne	.L102
.L121:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L124:
	.align	2
.L123:
	.word	499
	.size	format, .-format
	.align	2
	.global	myprintf
	.type	myprintf, %function
myprintf:
	@ args = 4, pretend = 8, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 1
	mov	ip, sp
	stmfd	sp!, {r2, r3}
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #12
	sub	sp, sp, #12
	str	r0, [fp, #-20]
	str	r1, [fp, #-24]
	add	r3, fp, #8
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-20]
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #-16]
	bl	format(PLT)
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	myprintf, .-myprintf
	.ident	"GCC: (GNU) 4.0.2"
