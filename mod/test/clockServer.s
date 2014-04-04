	.file	"clockServer.c"
	.text
	.align	2
	.global	Time
	.type	Time, %function
Time:
	@ args = 0, pretend = 0, frame = 44
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #48
	str	r0, [fp, #-56]
	mov	r3, #2
	str	r3, [fp, #-32]
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
	.size	Time, .-Time
	.align	2
	.global	Delay
	.type	Delay, %function
Delay:
	@ args = 0, pretend = 0, frame = 52
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #56
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	bge	.L4
	mvn	r3, #0
	str	r3, [fp, #-64]
	b	.L6
.L4:
	mov	r3, #3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-56]
	sub	r1, fp, #32
	sub	ip, fp, #52
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #0
	str	r3, [fp, #-64]
.L6:
	ldr	r3, [fp, #-64]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	Delay, .-Delay
	.align	2
	.global	DelayUntil
	.type	DelayUntil, %function
DelayUntil:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-20]
	rsb	r3, r3, r2
	ldr	r0, [fp, #-24]
	mov	r1, r3
	bl	Delay(PLT)
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	DelayUntil, .-DelayUntil
	.section	.rodata
	.align	2
.LC0:
	.ascii	"clock\000"
	.align	2
.LC1:
	.ascii	"clockServer: register failed\012\015\000"
	.text
	.align	2
	.global	clockServer
	.type	clockServer, %function
clockServer:
	@ args = 0, pretend = 0, frame = 448
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #452
	ldr	sl, .L36
.L35:
	add	sl, pc, sl
	ldr	r3, .L36+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	cmn	r3, #1
	bne	.L11
	mov	r0, #1
	ldr	r3, .L36+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L11:
	ldr	r3, .L36+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-48]
	mov	r0, #0
	ldr	r1, [fp, #-48]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-420]
	mov	r3, #0
	str	r3, [fp, #-440]
	ldr	r2, [fp, #-52]
	sub	r1, fp, #440
	sub	ip, fp, #460
	mov	r3, #20
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #20
	mov	r3, ip
	bl	Send(PLT)
	mvn	r3, #0
	str	r3, [fp, #-36]
	b	.L34
.L13:
.L34:
	sub	r2, fp, #460
	sub	r3, fp, #56
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Receive(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-460]
	sub	r3, r3, #1
	cmp	r3, #15
	addls	pc, pc, r3, asl #2
	b	.L14
	.p2align 2
.L19:
	b	.L15
	b	.L16
	b	.L17
	b	.L14
	b	.L14
	b	.L14
	b	.L14
	b	.L14
	b	.L14
	b	.L14
	b	.L14
	b	.L14
	b	.L14
	b	.L14
	b	.L14
	b	.L18
.L18:
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-36]
	b	.L14
.L15:
	mov	r3, #0
	str	r3, [fp, #-440]
	ldr	r3, [fp, #-52]
	sub	r2, fp, #440
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-36]
	cmn	r3, #1
	beq	.L14
	ldr	r1, [fp, #-40]
	ldr	r3, .L36+16
	smull	r2, r3, r1, r3
	mov	r2, r3, asr #2
	mov	r3, r1, asr #31
	rsb	r2, r3, r2
	str	r2, [fp, #-464]
	ldr	r3, [fp, #-464]
	mov	r3, r3, asl #2
	ldr	r2, [fp, #-464]
	add	r3, r3, r2
	mov	r3, r3, asl #1
	rsb	r1, r3, r1
	str	r1, [fp, #-464]
	ldr	r3, [fp, #-464]
	cmp	r3, #0
	bne	.L14
	mov	r3, #3
	str	r3, [fp, #-440]
	sub	r3, fp, #440
	ldr	r0, [fp, #-36]
	mov	r1, r3
	mov	r2, #20
	bl	Reply(PLT)
	mvn	r3, #0
	str	r3, [fp, #-36]
	b	.L14
.L16:
	mov	r3, #0
	str	r3, [fp, #-440]
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-436]
	ldr	r3, [fp, #-56]
	sub	r2, fp, #440
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	b	.L14
.L17:
	ldr	r2, [fp, #-456]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-56]
	sub	r3, r3, #1
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-44]
	ldr	r1, .L36+20
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r2, r3, r1
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-56]
	mov	r1, r3
	ldr	r0, .L36+24
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r3, r3, r0
	str	r1, [r3, #0]
	sub	r3, fp, #420
	str	r3, [fp, #-20]
	b	.L23
.L24:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bcc	.L25
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	mov	r1, r3
	ldr	r0, .L36+28
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r3, r3, r0
	str	r1, [r3, #0]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	sub	r3, fp, #416
	add	r3, r3, r2
	ldr	r2, [fp, #-20]
	str	r3, [r2, #0]
	b	.L27
.L25:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	add	r3, r3, #8
	str	r3, [fp, #-20]
.L23:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L24
.L27:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L14
	ldr	r2, [fp, #-44]
	ldr	r1, .L36+28
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-44]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	sub	r3, fp, #416
	add	r3, r3, r2
	ldr	r2, [fp, #-20]
	str	r3, [r2, #0]
.L14:
	ldr	r3, [fp, #-420]
	str	r3, [fp, #-28]
	b	.L29
.L30:
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	bne	.L13
	mov	r3, #0
	str	r3, [fp, #-440]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	sub	r2, fp, #440
	mov	r0, r3
	mov	r1, r2
	mov	r2, #20
	bl	Reply(PLT)
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-420]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-28]
.L29:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L30
	b	.L13
.L37:
	.align	2
.L36:
	.word	_GLOBAL_OFFSET_TABLE_-(.L35+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	notifier(GOT)
	.word	1717986919
	.word	-400
	.word	-396
	.word	-392
	.size	clockServer, .-clockServer
	.ident	"GCC: (GNU) 4.0.2"
