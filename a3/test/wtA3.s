	.file	"wtA3.c"
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
	.global	Create
	.type	Create, %function
Create:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	swi 1
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	Create, .-Create
	.align	2
	.global	MyTid
	.type	MyTid, %function
MyTid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	swi 2
	ldmfd	sp, {fp, sp, pc}
	.size	MyTid, .-MyTid
	.align	2
	.global	MyParentTid
	.type	MyParentTid, %function
MyParentTid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	swi 3
	ldmfd	sp, {fp, sp, pc}
	.size	MyParentTid, .-MyParentTid
	.align	2
	.global	Pass
	.type	Pass, %function
Pass:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	swi 4
	ldmfd	sp, {fp, sp, pc}
	.size	Pass, .-Pass
	.align	2
	.global	Exit
	.type	Exit, %function
Exit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	swi 5
	ldmfd	sp, {fp, sp, pc}
	.size	Exit, .-Exit
	.align	2
	.global	Send
	.type	Send, %function
Send:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	swi 6
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	Send, .-Send
	.align	2
	.global	Receive
	.type	Receive, %function
Receive:
	@ args = 0, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	swi 7
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	Receive, .-Receive
	.align	2
	.global	Reply
	.type	Reply, %function
Reply:
	@ args = 0, pretend = 0, frame = 12
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	swi 8
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	Reply, .-Reply
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
	beq	.L28
	mvn	r3, #0
	str	r3, [fp, #-44]
	b	.L30
.L28:
	mov	r3, #0
	str	r3, [fp, #-44]
.L30:
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
	beq	.L33
	mvn	r3, #0
	str	r3, [fp, #-44]
	b	.L35
.L33:
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-44]
.L35:
	ldr	r3, [fp, #-44]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	WhoIs, .-WhoIs
	.section	.rodata
	.align	2
.LC0:
	.ascii	"rps\000\000"
	.align	2
.LC1:
	.ascii	"player %d: failed to get rps server\012\015\000"
	.align	2
.LC2:
	.ascii	"player %d: failed to sign up\012\015\000"
	.text
	.align	2
	.global	player4
	.type	player4, %function
player4:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	ldr	sl, .L49
.L48:
	add	sl, pc, sl
	ldr	r3, .L49+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	bne	.L38
	mov	r0, #1
	ldr	r3, .L49+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L38:
	mov	r3, #1
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L40
	mov	r0, #1
	ldr	r3, .L49+12
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L40:
	mov	r3, #2
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	beq	.L42
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	beq	.L42
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	beq	.L42
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L42
	mov	r3, #1
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
.L42:
	mov	r3, #3
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L50:
	.align	2
.L49:
	.word	_GLOBAL_OFFSET_TABLE_-(.L48+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.size	player4, .-player4
	.align	2
	.global	player1
	.type	player1, %function
player1:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	ldr	sl, .L73
.L72:
	add	sl, pc, sl
	ldr	r3, .L73+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	bne	.L52
	mov	r0, #1
	ldr	r3, .L73+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L52:
	mov	r3, #1
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L54
	mov	r0, #1
	ldr	r3, .L73+12
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L54:
	mov	r3, #2
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	beq	.L56
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	beq	.L56
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	beq	.L56
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L56
	mov	r3, #1
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
.L56:
	mov	r3, #3
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #1
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #2
	str	r3, [fp, #-32]
	mov	r3, #1
	str	r3, [fp, #-28]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	beq	.L61
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	beq	.L61
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	beq	.L61
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L61
	mov	r3, #1
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
.L61:
	mov	r3, #2
	str	r3, [fp, #-32]
	mov	r3, #1
	str	r3, [fp, #-28]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	beq	.L66
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	beq	.L66
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	beq	.L66
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L66
	mov	r3, #3
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
.L66:
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L74:
	.align	2
.L73:
	.word	_GLOBAL_OFFSET_TABLE_-(.L72+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.size	player1, .-player1
	.align	2
	.global	player2
	.type	player2, %function
player2:
	@ args = 0, pretend = 0, frame = 28
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #32
	ldr	sl, .L97
.L96:
	add	sl, pc, sl
	ldr	r3, .L97+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmn	r3, #1
	bne	.L76
	mov	r0, #1
	ldr	r3, .L97+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-24]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L76:
	mov	r3, #1
	str	r3, [fp, #-36]
	sub	r2, fp, #36
	sub	ip, fp, #44
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L78
	mov	r0, #1
	ldr	r3, .L97+12
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-24]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L78:
	mov	r3, #2
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-32]
	sub	r2, fp, #36
	sub	ip, fp, #44
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-44]
	cmp	r3, #1
	beq	.L80
	ldr	r3, [fp, #-44]
	cmp	r3, #2
	beq	.L80
	ldr	r3, [fp, #-44]
	cmp	r3, #3
	beq	.L80
	ldr	r3, [fp, #-44]
	cmp	r3, #4
	bne	.L80
	mov	r3, #1
	str	r3, [fp, #-36]
	sub	r2, fp, #36
	sub	ip, fp, #44
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
.L80:
	mov	r3, #2
	str	r3, [fp, #-36]
	mov	r3, #2
	str	r3, [fp, #-32]
	sub	r2, fp, #36
	sub	ip, fp, #44
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-44]
	cmp	r3, #1
	beq	.L85
	ldr	r3, [fp, #-44]
	cmp	r3, #2
	beq	.L85
	ldr	r3, [fp, #-44]
	cmp	r3, #3
	beq	.L85
	ldr	r3, [fp, #-44]
	cmp	r3, #4
	bne	.L85
	ldr	r3, .L97+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	mov	r0, #3
	ldr	r1, [fp, #-20]
	bl	Create(PLT)
	mov	r3, #1
	str	r3, [fp, #-36]
	sub	r2, fp, #36
	sub	ip, fp, #44
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
.L85:
	mov	r3, #2
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-32]
	sub	r2, fp, #36
	sub	ip, fp, #44
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-44]
	cmp	r3, #1
	beq	.L90
	ldr	r3, [fp, #-44]
	cmp	r3, #2
	beq	.L90
	ldr	r3, [fp, #-44]
	cmp	r3, #3
	beq	.L90
	ldr	r3, [fp, #-44]
	cmp	r3, #4
	bne	.L90
	mov	r3, #1
	str	r3, [fp, #-36]
	sub	r2, fp, #36
	sub	ip, fp, #44
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
.L90:
	mov	r3, #3
	str	r3, [fp, #-36]
	sub	r2, fp, #36
	sub	ip, fp, #44
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-28]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L98:
	.align	2
.L97:
	.word	_GLOBAL_OFFSET_TABLE_-(.L96+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	player4(GOT)
	.size	player2, .-player2
	.align	2
	.global	player3
	.type	player3, %function
player3:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	ldr	sl, .L111
.L110:
	add	sl, pc, sl
	ldr	r3, .L111+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmn	r3, #1
	bne	.L100
	mov	r0, #1
	ldr	r3, .L111+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L100:
	mov	r3, #1
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L102
	mov	r0, #1
	ldr	r3, .L111+12
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L102:
	mov	r3, #2
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	beq	.L104
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	beq	.L104
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	beq	.L104
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L104
	mov	r3, #1
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
.L104:
	mov	r3, #3
	str	r3, [fp, #-32]
	sub	r2, fp, #32
	sub	ip, fp, #40
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-24]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L112:
	.align	2
.L111:
	.word	_GLOBAL_OFFSET_TABLE_-(.L110+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.size	player3, .-player3
	.section	.rodata
	.align	2
.LC3:
	.ascii	"ROCK\000\000"
	.align	2
.LC4:
	.ascii	"PAPER\000\000"
	.align	2
.LC5:
	.ascii	"SCISSORS\000\000"
	.align	2
.LC6:
	.ascii	"rpsServer: register failed\012\015\000"
	.align	2
.LC7:
	.ascii	"Task %d signed up.\012\015\000"
	.align	2
.LC8:
	.ascii	"Task %d matched up with task %d\012\015\000"
	.align	2
.LC9:
	.ascii	"Press any key to continue--------------\012\015\000"
	.align	2
.LC10:
	.ascii	"Task %d left, task %d tried to play %s\012\015\000"
	.align	2
.LC11:
	.ascii	"Task %d played %s, task %d played %s\012\015\000"
	.align	2
.LC12:
	.ascii	"Task %d won!\012\015\000"
	.align	2
.LC13:
	.ascii	"TIEEEEEEE!\012\015\000"
	.align	2
.LC14:
	.ascii	"Task %d and task %d quit!\012\015\000"
	.align	2
.LC15:
	.ascii	"Task %d quit and notifying task %d to sign up again"
	.ascii	"\012\015\000"
	.text
	.align	2
	.global	rpsServer
	.type	rpsServer, %function
rpsServer:
	@ args = 0, pretend = 0, frame = 332
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #340
	ldr	sl, .L154
.L153:
	add	sl, pc, sl
	ldr	r3, .L154+4
	add	r3, sl, r3
	str	r3, [fp, #-64]
	ldr	r3, .L154+8
	add	r3, sl, r3
	str	r3, [fp, #-60]
	ldr	r3, .L154+12
	add	r3, sl, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-68]
	ldr	r3, .L154+16
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmn	r3, #1
	bne	.L114
	mov	r0, #1
	ldr	r3, .L154+20
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L114:
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L116
.L117:
	ldr	r3, [fp, #-44]
	ldr	r2, .L154+24
	mov	r3, r3, asl #3
	sub	r0, fp, #16
	add	r3, r3, r0
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	ldr	r2, .L154+28
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L116:
	ldr	r3, [fp, #-44]
	cmp	r3, #29
	bls	.L117
	b	.L152
.L118:
.L152:
	sub	r2, fp, #336
	sub	r3, fp, #328
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Receive(PLT)
	ldr	r3, [fp, #-336]
	str	r3, [fp, #-348]
	ldr	r0, [fp, #-348]
	cmp	r0, #2
	beq	.L121
	ldr	r1, [fp, #-348]
	cmp	r1, #3
	beq	.L122
	ldr	r3, [fp, #-348]
	cmp	r3, #1
	beq	.L120
	b	.L118
.L120:
	ldr	r2, [fp, #-328]
	mov	r0, #1
	ldr	r3, .L154+32
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L123
	ldr	r3, [fp, #-328]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #324
	add	r3, r3, r2
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #324
	add	r3, r3, r2
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-48]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-328]
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-344]
	ldr	r2, [fp, #-328]
	mov	r0, #1
	ldr	r3, .L154+36
	add	r3, sl, r3
	mov	r1, r3
	ldr	r3, [fp, #-48]
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L154+40
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	bl	getc(PLT)
	sub	r3, fp, #344
	ldr	r0, [fp, #-48]
	mov	r1, r3
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r3, [fp, #-328]
	sub	r2, fp, #344
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L118
.L123:
	ldr	r3, [fp, #-328]
	str	r3, [fp, #-48]
	b	.L118
.L121:
	ldr	r3, [fp, #-328]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #324
	add	r3, r3, r2
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #324
	add	r3, r3, r2
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	beq	.L126
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bne	.L128
	ldr	r3, [fp, #-32]
	ldr	ip, [r3, #0]
	ldr	lr, [fp, #-328]
	ldr	r3, [fp, #-332]
	mvn	r2, #59
	mov	r3, r3, asl #2
	sub	r0, fp, #16
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r3, [sp, #0]
	mov	r0, #1
	ldr	r3, .L154+44
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L154+40
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	bl	getc(PLT)
	ldr	r2, [fp, #-32]
	mov	r3, #0
	str	r3, [r2, #0]
	mov	r3, #4
	str	r3, [fp, #-344]
	ldr	r3, [fp, #-328]
	sub	r2, fp, #344
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	b	.L130
.L128:
	ldr	r3, [fp, #-332]
	cmp	r3, #0
	bne	.L131
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	beq	.L133
.L131:
	ldr	r3, [fp, #-332]
	cmp	r3, #1
	bne	.L134
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L133
.L134:
	ldr	r3, [fp, #-332]
	cmp	r3, #2
	bne	.L136
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L136
.L133:
	ldr	r3, [fp, #-32]
	ldr	ip, [r3, #0]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	mvn	r2, #59
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	lr, [r3, #0]
	ldr	r1, [fp, #-328]
	ldr	r3, [fp, #-332]
	mvn	r2, #59
	mov	r3, r3, asl #2
	sub	r0, fp, #16
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r1, [sp, #0]
	str	r3, [sp, #4]
	mov	r0, #1
	ldr	r3, .L154+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	ldr	r2, [fp, #-328]
	mov	r0, #1
	ldr	r3, .L154+52
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L154+40
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	bl	getc(PLT)
	mov	r3, #2
	str	r3, [fp, #-344]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	sub	r2, fp, #344
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, #1
	str	r3, [fp, #-344]
	ldr	r3, [fp, #-328]
	sub	r2, fp, #344
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	b	.L130
.L136:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L138
	ldr	r3, [fp, #-332]
	cmp	r3, #2
	beq	.L140
.L138:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L141
	ldr	r3, [fp, #-332]
	cmp	r3, #0
	beq	.L140
.L141:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L143
	ldr	r3, [fp, #-332]
	cmp	r3, #1
	bne	.L143
.L140:
	ldr	r3, [fp, #-32]
	ldr	ip, [r3, #0]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	mvn	r2, #59
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	lr, [r3, #0]
	ldr	r1, [fp, #-328]
	ldr	r3, [fp, #-332]
	mvn	r2, #59
	mov	r3, r3, asl #2
	sub	r0, fp, #16
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r1, [sp, #0]
	str	r3, [sp, #4]
	mov	r0, #1
	ldr	r3, .L154+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #0]
	mov	r0, #1
	ldr	r3, .L154+52
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L154+40
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	bl	getc(PLT)
	mov	r3, #1
	str	r3, [fp, #-344]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	sub	r2, fp, #344
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, #2
	str	r3, [fp, #-344]
	ldr	r3, [fp, #-328]
	sub	r2, fp, #344
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	b	.L130
.L143:
	ldr	r3, [fp, #-32]
	ldr	ip, [r3, #0]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	mvn	r2, #59
	mov	r3, r3, asl #2
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r3, r3, r2
	ldr	lr, [r3, #0]
	ldr	r1, [fp, #-328]
	ldr	r3, [fp, #-332]
	mvn	r2, #59
	mov	r3, r3, asl #2
	sub	r0, fp, #16
	add	r3, r3, r0
	add	r3, r3, r2
	ldr	r3, [r3, #0]
	str	r1, [sp, #0]
	str	r3, [sp, #4]
	mov	r0, #1
	ldr	r3, .L154+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L154+56
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L154+40
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	bl	getc(PLT)
	mov	r3, #3
	str	r3, [fp, #-344]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	sub	r2, fp, #344
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r3, [fp, #-328]
	sub	r2, fp, #344
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
.L130:
	ldr	r2, [fp, #-32]
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L118
.L126:
	ldr	r2, [fp, #-332]
	ldr	r3, [fp, #-28]
	str	r2, [r3, #4]
	b	.L118
.L122:
	ldr	r3, [fp, #-328]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #324
	add	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #324
	add	r3, r3, r2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bne	.L146
	ldr	r2, [fp, #-328]
	ldr	r3, [fp, #-24]
	ldr	ip, [r3, #0]
	mov	r0, #1
	ldr	r3, .L154+60
	add	r3, sl, r3
	mov	r1, r3
	mov	r3, ip
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L154+40
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	bl	getc(PLT)
	ldr	r2, [fp, #-24]
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L148
.L146:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	beq	.L149
	ldr	r2, [fp, #-24]
	mov	r3, #3
	str	r3, [r2, #4]
	mov	r3, #4
	str	r3, [fp, #-344]
	ldr	r2, [fp, #-328]
	ldr	r3, [fp, #-24]
	ldr	ip, [r3, #0]
	mov	r0, #1
	ldr	r3, .L154+64
	add	r3, sl, r3
	mov	r1, r3
	mov	r3, ip
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L154+40
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	bl	getc(PLT)
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	sub	r2, fp, #344
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	b	.L148
.L149:
	ldr	r2, [fp, #-20]
	mov	r3, #4
	str	r3, [r2, #4]
.L148:
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-344]
	ldr	r3, [fp, #-328]
	sub	r2, fp, #344
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	b	.L118
.L155:
	.align	2
.L154:
	.word	_GLOBAL_OFFSET_TABLE_-(.L153+8)
	.word	.LC3(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	.LC0(GOTOFF)
	.word	.LC6(GOTOFF)
	.word	-308
	.word	-304
	.word	.LC7(GOTOFF)
	.word	.LC8(GOTOFF)
	.word	.LC9(GOTOFF)
	.word	.LC10(GOTOFF)
	.word	.LC11(GOTOFF)
	.word	.LC12(GOTOFF)
	.word	.LC13(GOTOFF)
	.word	.LC14(GOTOFF)
	.word	.LC15(GOTOFF)
	.size	rpsServer, .-rpsServer
	.align	2
	.global	nameServer
	.type	nameServer, %function
nameServer:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #72
	ldr	sl, .L182
.L181:
	add	sl, pc, sl
	ldr	r3, .L182+4
	add	r3, sl, r3
	str	r3, [fp, #-56]
	b	.L180
.L157:
.L180:
	sub	r2, fp, #72
	sub	r3, fp, #60
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Receive(PLT)
	mov	r3, #0
	str	r3, [fp, #-84]
	mov	r3, #0
	str	r3, [fp, #-80]
	mov	r3, #0
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	cmp	r3, #1
	beq	.L159
	ldr	r3, [fp, #-88]
	cmp	r3, #2
	beq	.L160
	b	.L157
.L159:
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L161
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-48]
	b	.L163
.L164:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L165
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L163:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	bls	.L164
.L165:
	ldr	r3, [fp, #-48]
	cmp	r3, #4
	bne	.L161
	mov	r3, #1
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-52]
.L161:
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L168
	mvn	r3, #0
	str	r3, [fp, #-84]
.L168:
	ldr	r3, [fp, #-60]
	sub	r2, fp, #84
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L157
.L160:
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L170
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-32]
	b	.L172
.L173:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L174
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L172:
	ldr	r3, [fp, #-32]
	cmp	r3, #3
	bls	.L173
.L174:
	ldr	r3, [fp, #-32]
	cmp	r3, #4
	bne	.L170
	mov	r3, #1
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-76]
.L170:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L177
	mvn	r3, #0
	str	r3, [fp, #-84]
.L177:
	ldr	r3, [fp, #-60]
	sub	r2, fp, #84
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L157
.L183:
	.align	2
.L182:
	.word	_GLOBAL_OFFSET_TABLE_-(.L181+8)
	.word	.LC0(GOTOFF)
	.size	nameServer, .-nameServer
	.align	2
	.global	test
	.type	test, %function
test:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	bl	Exit(PLT)
	ldmfd	sp, {fp, sp, pc}
	.size	test, .-test
	.section	.rodata
	.align	2
.LC16:
	.ascii	"First: start timer\000"
	.align	2
.LC17:
	.ascii	"First: trying something\012\015\000"
	.align	2
.LC18:
	.ascii	"First: enabled\012\015\000"
	.align	2
.LC19:
	.ascii	"time: %d\012\015\000"
	.text
	.align	2
	.global	firstUserTask
	.type	firstUserTask, %function
firstUserTask:
	@ args = 0, pretend = 0, frame = 28
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	ldr	sl, .L190
.L189:
	add	sl, pc, sl
	mov	r0, #1
	ldr	r3, .L190+4
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, .L190+8
	str	r3, [fp, #-40]
	ldr	r3, .L190+12
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-36]
	ldr	r3, .L190+16
	str	r3, [r2, #0]
	ldr	r3, .L190+20
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	orr	r2, r3, #64
	ldr	r3, [fp, #-32]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-32]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	orr	r2, r3, #128
	ldr	r3, [fp, #-32]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-28]
	mov	r0, #1
	ldr	r3, .L190+24
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, .L190+28
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #524288
	str	r3, [r2, #0]
	mov	r0, #1
	ldr	r3, .L190+32
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
.L187:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L190+36
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L187
.L191:
	.align	2
.L190:
	.word	_GLOBAL_OFFSET_TABLE_-(.L189+8)
	.word	.LC16(GOTOFF)
	.word	-2139029372
	.word	-2139029376
	.word	500000
	.word	-2139029368
	.word	.LC17(GOTOFF)
	.word	-2146697200
	.word	.LC18(GOTOFF)
	.word	.LC19(GOTOFF)
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
	ldr	sl, .L196
.L195:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L196+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
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
	add sp, sp, #12
	mov r3, lr
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x13
	msr CPSR, r1
	ldr r1, [r0, #4]
	msr SPSR, r1
	mov lr, r3
	ldmfd r2, {r1-r3}
	ldr r0, [r0, #8]
	movs pc, lr
.L193:
	stmfd sp!, {r0-r4}
	ldr r0, [lr, #-4];
	bic r1, r0, #0xFF000000
	stmfd sp!, {r1}
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
	ldmfd r2!, {lr}
	Store:
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
.L197:
	.align	2
.L196:
	.word	_GLOBAL_OFFSET_TABLE_-(.L195+8)
	.word	.L193(GOTOFF)
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
	b	.L199
.L200:
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
.L199:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L200
	ldr	r3, [fp, #-16]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	mov	r3, #0
	strb	r3, [r2, #0]
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
	ldr	r3, .L205
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
.L206:
	.align	2
.L205:
	.word	1104285
	.size	getStackSize, .-getStackSize
	.align	2
	.global	initialize
	.type	initialize, %function
initialize:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	ldr	sl, .L216
.L215:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L208
.L209:
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
.L208:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L209
	bl	getStackSize(PLT)
	mov	r3, r0
	mov	r3, r3, asl #2
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	ldr	r2, [fp, #-28]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L216+4
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
	mov	r3, #1
	str	r3, [r2, #12]
	ldr	r3, .L216+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #12
	str	r3, [fp, #-24]
	b	.L211
.L212:
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
.L211:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L212
	ldr	r3, [fp, #-32]
	add	r2, r3, #8
	ldr	r3, [fp, #-28]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-32]
	add	r2, r3, #8
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
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L217:
	.align	2
.L216:
	.word	_GLOBAL_OFFSET_TABLE_-(.L215+8)
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
	b	.L219
.L220:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L221
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
	b	.L223
.L221:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L219:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L220
	mov	r3, #0
	str	r3, [fp, #-32]
.L223:
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
	beq	.L229
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
.L229:
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
	bne	.L231
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L234
.L231:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L234:
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
	bne	.L236
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L236:
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
	beq	.L240
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L242
.L240:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L242:
	ldr	r2, [fp, #-16]
	mov	r3, #5
	str	r3, [r2, #16]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	closeActive, .-closeActive
	.align	2
	.global	handle
	.type	handle, %function
handle:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #136
	str	r0, [fp, #-128]
	str	r1, [fp, #-132]
	str	r2, [fp, #-136]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #20]
	sub	r3, r3, #1
	cmp	r3, #7
	addls	pc, pc, r3, asl #2
	b	.L281
	.p2align 2
.L254:
	b	.L246
	b	.L247
	b	.L248
	b	.L249
	b	.L250
	b	.L251
	b	.L252
	b	.L253
.L246:
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-124]
	add	r3, r3, #1
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-116]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-108]
	ldr	r2, [fp, #-124]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-128]
	add	r3, r2, r3
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-108]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-116]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-96]
	bl	getStackSize(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-120]
	mul	r3, r2, r3
	mov	r3, r3, asl #2
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	ldr	r2, [fp, #-104]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-104]
	ldr	r3, .L282
	str	r3, [r2, #4]
	ldr	r2, [fp, #-104]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-104]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r2, [fp, #-104]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #20]
	ldr	r2, [fp, #-104]
	ldr	r3, [fp, #-112]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-104]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-104]
	str	r2, [r3, #12]
	ldr	r2, [fp, #-104]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-104]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-96]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #12
	str	r3, [fp, #-92]
	b	.L255
.L256:
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-104]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-104]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-92]
	sub	r3, r3, #1
	str	r3, [fp, #-92]
.L255:
	ldr	r3, [fp, #-92]
	cmp	r3, #3
	bhi	.L256
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L258
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #4]
	b	.L260
.L258:
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #4]
.L260:
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-136]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	rescheduleActive(PLT)
	b	.L281
.L247:
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-88]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	rescheduleActive(PLT)
	b	.L281
.L248:
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-84]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-84]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	rescheduleActive(PLT)
	b	.L281
.L249:
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	rescheduleActive(PLT)
	b	.L281
.L250:
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	closeActive(PLT)
	b	.L281
.L251:
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-76]
	ldr	r2, [fp, #-76]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-128]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-72]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-136]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-72]
	str	r2, [r3, #40]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-72]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-136]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-72]
	str	r2, [r3, #32]
	ldr	r2, [fp, #-68]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-128]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	cmp	r3, #0
	ble	.L261
	ldr	r3, [fp, #-68]
	cmp	r3, #30
	ble	.L263
.L261:
	ldr	r2, [fp, #-72]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L281
.L263:
	ldr	r3, [fp, #-80]
	mov	r0, r3
	ldr	r1, [fp, #-132]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L264
	ldr	r2, [fp, #-72]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r2, [fp, #-64]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-132]
	mov	r1, r3
	ldr	r2, [fp, #-64]
	bl	rescheduleBlock(PLT)
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #40]
	add	r2, r3, #1
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	bge	.L266
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #40]
	str	r3, [fp, #-148]
	b	.L268
.L266:
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #32]
	sub	r3, r3, #1
	str	r3, [fp, #-148]
.L268:
	ldr	r3, [fp, #-148]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-60]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-72]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-76]
	str	r3, [r2, #0]
	b	.L281
.L264:
	ldr	r2, [fp, #-72]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-72]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L270
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-56]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #52]
	b	.L281
.L270:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #52]
	b	.L281
.L252:
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-48]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-128]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-44]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-44]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-136]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-44]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L272
	ldr	r3, [fp, #-44]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-52]
	mov	r0, r3
	ldr	r1, [fp, #-132]
	bl	blockActive(PLT)
	b	.L281
.L272:
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #48]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #40]
	add	r2, r3, #1
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	bge	.L275
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #40]
	str	r3, [fp, #-144]
	b	.L277
.L275:
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #32]
	sub	r3, r3, #1
	str	r3, [fp, #-144]
.L277:
	ldr	r3, [fp, #-144]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-36]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-44]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-40]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-44]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #20]
	str	r3, [r2, #0]
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-40]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-44]
	str	r2, [r3, #48]
	b	.L281
.L253:
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-128]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	blt	.L278
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #32]
	sub	r3, r3, #1
	str	r3, [fp, #-140]
	b	.L280
.L278:
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-140]
.L280:
	ldr	r3, [fp, #-140]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-16]
	mov	r0, r3
	ldr	r1, [fp, #-24]
	bl	copyMsg(PLT)
	ldr	r3, [fp, #-32]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-16]
	str	r3, [r2, #8]
	ldr	r2, [fp, #-28]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-132]
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	rescheduleBlock(PLT)
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	rescheduleActive(PLT)
.L281:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L283:
	.align	2
.L282:
	.word	1610612752
	.size	handle, .-handle
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 1932
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #1920
	sub	sp, sp, #12
	str	r0, [fp, #-1940]
	str	r1, [fp, #-1944]
	MRC p15, 0, r0, c1, c0, 0
	ldr r1, =4100
	bic r0, r0, r1
	ORR r0, r0, r1
	MCR p15, 0, r0, c1, c0, 0
	sub	r1, fp, #1792
	sub	r1, r1, #12
	sub	r1, r1, #12
	sub	r2, fp, #1872
	sub	r2, r2, #12
	sub	r2, r2, #12
	sub	r3, fp, #1920
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	initialize(PLT)
.L285:
	sub	r2, fp, #1872
	sub	r2, r2, #12
	sub	r2, r2, #12
	sub	r3, fp, #1920
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	bl	schedule(PLT)
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L286
	sub	r3, fp, #1920
	sub	r3, r3, #12
	sub	r3, r3, #4
	ldr	r0, [fp, #-16]
	mov	r1, r3
	bl	getNextRequest(PLT)
	sub	r1, fp, #1792
	sub	r1, r1, #12
	sub	r1, r1, #12
	sub	r2, fp, #1872
	sub	r2, r2, #12
	sub	r2, r2, #12
	sub	r3, fp, #1920
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	handle(PLT)
	b	.L285
.L286:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
