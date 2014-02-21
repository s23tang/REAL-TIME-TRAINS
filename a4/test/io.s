	.file	"io.c"
	.text
	.align	2
	.global	getc
	.type	getc, %function
getc:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #24
	str	r0, [fp, #-28]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L3
	ldr	r3, [fp, #-36]
	cmp	r3, #1
	beq	.L4
	b	.L2
.L3:
	ldr	r3, .L9
	str	r3, [fp, #-24]
	ldr	r3, .L9+4
	str	r3, [fp, #-20]
	b	.L5
.L4:
	ldr	r3, .L9+8
	str	r3, [fp, #-24]
	ldr	r3, .L9+12
	str	r3, [fp, #-20]
	b	.L5
.L2:
	mvn	r3, #0
	str	r3, [fp, #-32]
	b	.L6
.L5:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	mov	r3, r3, lsr #4
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L5
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	strb	r3, [fp, #-13]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	str	r3, [fp, #-32]
.L6:
	ldr	r3, [fp, #-32]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L10:
	.align	2
.L9:
	.word	-2138308584
	.word	-2138308608
	.word	-2138243048
	.word	-2138243072
	.size	getc, .-getc
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
	beq	.L13
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	beq	.L14
	b	.L12
.L13:
	ldr	r3, .L21
	str	r3, [fp, #-20]
	b	.L15
.L14:
	ldr	r3, .L21+4
	str	r3, [fp, #-20]
	b	.L15
.L12:
	mvn	r3, #0
	str	r3, [fp, #-36]
	b	.L16
.L15:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L17
	ldr	r3, [fp, #-16]
	orr	r3, r3, #16
	str	r3, [fp, #-32]
	b	.L19
.L17:
	ldr	r3, [fp, #-16]
	bic	r3, r3, #16
	str	r3, [fp, #-32]
.L19:
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-36]
.L16:
	ldr	r3, [fp, #-36]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L22:
	.align	2
.L21:
	.word	-2138308600
	.word	-2138243064
	.size	setfifo, .-setfifo
	.section	.rodata
	.align	2
.LC0:
	.ascii	"got %c\012\015\000"
	.text
	.align	2
	.global	uart2GetServer
	.type	uart2GetServer, %function
uart2GetServer:
	@ args = 0, pretend = 0, frame = 476
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #480
	ldr	sl, .L36
.L35:
	add	sl, pc, sl
	ldr	r3, .L36+4
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
	str	r3, [fp, #-480]
	ldr	r2, [fp, #-48]
	sub	r1, fp, #480
	sub	ip, fp, #488
	mov	r3, #8
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	b	.L34
.L24:
.L34:
	sub	r3, fp, #488
	sub	r2, fp, #52
	mov	r0, r2
	mov	r1, r3
	mov	r2, #8
	bl	Receive(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r0, [fp, #-488]
	str	r0, [fp, #-492]
	ldr	r1, [fp, #-492]
	cmp	r1, #1
	beq	.L26
	ldr	r2, [fp, #-492]
	cmp	r2, #7
	beq	.L27
	b	.L24
.L26:
	ldr	r3, [fp, #-484]
	and	r3, r3, #255
	mov	r2, r3
	mov	r0, #1
	ldr	r3, .L36+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r3, #0
	str	r3, [fp, #-480]
	ldr	r3, [fp, #-48]
	sub	r2, fp, #480
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bne	.L28
	ldr	r1, [fp, #-36]
	ldr	r3, [fp, #-484]
	and	r0, r3, #255
	ldr	r2, .L36+12
	sub	ip, fp, #16
	add	r3, ip, r1
	add	r2, r3, r2
	mov	r3, r0
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-36]
	add	r1, r3, #1
	ldr	r3, .L36+16
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #5
	mov	r3, r1, asr #31
	rsb	r3, r3, r2
	mov	r2, r3
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	rsb	r3, r3, r1
	str	r3, [fp, #-36]
	b	.L24
.L28:
	ldr	r3, [fp, #-32]
	ldr	r2, .L36+20
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-32]
	add	r1, r3, #1
	ldr	r3, .L36+24
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
	ldr	r3, [fp, #-484]
	str	r3, [fp, #-476]
	sub	r3, fp, #480
	ldr	r0, [fp, #-20]
	mov	r1, r3
	mov	r2, #8
	bl	Reply(PLT)
	b	.L24
.L27:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bne	.L31
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-52]
	ldr	r2, .L36+20
	mov	r3, r3, asl #2
	sub	ip, fp, #16
	add	r3, r3, ip
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-28]
	add	r1, r3, #1
	ldr	r3, .L36+24
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
	b	.L24
.L31:
	ldr	r3, [fp, #-40]
	ldr	r2, .L36+12
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	str	r3, [fp, #-476]
	ldr	r3, [fp, #-40]
	add	r1, r3, #1
	ldr	r3, .L36+16
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #5
	mov	r3, r1, asr #31
	rsb	r3, r3, r2
	mov	r2, r3
	mov	r2, r2, asl #2
	add	r2, r2, r3
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	rsb	r3, r3, r1
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-480]
	ldr	r3, [fp, #-52]
	sub	r2, fp, #480
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	b	.L24
.L37:
	.align	2
.L36:
	.word	_GLOBAL_OFFSET_TABLE_-(.L35+8)
	.word	notifier(GOT)
	.word	.LC0(GOTOFF)
	.word	-336
	.word	458129845
	.word	-456
	.word	-2004318071
	.size	uart2GetServer, .-uart2GetServer
	.ident	"GCC: (GNU) 4.0.2"
