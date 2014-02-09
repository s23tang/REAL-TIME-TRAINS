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
	.global	AwaitEvent
	.type	AwaitEvent, %function
AwaitEvent:
	@ args = 0, pretend = 0, frame = 4
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #4
	str	r0, [fp, #-16]
	swi 9
	ldmfd	sp, {r3, fp, sp, pc}
	.size	AwaitEvent, .-AwaitEvent
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
	beq	.L30
	mvn	r3, #0
	str	r3, [fp, #-44]
	b	.L32
.L30:
	mov	r3, #0
	str	r3, [fp, #-44]
.L32:
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
	beq	.L35
	mvn	r3, #0
	str	r3, [fp, #-44]
	b	.L37
.L35:
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-44]
.L37:
	ldr	r3, [fp, #-44]
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	WhoIs, .-WhoIs
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Sent %d\012\015\000"
	.text
	.align	2
	.global	Time
	.type	Time, %function
Time:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #28
	ldr	sl, .L42
.L41:
	add	sl, pc, sl
	str	r0, [fp, #-40]
	mov	r3, #2
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-40]
	sub	r1, fp, #28
	sub	ip, fp, #36
	mov	r3, #8
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L42+4
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-20]
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-32]
	mov	r0, r3
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L43:
	.align	2
.L42:
	.word	_GLOBAL_OFFSET_TABLE_-(.L41+8)
	.word	.LC0(GOTOFF)
	.size	Time, .-Time
	.align	2
	.global	Delay
	.type	Delay, %function
Delay:
	@ args = 0, pretend = 0, frame = 28
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bge	.L45
	mvn	r3, #0
	str	r3, [fp, #-40]
	b	.L47
.L45:
	mov	r3, #3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	sub	r1, fp, #20
	sub	ip, fp, #28
	mov	r3, #8
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	mov	r3, #0
	str	r3, [fp, #-40]
.L47:
	ldr	r3, [fp, #-40]
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
	ldr	r0, [fp, #-24]
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
	.align	2
	.global	notifier
	.type	notifier, %function
notifier:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	sub	r2, fp, #32
	sub	r3, fp, #16
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Receive(PLT)
	mov	r3, #0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	sub	r2, fp, #24
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	notifier, .-notifier
	.section	.rodata
	.align	2
.LC1:
	.ascii	"ROCK\000\000"
	.align	2
.LC2:
	.ascii	"PAPER\000\000"
	.align	2
.LC3:
	.ascii	"SCISSORS\000\000"
	.align	2
.LC4:
	.ascii	"rps\000\000"
	.align	2
.LC5:
	.ascii	"rpsServer: register failed\012\015\000"
	.align	2
.LC6:
	.ascii	"Task %d signed up.\012\015\000"
	.align	2
.LC7:
	.ascii	"Task %d matched up with task %d\012\015\000"
	.align	2
.LC8:
	.ascii	"Press any key to continue--------------\012\015\000"
	.align	2
.LC9:
	.ascii	"Task %d left, task %d tried to play %s\012\015\000"
	.align	2
.LC10:
	.ascii	"Task %d played %s, task %d played %s\012\015\000"
	.align	2
.LC11:
	.ascii	"Task %d won!\012\015\000"
	.align	2
.LC12:
	.ascii	"TIEEEEEEE!\012\015\000"
	.align	2
.LC13:
	.ascii	"Task %d and task %d quit!\012\015\000"
	.align	2
.LC14:
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
	ldr	sl, .L94
.L93:
	add	sl, pc, sl
	ldr	r3, .L94+4
	add	r3, sl, r3
	str	r3, [fp, #-64]
	ldr	r3, .L94+8
	add	r3, sl, r3
	str	r3, [fp, #-60]
	ldr	r3, .L94+12
	add	r3, sl, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-68]
	ldr	r3, .L94+16
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmn	r3, #1
	bne	.L54
	mov	r0, #1
	ldr	r3, .L94+20
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L54:
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L56
.L57:
	ldr	r3, [fp, #-44]
	ldr	r2, .L94+24
	mov	r3, r3, asl #3
	sub	r0, fp, #16
	add	r3, r3, r0
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	ldr	r2, .L94+28
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L56:
	ldr	r3, [fp, #-44]
	cmp	r3, #29
	bls	.L57
	b	.L92
.L58:
.L92:
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
	beq	.L61
	ldr	r1, [fp, #-348]
	cmp	r1, #3
	beq	.L62
	ldr	r3, [fp, #-348]
	cmp	r3, #1
	beq	.L60
	b	.L58
.L60:
	ldr	r2, [fp, #-328]
	mov	r0, #1
	ldr	r3, .L94+32
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L63
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
	ldr	r3, .L94+36
	add	r3, sl, r3
	mov	r1, r3
	ldr	r3, [fp, #-48]
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L94+40
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
	b	.L58
.L63:
	ldr	r3, [fp, #-328]
	str	r3, [fp, #-48]
	b	.L58
.L61:
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
	beq	.L66
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bne	.L68
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
	ldr	r3, .L94+44
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L94+40
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
	b	.L70
.L68:
	ldr	r3, [fp, #-332]
	cmp	r3, #0
	bne	.L71
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	beq	.L73
.L71:
	ldr	r3, [fp, #-332]
	cmp	r3, #1
	bne	.L74
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L73
.L74:
	ldr	r3, [fp, #-332]
	cmp	r3, #2
	bne	.L76
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L76
.L73:
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
	ldr	r3, .L94+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	ldr	r2, [fp, #-328]
	mov	r0, #1
	ldr	r3, .L94+52
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L94+40
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
	b	.L70
.L76:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L78
	ldr	r3, [fp, #-332]
	cmp	r3, #2
	beq	.L80
.L78:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L81
	ldr	r3, [fp, #-332]
	cmp	r3, #0
	beq	.L80
.L81:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L83
	ldr	r3, [fp, #-332]
	cmp	r3, #1
	bne	.L83
.L80:
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
	ldr	r3, .L94+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #0]
	mov	r0, #1
	ldr	r3, .L94+52
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L94+40
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
	b	.L70
.L83:
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
	ldr	r3, .L94+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L94+56
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L94+40
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
.L70:
	ldr	r2, [fp, #-32]
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L58
.L66:
	ldr	r2, [fp, #-332]
	ldr	r3, [fp, #-28]
	str	r2, [r3, #4]
	b	.L58
.L62:
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
	bne	.L86
	ldr	r2, [fp, #-328]
	ldr	r3, [fp, #-24]
	ldr	ip, [r3, #0]
	mov	r0, #1
	ldr	r3, .L94+60
	add	r3, sl, r3
	mov	r1, r3
	mov	r3, ip
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L94+40
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	bl	getc(PLT)
	ldr	r2, [fp, #-24]
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L88
.L86:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	beq	.L89
	ldr	r2, [fp, #-24]
	mov	r3, #3
	str	r3, [r2, #4]
	mov	r3, #4
	str	r3, [fp, #-344]
	ldr	r2, [fp, #-328]
	ldr	r3, [fp, #-24]
	ldr	ip, [r3, #0]
	mov	r0, #1
	ldr	r3, .L94+64
	add	r3, sl, r3
	mov	r1, r3
	mov	r3, ip
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L94+40
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
	b	.L88
.L89:
	ldr	r2, [fp, #-20]
	mov	r3, #4
	str	r3, [r2, #4]
.L88:
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
	b	.L58
.L95:
	.align	2
.L94:
	.word	_GLOBAL_OFFSET_TABLE_-(.L93+8)
	.word	.LC1(GOTOFF)
	.word	.LC2(GOTOFF)
	.word	.LC3(GOTOFF)
	.word	.LC4(GOTOFF)
	.word	.LC5(GOTOFF)
	.word	-308
	.word	-304
	.word	.LC6(GOTOFF)
	.word	.LC7(GOTOFF)
	.word	.LC8(GOTOFF)
	.word	.LC9(GOTOFF)
	.word	.LC10(GOTOFF)
	.word	.LC11(GOTOFF)
	.word	.LC12(GOTOFF)
	.word	.LC13(GOTOFF)
	.word	.LC14(GOTOFF)
	.size	rpsServer, .-rpsServer
	.section	.rodata
	.align	2
.LC15:
	.ascii	"clock\000\000"
	.align	2
.LC16:
	.ascii	"clockServer: register failed\012\015\000"
	.align	2
.LC17:
	.ascii	"Received %d\012\015\000"
	.align	2
.LC18:
	.ascii	"Replied %d\012\015\000"
	.text
	.align	2
	.global	clockServer
	.type	clockServer, %function
clockServer:
	@ args = 0, pretend = 0, frame = 420
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #424
	ldr	sl, .L117
.L116:
	add	sl, pc, sl
	ldr	r3, .L117+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	cmn	r3, #1
	bne	.L97
	mov	r0, #1
	ldr	r3, .L117+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L97:
	ldr	r3, .L117+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-44]
	mov	r0, #0
	ldr	r1, [fp, #-44]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-416]
	mov	r3, #0
	str	r3, [fp, #-424]
	ldr	r2, [fp, #-48]
	sub	r1, fp, #424
	sub	ip, fp, #432
	mov	r3, #8
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	b	.L115
.L99:
.L115:
	sub	r2, fp, #432
	sub	r3, fp, #52
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Receive(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	mov	r0, #1
	ldr	r3, .L117+16
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-32]
	bl	bwprintf(PLT)
	ldr	r2, [fp, #-432]
	str	r2, [fp, #-436]
	ldr	r3, [fp, #-436]
	cmp	r3, #2
	beq	.L102
	ldr	r2, [fp, #-436]
	cmp	r2, #3
	beq	.L103
	ldr	r3, [fp, #-436]
	cmp	r3, #1
	beq	.L101
	b	.L100
.L101:
	mov	r3, #0
	str	r3, [fp, #-424]
	ldr	r3, [fp, #-48]
	sub	r2, fp, #424
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
	b	.L100
.L102:
	mov	r3, #0
	str	r3, [fp, #-424]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-420]
	ldr	r3, [fp, #-52]
	sub	r2, fp, #424
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	mov	r0, #1
	ldr	r3, .L117+20
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-32]
	bl	bwprintf(PLT)
	b	.L100
.L103:
	ldr	r2, [fp, #-428]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-40]
	ldr	r1, .L117+24
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r2, r3, r1
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-52]
	mov	r1, r3
	ldr	r0, .L117+28
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r3, r3, r0
	str	r1, [r3, #0]
	sub	r3, fp, #416
	str	r3, [fp, #-20]
	b	.L104
.L105:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bcc	.L106
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	mov	r1, r3
	ldr	r0, .L117+32
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r3, r3, r0
	str	r1, [r3, #0]
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	sub	r3, fp, #412
	add	r3, r3, r2
	ldr	r2, [fp, #-20]
	str	r3, [r2, #0]
	b	.L108
.L106:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
.L104:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L105
.L108:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L100
	ldr	r2, [fp, #-40]
	ldr	r1, .L117+32
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	sub	r2, fp, #16
	add	r3, r3, r2
	add	r2, r3, r1
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-40]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	sub	r3, fp, #412
	add	r3, r3, r2
	ldr	r2, [fp, #-20]
	str	r3, [r2, #0]
.L100:
	ldr	r3, [fp, #-416]
	str	r3, [fp, #-28]
	b	.L110
.L111:
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bne	.L99
	mov	r3, #0
	str	r3, [fp, #-424]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]
	sub	r2, fp, #424
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-28]
.L110:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L111
	b	.L99
.L118:
	.align	2
.L117:
	.word	_GLOBAL_OFFSET_TABLE_-(.L116+8)
	.word	.LC15(GOTOFF)
	.word	.LC16(GOTOFF)
	.word	notifier(GOT)
	.word	.LC17(GOTOFF)
	.word	.LC18(GOTOFF)
	.word	-396
	.word	-392
	.word	-388
	.size	clockServer, .-clockServer
	.align	2
	.global	nameServer
	.type	nameServer, %function
nameServer:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #80
	ldr	sl, .L161
.L160:
	add	sl, pc, sl
	ldr	r3, .L161+4
	add	r3, sl, r3
	str	r3, [fp, #-64]
	ldr	r3, .L161+8
	add	r3, sl, r3
	str	r3, [fp, #-56]
	b	.L159
.L120:
.L159:
	sub	r2, fp, #80
	sub	r3, fp, #68
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Receive(PLT)
	mov	r3, #0
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-88]
	mov	r3, #0
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-80]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	cmp	r3, #1
	beq	.L122
	ldr	r3, [fp, #-96]
	cmp	r3, #2
	beq	.L123
	b	.L120
.L122:
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-76]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L124
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-48]
	b	.L126
.L127:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L128
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L126:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	bls	.L127
.L128:
	ldr	r3, [fp, #-48]
	cmp	r3, #4
	bne	.L132
	mov	r3, #1
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-60]
	b	.L132
.L124:
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L132
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-48]
	b	.L134
.L135:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L136
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L134:
	ldr	r3, [fp, #-48]
	cmp	r3, #5
	bls	.L135
.L136:
	ldr	r3, [fp, #-48]
	cmp	r3, #6
	bne	.L132
	mov	r3, #1
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-52]
.L132:
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L139
	mvn	r3, #0
	str	r3, [fp, #-92]
.L139:
	ldr	r3, [fp, #-68]
	sub	r2, fp, #92
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L120
.L123:
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-76]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L141
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-32]
	b	.L143
.L144:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L145
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L143:
	ldr	r3, [fp, #-32]
	cmp	r3, #3
	bls	.L144
.L145:
	ldr	r3, [fp, #-32]
	cmp	r3, #4
	bne	.L149
	mov	r3, #1
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-84]
	b	.L149
.L141:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L149
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-32]
	b	.L151
.L152:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L153
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L151:
	ldr	r3, [fp, #-32]
	cmp	r3, #5
	bls	.L152
.L153:
	ldr	r3, [fp, #-32]
	cmp	r3, #6
	bne	.L149
	mov	r3, #1
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-84]
.L149:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L156
	mvn	r3, #0
	str	r3, [fp, #-92]
.L156:
	ldr	r3, [fp, #-68]
	sub	r2, fp, #92
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L120
.L162:
	.align	2
.L161:
	.word	_GLOBAL_OFFSET_TABLE_-(.L160+8)
	.word	.LC4(GOTOFF)
	.word	.LC15(GOTOFF)
	.size	nameServer, .-nameServer
	.align	2
	.global	t1
	.type	t1, %function
t1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #8
	ldr	sl, .L167
.L166:
	add	sl, pc, sl
	ldr	r3, .L167+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-24]
.L164:
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	b	.L164
.L168:
	.align	2
.L167:
	.word	_GLOBAL_OFFSET_TABLE_-(.L166+8)
	.word	.LC15(GOTOFF)
	.size	t1, .-t1
	.section	.rodata
	.align	2
.LC19:
	.ascii	"First: created Name Server\012\015\000"
	.align	2
.LC20:
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
	ldr	sl, .L172
.L171:
	add	sl, pc, sl
	ldr	r3, .L172+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L172+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, .L172+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L172+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #3
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r0, #1
	ldr	r3, .L172+20
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L173:
	.align	2
.L172:
	.word	_GLOBAL_OFFSET_TABLE_-(.L171+8)
	.word	nameServer(GOT)
	.word	.LC19(GOTOFF)
	.word	clockServer(GOT)
	.word	t1(GOT)
	.word	.LC20(GOTOFF)
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
	ldr	sl, .L179
.L178:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L179+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L179+8
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
.L176:
	stmfd sp!, {r0, r1, lr}
	mov r1, sp
	add sp, sp, #12
	mrs r0, CPSR
	bic r0, r0, #0x1F
	orr r0, r0, #0x13
	msr CPSR, r0
	ldmfd r1, {r0, r1, lr}
	sub lr, lr, #8
	stmfd sp!, {r0-r4}
	mov r1, #0
	stmfd sp!, {r1}
	b HWres
.L175:
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
	ldmfd r2!, {lr}
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
.L180:
	.align	2
.L179:
	.word	_GLOBAL_OFFSET_TABLE_-(.L178+8)
	.word	.L175(GOTOFF)
	.word	.L176(GOTOFF)
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
	b	.L182
.L183:
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
.L182:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L183
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
	ldr	r3, .L188
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
.L189:
	.align	2
.L188:
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
	ldr	sl, .L199
.L198:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L191
.L192:
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
.L191:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L192
	bl	getStackSize(PLT)
	mov	r3, r0
	mov	r3, r3, asl #2
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	ldr	r2, [fp, #-28]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L199+4
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
	ldr	r3, .L199+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #12
	str	r3, [fp, #-24]
	b	.L194
.L195:
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
.L194:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L195
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
	ldr	r2, [fp, #-40]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-40]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-40]
	mov	r3, #0
	str	r3, [r2, #8]
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L200:
	.align	2
.L199:
	.word	_GLOBAL_OFFSET_TABLE_-(.L198+8)
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
	b	.L202
.L203:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L204
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
	b	.L206
.L204:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L202:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L203
	mov	r3, #0
	str	r3, [fp, #-32]
.L206:
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
	beq	.L212
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
.L212:
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
	bne	.L214
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L217
.L214:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L217:
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
	bne	.L219
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L219:
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
	beq	.L223
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L225
.L223:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L225:
	ldr	r2, [fp, #-16]
	mov	r3, #6
	str	r3, [r2, #16]
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	closeActive, .-closeActive
	.align	2
	.global	handle
	.type	handle, %function
handle:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #152
	str	r0, [fp, #-152]
	str	r1, [fp, #-156]
	str	r2, [fp, #-160]
	str	r3, [fp, #-164]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #20]
	cmp	r3, #9
	addls	pc, pc, r3, asl #2
	b	.L262
	.p2align 2
.L239:
	b	.L229
	b	.L230
	b	.L231
	b	.L232
	b	.L233
	b	.L234
	b	.L235
	b	.L236
	b	.L237
	b	.L238
.L229:
	ldr	r3, .L263
	str	r3, [fp, #-148]
	ldr	r2, [fp, #-148]
	mov	r3, #1
	str	r3, [r2, #0]
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	ldr	r3, [fp, #-164]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L240
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-164]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L262
.L240:
	ldr	r3, [fp, #-164]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-144]
	ldr	r2, [fp, #-144]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r3, [fp, #-144]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-156]
	mov	r1, r3
	ldr	r2, [fp, #-144]
	bl	rescheduleBlock(PLT)
	b	.L262
.L230:
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-140]
	ldr	r3, [fp, #-140]
	add	r3, r3, #1
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-132]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-124]
	ldr	r2, [fp, #-140]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-152]
	add	r3, r2, r3
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-124]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	add	r3, r2, r3
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-132]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-136]
	str	r3, [r2, #8]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-112]
	bl	getStackSize(PLT)
	mov	r2, r0
	ldr	r3, [fp, #-136]
	mul	r3, r2, r3
	mov	r3, r3, asl #2
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	ldr	r2, [fp, #-120]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-120]
	ldr	r3, .L263+4
	str	r3, [r2, #4]
	ldr	r2, [fp, #-120]
	mov	r3, #0
	str	r3, [r2, #8]
	ldr	r2, [fp, #-120]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-136]
	str	r3, [r2, #20]
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-128]
	str	r3, [r2, #24]
	ldr	r2, [fp, #-120]
	mov	r3, #0
	str	r3, [r2, #56]
	ldr	r2, [fp, #-124]
	ldr	r3, [fp, #-120]
	str	r2, [r3, #12]
	ldr	r2, [fp, #-120]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-120]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-112]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #12
	str	r3, [fp, #-108]
	b	.L243
.L244:
	ldr	r3, [fp, #-120]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-120]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-120]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-108]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-108]
	sub	r3, r3, #1
	str	r3, [fp, #-108]
.L243:
	ldr	r3, [fp, #-108]
	cmp	r3, #3
	bhi	.L244
	ldr	r3, [fp, #-116]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L246
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #4]
	b	.L248
.L246:
	ldr	r3, [fp, #-116]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #4]
.L248:
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-160]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	b	.L262
.L231:
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-104]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-104]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	b	.L262
.L232:
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-100]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	add	r3, r2, r3
	ldr	r1, [r3, #0]
	ldr	r3, [fp, #-100]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #24]
	str	r3, [r1, #8]
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	b	.L262
.L233:
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	b	.L262
.L234:
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	closeActive(PLT)
	b	.L262
.L235:
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-92]
	ldr	r2, [fp, #-92]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-152]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-88]
	str	r2, [r3, #36]
	ldr	r3, [fp, #-160]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-88]
	str	r2, [r3, #40]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [fp, #-88]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-160]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-88]
	str	r2, [r3, #32]
	ldr	r2, [fp, #-84]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-152]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-84]
	cmp	r3, #0
	ble	.L249
	ldr	r3, [fp, #-84]
	cmp	r3, #30
	ble	.L251
.L249:
	ldr	r2, [fp, #-88]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L262
.L251:
	ldr	r3, [fp, #-96]
	mov	r0, r3
	ldr	r1, [fp, #-156]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L252
	ldr	r2, [fp, #-88]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r2, [fp, #-80]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-156]
	mov	r1, r3
	ldr	r2, [fp, #-80]
	bl	rescheduleBlock(PLT)
	ldr	r3, [fp, #-88]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-88]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-76]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-88]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-80]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-92]
	str	r3, [r2, #0]
	b	.L262
.L252:
	ldr	r2, [fp, #-88]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-88]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L255
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-72]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-72]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #52]
	b	.L262
.L255:
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #52]
	b	.L262
.L236:
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-68]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-64]
	ldr	r2, [fp, #-64]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-152]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #0]
	mov	r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #44]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-160]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-60]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L257
	ldr	r3, [fp, #-60]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-68]
	mov	r0, r3
	ldr	r1, [fp, #-156]
	bl	blockActive(PLT)
	b	.L262
.L257:
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #48]
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	ldr	r2, [r3, #40]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #28]
	mov	r1, r3
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #36]
	ldr	r2, [fp, #-52]
	mov	r0, r1
	mov	r1, r3
	bl	copyMsg(PLT)
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-60]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #44]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #20]
	str	r3, [r2, #0]
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-56]
	mov	r3, #4
	str	r3, [r2, #16]
	ldr	r3, [fp, #-56]
	ldr	r2, [r3, #48]
	ldr	r3, [fp, #-60]
	str	r2, [r3, #48]
	b	.L262
.L237:
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #0]
	mov	r2, r3
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-152]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-44]
	ldr	r2, [r3, #32]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	movlt	r3, r2
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #28]
	ldr	r2, [fp, #-32]
	mov	r0, r3
	ldr	r1, [fp, #-40]
	bl	copyMsg(PLT)
	ldr	r3, [fp, #-48]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	add	r3, r2, r3
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #8]
	ldr	r2, [fp, #-44]
	mov	r3, #1
	str	r3, [r2, #16]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #12]
	ldr	r0, [fp, #-156]
	mov	r1, r3
	ldr	r2, [fp, #-44]
	bl	rescheduleBlock(PLT)
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	b	.L262
.L238:
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-156]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	mov	r3, r3, asl #4
	rsb	r3, r2, r3
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-152]
	add	r3, r2, r3
	sub	r3, r3, #60
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #0]
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-164]
	add	r3, r2, r3
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ble	.L260
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-164]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-164]
	add	r3, r2, r3
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	str	r2, [r3, #8]
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-164]
	add	r2, r2, r3
	mov	r3, #0
	str	r3, [r2, #8]
	b	.L262
.L260:
	ldr	r2, [fp, #-20]
	mov	r3, #5
	str	r3, [r2, #16]
	ldr	r2, [fp, #-16]
	mov	r3, r2
	mov	r3, r3, asl #1
	add	r3, r3, r2
	mov	r3, r3, asl #2
	mov	r2, r3
	ldr	r3, [fp, #-164]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, [fp, #-28]
	mov	r0, r3
	ldr	r1, [fp, #-156]
	bl	blockActive(PLT)
.L262:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L264:
	.align	2
.L263:
	.word	-2139029364
	.word	1610612752
	.size	handle, .-handle
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 1944
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #1936
	sub	sp, sp, #8
	str	r0, [fp, #-1952]
	str	r1, [fp, #-1956]
	sub	r1, fp, #1792
	sub	r1, r1, #12
	sub	r1, r1, #12
	sub	r2, fp, #1872
	sub	r2, r2, #12
	sub	r2, r2, #12
	sub	ip, fp, #1936
	sub	ip, ip, #12
	sub	r3, fp, #1888
	sub	r3, r3, #12
	sub	r3, r3, #8
	mov	r0, r1
	mov	r1, r2
	mov	r2, ip
	bl	initialize(PLT)
.L266:
	sub	r3, fp, #1872
	sub	r3, r3, #12
	sub	r3, r3, #12
	sub	r2, fp, #1936
	sub	r2, r2, #12
	mov	r0, r3
	mov	r1, r2
	bl	schedule(PLT)
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L267
	sub	r3, fp, #1936
	sub	r3, r3, #12
	ldr	r0, [fp, #-16]
	mov	r1, r3
	bl	getNextRequest(PLT)
	sub	r1, fp, #1792
	sub	r1, r1, #12
	sub	r1, r1, #12
	sub	r2, fp, #1872
	sub	r2, r2, #12
	sub	r2, r2, #12
	sub	ip, fp, #1936
	sub	ip, ip, #12
	sub	r3, fp, #1888
	sub	r3, r3, #12
	sub	r3, r3, #8
	mov	r0, r1
	mov	r1, r2
	mov	r2, ip
	bl	handle(PLT)
	b	.L266
.L267:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
