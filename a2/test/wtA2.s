	.file	"wtA2.c"
	.text
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
	mov	r3, #0
	mov	r0, r3
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
	mov	r3, #0
	mov	r0, r3
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
	mov	r3, #0
	mov	r0, r3
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
	beq	.L18
	mvn	r3, #0
	str	r3, [fp, #-44]
	b	.L20
.L18:
	mov	r3, #0
	str	r3, [fp, #-44]
.L20:
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
	beq	.L23
	mvn	r3, #0
	str	r3, [fp, #-44]
	b	.L25
.L23:
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-44]
.L25:
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
	.ascii	"player %d: going to quit\012\015\000"
	.align	2
.LC8:
	.ascii	"player %d: quit and will sign up again\012\015\000"
	.align	2
.LC9:
	.ascii	"player %d: going to play scissors\012\015\000"
	.text
	.align	2
	.global	player
	.type	player, %function
player:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	ldr	sl, .L46
.L45:
	add	sl, pc, sl
	ldr	r3, .L46+4
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
	bne	.L28
	mov	r0, #1
	ldr	r3, .L46+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L28:
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
	beq	.L30
	mov	r0, #1
	ldr	r3, .L46+12
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L30:
	mov	r0, #1
	ldr	r3, .L46+16
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
	bne	.L32
	mov	r0, #1
	ldr	r3, .L46+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L34
.L32:
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	bne	.L35
	mov	r0, #1
	ldr	r3, .L46+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L34
.L35:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	bne	.L34
	mov	r0, #1
	ldr	r3, .L46+28
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
.L34:
	mov	r0, #1
	ldr	r3, .L46+32
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
	ldr	r3, .L46+36
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
	ldr	r3, .L46+40
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
	bne	.L38
	mov	r0, #1
	ldr	r3, .L46+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L40
.L38:
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	bne	.L41
	mov	r0, #1
	ldr	r3, .L46+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L40
.L41:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	bne	.L40
	mov	r0, #1
	ldr	r3, .L46+28
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
.L40:
	mov	r0, #1
	ldr	r3, .L46+32
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
.L47:
	.align	2
.L46:
	.word	_GLOBAL_OFFSET_TABLE_-(.L45+8)
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
	.size	player, .-player
	.section	.rodata
	.align	2
.LC10:
	.ascii	"player %d: going to play paper\012\015\000"
	.align	2
.LC11:
	.ascii	"player %d: my opponent left, signing up again\012\015"
	.ascii	"\000"
	.text
	.align	2
	.global	player2
	.type	player2, %function
player2:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	ldr	sl, .L71
.L70:
	add	sl, pc, sl
	ldr	r3, .L71+4
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
	bne	.L49
	mov	r0, #1
	ldr	r3, .L71+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L49:
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
	beq	.L51
	mov	r0, #1
	ldr	r3, .L71+12
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L51:
	mov	r0, #1
	ldr	r3, .L71+16
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
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
	bne	.L53
	mov	r0, #1
	ldr	r3, .L71+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L55
.L53:
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	bne	.L56
	mov	r0, #1
	ldr	r3, .L71+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L55
.L56:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	bne	.L58
	mov	r0, #1
	ldr	r3, .L71+28
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L55
.L58:
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L55
	mov	r0, #1
	ldr	r3, .L71+32
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
.L55:
	mov	r0, #1
	ldr	r3, .L71+36
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
	bne	.L61
	mov	r0, #1
	ldr	r3, .L71+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L63
.L61:
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	bne	.L64
	mov	r0, #1
	ldr	r3, .L71+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L63
.L64:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	bne	.L66
	mov	r0, #1
	ldr	r3, .L71+28
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	b	.L63
.L66:
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L63
	mov	r0, #1
	ldr	r3, .L71+32
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
.L63:
	mov	r0, #1
	ldr	r3, .L71+40
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
.L72:
	.align	2
.L71:
	.word	_GLOBAL_OFFSET_TABLE_-(.L70+8)
	.word	.LC0(GOTOFF)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC10(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	.LC6(GOTOFF)
	.word	.LC11(GOTOFF)
	.word	.LC9(GOTOFF)
	.word	.LC7(GOTOFF)
	.size	player2, .-player2
	.section	.rodata
	.align	2
.LC12:
	.ascii	"rpsServer: register failed\012\015\000"
	.align	2
.LC13:
	.ascii	"rpsServer: against %d\012\015\000"
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
	ldr	sl, .L114
.L113:
	add	sl, pc, sl
	ldr	r3, .L114+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmn	r3, #1
	bne	.L74
	mov	r0, #1
	ldr	r3, .L114+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L74:
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L76
.L77:
	ldr	r3, [fp, #-44]
	ldr	r2, .L114+12
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	ldr	r2, .L114+16
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L76:
	ldr	r3, [fp, #-44]
	cmp	r3, #29
	bls	.L77
	b	.L112
.L78:
.L112:
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
	beq	.L81
	ldr	r3, [fp, #-324]
	cmp	r3, #3
	beq	.L82
	ldr	r1, [fp, #-324]
	cmp	r1, #1
	beq	.L80
	b	.L78
.L80:
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L83
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
	b	.L78
.L83:
	ldr	r3, [fp, #-304]
	str	r3, [fp, #-48]
	b	.L78
.L81:
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
	beq	.L86
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bne	.L88
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
	b	.L90
.L88:
	ldr	r3, [fp, #-308]
	cmp	r3, #0
	bne	.L91
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	beq	.L93
.L91:
	ldr	r3, [fp, #-308]
	cmp	r3, #1
	bne	.L94
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L93
.L94:
	ldr	r3, [fp, #-308]
	cmp	r3, #2
	bne	.L96
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L96
.L93:
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
	b	.L90
.L96:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L98
	ldr	r3, [fp, #-308]
	cmp	r3, #2
	beq	.L100
.L98:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L101
	ldr	r3, [fp, #-308]
	cmp	r3, #0
	beq	.L100
.L101:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L103
	ldr	r3, [fp, #-308]
	cmp	r3, #1
	bne	.L103
.L100:
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
	b	.L90
.L103:
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
.L90:
	ldr	r2, [fp, #-32]
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L78
.L86:
	ldr	r2, [fp, #-308]
	ldr	r3, [fp, #-28]
	str	r2, [r3, #4]
	b	.L78
.L82:
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
	bne	.L106
	ldr	r2, [fp, #-24]
	mov	r3, #3
	str	r3, [r2, #4]
	mov	r3, #0
	str	r3, [fp, #-320]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	b	.L108
.L106:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	beq	.L109
	mov	r0, #1
	ldr	r3, .L114+20
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
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
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	b	.L108
.L109:
	ldr	r2, [fp, #-20]
	mov	r3, #4
	str	r3, [r2, #4]
.L108:
	mov	r3, #0
	str	r3, [fp, #-320]
	ldr	r3, [fp, #-304]
	sub	r2, fp, #320
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	b	.L78
.L115:
	.align	2
.L114:
	.word	_GLOBAL_OFFSET_TABLE_-(.L113+8)
	.word	.LC0(GOTOFF)
	.word	.LC12(GOTOFF)
	.word	-284
	.word	-280
	.word	.LC13(GOTOFF)
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
	ldr	sl, .L142
.L141:
	add	sl, pc, sl
	ldr	r3, .L142+4
	add	r3, sl, r3
	str	r3, [fp, #-56]
	b	.L140
.L117:
.L140:
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
	beq	.L119
	ldr	r3, [fp, #-88]
	cmp	r3, #2
	beq	.L120
	b	.L117
.L119:
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L121
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-48]
	b	.L123
.L124:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L125
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L123:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	bls	.L124
.L125:
	ldr	r3, [fp, #-48]
	cmp	r3, #4
	bne	.L121
	mov	r3, #1
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-52]
.L121:
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L128
	mvn	r3, #0
	str	r3, [fp, #-84]
.L128:
	ldr	r3, [fp, #-60]
	sub	r2, fp, #84
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L117
.L120:
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L130
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-32]
	b	.L132
.L133:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L134
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L132:
	ldr	r3, [fp, #-32]
	cmp	r3, #3
	bls	.L133
.L134:
	ldr	r3, [fp, #-32]
	cmp	r3, #4
	bne	.L130
	mov	r3, #1
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-76]
.L130:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L137
	mvn	r3, #0
	str	r3, [fp, #-84]
.L137:
	ldr	r3, [fp, #-60]
	sub	r2, fp, #84
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L117
.L143:
	.align	2
.L142:
	.word	_GLOBAL_OFFSET_TABLE_-(.L141+8)
	.word	.LC0(GOTOFF)
	.size	nameServer, .-nameServer
	.section	.rodata
	.align	2
.LC14:
	.ascii	"First: created name server\012\015\000"
	.align	2
.LC15:
	.ascii	"First: created rps server with tid %d\012\015\000"
	.align	2
.LC16:
	.ascii	"First: created player tid %d\012\015\000"
	.align	2
.LC17:
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
	ldr	sl, .L147
.L146:
	add	sl, pc, sl
	ldr	r3, .L147+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L147+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, .L147+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #2
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L147+16
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	ldr	r3, .L147+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #3
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L147+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	ldr	r3, .L147+28
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #3
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L147+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	ldr	r3, .L147+28
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #3
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L147+24
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L147+32
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L148:
	.align	2
.L147:
	.word	_GLOBAL_OFFSET_TABLE_-(.L146+8)
	.word	nameServer(GOT)
	.word	.LC14(GOTOFF)
	.word	rpsServer(GOT)
	.word	.LC15(GOTOFF)
	.word	player(GOT)
	.word	.LC16(GOTOFF)
	.word	player2(GOT)
	.word	.LC17(GOTOFF)
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
	ldr	sl, .L153
.L152:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L153+4
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
.L150:
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
.L154:
	.align	2
.L153:
	.word	_GLOBAL_OFFSET_TABLE_-(.L152+8)
	.word	.L150(GOTOFF)
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
	b	.L156
.L157:
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
.L156:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L157
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
	ldr	r3, .L162
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
.L163:
	.align	2
.L162:
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
	ldr	sl, .L173
.L172:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L165
.L166:
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
.L165:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L166
	bl	getStackSize(PLT)
	mov	r3, r0
	mov	r3, r3, asl #2
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	ldr	r2, [fp, #-28]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L173+4
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
	ldr	r3, .L173+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #12
	str	r3, [fp, #-24]
	b	.L168
.L169:
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
.L168:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L169
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
.L174:
	.align	2
.L173:
	.word	_GLOBAL_OFFSET_TABLE_-(.L172+8)
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
	b	.L176
.L177:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L178
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
	b	.L180
.L178:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L176:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L177
	mov	r3, #0
	str	r3, [fp, #-32]
.L180:
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
	beq	.L186
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
.L186:
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
	bne	.L188
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L191
.L188:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	ldr	r2, [fp, #-32]
	mov	r3, #0
	str	r3, [r2, #56]
.L191:
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
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
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
	beq	.L195
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L197
.L195:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L197:
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
	b	.L233
	.p2align 2
.L209:
	b	.L201
	b	.L202
	b	.L203
	b	.L204
	b	.L205
	b	.L206
	b	.L207
	b	.L208
.L201:
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
	ldr	r3, .L234
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
	b	.L210
.L211:
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
.L210:
	ldr	r3, [fp, #-92]
	cmp	r3, #3
	bhi	.L211
	ldr	r3, [fp, #-100]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L213
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #4]
	b	.L215
.L213:
	ldr	r3, [fp, #-100]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-104]
	str	r3, [r2, #4]
.L215:
	ldr	r3, [fp, #-136]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-136]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	rescheduleActive(PLT)
	b	.L233
.L202:
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
	b	.L233
.L203:
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
	b	.L233
.L204:
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	rescheduleActive(PLT)
	b	.L233
.L205:
	ldr	r0, [fp, #-132]
	ldr	r1, [fp, #-136]
	bl	closeActive(PLT)
	b	.L233
.L206:
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
	ldr	r3, [fp, #-80]
	mov	r0, r3
	ldr	r1, [fp, #-132]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L216
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
	bge	.L218
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #40]
	str	r3, [fp, #-148]
	b	.L220
.L218:
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #32]
	sub	r3, r3, #1
	str	r3, [fp, #-148]
.L220:
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
	b	.L233
.L216:
	ldr	r2, [fp, #-72]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-72]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L222
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-56]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #52]
	b	.L233
.L222:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-64]
	str	r2, [r3, #52]
	b	.L233
.L207:
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
	bne	.L224
	ldr	r3, [fp, #-44]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-52]
	mov	r0, r3
	ldr	r1, [fp, #-132]
	bl	blockActive(PLT)
	b	.L233
.L224:
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #48]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #40]
	add	r2, r3, #1
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	bge	.L227
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #40]
	str	r3, [fp, #-144]
	b	.L229
.L227:
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #32]
	sub	r3, r3, #1
	str	r3, [fp, #-144]
.L229:
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
	b	.L233
.L208:
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
	blt	.L230
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #32]
	sub	r3, r3, #1
	str	r3, [fp, #-140]
	b	.L232
.L230:
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-140]
.L232:
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
.L233:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L235:
	.align	2
.L234:
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
.L237:
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
	beq	.L238
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
	b	.L237
.L238:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
