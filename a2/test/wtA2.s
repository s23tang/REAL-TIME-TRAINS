	.file	"wtA2.c"
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
	.align	2
.LC3:
	.ascii	"player %d: going to play rock\012\015\000"
	.align	2
.LC4:
	.ascii	"player %d: I WON\012\015\000"
	.align	2
.LC5:
	.ascii	"player %d: I LOST\012\015\000"
	.align	2
.LC6:
	.ascii	"player %d: I TIED\012\015\000"
	.align	2
.LC7:
	.ascii	"player %d: my opponent left, signing up again\012\015"
	.ascii	"\000"
	.align	2
.LC8:
	.ascii	"player %d: going to quit\012\015\000"
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
	ldr	sl, .L52
.L51:
	add	sl, pc, sl
	ldr	r3, .L52+4
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
	ldr	r3, .L52+8
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
	ldr	r3, .L52+12
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L40:
	mov	r0, #1
	ldr	r3, .L52+16
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
	bne	.L42
	mov	r0, #1
	ldr	r3, .L52+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L44
.L42:
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	bne	.L45
	mov	r0, #1
	ldr	r3, .L52+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L44
.L45:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	bne	.L47
	mov	r0, #1
	ldr	r3, .L52+28
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L44
.L47:
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L44
	mov	r0, #1
	ldr	r3, .L52+32
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
.L44:
	mov	r0, #1
	ldr	r3, .L52+36
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
.L53:
	.align	2
