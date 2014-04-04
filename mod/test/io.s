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
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #52
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	bne	.L14
	mov	r3, #5
	str	r3, [fp, #-32]
	b	.L16
.L14:
	mov	r3, #7
	str	r3, [fp, #-32]
.L16:
	sub	r2, fp, #32
	sub	ip, fp, #52
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-56]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-48]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	Getc, .-Getc
	.align	2
	.global	Putc
	.type	Putc, %function
Putc:
	@ args = 0, pretend = 0, frame = 52
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #56
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	mov	r3, r2
	strb	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	bne	.L19
	mov	r3, #4
	str	r3, [fp, #-32]
	b	.L21
.L19:
	mov	r3, #6
	str	r3, [fp, #-32]
.L21:
	ldrb	r3, [fp, #-64]	@ zero_extendqisi2
	str	r3, [fp, #-28]
	sub	r2, fp, #32
	sub	ip, fp, #52
	mov	r3, #20
	str	r3, [sp, #0]
	ldr	r0, [fp, #-56]
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-52]
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
	@ args = 0, pretend = 0, frame = 5200
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #5184
	sub	sp, sp, #20
	ldr	sl, .L38
.L37:
	add	sl, pc, sl
	ldr	r3, .L38+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	cmn	r3, #1
	bne	.L24
	mov	r0, #1
	ldr	r3, .L38+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L24:
	ldr	r3, .L38+12
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
	ldr	r2, .L38+16
	mov	r3, #4
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r1, [fp, #-48]
	sub	r2, fp, #5120
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	ip, fp, #5184
	sub	ip, ip, #16
	sub	ip, ip, #12
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L36
.L26:
.L36:
	sub	r3, fp, #5184
	sub	r3, r3, #16
	sub	r3, r3, #12
	sub	r2, fp, #52
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Receive(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, .L38+20
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	sub	r1, fp, #4096
	str	r2, [r1, #-1120]
	sub	r3, fp, #4096
	ldr	r3, [r3, #-1120]
	cmp	r3, #1
	beq	.L28
	sub	ip, fp, #4096
	ldr	ip, [ip, #-1120]
	cmp	ip, #7
	beq	.L29
	b	.L26
.L28:
	ldr	r2, .L38+16
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r2, [fp, #-48]
	sub	r3, fp, #5120
	sub	r3, r3, #16
	sub	r3, r3, #56
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bne	.L30
	ldr	r0, [fp, #-36]
	ldr	r3, .L38+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r1, r3, #255
	ldr	r2, .L38+24
	sub	ip, fp, #16
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-36]
	add	r1, r3, #1
	ldr	r3, .L38+28
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #11
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r3, r1
	str	r3, [fp, #-36]
	b	.L26
.L30:
	ldr	r3, [fp, #-32]
	ldr	r2, .L38+32
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-32]
	add	r1, r3, #1
	ldr	r3, .L38+36
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
	ldr	r3, .L38+20
	mov	r2, #4
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L38+16
	mov	r2, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r3, fp, #5120
	sub	r3, r3, #16
	sub	r3, r3, #56
	ldr	r0, [fp, #-20]
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	b	.L26
.L29:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bne	.L33
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-52]
	ldr	r2, .L38+32
	mov	r3, r3, asl #2
	sub	ip, fp, #16
	add	r3, r3, ip
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-28]
	add	r1, r3, #1
	ldr	r3, .L38+36
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
	b	.L26
.L33:
	ldr	r3, [fp, #-40]
	ldr	r2, .L38+24
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, .L38+16
	mov	r2, #4
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-40]
	add	r1, r3, #1
	ldr	r3, .L38+28
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #11
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r3, r1
	str	r3, [fp, #-40]
	ldr	r2, .L38+16
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	ldr	r2, [fp, #-52]
	sub	r3, fp, #5120
	sub	r3, r3, #16
	sub	r3, r3, #56
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	b	.L26
.L39:
	.align	2
.L38:
	.word	_GLOBAL_OFFSET_TABLE_-(.L37+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	notifier(GOT)
	.word	-5176
	.word	-5196
	.word	-5036
	.word	1759218605
	.word	-5156
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
	@ args = 0, pretend = 0, frame = 5076
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #5056
	sub	sp, sp, #24
	ldr	sl, .L56
.L55:
	add	sl, pc, sl
	ldr	r3, .L56+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	cmn	r3, #1
	bne	.L41
	mov	r0, #1
	ldr	r3, .L56+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L41:
	ldr	r3, .L56+12
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
	ldr	r2, .L56+16
	mov	r3, #3
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r1, [fp, #-44]
	sub	r2, fp, #4992
	sub	r2, r2, #16
	sub	r2, r2, #60
	sub	ip, fp, #5056
	sub	ip, ip, #16
	sub	ip, ip, #16
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L54
.L43:
.L54:
	sub	r3, fp, #5056
	sub	r3, r3, #16
	sub	r3, r3, #16
	sub	r2, fp, #48
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Receive(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, .L56+20
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	sub	r1, fp, #4096
	str	r2, [r1, #-996]
	sub	r3, fp, #4096
	ldr	r3, [r3, #-996]
	cmp	r3, #1
	beq	.L45
	sub	ip, fp, #4096
	ldr	ip, [ip, #-996]
	cmp	ip, #6
	beq	.L46
	b	.L43
.L45:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bne	.L47
	mov	r3, #1
	str	r3, [fp, #-28]
	b	.L43
.L47:
	ldr	r3, [fp, #-36]
	ldr	r2, .L56+24
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]
	strb	r3, [fp, #-17]
	ldr	r3, [fp, #-36]
	add	r1, r3, #1
	ldr	r3, .L56+28
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #11
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r3, r1
	str	r3, [fp, #-36]
	ldrb	r1, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, .L56+16
	mov	r2, #4
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r2, [fp, #-44]
	sub	r3, fp, #4992
	sub	r3, r3, #16
	sub	r3, r3, #60
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L43
.L46:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L50
	ldr	r0, [fp, #-32]
	ldr	r3, .L56+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r1, r3, #255
	ldr	r2, .L56+24
	sub	ip, fp, #16
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r1, r3, #1
	ldr	r3, .L56+28
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #11
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r3, r1
	str	r3, [fp, #-32]
	b	.L52
.L50:
	ldr	r3, .L56+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L56+16
	mov	r2, #4
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r2, .L56+16
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r2, [fp, #-44]
	sub	r3, fp, #4992
	sub	r3, r3, #16
	sub	r3, r3, #60
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
.L52:
	ldr	r2, .L56+16
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	ldr	r3, .L56+16
	mov	r2, #4
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-48]
	sub	r3, fp, #4992
	sub	r3, r3, #16
	sub	r3, r3, #60
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	b	.L43
.L57:
	.align	2
.L56:
	.word	_GLOBAL_OFFSET_TABLE_-(.L55+8)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	notifier(GOT)
	.word	-5052
	.word	-5072
	.word	-5032
	.word	1759218605
	.size	uart2PutServer, .-uart2PutServer
	.section	.rodata
	.align	2
.LC4:
	.ascii	"u1g\000"
	.align	2
.LC5:
	.ascii	"uart1GetServer: register failed\012\015\000"
	.text
	.align	2
	.global	uart1GetServer
	.type	uart1GetServer, %function
uart1GetServer:
	@ args = 0, pretend = 0, frame = 5200
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #5184
	sub	sp, sp, #20
	ldr	sl, .L73
.L72:
	add	sl, pc, sl
	ldr	r3, .L73+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	cmn	r3, #1
	bne	.L59
	mov	r0, #1
	ldr	r3, .L73+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L59:
	ldr	r3, .L73+12
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
	ldr	r2, .L73+16
	mov	r3, #2
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r1, [fp, #-48]
	sub	r2, fp, #5120
	sub	r2, r2, #16
	sub	r2, r2, #56
	sub	ip, fp, #5184
	sub	ip, ip, #16
	sub	ip, ip, #12
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L71
.L61:
.L71:
	sub	r3, fp, #5184
	sub	r3, r3, #16
	sub	r3, r3, #12
	sub	r2, fp, #52
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Receive(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, .L73+20
	sub	r1, fp, #16
	ldr	r2, [r1, r3]
	sub	r1, fp, #4096
	str	r2, [r1, #-1120]
	sub	r3, fp, #4096
	ldr	r3, [r3, #-1120]
	cmp	r3, #1
	beq	.L63
	sub	ip, fp, #4096
	ldr	ip, [ip, #-1120]
	cmp	ip, #5
	beq	.L64
	b	.L61
.L63:
	ldr	r2, .L73+16
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r2, [fp, #-48]
	sub	r3, fp, #5120
	sub	r3, r3, #16
	sub	r3, r3, #56
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bne	.L65
	ldr	r0, [fp, #-36]
	ldr	r3, .L73+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r1, r3, #255
	ldr	r2, .L73+24
	sub	ip, fp, #16
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-36]
	add	r1, r3, #1
	ldr	r3, .L73+28
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #11
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r3, r1
	str	r3, [fp, #-36]
	b	.L61
.L65:
	ldr	r3, [fp, #-32]
	ldr	r2, .L73+32
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-32]
	add	r1, r3, #1
	ldr	r3, .L73+36
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
	ldr	r3, .L73+20
	mov	r2, #4
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L73+16
	mov	r2, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	sub	r3, fp, #5120
	sub	r3, r3, #16
	sub	r3, r3, #56
	ldr	r0, [fp, #-20]
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	b	.L61
.L64:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bne	.L68
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-52]
	ldr	r2, .L73+32
	mov	r3, r3, asl #2
	sub	ip, fp, #16
	add	r3, r3, ip
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-28]
	add	r1, r3, #1
	ldr	r3, .L73+36
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
	b	.L61
.L68:
	ldr	r3, [fp, #-40]
	ldr	r2, .L73+24
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, .L73+16
	mov	r2, #4
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r3, [fp, #-40]
	add	r1, r3, #1
	ldr	r3, .L73+28
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #11
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r3, r1
	str	r3, [fp, #-40]
	ldr	r2, .L73+16
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	ldr	r2, [fp, #-52]
	sub	r3, fp, #5120
	sub	r3, r3, #16
	sub	r3, r3, #56
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	b	.L61
.L74:
	.align	2
.L73:
	.word	_GLOBAL_OFFSET_TABLE_-(.L72+8)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	notifier(GOT)
	.word	-5176
	.word	-5196
	.word	-5036
	.word	1759218605
	.word	-5156
	.word	-2004318071
	.size	uart1GetServer, .-uart1GetServer
	.section	.rodata
	.align	2
.LC6:
	.ascii	"u1x\000"
	.align	2
.LC7:
	.ascii	"uart1PutServer: register failed\012\015\000"
	.text
	.align	2
	.global	uart1PutServer
	.type	uart1PutServer, %function
uart1PutServer:
	@ args = 0, pretend = 0, frame = 5096
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #5056
	sub	sp, sp, #44
	ldr	sl, .L107
.L106:
	add	sl, pc, sl
	ldr	r3, .L107+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	cmn	r3, #1
	bne	.L76
	mov	r0, #1
	ldr	r3, .L107+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L76:
	ldr	r3, .L107+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-56]
	mov	r0, #0
	ldr	r1, [fp, #-56]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-64]
	mov	r0, #0
	ldr	r1, [fp, #-56]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-36]
	ldr	r3, .L107+16
	ldr	r3, [r3, #0]
	and	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L78
	mov	r3, #1
	str	r3, [fp, #-40]
	mov	r3, #1
	str	r3, [fp, #-36]
	b	.L80
.L78:
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #1
	str	r3, [fp, #-36]
.L80:
	ldr	r2, .L107+20
	mov	r3, #1
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r1, [fp, #-64]
	sub	r2, fp, #5056
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #5056
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	ldr	r2, .L107+20
	mov	r3, #5
	sub	r1, fp, #16
	str	r3, [r1, r2]
	ldr	r1, [fp, #-60]
	sub	r2, fp, #5056
	sub	r2, r2, #16
	sub	r2, r2, #16
	sub	ip, fp, #5056
	sub	ip, ip, #16
	sub	ip, ip, #36
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r1
	mov	r1, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	b	.L105
.L81:
.L105:
	sub	r3, fp, #5056
	sub	r3, r3, #16
	sub	r3, r3, #36
	sub	r2, fp, #68
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Receive(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, .L107+24
	sub	r2, fp, #16
	ldr	ip, [r2, r3]
	sub	r2, fp, #4096
	str	ip, [r2, #-1016]
	sub	r0, fp, #4096
	ldr	r0, [r0, #-1016]
	cmp	r0, #4
	beq	.L84
	sub	r1, fp, #4096
	ldr	r1, [r1, #-1016]
	cmp	r1, #8
	beq	.L85
	sub	r2, fp, #4096
	ldr	r2, [r2, #-1016]
	cmp	r2, #1
	beq	.L83
	b	.L81
.L83:
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L86
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	beq	.L86
	ldr	r3, [fp, #-52]
	ldr	r2, .L107+28
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]
	strb	r3, [fp, #-25]
	ldr	r3, [fp, #-52]
	add	r1, r3, #1
	ldr	r3, .L107+32
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #11
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r3, r1
	str	r3, [fp, #-52]
	ldrb	r1, [fp, #-25]	@ zero_extendqisi2
	ldr	r3, .L107+20
	mov	r2, #4
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r2, [fp, #-64]
	sub	r3, fp, #5056
	sub	r3, r3, #16
	sub	r3, r3, #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	mov	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L81
.L86:
	mov	r3, #1
	str	r3, [fp, #-44]
	b	.L81
.L84:
	ldr	r2, .L107+20
	mov	r3, #0
	sub	r0, fp, #16
	str	r3, [r0, r2]
	ldr	r3, .L107+20
	mov	r2, #4
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-68]
	sub	r3, fp, #5056
	sub	r3, r3, #16
	sub	r3, r3, #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L90
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L90
	ldr	r3, .L107+24
	mov	r2, #4
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r1, [r3, #0]
	ldr	r3, .L107+20
	mov	r2, #4
	sub	r0, fp, #16
	add	r3, r0, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r2, .L107+20
	mov	r3, #0
	sub	r1, fp, #16
	str	r3, [r1, r2]
	ldr	r2, [fp, #-64]
	sub	r3, fp, #5056
	sub	r3, r3, #16
	sub	r3, r3, #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L81
.L90:
	ldr	r0, [fp, #-48]
	ldr	r3, .L107+24
	mov	r2, #4
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	and	r1, r3, #255
	ldr	r2, .L107+28
	sub	ip, fp, #16
	add	r3, ip, r0
	add	r2, r3, r2
	mov	r3, r1
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	ldr	r3, .L107+32
	smull	r0, r3, r1, r3
	mov	r2, r3, asr #11
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r3, r1
	str	r3, [fp, #-48]
	b	.L81
.L85:
	ldr	r3, .L107+16
	ldr	r3, [r3, #0]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	and	r3, r3, #1
	and	r3, r3, #255
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	bne	.L94
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L94
	mov	r3, #1
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L97
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	beq	.L97
	ldr	r3, [fp, #-52]
	ldr	r2, .L107+28
	sub	r1, fp, #16
	add	r3, r1, r3
	add	r3, r3, r2
	ldrb	r3, [r3, #0]
	strb	r3, [fp, #-17]
	ldr	r3, [fp, #-52]
	add	r1, r3, #1
	ldr	r3, .L107+32
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #11
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	mov	r3, r2
	mov	r3, r3, asl #5
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	add	r3, r3, r2
	mov	r2, r3, asl #2
	add	r3, r3, r2
	mov	r3, r3, asl #3
	rsb	r3, r3, r1
	str	r3, [fp, #-52]
	ldrb	r1, [fp, #-17]	@ zero_extendqisi2
	ldr	r3, .L107+20
	mov	r2, #4
	sub	ip, fp, #16
	add	r3, ip, r3
	add	r3, r3, r2
	str	r1, [r3, #0]
	ldr	r2, [fp, #-64]
	sub	r3, fp, #5056
	sub	r3, r3, #16
	sub	r3, r3, #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	mov	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L101
.L97:
	mov	r3, #1
	str	r3, [fp, #-40]
	b	.L101
.L94:
	ldr	r3, [fp, #-24]
	bic	r2, r3, #1
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L101
	ldr	r3, [fp, #-36]
	cmp	r3, #1
	bne	.L101
	mov	r3, #0
	str	r3, [fp, #-36]
.L101:
	ldr	r2, [fp, #-60]
	sub	r3, fp, #5056
	sub	r3, r3, #16
	sub	r3, r3, #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	b	.L81
.L108:
	.align	2
.L107:
	.word	_GLOBAL_OFFSET_TABLE_-(.L106+8)
	.word	.LC6(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	notifier(GOT)
	.word	-2138308584
	.word	-5072
	.word	-5092
	.word	-5052
	.word	1759218605
	.size	uart1PutServer, .-uart1PutServer
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
	b	.L110
.L111:
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	str	r3, [fp, #-32]
.L110:
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
	bne	.L114
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bgt	.L111
	b	.L114
.L115:
	ldrb	r3, [fp, #-36]	@ zero_extendqisi2
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-28]
	mov	r2, r3
	bl	Putc(PLT)
.L114:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	movle	r3, #0
	movgt	r3, #1
	and	r2, r3, #255
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	str	r3, [fp, #-32]
	cmp	r2, #0
	bne	.L115
	b	.L117
.L118:
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	ldr	r0, [fp, #-24]
	ldr	r1, [fp, #-28]
	mov	r2, r3
	bl	Putc(PLT)
.L117:
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
	bne	.L118
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
	bls	.L122
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L122
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	sub	r3, r3, #48
	str	r3, [fp, #-20]
	b	.L125
.L122:
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L126
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	cmp	r3, #102
	bhi	.L126
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	sub	r3, r3, #87
	str	r3, [fp, #-20]
	b	.L125
.L126:
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L129
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	cmp	r3, #70
	bhi	.L129
	ldrb	r3, [fp, #-16]	@ zero_extendqisi2
	sub	r3, r3, #55
	str	r3, [fp, #-20]
	b	.L125
.L129:
	mvn	r3, #0
	str	r3, [fp, #-20]
.L125:
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
	b	.L134
.L135:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bgt	.L136
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
.L134:
	ldrb	r3, [fp, #-28]	@ zero_extendqisi2
	mov	r0, r3
	bl	a2d(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L135
.L136:
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
	b	.L140
.L141:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	mul	r3, r2, r3
	str	r3, [fp, #-16]
.L140:
	ldr	r0, [fp, #-28]
	ldr	r1, [fp, #-16]
	bl	__udivsi3(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bcs	.L141
	b	.L153
.L144:
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
	bne	.L145
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bgt	.L145
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L143
.L145:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bgt	.L148
	mov	r1, #48
	str	r1, [fp, #-40]
	b	.L150
.L148:
	mov	r3, #87
	str	r3, [fp, #-40]
.L150:
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
.L143:
.L153:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L144
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
	bge	.L155
	ldr	r3, [fp, #-16]
	rsb	r3, r3, #0
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	mov	r3, #45
	strb	r3, [r2, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L155:
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
	@ args = 0, pretend = 0, frame = 44
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #48
	str	r0, [fp, #-36]
	str	r1, [fp, #-40]
	str	r2, [fp, #-44]
	str	r3, [fp, #-48]
	b	.L177
.L160:
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	cmp	r3, #37
	beq	.L161
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	ldr	r0, [fp, #-36]
	ldr	r1, [fp, #-40]
	mov	r2, r3
	bl	Putc(PLT)
	b	.L159
.L161:
	mov	r3, #0
	strb	r3, [fp, #-13]
	mov	r3, #0
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-44]
	ldrb	r3, [r2, #0]
	strb	r3, [fp, #-14]
	add	r3, r2, #1
	str	r3, [fp, #-44]
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #48
	beq	.L164
	ldr	r3, [fp, #-56]
	cmp	r3, #48
	blt	.L163
	ldr	r3, [fp, #-56]
	cmp	r3, #57
	bgt	.L163
	b	.L165
.L164:
	mov	r3, #1
	strb	r3, [fp, #-13]
	ldr	r2, [fp, #-44]
	ldrb	r3, [r2, #0]
	strb	r3, [fp, #-14]
	add	r3, r2, #1
	str	r3, [fp, #-44]
	b	.L163
.L165:
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	sub	r2, fp, #44
	sub	ip, fp, #32
	mov	r0, r3
	mov	r1, r2
	mov	r2, #10
	mov	r3, ip
	bl	a2i(PLT)
	mov	r3, r0
	strb	r3, [fp, #-14]
.L163:
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmp	r3, #115
	beq	.L170
	ldr	r3, [fp, #-52]
	cmp	r3, #115
	bgt	.L173
	ldr	r3, [fp, #-52]
	cmp	r3, #99
	beq	.L168
	ldr	r3, [fp, #-52]
	cmp	r3, #99
	bgt	.L174
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	beq	.L176
	ldr	r3, [fp, #-52]
	cmp	r3, #37
	beq	.L167
	b	.L159
.L174:
	ldr	r3, [fp, #-52]
	cmp	r3, #100
	beq	.L169
	b	.L159
.L173:
	ldr	r3, [fp, #-52]
	cmp	r3, #117
	beq	.L171
	ldr	r3, [fp, #-52]
	cmp	r3, #120
	beq	.L172
	b	.L159
.L168:
	ldr	r3, [fp, #-48]
	add	r3, r3, #4
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	sub	r3, r3, #4
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	ldr	r0, [fp, #-36]
	ldr	r1, [fp, #-40]
	mov	r2, r3
	bl	Putc(PLT)
	b	.L159
.L170:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-48]
	add	r3, r3, #4
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	sub	r3, r3, #4
	ldr	r3, [r3, #0]
	str	r3, [sp, #0]
	ldr	r0, [fp, #-36]
	ldr	r1, [fp, #-40]
	mov	r3, #0
	bl	putw(PLT)
	b	.L159
.L171:
	ldr	r3, [fp, #-48]
	add	r3, r3, #4
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	sub	r3, r3, #4
	ldr	r3, [r3, #0]
	sub	r2, fp, #26
	mov	r0, r3
	mov	r1, #10
	bl	ui2a(PLT)
	ldr	r3, [fp, #-32]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	sub	ip, fp, #26
	ldr	r0, [fp, #-40]
	mov	r1, r3
	mov	r3, ip
	bl	bwputw(PLT)
	b	.L159
.L169:
	ldr	r3, [fp, #-48]
	add	r3, r3, #4
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	sub	r3, r3, #4
	ldr	r3, [r3, #0]
	sub	r2, fp, #26
	mov	r0, r3
	mov	r1, r2
	bl	i2a(PLT)
	ldr	r2, [fp, #-32]
	ldrb	ip, [fp, #-13]	@ zero_extendqisi2
	sub	r3, fp, #26
	str	r3, [sp, #0]
	ldr	r0, [fp, #-36]
	ldr	r1, [fp, #-40]
	mov	r3, ip
	bl	putw(PLT)
	b	.L159
.L172:
	ldr	r3, [fp, #-48]
	add	r3, r3, #4
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	sub	r3, r3, #4
	ldr	r3, [r3, #0]
	sub	r2, fp, #26
	mov	r0, r3
	mov	r1, #16
	bl	ui2a(PLT)
	ldr	r2, [fp, #-32]
	ldrb	ip, [fp, #-13]	@ zero_extendqisi2
	sub	r3, fp, #26
	str	r3, [sp, #0]
	ldr	r0, [fp, #-36]
	ldr	r1, [fp, #-40]
	mov	r3, ip
	bl	putw(PLT)
	b	.L159
.L167:
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	ldr	r0, [fp, #-36]
	ldr	r1, [fp, #-40]
	mov	r2, r3
	bl	Putc(PLT)
.L159:
.L177:
	ldr	r1, [fp, #-44]
	ldrb	r3, [r1, #0]
	strb	r3, [fp, #-14]
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	and	r2, r3, #255
	add	r3, r1, #1
	str	r3, [fp, #-44]
	cmp	r2, #0
	bne	.L160
.L176:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
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
	.align	2
	.global	setTrainConnectionn
	.type	setTrainConnectionn, %function
setTrainConnectionn:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	ldr	r3, .L182
	str	r3, [fp, #-28]
	ldr	r3, .L182+4
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-24]
	mov	r3, #191
	str	r3, [r2, #0]
	mov	r3, #120
	str	r3, [fp, #-20]
	ldr	r3, .L182+8
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	bic	r2, r3, #127
	ldr	r3, [fp, #-32]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	orr	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-32]
	str	r2, [r3, #0]
	ldr	r3, .L182+12
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-16]
	str	r2, [r3, #0]
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L183:
	.align	2
.L182:
	.word	-2138308596
	.word	-2138308592
	.word	-2138308600
	.word	-2138308588
	.size	setTrainConnectionn, .-setTrainConnectionn
	.ident	"GCC: (GNU) 4.0.2"
