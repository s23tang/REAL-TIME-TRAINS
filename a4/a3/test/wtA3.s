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
	.align	2
	.global	Time
	.type	Time, %function
Time:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #24
	str	r0, [fp, #-32]
	mov	r3, #2
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
	bge	.L42
	mvn	r3, #0
	str	r3, [fp, #-40]
	b	.L44
.L42:
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
.L44:
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
	.ascii	"SHOULD NOT HAPPEN!\012\015\000"
	.text
	.align	2
	.global	notifier
	.type	notifier, %function
notifier:
	@ args = 0, pretend = 0, frame = 36
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #40
	ldr	sl, .L55
.L54:
	add	sl, pc, sl
	sub	r2, fp, #52
	sub	r3, fp, #36
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Receive(PLT)
	ldr	r3, .L55+4
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-32]
	mov	r3, #524288
	str	r3, [r2, #0]
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	beq	.L50
	b	.L49
.L50:
	ldr	r3, .L55+8
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-28]
	ldr	r3, .L55+12
	str	r3, [r2, #0]
	ldr	r3, .L55+16
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	orr	r2, r3, #64
	ldr	r3, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	orr	r2, r3, #8
	ldr	r3, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #0]
	orr	r2, r3, #128
	ldr	r3, [fp, #-24]
	str	r2, [r3, #0]
	ldr	r3, .L55+4
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	mov	r3, #524288
	str	r3, [r2, #0]
	b	.L51
.L49:
	mov	r0, #1
	ldr	r3, .L55+20
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
.L51:
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	sub	r2, fp, #44
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
.L52:
	mov	r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-52]
	mov	r0, r3
	bl	AwaitEvent(PLT)
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-36]
	sub	r1, fp, #44
	sub	ip, fp, #52
	mov	r3, #8
	str	r3, [sp, #0]
	mov	r0, r2
	mov	r2, #8
	mov	r3, ip
	bl	Send(PLT)
	b	.L52
.L56:
	.align	2
.L55:
	.word	_GLOBAL_OFFSET_TABLE_-(.L54+8)
	.word	-2146697200
	.word	-2139029376
	.word	5080
	.word	-2139029368
	.word	.LC0(GOTOFF)
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
	ldr	sl, .L98
.L97:
	add	sl, pc, sl
	ldr	r3, .L98+4
	add	r3, sl, r3
	str	r3, [fp, #-64]
	ldr	r3, .L98+8
	add	r3, sl, r3
	str	r3, [fp, #-60]
	ldr	r3, .L98+12
	add	r3, sl, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-68]
	ldr	r3, .L98+16
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmn	r3, #1
	bne	.L58
	mov	r0, #1
	ldr	r3, .L98+20
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L58:
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L60
.L61:
	ldr	r3, [fp, #-44]
	ldr	r2, .L98+24
	mov	r3, r3, asl #3
	sub	r0, fp, #16
	add	r3, r3, r0
	add	r2, r3, r2
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	ldr	r2, .L98+28
	mov	r3, r3, asl #3
	sub	r1, fp, #16
	add	r3, r3, r1
	add	r2, r3, r2
	mov	r3, #3
	str	r3, [r2, #0]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L60:
	ldr	r3, [fp, #-44]
	cmp	r3, #29
	bls	.L61
	b	.L96
.L62:
.L96:
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
	beq	.L65
	ldr	r1, [fp, #-348]
	cmp	r1, #3
	beq	.L66
	ldr	r3, [fp, #-348]
	cmp	r3, #1
	beq	.L64
	b	.L62
.L64:
	ldr	r2, [fp, #-328]
	mov	r0, #1
	ldr	r3, .L98+32
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L67
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
	ldr	r3, .L98+36
	add	r3, sl, r3
	mov	r1, r3
	ldr	r3, [fp, #-48]
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L98+40
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
	b	.L62
.L67:
	ldr	r3, [fp, #-328]
	str	r3, [fp, #-48]
	b	.L62
.L65:
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
	beq	.L70
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bne	.L72
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
	ldr	r3, .L98+44
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L98+40
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
	b	.L74
.L72:
	ldr	r3, [fp, #-332]
	cmp	r3, #0
	bne	.L75
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	beq	.L77
.L75:
	ldr	r3, [fp, #-332]
	cmp	r3, #1
	bne	.L78
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L77
.L78:
	ldr	r3, [fp, #-332]
	cmp	r3, #2
	bne	.L80
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L80
.L77:
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
	ldr	r3, .L98+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	ldr	r2, [fp, #-328]
	mov	r0, #1
	ldr	r3, .L98+52
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L98+40
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
	b	.L74
.L80:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L82
	ldr	r3, [fp, #-332]
	cmp	r3, #2
	beq	.L84
.L82:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #1
	bne	.L85
	ldr	r3, [fp, #-332]
	cmp	r3, #0
	beq	.L84
.L85:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r3, #2
	bne	.L87
	ldr	r3, [fp, #-332]
	cmp	r3, #1
	bne	.L87
.L84:
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
	ldr	r3, .L98+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #0]
	mov	r0, #1
	ldr	r3, .L98+52
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L98+40
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
	b	.L74
.L87:
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
	ldr	r3, .L98+48
	add	r3, sl, r3
	mov	r1, r3
	mov	r2, ip
	mov	r3, lr
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L98+56
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L98+40
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
.L74:
	ldr	r2, [fp, #-32]
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L62
.L70:
	ldr	r2, [fp, #-332]
	ldr	r3, [fp, #-28]
	str	r2, [r3, #4]
	b	.L62
.L66:
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
	bne	.L90
	ldr	r2, [fp, #-328]
	ldr	r3, [fp, #-24]
	ldr	ip, [r3, #0]
	mov	r0, #1
	ldr	r3, .L98+60
	add	r3, sl, r3
	mov	r1, r3
	mov	r3, ip
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L98+40
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	mov	r0, #1
	bl	getc(PLT)
	ldr	r2, [fp, #-24]
	mov	r3, #3
	str	r3, [r2, #4]
	b	.L92
.L90:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #4]
	cmp	r3, #3
	beq	.L93
	ldr	r2, [fp, #-24]
	mov	r3, #3
	str	r3, [r2, #4]
	mov	r3, #4
	str	r3, [fp, #-344]
	ldr	r2, [fp, #-328]
	ldr	r3, [fp, #-24]
	ldr	ip, [r3, #0]
	mov	r0, #1
	ldr	r3, .L98+64
	add	r3, sl, r3
	mov	r1, r3
	mov	r3, ip
	bl	bwprintf(PLT)
	mov	r0, #1
	ldr	r3, .L98+40
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
	b	.L92
.L93:
	ldr	r2, [fp, #-20]
	mov	r3, #4
	str	r3, [r2, #4]
.L92:
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
	b	.L62
.L99:
	.align	2
.L98:
	.word	_GLOBAL_OFFSET_TABLE_-(.L97+8)
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
	ldr	sl, .L121
.L120:
	add	sl, pc, sl
	ldr	r3, .L121+4
	add	r3, sl, r3
	mov	r0, r3
	bl	RegisterAs(PLT)
	mov	r3, r0
	cmn	r3, #1
	bne	.L101
	mov	r0, #1
	ldr	r3, .L121+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
.L101:
	ldr	r3, .L121+12
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
	b	.L119
.L103:
.L119:
	sub	r3, fp, #432
	sub	r2, fp, #52
	mov	r0, r2
	mov	r1, r3
	mov	r2, #8
	bl	Receive(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-432]
	str	r2, [fp, #-436]
	ldr	r3, [fp, #-436]
	cmp	r3, #2
	beq	.L106
	ldr	r2, [fp, #-436]
	cmp	r2, #3
	beq	.L107
	ldr	r3, [fp, #-436]
	cmp	r3, #1
	beq	.L105
	b	.L104
.L105:
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
	b	.L104
.L106:
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
	b	.L104
.L107:
	ldr	r2, [fp, #-428]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-52]
	sub	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-40]
	ldr	r1, .L121+16
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
	ldr	r0, .L121+20
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
	b	.L108
.L109:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bcc	.L110
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	mov	r1, r3
	ldr	r0, .L121+24
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
	b	.L112
.L110:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	add	r3, r3, #8
	str	r3, [fp, #-20]
.L108:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L109
.L112:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L104
	ldr	r2, [fp, #-40]
	ldr	r1, .L121+24
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
.L104:
	ldr	r3, [fp, #-416]
	str	r3, [fp, #-28]
	b	.L114
.L115:
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bne	.L103
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
	str	r3, [fp, #-416]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-28]
.L114:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L115
	b	.L103
.L122:
	.align	2
.L121:
	.word	_GLOBAL_OFFSET_TABLE_-(.L120+8)
	.word	.LC15(GOTOFF)
	.word	.LC16(GOTOFF)
	.word	notifier(GOT)
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
	ldr	sl, .L165
.L164:
	add	sl, pc, sl
	ldr	r3, .L165+4
	add	r3, sl, r3
	str	r3, [fp, #-64]
	ldr	r3, .L165+8
	add	r3, sl, r3
	str	r3, [fp, #-56]
	b	.L163
.L124:
.L163:
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
	beq	.L126
	ldr	r3, [fp, #-96]
	cmp	r3, #2
	beq	.L127
	b	.L124
.L126:
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-76]
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L128
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-48]
	b	.L130
.L131:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L132
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L130:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	bls	.L131
.L132:
	ldr	r3, [fp, #-48]
	cmp	r3, #4
	bne	.L136
	mov	r3, #1
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-60]
	b	.L136
.L128:
	ldr	r3, [fp, #-40]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L136
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-48]
	b	.L138
.L139:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L140
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L138:
	ldr	r3, [fp, #-48]
	cmp	r3, #5
	bls	.L139
.L140:
	ldr	r3, [fp, #-48]
	cmp	r3, #6
	bne	.L136
	mov	r3, #1
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-68]
	str	r3, [fp, #-52]
.L136:
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L143
	mvn	r3, #0
	str	r3, [fp, #-92]
.L143:
	ldr	r3, [fp, #-68]
	sub	r2, fp, #92
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L124
.L127:
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-76]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L145
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-32]
	b	.L147
.L148:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L149
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L147:
	ldr	r3, [fp, #-32]
	cmp	r3, #3
	bls	.L148
.L149:
	ldr	r3, [fp, #-32]
	cmp	r3, #4
	bne	.L153
	mov	r3, #1
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-84]
	b	.L153
.L145:
	ldr	r3, [fp, #-24]
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L153
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-32]
	b	.L155
.L156:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r1, [r3, #0]	@ zero_extendqisi2
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3, #0]	@ zero_extendqisi2
	cmp	r1, r3
	bne	.L157
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L155:
	ldr	r3, [fp, #-32]
	cmp	r3, #5
	bls	.L156
.L157:
	ldr	r3, [fp, #-32]
	cmp	r3, #6
	bne	.L153
	mov	r3, #1
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-84]
.L153:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L160
	mvn	r3, #0
	str	r3, [fp, #-92]
.L160:
	ldr	r3, [fp, #-68]
	sub	r2, fp, #92
	mov	r0, r3
	mov	r1, r2
	mov	r2, #12
	bl	Reply(PLT)
	b	.L124
.L166:
	.align	2
.L165:
	.word	_GLOBAL_OFFSET_TABLE_-(.L164+8)
	.word	.LC4(GOTOFF)
	.word	.LC15(GOTOFF)
	.size	nameServer, .-nameServer
	.section	.rodata
	.align	2
.LC17:
	.ascii	"Tid: %d, Delay Interval: %d, completed %d delays\012"
	.ascii	"\015\000"
	.text
	.align	2
	.global	t1
	.type	t1, %function
t1:
	@ args = 0, pretend = 0, frame = 36
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #40
	ldr	sl, .L173
.L172:
	add	sl, pc, sl
	bl	MyParentTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-40]
	bl	MyTid(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-52]
	sub	r2, fp, #52
	sub	ip, fp, #48
	mov	r3, #8
	str	r3, [sp, #0]
	ldr	r0, [fp, #-40]
	mov	r1, r2
	mov	r2, #4
	mov	r3, ip
	bl	Send(PLT)
	ldr	r3, .L173+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L168
.L169:
	ldr	r3, [fp, #-32]
	mov	r0, r3
	ldr	r1, [fp, #-24]
	bl	Delay(PLT)
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [sp, #0]
	mov	r0, #1
	ldr	r3, .L173+8
	add	r3, sl, r3
	mov	r1, r3
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-24]
	bl	bwprintf(PLT)
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L168:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L169
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L174:
	.align	2
.L173:
	.word	_GLOBAL_OFFSET_TABLE_-(.L172+8)
	.word	.LC15(GOTOFF)
	.word	.LC17(GOTOFF)
	.size	t1, .-t1
	.align	2
	.global	t2
	.type	t2, %function
t2:
	@ args = 0, pretend = 0, frame = 20
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #20
	ldr	sl, .L182
.L181:
	add	sl, pc, sl
	ldr	r3, .L182+4
	add	r3, sl, r3
	mov	r0, r3
	bl	WhoIs(PLT)
	mov	r3, r0
	str	r3, [fp, #-36]
	b	.L180
.L176:
.L180:
	ldr	r0, [fp, #-36]
	bl	Time(PLT)
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #250
	ble	.L176
	ldr	r3, .L182+8
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-28]
	mov	r3, #524288
	str	r3, [r2, #0]
	ldr	r3, .L182+12
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r3, .L182+16
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	bic	r2, r3, #64
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	bic	r2, r3, #8
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #0]
	bic	r2, r3, #128
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	bl	Exit(PLT)
	b	.L176
.L183:
	.align	2
.L182:
	.word	_GLOBAL_OFFSET_TABLE_-(.L181+8)
	.word	.LC15(GOTOFF)
	.word	-2146697196
	.word	-2139029376
	.word	-2139029368
	.size	t2, .-t2
	.section	.rodata
	.align	2
.LC18:
	.ascii	"First: created Name Server\012\015\000"
	.align	2
.LC19:
	.ascii	"First: exiting\012\015\000"
	.text
	.align	2
	.global	firstUserTask
	.type	firstUserTask, %function
firstUserTask:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	mov	ip, sp
	stmfd	sp!, {sl, fp, ip, lr, pc}
	sub	fp, ip, #4
	sub	sp, sp, #24
	ldr	sl, .L187
.L186:
	add	sl, pc, sl
	ldr	r3, .L187+4
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #0
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #1
	ldr	r3, .L187+8
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	ldr	r3, .L187+12
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #1
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L187+16
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #3
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #4
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #5
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r0, #6
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, .L187+20
	ldr	r3, [sl, r3]
	str	r3, [fp, #-24]
	mov	r0, #8
	ldr	r1, [fp, #-24]
	bl	Create(PLT)
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r3, #10
	str	r3, [fp, #-40]
	mov	r3, #20
	str	r3, [fp, #-36]
	sub	r2, fp, #32
	sub	r3, fp, #28
	mov	r0, r3
	mov	r1, r2
	mov	r2, #4
	bl	Receive(PLT)
	ldr	r3, [fp, #-28]
	sub	r2, fp, #40
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, #23
	str	r3, [fp, #-40]
	mov	r3, #9
	str	r3, [fp, #-36]
	sub	r2, fp, #32
	sub	r3, fp, #28
	mov	r0, r3
	mov	r1, r2
	mov	r2, #4
	bl	Receive(PLT)
	ldr	r3, [fp, #-28]
	sub	r2, fp, #40
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, #33
	str	r3, [fp, #-40]
	mov	r3, #6
	str	r3, [fp, #-36]
	sub	r2, fp, #32
	sub	r3, fp, #28
	mov	r0, r3
	mov	r1, r2
	mov	r2, #4
	bl	Receive(PLT)
	ldr	r3, [fp, #-28]
	sub	r2, fp, #40
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r3, #71
	str	r3, [fp, #-40]
	mov	r3, #3
	str	r3, [fp, #-36]
	sub	r2, fp, #32
	sub	r3, fp, #28
	mov	r0, r3
	mov	r1, r2
	mov	r2, #4
	bl	Receive(PLT)
	ldr	r3, [fp, #-28]
	sub	r2, fp, #40
	mov	r0, r3
	mov	r1, r2
	mov	r2, #8
	bl	Reply(PLT)
	mov	r0, #1
	ldr	r3, .L187+24
	add	r3, sl, r3
	mov	r1, r3
	bl	bwprintf(PLT)
	bl	Exit(PLT)
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L188:
	.align	2
.L187:
	.word	_GLOBAL_OFFSET_TABLE_-(.L186+8)
	.word	nameServer(GOT)
	.word	.LC18(GOTOFF)
	.word	clockServer(GOT)
	.word	t1(GOT)
	.word	t2(GOT)
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
	ldr	sl, .L194
.L193:
	add	sl, pc, sl
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, .L194+4
	add	r3, sl, r3
	str	r3, [fp, #-20]
	mov	r2, #40
	ldr	r3, [fp, #-20]
	str	r3, [r2, #0]
	ldr	r3, .L194+8
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
	add sp, sp, #16
	mrs r1, CPSR
	bic r1, r1, #0x1F
	orr r1, r1, #0x13
	msr CPSR, r1
	ldr r1, [r0, #4]
	msr SPSR, r1
	ldr lr, [r2, #12]
	ldmfd r2, {r1-r3}
	ldr r0, [r0, #8]
	movs pc, lr
.L191:
	stmfd sp!, {r0, r1, lr}
	mov r1, sp
	add sp, sp, #12
	mrs r0, CPSR
	bic r0, r0, #0x1F
	orr r0, r0, #0xd3
	msr CPSR, r0
	ldmfd r1, {r0, r1, lr}
	sub lr, lr, #4
	stmfd sp!, {r0-r4}
	mov r1, #0
	stmfd sp!, {r1}
	b HWres
.L190:
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
	ldmfd r2!, {r3}
	stmfd sp!, {r3}
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
.L195:
	.align	2
.L194:
	.word	_GLOBAL_OFFSET_TABLE_-(.L193+8)
	.word	.L190(GOTOFF)
	.word	.L191(GOTOFF)
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
	b	.L197
.L198:
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
.L197:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L198
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
	ldr	r3, .L203
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
.L204:
	.align	2
.L203:
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
	ldr	sl, .L219
.L218:
	add	sl, pc, sl
	str	r0, [fp, #-28]
	str	r1, [fp, #-32]
	str	r2, [fp, #-36]
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L206
.L207:
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
.L206:
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bls	.L207
	bl	getStackSize(PLT)
	mov	r3, r0
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-28]
	ldr	r3, .L219+4
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
	ldr	r2, [fp, #-28]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, .L219+8
	ldr	r3, [sl, r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2195456
	str	r3, [r2, #0]
	mov	r3, #3
	str	r3, [fp, #-24]
	b	.L209
.L210:
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
.L209:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L210
	mov	r3, #14
	str	r3, [fp, #-24]
	b	.L212
.L213:
	ldr	r3, [fp, #-24]
	cmp	r3, #13
	beq	.L214
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-28]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-24]
	str	r3, [r2, #0]
.L214:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L212:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bhi	.L213
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
	mrs r0, CPSR
	bic r0, r0, #0x1F
	orr r0, r0, #0x12
	msr CPSR, r0
	ldr r0, =0x44FA4
	mov sp,r0
	mrs r0, CPSR
bic r0, r0, #0x1F
	orr r0, r0, #0x13
	msr CPSR, r0
	sub	sp, fp, #16
	ldmfd	sp, {sl, fp, sp, pc}
.L220:
	.align	2
.L219:
	.word	_GLOBAL_OFFSET_TABLE_-(.L218+8)
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
	b	.L222
.L223:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3, #0]
	cmp	r3, #0
	beq	.L224
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
	b	.L226
.L224:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L222:
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	bls	.L223
	mov	r3, #0
	str	r3, [fp, #-32]
.L226:
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
	beq	.L232
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
.L232:
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
	bne	.L234
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
	b	.L237
.L234:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	str	r3, [r2, #4]
.L237:
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
	bne	.L239
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L239:
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
	beq	.L243
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #56]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #0]
	b	.L245
.L243:
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #0]
	ldr	r2, [fp, #-20]
	mov	r3, #0
	str	r3, [r2, #4]
.L245:
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
	b	.L287
	.p2align 2
.L259:
	b	.L249
	b	.L250
	b	.L251
	b	.L252
	b	.L253
	b	.L254
	b	.L255
	b	.L256
	b	.L257
	b	.L258
.L249:
	ldr	r3, .L288
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
	bne	.L260
	ldr	r2, [fp, #-164]
	mov	r3, #0
	str	r3, [r2, #4]
	ldr	r2, [fp, #-164]
	mov	r3, #1
	str	r3, [r2, #8]
	b	.L287
.L260:
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
	b	.L287
.L250:
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
	rsb	r3, r3, #33292288
	add	r3, r3, #118784
	mov	r2, r3
	ldr	r3, [fp, #-120]
	str	r2, [r3, #0]
	ldr	r2, [fp, #-120]
	ldr	r3, .L288+4
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
	mov	r3, #3
	str	r3, [fp, #-108]
	b	.L263
.L264:
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
.L263:
	ldr	r3, [fp, #-108]
	cmp	r3, #0
	bne	.L264
	mov	r3, #14
	str	r3, [fp, #-108]
	b	.L266
.L267:
	ldr	r3, [fp, #-108]
	cmp	r3, #13
	beq	.L268
	ldr	r3, [fp, #-120]
	ldr	r3, [r3, #0]
	sub	r2, r3, #4
	ldr	r3, [fp, #-120]
	str	r2, [r3, #0]
	ldr	r3, [fp, #-120]
	ldr	r2, [r3, #0]
	ldr	r3, [fp, #-108]
	str	r3, [r2, #0]
.L268:
	ldr	r3, [fp, #-108]
	sub	r3, r3, #1
	str	r3, [fp, #-108]
.L266:
	ldr	r3, [fp, #-108]
	cmp	r3, #3
	bhi	.L267
	ldr	r3, [fp, #-116]
	ldr	r3, [r3, #0]
	cmp	r3, #0
	bne	.L271
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #0]
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #4]
	b	.L273
.L271:
	ldr	r3, [fp, #-116]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #56]
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-120]
	str	r3, [r2, #4]
.L273:
	ldr	r3, [fp, #-160]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-160]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	b	.L287
.L251:
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
	b	.L287
.L252:
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
	b	.L287
.L253:
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	rescheduleActive(PLT)
	b	.L287
.L254:
	ldr	r0, [fp, #-156]
	ldr	r1, [fp, #-160]
	bl	closeActive(PLT)
	b	.L287
.L255:
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
	ble	.L274
	ldr	r3, [fp, #-84]
	cmp	r3, #30
	ble	.L276
.L274:
	ldr	r2, [fp, #-88]
	mvn	r3, #0
	str	r3, [r2, #8]
	b	.L287
.L276:
	ldr	r3, [fp, #-96]
	mov	r0, r3
	ldr	r1, [fp, #-156]
	bl	blockActive(PLT)
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L277
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
	b	.L287
.L277:
	ldr	r2, [fp, #-88]
	mov	r3, #3
	str	r3, [r2, #16]
	ldr	r2, [fp, #-88]
	mov	r3, #0
	str	r3, [r2, #48]
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L280
	ldr	r3, [fp, #-80]
	ldr	r3, [r3, #52]
	str	r3, [fp, #-72]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-72]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #52]
	b	.L287
.L280:
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #48]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-80]
	str	r2, [r3, #52]
	b	.L287
.L256:
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
	bne	.L282
	ldr	r3, [fp, #-60]
	mov	r2, #2
	str	r2, [r3, #16]
	ldr	r3, [fp, #-68]
	mov	r0, r3
	ldr	r1, [fp, #-156]
	bl	blockActive(PLT)
	b	.L287
.L282:
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
	b	.L287
.L257:
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
	b	.L287
.L258:
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
	ble	.L285
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
	b	.L287
.L285:
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
.L287:
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
.L289:
	.align	2
.L288:
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
	sub	ip, fp, #1936
	sub	ip, ip, #12
	sub	r3, fp, #1888
	sub	r3, r3, #12
	sub	r3, r3, #8
	mov	r0, r1
	mov	r1, r2
	mov	r2, ip
	bl	initialize(PLT)
.L291:
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
	beq	.L292
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
	b	.L291
.L292:
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	ldmfd	sp, {fp, sp, pc}
	.size	main, .-main
	.ident	"GCC: (GNU) 4.0.2"