.L52:
	.word	_GLOBAL_OFFSET_TABLE_-(.L51+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	.LC6(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	.LC8(GOTOFF)
	.size	player4, .-player4
	.section	.rodata
	.align	2
.LC9:
	.ascii	"player %d: quited and will sign up again\012\015\000"
	.align	2
.LC10:
	.ascii	"player %d: going to play scissors\012\015\000"
	.text
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
	ldr	sl, .L77
.L76:
	add	sl, pc, sl
	ldr	r3, .L77+4
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
	bne	.L55
	mov	r0, #1
	ldr	r3, .L77+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L55:
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
	beq	.L57
	mov	r0, #1
	ldr	r3, .L77+12
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L57:
	mov	r0, #1
	ldr	r3, .L77+16
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
	bne	.L59
	mov	r0, #1
	ldr	r3, .L77+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L61
.L59:
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	bne	.L62
	mov	r0, #1
	ldr	r3, .L77+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L61
.L62:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	bne	.L64
	mov	r0, #1
	ldr	r3, .L77+28
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L61
.L64:
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L61
	mov	r0, #1
	ldr	r3, .L77+32
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
	mov	r0, #1
	ldr	r3, .L77+36
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
	mov	r0, #1
	ldr	r3, .L77+40
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
	mov	r0, #1
	ldr	r3, .L77+44
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	mov	r3, #2
	str	r3, [fp, #-32]
	mov	r3, #2
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
	bne	.L67
	mov	r0, #1
	ldr	r3, .L77+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L69
.L67:
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	bne	.L70
	mov	r0, #1
	ldr	r3, .L77+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L69
.L70:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	bne	.L72
	mov	r0, #1
	ldr	r3, .L77+28
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L69
.L72:
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L69
	mov	r0, #1
	ldr	r3, .L77+32
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
.L69:
	mov	r0, #1
	ldr	r3, .L77+36
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
.L78:
	.align	2
.L77:
	.word	_GLOBAL_OFFSET_TABLE_-(.L76+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	.LC6(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	.LC8(GOTOFF)
	.word	.LC9(GOTOFF)
	.word	.LC10(GOTOFF)
	.size	player1, .-player1
	.section	.rodata
	.align	2
.LC11:
	.ascii	"player %d: going to play paper\012\015\000"
	.align	2
.LC12:
	.ascii	"player %d: my opponent left, signing up again. Also"
	.ascii	" creating another player\012\015\000"
	.align	2
.LC13:
	.ascii	"Player %d: created player tid %d\012\015\000"
	.text
	.align	2
	.global	player2
	.type	player2, %function
player2:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #36
	ldr	sl, .L110
.L109:
	add	sl, pc, sl
	ldr	r3, .L110+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	cmn	r3, #1
	bne	.L80
	mov	r0, #1
	ldr	r3, .L110+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L80:
	mov	r3, #1
	str	r3, [fp, #-40]
	sub	r2, fp, #40
	sub	ip, fp, #48
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L82
	mov	r0, #1
	ldr	r3, .L110+12
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L82:
	mov	r0, #1
	ldr	r3, .L110+16
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	mov	r3, #2
	str	r3, [fp, #-40]
	mov	r3, #1
	str	r3, [fp, #-36]
	sub	r2, fp, #40
	sub	ip, fp, #48
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-48]
	cmp	r3, #1
	bne	.L84
	mov	r0, #1
	ldr	r3, .L110+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	b	.L86
.L84:
	ldr	r3, [fp, #-48]
	cmp	r3, #2
	bne	.L87
	mov	r0, #1
	ldr	r3, .L110+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	b	.L86
.L87:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	bne	.L89
	mov	r0, #1
	ldr	r3, .L110+28
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	b	.L86
.L89:
	ldr	r3, [fp, #-48]
	cmp	r3, #4
	bne	.L86
	mov	r0, #1
	ldr	r3, .L110+32
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	mov	r3, #1
	str	r3, [fp, #-40]
	sub	r2, fp, #40
	sub	ip, fp, #48
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
.L86:
	mov	r0, #1
	ldr	r3, .L110+36
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	mov	r3, #2
	str	r3, [fp, #-40]
	mov	r3, #2
	str	r3, [fp, #-36]
	sub	r2, fp, #40
	sub	ip, fp, #48
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-48]
	cmp	r3, #1
	bne	.L92
	mov	r0, #1
	ldr	r3, .L110+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	b	.L94
.L92:
	ldr	r3, [fp, #-48]
	cmp	r3, #2
	bne	.L95
	mov	r0, #1
	ldr	r3, .L110+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	b	.L94
.L95:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	bne	.L97
	mov	r0, #1
	ldr	r3, .L110+28
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	b	.L94
.L97:
	ldr	r3, [fp, #-48]
	cmp	r3, #4
	bne	.L94
	mov	r0, #1
	ldr	r3, .L110+40
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	ldr	r3, .L110+44
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #3
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L110+48
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-20]
	bl	bwprintf(PLT)
	mov	r3, #1
	str	r3, [fp, #-40]
	sub	r2, fp, #40
	sub	ip, fp, #48
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
.L94:
	mov	r0, #1
	ldr	r3, .L110+52
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	mov	r3, #2
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-36]
	sub	r2, fp, #40
	sub	ip, fp, #48
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, [fp, #-48]
	cmp	r3, #1
	bne	.L100
	mov	r0, #1
	ldr	r3, .L110+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	b	.L102
.L100:
	ldr	r3, [fp, #-48]
	cmp	r3, #2
	bne	.L103
	mov	r0, #1
	ldr	r3, .L110+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	b	.L102
.L103:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	bne	.L105
	mov	r0, #1
	ldr	r3, .L110+28
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	b	.L102
.L105:
	ldr	r3, [fp, #-48]
	cmp	r3, #4
	bne	.L102
	mov	r0, #1
	ldr	r3, .L110+32
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	mov	r3, #1
	str	r3, [fp, #-40]
	sub	r2, fp, #40
	sub	ip, fp, #48
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
.L102:
	mov	r0, #1
	ldr	r3, .L110+56
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-28]
	bl	bwprintf(PLT)
	mov	r3, #3
	str	r3, [fp, #-40]
	sub	r2, fp, #40
	sub	ip, fp, #48
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-32]
	mov	r1, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L111:
	.align	2
.L110:
	.word	_GLOBAL_OFFSET_TABLE_-(.L109+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC11(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	.LC6(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	.LC10(GOTOFF)
	.word	.LC12(GOTOFF)
	.word	player4(GOT)
	.word	.LC13(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	.LC8(GOTOFF)
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
	ldr	sl, .L127
.L126:
	add	sl, pc, sl
	ldr	r3, .L127+4
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
	bne	.L113
	mov	r0, #1
	ldr	r3, .L127+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L113:
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
	beq	.L115
	mov	r0, #1
	ldr	r3, .L127+12
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L115:
	mov	r0, #1
	ldr	r3, .L127+16
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
	bne	.L117
	mov	r0, #1
	ldr	r3, .L127+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L119
.L117:
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	bne	.L120
	mov	r0, #1
	ldr	r3, .L127+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L119
.L120:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	bne	.L122
	mov	r0, #1
	ldr	r3, .L127+28
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L119
.L122:
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L119
	mov	r0, #1
	ldr	r3, .L127+32
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
.L119:
	mov	r0, #1
	ldr	r3, .L127+36
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
.L128:
	.align	2
.L127:
	.word	_GLOBAL_OFFSET_TABLE_-(.L126+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	.LC6(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	.LC8(GOTOFF)
	.size	player3, .-player3
	.section	.rodata
	.align	2
.LC14:
	.ascii	"rpsServer: register failed\012\015\000"
	.align	2
.LC15:
	.ascii	"Press any key for result--------------\012\015\000"
	.text
	.align	2
	.global	rpsServer
	.type	rpsServer, %function
rpsServer:
	@ args = 0, pretend = 0, frame = 308
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #308
	ldr	sl, .L170
.L169:
	add	sl, pc, sl
	ldr	r3, .L170+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmn	r3, #1
	bne	.L130
	mov	r0, #1
	ldr	r3, .L170+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L130:
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L132
.L133:
	ldr	r3, [fp, #-44]
	ldr	r2, .L170+12
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	ldr	r2, .L170+16
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L132:
	ldr	r3, [fp, #-44]
	cmp	r3, #29
	bls	.L133
	b	.L168
.L134:
.L168:
	sub	r2, fp, #312
	sub	r3, fp, #304
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Receive(PLT)
	ldr	r3, [fp, #-312]
	str	r3, [fp, #-324]
	ldr	r1, [fp, #-324]
	cmp	r1, #2
	beq	.L137
	ldr	r3, [fp, #-324]
	cmp	r3, #3
	beq	.L138
	ldr	r1, [fp, #-324]
	cmp	r1, #1
	beq	.L136
	b	.L134
.L136:
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L139
	ldr	r3, [fp, #-304]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #300
	add	r3, r3, r2
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #300
	add	r3, r3, r2
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-48]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-304]
	ldr	r3, [fp, #-36]
	str	r2, [r3, #0]
	mov	r3, #0
	str	r3, [fp, #-320]
	sub	r3, fp, #320
	ldr	r0, [fp, #-48]
	mov	r1, r3
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r3, [fp, #-304]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L134
.L139:
	ldr	r3, [fp, #-304]
	str	r3, [fp, #-48]
	b	.L134
.L137:
	ldr	r3, [fp, #-304]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #300
	add	r3, r3, r2
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #300
	add	r3, r3, r2
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	beq	.L142
	mov	r0, #1
	ldr	r3, .L170+20
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	bl	getc(PLT)
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bne	.L144
	ldr	r2, [fp, #-32]
	mov	r3, #0
	str	r3, [r2, #0]
	mov	r3, #4
	str	r3, [fp, #-320]
	ldr	r3, [fp, #-304]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	b	.L146
.L144:
	ldr	r3, [fp, #-308]
	cmp	r3, #0
	bne	.L147
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	beq	.L149
.L147:
	ldr	r3, [fp, #-308]
	cmp	r3, #1
	bne	.L150
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L149
.L150:
	ldr	r3, [fp, #-308]
	cmp	r3, #2
	bne	.L152
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L152
.L149:
	mov	r3, #2
	str	r3, [fp, #-320]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, #1
	str	r3, [fp, #-320]
	ldr	r3, [fp, #-304]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	b	.L146
.L152:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L154
	ldr	r3, [fp, #-308]
	cmp	r3, #2
	beq	.L156
.L154:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L157
	ldr	r3, [fp, #-308]
	cmp	r3, #0
	beq	.L156
.L157:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L159
	ldr	r3, [fp, #-308]
	cmp	r3, #1
	bne	.L159
.L156:
	mov	r3, #1
	str	r3, [fp, #-320]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, #2
	str	r3, [fp, #-320]
	ldr	r3, [fp, #-304]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	b	.L146
.L159:
	mov	r3, #3
	str	r3, [fp, #-320]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #0]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r3, [fp, #-304]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
.L146:
	ldr	r2, [fp, #-32]
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L134
.L142:
	ldr	r2, [fp, #-308]
	ldr	r3, [fp, #-28]
	str	r2, [r3, #4]
	b	.L134
.L138:
	ldr	r3, [fp, #-304]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #300
	add	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	mov	r3, r3, asl #3
	mov	r2, r3
	sub	r3, fp, #300
	add	r3, r3, r2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bne	.L162
	ldr	r2, [fp, #-24]
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L164
.L162:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	beq	.L165
	ldr	r2, [fp, #-24]
	mov	r3, #3
	str	r3, [r2, #4]
	mov	r3, #4
	str	r3, [fp, #-320]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	b	.L164
.L165:
	ldr	r2, [fp, #-20]
	mov	r3, #4
	str	r3, [r2, #4]
.L164:
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	mov	r3, #0
	str	r3, [fp, #-320]
	ldr	r3, [fp, #-304]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	b	.L134
.L171:
	.align	2
.L170:
	.word	_GLOBAL_OFFSET_TABLE_-(.L169+8)
	.word	.LC0(GOTOFF)
	.word	.LC14(GOTOFF)
	.word	-284
	.word	-280
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
	ldr	sl, .L198
.L197:
	add	sl, pc, sl
	ldr	r3, .L198+4
	add	r3, sl, r3
	str	r3, [fp, #-56]
	b	.L196
.L173:
.L196:
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
	beq	.L175
	ldr	r3, [fp, #-88]
	cmp	r3, #2
	beq	.L176
	b	.L173
.L175:
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L177
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-48]
	b	.L179
.L180:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L181
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L179:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	bls	.L180
.L181:
	ldr	r3, [fp, #-48]
	cmp	r3, #4
	bne	.L177
	mov	r3, #1
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-52]
.L177:
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L184
	mvn	r3, #0
	str	r3, [fp, #-84]
.L184:
	ldr	r3, [fp, #-60]
	sub	r2, fp, #84
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L173
.L176:
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L186
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-32]
	b	.L188
.L189:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L190
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L188:
	ldr	r3, [fp, #-32]
	cmp	r3, #3
	bls	.L189
.L190:
	ldr	r3, [fp, #-32]
	cmp	r3, #4
	bne	.L186
	mov	r3, #1
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-76]
.L186:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L193
	mvn	r3, #0
	str	r3, [fp, #-84]
.L193:
	ldr	r3, [fp, #-60]
	sub	r2, fp, #84
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L173
.L199:
	.align	2
.L198:
	.word	_GLOBAL_OFFSET_TABLE_-(.L197+8)
	.word	.LC0(GOTOFF)
	.size	nameServer, .-nameServer
	.section	.rodata
	.align	2
.LC16:
	.ascii	"First: created name server\012\015\000"
	.align	2
.LC17:
	.ascii	"First: created rps server with tid %d\012\015\000"
	.align	2
.LC18:
	.ascii	"First: created player tid %d\012\015\000"
	.align	2
.LC19:
	.ascii	"First: exiting\012\015\000"
	.text
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
	ldr	sl, .L203
.L202:
	add	sl, pc, sl
	ldr	r3, .L203+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L203+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, .L203+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #2
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L203+16
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	ldr	r3, .L203+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #4
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L203+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	ldr	r3, .L203+28
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #3
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L203+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	ldr	r3, .L203+32
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #4
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L203+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L203+36
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L204:
	.align	2
.L203:
	.word	_GLOBAL_OFFSET_TABLE_-(.L202+8)
	.word	nameServer(GOT)
	.word	.LC16(GOTOFF)
	.word	rpsServer(GOT)
	.word	.LC17(GOTOFF)
	.word	player1(GOT)
	.word	.LC18(GOTOFF)
	.word	player2(GOT)
	.word	player3(GOT)
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
	ldr	sl, .L209
.L208:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L209+4
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
	ldr r2, [r0, #4]
	ldr r3, [r0, #8]
	ldmfd r1!, {r4-r9, sl, fp, sp, lr}
	mov sp, r1
	mov r0, r3
	mov r3, lr
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x13
	msr CPSR, r1
	msr SPSR, r2
	mov lr, r3
	movs pc, lr
.L206:
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
	Store: mov ip, sp
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
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L210:
	.align	2
.L209:
	.word	_GLOBAL_OFFSET_TABLE_-(.L208+8)
	.word	.L206(GOTOFF)
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
	b	.L212
.L213:
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
.L212:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L213
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
	ldr	r3, .L218
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
.L219:
	.align	2
.L218:
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
	ldr	sl, .L229
.L228:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L221
.L222:
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
.L221:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L222
	bl	getStackSize(PLT)
	mov	r3, r0
	mov	r3, r3, asl #2
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	ldr	r2, [fp, #-28]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L229+4
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
	ldr	r3, .L229+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #12
	str	r3, [fp, #-24]
	b	.L224
.L225:
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
.L224:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L225
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
.L230:
	.align	2
.L229:
	.word	_GLOBAL_OFFSET_TABLE_-(.L228+8)
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
	b	.L232
.L233:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L234
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
	b	.L236
.L234:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L232:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L233
	mov	r3, #0
	str	r3, [fp, #-32]
.L236:
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
	beq	.L242
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
.L242:
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
	bne	.L244
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L247
.L244:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L247:
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
	bne	.L249
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L249:
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
	beq	.L253
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L255
.L253:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L255:
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
	b	.L294
	.p2align 2
.L267:
	b	.L259
	b	.L260
	b	.L261
	b	.L262
	b	.L263
	b	.L264
	b	.L265
	b	.L266
.L259:
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
	ldr	r3, .L295
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
	b	.L268
.L269:
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
.L268:
	ldr	r3, [fp, #-92]
	cmp	r3, #3
	bhi	.L269
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L271
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #4]
	b	.L273
.L271:
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #4]
.L273:
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-136]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	rescheduleActive(PLT)
	b	.L294
.L260:
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
	b	.L294
.L261:
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
	b	.L294
.L262:
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	rescheduleActive(PLT)
	b	.L294
.L263:
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	closeActive(PLT)
	b	.L294
.L264:
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
	ble	.L274
	ldr	r3, [fp, #-68]
	cmp	r3, #30
	ble	.L276
.L274:
	ldr	r2, [fp, #-72]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L294
.L276:
	ldr	r3, [fp, #-80]
	mov	r0, r3
	ldr	r1, [fp, #-132]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L277
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
	bge	.L279
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #40]
	str	r3, [fp, #-148]
	b	.L281
.L279:
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #32]
	sub	r3, r3, #1
	str	r3, [fp, #-148]
.L281:
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
	b	.L294
.L277:
	ldr	r2, [fp, #-72]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-72]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L283
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-56]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #52]
	b	.L294
.L283:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #52]
	b	.L294
.L265:
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
	bne	.L285
	ldr	r3, [fp, #-44]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-52]
	mov	r0, r3
	ldr	r1, [fp, #-132]
	bl	blockActive(PLT)
	b	.L294
.L285:
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #48]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #40]
	add	r2, r3, #1
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	bge	.L288
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #40]
	str	r3, [fp, #-144]
	b	.L290
.L288:
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #32]
	sub	r3, r3, #1
	str	r3, [fp, #-144]
.L290:
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
	b	.L294
.L266:
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
	blt	.L291
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #32]
	sub	r3, r3, #1
	str	r3, [fp, #-140]
	b	.L293
.L291:
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-140]
.L293:
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
.L294:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L296:
	.align	2
.L295:
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
.L298:
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
	beq	.L299
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
	b	.L298
.L299:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
